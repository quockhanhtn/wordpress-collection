SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w36`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-02-25 10:34:46","2019-02-25 10:34:46","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","349","sky casino mobile site","JarrodMarion@kikie.club","https://mysite135.kinja.com/find-the-best-online-casino-games-1831322255?rev=1545846745189","103.242.15.86","2019-02-27 11:37:02","2019-02-27 04:37:02","(2) Don\'t bet you actually can\'t afford to lose. Since the development of online bingo 
("3","349","sky casino mobile site","JarrodMarion@kikie.club","https://mysite135.kinja.com/find-the-best-online-casino-games-1831322255?rev=1545846745189","103.242.15.86","2019-02-27 11:37:23","2019-02-27 04:37:23","(2) Don\'t bet you actually can\'t afford to lose.




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/dichvubaove\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1551288805,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960484,\"initial_activation_timestamp\":1551288815,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025905,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




CREATE TABLE `bz_duplicator_pro_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/dichvubaove","yes"),
("2","home","https://bizhostvn.com/w/dichvubaove","yes"),
("3","blogname","dichvubaove","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","demo@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","10","yes"),
("13","rss_use_excerpt","0","yes"),
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("18","default_category","1","yes"),
("19","default_comment_status","open","yes"),
("20","default_ping_status","open","yes"),
("21","default_pingback_flag","1","yes"),
("22","posts_per_page","10","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes"),
("29","rewrite_rules","a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=30&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:1:{i:2;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:127:\"/home/tppone/domains/tppone.com/public_html/demo/dichvubaove/wp-content/themes/flatsome/template-parts/posts/content-single.php\";i:2;s:119:\"/home/tppone/domains/tppone.com/public_html/demo/dichvubaove/wp-content/themes/flatsome/template-parts/posts/layout.php\";i:3;s:119:\"/home/tppone/domains/tppone.com/public_html/demo/dichvubaove/wp-content/themes/flatsome/template-parts/posts/single.php\";i:4;s:120:\"/home/tppone/domains/tppone.com/public_html/demo/dichvubaove/wp-content/themes/flatsome/template-parts/posts/content.php\";i:5;s:97:\"/home/tppone/domains/tppone.com/public_html/demo/dichvubaove/wp-content/themes/flatsome/style.css\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","dich-vu-bao-ve","yes"),
("42","comment_whitelist","1","yes"),
("43","blacklist_keys","","no"),
("44","comment_registration","0","yes"),
("45","html_type","text/html","yes"),
("46","use_trackback","0","yes"),
("47","default_role","subscriber","yes"),
("48","db_version","44719","yes"),
("49","uploads_use_yearmonth_folders","1","yes"),
("50","upload_path","","yes"),
("51","blog_public","1","yes"),
("52","default_link_category","2","yes"),
("53","show_on_front","page","yes"),
("54","tag_base","","yes"),
("55","show_avatars","1","yes"),
("56","avatar_rating","G","yes"),
("57","upload_url_path","","yes"),
("58","thumbnail_size_w","150","yes"),
("59","thumbnail_size_h","150","yes"),
("60","thumbnail_crop","1","yes"),
("61","medium_size_w","300","yes"),
("62","medium_size_h","300","yes"),
("63","avatar_default","mystery","yes"),
("64","large_size_w","1024","yes"),
("65","large_size_h","1024","yes"),
("66","image_default_link_type","none","yes"),
("67","image_default_size","","yes"),
("68","image_default_align","","yes"),
("69","close_comments_for_old_posts","0","yes"),
("70","close_comments_days_old","14","yes"),
("71","thread_comments","1","yes"),
("72","thread_comments_depth","5","yes"),
("73","page_comments","0","yes"),
("74","comments_per_page","50","yes"),
("75","default_comments_page","newest","yes"),
("76","comment_order","asc","yes"),
("77","sticky_posts","a:0:{}","yes"),
("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:405:\"<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"300\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:0:{}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","30","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:4:{i:0;s:13:\"media_image-2\";i:1;s:13:\"media_image-3\";i:2;s:13:\"media_image-4\";i:3;s:6:\"text-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:4:{i:2;a:15:{s:13:\"attachment_id\";i:255;s:3:\"url\";s:73:\"https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/02/ndspro.png\";s:5:\"title\";s:17:\"Dịch vụ mới\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:250;s:6:\"height\";i:400;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:256;s:3:\"url\";s:76:\"https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/02/SG-300x66.png\";s:5:\"title\";s:31:\"Báo chí nói về chúng tôi\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:413;s:6:\"height\";i:91;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:257;s:3:\"url\";s:69:\"https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/02/PL.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:214;s:6:\"height\";i:69;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:6:{i:1557992086;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557996707;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558002886;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558002903;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059087;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("135","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960503;}","no"),
("145","new_admin_email","webdemo@gmail.com","yes"),
("150","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027868;s:30:\"db-prefix-change/db_prefix.php\";i:1557026692;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025908;}","yes"),
("151","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551090922;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("152","current_theme","Dịch vụ bảo vệ","yes"),
("153","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:35:22 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551090936;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("154","theme_switched","","yes"),
("155","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("156","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("158","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("159","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("160","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("161","flatsome_wup_buyer","trannguyen886","yes"),
("162","allowedthemes","a:1:{s:14:\"dich-vu-bao-ve\";b:1;}","no"),
("163","fl_has_child_theme","dich-vu-bao-ve","yes"),
("165","theme_mods_dich-vu-bao-ve","a:120:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:2:{i:0;s:6:\"social\";i:1;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:11:\"search-form\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:2:{i:0;s:3:\"nav\";i:1;s:8:\"button-1\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:2:{i:0;s:6:\"search\";i:1;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:1:{i:0;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:14:\"primary_mobile\";i:5;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:35:38 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1473:\"<style>
("167","envato_setup_complete","1551090943","yes"),
("180","category_children","a:0:{}","yes"),
("181","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("304","duplicator_pro_package_active","{\"Created\":\"2019-02-27 17:33:44\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.9\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.33\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190227_mauwebdichvubaovethietke\",\"Hash\":\"0e60caa24332d49a3761_20190227173344\",\"NameHash\":\"20190227_mauwebdichvubaovethietke_0e60caa24332d49a3761_20190227173344\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/dichvubaove\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190227_mauwebdichvubaovethietke_0e60caa24332d49a3761_20190227173344_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\",\"Size\":73196391,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/dichvubaove\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web62\",\"tablesBaseCount\":14,\"tablesFinalCount\":14,\"tablesRowCount\":681,\"tablesSizeOnDisk\":3948544,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("343","db_upgraded","","yes"),
("348","can_compress_scripts","0","no"),
("350","dbprefix_old_dbprefix","dvbv_","yes"),
("351","dbprefix_new","bz_","yes"),
("390","recovery_keys","a:0:{}","yes"),
("456","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558319392","no"),
("457","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("458","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558319393","no"),
("459","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("477","_site_transient_timeout_theme_roots","1557992045","no"),
("478","_site_transient_theme_roots","a:2:{s:14:\"dich-vu-bao-ve\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("480","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557990256;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("481","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557990257;s:7:\"checked\";a:2:{s:14:\"dich-vu-bao-ve\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("482","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557990257;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("40","21","_wp_attached_file","2019/02/logo-dich-vu-bao-ve.png"),
("41","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:252;s:6:\"height\";i:74;s:4:\"file\";s:31:\"2019/02/logo-dich-vu-bao-ve.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"logo-dich-vu-bao-ve-150x74.png\";s:5:\"width\";i:150;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("42","22","_wp_attached_file","2019/02/cropped-logo-dich-vu-bao-ve.png"),
("43","22","_wp_attachment_context","site-icon"),
("44","22","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2019/02/cropped-logo-dich-vu-bao-ve.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-logo-dich-vu-bao-ve-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-logo-dich-vu-bao-ve-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:39:\"cropped-logo-dich-vu-bao-ve-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:39:\"cropped-logo-dich-vu-bao-ve-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:39:\"cropped-logo-dich-vu-bao-ve-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:37:\"cropped-logo-dich-vu-bao-ve-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("60","30","_edit_last","1"),
("61","30","_edit_lock","1551160505:1"),
("62","30","_footer","normal"),
("63","30","_wp_page_template","page-blank.php"),
("64","32","_edit_last","1"),
("65","32","_footer","normal"),
("66","32","_wp_page_template","page-right-sidebar.php"),
("67","32","_edit_lock","1551160578:1"),
("68","34","_edit_last","1"),
("69","34","_edit_lock","1551157288:1"),
("70","34","_footer","normal"),
("71","34","_wp_page_template","page-right-sidebar.php"),
("72","36","_menu_item_type","post_type"),
("73","36","_menu_item_menu_item_parent","0"),
("74","36","_menu_item_object_id","34"),
("75","36","_menu_item_object","page"),
("76","36","_menu_item_target",""),
("77","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("78","36","_menu_item_xfn",""),
("79","36","_menu_item_url",""),
("81","37","_menu_item_type","post_type"),
("82","37","_menu_item_menu_item_parent","0"),
("83","37","_menu_item_object_id","32"),
("84","37","_menu_item_object","page"),
("85","37","_menu_item_target",""),
("86","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("87","37","_menu_item_xfn",""),
("88","37","_menu_item_url",""),
("90","38","_menu_item_type","post_type"),
("91","38","_menu_item_menu_item_parent","0"),
("92","38","_menu_item_object_id","30"),
("93","38","_menu_item_object","page"),
("94","38","_menu_item_target",""),
("95","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("96","38","_menu_item_xfn",""),
("97","38","_menu_item_url",""),
("117","41","_menu_item_type","taxonomy"),
("118","41","_menu_item_menu_item_parent","0"),
("119","41","_menu_item_object_id","3"),
("120","41","_menu_item_object","category"),
("121","41","_menu_item_target",""),
("122","41","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("123","41","_menu_item_xfn",""),
("124","41","_menu_item_url",""),
("271","91","_wp_attached_file","2019/02/slider2.jpg"),
("272","91","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:450;s:4:\"file\";s:19:\"2019/02/slider2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("273","93","_wp_attached_file","2019/02/bg.jpg"),
("274","93","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:807;s:4:\"file\";s:14:\"2019/02/bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x323.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x430.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:10:\"Bigstock®\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("275","97","_wp_attached_file","2019/02/codinh.jpg"),
("276","97","_wp_attachment_metadata","a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2019/02/codinh.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"codinh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"codinh-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"codinh-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("277","101","_wp_attached_file","2019/02/kcn.jpg"),
("278","101","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/02/kcn.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"kcn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"kcn-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"kcn-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("279","104","_wp_attached_file","2019/02/VIP.jpg"),
("280","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:15:\"2019/02/VIP.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"VIP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"VIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"VIP-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("281","107","_wp_attached_file","2019/02/ddong.jpg"),
("282","107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:521;s:6:\"height\";i:521;s:4:\"file\";s:17:\"2019/02/ddong.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ddong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ddong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("283","109","_wp_attached_file","2019/02/nds.png"),
("284","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/02/nds.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"nds-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"nds-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("316","153","_wp_attached_file","2019/02/contact-icon-man.png"),
("317","153","_wp_attachment_metadata","a:5:{s:5:\"width\";i:229;s:6:\"height\";i:263;s:4:\"file\";s:28:\"2019/02/contact-icon-man.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"contact-icon-man-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("320","159","_wp_attached_file","2019/02/icon-contact.png"),
("321","159","_wp_attachment_metadata","a:5:{s:5:\"width\";i:208;s:6:\"height\";i:229;s:4:\"file\";s:24:\"2019/02/icon-contact.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"icon-contact-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("324","171","_wp_attached_file","2019/02/bannervi-1.png"),
("325","171","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:270;s:4:\"file\";s:22:\"2019/02/bannervi-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bannervi-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bannervi-1-300x58.png\";s:5:\"width\";i:300;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bannervi-1-768x148.png\";s:5:\"width\";i:768;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"bannervi-1-1024x197.png\";s:5:\"width\";i:1024;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("328","176","_edit_last","1"),
("329","176","_edit_lock","1551150921:1"),
("332","178","_wp_attached_file","2019/02/post1.jpg"),
("333","178","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/02/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("334","176","_thumbnail_id","178"),
("337","180","_edit_last","1"),
("338","180","_edit_lock","1551150970:1"),
("339","181","_wp_attached_file","2019/02/post2.jpg"),
("340","181","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/02/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("341","180","_thumbnail_id","181"),
("344","183","_edit_last","1"),
("345","183","_edit_lock","1551151028:1"),
("346","184","_wp_attached_file","2019/02/post3.jpg"),
("347","184","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/02/post3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("348","183","_thumbnail_id","184"),
("351","30","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("352","30","_oembed_time_97120786a5d618011442f73be26e093f","1551151287"),
("353","30","_oembed_ba72c14ab4ed8abf0108eaa5f2e897a0","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/_52w0fhE62E?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("354","30","_oembed_time_ba72c14ab4ed8abf0108eaa5f2e897a0","1551151302"),
("358","195","_wp_attached_file","2019/02/world-template.png"),
("359","195","_wp_attachment_metadata","a:5:{s:5:\"width\";i:972;s:6:\"height\";i:494;s:4:\"file\";s:26:\"2019/02/world-template.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"world-template-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"world-template-300x152.png\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"world-template-768x390.png\";s:5:\"width\";i:768;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("360","195","_edit_lock","1551151313:1"),
("391","212","_wp_attached_file","2019/02/post4.jpg"),
("392","212","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/02/post4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("393","211","_edit_last","1"),
("394","211","_thumbnail_id","212"),
("397","211","_edit_lock","1551151762:1"),
("398","214","_edit_last","1"),
("399","214","_edit_lock","1551151839:1");
INSERT INTO bz_postmeta VALUES
("400","215","_wp_attached_file","2019/02/post5.jpg"),
("401","215","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/02/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("402","214","_thumbnail_id","215"),
("413","239","_edit_last","1"),
("414","239","_edit_lock","1551153395:1"),
("431","255","_wp_attached_file","2019/02/ndspro.png"),
("432","255","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2019/02/ndspro.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ndspro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ndspro-188x300.png\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("433","256","_wp_attached_file","2019/02/SG.png"),
("434","256","_wp_attachment_metadata","a:5:{s:5:\"width\";i:413;s:6:\"height\";i:91;s:4:\"file\";s:14:\"2019/02/SG.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"SG-150x91.png\";s:5:\"width\";i:150;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"SG-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("435","257","_wp_attached_file","2019/02/PL.png"),
("436","257","_wp_attachment_metadata","a:5:{s:5:\"width\";i:214;s:6:\"height\";i:69;s:4:\"file\";s:14:\"2019/02/PL.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"PL-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("448","239","_thumbnail_id",""),
("460","275","_edit_last","1"),
("461","275","_edit_lock","1551160579:1"),
("462","275","_footer","normal"),
("463","275","_wp_page_template","page-right-sidebar.php"),
("464","278","_edit_last","1"),
("465","278","_edit_lock","1551160577:1"),
("466","278","_footer","normal"),
("467","278","_wp_page_template","page-right-sidebar.php"),
("470","281","_edit_last","1"),
("471","281","_edit_lock","1551160579:1"),
("472","281","_footer","normal"),
("473","281","_wp_page_template","page-right-sidebar.php"),
("474","283","_edit_last","1"),
("475","283","_edit_lock","1551160577:1"),
("476","283","_footer","normal"),
("477","283","_wp_page_template","page-right-sidebar.php"),
("478","285","_edit_last","1"),
("479","285","_edit_lock","1551160578:1"),
("480","285","_footer","normal"),
("481","285","_wp_page_template","page-right-sidebar.php"),
("482","287","_menu_item_type","post_type"),
("483","287","_menu_item_menu_item_parent","37"),
("484","287","_menu_item_object_id","285"),
("485","287","_menu_item_object","page"),
("486","287","_menu_item_target",""),
("487","287","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("488","287","_menu_item_xfn",""),
("489","287","_menu_item_url",""),
("491","288","_menu_item_type","post_type"),
("492","288","_menu_item_menu_item_parent","37"),
("493","288","_menu_item_object_id","283"),
("494","288","_menu_item_object","page"),
("495","288","_menu_item_target",""),
("496","288","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("497","288","_menu_item_xfn",""),
("498","288","_menu_item_url",""),
("500","289","_menu_item_type","post_type"),
("501","289","_menu_item_menu_item_parent","37"),
("502","289","_menu_item_object_id","281"),
("503","289","_menu_item_object","page"),
("504","289","_menu_item_target",""),
("505","289","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("506","289","_menu_item_xfn",""),
("507","289","_menu_item_url",""),
("509","290","_menu_item_type","post_type"),
("510","290","_menu_item_menu_item_parent","37"),
("511","290","_menu_item_object_id","278"),
("512","290","_menu_item_object","page"),
("513","290","_menu_item_target",""),
("514","290","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("515","290","_menu_item_xfn",""),
("516","290","_menu_item_url",""),
("518","291","_menu_item_type","post_type"),
("519","291","_menu_item_menu_item_parent","37"),
("520","291","_menu_item_object_id","275"),
("521","291","_menu_item_object","page"),
("522","291","_menu_item_target",""),
("523","291","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("524","291","_menu_item_xfn",""),
("525","291","_menu_item_url",""),
("529","300","_edit_last","1"),
("530","300","_edit_lock","1551154169:1"),
("531","300","_footer","normal"),
("532","300","_wp_page_template","page-right-sidebar.php"),
("533","302","_edit_last","1"),
("534","302","_edit_lock","1551154186:1"),
("535","302","_footer","normal"),
("536","302","_wp_page_template","page-right-sidebar.php"),
("537","304","_edit_last","1"),
("538","304","_edit_lock","1551154208:1"),
("539","304","_footer","normal"),
("540","304","_wp_page_template","page-right-sidebar.php"),
("541","306","_edit_last","1"),
("542","306","_edit_lock","1551154233:1"),
("543","306","_footer","normal"),
("544","306","_wp_page_template","page-right-sidebar.php"),
("545","308","_edit_last","1"),
("546","308","_edit_lock","1551154255:1"),
("547","308","_footer","normal"),
("548","308","_wp_page_template","page-right-sidebar.php"),
("549","310","_edit_last","1"),
("550","310","_edit_lock","1551154273:1"),
("551","310","_footer","normal"),
("552","310","_wp_page_template","page-right-sidebar.php"),
("553","312","_menu_item_type","custom"),
("554","312","_menu_item_menu_item_parent","0"),
("555","312","_menu_item_object_id","312"),
("556","312","_menu_item_object","custom");
INSERT INTO bz_postmeta VALUES
("557","312","_menu_item_target",""),
("558","312","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("559","312","_menu_item_xfn",""),
("560","312","_menu_item_url","#"),
("562","313","_menu_item_type","post_type"),
("563","313","_menu_item_menu_item_parent","312"),
("564","313","_menu_item_object_id","310"),
("565","313","_menu_item_object","page"),
("566","313","_menu_item_target",""),
("567","313","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("568","313","_menu_item_xfn",""),
("569","313","_menu_item_url",""),
("571","314","_menu_item_type","post_type"),
("572","314","_menu_item_menu_item_parent","312"),
("573","314","_menu_item_object_id","308"),
("574","314","_menu_item_object","page"),
("575","314","_menu_item_target",""),
("576","314","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("577","314","_menu_item_xfn",""),
("578","314","_menu_item_url",""),
("580","315","_menu_item_type","post_type"),
("581","315","_menu_item_menu_item_parent","312"),
("582","315","_menu_item_object_id","306"),
("583","315","_menu_item_object","page"),
("584","315","_menu_item_target",""),
("585","315","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("586","315","_menu_item_xfn",""),
("587","315","_menu_item_url",""),
("589","316","_menu_item_type","post_type"),
("590","316","_menu_item_menu_item_parent","312"),
("591","316","_menu_item_object_id","304"),
("592","316","_menu_item_object","page"),
("593","316","_menu_item_target",""),
("594","316","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("595","316","_menu_item_xfn",""),
("596","316","_menu_item_url",""),
("598","317","_menu_item_type","post_type"),
("599","317","_menu_item_menu_item_parent","312"),
("600","317","_menu_item_object_id","302"),
("601","317","_menu_item_object","page"),
("602","317","_menu_item_target",""),
("603","317","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("604","317","_menu_item_xfn",""),
("605","317","_menu_item_url",""),
("607","318","_menu_item_type","post_type"),
("608","318","_menu_item_menu_item_parent","312"),
("609","318","_menu_item_object_id","300"),
("610","318","_menu_item_object","page"),
("611","318","_menu_item_target",""),
("612","318","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("613","318","_menu_item_xfn",""),
("614","318","_menu_item_url",""),
("616","320","_edit_last","1"),
("617","320","_edit_lock","1551155467:1"),
("618","320","_footer","normal"),
("619","320","_wp_page_template","page-right-sidebar.php"),
("636","346","_edit_last","1"),
("637","346","_edit_lock","1551155142:1"),
("638","347","_wp_attached_file","2019/02/post6.jpg"),
("639","347","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:418;s:4:\"file\";s:17:\"2019/02/post6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post6-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("640","346","_thumbnail_id","347"),
("643","350","_wp_attached_file","2019/02/B1.jpg"),
("644","350","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:372;s:4:\"file\";s:14:\"2019/02/B1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"B1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"B1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("645","349","_edit_last","1"),
("646","349","_thumbnail_id","350"),
("649","349","_edit_lock","1551155169:1"),
("650","1","_edit_lock","1551155189:1"),
("651","1","_edit_last","1"),
("652","1","_thumbnail_id","104"),
("655","353","_edit_last","1"),
("656","353","_edit_lock","1551155260:1"),
("657","354","_wp_attached_file","2019/02/post87.jpg"),
("658","354","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:249;s:4:\"file\";s:18:\"2019/02/post87.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post87-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post87-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("659","353","_thumbnail_id","354"),
("662","356","_edit_last","1"),
("663","356","_edit_lock","1551156553:1"),
("664","357","_wp_attached_file","2019/02/tang-qua-hs-gioi.jpg"),
("665","357","_wp_attachment_metadata","a:5:{s:5:\"width\";i:418;s:6:\"height\";i:283;s:4:\"file\";s:28:\"2019/02/tang-qua-hs-gioi.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tang-qua-hs-gioi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tang-qua-hs-gioi-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("666","356","_thumbnail_id","357"),
("676","365","_edit_last","1"),
("677","365","_edit_lock","1551155509:1"),
("695","365","_thumbnail_id",""),
("747","402","_edit_last","1"),
("748","402","_edit_lock","1551156836:1"),
("749","402","_footer","normal"),
("750","402","_wp_page_template","page-right-sidebar.php"),
("753","406","_menu_item_type","post_type"),
("754","406","_menu_item_menu_item_parent","0"),
("755","406","_menu_item_object_id","402"),
("756","406","_menu_item_object","page"),
("757","406","_menu_item_target",""),
("758","406","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("759","406","_menu_item_xfn",""),
("760","406","_menu_item_url",""),
("762","407","_edit_last","1"),
("763","407","_edit_lock","1551157205:1"),
("764","407","_footer","normal"),
("765","407","_wp_page_template","page-right-sidebar.php"),
("767","410","_wp_attached_file","2019/02/tl1-jpg-20140923132943hXdVHmV5D.jpg"),
("768","410","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:43:\"2019/02/tl1-jpg-20140923132943hXdVHmV5D.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"tl1-jpg-20140923132943hXdVHmV5D-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"tl1-jpg-20140923132943hXdVHmV5D-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("769","413","_wp_attached_file","2019/02/6.jpg"),
("770","413","_wp_attachment_metadata","a:5:{s:5:\"width\";i:477;s:6:\"height\";i:283;s:4:\"file\";s:13:\"2019/02/6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("771","418","_wp_attached_file","2019/02/bong-da-jpg-jpg-201308200927446VEm233lJV.jpg"),
("772","418","_wp_attachment_metadata","a:5:{s:5:\"width\";i:346;s:6:\"height\";i:236;s:4:\"file\";s:52:\"2019/02/bong-da-jpg-jpg-201308200927446VEm233lJV.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"bong-da-jpg-jpg-201308200927446VEm233lJV-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"bong-da-jpg-jpg-201308200927446VEm233lJV-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("773","420","_wp_attached_file","2019/02/tv1-1.jpg"),
("774","420","_wp_attachment_metadata","a:5:{s:5:\"width\";i:213;s:6:\"height\";i:152;s:4:\"file\";s:17:\"2019/02/tv1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tv1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("775","430","_menu_item_type","post_type"),
("776","430","_menu_item_menu_item_parent","0"),
("777","430","_menu_item_object_id","407"),
("778","430","_menu_item_object","page"),
("779","430","_menu_item_target",""),
("780","430","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("781","430","_menu_item_xfn",""),
("782","430","_menu_item_url",""),
("793","438","_wp_attached_file","2019/02/icon.png"),
("794","438","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2019/02/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("795","438","_edit_lock","1551159205:1"),
("796","439","_wp_attached_file","2019/02/phone-icon.png"),
("797","439","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:22:\"2019/02/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("798","439","_edit_lock","1551159202:1"),
("799","440","_wp_attached_file","2019/02/slider2-1.jpg"),
("800","440","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2019/02/slider2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider2-1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider2-1-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider2-1-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("862","472","_wp_attached_file","2019/02/logo-giuseart.png"),
("863","472","_wp_attachment_metadata","a:5:{s:5:\"width\";i:252;s:6:\"height\";i:74;s:4:\"file\";s:25:\"2019/02/logo-giuseart.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x74.png\";s:5:\"width\";i:150;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("864","473","_wp_attached_file","2019/02/cropped-logo-giuseart.png"),
("865","473","_wp_attachment_context","site-icon"),
("866","473","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2019/02/cropped-logo-giuseart.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo-giuseart-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("873","492","_wp_trash_meta_status","publish"),
("874","492","_wp_trash_meta_time","1557133520"),
("875","493","_wp_attached_file","2019/05/dichvubaove.png"),
("876","493","_wp_attachment_metadata","a:5:{s:5:\"width\";i:252;s:6:\"height\";i:74;s:4:\"file\";s:23:\"2019/05/dichvubaove.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dichvubaove-150x74.png\";s:5:\"width\";i:150;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("877","494","_wp_trash_meta_status","publish"),
("878","494","_wp_trash_meta_time","1557137514");




CREATE TABLE `bz_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-02-25 10:34:46","2019-02-25 10:34:46","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2019-02-26 11:28:52","2019-02-26 04:28:52","","0","https://tppone.com/demo/dichvubaove/?p=1","0","post","","1"),
("2","1","2019-02-25 10:34:46","2019-02-25 10:34:46","Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"https://bizhostvn.com/w/dichvubaove/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2019-02-25 10:34:46","2019-02-25 10:34:46","","0","https://tppone.com/demo/dichvubaove/?page_id=2","0","page","","0"),
("3","1","2019-02-25 10:34:46","2019-02-25 10:34:46","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/dichvubaove.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-02-25 10:34:46","2019-02-25 10:34:46","","0","https://tppone.com/demo/dichvubaove/?page_id=3","0","page","","0"),
("21","1","2019-02-26 09:08:01","2019-02-26 02:08:01","","logo-dich-vu-bao-ve","","inherit","open","closed","","logo-dich-vu-bao-ve","","","2019-02-26 09:08:01","2019-02-26 02:08:01","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/logo-dich-vu-bao-ve.png","0","attachment","image/png","0"),
("22","1","2019-02-26 09:08:09","2019-02-26 02:08:09","https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/02/cropped-logo-dich-vu-bao-ve.png","cropped-logo-dich-vu-bao-ve.png","","inherit","open","closed","","cropped-logo-dich-vu-bao-ve-png","","","2019-02-26 09:08:09","2019-02-26 02:08:09","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/cropped-logo-dich-vu-bao-ve.png","0","attachment","image/png","0"),
("30","1","2019-02-26 09:11:33","2019-02-26 02:11:33","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]
("32","1","2019-02-26 09:11:39","2019-02-26 02:11:39","<div class=\"page-header\">
("34","1","2019-02-26 09:11:55","2019-02-26 02:11:55","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,
("36","1","2019-02-26 09:14:12","2019-02-26 02:14:12","","Liên hệ<br /><note>Contact</note>","","publish","closed","closed","","lien-hecontact","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=36","18","nav_menu_item","","0"),
("37","1","2019-02-26 09:14:12","2019-02-26 02:14:12","","Giới thiệu<br /><note>Introduction</note>","","publish","closed","closed","","gioi-thieuintroduction","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=37","2","nav_menu_item","","0"),
("38","1","2019-02-26 09:14:12","2019-02-26 02:14:12","","Trang chủ<br /><note>Home</note>","","publish","closed","closed","","trang-chuhome","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=38","1","nav_menu_item","","0"),
("41","1","2019-02-26 09:14:12","2019-02-26 02:14:12","","Tin tức<br /><note>News</note>","","publish","closed","closed","","tin-tucnews","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=41","15","nav_menu_item","","0"),
("91","1","2019-02-26 09:47:00","2019-02-26 02:47:00","","slider2","","inherit","open","closed","","slider2","","","2019-02-26 09:47:00","2019-02-26 02:47:00","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/slider2.jpg","0","attachment","image/jpeg","0"),
("93","1","2019-02-26 09:49:14","2019-02-26 02:49:14","","bg","","inherit","open","closed","","bg","","","2019-02-26 09:49:14","2019-02-26 02:49:14","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/bg.jpg","0","attachment","image/jpeg","0"),
("97","1","2019-02-26 09:50:22","2019-02-26 02:50:22","","codinh","","inherit","open","closed","","codinh","","","2019-02-26 09:50:22","2019-02-26 02:50:22","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/codinh.jpg","0","attachment","image/jpeg","0"),
("101","1","2019-02-26 09:51:07","2019-02-26 02:51:07","","kcn","","inherit","open","closed","","kcn","","","2019-02-26 09:51:07","2019-02-26 02:51:07","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/kcn.jpg","0","attachment","image/jpeg","0"),
("104","1","2019-02-26 09:51:54","2019-02-26 02:51:54","","VIP","","inherit","open","closed","","vip","","","2019-02-26 09:51:54","2019-02-26 02:51:54","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/VIP.jpg","0","attachment","image/jpeg","0"),
("107","1","2019-02-26 09:52:18","2019-02-26 02:52:18","","ddong","","inherit","open","closed","","ddong","","","2019-02-26 09:52:18","2019-02-26 02:52:18","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/ddong.jpg","0","attachment","image/jpeg","0"),
("109","1","2019-02-26 09:52:52","2019-02-26 02:52:52","","nds","","inherit","open","closed","","nds","","","2019-02-26 09:52:52","2019-02-26 02:52:52","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/nds.png","0","attachment","image/png","0"),
("153","1","2019-02-26 10:10:25","2019-02-26 03:10:25","","contact-icon-man","","inherit","open","closed","","contact-icon-man","","","2019-02-26 10:10:25","2019-02-26 03:10:25","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/contact-icon-man.png","0","attachment","image/png","0"),
("159","1","2019-02-26 10:11:58","2019-02-26 03:11:58","","icon-contact","","inherit","open","closed","","icon-contact","","","2019-02-26 10:11:58","2019-02-26 03:11:58","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/icon-contact.png","0","attachment","image/png","0"),
("171","1","2019-02-26 10:14:14","2019-02-26 03:14:14","","bannervi (1)","","inherit","open","closed","","bannervi-1","","","2019-02-26 10:14:14","2019-02-26 03:14:14","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/bannervi-1.png","0","attachment","image/png","0"),
("176","1","2019-02-26 10:17:30","2019-02-26 03:17:30","Cùng với việc đẩy mạnh công tác <strong>tuyển dụng</strong> nhân sự, chính sách đào tạo và đào tạo thương xuyên của <strong>Bảo vệ Ngày &amp; Đêm</strong> được duy trì đều đặn góp phần nâng cao chất lượng dịch vụ bảo vệ đạp ứng được như cầu ngày càng cao của khách hàng.
("178","1","2019-02-26 10:17:27","2019-02-26 03:17:27","","post1","","inherit","open","closed","","post1","","","2019-02-26 10:17:27","2019-02-26 03:17:27","","176","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post1.jpg","0","attachment","image/jpeg","0"),
("180","1","2019-02-26 10:18:25","2019-02-26 03:18:25","Nhu cầu tuyển dụng lao động trong những ngày đầu năm đang trở nên nhộn nhịp tại Bảo vệ Ngày &amp; Đêm, theo đó đây là cơ hội tốt để người lao động tìm kiếm cho mình một công việc tốt mà ưu điểm khi làm việc tại Bảo vệ Ngày &amp; Đêm là thu nhập và công việc ổn định.
("181","1","2019-02-26 10:18:22","2019-02-26 03:18:22","","post2","","inherit","open","closed","","post2","","","2019-02-26 10:18:22","2019-02-26 03:18:22","","180","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post2.jpg","0","attachment","image/jpeg","0"),
("183","1","2019-02-26 10:19:22","2019-02-26 03:19:22","TP.HCM và các tỉnh phía nào hiện đang trong mùa khô, những ngày trước, trong và sau Tết Nguyên đán được xem là cao điểm với nguy cơ cháy nổ.
("184","1","2019-02-26 10:19:20","2019-02-26 03:19:20","","post3","","inherit","open","closed","","post3","","","2019-02-26 10:19:20","2019-02-26 03:19:20","","183","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post3.jpg","0","attachment","image/jpeg","0"),
("195","1","2019-02-26 10:23:04","2019-02-26 03:23:04","","world-template","","inherit","open","closed","","world-template","","","2019-02-26 10:23:04","2019-02-26 03:23:04","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/world-template.png","0","attachment","image/png","0"),
("211","1","2019-02-26 10:31:38","2019-02-26 03:31:38","Ngày 29/01/2019 Bảo vệ Ngày &amp; Đêm triển khai hợp đồng cung cấp dịch vị bảo vệ chuyên nghiệp cho Tập Đoàn Con Cò Vàng Hi-Tec (KCN Gò Dầu, Long Thành, Đồng Nai)
("212","1","2019-02-26 10:31:36","2019-02-26 03:31:36","","post4","","inherit","open","closed","","post4","","","2019-02-26 10:31:36","2019-02-26 03:31:36","","211","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post4.jpg","0","attachment","image/jpeg","0"),
("214","1","2019-02-26 10:32:42","2019-02-26 03:32:42","Ngày 24/01/2019 Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày &amp; Đêm tại Tây Ninh (Bảo vệ Ngày &amp; Đêm Tây Ninh) tổ chức tổng kết thi đua năm 2018.
("215","1","2019-02-26 10:32:39","2019-02-26 03:32:39","","post5","","inherit","open","closed","","post5","","","2019-02-26 10:32:39","2019-02-26 03:32:39","","214","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post5.jpg","0","attachment","image/jpeg","0"),
("239","1","2019-02-26 10:44:25","2019-02-26 03:44:25","[section label=\"Thông tin dn và khách hàng\" class=\"thong-tin\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Thông tin doanh nghiệp &amp; khách hàng\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"3\" posts=\"7\" show_date=\"false\" excerpt_length=\"12\" image_height=\"56.25%\" image_radius=\"4\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Chi nhánh\" bg_color=\"rgb(0, 139, 198)\" class=\"chi-nhanh\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\"]\n\n[title style=\"center\" text=\"Chi nhánh bảo vệ ngày và đêm\" tag_name=\"h2\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Hà Nội</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0908355441\" href=\"tel: 0908355441\" rel=\"alternate\">Anh Thanh - 0908.355.441</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloakd4ea6204944bd44eb569db9b915b7895\"><a style=\"color: #ffffff;\" href=\"mailto:nds.hanoi@nightdaysecurity.com\">nds.hanoi@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><span style=\"font-size: 105%;\"><strong>Chi Nhánh Miền Trung</strong> (Nghệ An) </span><br /></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0909.038.327\" href=\"tel: 0909.038.327\" rel=\"alternate\">Anh Trường - 0909.038.327</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloake99e91ab67fdcbb07aeb897a7a3a59a2\"><a style=\"color: #ffffff;\" href=\"mailto:nds.nghean@nightdaysecurity.com\">nds.nghean@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Huế</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"Anh Thơi 0906.402.016\" href=\"tel:%200906.402.016\" rel=\"alternate\">Anh Thơi  - 0906.402.016</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak79accf69660f24fd4559169d92aedfb6\"><a style=\"color: #ffffff;\" href=\"mailto:nds.hue@nightdaysecurity.com\">nds.hue@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Đà Nẵng</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0903.516.829\" href=\"tel: 0903.516.829\" rel=\"alternate\">Anh Chiến - 0903.516.829</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak8555cb9276653504e28d919c1ed67ddb\"><a style=\"color: #ffffff;\" href=\"mailto:nds.danang@nightdaysecurity.com\">nds.danang@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Đồng Nai</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0918.258.505\" href=\"tel: 0918.258.505\" rel=\"alternate\">Anh Hà - 0918.258.505</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak639c522319ce8a756c9fee4513f7ea3c\"><a style=\"color: #ffffff;\" href=\"mailto:nds.dongnai@nightdaysecurity.com\">nds.dongnai@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Thanh Hóa</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0918.258.505\" href=\"tel: 0918.258.505\" rel=\"alternate\">Anh Tùng - 0977.811.464</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloakc722890f26b2592e822c2a5464a22237\"><a style=\"color: #ffffff;\" href=\"mailto:nds.dongnai@nightdaysecurity.com\">nds.thanhhoa@nightdaysecurity.com</a></span></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Tây Ninh </span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0908.066.485\" href=\"tel: 0908.066.485\" rel=\"alternate\">Anh Tú - 0908.066.485</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak64ba884dfe5efa4db08b408420aee3ef\"><a style=\"color: #ffffff;\" href=\"mailto:nds.tayninh@nightdaysecurity.com\">nds.tayninh@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Thủ Đức<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0913.381.599\" href=\"tel: 0913.381.599\" rel=\"alternate\">Anh Hải - 0913.381.599</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloakff964cd74e2b61a655723daeb9fd8284\"><a style=\"color: #ffffff;\" href=\"mailto:nds.thuduc@nightdaysecurity.com\">nds.thuduc@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi Nhánh Vũng Tàu<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0907.179.122\" href=\"tel: 0907.179.122\" rel=\"alternate\">Anh Thành - 0907.179.122</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloake99855835ecb65d8c3815f6e8aef0168\"><a style=\"color: #ffffff;\" href=\"mailto:nds.vungtau@nightdaysecurity.com\">nds.vungtau@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi Nhánh Mỹ Phước - Bình Dương<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0906.900.041\" href=\"tel: 0906.900.041\" rel=\"alternate\">Anh Sàng - 0906.900.041</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak1ccce1a87ea6db64eba7a8c0fd200586\"><a style=\"color: #ffffff;\" href=\"mailto:nds.myphuoc@nightdaysecurity.com\">nds.myphuoc@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Bình Phước<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0906.900.041\" href=\"tel: 0906.900.041\" rel=\"alternate\">Anh Sàng - 0906.900.041</a><br /><span id=\"cloak7b723ffe3cb024a67584deafffc8c6a9\"><a style=\"color: #ffffff;\" href=\"mailto:nds.myphuoc@nightdaysecurity.com\">nds.myphuoc@nightdaysecurity.com</a></span></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Đắk Lắk<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0906.900.041\" href=\"tel: 0906.900.041\" rel=\"alternate\">Anh Mạnh - 0969.318.790</a><br /><span id=\"cloaka3184fd5ea79e55b0a1579353b87fb2f\"><a style=\"color: #ffffff;\" href=\"mailto:nds.myphuoc@nightdaysecurity.com\">Webdemo@gmail.com</a></span></span></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Thuận An - Bình Dương<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0919.088.383\" href=\"tel: 0919.088.383\" rel=\"alternate\">Ms. Thuý - 0919.088.383</a></span></span><br /><span id=\"cloakaab11af1474970e17602a7eef66eeac0\" style=\"font-size: 95%; color: #ffffff;\"><a style=\"color: #ffffff;\" href=\"mailto:binhduong-office@nightdaysecurity.com\">binhduong-office@nightdaysecurity.com</a></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Tân Bình<br /></strong></span><span style=\"font-size: 95%;\">Anh Hải - 0936.154.215 </span></span><br /><span id=\"cloak16ecef7a52ecc1985f7d24c0762cdb9c\" style=\"font-size: 95%; color: #ffffff;\"><a style=\"color: #ffffff;\" href=\"mailto:hai.le@nightdaysecurity.com\">hai.le@nightdaysecurity.com</a></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi Nhánh Long An<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0908.804.145\" href=\"tel: 0908.804.145\" rel=\"alternate\">Anh Dũng - 0908.804.145</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak0b77168f82d03ac43d631d51e9fef596\"><a style=\"color: #ffffff;\" href=\"mailto:nds.longan@nightdaysecurity.com\">nds.longan@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi Nhánh Cần Thơ<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0907.334.995\" href=\"tel: 0907.334.995\" rel=\"alternate\">Anh Trí - 0907.334.995</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloakc6984316dcb2968946db0ed0653f46ab\"><a style=\"color: #ffffff;\" href=\"mailto:nds.cantho@nightdaysecurity.com\">nds.cantho@nightdaysecurity.com</a></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 105%;\"><strong>Chi nhánh Đông Sài Gòn<br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0982.992.720\" href=\"tel: 0982.992.720\" rel=\"alternate\">Anh Dũng - 0982.992.720</a><br /><span id=\"cloak301fee9b57e42f3871f76c7bbfa9601f\"><a style=\"color: #ffffff;\" href=\"mailto:nds.saigon@nightdaysecurity.com\">nds.saigon@nightdaysecurity.com</a></span></span></span></p>\n<p><span style=\"color: #ffffff;\"><span style=\"font-size: 95%;\"><strong><span style=\"font-size: 105%;\">Chi Nhánh Ninh Bình</span><br /></strong></span><span style=\"font-size: 95%;\"><a style=\"color: #ffffff;\" title=\"0918.258.505\" href=\"tel: 0918.258.505\" rel=\"alternate\">Anh Tùng - 0937.539.659</a></span></span><br /><span style=\"font-size: 95%; color: #ffffff;\"><span id=\"cloak80cb0aed93808125608d4e2eed0fbe76\"><a style=\"color: #ffffff;\" href=\"mailto:nds.dongnai@nightdaysecurity.com\">nds.thanhhoa@nightdaysecurity.com</a></span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Footer section\" class=\"footer-section\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\"]\n\n<div class=\"row-19_1 wow fadeInLeft animated animated\">\n<div class=\"moduletable\">\n<div class=\"custom\">\n<h4><span style=\"color: #000000; font-size: 90%;\">CÔNG TY TNHH DỊCH VỤ BẢO VỆ NGÀY &amp; ĐÊM</span></h4>\n<ul>\n<li><span style=\"color: #282828; font-size: 85%;\">Địa chỉ ĐKKD: 600 Cộng Hòa, Phường 13, Quận Tân Bình, TP. HCM</span></li>\n<li><span style=\"color: #282828; font-size: 85%;\">Giấy xác nhận Đủ điều kiện về ANTT để kinh doanh dịch vụ Bảo vệ:</span></li>\n<li><span style=\"color: #282828; font-size: 85%;\">* Số: 44/GXN | Ngày cấp: 27/06/2011</span></li>\n<li><span style=\"color: #282828; font-size: 85%;\">* Nơi cấp: Cục Cảnh Sát QLHC về TTXH - Tổng cục Cảnh Sát - Bộ Công An</span></li>\n<li><span style=\"color: #282828; font-size: 85%;\">* Mã số thuế: 0303023616. Ngày cấp 12/08/2003. Nơi cấp: Sở KH&amp;ĐT Tp.HCM</span></li>\n<li><span style=\"color: #282828; font-size: 85%;\">* Người đại diện: Ông Lưu Xuân Tuệ</span></li>\n</ul>\n<p><span style=\"color: #000000; font-size: 90%;\"><strong>VĂN PHÒNG CHÍNH QUẬN 2 - TP.HCM: </strong></span></p>\n<ul>\n<li><span style=\"font-size: 85%; color: #282828;\">Địa chỉ: Số 7 Đường 7, Khu phố 5, Phường An Phú, Quận 2, Tp. HCM</span></li>\n<li><span style=\"font-size: 85%; color: #282828;\">Hotline: 0906 937 276 - Mr. Trần Viết Lâm - P. Tổng Giám Đốc</span></li>\n<li><span style=\"font-size: 85%; color: #282828;\">Điện thoại: (028) 2253 5 426 / 2253 6 426 - Fax: (028) 2253 5 427</span></li>\n<li><span style=\"font-size: 85%; color: #282828;\">Email: Webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 85%; color: #282828;\">Website: webdemo.com</span></li>\n</ul>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n<ul class=\"nav menu\">\n<li class=\"item-161\"><a href=\"https://Webdemo.com\">Chính sách và quy định chung<br />\n</a></li>\n<li class=\"item-159\"><a href=\"https://Webdemo.com\">Chính sách bảo mật thông tin<br />\n</a></li>\n<li class=\"item-160\"><a href=\"https://Webdemo.com\">Chính sách cam kết chất lượng dịch vụ, bảo hành, bảo trì<br />\n</a></li>\n<li class=\"item-162\"><a href=\"https://Webdemo.com\">Chính sách thanh lý, đổi trả, hoàn tiền<br />\n</a></li>\n<li class=\"item-163\"><a href=\"https://Webdemo.com\">Chính sách vận chuyển - giao nhận - cài đặt<br />\n</a></li>\n<li class=\"item-164\"><a href=\"https://Webdemo.com\">Quy định và hình thức thanh toán</a></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","publish","closed","closed","","footer-section","","","2019-02-26 11:00:30","2019-02-26 04:00:30","","0","https://tppone.com/demo/dichvubaove/?post_type=blocks&#038;p=239","0","blocks","","0"),
("255","1","2019-02-26 10:53:11","2019-02-26 03:53:11","","ndspro","","inherit","open","closed","","ndspro","","","2019-02-26 10:53:11","2019-02-26 03:53:11","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/ndspro.png","0","attachment","image/png","0"),
("256","1","2019-02-26 10:53:32","2019-02-26 03:53:32","","SG","","inherit","open","closed","","sg","","","2019-02-26 10:53:32","2019-02-26 03:53:32","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/SG.png","0","attachment","image/png","0"),
("257","1","2019-02-26 10:53:39","2019-02-26 03:53:39","","PL","","inherit","open","closed","","pl","","","2019-02-26 10:53:39","2019-02-26 03:53:39","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/PL.png","0","attachment","image/png","0"),
("275","1","2019-02-26 11:04:34","2019-02-26 04:04:34","<div class=\"page-header\">
("278","1","2019-02-26 11:05:27","2019-02-26 04:05:27","<div class=\"page-header\">
("281","1","2019-02-26 11:06:10","2019-02-26 04:06:10","<h2>BẢN SẮC VĂN HÓA</h2>
("283","1","2019-02-26 11:07:44","2019-02-26 04:07:44","<h3>1. Công tác lập phương án bảo vệ:</h3>
("285","1","2019-02-26 11:08:15","2019-02-26 04:08:15","<img class=\"aligncenter\" src=\"https://baovengayvadem.com/images/Lam-viec-voi-Global-Guardian.jpg\" alt=\"\" width=\"654\" height=\"442\" />
("287","1","2019-02-26 11:08:51","2019-02-26 04:08:51"," ","","","publish","closed","closed","","287","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=287","7","nav_menu_item","","0"),
("288","1","2019-02-26 11:08:51","2019-02-26 04:08:51"," ","","","publish","closed","closed","","288","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=288","6","nav_menu_item","","0"),
("289","1","2019-02-26 11:08:51","2019-02-26 04:08:51"," ","","","publish","closed","closed","","289","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=289","5","nav_menu_item","","0"),
("290","1","2019-02-26 11:08:51","2019-02-26 04:08:51"," ","","","publish","closed","closed","","290","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=290","4","nav_menu_item","","0"),
("291","1","2019-02-26 11:08:51","2019-02-26 04:08:51"," ","","","publish","closed","closed","","291","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=291","3","nav_menu_item","","0"),
("300","1","2019-02-26 11:11:48","2019-02-26 04:11:48","<h1><strong>Bảo vệ mục tiêu cố định</strong></h1>
("302","1","2019-02-26 11:12:07","2019-02-26 04:12:07","<h1>DỊCH VỤ BẢO VỆ YẾU NHÂN - VIP</h1>
("304","1","2019-02-26 11:12:27","2019-02-26 04:12:27","<div class=\"page-header\">
("306","1","2019-02-26 11:12:54","2019-02-26 04:12:54","<strong>Bảo vệ mục tiêu di động</strong>
("308","1","2019-02-26 11:13:15","2019-02-26 04:13:15","<h1>BẢO VỆ KHU CÔNG NGHIỆP</h1>
("310","1","2019-02-26 11:13:35","2019-02-26 04:13:35","<h1><strong>DỊCH VỤ BẢO VỆ CHẤT LƯỢNG CAO NDS PRO
("312","1","2019-02-26 11:14:29","2019-02-26 04:14:29","","Dịch vụ<br /><note>Services</note>","","publish","closed","closed","","dich-vuservices-2","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=312","8","nav_menu_item","","0"),
("313","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","313","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=313","9","nav_menu_item","","0"),
("314","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","314","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=314","10","nav_menu_item","","0"),
("315","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","315","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=315","11","nav_menu_item","","0"),
("316","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","316","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=316","12","nav_menu_item","","0"),
("317","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","317","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=317","13","nav_menu_item","","0"),
("318","1","2019-02-26 11:14:29","2019-02-26 04:14:29"," ","","","publish","closed","closed","","318","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=318","14","nav_menu_item","","0"),
("320","1","2019-02-26 11:15:57","2019-02-26 04:15:57","","Tin tức","","publish","closed","closed","","tin-tuc","","","2019-02-26 11:33:29","2019-02-26 04:33:29","","0","https://tppone.com/demo/dichvubaove/?page_id=320","0","page","","0"),
("346","1","2019-02-26 11:27:48","2019-02-26 04:27:48","Một trong những niềm vui trước thềm 2019 của Bảo vệ Ngày &amp; Đêm là Giải thưởng “An toàn toàn diện” được Tập đoàn Netslé trao tặng, vì những đóng góp tích cực của Bảo vệ Ngày &amp; Đêm tại doanh nghiệp này.
("347","1","2019-02-26 11:27:38","2019-02-26 04:27:38","","post6","","inherit","open","closed","","post6","","","2019-02-26 11:27:38","2019-02-26 04:27:38","","346","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post6.jpg","0","attachment","image/jpeg","0"),
("349","1","2019-02-26 11:28:31","2019-02-26 04:28:31","<em><strong>Kính thưa toàn thể các đồng chí!</strong></em>
("350","1","2019-02-26 11:28:23","2019-02-26 04:28:23","","B1","","inherit","open","closed","","b1","","","2019-02-26 11:28:23","2019-02-26 04:28:23","","349","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/B1.jpg","0","attachment","image/jpeg","0"),
("353","1","2019-02-26 11:29:51","2019-02-26 04:29:51","Ngày 12/10/2018 tại Bình Dương, Chi nhánh Công ty TNHH Dịch vụ Bảo vệ Ngày &amp; Đêm tại Bình Dương, long trọng tổ chức Lễ kỷ niệm 10 năm ngày thành lập (01/10/2008 – 01/10/2018)
("354","1","2019-02-26 11:29:43","2019-02-26 04:29:43","","post87","","inherit","open","closed","","post87","","","2019-02-26 11:29:43","2019-02-26 04:29:43","","353","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/post87.jpg","0","attachment","image/jpeg","0"),
("356","1","2019-02-26 11:30:46","2019-02-26 04:30:46","Sáng 15/9/2018, Bảo vệ Ngày &amp; Đêm tại Bình Dương tổ chức tặng quà Trung thu cho con em cán bộ nhân viên đang làm việc tại đơn vị.
("357","1","2019-02-26 11:30:35","2019-02-26 04:30:35","","tang-qua-hs-gioi","","inherit","open","closed","","tang-qua-hs-gioi","","","2019-02-26 11:30:35","2019-02-26 04:30:35","","356","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/tang-qua-hs-gioi.jpg","0","attachment","image/jpeg","0"),
("365","1","2019-02-26 11:33:40","2019-02-26 04:33:40","[row style=\"small\" class=\"page-tin-tuc\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot1\"]\n\n<h2><span style=\"font-size: 90%; color: #000000;\">Bản tin bảo vệ ngày và đêm</span></h2>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"1\" show_date=\"false\" excerpt_length=\"46\" image_height=\"58%\" image_size=\"original\" image_overlay=\"rgba(241, 241, 241, 0.25)\" image_hover=\"overlay-add\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot2\"]\n\n<h3><span style=\"color: #000000;\">Tin nổi bật</span></h3>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"1\" offset=\"1\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"10\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" text_size=\"small\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"4\" offset=\"2\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"0px\" image_width=\"0\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n\n[/row]\n[row class=\"row-tin-tuc2\"]\n\n[col span__sm=\"12\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"2\" columns__md=\"1\" posts=\"4\" offset=\"6\" show_date=\"false\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.32)\" image_hover=\"overlay-add\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]","Before news","","publish","closed","closed","","before-news","","","2019-02-26 11:39:06","2019-02-26 04:39:06","","0","https://tppone.com/demo/dichvubaove/?post_type=blocks&#038;p=365","0","blocks","","0"),
("402","1","2019-02-26 11:55:31","2019-02-26 04:55:31","<div class=\"page-header\">
("406","1","2019-02-26 11:57:19","2019-02-26 04:57:19","","Tuyển dụng<br /><note>Recruitment</note>","","publish","closed","closed","","tuyen-dungrecruitment-2","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=406","16","nav_menu_item","","0"),
("407","1","2019-02-26 11:57:32","2019-02-26 04:57:32","<h2><span style=\"color: #000000;\">Một số hình ảnh của bảo vệ</span></h2>
("410","1","2019-02-26 11:58:33","2019-02-26 04:58:33","","tl1-jpg-20140923132943hXdVHmV5D","","inherit","open","closed","","tl1-jpg-20140923132943hxdvhmv5d","","","2019-02-26 11:58:33","2019-02-26 04:58:33","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/tl1-jpg-20140923132943hXdVHmV5D.jpg","0","attachment","image/jpeg","0"),
("413","1","2019-02-26 11:59:05","2019-02-26 04:59:05","","6","","inherit","open","closed","","6","","","2019-02-26 11:59:05","2019-02-26 04:59:05","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/6.jpg","0","attachment","image/jpeg","0"),
("418","1","2019-02-26 11:59:47","2019-02-26 04:59:47","","bong-da-jpg-jpg-201308200927446VEm233lJV","","inherit","open","closed","","bong-da-jpg-jpg-201308200927446vem233ljv","","","2019-02-26 11:59:47","2019-02-26 04:59:47","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/bong-da-jpg-jpg-201308200927446VEm233lJV.jpg","0","attachment","image/jpeg","0"),
("420","1","2019-02-26 12:00:09","2019-02-26 05:00:09","","tv1-1","","inherit","open","closed","","tv1-1","","","2019-02-26 12:00:09","2019-02-26 05:00:09","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/tv1-1.jpg","0","attachment","image/jpeg","0"),
("430","1","2019-02-26 12:02:51","2019-02-26 05:02:51","","Hình ảnh<br /><note>Images</note>","","publish","closed","closed","","hinh-anhimages-2","","","2019-02-26 12:02:51","2019-02-26 05:02:51","","0","https://tppone.com/demo/dichvubaove/?p=430","17","nav_menu_item","","0"),
("438","1","2019-02-26 12:06:22","2019-02-26 05:06:22","","icon","","inherit","open","closed","","icon","","","2019-02-26 12:06:22","2019-02-26 05:06:22","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/icon.png","0","attachment","image/png","0"),
("439","1","2019-02-26 12:06:45","2019-02-26 05:06:45","","phone-icon","","inherit","open","closed","","phone-icon","","","2019-02-26 12:06:45","2019-02-26 05:06:45","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/phone-icon.png","0","attachment","image/png","0"),
("440","1","2019-02-26 12:35:21","2019-02-26 05:35:21","","slider2","","inherit","open","closed","","slider2-2","","","2019-02-26 12:35:21","2019-02-26 05:35:21","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/slider2-1.jpg","0","attachment","image/jpeg","0"),
("472","1","2019-02-26 12:50:51","2019-02-26 05:50:51","","logo-giuseart","","inherit","open","closed","","logo-giuseart","","","2019-02-26 12:50:51","2019-02-26 05:50:51","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/logo-giuseart.png","0","attachment","image/png","0"),
("473","1","2019-02-26 12:50:58","2019-02-26 05:50:58","https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/02/cropped-logo-giuseart.png","cropped-logo-giuseart.png","","inherit","open","closed","","cropped-logo-giuseart-png","","","2019-02-26 12:50:58","2019-02-26 05:50:58","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/02/cropped-logo-giuseart.png","0","attachment","image/png","0"),
("476","1","2019-02-26 12:55:47","2019-02-26 05:55:47","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:55:47","2019-02-26 05:55:47","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("477","1","2019-02-26 12:56:05","2019-02-26 05:56:05","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-khu-cong-nghiep/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:56:05","2019-02-26 05:56:05","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("478","1","2019-02-26 12:56:26","2019-02-26 05:56:26","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-khu-cong-nghiep/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-muc-tieu-di-dong/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:56:26","2019-02-26 05:56:26","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("479","1","2019-02-26 12:56:41","2019-02-26 05:56:41","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-cac-su-kien-le-hoi/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-khu-cong-nghiep/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-muc-tieu-di-dong/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:56:41","2019-02-26 05:56:41","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("480","1","2019-02-26 12:56:56","2019-02-26 05:56:56","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-cac-su-kien-le-hoi/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-khu-cong-nghiep/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-yeu-nhan-vip/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-muc-tieu-di-dong/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:56:56","2019-02-26 05:56:56","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("481","1","2019-02-26 12:57:10","2019-02-26 05:57:10","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"91\" image_size=\"original\"]\n\n[ux_image id=\"440\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Dịch vụ\" bg=\"93\" bg_size=\"original\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Chúng tôi cung cấp các dịch vụ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"97\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-muc-tieu-co-dinh/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu cố định</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-cac-su-kien-le-hoi/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ các sự kiện, lễ hội</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"101\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-khu-cong-nghiep/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ khu công nghiệp</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"104\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-yeu-nhan-vip/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ yếu nhân, VIP</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"107\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-muc-tieu-di-dong/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Bảo vệ mục tiêu di động</h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"109\" img_width=\"265\" pos=\"center\" link=\"/dich-vu-bao-ve-chat-luong-cao/\" target=\"_blank\"]\n\n<h3 style=\"text-align: center;\">Dịch vụ bảo vệ chất lượng cao</h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao nên chọn\" padding=\"50px\" class=\"tai-sao\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn chúng tôi?\" color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\" class=\"cot1\"]\n\n[gap]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 95%;\">Chúng tôi tự hào là một trong những đơn vị cung cấp dịch vụ bảo vệ uy tín, chuyên nghiệp nhất Việt Nam.</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Hoạt động từ năm<br />\n</span><span style=\"font-size: 250%;\">2003<br />\n</span><span style=\"font-size: 120%;\">26 chi nhánh, văn phòng</span></span></p>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 120%;\">Quy mô hoạt động hơn<br />\n</span><span style=\"font-size: 250%;\">5000<br />\n</span><span style=\"font-size: 120%;\">nhân viên full-time, part-time</span></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<ol>\n<li><span style=\"font-size: 100%;\">Hình ảnh mạnh mẽ thân thiện, hiện đại cho khách hàng</span></li>\n<li><span style=\"font-size: 100%;\">Tác phong nhanh nhẹn, nghiệp vụ tinh thông</span></li>\n<li><span style=\"font-size: 100%;\">Quyền lợi của khách hàng là trách nhiệm của Ngày &amp; Đêm</span></li>\n<li><span style=\"font-size: 100%;\">Phí dịch vụ cạnh tranh hợp lý từ phổ thông đến cao cấp</span></li>\n<li><span style=\"font-size: 100%;\">Bảo hiểm trách nhiệm công cộng, bảo hiểm trách nhiệm 22 tỷ</span></li>\n<li><span style=\"font-size: 100%;\">Áp dụng hệ thống quản lý chất lượng DVBV theo tiêu chuẩn ISO 9001:2015</span></li>\n<li><span style=\"font-size: 100%;\">Hệ thống kiểm soát chất lượng liên tục 24h/7 </span></li>\n</ol>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tư vấn Hotline\" padding=\"50px\" class=\"tu-van\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3 style=\"text-align: center;\">Tư vấn dịch vụ bảo vệ tại trụ sở - Tp. Hồ Chí Minh</h3>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"153\" img_width=\"40\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 100%;\">Mr. Lâm - <span style=\"color: #ff0000;\">0906.937.276</span><br />\n<span id=\"cloak9548d77b6f3b3f1b431b919d0b1b1343\" style=\"color: #000000;\">lam.tran@nightdaysecurity.com</span></span></strong></p>\n\n[/featured_box]\n[gap height=\"19px\"]\n\n[featured_box img=\"159\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"color: #000000;\"><strong>Ms. Dung</strong> - <strong>0903 640 064</strong><strong><br />\n<span id=\"cloak4fcd19129f5e1259220d70d11870644b\">dung.tran@nightdaysecurity.com</span></strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n[ux_image id=\"171\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(0, 139, 198)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"3\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"64%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.38)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Videos\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=_52w0fhE62E\"]\n\n<h4 style=\"text-align: center;\"><span style=\"color: #ffffff;\">BẢO VỆ NGÀY &amp; ĐÊM ĐẨY MẠNH CÔNG TÁC PHÒNG NGỪA - PHÒNG CHỐNG CHÁY NỔ</span></h4>\n<p style=\"text-align: center;\"><span style=\"color: #fcfcfc;\">Hotline tư vấn:  - </span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","30-revision-v1","","","2019-02-26 12:57:10","2019-02-26 05:57:10","","30","https://tppone.com/demo/dichvubaove/2019/02/26/30-revision-v1/","0","revision","","0"),
("482","1","2019-02-26 12:57:27","2019-02-26 05:57:27","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]
("483","1","2019-02-26 12:57:56","2019-02-26 05:57:56","<div class=\"page-header\">
("484","1","2019-02-26 12:58:09","2019-02-26 05:58:09","<h3>1. Công tác lập phương án bảo vệ:</h3>
("485","1","2019-02-26 12:58:16","2019-02-26 05:58:16","<div class=\"page-header\">
("486","1","2019-02-26 12:58:25","2019-02-26 05:58:25","<img class=\"aligncenter\" src=\"https://baovengayvadem.com/images/Lam-viec-voi-Global-Guardian.jpg\" alt=\"\" width=\"654\" height=\"442\" />
("487","1","2019-02-26 12:58:32","2019-02-26 05:58:32","<div class=\"page-header\">
("488","1","2019-02-26 12:58:39","2019-02-26 05:58:39","<h2>BẢN SẮC VĂN HÓA</h2>
("492","1","2019-05-06 16:05:20","2019-05-06 09:05:20","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:05:20\"\n    }\n}","","","trash","closed","closed","","f599e677-98c6-4a03-87cd-c9db379a67f3","","","2019-05-06 16:05:20","2019-05-06 09:05:20","","0","https://tppone.com/demo/dichvubaove/2019/05/06/f599e677-98c6-4a03-87cd-c9db379a67f3/","0","customize_changeset","","0"),
("493","1","2019-05-06 17:11:08","2019-05-06 10:11:08","","dichvubaove","","inherit","open","closed","","dichvubaove","","","2019-05-06 17:11:08","2019-05-06 10:11:08","","0","https://tppone.com/demo/dichvubaove/wp-content/uploads/2019/05/dichvubaove.png","0","attachment","image/png","0"),
("494","1","2019-05-06 17:11:54","2019-05-06 10:11:54","{\n    \"dich-vu-bao-ve::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/dichvubaove/wp-content/uploads/2019/05/dichvubaove.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:11:54\"\n    }\n}","","","trash","closed","closed","","09ca85af-91ed-4a41-b159-dce67e815a6d","","","2019-05-06 17:11:54","2019-05-06 10:11:54","","0","https://tppone.com/demo/dichvubaove/2019/05/06/09ca85af-91ed-4a41-b159-dce67e815a6d/","0","customize_changeset","","0"),
("495","1","2019-05-13 09:29:54","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-13 09:29:54","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/dichvubaove/?p=495","0","post","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("36","5","0"),
("37","5","0"),
("38","5","0"),
("41","5","0"),
("176","3","0"),
("180","3","0"),
("183","3","0"),
("183","6","0"),
("183","7","0"),
("211","3","0"),
("214","3","0"),
("287","5","0"),
("288","5","0"),
("289","5","0"),
("290","5","0"),
("291","5","0"),
("312","5","0"),
("313","5","0"),
("314","5","0"),
("315","5","0"),
("316","5","0"),
("317","5","0"),
("318","5","0"),
("346","3","0"),
("346","8","0"),
("346","9","0"),
("349","3","0"),
("349","10","0"),
("353","3","0"),
("353","11","0"),
("353","12","0"),
("356","3","0"),
("356","13","0"),
("356","14","0"),
("406","5","0"),
("430","5","0");




CREATE TABLE `bz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","category","","0","0"),
("3","3","category","","0","9"),
("4","4","category","","0","0"),
("5","5","nav_menu","","0","18"),
("6","6","post_tag","","0","1"),
("7","7","post_tag","","0","1"),
("8","8","post_tag","","0","1"),
("9","9","post_tag","","0","1"),
("10","10","post_tag","","0","1"),
("11","11","post_tag","","0","1"),
("12","12","post_tag","","0","1"),
("13","13","post_tag","","0","1"),
("14","14","post_tag","","0","1");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Dịch vụ","dich-vu","0"),
("2","Tuyển dụng","tuyen-dung","0"),
("3","Tin tức","tin-tuc","0"),
("4","Hình ảnh","hinh-anh","0"),
("5","Main-menu","main-menu","0"),
("6","nguy cơ cháy nổ","nguy-co-chay-no","0"),
("7","cháy tại tphcm","chay-tai-tphcm","0"),
("8","nestle","nestle","0"),
("9","giải thưởng","giai-thuong","0"),
("10","tổng kết cuối năm","tong-ket-cuoi-nam","0"),
("11","khen thưởng\\","khen-thuong","0"),
("12","thành lập","thanh-lap","0"),
("13","trao học bổng","trao-hoc-bong","0"),
("14","học bổng","hoc-bong","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","webdemo.com"),
("2","1","first_name",""),
("3","1","last_name",""),
("4","1","description",""),
("5","1","rich_editing","true"),
("6","1","syntax_highlighting","true"),
("7","1","comment_shortcuts","false"),
("8","1","admin_color","fresh"),
("9","1","use_ssl","0"),
("10","1","show_admin_bar_front","true"),
("11","1","locale",""),
("12","1","bz_capabilities","a:1:{s:13:\"administrator\";b:1;}"),
("13","1","bz_user_level","10"),
("14","1","dismissed_wp_pointers","wp496_privacy,text_widget_custom_html,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:1:{s:64:\"f193d065ede9ad898b27ef70f6b507ad437252fe9b091d79389bfad14632dad9\";a:4:{s:10:\"expiration\";i:1557887390;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557714590;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","495"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557446826"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("25","1","nav_menu_recently_edited","5"),
("27","1","duplicator_pro_created_format","1");




CREATE TABLE `bz_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_users VALUES
("1","admin","$P$BxV4zlLac3FFedhYCrlE7BXtpAsAT91","admin","demobz@gmail.com","","2019-02-25 10:34:46","","0","admin");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;