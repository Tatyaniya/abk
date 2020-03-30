-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 12 2018 г., 12:02
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `abk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abk_commentmeta`
--

CREATE TABLE `abk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_comments`
--

CREATE TABLE `abk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_comments`
--

INSERT INTO `abk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-01 11:50:39', '2018-11-01 08:50:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_links`
--

CREATE TABLE `abk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_options`
--

CREATE TABLE `abk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_options`
--

INSERT INTO `abk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/abk', 'yes'),
(2, 'home', 'http://localhost/abk', 'yes'),
(3, 'blogname', 'АБК Экспертиза', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'afromyak13@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '108', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:25:\"relevanssi/relevanssi.php\";i:4;s:43:\"responsive-lightbox/responsive-lightbox.php\";i:5;s:33:\"wp-translitera/wp-translitera.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'abk', 'yes'),
(41, 'stylesheet', 'abk', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '23', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'abk_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"aiosp_manage_seo\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1542023784;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542028758;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542055841;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542055842;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542099069;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541063571;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(151, 'current_theme', 'abk', 'yes'),
(152, 'theme_mods_abk', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(158, 'recently_activated', 'a:2:{s:27:\"woocommerce/woocommerce.php\";i:1541416079;s:35:\"redux-framework/redux-framework.php\";i:1541172448;}', 'yes'),
(167, 'wp_translitera', 'a:1:{s:7:\"version\";s:6:\"p1.2.5\";}', 'yes'),
(174, 'aioseop_options', 'a:83:{s:16:\"aiosp_home_title\";s:0:\"\";s:22:\"aiosp_home_description\";s:0:\"\";s:20:\"aiosp_togglekeywords\";s:1:\"1\";s:19:\"aiosp_home_keywords\";s:0:\"\";s:26:\"aiosp_use_static_home_info\";s:1:\"1\";s:9:\"aiosp_can\";s:2:\"on\";s:30:\"aiosp_no_paged_canonical_links\";s:0:\"\";s:31:\"aiosp_customize_canonical_links\";s:0:\"\";s:20:\"aiosp_rewrite_titles\";s:1:\"1\";s:20:\"aiosp_force_rewrites\";s:1:\"1\";s:24:\"aiosp_use_original_title\";s:1:\"0\";s:28:\"aiosp_home_page_title_format\";s:12:\"%page_title%\";s:23:\"aiosp_page_title_format\";s:12:\"%page_title%\";s:23:\"aiosp_post_title_format\";s:12:\"%post_title%\";s:27:\"aiosp_category_title_format\";s:16:\"%category_title%\";s:26:\"aiosp_archive_title_format\";s:15:\"%archive_title%\";s:23:\"aiosp_date_title_format\";s:6:\"%date%\";s:25:\"aiosp_author_title_format\";s:8:\"%author%\";s:22:\"aiosp_tag_title_format\";s:5:\"%tag%\";s:25:\"aiosp_search_title_format\";s:8:\"%search%\";s:24:\"aiosp_description_format\";s:13:\"%description%\";s:22:\"aiosp_404_title_format\";s:55:\"Ничего не найдено для %request_words%\";s:18:\"aiosp_paged_format\";s:14:\" - Part %page%\";s:17:\"aiosp_enablecpost\";s:2:\"on\";s:17:\"aiosp_cpostactive\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_cpostadvanced\";s:1:\"0\";s:18:\"aiosp_cpostnoindex\";s:0:\"\";s:19:\"aiosp_cpostnofollow\";s:0:\"\";s:17:\"aiosp_cposttitles\";s:0:\"\";s:21:\"aiosp_posttypecolumns\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_google_verify\";s:0:\"\";s:17:\"aiosp_bing_verify\";s:0:\"\";s:22:\"aiosp_pinterest_verify\";s:0:\"\";s:22:\"aiosp_google_publisher\";s:0:\"\";s:28:\"aiosp_google_disable_profile\";s:0:\"\";s:29:\"aiosp_google_sitelinks_search\";s:0:\"\";s:26:\"aiosp_google_set_site_name\";s:0:\"\";s:30:\"aiosp_google_specify_site_name\";s:0:\"\";s:28:\"aiosp_google_author_advanced\";s:1:\"0\";s:28:\"aiosp_google_author_location\";a:7:{i:0;s:5:\"front\";i:1;s:4:\"post\";i:2;s:4:\"page\";i:3;s:10:\"attachment\";i:4;s:12:\"oembed_cache\";i:5;s:12:\"user_request\";i:6;s:3:\"all\";}s:29:\"aiosp_google_enable_publisher\";s:2:\"on\";s:30:\"aiosp_google_specify_publisher\";s:0:\"\";s:25:\"aiosp_google_analytics_id\";s:0:\"\";s:25:\"aiosp_ga_advanced_options\";s:2:\"on\";s:15:\"aiosp_ga_domain\";s:0:\"\";s:21:\"aiosp_ga_multi_domain\";s:0:\"\";s:21:\"aiosp_ga_addl_domains\";s:0:\"\";s:21:\"aiosp_ga_anonymize_ip\";s:0:\"\";s:28:\"aiosp_ga_display_advertising\";s:0:\"\";s:22:\"aiosp_ga_exclude_users\";s:0:\"\";s:29:\"aiosp_ga_track_outbound_links\";s:0:\"\";s:25:\"aiosp_ga_link_attribution\";s:0:\"\";s:27:\"aiosp_ga_enhanced_ecommerce\";s:0:\"\";s:20:\"aiosp_use_categories\";s:0:\"\";s:26:\"aiosp_use_tags_as_keywords\";s:2:\"on\";s:32:\"aiosp_dynamic_postspage_keywords\";s:2:\"on\";s:22:\"aiosp_category_noindex\";s:2:\"on\";s:26:\"aiosp_archive_date_noindex\";s:2:\"on\";s:28:\"aiosp_archive_author_noindex\";s:2:\"on\";s:18:\"aiosp_tags_noindex\";s:0:\"\";s:20:\"aiosp_search_noindex\";s:0:\"\";s:17:\"aiosp_404_noindex\";s:0:\"\";s:17:\"aiosp_tax_noindex\";s:0:\"\";s:23:\"aiosp_paginated_noindex\";s:0:\"\";s:24:\"aiosp_paginated_nofollow\";s:0:\"\";s:27:\"aiosp_generate_descriptions\";s:0:\"\";s:18:\"aiosp_skip_excerpt\";s:0:\"\";s:20:\"aiosp_run_shortcodes\";s:0:\"\";s:33:\"aiosp_hide_paginated_descriptions\";s:0:\"\";s:32:\"aiosp_dont_truncate_descriptions\";s:0:\"\";s:19:\"aiosp_schema_markup\";s:2:\"on\";s:20:\"aiosp_unprotect_meta\";s:0:\"\";s:33:\"aiosp_redirect_attachement_parent\";s:0:\"\";s:14:\"aiosp_ex_pages\";s:0:\"\";s:20:\"aiosp_post_meta_tags\";s:0:\"\";s:20:\"aiosp_page_meta_tags\";s:0:\"\";s:21:\"aiosp_front_meta_tags\";s:0:\"\";s:20:\"aiosp_home_meta_tags\";s:0:\"\";s:12:\"aiosp_do_log\";s:0:\"\";s:19:\"last_active_version\";s:5:\"2.9.1\";s:29:\"aiosp_attachment_title_format\";s:27:\"%post_title% | %blog_title%\";s:31:\"aiosp_oembed_cache_title_format\";s:27:\"%post_title% | %blog_title%\";s:31:\"aiosp_user_request_title_format\";s:27:\"%post_title% | %blog_title%\";}', 'yes'),
(183, 'new_admin_email', 'afromyak13@gmail.com', 'yes'),
(209, 'acf_version', '5.7.7', 'yes'),
(224, 'r_notice_data', '\n{\"type\":\"redux-message\",\"title\":\"<strong>The Ultimate Redux Extensions Bundle!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"Attention Redux Developers!  Due to popular demand, we are extending the availability of the Ultimate Redux Extension Bundle, which includes <strong>all<\\/strong> of our extensions at over 40% off!  Grab you\'re copy today at <a href=\\\"https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle\\\">https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(225, 'redux_blast', '1541101033', 'yes'),
(226, 'redux_version_upgraded_from', '3.6.11', 'yes'),
(227, 'redux_demo', 'a:72:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";i:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:22:\"opt-select_image-field\";s:95:\"http://localhost/abk/wp-content/plugins/redux-framework/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:99:\"http://localhost/abk/wp-content/plugins/redux-framework/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:19:\"opt-customizer-only\";s:1:\"2\";s:11:\"phone-label\";s:0:\"\";s:12:\"phone-number\";s:0:\"\";}', 'yes'),
(228, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1541103482;}', 'yes'),
(285, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(325, 'woocommerce_store_address', 'Москва', 'yes'),
(326, 'woocommerce_store_address_2', 'Электрический переулок 3/10, строение 3', 'yes'),
(327, 'woocommerce_store_city', 'Москва', 'yes'),
(328, 'woocommerce_default_country', 'RU', 'yes'),
(329, 'woocommerce_store_postcode', '123557', 'yes'),
(330, 'woocommerce_allowed_countries', 'all', 'yes'),
(331, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(332, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(333, 'woocommerce_ship_to_countries', '', 'yes'),
(334, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(335, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(336, 'woocommerce_calc_taxes', 'no', 'yes'),
(337, 'woocommerce_enable_coupons', 'no', 'yes'),
(338, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(339, 'woocommerce_currency', 'RUB', 'yes'),
(340, 'woocommerce_currency_pos', 'left', 'yes'),
(341, 'woocommerce_price_thousand_sep', ',', 'yes'),
(342, 'woocommerce_price_decimal_sep', '.', 'yes'),
(343, 'woocommerce_price_num_decimals', '2', 'yes'),
(344, 'woocommerce_shop_page_id', '73', 'yes'),
(345, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(346, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(347, 'woocommerce_placeholder_image', '', 'yes'),
(348, 'woocommerce_weight_unit', 'kg', 'yes'),
(349, 'woocommerce_dimension_unit', 'cm', 'yes'),
(350, 'woocommerce_enable_reviews', 'yes', 'yes'),
(351, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(352, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(353, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(354, 'woocommerce_review_rating_required', 'yes', 'no'),
(355, 'woocommerce_manage_stock', 'yes', 'yes'),
(356, 'woocommerce_hold_stock_minutes', '60', 'no'),
(357, 'woocommerce_notify_low_stock', 'yes', 'no'),
(358, 'woocommerce_notify_no_stock', 'yes', 'no'),
(359, 'woocommerce_stock_email_recipient', 'afromyak13@gmail.com', 'no'),
(360, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(361, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(362, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(363, 'woocommerce_stock_format', '', 'yes'),
(364, 'woocommerce_file_download_method', 'force', 'no'),
(365, 'woocommerce_downloads_require_login', 'no', 'no'),
(366, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(367, 'woocommerce_prices_include_tax', 'no', 'yes'),
(368, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(369, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(370, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(371, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(372, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(373, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(374, 'woocommerce_price_display_suffix', '', 'yes'),
(375, 'woocommerce_tax_total_display', 'itemized', 'no'),
(376, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(377, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(378, 'woocommerce_ship_to_destination', 'billing', 'no'),
(379, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(380, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(381, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(382, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(383, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(384, 'woocommerce_registration_generate_username', 'yes', 'no'),
(385, 'woocommerce_registration_generate_password', 'yes', 'no'),
(386, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(387, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(388, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(389, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(390, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(391, 'woocommerce_trash_pending_orders', '', 'no'),
(392, 'woocommerce_trash_failed_orders', '', 'no'),
(393, 'woocommerce_trash_cancelled_orders', '', 'no'),
(394, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(395, 'woocommerce_email_from_name', 'АБК Экспертиза', 'no'),
(396, 'woocommerce_email_from_address', 'afromyak13@gmail.com', 'no'),
(397, 'woocommerce_email_header_image', '', 'no'),
(398, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(399, 'woocommerce_email_base_color', '#96588a', 'no'),
(400, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(401, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(402, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(403, 'woocommerce_cart_page_id', '74', 'yes'),
(404, 'woocommerce_checkout_page_id', '75', 'yes'),
(405, 'woocommerce_myaccount_page_id', '76', 'yes'),
(406, 'woocommerce_terms_page_id', '', 'no'),
(407, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(408, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(409, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(410, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(411, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(412, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(413, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(414, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(415, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(416, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(417, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(418, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(419, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(420, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(421, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(422, 'woocommerce_api_enabled', 'no', 'yes'),
(423, 'woocommerce_single_image_width', '600', 'yes'),
(424, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(425, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(426, 'woocommerce_demo_store', 'no', 'no'),
(427, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(428, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(429, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(430, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(432, 'default_product_cat', '16', 'yes'),
(435, 'woocommerce_version', '3.5.1', 'yes'),
(436, 'woocommerce_db_version', '3.5.1', 'yes'),
(437, 'woocommerce_admin_notices', 'a:1:{i:3;s:19:\"no_shipping_methods\";}', 'yes'),
(438, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(439, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(440, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(441, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(444, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(445, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(446, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(447, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(448, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(449, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(450, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(453, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(454, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(455, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(461, 'woocommerce_product_type', 'both', 'yes'),
(462, 'woocommerce_allow_tracking', 'yes', 'yes'),
(464, 'woocommerce_tracker_last_send', '1541335252', 'yes'),
(466, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(467, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(468, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(469, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(474, '_transient_shipping-transient-version', '1541335926', 'yes'),
(487, '_transient_timeout_wc_low_stock_count', '1543927930', 'no'),
(488, '_transient_wc_low_stock_count', '0', 'no'),
(489, '_transient_timeout_wc_outofstock_count', '1543927930', 'no'),
(490, '_transient_wc_outofstock_count', '0', 'no'),
(505, '_transient_timeout_wc_shipping_method_count_0_1541335926', '1543927979', 'no'),
(506, '_transient_wc_shipping_method_count_0_1541335926', '0', 'no'),
(550, 'product_cat_children', 'a:2:{i:17;a:1:{i:0;i:26;}i:26;a:4:{i:0;i:27;i:1;i:28;i:2;i:29;i:3;i:30;}}', 'yes'),
(563, '_transient_product_query-transient-version', '1541341101', 'yes'),
(865, 'responsive_lightbox_settings', 'a:27:{s:4:\"tour\";b:1;s:6:\"script\";s:4:\"nivo\";s:8:\"selector\";s:8:\"lightbox\";s:15:\"default_gallery\";s:7:\"default\";s:15:\"builder_gallery\";s:9:\"basicgrid\";s:27:\"default_woocommerce_gallery\";s:7:\"default\";s:9:\"galleries\";b:1;s:18:\"gallery_image_size\";s:4:\"full\";s:19:\"gallery_image_title\";s:7:\"default\";s:21:\"gallery_image_caption\";s:7:\"default\";s:20:\"force_custom_gallery\";b:0;s:28:\"woocommerce_gallery_lightbox\";b:0;s:6:\"videos\";b:1;s:7:\"widgets\";b:0;s:8:\"comments\";b:0;s:11:\"image_links\";b:1;s:11:\"image_title\";s:7:\"default\";s:13:\"image_caption\";s:7:\"default\";s:17:\"images_as_gallery\";b:0;s:19:\"deactivation_delete\";b:0;s:13:\"loading_place\";s:6:\"header\";s:19:\"conditional_loading\";b:0;s:20:\"enable_custom_events\";b:0;s:13:\"custom_events\";s:12:\"ajaxComplete\";s:14:\"update_version\";i:2;s:13:\"update_notice\";b:1;s:17:\"update_delay_date\";i:1542632193;}', 'no'),
(866, 'responsive_lightbox_configuration', 'a:8:{s:8:\"swipebox\";a:8:{s:9:\"animation\";s:3:\"css\";s:15:\"force_png_icons\";b:0;s:17:\"hide_close_mobile\";b:0;s:18:\"remove_bars_mobile\";b:0;s:9:\"hide_bars\";b:1;s:15:\"hide_bars_delay\";i:5000;s:15:\"video_max_width\";i:1080;s:11:\"loop_at_end\";b:0;}s:11:\"prettyphoto\";a:21:{s:15:\"animation_speed\";s:6:\"normal\";s:9:\"slideshow\";b:0;s:15:\"slideshow_delay\";i:5000;s:18:\"slideshow_autoplay\";b:0;s:7:\"opacity\";i:75;s:10:\"show_title\";b:1;s:12:\"allow_resize\";b:1;s:12:\"allow_expand\";b:1;s:5:\"width\";i:1080;s:6:\"height\";i:720;s:9:\"separator\";s:1:\"/\";s:5:\"theme\";s:10:\"pp_default\";s:18:\"horizontal_padding\";i:20;s:10:\"hide_flash\";b:0;s:5:\"wmode\";s:6:\"opaque\";s:14:\"video_autoplay\";b:0;s:5:\"modal\";b:0;s:11:\"deeplinking\";b:0;s:15:\"overlay_gallery\";b:1;s:18:\"keyboard_shortcuts\";b:1;s:6:\"social\";b:0;}s:8:\"fancybox\";a:25:{s:5:\"modal\";b:0;s:12:\"show_overlay\";b:1;s:17:\"show_close_button\";b:1;s:20:\"enable_escape_button\";b:1;s:21:\"hide_on_overlay_click\";b:1;s:21:\"hide_on_content_click\";b:0;s:6:\"cyclic\";b:0;s:15:\"show_nav_arrows\";b:1;s:10:\"auto_scale\";b:1;s:9:\"scrolling\";s:3:\"yes\";s:16:\"center_on_scroll\";b:1;s:7:\"opacity\";b:1;s:15:\"overlay_opacity\";i:70;s:13:\"overlay_color\";s:4:\"#666\";s:10:\"title_show\";b:1;s:14:\"title_position\";s:7:\"outside\";s:11:\"transitions\";s:4:\"fade\";s:7:\"easings\";s:5:\"swing\";s:6:\"speeds\";i:300;s:12:\"change_speed\";i:300;s:11:\"change_fade\";i:100;s:7:\"padding\";i:5;s:6:\"margin\";i:5;s:11:\"video_width\";i:1080;s:12:\"video_height\";i:720;}s:4:\"nivo\";a:4:{s:6:\"effect\";s:4:\"fade\";s:22:\"click_overlay_to_close\";b:1;s:12:\"keyboard_nav\";b:1;s:13:\"error_message\";s:63:\"The requested content cannot be loaded. Please try again later.\";}s:13:\"imagelightbox\";a:6:{s:15:\"animation_speed\";i:250;s:12:\"preload_next\";b:1;s:15:\"enable_keyboard\";b:1;s:11:\"quit_on_end\";b:0;s:19:\"quit_on_image_click\";b:0;s:22:\"quit_on_document_click\";b:1;}s:6:\"tosrus\";a:9:{s:6:\"effect\";s:5:\"slide\";s:8:\"infinite\";b:1;s:4:\"keys\";b:0;s:8:\"autoplay\";b:1;s:14:\"pause_on_hover\";b:0;s:7:\"timeout\";i:4000;s:10:\"pagination\";b:1;s:15:\"pagination_type\";s:10:\"thumbnails\";s:14:\"close_on_click\";b:0;}s:12:\"featherlight\";a:6:{s:10:\"open_speed\";i:250;s:11:\"close_speed\";i:250;s:14:\"close_on_click\";s:10:\"background\";s:12:\"close_on_esc\";b:1;s:15:\"gallery_fade_in\";i:100;s:16:\"gallery_fade_out\";i:300;}s:8:\"magnific\";a:12:{s:10:\"disable_on\";i:0;s:9:\"mid_click\";b:1;s:9:\"preloader\";b:1;s:22:\"close_on_content_click\";b:1;s:25:\"close_on_background_click\";b:1;s:19:\"close_button_inside\";b:1;s:17:\"show_close_button\";b:1;s:17:\"enable_escape_key\";b:1;s:9:\"align_top\";b:0;s:22:\"fixed_content_position\";s:4:\"auto\";s:25:\"fixed_background_position\";s:4:\"auto\";s:15:\"auto_focus_last\";b:1;}}', 'no'),
(867, 'responsive_lightbox_version', '2.0.5', 'no'),
(868, 'widget_responsive_lightbox_gallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(869, 'widget_responsive_lightbox_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(870, 'responsive_lightbox_activation_date', '1541422593', 'yes'),
(943, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1541523334;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes');
INSERT INTO `abk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(949, 'relevanssi_admin_search', 'off', 'yes'),
(950, 'relevanssi_bg_col', '#ffaf75', 'yes'),
(951, 'relevanssi_cat', '0', 'yes'),
(952, 'relevanssi_class', 'relevanssi-query-term', 'yes'),
(953, 'relevanssi_comment_boost', '0.75', 'yes'),
(954, 'relevanssi_content_boost', '1', 'yes'),
(955, 'relevanssi_css', 'text-decoration: underline; text-color: #ff0000', 'yes'),
(956, 'relevanssi_db_version', '5', 'yes'),
(957, 'relevanssi_default_orderby', 'relevance', 'yes'),
(958, 'relevanssi_disable_or_fallback', 'off', 'yes'),
(959, 'relevanssi_exact_match_bonus', 'on', 'yes'),
(960, 'relevanssi_excat', '0', 'yes'),
(961, 'relevanssi_excerpt_allowable_tags', '', 'yes'),
(962, 'relevanssi_excerpt_custom_fields', 'off', 'yes'),
(963, 'relevanssi_excerpt_length', '30', 'yes'),
(964, 'relevanssi_excerpt_type', 'words', 'yes'),
(965, 'relevanssi_excerpts', 'on', 'yes'),
(966, 'relevanssi_exclude_posts', '', 'yes'),
(967, 'relevanssi_expand_shortcodes', 'on', 'yes'),
(968, 'relevanssi_extag', '0', 'yes'),
(969, 'relevanssi_fuzzy', 'sometimes', 'yes'),
(970, 'relevanssi_highlight', 'strong', 'yes'),
(971, 'relevanssi_highlight_comments', 'off', 'yes'),
(972, 'relevanssi_highlight_docs', 'off', 'yes'),
(973, 'relevanssi_hilite_title', '', 'yes'),
(974, 'relevanssi_implicit_operator', 'OR', 'yes'),
(975, 'relevanssi_index_author', 'off', 'yes'),
(976, 'relevanssi_index_comments', 'none', 'yes'),
(977, 'relevanssi_index_excerpt', 'off', 'yes'),
(978, 'relevanssi_index_fields', '', 'yes'),
(979, 'relevanssi_index_limit', '500', 'yes'),
(980, 'relevanssi_index_post_types', 'a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:5:\"bogus\";}', 'yes'),
(981, 'relevanssi_index_taxonomies_list', 'a:0:{}', 'yes'),
(982, 'relevanssi_indexed', 'done', 'yes'),
(983, 'relevanssi_log_queries', 'off', 'yes'),
(984, 'relevanssi_log_queries_with_ip', 'off', 'yes'),
(985, 'relevanssi_min_word_length', '3', 'yes'),
(986, 'relevanssi_omit_from_logs', '', 'yes'),
(987, 'relevanssi_polylang_all_languages', 'off', 'yes'),
(988, 'relevanssi_punctuation', 'a:4:{s:6:\"quotes\";s:7:\"replace\";s:7:\"hyphens\";s:7:\"replace\";s:10:\"ampersands\";s:7:\"replace\";s:8:\"decimals\";s:6:\"remove\";}', 'yes'),
(989, 'relevanssi_respect_exclude', 'on', 'yes'),
(990, 'relevanssi_show_matches', '', 'yes'),
(991, 'relevanssi_show_matches_text', '(Search hits: %body% in body, %title% in title, %categories% in categories, %tags% in tags, %taxonomies% in other taxonomies, %comments% in comments. Score: %score%)', 'yes'),
(992, 'relevanssi_synonyms', '', 'yes'),
(993, 'relevanssi_throttle', 'on', 'yes'),
(994, 'relevanssi_throttle_limit', '500', 'yes'),
(995, 'relevanssi_title_boost', '5', 'yes'),
(996, 'relevanssi_txt_col', '#ff0000', 'yes'),
(997, 'relevanssi_word_boundaries', 'on', 'yes'),
(998, 'relevanssi_wpml_only_current', 'on', 'yes'),
(1001, 'relevanssi_doc_count', '45', 'yes'),
(1075, '_site_transient_timeout_theme_roots', '1542022326', 'no'),
(1076, '_site_transient_theme_roots', 'a:4:{s:3:\"abk\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1078, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542020530;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1079, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542020531;s:7:\"checked\";a:4:{s:3:\"abk\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1080, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542020532;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:5:\"2.9.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.5\";s:9:\"hello.php\";s:3:\"1.7\";s:25:\"relevanssi/relevanssi.php\";s:7:\"4.1.1.1\";s:43:\"responsive-lightbox/responsive-lightbox.php\";s:5:\"2.0.5\";s:33:\"wp-translitera/wp-translitera.php\";s:6:\"p1.2.5\";}s:8:\"response\";a:1:{s:25:\"relevanssi/relevanssi.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/relevanssi\";s:4:\"slug\";s:10:\"relevanssi\";s:6:\"plugin\";s:25:\"relevanssi/relevanssi.php\";s:11:\"new_version\";s:7:\"4.1.1.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/relevanssi/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/relevanssi.4.1.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-256x256.png?rev=1737893\";s:2:\"1x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-128x128.png?rev=1737893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/relevanssi/assets/banner-1544x500.jpg?rev=1647178\";s:2:\"1x\";s:65:\"https://ps.w.org/relevanssi/assets/banner-772x250.jpg?rev=1647180\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:56:\"<ul>\n<li>Fixes the broken User searches page.</li>\n</ul>\";s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-seo-pack\";s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:6:\"plugin\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:11:\"new_version\";s:5:\"2.9.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.2.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-256x256.png?rev=979908\";s:2:\"1x\";s:71:\"https://ps.w.org/all-in-one-seo-pack/assets/icon-128x128.png?rev=979908\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=1354894\";s:2:\"1x\";s:74:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=1354894\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"responsive-lightbox/responsive-lightbox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/responsive-lightbox\";s:4:\"slug\";s:19:\"responsive-lightbox\";s:6:\"plugin\";s:43:\"responsive-lightbox/responsive-lightbox.php\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/responsive-lightbox/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/responsive-lightbox.2.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/responsive-lightbox/assets/icon-256x256.png?rev=1872740\";s:2:\"1x\";s:72:\"https://ps.w.org/responsive-lightbox/assets/icon-128x128.png?rev=1872740\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/responsive-lightbox/assets/banner-772x250.jpg?rev=1872740\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-translitera/wp-translitera.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-translitera\";s:4:\"slug\";s:14:\"wp-translitera\";s:6:\"plugin\";s:33:\"wp-translitera/wp-translitera.php\";s:11:\"new_version\";s:6:\"p1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-translitera/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-translitera.p1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-translitera.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_postmeta`
--

CREATE TABLE `abk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_postmeta`
--

INSERT INTO `abk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(55, 23, '_edit_last', '1'),
(56, 23, '_edit_lock', '1541627737:1'),
(57, 25, '_edit_last', '1'),
(58, 25, '_edit_lock', '1541167116:1'),
(59, 27, '_edit_last', '1'),
(60, 27, '_edit_lock', '1541167109:1'),
(61, 29, '_edit_last', '1'),
(62, 29, '_edit_lock', '1541167107:1'),
(63, 3, '_wp_trash_meta_status', 'draft'),
(64, 3, '_wp_trash_meta_time', '1541105669'),
(65, 3, '_wp_desired_post_slug', 'privacy-policy'),
(66, 2, '_wp_trash_meta_status', 'publish'),
(67, 2, '_wp_trash_meta_time', '1541105702'),
(68, 2, '_wp_desired_post_slug', 'sample-page'),
(69, 33, '_edit_last', '1'),
(70, 33, '_edit_lock', '1541167126:1'),
(71, 35, '_edit_last', '1'),
(72, 35, '_edit_lock', '1541167114:1'),
(73, 37, '_edit_last', '1'),
(74, 37, '_edit_lock', '1541167020:1'),
(75, 39, '_edit_last', '1'),
(76, 39, '_edit_lock', '1541546209:1'),
(77, 39, '_wp_page_template', 'basesubcategory.php'),
(78, 41, '_edit_last', '1'),
(79, 41, '_edit_lock', '1541433968:1'),
(80, 41, '_wp_page_template', 'subcategoryofservices.php'),
(81, 43, '_edit_last', '1'),
(82, 43, '_edit_lock', '1541508493:1'),
(83, 43, '_wp_page_template', 'specific.php'),
(84, 23, '_wp_page_template', 'home.php'),
(85, 37, '_wp_page_template', 'contacts .php'),
(86, 33, '_wp_page_template', 'licenses.php'),
(87, 29, '_wp_page_template', 'experience.php'),
(88, 27, '_wp_page_template', 'base.php'),
(89, 35, '_wp_page_template', 'withus.php'),
(90, 25, '_wp_page_template', 'services.php'),
(91, 48, '_menu_item_type', 'post_type'),
(92, 48, '_menu_item_menu_item_parent', '0'),
(93, 48, '_menu_item_object_id', '23'),
(94, 48, '_menu_item_object', 'page'),
(95, 48, '_menu_item_target', ''),
(96, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 48, '_menu_item_xfn', ''),
(98, 48, '_menu_item_url', ''),
(99, 48, '_menu_item_orphaned', '1541174546'),
(100, 49, '_menu_item_type', 'post_type'),
(101, 49, '_menu_item_menu_item_parent', '0'),
(102, 49, '_menu_item_object_id', '23'),
(103, 49, '_menu_item_object', 'page'),
(104, 49, '_menu_item_target', ''),
(105, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 49, '_menu_item_xfn', ''),
(107, 49, '_menu_item_url', ''),
(108, 49, '_menu_item_orphaned', '1541174547'),
(109, 50, '_menu_item_type', 'post_type'),
(110, 50, '_menu_item_menu_item_parent', '0'),
(111, 50, '_menu_item_object_id', '37'),
(112, 50, '_menu_item_object', 'page'),
(113, 50, '_menu_item_target', ''),
(114, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 50, '_menu_item_xfn', ''),
(116, 50, '_menu_item_url', ''),
(117, 50, '_menu_item_orphaned', '1541174547'),
(118, 51, '_menu_item_type', 'post_type'),
(119, 51, '_menu_item_menu_item_parent', '0'),
(120, 51, '_menu_item_object_id', '33'),
(121, 51, '_menu_item_object', 'page'),
(122, 51, '_menu_item_target', ''),
(123, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 51, '_menu_item_xfn', ''),
(125, 51, '_menu_item_url', ''),
(126, 51, '_menu_item_orphaned', '1541174547'),
(127, 52, '_menu_item_type', 'post_type'),
(128, 52, '_menu_item_menu_item_parent', '0'),
(129, 52, '_menu_item_object_id', '29'),
(130, 52, '_menu_item_object', 'page'),
(131, 52, '_menu_item_target', ''),
(132, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 52, '_menu_item_xfn', ''),
(134, 52, '_menu_item_url', ''),
(135, 52, '_menu_item_orphaned', '1541174548'),
(136, 53, '_menu_item_type', 'post_type'),
(137, 53, '_menu_item_menu_item_parent', '0'),
(138, 53, '_menu_item_object_id', '27'),
(139, 53, '_menu_item_object', 'page'),
(140, 53, '_menu_item_target', ''),
(141, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 53, '_menu_item_xfn', ''),
(143, 53, '_menu_item_url', ''),
(144, 53, '_menu_item_orphaned', '1541174548'),
(145, 54, '_menu_item_type', 'post_type'),
(146, 54, '_menu_item_menu_item_parent', '0'),
(147, 54, '_menu_item_object_id', '39'),
(148, 54, '_menu_item_object', 'page'),
(149, 54, '_menu_item_target', ''),
(150, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 54, '_menu_item_xfn', ''),
(152, 54, '_menu_item_url', ''),
(153, 54, '_menu_item_orphaned', '1541174549'),
(154, 55, '_menu_item_type', 'post_type'),
(155, 55, '_menu_item_menu_item_parent', '0'),
(156, 55, '_menu_item_object_id', '35'),
(157, 55, '_menu_item_object', 'page'),
(158, 55, '_menu_item_target', ''),
(159, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 55, '_menu_item_xfn', ''),
(161, 55, '_menu_item_url', ''),
(162, 55, '_menu_item_orphaned', '1541174549'),
(163, 56, '_menu_item_type', 'post_type'),
(164, 56, '_menu_item_menu_item_parent', '0'),
(165, 56, '_menu_item_object_id', '25'),
(166, 56, '_menu_item_object', 'page'),
(167, 56, '_menu_item_target', ''),
(168, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 56, '_menu_item_xfn', ''),
(170, 56, '_menu_item_url', ''),
(171, 56, '_menu_item_orphaned', '1541174549'),
(172, 57, '_menu_item_type', 'post_type'),
(173, 57, '_menu_item_menu_item_parent', '0'),
(174, 57, '_menu_item_object_id', '41'),
(175, 57, '_menu_item_object', 'page'),
(176, 57, '_menu_item_target', ''),
(177, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 57, '_menu_item_xfn', ''),
(179, 57, '_menu_item_url', ''),
(180, 57, '_menu_item_orphaned', '1541174550'),
(181, 58, '_menu_item_type', 'post_type'),
(182, 58, '_menu_item_menu_item_parent', '0'),
(183, 58, '_menu_item_object_id', '43'),
(184, 58, '_menu_item_object', 'page'),
(185, 58, '_menu_item_target', ''),
(186, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 58, '_menu_item_xfn', ''),
(188, 58, '_menu_item_url', ''),
(189, 58, '_menu_item_orphaned', '1541174550'),
(190, 59, '_menu_item_type', 'post_type'),
(191, 59, '_menu_item_menu_item_parent', '0'),
(192, 59, '_menu_item_object_id', '37'),
(193, 59, '_menu_item_object', 'page'),
(194, 59, '_menu_item_target', ''),
(195, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(196, 59, '_menu_item_xfn', ''),
(197, 59, '_menu_item_url', ''),
(199, 60, '_menu_item_type', 'post_type'),
(200, 60, '_menu_item_menu_item_parent', '0'),
(201, 60, '_menu_item_object_id', '35'),
(202, 60, '_menu_item_object', 'page'),
(203, 60, '_menu_item_target', ''),
(204, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 60, '_menu_item_xfn', ''),
(206, 60, '_menu_item_url', ''),
(208, 61, '_menu_item_type', 'post_type'),
(209, 61, '_menu_item_menu_item_parent', '0'),
(210, 61, '_menu_item_object_id', '33'),
(211, 61, '_menu_item_object', 'page'),
(212, 61, '_menu_item_target', ''),
(213, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(214, 61, '_menu_item_xfn', ''),
(215, 61, '_menu_item_url', ''),
(217, 62, '_menu_item_type', 'post_type'),
(218, 62, '_menu_item_menu_item_parent', '0'),
(219, 62, '_menu_item_object_id', '29'),
(220, 62, '_menu_item_object', 'page'),
(221, 62, '_menu_item_target', ''),
(222, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 62, '_menu_item_xfn', ''),
(224, 62, '_menu_item_url', ''),
(226, 63, '_menu_item_type', 'post_type'),
(227, 63, '_menu_item_menu_item_parent', '0'),
(228, 63, '_menu_item_object_id', '27'),
(229, 63, '_menu_item_object', 'page'),
(230, 63, '_menu_item_target', ''),
(231, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 63, '_menu_item_xfn', ''),
(233, 63, '_menu_item_url', ''),
(235, 64, '_menu_item_type', 'post_type'),
(236, 64, '_menu_item_menu_item_parent', '0'),
(237, 64, '_menu_item_object_id', '25'),
(238, 64, '_menu_item_object', 'page'),
(239, 64, '_menu_item_target', ''),
(240, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 64, '_menu_item_xfn', ''),
(242, 64, '_menu_item_url', ''),
(244, 65, '_menu_item_type', 'post_type'),
(245, 65, '_menu_item_menu_item_parent', '0'),
(246, 65, '_menu_item_object_id', '23'),
(247, 65, '_menu_item_object', 'page'),
(248, 65, '_menu_item_target', ''),
(249, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 65, '_menu_item_xfn', ''),
(251, 65, '_menu_item_url', ''),
(252, 65, '_menu_item_orphaned', '1541174619'),
(253, 66, '_menu_item_type', 'post_type'),
(254, 66, '_menu_item_menu_item_parent', '0'),
(255, 66, '_menu_item_object_id', '23'),
(256, 66, '_menu_item_object', 'page'),
(257, 66, '_menu_item_target', ''),
(258, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 66, '_menu_item_xfn', ''),
(260, 66, '_menu_item_url', ''),
(261, 67, '_edit_last', '1'),
(262, 67, '_edit_lock', '1541685481:1'),
(263, 67, '_wp_page_template', 'specific.php'),
(270, 77, '_edit_last', '1'),
(271, 77, '_edit_lock', '1541434024:1'),
(272, 77, '_wp_page_template', 'subcategoryofservices.php'),
(273, 79, '_menu_item_type', 'post_type'),
(274, 79, '_menu_item_menu_item_parent', '0'),
(275, 79, '_menu_item_object_id', '77'),
(276, 79, '_menu_item_object', 'page'),
(277, 79, '_menu_item_target', ''),
(278, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 79, '_menu_item_xfn', ''),
(280, 79, '_menu_item_url', ''),
(282, 80, '_menu_item_type', 'post_type'),
(283, 80, '_menu_item_menu_item_parent', '0'),
(284, 80, '_menu_item_object_id', '41'),
(285, 80, '_menu_item_object', 'page'),
(286, 80, '_menu_item_target', ''),
(287, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 80, '_menu_item_xfn', ''),
(289, 80, '_menu_item_url', ''),
(293, 88, '_edit_last', '1'),
(294, 88, '_edit_lock', '1541431715:1'),
(295, 23, 'number-top-home', '+7 (916) 357-75-84'),
(296, 23, '_number-top-home', 'field_5be02b52f7516'),
(297, 23, 'help-title-1', 'техническая экспертиза оборудования'),
(298, 23, '_help-title-1', 'field_5be02c50f7ce5'),
(299, 23, 'help-desc-1-1', '- Соответствие реального качества оборудования, номинальному.'),
(300, 23, '_help-desc-1-1', 'field_5be02d447158f'),
(301, 23, 'help-desc-1-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(302, 23, '_help-desc-1-2', 'field_5be02d83c3b98'),
(303, 94, 'number-top-home', ''),
(304, 94, '_number-top-home', 'field_5be02b52f7516'),
(305, 94, 'help-title-1', ''),
(306, 94, '_help-title-1', 'field_5be02c50f7ce5'),
(307, 94, 'help-desc-1-1', 'рмтмтапапьаорпаопаопролрплпрлорлорлдпрдпрдлjghkhgkhhlhjlk;kj;jgggggggggggggg'),
(308, 94, '_help-desc-1-1', 'field_5be02d447158f'),
(309, 94, 'help-desc-1-2', ''),
(310, 94, '_help-desc-1-2', 'field_5be02d83c3b98'),
(311, 95, 'number-top-home', ''),
(312, 95, '_number-top-home', 'field_5be02b52f7516'),
(313, 95, 'help-title-1', ''),
(314, 95, '_help-title-1', 'field_5be02c50f7ce5'),
(315, 95, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(316, 95, '_help-desc-1-1', 'field_5be02d447158f'),
(317, 95, 'help-desc-1-2', ''),
(318, 95, '_help-desc-1-2', 'field_5be02d83c3b98'),
(319, 96, 'number-top-home', ''),
(320, 96, '_number-top-home', 'field_5be02b52f7516'),
(321, 96, 'help-title-1', ''),
(322, 96, '_help-title-1', 'field_5be02c50f7ce5'),
(323, 96, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному. <br>- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(324, 96, '_help-desc-1-1', 'field_5be02d447158f'),
(325, 96, 'help-desc-1-2', ''),
(326, 96, '_help-desc-1-2', 'field_5be02d83c3b98'),
(327, 97, 'number-top-home', ''),
(328, 97, '_number-top-home', 'field_5be02b52f7516'),
(329, 97, 'help-title-1', ''),
(330, 97, '_help-title-1', 'field_5be02c50f7ce5'),
(331, 97, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(332, 97, '_help-desc-1-1', 'field_5be02d447158f'),
(333, 97, 'help-desc-1-2', ''),
(334, 97, '_help-desc-1-2', 'field_5be02d83c3b98'),
(335, 23, 'help-desc-1-3', '- Возможность эксплуатации по прямому назначению'),
(336, 23, '_help-desc-1-3', 'field_5be0313155450'),
(337, 23, 'help-title-2', 'техническая экспертиза оборудования'),
(338, 23, '_help-title-2', 'field_5be0314e5c767'),
(339, 23, 'help-desc-2-1', '- Соответствие реального качества оборудования, номинальному.'),
(340, 23, '_help-desc-2-1', 'field_5be0316a2901d'),
(341, 23, 'help-desc-2-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(342, 23, '_help-desc-2-2', 'field_5be0318406b94'),
(343, 23, 'help-desc-2-3', '- Возможность эксплуатации по прямому назначению'),
(344, 23, '_help-desc-2-3', 'field_5be031a24e779'),
(345, 23, 'help-title-3', 'техническая экспертиза оборудования'),
(346, 23, '_help-title-3', 'field_5be031bc09a82'),
(347, 23, 'help-desc-3-1', '- Соответствие реального качества оборудования, номинальному.'),
(348, 23, '_help-desc-3-1', 'field_5be031cd40f7c'),
(349, 23, 'help-desc-3-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(350, 23, '_help-desc-3-2', 'field_5be0321200cdc'),
(351, 23, 'help-desc-3-3', '- Возможность эксплуатации по прямому назначению'),
(352, 23, '_help-desc-3-3', 'field_5be03228984b9'),
(353, 23, 'base-1', '85'),
(354, 23, '_base-1', 'field_5be0327438637'),
(355, 109, 'number-top-home', ''),
(356, 109, '_number-top-home', 'field_5be02b52f7516'),
(357, 109, 'help-title-1', ''),
(358, 109, '_help-title-1', 'field_5be02c50f7ce5'),
(359, 109, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(360, 109, '_help-desc-1-1', 'field_5be02d447158f'),
(361, 109, 'help-desc-1-2', ''),
(362, 109, '_help-desc-1-2', 'field_5be02d83c3b98'),
(363, 109, 'help-desc-1-3', ''),
(364, 109, '_help-desc-1-3', 'field_5be0313155450'),
(365, 109, 'help-title-2', ''),
(366, 109, '_help-title-2', 'field_5be0314e5c767'),
(367, 109, 'help-desc-2-1', ''),
(368, 109, '_help-desc-2-1', 'field_5be0316a2901d'),
(369, 109, 'help-desc-2-2', ''),
(370, 109, '_help-desc-2-2', 'field_5be0318406b94'),
(371, 109, 'help-desc-2-3', ''),
(372, 109, '_help-desc-2-3', 'field_5be031a24e779'),
(373, 109, 'help-title-3', ''),
(374, 109, '_help-title-3', 'field_5be031bc09a82'),
(375, 109, 'help-desc-3-1', ''),
(376, 109, '_help-desc-3-1', 'field_5be031cd40f7c'),
(377, 109, 'help-desc-3-2', ''),
(378, 109, '_help-desc-3-2', 'field_5be0321200cdc'),
(379, 109, 'help-desc-3-3', ''),
(380, 109, '_help-desc-3-3', 'field_5be03228984b9'),
(381, 109, 'base-1', '85'),
(382, 109, '_base-1', 'field_5be0327438637'),
(383, 23, 'phone-map', '+7 (916) 357-75-84'),
(384, 23, '_phone-map', 'field_5be03891250aa'),
(385, 23, 'E-mail', 'panklaska@yandex.ru'),
(386, 23, '_E-mail', 'field_5be038eee07c8'),
(387, 23, 'number-bottom-home', '+7 (916) 357-75-84'),
(388, 23, '_number-bottom-home', 'field_5be0390e52384'),
(389, 113, 'number-top-home', '+7 (916) 357-75-84'),
(390, 113, '_number-top-home', 'field_5be02b52f7516'),
(391, 113, 'help-title-1', ''),
(392, 113, '_help-title-1', 'field_5be02c50f7ce5'),
(393, 113, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(394, 113, '_help-desc-1-1', 'field_5be02d447158f'),
(395, 113, 'help-desc-1-2', ''),
(396, 113, '_help-desc-1-2', 'field_5be02d83c3b98'),
(397, 113, 'help-desc-1-3', ''),
(398, 113, '_help-desc-1-3', 'field_5be0313155450'),
(399, 113, 'help-title-2', ''),
(400, 113, '_help-title-2', 'field_5be0314e5c767'),
(401, 113, 'help-desc-2-1', ''),
(402, 113, '_help-desc-2-1', 'field_5be0316a2901d'),
(403, 113, 'help-desc-2-2', ''),
(404, 113, '_help-desc-2-2', 'field_5be0318406b94'),
(405, 113, 'help-desc-2-3', ''),
(406, 113, '_help-desc-2-3', 'field_5be031a24e779'),
(407, 113, 'help-title-3', ''),
(408, 113, '_help-title-3', 'field_5be031bc09a82'),
(409, 113, 'help-desc-3-1', ''),
(410, 113, '_help-desc-3-1', 'field_5be031cd40f7c'),
(411, 113, 'help-desc-3-2', ''),
(412, 113, '_help-desc-3-2', 'field_5be0321200cdc'),
(413, 113, 'help-desc-3-3', ''),
(414, 113, '_help-desc-3-3', 'field_5be03228984b9'),
(415, 113, 'base-1', '85'),
(416, 113, '_base-1', 'field_5be0327438637'),
(417, 113, 'phone-map', ''),
(418, 113, '_phone-map', 'field_5be03891250aa'),
(419, 113, 'E-mail', ''),
(420, 113, '_E-mail', 'field_5be038eee07c8'),
(421, 113, 'number-bottom-home', ''),
(422, 113, '_number-bottom-home', 'field_5be0390e52384'),
(423, 114, 'number-top-home', '+7 (916) 357-75-84'),
(424, 114, '_number-top-home', 'field_5be02b52f7516'),
(425, 114, 'help-title-1', ''),
(426, 114, '_help-title-1', 'field_5be02c50f7ce5'),
(427, 114, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(428, 114, '_help-desc-1-1', 'field_5be02d447158f'),
(429, 114, 'help-desc-1-2', ''),
(430, 114, '_help-desc-1-2', 'field_5be02d83c3b98'),
(431, 114, 'help-desc-1-3', ''),
(432, 114, '_help-desc-1-3', 'field_5be0313155450'),
(433, 114, 'help-title-2', ''),
(434, 114, '_help-title-2', 'field_5be0314e5c767'),
(435, 114, 'help-desc-2-1', ''),
(436, 114, '_help-desc-2-1', 'field_5be0316a2901d'),
(437, 114, 'help-desc-2-2', ''),
(438, 114, '_help-desc-2-2', 'field_5be0318406b94'),
(439, 114, 'help-desc-2-3', ''),
(440, 114, '_help-desc-2-3', 'field_5be031a24e779'),
(441, 114, 'help-title-3', ''),
(442, 114, '_help-title-3', 'field_5be031bc09a82'),
(443, 114, 'help-desc-3-1', ''),
(444, 114, '_help-desc-3-1', 'field_5be031cd40f7c'),
(445, 114, 'help-desc-3-2', ''),
(446, 114, '_help-desc-3-2', 'field_5be0321200cdc'),
(447, 114, 'help-desc-3-3', ''),
(448, 114, '_help-desc-3-3', 'field_5be03228984b9'),
(449, 114, 'base-1', '85'),
(450, 114, '_base-1', 'field_5be0327438637'),
(451, 114, 'phone-map', '+7 (916) 357-75-84'),
(452, 114, '_phone-map', 'field_5be03891250aa'),
(453, 114, 'E-mail', ''),
(454, 114, '_E-mail', 'field_5be038eee07c8'),
(455, 114, 'number-bottom-home', '+7 (916) 357-75-84'),
(456, 114, '_number-bottom-home', 'field_5be0390e52384'),
(457, 115, 'number-top-home', '+7 (916) 357-75-84'),
(458, 115, '_number-top-home', 'field_5be02b52f7516'),
(459, 115, 'help-title-1', ''),
(460, 115, '_help-title-1', 'field_5be02c50f7ce5'),
(461, 115, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(462, 115, '_help-desc-1-1', 'field_5be02d447158f'),
(463, 115, 'help-desc-1-2', ''),
(464, 115, '_help-desc-1-2', 'field_5be02d83c3b98'),
(465, 115, 'help-desc-1-3', ''),
(466, 115, '_help-desc-1-3', 'field_5be0313155450'),
(467, 115, 'help-title-2', ''),
(468, 115, '_help-title-2', 'field_5be0314e5c767'),
(469, 115, 'help-desc-2-1', ''),
(470, 115, '_help-desc-2-1', 'field_5be0316a2901d'),
(471, 115, 'help-desc-2-2', ''),
(472, 115, '_help-desc-2-2', 'field_5be0318406b94'),
(473, 115, 'help-desc-2-3', ''),
(474, 115, '_help-desc-2-3', 'field_5be031a24e779'),
(475, 115, 'help-title-3', ''),
(476, 115, '_help-title-3', 'field_5be031bc09a82'),
(477, 115, 'help-desc-3-1', ''),
(478, 115, '_help-desc-3-1', 'field_5be031cd40f7c'),
(479, 115, 'help-desc-3-2', ''),
(480, 115, '_help-desc-3-2', 'field_5be0321200cdc'),
(481, 115, 'help-desc-3-3', ''),
(482, 115, '_help-desc-3-3', 'field_5be03228984b9'),
(483, 115, 'base-1', '85'),
(484, 115, '_base-1', 'field_5be0327438637'),
(485, 115, 'phone-map', '+7 (916) 357-75-84'),
(486, 115, '_phone-map', 'field_5be03891250aa'),
(487, 115, 'E-mail', 'panklaska@yandex.ru'),
(488, 115, '_E-mail', 'field_5be038eee07c8'),
(489, 115, 'number-bottom-home', '+7 (916) 357-75-84'),
(490, 115, '_number-bottom-home', 'field_5be0390e52384'),
(491, 116, 'number-top-home', '+7 (916) 357-75-84'),
(492, 116, '_number-top-home', 'field_5be02b52f7516'),
(493, 116, 'help-title-1', 'техническая экспертиза<br> оборудования'),
(494, 116, '_help-title-1', 'field_5be02c50f7ce5'),
(495, 116, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(496, 116, '_help-desc-1-1', 'field_5be02d447158f'),
(497, 116, 'help-desc-1-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(498, 116, '_help-desc-1-2', 'field_5be02d83c3b98'),
(499, 116, 'help-desc-1-3', '- Возможность эксплуатации по<br> прямому назначению'),
(500, 116, '_help-desc-1-3', 'field_5be0313155450'),
(501, 116, 'help-title-2', 'техническая экспертиза<br> оборудования'),
(502, 116, '_help-title-2', 'field_5be0314e5c767'),
(503, 116, 'help-desc-2-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(504, 116, '_help-desc-2-1', 'field_5be0316a2901d'),
(505, 116, 'help-desc-2-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(506, 116, '_help-desc-2-2', 'field_5be0318406b94'),
(507, 116, 'help-desc-2-3', '- Возможность эксплуатации по<br> прямому назначению'),
(508, 116, '_help-desc-2-3', 'field_5be031a24e779'),
(509, 116, 'help-title-3', 'техническая экспертиза<br> оборудования'),
(510, 116, '_help-title-3', 'field_5be031bc09a82'),
(511, 116, 'help-desc-3-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(512, 116, '_help-desc-3-1', 'field_5be031cd40f7c'),
(513, 116, 'help-desc-3-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(514, 116, '_help-desc-3-2', 'field_5be0321200cdc'),
(515, 116, 'help-desc-3-3', '- Возможность эксплуатации по<br> прямому назначению'),
(516, 116, '_help-desc-3-3', 'field_5be03228984b9'),
(517, 116, 'base-1', '85'),
(518, 116, '_base-1', 'field_5be0327438637'),
(519, 116, 'phone-map', '+7 (916) 357-75-84'),
(520, 116, '_phone-map', 'field_5be03891250aa'),
(521, 116, 'E-mail', 'panklaska@yandex.ru'),
(522, 116, '_E-mail', 'field_5be038eee07c8'),
(523, 116, 'number-bottom-home', '+7 (916) 357-75-84'),
(524, 116, '_number-bottom-home', 'field_5be0390e52384'),
(525, 117, 'number-top-home', '+7 (916) 357-75-84'),
(526, 117, '_number-top-home', 'field_5be02b52f7516'),
(527, 117, 'help-title-1', 'техническая экспертиза<br> оборудования'),
(528, 117, '_help-title-1', 'field_5be02c50f7ce5'),
(529, 117, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(530, 117, '_help-desc-1-1', 'field_5be02d447158f'),
(531, 117, 'help-desc-1-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(532, 117, '_help-desc-1-2', 'field_5be02d83c3b98'),
(533, 117, 'help-desc-1-3', '- Возможность эксплуатации по<br> прямому назначению'),
(534, 117, '_help-desc-1-3', 'field_5be0313155450'),
(535, 117, 'help-title-2', 'техническая экспертиза<br> оборудования'),
(536, 117, '_help-title-2', 'field_5be0314e5c767'),
(537, 117, 'help-desc-2-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(538, 117, '_help-desc-2-1', 'field_5be0316a2901d'),
(539, 117, 'help-desc-2-2', '- Описание 2'),
(540, 117, '_help-desc-2-2', 'field_5be0318406b94'),
(541, 117, 'help-desc-2-3', '- Возможность эксплуатации по<br> прямому назначению'),
(542, 117, '_help-desc-2-3', 'field_5be031a24e779'),
(543, 117, 'help-title-3', 'техническая экспертиза<br> оборудования'),
(544, 117, '_help-title-3', 'field_5be031bc09a82'),
(545, 117, 'help-desc-3-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(546, 117, '_help-desc-3-1', 'field_5be031cd40f7c'),
(547, 117, 'help-desc-3-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(548, 117, '_help-desc-3-2', 'field_5be0321200cdc'),
(549, 117, 'help-desc-3-3', '- Возможность эксплуатации по<br> прямому назначению'),
(550, 117, '_help-desc-3-3', 'field_5be03228984b9'),
(551, 117, 'base-1', '85'),
(552, 117, '_base-1', 'field_5be0327438637'),
(553, 117, 'phone-map', '+7 (916) 357-75-84'),
(554, 117, '_phone-map', 'field_5be03891250aa'),
(555, 117, 'E-mail', 'panklaska@yandex.ru'),
(556, 117, '_E-mail', 'field_5be038eee07c8'),
(557, 117, 'number-bottom-home', '+7 (916) 357-75-84'),
(558, 117, '_number-bottom-home', 'field_5be0390e52384'),
(559, 118, 'number-top-home', '+7 (916) 357-75-84'),
(560, 118, '_number-top-home', 'field_5be02b52f7516'),
(561, 118, 'help-title-1', 'техническая экспертиза<br> оборудования'),
(562, 118, '_help-title-1', 'field_5be02c50f7ce5'),
(563, 118, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(564, 118, '_help-desc-1-1', 'field_5be02d447158f'),
(565, 118, 'help-desc-1-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(566, 118, '_help-desc-1-2', 'field_5be02d83c3b98'),
(567, 118, 'help-desc-1-3', '- Возможность эксплуатации по<br> прямому назначению'),
(568, 118, '_help-desc-1-3', 'field_5be0313155450'),
(569, 118, 'help-title-2', 'техническая экспертиза<br> оборудования'),
(570, 118, '_help-title-2', 'field_5be0314e5c767'),
(571, 118, 'help-desc-2-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(572, 118, '_help-desc-2-1', 'field_5be0316a2901d'),
(573, 118, 'help-desc-2-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(574, 118, '_help-desc-2-2', 'field_5be0318406b94'),
(575, 118, 'help-desc-2-3', '- Возможность эксплуатации по<br> прямому назначению'),
(576, 118, '_help-desc-2-3', 'field_5be031a24e779'),
(577, 118, 'help-title-3', 'техническая экспертиза<br> оборудования'),
(578, 118, '_help-title-3', 'field_5be031bc09a82'),
(579, 118, 'help-desc-3-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(580, 118, '_help-desc-3-1', 'field_5be031cd40f7c'),
(581, 118, 'help-desc-3-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(582, 118, '_help-desc-3-2', 'field_5be0321200cdc'),
(583, 118, 'help-desc-3-3', '- Возможность эксплуатации по<br> прямому назначению'),
(584, 118, '_help-desc-3-3', 'field_5be03228984b9'),
(585, 118, 'base-1', '85'),
(586, 118, '_base-1', 'field_5be0327438637'),
(587, 118, 'phone-map', '+7 (916) 357-75-84'),
(588, 118, '_phone-map', 'field_5be03891250aa'),
(589, 118, 'E-mail', 'panklaska@yandex.ru'),
(590, 118, '_E-mail', 'field_5be038eee07c8'),
(591, 118, 'number-bottom-home', '+7 (916) 357-75-84'),
(592, 118, '_number-bottom-home', 'field_5be0390e52384'),
(595, 120, '_rl_images_count', '4'),
(596, 120, '_edit_last', '1'),
(597, 120, '_edit_lock', '1541603331:1'),
(700, 172, '_wp_attached_file', '2018/11/л1.jpeg'),
(701, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1654;s:6:\"height\";i:2338;s:4:\"file\";s:16:\"2018/11/л1.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"л1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"л1-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"л1-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"л1-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 173, '_wp_attached_file', '2018/11/л10.jpg'),
(703, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2018/11/л10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"л10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"л10-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 174, '_wp_attached_file', '2018/11/л11.jpg'),
(705, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:744;s:6:\"height\";i:1024;s:4:\"file\";s:16:\"2018/11/л11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"л11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"л11-218x300.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"л11-744x1024.jpg\";s:5:\"width\";i:744;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 175, '_wp_attached_file', '2018/11/л12.jpg'),
(707, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:739;s:4:\"file\";s:16:\"2018/11/л12.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"л12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"л12-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"л12-768x554.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"л12-1024x739.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:739;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(708, 176, '_wp_attached_file', '2018/11/л2.jpg'),
(709, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1442;s:4:\"file\";s:15:\"2018/11/л2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л2-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"л2-768x1107.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"л2-710x1024.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(710, 177, '_wp_attached_file', '2018/11/л3.jpg'),
(711, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:694;s:6:\"height\";i:982;s:4:\"file\";s:15:\"2018/11/л3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л3-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 178, '_wp_attached_file', '2018/11/л4.jpg'),
(713, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1132;s:4:\"file\";s:15:\"2018/11/л4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л4-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"л4-768x1087.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1087;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"л4-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(714, 179, '_wp_attached_file', '2018/11/л5.jpeg'),
(715, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1654;s:6:\"height\";i:2338;s:4:\"file\";s:16:\"2018/11/л5.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"л5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"л5-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"л5-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"л5-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(716, 180, '_wp_attached_file', '2018/11/л6.jpg'),
(717, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1448;s:4:\"file\";s:15:\"2018/11/л6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л6-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"л6-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"л6-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 181, '_wp_attached_file', '2018/11/л7.jpg'),
(719, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:268;s:4:\"file\";s:15:\"2018/11/л7.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 182, '_wp_attached_file', '2018/11/л8.jpg'),
(721, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2018/11/л8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л8-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(722, 183, '_wp_attached_file', '2018/11/л9.jpg'),
(723, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2018/11/л9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"л9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"л9-218x300.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(728, 120, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:4:{i:0;i:182;i:1;i:180;i:2;i:179;i:3;i:176;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(729, 120, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:4;s:10:\"columns_md\";i:2;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:30;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(730, 120, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#000000\";s:13:\"caption_color\";s:7:\"#000000\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(731, 120, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(732, 120, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(733, 120, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(734, 120, '_rl_featured_image_type', 'image'),
(735, 120, '_rl_featured_image', ''),
(738, 186, '_rl_images_count', '4'),
(739, 186, '_edit_last', '1'),
(740, 186, '_edit_lock', '1541609704:1'),
(741, 187, '_wp_attached_file', '2018/11/п4.jpg'),
(742, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:15:\"2018/11/п4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"п4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"п4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(743, 188, '_wp_attached_file', '2018/11/п3.jpg'),
(744, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:585;s:4:\"file\";s:15:\"2018/11/п3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"п3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"п3-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(749, 186, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:4:{i:0;i:195;i:1;i:194;i:2;i:192;i:3;i:193;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(750, 186, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:4;s:10:\"columns_md\";i:2;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:40;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(751, 186, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(752, 186, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(753, 186, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(754, 186, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(757, 186, '_rl_featured_image_type', 'image'),
(758, 186, '_rl_featured_image', ''),
(760, 192, '_wp_attached_file', '2018/11/device4.png'),
(761, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:166;s:6:\"height\";i:189;s:4:\"file\";s:19:\"2018/11/device4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"device4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(762, 193, '_wp_attached_file', '2018/11/device3.png'),
(763, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:220;s:4:\"file\";s:19:\"2018/11/device3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"device3-103x150.png\";s:5:\"width\";i:103;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(764, 194, '_wp_attached_file', '2018/11/device2.png'),
(765, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:226;s:6:\"height\";i:224;s:4:\"file\";s:19:\"2018/11/device2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"device2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(766, 195, '_wp_attached_file', '2018/11/device1.png'),
(767, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:228;s:4:\"file\";s:19:\"2018/11/device1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"device1-99x150.png\";s:5:\"width\";i:99;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(769, 196, '_edit_last', '1'),
(770, 196, '_edit_lock', '1541430971:1'),
(771, 23, 'phone', '+7 (916) 357-75-84'),
(772, 23, '_phone', 'field_5be02b52f7516'),
(773, 198, 'number-top-home', '+7 (916) 357-75-84'),
(774, 198, '_number-top-home', 'field_5be02b52f7516'),
(775, 198, 'help-title-1', 'техническая экспертиза<br> оборудования'),
(776, 198, '_help-title-1', 'field_5be02c50f7ce5'),
(777, 198, 'help-desc-1-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(778, 198, '_help-desc-1-1', 'field_5be02d447158f'),
(779, 198, 'help-desc-1-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(780, 198, '_help-desc-1-2', 'field_5be02d83c3b98'),
(781, 198, 'help-desc-1-3', '- Возможность эксплуатации по<br> прямому назначению'),
(782, 198, '_help-desc-1-3', 'field_5be0313155450'),
(783, 198, 'help-title-2', 'техническая экспертиза<br> оборудования'),
(784, 198, '_help-title-2', 'field_5be0314e5c767'),
(785, 198, 'help-desc-2-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(786, 198, '_help-desc-2-1', 'field_5be0316a2901d'),
(787, 198, 'help-desc-2-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(788, 198, '_help-desc-2-2', 'field_5be0318406b94'),
(789, 198, 'help-desc-2-3', '- Возможность эксплуатации по<br> прямому назначению'),
(790, 198, '_help-desc-2-3', 'field_5be031a24e779'),
(791, 198, 'help-title-3', 'техническая экспертиза<br> оборудования'),
(792, 198, '_help-title-3', 'field_5be031bc09a82'),
(793, 198, 'help-desc-3-1', '- Соответствие реального качества<br> оборудования, номинальному.'),
(794, 198, '_help-desc-3-1', 'field_5be031cd40f7c'),
(795, 198, 'help-desc-3-2', '- Наличие явных, скрытых,<br> эксплуатационных или<br> производственных дефектов.'),
(796, 198, '_help-desc-3-2', 'field_5be0321200cdc'),
(797, 198, 'help-desc-3-3', '- Возможность эксплуатации по<br> прямому назначению'),
(798, 198, '_help-desc-3-3', 'field_5be03228984b9'),
(799, 198, 'base-1', '85'),
(800, 198, '_base-1', 'field_5be0327438637'),
(801, 198, 'phone-map', '+7 (916) 357-75-84'),
(802, 198, '_phone-map', 'field_5be03891250aa'),
(803, 198, 'E-mail', 'panklaska@yandex.ru'),
(804, 198, '_E-mail', 'field_5be038eee07c8'),
(805, 198, 'number-bottom-home', '+7 (916) 357-75-84'),
(806, 198, '_number-bottom-home', 'field_5be0390e52384'),
(807, 198, 'phone', '+7 (916) 357-75-84'),
(808, 198, '_phone', 'field_5be02b52f7516'),
(809, 196, '_wp_trash_meta_status', 'publish'),
(810, 196, '_wp_trash_meta_time', '1541431428'),
(811, 196, '_wp_desired_post_slug', 'group_5be05e39825b1'),
(812, 197, '_wp_trash_meta_status', 'publish'),
(813, 197, '_wp_trash_meta_time', '1541431428'),
(814, 197, '_wp_desired_post_slug', 'field_5be05e5939713'),
(815, 199, '_edit_last', '1'),
(816, 199, '_edit_lock', '1541434041:1'),
(817, 199, '_wp_page_template', 'subcategoryofservices.php'),
(818, 201, '_edit_last', '1'),
(819, 201, '_edit_lock', '1541434059:1'),
(820, 201, '_wp_page_template', 'subcategoryofservices.php'),
(821, 203, '_menu_item_type', 'post_type'),
(822, 203, '_menu_item_menu_item_parent', '0'),
(823, 203, '_menu_item_object_id', '201'),
(824, 203, '_menu_item_object', 'page'),
(825, 203, '_menu_item_target', ''),
(826, 203, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(827, 203, '_menu_item_xfn', ''),
(828, 203, '_menu_item_url', ''),
(830, 204, '_menu_item_type', 'post_type'),
(831, 204, '_menu_item_menu_item_parent', '0'),
(832, 204, '_menu_item_object_id', '199'),
(833, 204, '_menu_item_object', 'page'),
(834, 204, '_menu_item_target', ''),
(835, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(836, 204, '_menu_item_xfn', ''),
(837, 204, '_menu_item_url', ''),
(839, 206, '_edit_last', '1'),
(840, 206, '_edit_lock', '1541434749:1'),
(841, 206, '_wp_page_template', 'specific.php'),
(842, 208, '_edit_last', '1'),
(843, 208, '_edit_lock', '1541436062:1'),
(844, 208, '_wp_page_template', 'specific.php'),
(845, 210, '_edit_last', '1'),
(846, 210, '_edit_lock', '1541437073:1'),
(847, 210, '_wp_page_template', 'specific.php'),
(850, 214, '_rl_images_count', '9'),
(851, 214, '_edit_last', '1'),
(852, 214, '_edit_lock', '1541627965:1'),
(853, 214, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:9:{i:0;i:215;i:1;i:216;i:2;i:217;i:3;i:218;i:4;i:219;i:5;i:220;i:6;i:221;i:7;i:222;i:8;i:223;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(854, 214, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:3;s:10:\"columns_md\";i:3;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:20;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}');
INSERT INTO `abk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(855, 214, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(856, 214, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(857, 214, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(858, 214, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(859, 214, '_rl_featured_image_type', 'image'),
(860, 214, '_rl_featured_image', ''),
(872, 215, '_wp_attached_file', '2018/11/20171026121627837214278.jpg'),
(873, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:35:\"2018/11/20171026121627837214278.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"20171026121627837214278-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"20171026121627837214278-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"10\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(874, 216, '_wp_attached_file', '2018/11/201807161725511816485329.jpg'),
(875, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2018/11/201807161725511816485329.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"201807161725511816485329-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"201807161725511816485329-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(876, 217, '_wp_attached_file', '2018/11/201708011526161255453391.jpg'),
(877, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2018/11/201708011526161255453391.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"201708011526161255453391-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"201708011526161255453391-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:24:\"Canon DIGITAL IXUS 95 IS\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.2\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:6:\"0.0008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(878, 218, '_wp_attached_file', '2018/11/14581171451840629216b2.jpg'),
(879, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:34:\"2018/11/14581171451840629216b2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"14581171451840629216b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"14581171451840629216b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(880, 219, '_wp_attached_file', '2018/11/201710091730071087820932.jpg'),
(881, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2018/11/201710091730071087820932.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"201710091730071087820932-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"201710091730071087820932-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(882, 220, '_wp_attached_file', '2018/11/201610181659162089463067.jpg'),
(883, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2018/11/201610181659162089463067.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"201610181659162089463067-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"201610181659162089463067-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.4\";s:6:\"credit\";s:6:\"Picasa\";s:6:\"camera\";s:15:\"FinePix S1000fd\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1402079221\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.9\";s:3:\"iso\";s:2:\"64\";s:13:\"shutter_speed\";s:17:\"0.011111111111111\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(884, 221, '_wp_attached_file', '2018/11/1465994617348218277b2.jpg'),
(885, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:33:\"2018/11/1465994617348218277b2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"1465994617348218277b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"1465994617348218277b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(886, 222, '_wp_attached_file', '2018/11/14583099381435148020b2.jpg'),
(887, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:34:\"2018/11/14583099381435148020b2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"14583099381435148020b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"14583099381435148020b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(891, 223, '_wp_attached_file', '2018/11/14583099381435148020b2-1.jpg'),
(892, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:36:\"2018/11/14583099381435148020b2-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"14583099381435148020b2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"14583099381435148020b2-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(894, 224, '_rl_images_count', '12'),
(895, 224, '_edit_last', '1'),
(896, 224, '_edit_lock', '1541627917:1'),
(897, 224, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:12:{i:0;i:183;i:1;i:182;i:2;i:181;i:3;i:180;i:4;i:179;i:5;i:178;i:6;i:177;i:7;i:176;i:8;i:175;i:9;i:174;i:10;i:173;i:11;i:172;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(898, 224, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:3;s:10:\"columns_md\";i:3;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:20;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(899, 224, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(900, 224, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(901, 224, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(902, 224, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(903, 224, '_rl_featured_image_type', 'image'),
(904, 224, '_rl_featured_image', ''),
(911, 225, '_rl_images_count', '6'),
(912, 225, '_edit_last', '1'),
(913, 225, '_edit_lock', '1541627880:1'),
(914, 226, '_wp_attached_file', '2018/11/volvo-s70-11.jpg'),
(915, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:24:\"2018/11/volvo-s70-11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"volvo-s70-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"volvo-s70-11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(916, 227, '_wp_attached_file', '2018/11/subaru-r2-08.jpg'),
(917, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:24:\"2018/11/subaru-r2-08.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"subaru-r2-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"subaru-r2-08-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(918, 228, '_wp_attached_file', '2018/11/bmw-5-series-e60-07.jpg'),
(919, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:31:\"2018/11/bmw-5-series-e60-07.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bmw-5-series-e60-07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bmw-5-series-e60-07-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(920, 229, '_wp_attached_file', '2018/11/saab-9-3-sport-sedan-08.jpg'),
(921, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:35:\"2018/11/saab-9-3-sport-sedan-08.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"saab-9-3-sport-sedan-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"saab-9-3-sport-sedan-08-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(922, 230, '_wp_attached_file', '2018/11/bmw-5-series-e60-05.jpg'),
(923, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:31:\"2018/11/bmw-5-series-e60-05.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bmw-5-series-e60-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bmw-5-series-e60-05-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(924, 231, '_wp_attached_file', '2018/11/chrysler-grand-voyager-12.jpg'),
(925, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:37:\"2018/11/chrysler-grand-voyager-12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"chrysler-grand-voyager-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"chrysler-grand-voyager-12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(926, 225, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:6:{i:0;i:230;i:1;i:228;i:2;i:226;i:3;i:229;i:4;i:227;i:5;i:231;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(927, 225, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:3;s:10:\"columns_md\";i:3;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:20;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(928, 225, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(929, 225, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(930, 225, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(931, 225, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(932, 225, '_rl_featured_image_type', 'image'),
(933, 225, '_rl_featured_image', ''),
(938, 233, '_rl_images_count', '4'),
(939, 233, '_edit_last', '1'),
(940, 233, '_edit_lock', '1541627841:1'),
(941, 233, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:4:{i:0;i:195;i:1;i:194;i:2;i:192;i:3;i:193;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(942, 233, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:4;s:10:\"columns_md\";i:2;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:30;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(943, 233, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(944, 233, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(945, 233, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(946, 233, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(947, 233, '_rl_featured_image_type', 'image'),
(948, 233, '_rl_featured_image', ''),
(950, 240, 'number-top-home', '+7 (916) 357-75-84'),
(951, 240, '_number-top-home', 'field_5be02b52f7516'),
(952, 240, 'help-title-1', 'техническая экспертиза оборудования'),
(953, 240, '_help-title-1', 'field_5be02c50f7ce5'),
(954, 240, 'help-desc-1-1', '- Соответствие реального качества оборудования, номинальному.'),
(955, 240, '_help-desc-1-1', 'field_5be02d447158f'),
(956, 240, 'help-desc-1-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(957, 240, '_help-desc-1-2', 'field_5be02d83c3b98'),
(958, 240, 'help-desc-1-3', '- Возможность эксплуатации по прямому назначению'),
(959, 240, '_help-desc-1-3', 'field_5be0313155450'),
(960, 240, 'help-title-2', 'техническая экспертиза оборудования'),
(961, 240, '_help-title-2', 'field_5be0314e5c767'),
(962, 240, 'help-desc-2-1', '- Соответствие реального качества оборудования, номинальному.'),
(963, 240, '_help-desc-2-1', 'field_5be0316a2901d'),
(964, 240, 'help-desc-2-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(965, 240, '_help-desc-2-2', 'field_5be0318406b94'),
(966, 240, 'help-desc-2-3', '- Возможность эксплуатации по прямому назначению'),
(967, 240, '_help-desc-2-3', 'field_5be031a24e779'),
(968, 240, 'help-title-3', 'техническая экспертиза оборудования'),
(969, 240, '_help-title-3', 'field_5be031bc09a82'),
(970, 240, 'help-desc-3-1', '- Соответствие реального качества оборудования, номинальному.'),
(971, 240, '_help-desc-3-1', 'field_5be031cd40f7c'),
(972, 240, 'help-desc-3-2', '- Наличие явных, скрытых, эксплуатационных или производственных дефектов.'),
(973, 240, '_help-desc-3-2', 'field_5be0321200cdc'),
(974, 240, 'help-desc-3-3', '- Возможность эксплуатации по прямому назначению'),
(975, 240, '_help-desc-3-3', 'field_5be03228984b9'),
(976, 240, 'base-1', '85'),
(977, 240, '_base-1', 'field_5be0327438637'),
(978, 240, 'phone-map', '+7 (916) 357-75-84'),
(979, 240, '_phone-map', 'field_5be03891250aa'),
(980, 240, 'E-mail', 'panklaska@yandex.ru'),
(981, 240, '_E-mail', 'field_5be038eee07c8'),
(982, 240, 'number-bottom-home', '+7 (916) 357-75-84'),
(983, 240, '_number-bottom-home', 'field_5be0390e52384'),
(984, 240, 'phone', '+7 (916) 357-75-84'),
(985, 240, '_phone', 'field_5be02b52f7516'),
(986, 247, '_rl_images_count', '4'),
(987, 247, '_edit_last', '1'),
(988, 247, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:4:{i:0;i:195;i:1;i:194;i:2;i:193;i:3;i:192;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(989, 247, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:2;s:10:\"columns_md\";i:2;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:20;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(990, 247, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#afafaf\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(991, 247, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:108;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(992, 247, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(993, 247, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(994, 247, '_rl_featured_image_type', 'image'),
(995, 247, '_rl_featured_image', ''),
(997, 247, '_edit_lock', '1541512159:1'),
(1002, 195, '_wp_attachment_image_alt', 'Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов'),
(1005, 249, '_form', '[text your-name id:your-name class:box-modal__input class:box-modal__input_1 placeholder \"Введите имя\"]\n\n[email* your-email id:your-email class:box-modal__input class:box-modal__input_2 placeholder \"введите е-mail\"]\n\n[tel* id:tel class:box-modal__input class:box-modal__input_3 placeholder \"Введите телефон\"]\n\n[submit \"Отправить заявку\"]'),
(1006, 249, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"АБК Экспертиза\";s:6:\"sender\";s:34:\"[your-name] <afromyak13@gmail.com>\";s:9:\"recipient\";s:20:\"afromyak13@gmail.com\";s:4:\"body\";s:86:\"От: [your-name] <[your-email]>\nТема: [your-name]\n\n[your-name]\n[your-email]\n[tel]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1007, 249, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"АБК Экспертиза\";s:6:\"sender\";s:50:\"АБК Экспертиза <afromyak13@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:34:\"Сообщение:\n[your-message]\";s:18:\"additional_headers\";s:30:\"Reply-To: afromyak13@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1008, 249, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:17:\"captcha_not_match\";s:35:\"Код введен неверно.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(1009, 249, '_additional_settings', ''),
(1010, 249, '_locale', 'ru_RU'),
(1011, 39, '_thumbnail_id', '230'),
(1012, 250, '_wp_attached_file', '2018/11/responsive-lightbox-thumbnail.png'),
(1013, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5120;s:6:\"height\";i:2880;s:4:\"file\";s:41:\"2018/11/responsive-lightbox-thumbnail.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"responsive-lightbox-thumbnail-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1019, 120, '_thumbnail_id', '250'),
(1021, 186, '_thumbnail_id', '250'),
(1022, 233, '_thumbnail_id', '250');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_posts`
--

CREATE TABLE `abk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_posts`
--

INSERT INTO `abk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-01 11:50:39', '2018-11-01 08:50:39', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-11-01 11:50:39', '2018-11-01 08:50:39', '', 0, 'http://localhost/abk/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-01 11:50:39', '2018-11-01 08:50:39', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/abk/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-11-01 23:55:03', '2018-11-01 20:55:03', '', 0, 'http://localhost/abk/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-01 11:50:39', '2018-11-01 08:50:39', '<h2>Кто мы</h2><p>Наш адрес сайта: http://localhost/abk.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-11-01 23:54:29', '2018-11-01 20:54:29', '', 0, 'http://localhost/abk/?page_id=3', 0, 'page', '', 0),
(23, 1, '2018-11-01 16:20:12', '2018-11-01 13:20:12', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaja', '', '', '2018-11-06 15:04:13', '2018-11-06 12:04:13', '', 0, 'http://localhost/abk/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-11-01 16:20:12', '2018-11-01 13:20:12', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-01 16:20:12', '2018-11-01 13:20:12', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-11-01 23:51:49', '2018-11-01 20:51:49', '', 'Услуги', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-11-02 17:00:48', '2018-11-02 14:00:48', '', 0, 'http://localhost/abk/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-11-01 23:51:49', '2018-11-01 20:51:49', '', 'Услуги', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-11-01 23:51:49', '2018-11-01 20:51:49', '', 25, 'http://localhost/abk/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-11-01 23:52:50', '2018-11-01 20:52:50', '', 'Приборная база', '', 'publish', 'closed', 'closed', '', 'base', '', '', '2018-11-02 17:00:28', '2018-11-02 14:00:28', '', 0, 'http://localhost/abk/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-11-01 23:52:50', '2018-11-01 20:52:50', '', 'Приборная база', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-11-01 23:52:50', '2018-11-01 20:52:50', '', 27, 'http://localhost/abk/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-11-01 23:53:38', '2018-11-01 20:53:38', '', 'Наш опыт', '', 'publish', 'closed', 'closed', '', 'experience', '', '', '2018-11-02 17:00:21', '2018-11-02 14:00:21', '', 0, 'http://localhost/abk/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-11-01 23:53:38', '2018-11-01 20:53:38', '', 'Наш опыт', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-11-01 23:53:38', '2018-11-01 20:53:38', '', 29, 'http://localhost/abk/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-11-01 23:54:29', '2018-11-01 20:54:29', '<h2>Кто мы</h2><p>Наш адрес сайта: http://localhost/abk.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-11-01 23:54:29', '2018-11-01 20:54:29', '', 3, 'http://localhost/abk/3-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-11-01 23:55:03', '2018-11-01 20:55:03', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/abk/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-01 23:55:03', '2018-11-01 20:55:03', '', 2, 'http://localhost/abk/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-11-01 23:55:42', '2018-11-01 20:55:42', '', 'Лицензии', '', 'publish', 'closed', 'closed', '', 'licenses', '', '', '2018-11-02 17:00:15', '2018-11-02 14:00:15', '', 0, 'http://localhost/abk/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-11-01 23:55:42', '2018-11-01 20:55:42', '', 'Лицензии', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-11-01 23:55:42', '2018-11-01 20:55:42', '', 33, 'http://localhost/abk/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-11-01 23:56:21', '2018-11-01 20:56:21', '', 'С нами работают', '', 'publish', 'closed', 'closed', '', 'withus', '', '', '2018-11-02 17:00:42', '2018-11-02 14:00:42', '', 0, 'http://localhost/abk/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-11-01 23:56:21', '2018-11-01 20:56:21', '', 'С нами работают', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-11-01 23:56:21', '2018-11-01 20:56:21', '', 35, 'http://localhost/abk/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-11-01 23:56:56', '2018-11-01 20:56:56', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2018-11-02 16:59:17', '2018-11-02 13:59:17', '', 0, 'http://localhost/abk/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-11-01 23:56:56', '2018-11-01 20:56:56', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-01 23:56:56', '2018-11-01 20:56:56', '', 37, 'http://localhost/abk/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-11-02 10:57:42', '2018-11-02 07:57:42', '[rl_gallery id=\"233\"]', 'Подкатегория базы', '', 'publish', 'closed', 'closed', '', 'basesubcategory', '', '', '2018-11-06 23:50:46', '2018-11-06 20:50:46', '', 27, 'http://localhost/abk/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-11-02 10:57:42', '2018-11-02 07:57:42', '', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-02 10:57:42', '2018-11-02 07:57:42', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-11-02 10:58:18', '2018-11-02 07:58:18', '', 'Подкатегория услуг', '', 'publish', 'closed', 'closed', '', 'subcategoryofservices', '', '', '2018-11-02 17:01:08', '2018-11-02 14:01:08', '', 25, 'http://localhost/abk/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-11-02 10:58:18', '2018-11-02 07:58:18', '', 'Подкатегория услуг', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-11-02 10:58:18', '2018-11-02 07:58:18', '', 41, 'http://localhost/abk/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-11-02 10:58:46', '2018-11-02 07:58:46', '', 'Конкретная услуга', '', 'publish', 'closed', 'closed', '', 'specific', '', '', '2018-11-06 01:00:28', '2018-11-05 22:00:28', '', 41, 'http://localhost/abk/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-11-02 10:58:46', '2018-11-02 07:58:46', '', 'Конкретная услуга', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-11-02 10:58:46', '2018-11-02 07:58:46', '', 43, 'http://localhost/abk/43-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-11-02 19:02:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2018-11-02 19:02:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2018-11-02 19:02:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-11-02 19:02:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-11-02 19:02:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2018-11-02 19:02:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2018-11-02 19:02:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:28', '0000-00-00 00:00:00', '', 27, 'http://localhost/abk/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-11-02 19:02:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-11-02 19:02:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2018-11-02 19:02:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:29', '0000-00-00 00:00:00', '', 25, 'http://localhost/abk/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2018-11-02 19:02:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:02:30', '0000-00-00 00:00:00', '', 41, 'http://localhost/abk/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=59', 7, 'nav_menu_item', '', 0),
(60, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=60', 6, 'nav_menu_item', '', 0),
(61, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=61', 5, 'nav_menu_item', '', 0),
(62, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=62', 4, 'nav_menu_item', '', 0),
(63, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=63', 3, 'nav_menu_item', '', 0),
(64, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2018-11-02 19:03:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-02 19:03:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2018-11-02 19:05:18', '2018-11-02 16:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-11-02 19:05:18', '2018-11-02 16:05:18', '', 0, 'http://localhost/abk/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-11-04 01:50:22', '2018-11-03 22:50:22', '<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n    <div class=\"desc__cont  m-right\">\r\n       <h5 class=\"desc__title t-center\">Необходимое оборудование для проведения экспертизы</h5>\r\n         [rl_gallery id=\"247\"]\r\n    </div>\r\n    <div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n', 'Конкретная 3', '', 'publish', 'closed', 'closed', '', 'konkretnaja-3', '', '', '2018-11-08 16:57:59', '2018-11-08 13:57:59', '', 41, 'http://localhost/abk/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-11-04 01:50:22', '2018-11-03 22:50:22', 'арерпдфлурпдулкрукдлонркуждор\r\nдрьжкдурлжкудрок\r\nкдрькджрлкджерл\r\nдроьджекрокждерождеко<ul>\r\nаорк	<li>окео</li>\r\nкео	<li>ог</li>\r\nкего	<li>каего</li>\r\n</ul>\r\n\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-04 01:50:22', '2018-11-03 22:50:22', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-11-04 01:53:58', '2018-11-03 22:53:58', '<img src=\"http://localhost/abk/wp-content/uploads/2018/11/Все-услуги-137x300.jpg\" alt=\"\" width=\"137\" height=\"300\" class=\"alignnone size-medium wp-image-69\" />арерпдфлурпдулкрукдлонркуждор\r\nдрьжкдурлжкудрок\r\nкдрькджрлкджерл\r\nдроьджекрокждерождеко<ul>\r\nаорк	<li>окео</li>\r\nкео	<li>ог</li>\r\nкего	<li>каего</li>\r\n</ul>\r\n\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-04 01:53:58', '2018-11-03 22:53:58', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-11-04 15:40:49', '2018-11-04 12:40:49', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-11-04 15:40:49', '2018-11-04 12:40:49', '', 0, 'http://localhost/abk/shop/', 0, 'page', '', 0),
(74, 1, '2018-11-04 15:40:50', '2018-11-04 12:40:50', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-11-04 15:40:50', '2018-11-04 12:40:50', '', 0, 'http://localhost/abk/cart/', 0, 'page', '', 0),
(75, 1, '2018-11-04 15:40:50', '2018-11-04 12:40:50', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-11-04 15:40:50', '2018-11-04 12:40:50', '', 0, 'http://localhost/abk/checkout/', 0, 'page', '', 0),
(76, 1, '2018-11-04 15:40:50', '2018-11-04 12:40:50', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-11-04 15:40:50', '2018-11-04 12:40:50', '', 0, 'http://localhost/abk/my-account/', 0, 'page', '', 0),
(77, 1, '2018-11-04 19:38:01', '2018-11-04 16:38:01', '', 'Подкатегория 2', '', 'publish', 'closed', 'closed', '', 'podkategorija-2', '', '', '2018-11-05 19:09:06', '2018-11-05 16:09:06', '', 25, 'http://localhost/abk/?page_id=77', 1, 'page', '', 0),
(78, 1, '2018-11-04 19:38:01', '2018-11-04 16:38:01', '<a href=\"http://localhost/abk/services/subcategoryofservices/konkretnaja-3/\"></a>', 'Подкатегория 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-11-04 19:38:01', '2018-11-04 16:38:01', '', 77, 'http://localhost/abk/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-11-04 19:54:54', '2018-11-04 16:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2018-11-05 19:08:13', '2018-11-05 16:08:13', '', 25, 'http://localhost/abk/?p=79', 2, 'nav_menu_item', '', 0),
(80, 1, '2018-11-04 19:54:54', '2018-11-04 16:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-11-05 19:08:13', '2018-11-05 16:08:13', '', 25, 'http://localhost/abk/?p=80', 1, 'nav_menu_item', '', 0),
(82, 1, '2018-11-04 22:09:25', '2018-11-04 19:09:25', '<section class=\"desc\">\r\n    <div class=\"container desc__container\">\r\n        <div class=\"desc__first d-f\">\r\n            <div class=\"desc__number m-right\">\r\n                <img src=\"<?php bloginfo(\'template_directory\') ?>/img/1.png\" alt=\"\" class=\"desc__n\">\r\n            </div>\r\n            <div class=\"desc__cont\">\r\n                <h5 class=\"desc__title\">\r\n                    Цели экспертизы\r\n                </h5>\r\n                <div class=\"desc__paragraphs\">\r\n                    <p class=\"desc__text\">\r\n                        - Возобновления строительства незавершенного объекта после длительного перерыва;   \r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Определение технического состояния здания (сооружения) по плану эксплуатации;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Наличие дефектов, деформаций и иных повреждений в конструкциях здания\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Определение аварийности здания (сооружения).\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"desc__second d-f\">\r\n            <div class=\"desc__cont m-right\">\r\n                <h5 class=\"desc__title\">\r\n                    Наш опыт и специалисты по данной экспертизе\r\n                </h5>\r\n                <div class=\"desc__paragraphs\">\r\n                    <p class=\"desc__text\">\r\n                        - 52 эксперта со строительными допусками     \r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Средний стаж экспертов 8 лет.\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Эксперты с допуском СРО «Строительные решения и изыскания»\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001 \r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"desc__number\">\r\n                <img src=\"<?php bloginfo(\'template_directory\') ?>/img/2.png\" alt=\"\" class=\"desc__n\">\r\n            </div>\r\n        </div>\r\n        <div class=\"desc__third d-f\">\r\n            <div class=\"desc__number m-right\">\r\n                <img src=\"<?php bloginfo(\'template_directory\') ?>/img/3.png\" alt=\"\" class=\"desc__n\">\r\n            </div>\r\n            <div class=\"desc__cont\">\r\n                <h5 class=\"desc__title\">\r\n                    Порядок проведения экспертизы\r\n                </h5>\r\n                <div class=\"desc__paragraphs\">\r\n                    <p class=\"desc__text\">\r\n                        - Консультация клиента и помощь в выборе задачи; \r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Заключение договора на экспертизу\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Описание объекта обследования и его основных характеристик;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Анализ и описание повреждений и дефектов, выявленных при обследовании;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Результаты лабораторных испытаний;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Поверочные расчеты;\r\n                    </p>\r\n                    <p class=\"desc__text\">\r\n                        - Выводы и рекомендации, составление отчетного материала.\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"desc__fourth d-f\">\r\n            <div class=\"desc__cont\">\r\n                <h5 class=\"desc__title\">\r\n                    Необходимое оборудование для проведения экспертизы\r\n                </h5>\r\n                <ul class=\"desc__list\">\r\n                    <li class=\"desc__item\">\r\n                        <p class=\"desc__subtitle\">\r\n                            Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов \r\n                        </p>\r\n                        <div class=\"desc__icon\">\r\n                            <img src=\"<?php bloginfo(\'template_directory\') ?>/img/device1.png\" alt=\"foto\" class=\"desc__img\">\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"desc__item\">\r\n                        <p class=\"desc__subtitle\">\r\n                            Магнитный толщиномер покрытый МТ-201 (с поверкой)    \r\n                        </p>\r\n                        <div class=\"desc__icon\">\r\n                            <img src=\"<?php bloginfo(\'template_directory\') ?>/img/device2.png\" alt=\"foto\" class=\"desc__img\">\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"desc__item\">\r\n                        <p class=\"desc__subtitle\">\r\n                            Испытательный пресс ИП-1А-500-АБ    \r\n                        </p>\r\n                        <div class=\"desc__icon\">\r\n                            <img src=\"<?php bloginfo(\'template_directory\') ?>/img/device3.png\" alt=\"foto\" class=\"desc__img\">\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"desc__item\">\r\n                        <p class=\"desc__subtitle\">\r\n                            Ударная машина TM50   \r\n                        </p>\r\n                        <div class=\"desc__icon\">\r\n                            <img src=\"<?php bloginfo(\'template_directory\') ?>/img/device4.png\" alt=\"foto\" class=\"desc__img\">\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"desc__number\">\r\n                <img src=\"<?php bloginfo(\'template_directory\') ?>/img/4.png\" alt=\"\" class=\"desc__n\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section> \r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-04 22:09:25', '2018-11-04 19:09:25', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-11-05 01:47:30', '2018-11-04 22:47:30', 'оапопроьпрьпрбьрпьби', 'Конкретная услуга', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-11-05 01:47:30', '2018-11-04 22:47:30', '', 43, 'http://localhost/abk/43-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-11-05 12:55:17', '2018-11-05 09:55:17', '<img src=\"http://\" alt=\"\" />оапопроьпрьпрбьрпьби', 'Конкретная услуга', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2018-11-05 12:55:17', '2018-11-05 09:55:17', '', 43, 'http://localhost/abk/43-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2018-11-05 12:55:40', '2018-11-05 09:55:40', '[gallery ids=\"85,69\"]оапопроьпрьпрбьрпьби', 'Конкретная услуга', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-11-05 12:55:40', '2018-11-05 09:55:40', '', 43, 'http://localhost/abk/43-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-11-05 14:40:13', '2018-11-05 11:40:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главная страница', 'glavnaja-stranica', 'publish', 'closed', 'closed', '', 'group_5be02b45b886b', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 0, 'http://localhost/abk/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(91, 1, '2018-11-05 14:44:52', '2018-11-05 11:44:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, заголовок 1', 'help-title-1', 'publish', 'closed', 'closed', '', 'field_5be02c50f7ce5', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=91', 0, 'acf-field', '', 0),
(92, 1, '2018-11-05 14:46:09', '2018-11-05 11:46:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 1.1', 'help-desc-1-1', 'publish', 'closed', 'closed', '', 'field_5be02d447158f', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=92', 1, 'acf-field', '', 0),
(93, 1, '2018-11-05 14:46:51', '2018-11-05 11:46:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь,  описание 1.2', 'help-desc-1-2', 'publish', 'closed', 'closed', '', 'field_5be02d83c3b98', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=93', 2, 'acf-field', '', 0),
(94, 1, '2018-11-05 14:49:03', '2018-11-05 11:49:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 14:49:03', '2018-11-05 11:49:03', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-11-05 14:56:10', '2018-11-05 11:56:10', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 14:56:10', '2018-11-05 11:56:10', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-11-05 14:57:41', '2018-11-05 11:57:41', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 14:57:41', '2018-11-05 11:57:41', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-11-05 14:58:03', '2018-11-05 11:58:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 14:58:03', '2018-11-05 11:58:03', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-11-05 15:02:16', '2018-11-05 12:02:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 1.3', 'help-desc-1-3', 'publish', 'closed', 'closed', '', 'field_5be0313155450', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=98', 3, 'acf-field', '', 0),
(99, 1, '2018-11-05 15:02:46', '2018-11-05 12:02:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, заголовок 2', 'help-title-2', 'publish', 'closed', 'closed', '', 'field_5be0314e5c767', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=99', 4, 'acf-field', '', 0),
(100, 1, '2018-11-05 15:03:13', '2018-11-05 12:03:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 2.1', 'help-desc-2-1', 'publish', 'closed', 'closed', '', 'field_5be0316a2901d', '', '', '2018-11-05 18:29:16', '2018-11-05 15:29:16', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=100', 5, 'acf-field', '', 0),
(101, 1, '2018-11-05 15:03:37', '2018-11-05 12:03:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 2.2', 'help-desc-2-2', 'publish', 'closed', 'closed', '', 'field_5be0318406b94', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=101', 6, 'acf-field', '', 0),
(102, 1, '2018-11-05 15:04:04', '2018-11-05 12:04:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 2.3', 'help-desc-2-3', 'publish', 'closed', 'closed', '', 'field_5be031a24e779', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=102', 7, 'acf-field', '', 0),
(103, 1, '2018-11-05 15:04:19', '2018-11-05 12:04:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, заголовок 3', 'help-title-3', 'publish', 'closed', 'closed', '', 'field_5be031bc09a82', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=103', 8, 'acf-field', '', 0),
(104, 1, '2018-11-05 15:04:53', '2018-11-05 12:04:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 3.1', 'help-desc-3-1', 'publish', 'closed', 'closed', '', 'field_5be031cd40f7c', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=104', 9, 'acf-field', '', 0),
(105, 1, '2018-11-05 15:05:54', '2018-11-05 12:05:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 3.2', 'help-desc-3-2', 'publish', 'closed', 'closed', '', 'field_5be0321200cdc', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=105', 10, 'acf-field', '', 0),
(106, 1, '2018-11-05 15:06:14', '2018-11-05 12:06:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Чем мы можем помочь, описание 3.3', 'help-desc-3-3', 'publish', 'closed', 'closed', '', 'field_5be03228984b9', '', '', '2018-11-05 18:29:17', '2018-11-05 15:29:17', '', 88, 'http://localhost/abk/?post_type=acf-field&#038;p=106', 11, 'acf-field', '', 0),
(107, 1, '2018-11-05 15:06:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-05 15:06:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/abk/?post_type=acf-field-group&p=107', 0, 'acf-field-group', '', 0),
(109, 1, '2018-11-05 15:12:45', '2018-11-05 12:12:45', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:12:45', '2018-11-05 12:12:45', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-11-05 15:37:11', '2018-11-05 12:37:11', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:37:11', '2018-11-05 12:37:11', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-11-05 15:41:13', '2018-11-05 12:41:13', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:41:13', '2018-11-05 12:41:13', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-11-05 15:42:50', '2018-11-05 12:42:50', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:42:50', '2018-11-05 12:42:50', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-11-05 15:50:04', '2018-11-05 12:50:04', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:50:04', '2018-11-05 12:50:04', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-11-05 15:52:46', '2018-11-05 12:52:46', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:52:46', '2018-11-05 12:52:46', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-11-05 15:53:11', '2018-11-05 12:53:11', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 15:53:11', '2018-11-05 12:53:11', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-11-05 16:42:51', '2018-11-05 13:42:51', '', 'Лицензии на главной странице', '', 'publish', 'closed', 'closed', '', 'licenzii-na-glavnoj-stranice', '', '', '2018-11-07 18:11:05', '2018-11-07 15:11:05', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=120', 0, 'rl_gallery', '', 0),
(172, 1, '2018-11-05 16:30:27', '2018-11-05 13:30:27', '', 'л1', '', 'inherit', 'open', 'closed', '', 'l1', '', '', '2018-11-05 16:30:27', '2018-11-05 13:30:27', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2018-11-05 16:30:30', '2018-11-05 13:30:30', '', 'л10', '', 'inherit', 'open', 'closed', '', 'l10', '', '', '2018-11-05 16:30:30', '2018-11-05 13:30:30', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л10.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2018-11-05 16:30:31', '2018-11-05 13:30:31', '', 'л11', '', 'inherit', 'open', 'closed', '', 'l11', '', '', '2018-11-05 16:30:31', '2018-11-05 13:30:31', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л11.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2018-11-05 16:30:32', '2018-11-05 13:30:32', '', 'л12', '', 'inherit', 'open', 'closed', '', 'l12', '', '', '2018-11-05 16:30:32', '2018-11-05 13:30:32', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л12.jpg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2018-11-05 16:30:34', '2018-11-05 13:30:34', '', 'л2', '', 'inherit', 'open', 'closed', '', 'l2', '', '', '2018-11-05 16:30:34', '2018-11-05 13:30:34', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л2.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2018-11-05 16:30:36', '2018-11-05 13:30:36', '', 'л3', '', 'inherit', 'open', 'closed', '', 'l3', '', '', '2018-11-05 16:30:36', '2018-11-05 13:30:36', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л3.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2018-11-05 16:30:37', '2018-11-05 13:30:37', '', 'л4', '', 'inherit', 'open', 'closed', '', 'l4', '', '', '2018-11-05 16:30:37', '2018-11-05 13:30:37', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л4.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2018-11-05 16:30:39', '2018-11-05 13:30:39', '', 'л5', '', 'inherit', 'open', 'closed', '', 'l5', '', '', '2018-11-05 16:30:39', '2018-11-05 13:30:39', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-11-05 16:30:41', '2018-11-05 13:30:41', '', 'л6', '', 'inherit', 'open', 'closed', '', 'l6', '', '', '2018-11-05 16:30:41', '2018-11-05 13:30:41', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л6.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `abk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(181, 1, '2018-11-05 16:30:43', '2018-11-05 13:30:43', '', 'л7', '', 'inherit', 'open', 'closed', '', 'l7', '', '', '2018-11-05 16:30:43', '2018-11-05 13:30:43', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л7.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-11-05 16:30:44', '2018-11-05 13:30:44', '', 'л8', '', 'inherit', 'open', 'closed', '', 'l8', '', '', '2018-11-05 16:30:44', '2018-11-05 13:30:44', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л8.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-11-05 16:30:45', '2018-11-05 13:30:45', '', 'л9', '', 'inherit', 'open', 'closed', '', 'l9', '', '', '2018-11-05 16:30:45', '2018-11-05 13:30:45', '', 120, 'http://localhost/abk/wp-content/uploads/2018/11/л9.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-11-05 18:03:28', '2018-11-05 15:03:28', '', 'Приборная база на главной странице', '', 'publish', 'closed', 'closed', '', 'pribornaja-baza-na-glavnoj-stranice', '', '', '2018-11-07 18:13:13', '2018-11-07 15:13:13', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=186', 0, 'rl_gallery', '', 0),
(187, 1, '2018-11-05 18:02:07', '2018-11-05 15:02:07', '', 'п4', '', 'inherit', 'open', 'closed', '', 'p4', '', '', '2018-11-05 18:02:07', '2018-11-05 15:02:07', '', 186, 'http://localhost/abk/wp-content/uploads/2018/11/п4.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2018-11-05 18:02:08', '2018-11-05 15:02:08', '', 'п3', '', 'inherit', 'open', 'closed', '', 'p3', '', '', '2018-11-05 18:02:08', '2018-11-05 15:02:08', '', 186, 'http://localhost/abk/wp-content/uploads/2018/11/п3.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2018-11-05 18:09:08', '2018-11-05 15:09:08', 'Ударная машина TM50', 'Ударная машина TM50', '', 'inherit', 'open', 'closed', '', 'device4', '', '', '2018-11-06 16:50:51', '2018-11-06 13:50:51', '', 0, 'http://localhost/abk/wp-content/uploads/2018/11/device4.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2018-11-05 18:09:08', '2018-11-05 15:09:08', 'Испытательный пресс ИП-1А-500-АБ', 'Испытательный пресс ИП-1А-500-АБ', '', 'inherit', 'open', 'closed', '', 'device3', '', '', '2018-11-06 16:50:37', '2018-11-06 13:50:37', '', 0, 'http://localhost/abk/wp-content/uploads/2018/11/device3.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2018-11-05 18:09:09', '2018-11-05 15:09:09', 'Магнитный толщиномер покрытый МТ-201 (с поверкой)', 'Магнитный толщиномер покрытый МТ-201 (с поверкой)', '', 'inherit', 'open', 'closed', '', 'device2', '', '', '2018-11-06 16:49:40', '2018-11-06 13:49:40', '', 0, 'http://localhost/abk/wp-content/uploads/2018/11/device2.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2018-11-05 18:09:10', '2018-11-05 15:09:10', 'Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов', 'Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов', 'Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов', 'inherit', 'open', 'closed', '', 'device1', '', '', '2018-11-06 16:19:11', '2018-11-06 13:19:11', '', 0, 'http://localhost/abk/wp-content/uploads/2018/11/device1.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2018-11-05 18:16:59', '2018-11-05 15:16:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Номер телефона в шапке и футере на внутренних страницах', 'nomer-telefona-v-shapke-i-futere-na-vnutrennih-stranicah', 'trash', 'closed', 'closed', '', 'group_5be05e39825b1__trashed', '', '', '2018-11-05 18:23:48', '2018-11-05 15:23:48', '', 0, 'http://localhost/abk/?post_type=acf-field-group&#038;p=196', 0, 'acf-field-group', '', 0),
(197, 1, '2018-11-05 18:16:59', '2018-11-05 15:16:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Номер телефона в шапке и футере', 'phone', 'trash', 'closed', 'closed', '', 'field_5be05e5939713__trashed', '', '', '2018-11-05 18:23:48', '2018-11-05 15:23:48', '', 196, 'http://localhost/abk/?post_type=acf-field&#038;p=197', 0, 'acf-field', '', 0),
(198, 1, '2018-11-05 18:21:20', '2018-11-05 15:21:20', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-05 18:21:20', '2018-11-05 15:21:20', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2018-11-05 19:02:45', '2018-11-05 16:02:45', '', 'Техническая экспертиза оборудования', '', 'publish', 'closed', 'closed', '', 'tehnicheskaja-jekspertiza-oborudovanija', '', '', '2018-11-05 19:09:42', '2018-11-05 16:09:42', '', 25, 'http://localhost/abk/?page_id=199', 2, 'page', '', 0),
(200, 1, '2018-11-05 19:02:45', '2018-11-05 16:02:45', '', 'Техническая экспертиза оборудования', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2018-11-05 19:02:45', '2018-11-05 16:02:45', '', 199, 'http://localhost/abk/199-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2018-11-05 19:03:36', '2018-11-05 16:03:36', '', 'Негосударственная экспертиза результатов инженерных изысканий', '', 'publish', 'closed', 'closed', '', 'negosudarstvennaja-jekspertiza-rezultatov-inzhenernyh-izyskanij', '', '', '2018-11-05 19:09:58', '2018-11-05 16:09:58', '', 25, 'http://localhost/abk/?page_id=201', 3, 'page', '', 0),
(202, 1, '2018-11-05 19:03:36', '2018-11-05 16:03:36', '', 'Негосударственная экспертиза результатов инженерных изысканий', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2018-11-05 19:03:36', '2018-11-05 16:03:36', '', 201, 'http://localhost/abk/201-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-11-05 19:04:39', '2018-11-05 16:04:39', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2018-11-05 19:08:13', '2018-11-05 16:08:13', '', 25, 'http://localhost/abk/?p=203', 4, 'nav_menu_item', '', 0),
(204, 1, '2018-11-05 19:04:39', '2018-11-05 16:04:39', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2018-11-05 19:08:13', '2018-11-05 16:08:13', '', 25, 'http://localhost/abk/?p=204', 3, 'nav_menu_item', '', 0),
(205, 1, '2018-11-05 19:09:06', '2018-11-05 16:09:06', '', 'Подкатегория 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-11-05 19:09:06', '2018-11-05 16:09:06', '', 77, 'http://localhost/abk/77-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-11-05 19:21:25', '2018-11-05 16:21:25', '', 'Экспертиза сметной документации', '', 'publish', 'closed', 'closed', '', 'jekspertiza-smetnoj-dokumentacii', '', '', '2018-11-05 19:21:25', '2018-11-05 16:21:25', '', 41, 'http://localhost/abk/?page_id=206', 2, 'page', '', 0),
(207, 1, '2018-11-05 19:21:25', '2018-11-05 16:21:25', '', 'Экспертиза сметной документации', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-11-05 19:21:25', '2018-11-05 16:21:25', '', 206, 'http://localhost/abk/206-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-11-05 19:21:58', '2018-11-05 16:21:58', '', 'Экспертиза сметной документации 2', '', 'publish', 'closed', 'closed', '', 'jekspertiza-smetnoj-dokumentacii-2', '', '', '2018-11-05 19:21:58', '2018-11-05 16:21:58', '', 41, 'http://localhost/abk/?page_id=208', 3, 'page', '', 0),
(209, 1, '2018-11-05 19:21:58', '2018-11-05 16:21:58', '', 'Экспертиза сметной документации 2', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2018-11-05 19:21:58', '2018-11-05 16:21:58', '', 208, 'http://localhost/abk/208-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2018-11-05 19:44:18', '2018-11-05 16:44:18', '', 'Дочерняя страница \"подкатегории услуг\"', '', 'publish', 'closed', 'closed', '', 'eshhe-odna-dochernjaja-stranica-podkategorii-uslug', '', '', '2018-11-05 19:48:20', '2018-11-05 16:48:20', '', 41, 'http://localhost/abk/?page_id=210', 4, 'page', '', 0),
(211, 1, '2018-11-05 19:44:18', '2018-11-05 16:44:18', '', 'Еще одна дочерняя страница \"подкатегории услуг\"', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-11-05 19:44:18', '2018-11-05 16:44:18', '', 210, 'http://localhost/abk/210-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2018-11-05 19:48:20', '2018-11-05 16:48:20', '', 'Дочерняя страница \"подкатегории услуг\"', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-11-05 19:48:20', '2018-11-05 16:48:20', '', 210, 'http://localhost/abk/210-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-11-05 20:03:27', '2018-11-05 17:03:27', '', 'С нами работают', '', 'publish', 'closed', 'closed', '', 's-nami-rabotajut', '', '', '2018-11-05 20:44:59', '2018-11-05 17:44:59', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=214', 0, 'rl_gallery', '', 0),
(215, 1, '2018-11-05 20:28:03', '2018-11-05 17:28:03', '', '20171026121627837214278', '', 'inherit', 'open', 'closed', '', '20171026121627837214278', '', '', '2018-11-05 20:28:03', '2018-11-05 17:28:03', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/20171026121627837214278.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2018-11-05 20:28:04', '2018-11-05 17:28:04', '', '201807161725511816485329', '', 'inherit', 'open', 'closed', '', '201807161725511816485329', '', '', '2018-11-05 20:28:04', '2018-11-05 17:28:04', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/201807161725511816485329.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2018-11-05 20:28:05', '2018-11-05 17:28:05', '', '201708011526161255453391', '', 'inherit', 'open', 'closed', '', '201708011526161255453391', '', '', '2018-11-05 20:28:05', '2018-11-05 17:28:05', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/201708011526161255453391.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-11-05 20:28:06', '2018-11-05 17:28:06', '', '14581171451840629216b2', '', 'inherit', 'open', 'closed', '', '14581171451840629216b2', '', '', '2018-11-05 20:28:06', '2018-11-05 17:28:06', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/14581171451840629216b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2018-11-05 20:28:07', '2018-11-05 17:28:07', '', '201710091730071087820932', '', 'inherit', 'open', 'closed', '', '201710091730071087820932', '', '', '2018-11-05 20:28:07', '2018-11-05 17:28:07', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/201710091730071087820932.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2018-11-05 20:28:08', '2018-11-05 17:28:08', '', '201610181659162089463067', '', 'inherit', 'open', 'closed', '', '201610181659162089463067', '', '', '2018-11-05 20:28:08', '2018-11-05 17:28:08', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/201610181659162089463067.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2018-11-05 20:28:09', '2018-11-05 17:28:09', '', '1465994617348218277b2', '', 'inherit', 'open', 'closed', '', '1465994617348218277b2', '', '', '2018-11-05 20:28:09', '2018-11-05 17:28:09', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/1465994617348218277b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-11-05 20:28:10', '2018-11-05 17:28:10', '', '14583099381435148020b2', '', 'inherit', 'open', 'closed', '', '14583099381435148020b2', '', '', '2018-11-05 20:28:10', '2018-11-05 17:28:10', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/14583099381435148020b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2018-11-05 20:32:52', '2018-11-05 17:32:52', '', '14583099381435148020b2', '', 'inherit', 'open', 'closed', '', '14583099381435148020b2-2', '', '', '2018-11-05 20:32:52', '2018-11-05 17:32:52', '', 214, 'http://localhost/abk/wp-content/uploads/2018/11/14583099381435148020b2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2018-11-05 20:40:18', '2018-11-05 17:40:18', '', 'Лицензии', '', 'publish', 'closed', 'closed', '', 'licenzii', '', '', '2018-11-05 20:41:23', '2018-11-05 17:41:23', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=224', 0, 'rl_gallery', '', 0),
(225, 1, '2018-11-06 00:44:10', '2018-11-05 21:44:10', '', 'Наш опыт', '', 'publish', 'closed', 'closed', '', 'nash-opyt', '', '', '2018-11-06 00:45:56', '2018-11-05 21:45:56', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=225', 0, 'rl_gallery', '', 0),
(226, 1, '2018-11-06 00:43:54', '2018-11-05 21:43:54', '', 'volvo-s70-11', '', 'inherit', 'open', 'closed', '', 'volvo-s70-11', '', '', '2018-11-06 00:43:54', '2018-11-05 21:43:54', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/volvo-s70-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2018-11-06 00:43:55', '2018-11-05 21:43:55', '', 'subaru-r2-08', '', 'inherit', 'open', 'closed', '', 'subaru-r2-08', '', '', '2018-11-06 00:43:55', '2018-11-05 21:43:55', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/subaru-r2-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2018-11-06 00:43:56', '2018-11-05 21:43:56', '', 'bmw-5-series-e60-07', '', 'inherit', 'open', 'closed', '', 'bmw-5-series-e60-07', '', '', '2018-11-06 00:43:56', '2018-11-05 21:43:56', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/bmw-5-series-e60-07.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2018-11-06 00:43:57', '2018-11-05 21:43:57', '', 'saab-9-3-sport-sedan-08', '', 'inherit', 'open', 'closed', '', 'saab-9-3-sport-sedan-08', '', '', '2018-11-06 00:43:57', '2018-11-05 21:43:57', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/saab-9-3-sport-sedan-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2018-11-06 00:43:58', '2018-11-05 21:43:58', '', 'bmw-5-series-e60-05', '', 'inherit', 'open', 'closed', '', 'bmw-5-series-e60-05', '', '', '2018-11-06 00:43:58', '2018-11-05 21:43:58', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/bmw-5-series-e60-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2018-11-06 00:43:59', '2018-11-05 21:43:59', '', 'chrysler-grand-voyager-12', '', 'inherit', 'open', 'closed', '', 'chrysler-grand-voyager-12', '', '', '2018-11-06 00:43:59', '2018-11-05 21:43:59', '', 225, 'http://localhost/abk/wp-content/uploads/2018/11/chrysler-grand-voyager-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2018-11-06 01:00:28', '2018-11-05 22:00:28', '', 'Конкретная услуга', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-11-06 01:00:28', '2018-11-05 22:00:28', '', 43, 'http://localhost/abk/43-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-11-06 01:03:23', '2018-11-05 22:03:23', '', 'Галерея для страницы \"подкатегория базы\"', '', 'publish', 'closed', 'closed', '', 'galereja-dlja-stranicy-podkategorija-bazy', '', '', '2018-11-08 00:59:10', '2018-11-07 21:59:10', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=233', 0, 'rl_gallery', '', 0),
(234, 1, '2018-11-06 01:03:50', '2018-11-05 22:03:50', '[rl_gallery id=\"233\"]', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:03:50', '2018-11-05 22:03:50', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-11-06 01:04:27', '2018-11-05 22:04:27', '[rl_gallery id=\"233\"][rl_gallery id=\"233\"]', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:04:27', '2018-11-05 22:04:27', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2018-11-06 01:07:45', '2018-11-05 22:07:45', '<?php echo do_shortcode(\'[rl_gallery id=\"233\"]\'); ?>', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:07:45', '2018-11-05 22:07:45', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-11-06 01:11:13', '2018-11-05 22:11:13', '<?php\r\n/*\r\nTemplate Name: Подкатегория базы\r\nTemplate Post Type: post, page, product\r\n*/\r\n?>\r\n\r\n<?php get_template_part(\'template-parts/header\') ?>\r\n\r\n<section class=\"withus\">\r\n    <div class=\"container withus__container\">\r\n        \r\n\r\n    \r\n    </div>\r\n</section>\r\n\r\n<?php get_template_part(\'template-parts/footer\') ?>\r\n', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:11:13', '2018-11-05 22:11:13', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-11-06 01:12:36', '2018-11-05 22:12:36', '\r\n', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:12:36', '2018-11-05 22:12:36', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2018-11-06 01:13:00', '2018-11-05 22:13:00', '[rl_gallery id=\"233\"]', 'Подкатегория базы', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-11-06 01:13:00', '2018-11-05 22:13:00', '', 39, 'http://localhost/abk/39-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2018-11-06 15:04:13', '2018-11-06 12:04:13', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-11-06 15:04:13', '2018-11-06 12:04:13', '', 23, 'http://localhost/abk/23-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2018-11-08 16:57:21', '2018-11-08 13:57:21', '<div class=\"desc__first d-f\">\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\n<div class=\"desc__cont\">\n<h5 class=\"desc__title\">Цели экспертизы</h5>\n<div class=\"desc__paragraphs\">\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\n\n</div>\n</div>\n</div>\n<div class=\"desc__second d-f\">\n<div class=\"desc__cont m-right\">\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\n<div class=\"desc__paragraphs\">\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\n\n</div>\n</div>\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\n</div>\n<div class=\"desc__third d-f\">\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\n<div class=\"desc__cont\">\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\n<div class=\"desc__paragraphs\">\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\n<p class=\"desc__text\">- Поверочные расчеты;</p>\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\n\n</div>\n</div>\n</div>\n<div class=\"desc__fourth d-f\">\n    <div class=\"desc__cont  m-right\">\n       <h5 class=\"desc__title t-center\">Необходимое оборудование для проведения экспертизы</h5>\n         [rl_gallery id=\"247\"]\n    </div>\n    <div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\n</div>\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2018-11-08 16:57:21', '2018-11-08 13:57:21', '', 67, 'http://localhost/abk/67-autosave-v1/', 0, 'revision', '', 0),
(242, 1, '2018-11-06 15:17:13', '2018-11-06 12:17:13', '<section class=\"desc\">\r\n<div class=\"container desc__container\">\r\n<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><img class=\"desc__n\" src=\"img/1.png\" alt=\"\" /></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><img class=\"desc__n\" src=\"img/2.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><img class=\"desc__n\" src=\"&lt;?php bloginfo(\'template_directory\') ?&gt;/img/3.png\" alt=\"\" /></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n<ul class=\"desc__list\">\r\n 	<li class=\"desc__item\">\r\n<p class=\"desc__subtitle\">Testo 606-2 - Прибор для измерения влажности древесины и стройматериалов</p>\r\n\r\n<div class=\"desc__icon\"><img class=\"desc__img\" src=\"img/device1.png\" alt=\"foto\" /></div></li>\r\n 	<li class=\"desc__item\">\r\n<p class=\"desc__subtitle\">Магнитный толщиномер покрытый МТ-201 (с поверкой)</p>\r\n\r\n<div class=\"desc__icon\"><img class=\"desc__img\" src=\"img/device2.png\" alt=\"foto\" /></div></li>\r\n 	<li class=\"desc__item\">\r\n<p class=\"desc__subtitle\">Испытательный пресс ИП-1А-500-АБ</p>\r\n\r\n<div class=\"desc__icon\"><img class=\"desc__img\" src=\"img/device3.png\" alt=\"foto\" /></div></li>\r\n 	<li class=\"desc__item\">\r\n<p class=\"desc__subtitle\">Ударная машина TM50</p>\r\n\r\n<div class=\"desc__icon\"><img class=\"desc__img\" src=\"&lt;?php bloginfo(\'template_directory\') ?&gt;/img/device4.png\" alt=\"foto\" /></div></li>\r\n</ul>\r\n</div>\r\n<div class=\"desc__number\"><img class=\"desc__n\" src=\"&lt;?php bloginfo(\'template_directory\') ?&gt;/img/4.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</section>', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:17:13', '2018-11-06 12:17:13', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2018-11-06 15:23:10', '2018-11-06 12:23:10', '<section class=\"desc\">\r\n<div class=\"container desc__container\">\r\n<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n\r\n</ul>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">4</p></div>\r\n</div>\r\n</div>\r\n</section>', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:23:10', '2018-11-06 12:23:10', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2018-11-06 15:34:48', '2018-11-06 12:34:48', '<section class=\"desc\">\r\n<div class=\"container desc__container\">\r\n<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n\r\n</ul>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n</div>\r\n</section>', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:34:48', '2018-11-06 12:34:48', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2018-11-06 15:38:29', '2018-11-06 12:38:29', '<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n\r\n</ul>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:38:29', '2018-11-06 12:38:29', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2018-11-06 15:46:20', '2018-11-06 12:46:20', '<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n    <div class=\"desc__cont  m-right\">\r\n       <h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n\r\n\r\n    </div>\r\n    <div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:46:20', '2018-11-06 12:46:20', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2018-11-06 15:47:50', '2018-11-06 12:47:50', '', 'Галерея для конкретной услуги', '', 'publish', 'closed', 'closed', '', '247', '', '', '2018-11-06 16:21:43', '2018-11-06 13:21:43', '', 0, 'http://localhost/abk/?post_type=rl_gallery&#038;p=247', 0, 'rl_gallery', '', 0),
(248, 1, '2018-11-06 15:51:00', '2018-11-06 12:51:00', '<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n    <div class=\"desc__cont  m-right\">\r\n       <h5 class=\"desc__title\">Необходимое оборудование для проведения экспертизы</h5>\r\n         [rl_gallery id=\"247\"]\r\n    </div>\r\n    <div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-06 15:51:00', '2018-11-06 12:51:00', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2018-11-06 16:55:34', '2018-11-06 13:55:34', '[text your-name id:your-name class:box-modal__input class:box-modal__input_1 placeholder \"Введите имя\"]\r\n\r\n[email* your-email id:your-email class:box-modal__input class:box-modal__input_2 placeholder \"введите е-mail\"]\r\n\r\n[tel* id:tel class:box-modal__input class:box-modal__input_3 placeholder \"Введите телефон\"]\r\n\r\n[submit \"Отправить заявку\"]\n1\nАБК Экспертиза\n[your-name] <afromyak13@gmail.com>\nafromyak13@gmail.com\nОт: [your-name] <[your-email]>\r\nТема: [your-name]\r\n\r\n[your-name]\r\n[your-email]\r\n[tel]\nReply-To: [your-email]\n\n\n\n1\nАБК Экспертиза\nАБК Экспертиза <afromyak13@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\nReply-To: afromyak13@gmail.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Основная форма', '', 'publish', 'closed', 'closed', '', 'kontaktnaja-forma-1', '', '', '2018-11-06 21:44:31', '2018-11-06 18:44:31', '', 0, 'http://localhost/abk/?post_type=wpcf7_contact_form&#038;p=249', 0, 'wpcf7_contact_form', '', 0),
(250, 1, '2018-11-07 18:07:11', '2018-11-07 15:07:11', '', 'responsive-lightbox-thumbnail', '', 'inherit', 'open', 'closed', '', 'responsive-lightbox-thumbnail', '', '', '2018-11-07 18:07:11', '2018-11-07 15:07:11', '', 0, 'http://localhost/abk/wp-content/uploads/2018/11/responsive-lightbox-thumbnail.png', 0, 'attachment', 'image/png', 0),
(251, 1, '2018-11-08 16:57:59', '2018-11-08 13:57:59', '<div class=\"desc__first d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">1</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Цели экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Возобновления строительства незавершенного объекта после длительного перерыва;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания (сооружения) по плану эксплуатации;</p>\r\n<p class=\"desc__text\">- Реконструкция, перепланировка, надстройки или иной модернизации строительного объекта</p>\r\n<p class=\"desc__text\">- Наличие дефектов, деформаций и иных повреждений в конструкциях здания</p>\r\n<p class=\"desc__text\">- Воздействия на здание (сооружение) пожара, землетрясения, катастрофы либо иной аварии;</p>\r\n<p class=\"desc__text\">- Определение аварийности здания (сооружения).</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__second d-f\">\r\n<div class=\"desc__cont m-right\">\r\n<h5 class=\"desc__title\">Наш опыт и специалисты по данной экспертизе</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- 52 эксперта со строительными допусками</p>\r\n<p class=\"desc__text\">- Средний стаж экспертов 8 лет.</p>\r\n<p class=\"desc__text\">- Эксперты с аттестатом Минстрой по квалификации «Экспертизы проектной документации»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском СРО «Строительные решения и изыскания»</p>\r\n<p class=\"desc__text\">- Эксперты с допуском по нормативу ГОСТ «Обследования здания и сооружений» 23.0001</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"desc__number\"><p class=\"numeral\">2</p></div>\r\n</div>\r\n<div class=\"desc__third d-f\">\r\n<div class=\"desc__number m-right\"><p class=\"numeral\">3</p></div>\r\n<div class=\"desc__cont\">\r\n<h5 class=\"desc__title\">Порядок проведения экспертизы</h5>\r\n<div class=\"desc__paragraphs\">\r\n<p class=\"desc__text\">- Консультация клиента и помощь в выборе задачи;</p>\r\n<p class=\"desc__text\">- Заключение договора на экспертизу</p>\r\n<p class=\"desc__text\">- Описание объекта обследования и его основных характеристик;</p>\r\n<p class=\"desc__text\">- Определение технического состояния здания или сооружения в целом либо отдельных его конструкций;</p>\r\n<p class=\"desc__text\">- Анализ и описание повреждений и дефектов, выявленных при обследовании;</p>\r\n<p class=\"desc__text\">- Актуальные ссылки на нормативные документы РФ (СНиПы, ГОСТы и т.д.);</p>\r\n<p class=\"desc__text\">- Результаты лабораторных испытаний;</p>\r\n<p class=\"desc__text\">- Поверочные расчеты;</p>\r\n<p class=\"desc__text\">- Выводы и рекомендации, составление отчетного материала.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"desc__fourth d-f\">\r\n    <div class=\"desc__cont  m-right\">\r\n       <h5 class=\"desc__title t-center\">Необходимое оборудование для проведения экспертизы</h5>\r\n         [rl_gallery id=\"247\"]\r\n    </div>\r\n    <div class=\"desc__number\"><p class=\"numeral numeral_4\">4</p></div>\r\n</div>\r\n', 'Конкретная 3', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-08 16:57:59', '2018-11-08 13:57:59', '', 67, 'http://localhost/abk/67-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_relevanssi`
--

CREATE TABLE `abk_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_relevanssi`
--

INSERT INTO `abk_relevanssi` (`doc`, `term`, `term_reverse`, `content`, `title`, `comment`, `tag`, `link`, `author`, `category`, `excerpt`, `taxonomy`, `customfield`, `mysqlcolumn`, `taxonomy_detail`, `customfield_detail`, `mysqlcolumn_detail`, `type`, `item`) VALUES
(1, 'wordpress', 'sserpdrow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'ваша', 'ашав', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'добро', 'орбод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'запись', 'ьсипаз', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'мир', 'рим', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'отредактируйте', 'етйуриткадерто', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'первая', 'яавреп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'пишите', 'етишип', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'пожаловать', 'ьтаволажоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'привет', 'тевирп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(1, 'удалите', 'етиладу', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(23, 'главная', 'яанвалг', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(25, 'услуги', 'игулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(27, 'база', 'азаб', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(27, 'приборная', 'яанробирп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(29, 'опыт', 'тыпо', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(33, 'лицензии', 'иизнецил', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(35, 'нами', 'иман', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(35, 'работают', 'тюатобар', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(37, 'контакты', 'ыткатнок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(39, 'базы', 'ызаб', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(39, 'подкатегория', 'яирогетакдоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(41, 'подкатегория', 'яирогетакдоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(41, 'услуг', 'гулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(43, 'конкретная', 'яантеркнок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(43, 'услуга', 'агулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, '230001', '100032', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'аварии', 'иирава', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'аварийности', 'итсонйирава', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'актуальные', 'еыньлаутка', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'анализ', 'зилана', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'аттестатом', 'мотатсетта', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'воздействия', 'яивтсйедзов', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'возобновления', 'яинелвонбозов', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'выборе', 'еробыв', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'выводы', 'ыдовыв', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'выявленных', 'хыннелвяыв', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'гост', 'тсог', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'госты', 'ытсог', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'данной', 'йоннад', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'дефектов', 'воткефед', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'деформаций', 'йицамрофед', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'длительного', 'огоньлетилд', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'договора', 'аровогод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'документации', 'иицатнемукод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'документы', 'ытнемукод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'допусками', 'имаксупод', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'допуском', 'моксупод', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'задачи', 'ичадаз', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'заключение', 'еинечюлказ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'здание', 'еинадз', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'здания', 'яинадз', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'землетрясения', 'яинесяртелмез', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'изыскания', 'яинаксызи', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'иной', 'йони', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'иных', 'хыни', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'испытаний', 'йинатыпси', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'катастрофы', 'ыфортсатак', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'квалификации', 'иицакифилавк', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'клиента', 'атнеилк', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'конкретная', 'яантеркнок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'конструкций', 'йицкуртснок', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'конструкциях', 'хяицкуртснок', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'консультация', 'яицатьлуснок', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'лабораторных', 'хынротаробал', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'либо', 'обил', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'материала', 'алаиретам', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'минстрой', 'йортсним', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'модернизации', 'иицазинредом', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'надстройки', 'икйортсдан', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'наличие', 'еичилан', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'незавершенного', 'огоннешревазен', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'необходимое', 'еомидохбоен', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'нормативные', 'еынвитамрон', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'нормативу', 'увитамрон', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'оборудование', 'еинаводуробо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'обследовании', 'иинаводелсбо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'обследования', 'яинаводелсбо', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'объекта', 'аткеъбо', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'описание', 'еинасипо', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'определение', 'еинеледерпо', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'опыт', 'тыпо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'основных', 'хынвонсо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'отдельных', 'хыньледто', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'отчетного', 'огонтечто', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'перепланировка', 'аквориналпереп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'перерыва', 'авыререп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'плану', 'уналп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'поверочные', 'еынчоревоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'повреждений', 'йинеджервоп', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'пожара', 'аражоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'помощь', 'ьщомоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'порядок', 'кодяроп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'проведения', 'яинедеворп', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'проектной', 'йонткеорп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'расчеты', 'ытечсар', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'результаты', 'ытатьлузер', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'рекомендации', 'иицаднемокер', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'реконструкция', 'яицкуртснокер', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'решения', 'яинешер', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'снипы', 'ыпинс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'сооружение', 'еинежуроос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'сооружений', 'йинежуроос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'сооружения', 'яинежуроос', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'составление', 'еинелватсос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'состояния', 'яиняотсос', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'специалисты', 'ытсилаицепс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'средний', 'йиндерс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'сро', 'орс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'ссылки', 'иклысс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'стаж', 'жатс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'строительного', 'огоньлетиортс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'строительные', 'еыньлетиортс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'строительными', 'имыньлетиортс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'строительства', 'автсьлетиортс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'технического', 'огоксечинхет', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'характеристик', 'китсиреткарах', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'цели', 'илец', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'целом', 'молец', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'эксперта', 'атрепскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'экспертизе', 'езитрепскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'экспертизу', 'узитрепскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'экспертизы', 'ызитрепскэ', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'экспертов', 'вотрепскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'эксперты', 'ытрепскэ', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'эксплуатации', 'иицатаулпскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(73, 'магазин', 'низагам', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(74, 'корзина', 'анизрок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(75, 'заказа', 'азаказ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(75, 'оформление', 'еинелмрофо', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(76, 'аккаунт', 'тнуакка', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(77, 'подкатегория', 'яирогетакдоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(173, 'л10', '01л', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(174, 'л11', '11л', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(175, 'л12', '21л', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(192, 'tm50', '05mt', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(192, 'машина', 'анишам', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(192, 'ударная', 'яанраду', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(193, '500', '005', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(193, 'испытательный', 'йыньлетатыпси', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(193, 'пресс', 'ссерп', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(194, '201', '102', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(194, 'магнитный', 'йынтингам', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(194, 'поверкой', 'йокревоп', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(194, 'покрытый', 'йытыркоп', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(194, 'толщиномер', 'ремонищлот', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(195, '606', '606', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'testo', 'otset', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'влажности', 'итсонжалв', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'древесины', 'ынисеверд', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'измерения', 'яинеремзи', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'прибор', 'робирп', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(195, 'стройматериалов', 'волаиретамйортс', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', 'attachment', 0),
(199, 'оборудования', 'яинаводуробо', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(199, 'техническая', 'яаксечинхет', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(199, 'экспертиза', 'азитрепскэ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(201, 'изысканий', 'йинаксызи', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(201, 'инженерных', 'хынренежни', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(201, 'негосударственная', 'яанневтсрадусоген', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(201, 'результатов', 'вотатьлузер', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(201, 'экспертиза', 'азитрепскэ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(206, 'документации', 'иицатнемукод', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(206, 'сметной', 'йонтемс', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(206, 'экспертиза', 'азитрепскэ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(208, 'документации', 'иицатнемукод', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(208, 'сметной', 'йонтемс', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(208, 'экспертиза', 'азитрепскэ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(210, 'дочерняя', 'яянречод', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(210, 'подкатегории', 'иирогетакдоп', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(210, 'страница', 'ацинартс', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(210, 'услуг', 'гулсу', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(215, '20171026121627837214278', '87241273872612162017102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(216, '201807161725511816485329', '923584618115527161708102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(217, '201708011526161255453391', '193354552161625110807102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(218, '14581171451840629216b2', '2b61292604815417118541', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(219, '201710091730071087820932', '239028780170037190017102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(220, '201610181659162089463067', '760364980261956181016102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(221, '1465994617348218277b2', '2b7728128437164995641', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(222, '14583099381435148020b2', '2b02084153418399038541', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(223, '14583099381435148020b2', '2b02084153418399038541', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(226, 's70', '07s', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(226, 'volvo', 'ovlov', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(227, 'subaru', 'urabus', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(228, 'bmw', 'wmb', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(228, 'e60', '06e', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(228, 'series', 'seires', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(229, 'saab', 'baas', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(229, 'sedan', 'nades', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(229, 'sport', 'trops', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(230, 'bmw', 'wmb', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(230, 'e60', '06e', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(230, 'series', 'seires', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(231, 'chrysler', 'relsyrhc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(231, 'grand', 'dnarg', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(231, 'voyager', 'regayov', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(250, 'lightbox', 'xobthgil', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(250, 'responsive', 'evisnopser', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0),
(250, 'thumbnail', 'lianbmuht', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'attachment', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_relevanssi_log`
--

CREATE TABLE `abk_relevanssi_log` (
  `id` bigint(9) NOT NULL,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_relevanssi_stopwords`
--

CREATE TABLE `abk_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_relevanssi_stopwords`
--

INSERT INTO `abk_relevanssi_stopwords` (`stopword`) VALUES
('а'),
('алло'),
('без'),
('близко'),
('более'),
('больше'),
('большинстве'),
('большой'),
('будем'),
('будет'),
('будете'),
('будешь'),
('будто'),
('буду'),
('будут'),
('будь'),
('бы'),
('бывает'),
('бывь'),
('был'),
('была'),
('были'),
('было'),
('быть'),
('в'),
('важная'),
('важное'),
('важные'),
('важный'),
('вам'),
('вами'),
('вас'),
('ваш'),
('ваше'),
('ваши'),
('вверх'),
('вдали'),
('вдруг'),
('ведь'),
('везде'),
('весь'),
('виде'),
('вниз'),
('внизу'),
('во'),
('вокруг'),
('вон'),
('восемнадцатый'),
('восемнадцать'),
('восемь'),
('восьмой'),
('вот'),
('впрочем'),
('времени'),
('время'),
('все'),
('всегда'),
('всего'),
('всем'),
('всеми'),
('всему'),
('всех'),
('всею'),
('всю'),
('всюду'),
('вся'),
('всё'),
('второй'),
('вы'),
('г'),
('где'),
('говорил'),
('говорит'),
('год'),
('года'),
('году'),
('да'),
('давно'),
('даже'),
('далеко'),
('дальше'),
('даром'),
('два'),
('двадцатый'),
('двадцать'),
('две'),
('двенадцатый'),
('двенадцать'),
('двух'),
('девятнадцатый'),
('девятнадцать'),
('девятый'),
('девять'),
('действительно'),
('дел'),
('день'),
('десятый'),
('десять'),
('для'),
('до'),
('довольно'),
('долго'),
('должно'),
('другая'),
('другие'),
('других'),
('друго'),
('другое'),
('е'),
('его'),
('ее'),
('ей'),
('ему'),
('если'),
('есть'),
('еще'),
('ещё'),
('ею'),
('её'),
('ж'),
('же'),
('жизнь'),
('за'),
('занят'),
('занята'),
('занято'),
('заняты'),
('затем'),
('зато'),
('зачем'),
('здесь'),
('знать'),
('значит'),
('и'),
('из'),
('или'),
('им'),
('именно'),
('иметь'),
('ими'),
('имя'),
('иногда'),
('их'),
('к'),
('каждая'),
('каждое'),
('каждые'),
('каждый'),
('кажется'),
('как'),
('какая'),
('какой'),
('кем'),
('когда'),
('кого'),
('ком'),
('кому'),
('конечно'),
('которая'),
('которого'),
('которой'),
('которую'),
('которые'),
('который'),
('которых'),
('кроме'),
('кругом'),
('кто'),
('куда'),
('лет'),
('ли'),
('лишь'),
('лучше'),
('люди'),
('м'),
('мало'),
('между'),
('меля'),
('менее'),
('меньше'),
('меня'),
('миллионов'),
('мимо'),
('мира'),
('мне'),
('много'),
('многочисленная'),
('многочисленное'),
('многочисленные'),
('многочисленный'),
('мной'),
('мною'),
('мог'),
('могут'),
('мож'),
('может'),
('можно'),
('можхо'),
('мой'),
('мор'),
('мочь'),
('моя'),
('моё'),
('мы'),
('на'),
('наверху'),
('над'),
('надо'),
('назад'),
('наиболее'),
('наконец'),
('нам'),
('нас'),
('начала'),
('наш'),
('наша'),
('наше'),
('наши'),
('не'),
('него'),
('недавно'),
('недалеко'),
('нее'),
('ней'),
('нельзя'),
('нем'),
('немного'),
('нему'),
('непрерывно'),
('нередко'),
('несколько'),
('нет'),
('нею'),
('неё'),
('ни'),
('нибудь'),
('ниже'),
('низко'),
('никогда'),
('никуда'),
('ними'),
('них'),
('ничего'),
('но'),
('ну'),
('нужно'),
('нх'),
('о'),
('об'),
('оба'),
('обычно'),
('один'),
('одиннадцатый'),
('одиннадцать'),
('однажды'),
('однако'),
('одного'),
('одной'),
('около'),
('он'),
('она'),
('они'),
('оно'),
('оный'),
('опять'),
('особенно'),
('от'),
('ото'),
('отовсюду'),
('отсюда'),
('очень'),
('первый'),
('перед'),
('по'),
('под'),
('пожалуйста'),
('позже'),
('пока'),
('пор'),
('пора'),
('после'),
('посреди'),
('потом'),
('потому'),
('почему'),
('почти'),
('прекрасно'),
('при'),
('про'),
('просто'),
('против'),
('процентов'),
('пятнадцатый'),
('пятнадцать'),
('пятый'),
('пять'),
('раз'),
('разве'),
('раньше'),
('рядом'),
('с'),
('сам'),
('сама'),
('сами'),
('самим'),
('самими'),
('самих'),
('само'),
('самой'),
('самом'),
('самому'),
('саму'),
('свое'),
('своего'),
('своей'),
('свои'),
('своих'),
('свой'),
('свою'),
('своя'),
('сеаой'),
('себе'),
('себя'),
('сегодня'),
('седьмой'),
('сейчас'),
('семнадцатый'),
('семнадцать'),
('семь'),
('сих'),
('сказал'),
('сказала'),
('сказать'),
('сколько'),
('следовательно'),
('слишком'),
('сначала'),
('снова'),
('со'),
('собой'),
('собою'),
('совсем'),
('соответственно'),
('спасибо'),
('стал'),
('суть'),
('т'),
('та'),
('так'),
('такая'),
('также'),
('такие'),
('такое'),
('такой'),
('там'),
('твой'),
('твоя'),
('твоё'),
('те'),
('тебе'),
('тебя'),
('тем'),
('теми'),
('теперь'),
('тех'),
('то'),
('тобой'),
('тобою'),
('тогда'),
('того'),
('только'),
('том'),
('тому'),
('тот'),
('тою'),
('третий'),
('три'),
('тринадцатый'),
('тринадцать'),
('ту'),
('тут'),
('ты'),
('тысяч'),
('у'),
('уж'),
('уже'),
('уметь'),
('хорошо'),
('хотеть'),
('хоть'),
('хотя'),
('хочешь'),
('часто'),
('чаще'),
('чего'),
('человек'),
('чем'),
('чему'),
('через'),
('четвертый'),
('четыре'),
('четырнадцатый'),
('четырнадцать'),
('что'),
('чтоб'),
('чтобы'),
('чуть'),
('шестнадцатый'),
('шестнадцать'),
('шестой'),
('шесть'),
('эта'),
('эти'),
('этим'),
('этими'),
('это'),
('этого'),
('этой'),
('этом'),
('этому'),
('этот'),
('эту'),
('я');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_termmeta`
--

CREATE TABLE `abk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_termmeta`
--

INSERT INTO `abk_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '0'),
(28, 26, 'order', '0'),
(29, 26, 'display_type', ''),
(30, 26, 'thumbnail_id', '0'),
(31, 27, 'order', '0'),
(32, 27, 'display_type', ''),
(33, 27, 'thumbnail_id', '0'),
(34, 28, 'order', '0'),
(35, 28, 'display_type', ''),
(36, 28, 'thumbnail_id', '0'),
(37, 29, 'order', '0'),
(38, 29, 'display_type', ''),
(39, 29, 'thumbnail_id', '0'),
(40, 30, 'order', '0'),
(41, 30, 'display_type', ''),
(42, 30, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_terms`
--

CREATE TABLE `abk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_terms`
--

INSERT INTO `abk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'main', 'main', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Uncategorized', 'uncategorized', 0),
(17, 'Услуги', 'uslugi', 0),
(26, 'ТЕХНИЧЕСКАЯ ЭКСПЕРТИЗА ОБОРУДОВАНИЯ', 'tehnicheskaja-jekspertiza-oborudovanija', 0),
(27, 'ЭКСПЕРТИЗА СМЕТНОЙ ДОКУМЕНТАЦИИ 1', 'jekspertiza-smetnoj-dokumentacii-1', 0),
(28, 'ЭКСПЕРТИЗА СМЕТНОЙ ДОКУМЕНТАЦИИ 2', 'jekspertiza-smetnoj-dokumentacii-2', 0),
(29, 'ЭКСПЕРТИЗА СМЕТНОЙ ДОКУМЕНТАЦИИ 3', 'jekspertiza-smetnoj-dokumentacii-3', 0),
(30, 'ЭКСПЕРТИЗА СМЕТНОЙ ДОКУМЕНТАЦИИ 4', 'jekspertiza-smetnoj-dokumentacii-4', 0),
(31, 'услуги', 'uslugi', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_term_relationships`
--

CREATE TABLE `abk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_term_relationships`
--

INSERT INTO `abk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(66, 2, 0),
(79, 31, 0),
(80, 31, 0),
(203, 31, 0),
(204, 31, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_term_taxonomy`
--

CREATE TABLE `abk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_term_taxonomy`
--

INSERT INTO `abk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(26, 26, 'product_cat', '- Соответствие реального качества оборудования, номинальному.\r\n\r\n- Наличие явных, скрытых, эксплуатационных или производственных дефектов.', 17, 0),
(27, 27, 'product_cat', '', 26, 0),
(28, 28, 'product_cat', '', 26, 0),
(29, 29, 'product_cat', '', 26, 0),
(30, 30, 'product_cat', '', 26, 0),
(31, 31, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_usermeta`
--

CREATE TABLE `abk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_usermeta`
--

INSERT INTO `abk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'abk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'abk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"89554d19947b216653fecc04a0bfd6c7f82c724eed9337c04207185ce495286b\";a:4:{s:10:\"expiration\";i:1542271868;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1541062268;}}'),
(17, 1, 'abk_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'aioseop_seen_about_page', '2.9.1'),
(19, 1, 'abk_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(20, 1, 'abk_user-settings', 'editor=html&libraryContent=browse'),
(21, 1, 'abk_user-settings-time', '1541411738'),
(22, 1, 'googleplus', ''),
(23, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(26, 1, 'wc_last_active', '1541376000'),
(27, 1, 'dismissed_no_secure_connection_notice', '1'),
(28, 1, 'edit_page_per_page', '60'),
(29, 1, 'nav_menu_recently_edited', '31'),
(30, 1, 'closedpostboxes_page', 'a:1:{i:0;s:5:\"aiosp\";}'),
(31, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:\"acf-group_5be02b45b886b\";i:1;s:12:\"revisionsdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_users`
--

CREATE TABLE `abk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_users`
--

INSERT INTO `abk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6FVDgcS3GHUNd5JEgt60sfJtCffy91', 'admin', 'afromyak13@gmail.com', '', '2018-11-01 08:50:37', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `abk_wc_download_log`
--

CREATE TABLE `abk_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_wc_webhooks`
--

CREATE TABLE `abk_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_api_keys`
--

CREATE TABLE `abk_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_attribute_taxonomies`
--

CREATE TABLE `abk_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `abk_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_log`
--

CREATE TABLE `abk_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_order_itemmeta`
--

CREATE TABLE `abk_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_order_items`
--

CREATE TABLE `abk_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_payment_tokenmeta`
--

CREATE TABLE `abk_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_payment_tokens`
--

CREATE TABLE `abk_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_sessions`
--

CREATE TABLE `abk_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abk_woocommerce_sessions`
--

INSERT INTO `abk_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:708:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"afromyak13@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1541508451);

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_shipping_zones`
--

CREATE TABLE `abk_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_shipping_zone_locations`
--

CREATE TABLE `abk_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_shipping_zone_methods`
--

CREATE TABLE `abk_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_tax_rates`
--

CREATE TABLE `abk_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `abk_woocommerce_tax_rate_locations`
--

CREATE TABLE `abk_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abk_commentmeta`
--
ALTER TABLE `abk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `abk_comments`
--
ALTER TABLE `abk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `abk_links`
--
ALTER TABLE `abk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `abk_options`
--
ALTER TABLE `abk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `abk_postmeta`
--
ALTER TABLE `abk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `abk_posts`
--
ALTER TABLE `abk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `abk_relevanssi`
--
ALTER TABLE `abk_relevanssi`
  ADD UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  ADD KEY `terms` (`term`(20)),
  ADD KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  ADD KEY `docs` (`doc`),
  ADD KEY `typeitem` (`type`(190),`item`);

--
-- Индексы таблицы `abk_relevanssi_log`
--
ALTER TABLE `abk_relevanssi_log`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `query` (`query`(190));

--
-- Индексы таблицы `abk_relevanssi_stopwords`
--
ALTER TABLE `abk_relevanssi_stopwords`
  ADD UNIQUE KEY `stopword` (`stopword`);

--
-- Индексы таблицы `abk_termmeta`
--
ALTER TABLE `abk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `abk_terms`
--
ALTER TABLE `abk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `abk_term_relationships`
--
ALTER TABLE `abk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `abk_term_taxonomy`
--
ALTER TABLE `abk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `abk_usermeta`
--
ALTER TABLE `abk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `abk_users`
--
ALTER TABLE `abk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `abk_wc_download_log`
--
ALTER TABLE `abk_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `abk_wc_webhooks`
--
ALTER TABLE `abk_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `abk_woocommerce_api_keys`
--
ALTER TABLE `abk_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `abk_woocommerce_attribute_taxonomies`
--
ALTER TABLE `abk_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `abk_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `abk_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `abk_woocommerce_log`
--
ALTER TABLE `abk_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `abk_woocommerce_order_itemmeta`
--
ALTER TABLE `abk_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `abk_woocommerce_order_items`
--
ALTER TABLE `abk_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `abk_woocommerce_payment_tokenmeta`
--
ALTER TABLE `abk_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `abk_woocommerce_payment_tokens`
--
ALTER TABLE `abk_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `abk_woocommerce_sessions`
--
ALTER TABLE `abk_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `abk_woocommerce_shipping_zones`
--
ALTER TABLE `abk_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `abk_woocommerce_shipping_zone_locations`
--
ALTER TABLE `abk_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `abk_woocommerce_shipping_zone_methods`
--
ALTER TABLE `abk_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `abk_woocommerce_tax_rates`
--
ALTER TABLE `abk_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `abk_woocommerce_tax_rate_locations`
--
ALTER TABLE `abk_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abk_commentmeta`
--
ALTER TABLE `abk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_comments`
--
ALTER TABLE `abk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `abk_links`
--
ALTER TABLE `abk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_options`
--
ALTER TABLE `abk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1081;

--
-- AUTO_INCREMENT для таблицы `abk_postmeta`
--
ALTER TABLE `abk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT для таблицы `abk_posts`
--
ALTER TABLE `abk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT для таблицы `abk_relevanssi_log`
--
ALTER TABLE `abk_relevanssi_log`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_termmeta`
--
ALTER TABLE `abk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `abk_terms`
--
ALTER TABLE `abk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `abk_term_taxonomy`
--
ALTER TABLE `abk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `abk_usermeta`
--
ALTER TABLE `abk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `abk_users`
--
ALTER TABLE `abk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `abk_wc_download_log`
--
ALTER TABLE `abk_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_wc_webhooks`
--
ALTER TABLE `abk_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_api_keys`
--
ALTER TABLE `abk_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_attribute_taxonomies`
--
ALTER TABLE `abk_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `abk_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_log`
--
ALTER TABLE `abk_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_order_itemmeta`
--
ALTER TABLE `abk_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_order_items`
--
ALTER TABLE `abk_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_payment_tokenmeta`
--
ALTER TABLE `abk_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_payment_tokens`
--
ALTER TABLE `abk_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_sessions`
--
ALTER TABLE `abk_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_shipping_zones`
--
ALTER TABLE `abk_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_shipping_zone_locations`
--
ALTER TABLE `abk_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_shipping_zone_methods`
--
ALTER TABLE `abk_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_tax_rates`
--
ALTER TABLE `abk_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `abk_woocommerce_tax_rate_locations`
--
ALTER TABLE `abk_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `abk_wc_download_log`
--
ALTER TABLE `abk_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `abk_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
