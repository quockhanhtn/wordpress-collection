SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w167`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-04-15 03:36:16","2019-04-15 03:36:16","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/xkld4\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1553763772,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960719,\"initial_activation_timestamp\":1553763783,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1556976774,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/nhahang","yes"),
("2","home","https://bizhostvn.com/w/nhahang","yes"),
("3","blogname","Mẫu website nhà hàng - Thiết kế website Ninh Bình","yes"),
("4","blogdescription","Dịch vụ thiết kế web chuẩn SEO uy tín, cung cấp theme Wordpress dựng sẵn nhiều lĩnh vực và tối ưu cho mọi thiết bị","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","demo@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","30","yes"),
("13","rss_use_excerpt","0","yes"),
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("18","default_category","1","yes"),
("19","default_comment_status","open","yes"),
("20","default_ping_status","open","yes"),
("21","default_pingback_flag","1","yes"),
("22","posts_per_page","30","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("42","comment_whitelist","1","yes"),
("43","blacklist_keys","","no"),
("44","comment_registration","0","yes"),
("45","html_type","text/html","yes"),
("46","use_trackback","0","yes"),
("47","default_role","subscriber","yes"),
("48","db_version","44719","yes"),
("49","uploads_use_yearmonth_folders","1","yes"),
("50","upload_path","","yes"),
("51","blog_public","0","yes"),
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
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","24","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","11","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","1","yes"),
("93","initial_db_version","44719","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:1:{i:0;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1558186576;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558189728;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558193776;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558236989;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558236991;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558241572;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("125","can_compress_scripts","0","no"),
("138","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555299396;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("139","current_theme","Nhà hàng","yes"),
("140","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 15 Apr 2019 03:36:37 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555299413;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("141","theme_switched","","yes"),
("142","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:25:\"Có thể bạn quan tâm\";s:6:\"number\";i:8;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("143","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("145","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("146","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("147","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("148","flatsome_wup_buyer","trannguyen886","yes"),
("149","allowedthemes","a:1:{s:8:\"nha-hang\";b:1;}","no"),
("150","fl_has_child_theme","nha-hang","yes"),
("152","theme_mods_nha-hang","a:125:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"search\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:2:{i:0;s:3:\"nav\";i:1;s:8:\"button-1\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:1:{i:0;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;s:11:\"top_bar_nav\";i:4;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 15 Apr 2019 03:36:56 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:7:\"Lobster\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:19:\"Open Sans Condensed\";s:7:\"variant\";s:3:\"400\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:0;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:7:\"Lobster\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1778:\"<div class=\"float-contact\">\n<button class=\"chat-zalo\"><a href=\"http://zalo.me/0867592210\">Chat Zalo</a></button>\n<button class=\"chat-face\"><a href=\"http://m.me/moosun.vn\">Chat Facebook</a></button>\n<button class=\"hotline\"><a href=\"tel:0867592210\">Hotline: 0867592210</a></button>\n</div>\n<style>\n.hotline-footer{display:none}\n@media  (max-width: 767px) {\n.hotline-footer{display:block; position:fixed; bottom:0; width:100%; height:50px; z-index:99; background:rgba(0,0,0,0.6)}\n.hotline-footer .left{    width: 65%;\n    float: left;\n    height: 100%;\n    color: white;\n    line-height: 43px;\n    text-align: center;}\n.hotline-footer .right{    width: 35%;\n    float: right;\n    height: 100%;\n    line-height: 43px;\n    text-align: center;}.absolute-footer{font-size:13px}\n.blog-single .large-9, .blog-single .large-3{    flex-basis: 100%;\n max-width: 100%;}.blog-single .large-3{padding-left:15px; font-size:15px}\n \n.blog-single .large-3 .widget-area .section4{display:none}.tin-tuc-section .cot1-2{display:none}.hotline-footer a{color:white}\n.hotline-footer a{display:block;}.hotline-footer .left a{    background: #0082d0;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}.hotline-footer .right a{background: #3fb801;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}\n.hotline-footer .left img, .hotline-footer .right img{width:30px;    padding-right: 10px;}}\n</style><div class=\"hotline-footer\">\n<div class=\"left\">\n<a href=\"https://messenger.com/t/joseph.thien.75\" ><img src=\"/wp-content/uploads/2019/04/icon.png\"/>Chat với tư vấn viên</a>\n</div>\n<div class=\"right\">\n<a href=\"tel:0972939830\"><img src=\"/wp-content/uploads/2019/04/phone-icon-1.png\"/>Gọi ngay</a>\n</div>\n<div class=\"clearboth\"></div>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:8289:\".top-bar-nav li a{font-weight:normal; font-family:\"opens-san condensed\", sans-serif}\n.header-nav li a{    font-size: 20px;   padding: 0 5px; color:white !important}\n.header-main .header-nav{margin-top:0 !important}\n.header-main .searchform-wrapper input[type=\'search\']{height:42px}\n.form-flat .button.icon{    color: #d00000 !important;}\n.transparent .header-main:after{content: \"\";\n    float: left;\n    width: 100%;\n    height: 100%;\n    background-image: url(/wp-content/uploads/2019/04/bg-header.png);\n    background-repeat: repeat-x;\n    position: absolute;\n    top: 70px;\n    left: 0;\n    right: 0;\n    z-index: 9999999;opacity:0.81\n}\n.text-box-banner .text{border-radius:10px}\n.flickity-prev-next-button{width:50px}\n.flickity-prev-next-button svg{background: #000000b0;\n    border-radius: 99%;\n    width: 50px;\n    height: 50px;}\n.section-title-center span{       text-transform: none;\n    font-weight: normal;\n	font-size: 30px;}.section-title b{background-color: gray;}.section-title-container {\n    margin-bottom: 0;\n}\n.thuc-don-section .section-title-container {\n    margin-bottom: 0;\n}\n.tab-thuc-don ul li{margin:0 7px}\n.tab-thuc-don ul{margin-bottom:15px}\n.mon-an .post-item .box-image .image-cover{border-radius:15px}\n.tab-thuc-don ul li a{    background: gray;\n    text-transform: none;\n    font-weight: normal; color:white; padding: 0 20px;\n    font-size: 19px;\n     line-height: 35px;}\n.banner-thuc-don .img .img-inner>img{left: 0; border-radius:15px;\n}\n.tab-thuc-don ul li a:hover{background:#6f6f6f; color:white}\n.transparent #logo img {\n    max-height: 110px;\n    z-index: 99999999;\n    position: absolute;\n    top: 0;\n    background: #de0b0b;\n    padding: 10px;\n  \n    border-bottom-left-radius: 15px;\n    border-bottom-right-radius: 15px;\n    box-shadow: 2px 2px 15px #0000008f;\n\n}\n.header-button a{border-radius: 99px;\n    text-transform: none;\n    font-size: 17px !important;\n    line-height: 39px !important;\n    padding: 0 10px !important;}\n.mon-an .post-item .box-text{padding:0; padding-top:7px;}\n.mon-an .post-item .box-text .post-title{    font-size: 17px;\n    font-weight: bold;\n    font-family: \"Open Sans Condensed\", sans-serif;\n    color: #22860a;}\n.box-blog-post .is-divider{display:none}\n.gia-ban .value{    text-decoration: line-through;}\n.gia-km .value{color:red; font-size:17px;}\n.mon-an .post-item {padding-top:10px !important}\n.mon-an .post-item .col-inner{box-shadow: 0px 4px 20px #00000026;\n    padding: 15px 10px;\n    border-radius: 15px;\n}\n.thuc-don-section .flickity-prev-next-button svg, .bai-viet-huong-dan .flickity-prev-next-button svg{width: 40px;\n    height: 40px;color: white;}\n.tai-sao-section .icon-box{padding:10px; border-radius:10px}\n.tai-sao-section .icon-box:hover{background:#de0b0b}\n.ban-chay .post-item .col-inner{    padding: 10px;\n    box-shadow: 2px 2px 10px #00000026;\n    background: white;\n    border-radius: 10px;}\n.ban-chay .post-item .post-title{font-family: \"Open Sans Condensed\", sans-serif; font-size:16px; font-weight:bold; color:green}\n.ban-chay .large-12, .bai-viet-huong-dan .col{padding-bottom:0}\n.slider-nav-push:not(.slider-nav-reveal) .flickity-prev-next-button{margin-top:-2%}\n.ban-chay .post-item .box-text{padding:0; padding-top:10px}\n.ban-chay .post-item .box-image .image-cover{border-radius:10px}\n.thong-tin-lien-he .col{padding-bottom:0}\n.thong-tin-lien-he .icon-box h3{font-weight:normal; margin-bottom:0}\n.form-dat-ban{    padding: 15px;\n    text-align: center;\n    background: white;\n    border-radius: 10px;}\n.form-dat-ban .des{font-size:15px}\n.form-dat-ban .row-form{    display: inline-flex;\n    clear: both;}\n.form-dat-ban .row-form .left{width:50%; float:left; padding-right:7px}\n.form-dat-ban .row-form .right{width:50%; float:right; padding-left:7px}\n.form-dat-ban .row-form label{text-align:left}\n			input[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea, select, input[type=\'date\']{border-radius: 4px;\n    height: 35px;\n    font-size: 15px;\n    box-shadow: none;}\n.form-dat-ban input[type=\'submit\']{    margin: 0;\n    margin-top: 10px;\n    border-radius: 5px;\n    font-weight: bold;\n    text-transform: none;\n    font-size: 15px;}\n.dat-ban-section .col{padding-bottom:0}\n.form-dat-ban h3{font-size:25px; font-weight:normal}\n.thong-tin-lien-he .icon-box p{margin-bottom:4px}\n.bai-viet-huong-dan .gia-ban, .bai-viet-huong-dan .gia-km{display:none}\n.bai-viet-huong-dan .post-item .post-title{font-family: \"Open Sans Condensed\", sans-serif;\n    margin-bottom: 8px}\n.bai-viet-huong-dan .post-item .post-title:hover{color:#de0b0b}\n.bai-viet-huong-dan .post-item .box-image .image-cover{border-radius:10px}\n.footer-section:before{    content: \"\";\n    float: left;\n    width: 100%;\n    height: 100%;\n    background-image: url(/wp-content/uploads/2019/04/bg-footer.jpg);\n    background-repeat: repeat-x;\n    position: absolute;\n    top: -24px;\n    left: 0;\n    right: 0;\n    z-index:0\n  }\n.page-right-sidebar .large-9, .blog-single .large-9, .blog-archive .large-9{padding-right:30px; border-right:0px !important}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{padding-left:0; border-left:0px !important}\nspan.widget-title{display: block;\n    letter-spacing: 0;\n    text-transform: none;\n    font-size: 19px; margin-bottom:10px}\n.blog-single .entry-title{    font-family: \"Open Sans Condensed\", sans-serif;\n    letter-spacing: 0;\n    font-size: 24px;\n    color: #de0b0b;}\n.recent-blog-posts .badge-inner {border-radius:99%}\n.recent-blog-posts a {\n    line-height: 1.2;\n    margin-bottom: 0;\n    font-size: 15px;\n    color: black;\n}\n.blog-single .entry-category a{font-family: \"Open Sans Condensed\", sans-serif;\n    text-transform: uppercase;\n    letter-spacing: 0;\n    font-size: 13px;\n    color: gray;\n    font-weight: normal;}\n.blog-single .entry-content p{margin-bottom:10px}.entry-header-text {\n    padding: 0;\n}.entry-content {\n    padding-top: 0;\n    padding-bottom: 0;\n}.list-news li {\n    padding: 0 7px;\n    width: 33.33%;\n    float: left;\n    display: inline-block;\n    margin: 0!important;\n}.list-news {\n    margin-left: -5px;\n    margin-right: -5px;\n    display: inline-block;\n    width: 100%;\n    clear: both;\n}.list-news .new-img img {border-radius:10px;\n    height: 180px;\n    object-fit: cover;\n    object-position: 50% 50%;\n}.list-news .item-list h4 {margin-top:6px;\n    line-height: 19px;\n    margin-bottom: 15px;\n    margin-top: 5px;\n    height: 55px; font-size:16px;\n    overflow: hidden;    font-family: \"Open Sans Condensed\", sans-serif;\n}\n.widget .is-divider, .is-divider{display:none}\n.bai-viet-lien-quan-title{margin-top: 10px;\n    margin-bottom: 10px;\n    font-family: \"Open Sans Condensed\", sans-serif;\n    color: #de0b0b;\n}\n.list-news .item-list h4 a:hover{color:#de0b0b}\n.blog-archive .post-item .from_the_blog_excerpt{display:none}\n.blog-archive .post-item .badge{display:none}\n.blog-archive .post-item .box-image .image-cover{border-radius:10px}\n.blog-archive .post-item .box-text .post-title{font-family: \"Open Sans Condensed\", sans-serif;\n    margin-bottom: 6px;\n    color: #008600;}\n.blog-archive .post-item .col-inner{    box-shadow: 2px 2px 20px #00000021;\n    padding: 10px;\n    border-radius: 10px;}\n.blog-archive .post-item{padding: 0 8px 16px}\n.blog-archive .post-item .box-text{padding-bottom:0}.float-contact {\n    position: fixed;\n    bottom: 20px;\n    left: 20px;\n    z-index: 99999;\n}.chat-zalo {\n    background: #8eb22b;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-face {\n    background: #125c9e;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.float-contact .hotline {\n    background: #d11a59 !important;\n    border-radius: 20px;\n    padding: 0 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-zalo a, .chat-face a, .hotline a {\n    font-size: 15px;\n    color: white;\n    font-weight: normal;\n    text-transform: none;\n    line-height: 0;\n}\na.back-to-top{background: #de0b0b !important;\n    border: none !important;\n    color: white;}\n.tab-thuc-don ul li{margin-bottom:10px}\ndiv.wpcf7-mail-sent-ok {\n      background: #79ca2b;\n    color: white;\n    border: 0;\n    font-size: 15px;\n}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1113:\".float-contact{display:none}\n.row-slider .flickity-prev-next-button{width: 30px !important;}\n.thuc-don-section .flickity-prev-next-button svg, .bai-viet-huong-dan .flickity-prev-next-button svg{height:32px}\n.tai-sao-section .medium-2, .ban-chay .post-item{flex-basis:50%; max-width:50%}\n.thong-tin-lien-he .icon-box{margin-bottom:10px}\n.thong-tin-lien-he .icon-box p {\n     font-size: 14px;\n}\n.form-dat-ban{padding:0}\n.form-dat-ban .row-form .right{width:100%; float:none; padding-left:0;}\n.form-dat-ban .row-form .left{width:100%; float:none; padding-right:0}\n.ban-chay .post-item:nth-child(2n+1){padding-right:5px;}\n.ban-chay .post-item:nth-child(2n+2){padding-left:5px}\n.list-news li{width:50%}\n.page-right-sidebar .large-9, .blog-single .large-9, .blog-archive .large-9{padding-right:15px}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{padding-left:15px}.list-news {\n    margin-left: 0;\n    margin-right: 0;\n       display: inline-block;\n    width: 100%;\n    clear: both;\n}\n.list-news .item-list h4{height:auto}\n.form-dat-ban .row-form {\n	display: block;}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:17:\"Tìm món ngon...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:11:\"preset_demo\";s:19:\"header-default-dark\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:7:\"#0a0a0a\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"100\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:18:\"rgba(10,10,10,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:6:\"medium\";s:13:\"nav_uppercase\";b:0;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"70\";s:21:\"header_bg_transparent\";s:19:\"rgba(10,10,10,0.84)\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"10\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:9:\"site_logo\";s:76:\"https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/LOGO-NHA-HANG.png\";s:10:\"logo_width\";s:3:\"200\";s:12:\"logo_padding\";s:1:\"3\";s:11:\"topbar_left\";s:69:\"Nhà hàng Trung Thành hân hạnh được phục vụ quý khách!\";s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:4:\"flat\";s:19:\"header_search_width\";s:2:\"83\";s:8:\"nav_push\";s:3:\"-34\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:14:\"header_divider\";b:0;s:11:\"nav_spacing\";s:5:\"large\";s:15:\"header_button_1\";s:19:\"Hotline: 0909009009\";s:20:\"header_button_1_link\";s:14:\"tel:0972939830\";s:21:\"header_button_1_color\";s:7:\"primary\";s:20:\"header_button_1_size\";s:6:\"medium\";s:21:\"header_button_1_depth\";s:1:\"0\";s:10:\"nav_height\";s:2:\"10\";s:13:\"color_primary\";s:7:\"#de0b0b\";s:11:\"color_texts\";s:7:\"#2b2b2b\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_color\";s:7:\"#151515\";s:16:\"footer_left_text\";s:38:\"Copyright [ux_current_year] © Webdemo\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:17:\"blog_show_excerpt\";b:0;s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:0;s:18:\"blog_style_archive\";s:5:\"3-col\";s:23:\"blog_single_header_meta\";b:0;s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:0;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:20:\"header_height_mobile\";s:2:\"50\";}","yes"),
("154","envato_setup_complete","1555299421","yes"),
("158","recently_activated","a:0:{}","yes"),
("161","new_admin_email","demo@gmail.com","yes"),
("197","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("221","acf_version","5.7.7","yes"),
("272","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1555427808;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("274","category_children","a:1:{i:1;a:8:{i:0;i:5;i:1;i:6;i:2;i:7;i:3;i:8;i:4;i:9;i:5;i:10;i:6;i:11;i:7;i:12;}}","yes"),
("454","active_plugins","a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("456","ai1wm_backups_labels","a:0:{}","yes"),
("458","ai1wmte_plugin_key","1","yes"),
("459","template","flatsome","yes"),
("460","stylesheet","nha-hang","yes"),
("461","jetpack_active_modules","a:0:{}","yes"),
("473","ai1wm_updater","a:1:{s:38:\"all-in-one-wp-migration-file-extension\";a:13:{s:4:\"name\";s:14:\"File Extension\";s:4:\"slug\";s:14:\"file-extension\";s:8:\"homepage\";s:31:\"https://import.wp-migration.com\";s:13:\"download_link\";s:74:\"https://import.wp-migration.com/all-in-one-wp-migration-file-extension.zip\";s:7:\"version\";s:3:\"1.4\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:60:\"<ul class=\"description\"><li>Import from file</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:71:\"https://import.wp-migration.com/img/products/file-extension-772x250.png\";s:4:\"high\";s:72:\"https://import.wp-migration.com/img/products/file-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-128x128.png\";s:2:\"2x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";s:7:\"default\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}","yes"),
("474","recovery_keys","a:0:{}","yes"),
("528","_site_transient_timeout_browser_cd1f678cd3032e73518e5a71fd683dc9","1558600678","no"),
("529","_site_transient_browser_cd1f678cd3032e73518e5a71fd683dc9","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("549","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558664671","no"),
("550","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("563","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558664935","no"),
("564","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("585","_transient_timeout_acf_plugin_updates","1558211896","no"),
("586","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("590","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"http://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"http://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558151502;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("591","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558151506;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.8.1\";s:8:\"nha-hang\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("592","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558151502;s:8:\"response\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("596","_site_transient_timeout_theme_roots","1558153304","no"),
("597","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:8:\"nha-hang\";s:7:\"/themes\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("7","7","_wp_attached_file","2019/04/LOGO-NHA-HANG.png"),
("8","7","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:148;s:4:\"file\";s:25:\"2019/04/LOGO-NHA-HANG.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"LOGO-NHA-HANG-150x148.png\";s:5:\"width\";i:150;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"LOGO-NHA-HANG-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("13","10","_wp_attached_file","2019/04/favicon.jpg"),
("14","10","_wp_attachment_metadata","a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:19:\"2019/04/favicon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("15","11","_wp_attached_file","2019/04/cropped-favicon.jpg"),
("16","11","_wp_attachment_context","site-icon"),
("17","11","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2019/04/cropped-favicon.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favicon-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("34","20","_edit_last","1"),
("35","20","_edit_lock","1555408346:1"),
("36","20","_footer","normal"),
("37","20","_wp_page_template","page-right-sidebar.php"),
("38","22","_edit_last","1"),
("39","22","_footer","normal"),
("40","22","_wp_page_template","page-right-sidebar.php"),
("41","22","_edit_lock","1555408330:1"),
("42","24","_edit_last","1"),
("43","24","_footer","normal"),
("44","24","_wp_page_template","page-transparent-header.php"),
("45","24","_edit_lock","1555389908:1"),
("46","26","_menu_item_type","post_type"),
("47","26","_menu_item_menu_item_parent","0"),
("48","26","_menu_item_object_id","24"),
("49","26","_menu_item_object","page"),
("50","26","_menu_item_target",""),
("51","26","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("52","26","_menu_item_xfn",""),
("53","26","_menu_item_url",""),
("55","27","_menu_item_type","post_type"),
("56","27","_menu_item_menu_item_parent","0"),
("57","27","_menu_item_object_id","22"),
("58","27","_menu_item_object","page"),
("59","27","_menu_item_target",""),
("60","27","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("61","27","_menu_item_xfn",""),
("62","27","_menu_item_url",""),
("64","28","_menu_item_type","post_type"),
("65","28","_menu_item_menu_item_parent","0"),
("66","28","_menu_item_object_id","20"),
("67","28","_menu_item_object","page"),
("68","28","_menu_item_target",""),
("69","28","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("70","28","_menu_item_xfn",""),
("71","28","_menu_item_url",""),
("73","29","_menu_item_type","taxonomy"),
("74","29","_menu_item_menu_item_parent","0"),
("75","29","_menu_item_object_id","1"),
("76","29","_menu_item_object","category"),
("77","29","_menu_item_target",""),
("78","29","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("79","29","_menu_item_xfn",""),
("80","29","_menu_item_url",""),
("82","30","_menu_item_type","taxonomy"),
("83","30","_menu_item_menu_item_parent","0"),
("84","30","_menu_item_object_id","2"),
("85","30","_menu_item_object","category"),
("86","30","_menu_item_target",""),
("87","30","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("88","30","_menu_item_xfn",""),
("89","30","_menu_item_url",""),
("91","31","_edit_last","1"),
("92","31","_footer","normal"),
("93","31","_wp_page_template","page-right-sidebar.php"),
("94","31","_edit_lock","1555408863:1"),
("95","33","_edit_last","1"),
("96","33","_footer","normal"),
("97","33","_wp_page_template","page-right-sidebar.php"),
("98","33","_edit_lock","1555408855:1"),
("99","35","_menu_item_type","post_type"),
("100","35","_menu_item_menu_item_parent","0"),
("101","35","_menu_item_object_id","33"),
("102","35","_menu_item_object","page"),
("103","35","_menu_item_target",""),
("104","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("105","35","_menu_item_xfn",""),
("106","35","_menu_item_url",""),
("108","36","_menu_item_type","post_type"),
("109","36","_menu_item_menu_item_parent","0"),
("110","36","_menu_item_object_id","31"),
("111","36","_menu_item_object","page"),
("112","36","_menu_item_target",""),
("113","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("114","36","_menu_item_xfn",""),
("115","36","_menu_item_url",""),
("166","24","_thumbnail_id",""),
("167","62","_wp_attached_file","2019/04/slider01.jpg"),
("168","62","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:595;s:4:\"file\";s:20:\"2019/04/slider01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider01-300x93.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:93;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider01-768x238.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider01-1024x317.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("169","63","_wp_attached_file","2019/04/slider2.jpg"),
("170","63","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:595;s:4:\"file\";s:19:\"2019/04/slider2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x93.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:93;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x238.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x317.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("278","117","_wp_attached_file","2019/04/bg-header.jpg"),
("279","117","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:27;s:4:\"file\";s:21:\"2019/04/bg-header.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-header-150x27.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-header-300x16.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:16;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("280","118","_wp_attached_file","2019/04/bg-header.png"),
("281","118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:27;s:4:\"file\";s:21:\"2019/04/bg-header.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-header-150x27.png\";s:5:\"width\";i:150;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-header-300x16.png\";s:5:\"width\";i:300;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("282","118","_edit_lock","1555385094:1"),
("329","157","_wp_attached_file","2019/04/logo-trung-thanh.jpg"),
("330","157","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:148;s:4:\"file\";s:28:\"2019/04/logo-trung-thanh.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"logo-trung-thanh-150x148.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"logo-trung-thanh-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("357","184","_edit_last","1"),
("358","184","_edit_lock","1555407744:1"),
("359","1","_edit_lock","1555388129:1");
INSERT INTO bz_postmeta VALUES
("360","188","_wp_attached_file","2019/04/món-cua-gạch.jpg"),
("361","188","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:27:\"2019/04/món-cua-gạch.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"món-cua-gạch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"món-cua-gạch-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("362","1","_edit_last","1"),
("363","1","_thumbnail_id","188"),
("366","1","_wp_old_slug","chao-moi-nguoi"),
("367","1","gia_tien","890.000đ/kg"),
("368","1","_gia_tien","field_5cb556411aa8f"),
("369","1","gia_khuyen_mai","810.000đ/kg"),
("370","1","_gia_khuyen_mai","field_5cb5567a1aa90"),
("388","198","_edit_last","1"),
("389","198","_edit_lock","1555388497:1"),
("390","199","_wp_attached_file","2019/04/món-ốc-hương.jpg"),
("391","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:29:\"2019/04/món-ốc-hương.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"món-ốc-hương-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"món-ốc-hương-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("392","198","_thumbnail_id","199"),
("395","198","gia_tien","225.000đ/đĩa"),
("396","198","_gia_tien","field_5cb556411aa8f"),
("397","198","gia_khuyen_mai","180.000đ/đĩa"),
("398","198","_gia_khuyen_mai","field_5cb5567a1aa90"),
("409","202","_edit_last","1"),
("410","202","_edit_lock","1555388625:1"),
("411","203","_wp_attached_file","2019/04/nộm-giá-bể.jpg"),
("412","203","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:27:\"2019/04/nộm-giá-bể.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"nộm-giá-bể-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"nộm-giá-bể-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","202","_thumbnail_id","203"),
("416","202","gia_tien","180.000đ/đĩa"),
("417","202","_gia_tien","field_5cb556411aa8f"),
("418","202","gia_khuyen_mai","150.000đ/đĩa"),
("419","202","_gia_khuyen_mai","field_5cb5567a1aa90"),
("430","206","_edit_last","1"),
("431","206","_edit_lock","1555388716:1"),
("432","207","_wp_attached_file","2019/04/bầu-bò-mỹ.jpg"),
("433","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:26:\"2019/04/bầu-bò-mỹ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bầu-bò-mỹ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bầu-bò-mỹ-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("434","206","_thumbnail_id","207"),
("437","206","gia_tien","160.000đ/đĩa"),
("438","206","_gia_tien","field_5cb556411aa8f"),
("439","206","gia_khuyen_mai","140.000đ/đĩa"),
("440","206","_gia_khuyen_mai","field_5cb5567a1aa90"),
("445","209","_edit_last","1"),
("446","209","_edit_lock","1555388818:1"),
("447","210","_wp_attached_file","2019/04/bắp-bò-mỹ.jpg"),
("448","210","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:26:\"2019/04/bắp-bò-mỹ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bắp-bò-mỹ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bắp-bò-mỹ-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("449","209","_thumbnail_id","210"),
("452","209","gia_tien","180.000đ/đĩa"),
("453","209","_gia_tien","field_5cb556411aa8f"),
("454","209","gia_khuyen_mai","140.000đ/đĩa"),
("455","209","_gia_khuyen_mai","field_5cb5567a1aa90"),
("460","212","_edit_last","1"),
("461","212","_edit_lock","1555388941:1"),
("462","213","_wp_attached_file","2019/04/cá-vược.jpg"),
("463","213","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2019/04/cá-vược.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cá-vược-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cá-vược-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("464","212","_thumbnail_id","213"),
("467","212","gia_tien","250.000đ/kg"),
("468","212","_gia_tien","field_5cb556411aa8f"),
("469","212","gia_khuyen_mai","225.000đ/kg"),
("470","212","_gia_khuyen_mai","field_5cb5567a1aa90"),
("475","215","_edit_last","1"),
("476","215","_edit_lock","1555388977:1"),
("477","216","_wp_attached_file","2019/04/cá-song.jpg"),
("478","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:20:\"2019/04/cá-song.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cá-song-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"cá-song-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("479","215","_thumbnail_id","216"),
("482","215","gia_tien","560.000đ/kg"),
("483","215","_gia_tien","field_5cb556411aa8f"),
("484","215","gia_khuyen_mai","510.000đ/kg"),
("485","215","_gia_khuyen_mai","field_5cb5567a1aa90"),
("490","218","_edit_last","1"),
("491","218","_edit_lock","1555389069:1"),
("492","219","_wp_attached_file","2019/04/bề-bề.jpg"),
("493","219","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:21:\"2019/04/bề-bề.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bề-bề-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bề-bề-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("494","218","_thumbnail_id","219"),
("497","218","gia_tien","700.000đ/kg"),
("498","218","_gia_tien","field_5cb556411aa8f"),
("499","218","gia_khuyen_mai","650.000đ/kg"),
("500","218","_gia_khuyen_mai","field_5cb5567a1aa90"),
("505","221","_edit_last","1"),
("506","221","_edit_lock","1555389132:1"),
("507","222","_wp_attached_file","2019/04/ba-chỉ-bò-mỹ.jpg"),
("508","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:29:\"2019/04/ba-chỉ-bò-mỹ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ba-chỉ-bò-mỹ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ba-chỉ-bò-mỹ-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("509","221","_thumbnail_id","222"),
("512","221","gia_tien","120.000đ/đĩa"),
("513","221","_gia_tien","field_5cb556411aa8f"),
("514","221","gia_khuyen_mai","100.000đ/đĩa"),
("515","221","_gia_khuyen_mai","field_5cb5567a1aa90"),
("526","226","_edit_last","1"),
("527","226","_edit_lock","1555389222:1"),
("528","227","_wp_attached_file","2019/04/ngao-2-vòi.jpg"),
("529","227","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2019/04/ngao-2-vòi.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"ngao-2-vòi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"ngao-2-vòi-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("530","226","_thumbnail_id","227"),
("533","226","gia_tien","120.000đ/đĩa"),
("534","226","_gia_tien","field_5cb556411aa8f"),
("535","226","gia_khuyen_mai","100.000đ/đĩa"),
("536","226","_gia_khuyen_mai","field_5cb5567a1aa90"),
("541","229","_edit_last","1"),
("542","229","_edit_lock","1555389274:1"),
("543","230","_wp_attached_file","2019/04/mực-trứng.jpg"),
("544","230","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2019/04/mực-trứng.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"mực-trứng-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"mực-trứng-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("545","229","_thumbnail_id","230"),
("548","229","gia_tien","250.000đ/đĩa"),
("549","229","_gia_tien","field_5cb556411aa8f"),
("550","229","gia_khuyen_mai","230.000đ/đĩa"),
("551","229","_gia_khuyen_mai","field_5cb5567a1aa90"),
("569","251","_wp_attached_file","2019/04/banner1-1.jpg");
INSERT INTO bz_postmeta VALUES
("570","251","_wp_attachment_metadata","a:5:{s:5:\"width\";i:272;s:6:\"height\";i:184;s:4:\"file\";s:21:\"2019/04/banner1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("571","253","_wp_attached_file","2019/04/banner2.jpg"),
("572","253","_wp_attachment_metadata","a:5:{s:5:\"width\";i:272;s:6:\"height\";i:184;s:4:\"file\";s:19:\"2019/04/banner2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("573","255","_wp_attached_file","2019/04/banner3.jpg"),
("574","255","_wp_attachment_metadata","a:5:{s:5:\"width\";i:272;s:6:\"height\";i:184;s:4:\"file\";s:19:\"2019/04/banner3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("575","257","_wp_attached_file","2019/04/banner4.jpg"),
("576","257","_wp_attachment_metadata","a:5:{s:5:\"width\";i:272;s:6:\"height\";i:184;s:4:\"file\";s:19:\"2019/04/banner4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("577","259","_wp_attached_file","2019/04/banner5.jpg"),
("578","259","_wp_attachment_metadata","a:5:{s:5:\"width\";i:565;s:6:\"height\";i:383;s:4:\"file\";s:19:\"2019/04/banner5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner5-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("579","261","_wp_attached_file","2019/04/banner-05.jpg"),
("580","261","_wp_attachment_metadata","a:5:{s:5:\"width\";i:565;s:6:\"height\";i:383;s:4:\"file\";s:21:\"2019/04/banner-05.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-05-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("581","263","_wp_attached_file","2019/04/banner-04.jpg"),
("582","263","_wp_attachment_metadata","a:5:{s:5:\"width\";i:272;s:6:\"height\";i:184;s:4:\"file\";s:21:\"2019/04/banner-04.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("583","265","_edit_last","1"),
("584","265","_edit_lock","1555392175:1"),
("585","266","_wp_attached_file","2019/04/măng-tây-xào-nấm.jpg"),
("586","266","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:33:\"2019/04/măng-tây-xào-nấm.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"măng-tây-xào-nấm-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"măng-tây-xào-nấm-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("587","265","_thumbnail_id","266"),
("590","265","gia_tien","75.000đ/đĩa"),
("591","265","_gia_tien","field_5cb556411aa8f"),
("592","265","gia_khuyen_mai","70.000đ/đĩa"),
("593","265","_gia_khuyen_mai","field_5cb5567a1aa90"),
("598","268","_edit_last","1"),
("599","268","_edit_lock","1555392273:1"),
("600","269","_wp_attached_file","2019/04/măng-tây-xào-hải-sản.jpg"),
("601","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:39:\"2019/04/măng-tây-xào-hải-sản.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"măng-tây-xào-hải-sản-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"măng-tây-xào-hải-sản-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("602","268","_thumbnail_id","269"),
("605","268","gia_tien","150.000đ/đĩa"),
("606","268","_gia_tien","field_5cb556411aa8f"),
("607","268","gia_khuyen_mai","120.000đ/đĩa"),
("608","268","_gia_khuyen_mai","field_5cb5567a1aa90"),
("613","271","_edit_last","1"),
("614","271","_edit_lock","1555392336:1"),
("615","272","_wp_attached_file","2019/04/ngao-2-vòi-xào-hung.jpg"),
("616","272","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:33:\"2019/04/ngao-2-vòi-xào-hung.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"ngao-2-vòi-xào-hung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"ngao-2-vòi-xào-hung-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("617","271","_thumbnail_id","272"),
("620","271","gia_tien","130.000đ/đĩa"),
("621","271","_gia_tien","field_5cb556411aa8f"),
("622","271","gia_khuyen_mai","110.000đ/đĩa"),
("623","271","_gia_khuyen_mai","field_5cb5567a1aa90"),
("628","274","_edit_last","1"),
("629","274","_edit_lock","1555392391:1"),
("630","275","_wp_attached_file","2019/04/thịt-lợn-rừng.jpg"),
("631","275","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2019/04/thịt-lợn-rừng.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"thịt-lợn-rừng-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"thịt-lợn-rừng-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("632","274","_thumbnail_id","275"),
("635","274","gia_tien","120.000đ/đĩa"),
("636","274","_gia_tien","field_5cb556411aa8f"),
("637","274","gia_khuyen_mai","110.000đ/đĩa"),
("638","274","_gia_khuyen_mai","field_5cb5567a1aa90"),
("643","277","_edit_last","1"),
("644","277","_edit_lock","1555392460:1"),
("645","278","_wp_attached_file","2019/04/xúp-lơ-xào-nấm.jpg"),
("646","278","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2019/04/xúp-lơ-xào-nấm.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"xúp-lơ-xào-nấm-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"xúp-lơ-xào-nấm-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("647","277","_thumbnail_id","278"),
("650","277","gia_tien","80.000đ/đĩa"),
("651","277","_gia_tien","field_5cb556411aa8f"),
("652","277","gia_khuyen_mai","70.000đ/đĩa"),
("653","277","_gia_khuyen_mai","field_5cb5567a1aa90"),
("660","282","_edit_last","1"),
("661","282","_edit_lock","1555392802:1"),
("662","283","_wp_attached_file","2019/04/lẩu-bò.jpg"),
("663","283","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:21:\"2019/04/lẩu-bò.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"lẩu-bò-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"lẩu-bò-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("664","282","_thumbnail_id","283"),
("667","282","gia_tien","150.000đ/nồi"),
("668","282","_gia_tien","field_5cb556411aa8f"),
("669","282","gia_khuyen_mai","110.000đ/nồi"),
("670","282","_gia_khuyen_mai","field_5cb5567a1aa90"),
("675","285","_edit_last","1"),
("676","285","_edit_lock","1555392885:1"),
("677","286","_wp_attached_file","2019/04/cach-nau-lau-hai-san-3-650x500.jpg"),
("678","286","_wp_attachment_metadata","a:5:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:42:\"2019/04/cach-nau-lau-hai-san-3-650x500.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cach-nau-lau-hai-san-3-650x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cach-nau-lau-hai-san-3-650x500-300x231.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("679","285","_thumbnail_id","286"),
("682","285","gia_tien","250.000đ/nồi"),
("683","285","_gia_tien","field_5cb556411aa8f"),
("684","285","gia_khuyen_mai","210.000đ/nồi"),
("685","285","_gia_khuyen_mai","field_5cb5567a1aa90"),
("690","288","_edit_last","1"),
("691","288","_edit_lock","1555392970:1"),
("692","289","_wp_attached_file","2019/04/lẩu-thuyền-chài-và-rau.jpg"),
("693","289","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:40:\"2019/04/lẩu-thuyền-chài-và-rau.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"lẩu-thuyền-chài-và-rau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"lẩu-thuyền-chài-và-rau-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("694","288","_thumbnail_id","289"),
("697","288","gia_tien","70.000đ/nồi"),
("698","288","_gia_tien","field_5cb556411aa8f"),
("699","288","gia_khuyen_mai","60.000đ/nồi"),
("700","288","_gia_khuyen_mai","field_5cb5567a1aa90"),
("705","291","_edit_last","1"),
("706","291","_edit_lock","1555393008:1"),
("707","292","_wp_attached_file","2019/04/lẩu-cua-đồng.jpg"),
("708","292","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:29:\"2019/04/lẩu-cua-đồng.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"lẩu-cua-đồng-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"lẩu-cua-đồng-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("709","291","_thumbnail_id","292"),
("712","291","gia_tien","350.000đ/nồi"),
("713","291","_gia_tien","field_5cb556411aa8f"),
("714","291","gia_khuyen_mai","300.000đ/nồi"),
("715","291","_gia_khuyen_mai","field_5cb5567a1aa90"),
("720","294","_edit_last","1"),
("721","294","_edit_lock","1555393069:1"),
("722","295","_wp_attached_file","2019/04/lẩu-gà.jpg"),
("723","295","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:21:\"2019/04/lẩu-gà.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"lẩu-gà-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"lẩu-gà-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("724","294","_thumbnail_id","295"),
("727","294","gia_tien","120.000đ/đĩa");
INSERT INTO bz_postmeta VALUES
("728","294","_gia_tien","field_5cb556411aa8f"),
("729","294","gia_khuyen_mai","100.000đ/đĩa"),
("730","294","_gia_khuyen_mai","field_5cb5567a1aa90"),
("737","299","_edit_last","1"),
("738","299","_edit_lock","1555397272:1"),
("739","300","_wp_attached_file","2019/04/cầy-hương.jpg"),
("740","300","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2019/04/cầy-hương.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cầy-hương-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cầy-hương-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("741","299","_thumbnail_id","300"),
("744","299","gia_tien","2.150.000đ/kg"),
("745","299","_gia_tien","field_5cb556411aa8f"),
("746","299","gia_khuyen_mai","2.100.000đ/kg"),
("747","299","_gia_khuyen_mai","field_5cb5567a1aa90"),
("752","302","_edit_last","1"),
("753","302","_edit_lock","1555397391:1"),
("754","303","_wp_attached_file","2019/04/ba-ba.jpg"),
("755","303","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2019/04/ba-ba.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ba-ba-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ba-ba-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("756","302","_thumbnail_id","303"),
("759","302","gia_tien","600.000đ/kg"),
("760","302","_gia_tien","field_5cb556411aa8f"),
("761","302","gia_khuyen_mai","580.000đ/kg"),
("762","302","_gia_khuyen_mai","field_5cb5567a1aa90"),
("767","306","_wp_attached_file","2019/04/nhím.jpg"),
("768","306","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2019/04/nhím.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nhím-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nhím-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("769","305","_edit_last","1"),
("770","305","_thumbnail_id","306"),
("773","305","gia_tien","500.000đ/kg"),
("774","305","_gia_tien","field_5cb556411aa8f"),
("775","305","gia_khuyen_mai","485.000đ/kg"),
("776","305","_gia_khuyen_mai","field_5cb5567a1aa90"),
("781","305","_edit_lock","1555397452:1"),
("782","308","_edit_last","1"),
("783","308","_edit_lock","1555397499:1"),
("784","309","_wp_attached_file","2019/04/le-le.jpg"),
("785","309","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2019/04/le-le.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"le-le-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"le-le-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("786","308","_thumbnail_id","309"),
("789","308","gia_tien","900.000đ/com"),
("790","308","_gia_tien","field_5cb556411aa8f"),
("791","308","gia_khuyen_mai","800.000đ/con"),
("792","308","_gia_khuyen_mai","field_5cb5567a1aa90"),
("797","312","_edit_last","1"),
("798","312","_edit_lock","1555397628:1"),
("799","313","_wp_attached_file","2019/04/nhà-hàng.jpg"),
("800","313","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:22:\"2019/04/nhà-hàng.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"nhà-hàng-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"nhà-hàng-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("801","312","_thumbnail_id","313"),
("804","312","gia_tien","2.500đ/cái"),
("805","312","_gia_tien","field_5cb556411aa8f"),
("806","312","gia_khuyen_mai","2.000đ/cái"),
("807","312","_gia_khuyen_mai","field_5cb5567a1aa90"),
("812","315","_edit_last","1"),
("813","315","_edit_lock","1555397696:1"),
("814","316","_wp_attached_file","2019/04/rượu-sochu.jpg"),
("815","316","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2019/04/rượu-sochu.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"rượu-sochu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"rượu-sochu-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("816","315","_thumbnail_id","316"),
("819","315","gia_tien","85.000đ/chai"),
("820","315","_gia_tien","field_5cb556411aa8f"),
("821","315","gia_khuyen_mai","79.000đ/chai"),
("822","315","_gia_khuyen_mai","field_5cb5567a1aa90"),
("827","318","_edit_last","1"),
("828","318","_edit_lock","1555397748:1"),
("829","319","_wp_attached_file","2019/04/bia-heniken.jpg"),
("830","319","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2019/04/bia-heniken.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bia-heniken-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bia-heniken-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("831","318","_thumbnail_id","319"),
("834","318","gia_tien","25.000đ/chai"),
("835","318","_gia_tien","field_5cb556411aa8f"),
("836","318","gia_khuyen_mai","22.000đ/chai"),
("837","318","_gia_khuyen_mai","field_5cb5567a1aa90"),
("842","321","_edit_last","1"),
("843","321","_edit_lock","1555397929:1"),
("844","322","_wp_attached_file","2019/04/rượu-john-đỏ.jpg"),
("845","322","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:30:\"2019/04/rượu-john-đỏ.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"rượu-john-đỏ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"rượu-john-đỏ-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("846","321","_thumbnail_id","322"),
("849","321","gia_tien","500.000đ/chai"),
("850","321","_gia_tien","field_5cb556411aa8f"),
("851","321","gia_khuyen_mai","480.000đ/chai"),
("852","321","_gia_khuyen_mai","field_5cb5567a1aa90"),
("857","324","_edit_last","1"),
("858","324","_edit_lock","1555397957:1"),
("859","325","_wp_attached_file","2019/04/rượu-vang-rosso.jpg"),
("860","325","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:30:\"2019/04/rượu-vang-rosso.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"rượu-vang-rosso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"rượu-vang-rosso-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("861","324","_thumbnail_id","325"),
("864","324","gia_tien","450.000đ/chai"),
("865","324","_gia_tien","field_5cb556411aa8f"),
("866","324","gia_khuyen_mai","420.000đ/chai"),
("867","324","_gia_khuyen_mai","field_5cb5567a1aa90"),
("928","362","_wp_attached_file","2019/04/bg.jpg"),
("929","362","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:691;s:4:\"file\";s:14:\"2019/04/bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x369.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"YANA BLAJEVA\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("935","380","_wp_attached_file","2019/04/fresh.png"),
("936","380","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:17:\"2019/04/fresh.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("937","381","_wp_attached_file","2019/04/online-order.png"),
("938","381","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:24:\"2019/04/online-order.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("939","382","_wp_attached_file","2019/04/free-parking.png"),
("940","382","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:24:\"2019/04/free-parking.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("941","383","_wp_attached_file","2019/04/FREE-WIFI.png"),
("942","383","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:21:\"2019/04/FREE-WIFI.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("943","384","_wp_attached_file","2019/04/ship-tan-nha.png"),
("944","384","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:24:\"2019/04/ship-tan-nha.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("945","385","_wp_attached_file","2019/04/phong-hoi-truong.png"),
("946","385","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:28:\"2019/04/phong-hoi-truong.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("956","417","_wp_attached_file","2019/04/bg2.jpg"),
("957","417","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:691;s:4:\"file\";s:15:\"2019/04/bg2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg2-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg2-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg2-1024x369.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:12:\"YANA BLAJEVA\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("978","436","_wp_attached_file","2019/04/bg4.jpg"),
("979","436","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:267;s:4:\"file\";s:15:\"2019/04/bg4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg4-300x42.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:42;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg4-768x107.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg4-1024x142.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("980","442","_wp_attached_file","2019/04/phone-icon.png"),
("981","442","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:22:\"2019/04/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("982","443","_wp_attached_file","2019/04/mail-icon.png"),
("983","443","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:21:\"2019/04/mail-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("984","444","_wp_attached_file","2019/04/map-icon.png"),
("985","444","_wp_attachment_metadata","a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:20:\"2019/04/map-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("992","455","_form","<div class=\"form-dat-ban\" id=\"dat-ban\">\n<h3>Liên hệ đặt bàn</h3>\n<p class=\"des\">Quý khách vui lòng đặt bàn trước để chúng tôi sắp xếp cho quý khách chỗ ngồi tốt nhất!</p>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Tên của bạn:</label>\n[text* text-657 placeholder \"Tên của bạn...\"]\n<label>Số điện thoại của bạn:</label>\n[tel* tel-466 placeholder \"Số điện thoại...\"]\n<label>Email của bạn (nếu có):</label>\n[email email-715 placeholder \"Email của bạn...\"]\n</div>\n<div class=\"right\">\n<label>Số người:</label>\n[number* number-620 min:1 max:10 placeholder \"Số người\"]\n<label>Bạn có thể tới dùng bữa ngày nào?</label>\n[date* date-815 min:2019-04-16 max:2020-01-31 placeholder \"Thời gian bạn tới\"]\n<label>Thời gian:</label>\n[select menu-54 \"Thời gian\" \"Buổi sáng\" \"Buổi trưa\" \"Buổi chiều\" \"Buổi tối\"]\n</div>\n</div>\n<p class=\"des\">Khách đặt tiệc hội nghị, liên hoan vui lòng gọi trực tiếp: 0909009009</p>\n[submit \"Đặt bàn ngay\"]\n</div>"),
("993","455","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:75:\"Mẫu website nhà hàng - Thiết kế website Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:84:\"Mẫu website nhà hàng - Thiết kế website Ninh Bình <wordpress@bizhostvn.com>\";s:9:\"recipient\";s:14:\"demo@gmail.com\";s:4:\"body\";s:410:\"Có một khách hàng đặt bàn tại nhà hàng:\n- Họ và tên: [text-657]\n- Số điện thoại: [tel-466]\n- Địa chỉ email: [email-715]\n- Số người: [number-620]\n- Ngày tới ăn: [date-815]\n- Thời gian trong ngày: [menu-54]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nhà hàng - Thiết kế website Ninh Bình (https://bizhostvn.com/w/nhahang)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("994","455","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:75:\"Mẫu website nhà hàng - Thiết kế website Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:84:\"Mẫu website nhà hàng - Thiết kế website Ninh Bình <wordpress@bizhostvn.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:207:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nhà hàng - Thiết kế website Ninh Bình (https://bizhostvn.com/w/nhahang)\";s:18:\"additional_headers\";s:24:\"Reply-To: demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("995","455","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("996","455","_additional_settings",""),
("997","455","_locale","vi"),
("1032","477","_wp_attached_file","2019/04/bg5.png"),
("1033","477","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:729;s:4:\"file\";s:15:\"2019/04/bg5.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg5-300x114.png\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg5-768x292.png\";s:5:\"width\";i:768;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg5-1024x389.png\";s:5:\"width\";i:1024;s:6:\"height\";i:389;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1038","485","_edit_last","1"),
("1039","485","_edit_lock","1555408918:1"),
("1040","486","_wp_attached_file","2019/04/post1.jpg"),
("1041","486","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2019/04/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1042","485","_thumbnail_id","486"),
("1045","485","gia_tien",""),
("1046","485","_gia_tien","field_5cb556411aa8f"),
("1047","485","gia_khuyen_mai",""),
("1048","485","_gia_khuyen_mai","field_5cb5567a1aa90"),
("1067","503","_edit_last","1"),
("1068","503","_thumbnail_id","275"),
("1071","503","_edit_lock","1555408913:1"),
("1072","505","_edit_last","1"),
("1073","505","_edit_lock","1555408909:1"),
("1074","506","_wp_attached_file","2019/04/mi-tron-ga-xe-6-1552905753415121749128.jpg"),
("1075","506","_wp_attachment_metadata","a:5:{s:5:\"width\";i:650;s:6:\"height\";i:436;s:4:\"file\";s:50:\"2019/04/mi-tron-ga-xe-6-1552905753415121749128.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"mi-tron-ga-xe-6-1552905753415121749128-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"mi-tron-ga-xe-6-1552905753415121749128-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1076","507","_wp_attached_file","2019/04/mi-tron-ga-xe-6-1552905753415121749128-1.jpg"),
("1077","507","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:268;s:4:\"file\";s:52:\"2019/04/mi-tron-ga-xe-6-1552905753415121749128-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"mi-tron-ga-xe-6-1552905753415121749128-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"mi-tron-ga-xe-6-1552905753415121749128-1-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1078","505","_thumbnail_id","507"),
("1081","509","_edit_last","1"),
("1082","509","_edit_lock","1555408903:1"),
("1083","510","_wp_attached_file","2019/04/cach-lam-banh-flan-thom-ngon.jpg"),
("1084","510","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:40:\"2019/04/cach-lam-banh-flan-thom-ngon.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cach-lam-banh-flan-thom-ngon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cach-lam-banh-flan-thom-ngon-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1085","509","_thumbnail_id","510"),
("1092","516","_edit_last","1"),
("1093","516","_edit_lock","1555406215:1"),
("1094","516","_thumbnail_id",""),
("1097","530","_wp_attached_file","2019/04/bg-footer.jpg"),
("1098","530","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:27;s:4:\"file\";s:21:\"2019/04/bg-footer.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-footer-150x27.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-footer-300x16.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:16;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1099","530","_edit_lock","1555406638:1"),
("1238","607","_wp_attached_file","2019/04/bg-1.jpg"),
("1239","607","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2019/04/bg-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1278","638","_wp_attached_file","2019/04/icon.png"),
("1279","638","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2019/04/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1280","638","_edit_lock","1555410862:1"),
("1281","639","_wp_attached_file","2019/04/phone-icon-1.png"),
("1282","639","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:24:\"2019/04/phone-icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1283","639","_edit_lock","1555410879:1"),
("1290","643","_wp_attached_file","2019/04/bg6.jpg"),
("1291","643","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:519;s:4:\"file\";s:15:\"2019/04/bg6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg6-300x81.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg6-768x208.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg6-1024x277.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=648 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-04-15 03:36:16","2019-04-15 03:36:16","Cua Cà Mau là đặc sản trứ danh mà mẹ đại dương đã ban tặng cho vùng đất cực Nam Tổ quốc. Cua Cà Mau được đánh giá là loại cua ngon nhất cả nước với thịt cua vừa thơm, vừa ngọt, và chắc nịch thành từng thớ, gạch béo ngậy, ngây ngất đầu lưỡi. Chúng sinh sống ở vùng đất bãi bồi ven biển, phù sa giàu khoáng chất, sinh vật biển rất phát triển nên nguồn thức ăn cho cua rất dồi dào. Theo nghiên cứu của các chuyên gia, cua là món ăn giàu protein, khoáng chất và các dưỡng chất như axit béo Omega 3 tốt cho sự phát triển của não bộ và tim mạch, rất có lợi cho sức khỏe, đặc biệt người già và trẻ nhỏ.\n\nCua Cà Mau chinh phục được cả những thực khách khó tính nhất. Nó vừa là món ăn thông dụng đối với các người dân Cà Mau vừa là món đặc sản được ưa chuộng đối với khách thập phương. Có rất nhiều cách chế biến loại thực phẩm giàu dinh dưỡng này, từ những công thức đơn giản, nhanh – gọn – lẹ đến những món cầu kỳ, cần đôi tay khéo léo của người thợ, làm nên những sản phẩm ẩm thực độc đáo và ấn tượng.\n\nĐối với người dân Cà Mau, khi bắt được cua, cách chế biến đơn giản nhất là cua luộc. Tuy dân dã, cua luộc được xem là một trong những món cua ngon nhất nhờ giữ trọn vẹn hương vị ngon ngọt tự nhiên của thịt cua. Cua rửa sạch, cho vào nồi luộc khoảng 12-15 phút là chín. Thưởng thức cua luộc với nước chấm muối ớt xanh hoặc muối tiêu chanh, cảm nhận vị ngọt tự nhiên của thịt cua, vị béo của gạch cua hòa huyện với vị chua, mặn, cay của nước chấm sẽ hiểu được vì sao loài cua xứ Cà Mau lại được thực khách ưa chuộng đến vậy.<img class=\"wp-image-2372 aligncenter\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-luoc.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-luoc.jpg 650w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-luoc-300x225.jpg 300w\" alt=\"cua luoc\" width=\"300\" height=\"226\" />\n\nBên cạnh cua luộc, cua Cà Mau còn có thể chế biến thành nhiều món ăn đa dạng, làm phong phú thực đơn ẩm thực của vùng đất địa đầu cực Nam Tổ quốc. Cùng điểm danh 20 món ăn ngon làm từ Cua:\n\n<strong>1. Cua hấp</strong>\n\nNếu có thời gian nhiều hơn hãy làm món cua hấp. Chọn cua thịt chắc, ngon rửa sạch, hấp cách thủy khoảng 10 phút với 5 phút đầu để lửa lớn, 5 phút sau để lửa nhỏ cho cua kịp vừa chín tới. Nước sốt được làm từ nước mắm, tỏi ớt bâm nhuyễn. Sau đó bắt chảo lên, cho ít dầu ăn và cho nước sốt vào, thêm gia vị vừa ăn và bỏ cua vào xào, đảo đều cho nước sốt thấm đều vào cua là được. Món cua hấp được phục vụ tại điểm Du lịch Hương Đất Mũi, huyện Ngọc Hiển.\n\n<em><img class=\"alignnone  wp-image-2373\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-huong-dat-mui.jpg\" sizes=\"(max-width: 296px) 100vw, 296px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-huong-dat-mui.jpg 800w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-huong-dat-mui-300x273.jpg 300w\" alt=\"cua-huong-dat-mui\" width=\"296\" height=\"269\" /></em>\n\n<em>Cua hấp – Điểm du lịch Hương Đất Mũi</em>\n\nNgoài ra, món cua hấp còn có thể được thực hiện với những nguyên liệu đa dạng khác như cua hấp nước dừa, cua hấp bia…không chỉ khử được mùi tanh mà còn giúp cho thịt cua trở nên chắc, ngọt và dậy mùi thơm hơn.\n\n<strong>2. Cua rang muối</strong>\n\nCua biển rang muối là món ăn<strong> </strong>khá gần gũi mà mang lại hương vị đậm đà khó cưỡng. Cua rang muối luôn làm người ăn thương nhớ bởi vị mặn ngọt hấp dẫn khó tìm ở các món ăn khác. Cua rang muối được xem là món ăn cầu kỳ, vì thời gian nấu khá lâu. Tuy nhiên thành phẩm thu được rất xứng đáng, món Cua rang muối được ra dĩa cùng các loại rau và nước chấm thơm lừng, chỉ nhìn thôi là đã thèm.\n\n<em><img class=\"alignnone size-medium wp-image-2374\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-muoi-300x206.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-muoi-300x206.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-muoi.jpg 800w\" alt=\"cua-rang-muoi\" width=\"300\" height=\"206\" /></em>\n\n<em>Cua rang muối – Nhà hàng Nhị Đệ</em>\n\n<strong>3. Cua rang me</strong>\n\nCua rang me là món ngon tuyệt vời của mùa hè. Đây cũng là một món ăn được chế biến công phu qua nhiều công đoạn như sơ chế, chiên cua, xào nước sốt me và cuối cùng là trang trí. Món ăn này gây ấn tượng nhờ vị chua của những trái me quện trong vị cay cay, thơm nồng của tỏi, ớt, vị ngọt của đường và hương thơm đậm đà của những con cua Cà Mau thịt chắc nịch làm ai cũng phải nhớ tới sau mỗi lần ăn. <strong> </strong>\n\n<img class=\"size-medium wp-image-2375 aligncenter\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-me-1-300x225.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-me-1-300x225.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-me-1-135x100.jpg 135w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-rang-me-1.jpg 500w\" alt=\"cua-rang-me-1\" width=\"300\" height=\"225\" />\n\n<strong>4. Cua sốt mỡ hành</strong>\n\nMỡ hành là một gia vị phổ biến, được dùng nhiều ở Việt Nam, đặc biệt là ở Đông Nam Bộ và Đồng bằng sông Cửu Long. Mỡ hành được ứng dụng dùng kèm với rất nhiều nguyên liệu chính khác như: rắc lên cơm tấm sườn bì, các món nướng nghêu-sò-ốc, đậu hũ rán, hoặc các loại bánh bèo, bánh hỏi, bánh bột lọc…Kết hợp mỡ hành với cua là cách chế biến độc đáo của người dân Cà Mau. Vị ngọt của thịt cua biển hòa với vị thơm nồng của lá hành, vị béo ngậy của mỡ, dầu thực vật sẽ tạo thành một hương vị đặc biệt, tăng độ ngon của thịt cua, kích thích vị giác của thực khách.\n\n<img class=\"alignnone size-medium wp-image-2376\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-sot-mo-hanh-300x163.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-sot-mo-hanh-300x163.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-sot-mo-hanh.jpg 800w\" alt=\"cua-sot-mo-hanh\" width=\"300\" height=\"163\" />\n\n<em>Cua sốt mỡ hành – Quán Dê 168</em>\n\n<strong>5. Cua trộn gỏi rau càng cua</strong>\n\nRau càng cua là một loại “rau trời”, mọc hoang và tươi tốt ở những nơi ẩm ướt, chưa nhiều dưỡng chất có lợi cho sức khỏe như Beta-caroten (tiền Vitamin A), cao hơi hẳn cà rốt. Món cua trộn gỏi rau càng cua thơm ngon thanh mát không chỉ chứa nhiều dưỡng chất có lợi cho sức khỏe, mà còn là một thực phẩm rất bổ dưỡng, nên thuốc.\n\n<img class=\"alignnone size-medium wp-image-2377\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/MG_4918-300x289.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/MG_4918-300x289.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/MG_4918.jpg 800w\" alt=\"_MG_4918\" width=\"300\" height=\"289\" />\n\n<em>Cua trộn gỏi rau càng cua – Nhà hàng Ninh Kiều Cà Mau</em>\n\n<strong>6. Cua sốt Samba</strong>\n\nSamba (hay Sambal) là loại nước sốt phổ biến ở các nước Đông Nam Á có nguồn gốc từ Malaysia. Với cua sốt Samba, người đầu bếp khéo léo kết hợp yếu tố ẩm thực nước ngoài với nguồn nguyên liệu thiên nhiên của vùng đất Cà Mau, phô diễn khả năng sáng tạo bất tận của người đầu bếp Cà Mau, làm nên một món ăn hấp dẫn, mới lạ, đổi khẩu vị cho các tín đồ ẩm thực.\n\n<img class=\"alignnone size-medium wp-image-2378\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-sot-Samba-300x262.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-sot-Samba-300x262.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Cua-sot-Samba.jpg 800w\" alt=\"Cua-sot-Samba\" width=\"300\" height=\"262\" />\n\n<em>Cua sốt Samba – Ẩm thực Góc Việt</em>\n\n<strong>7. Bánh canh cua Cà Mau</strong>\n\nKhác với món canh cua phổ biến hiện nay vốn đặc sệt do bột năng, bánh canh cua truyền thống Cà Mau hấp dẫn bởi vị béo, sệt tự nhiên của nước cốt dừa, là một món ăn quen thuộc của người dân sông nước Cà Mau. Tô bánh canh cua Cà Mau là sự hài hoà tuyệt đẹp giữa màu đỏ au của gạch cua với nền bánh trắng, điểm xuyến bên trên có màu xanh của hành và lấm tấm màu tiêu. Đặc biệt, sợi bánh canh bột gạo mềm mại, vị ngọt tự nhiên của hạt gạo được làm tự thủ công và từ những thớ thịt chắc nịch của con cua Cà Mau, vị béo ngậy của gạch cua và vị béo hết sức cảm tình của nước cốt dừa, nguyên liệu đặc trưng của nhiều món ăn của người miền Tây. Tất cả sẽ tạo thành một món ăn hết sức ngon miệng, lan tỏa ấn tượng sâu sắc và ấn tượng đối với thực khách khi một lần được niếm thử.\n\n<img class=\"alignnone size-medium wp-image-2379\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Banh-canh-cua-300x294.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Banh-canh-cua-300x294.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Banh-canh-cua-50x50.jpg 50w, http://camautourism.vn/cmt-content/uploads/2017/01/Banh-canh-cua.jpg 800w\" alt=\"Banh-canh-cua\" width=\"300\" height=\"294\" />\n\n<em>Bánh canh cua – Điểm Du lịch Muời Ngọt.</em>\n\n<strong>8. Chả mai cua</strong>\n\nChả cua là món được chế biến khá công phu, cua luộc lấy thịt trộn với mực, tôm sú, các thành phần như nấm mèo, mì tươi, bún tàu… Để món ăn thêm phần hấp dẫn, đẹp mắt, lấy phần chả đã trộn sẵn vào từng cái mai cua rồi cũng đem hấp chín hoặc chiên trong chảo mỡ nóng. Chả mai cua được ăn kèm với một số loại rau, cà chua, được bày trí hấp dẫn, bắt mắt, lôi cuốn thực khách ngay từ cái nhìn đầu tiên, và chắc chắn sẽ để lại trong lòng thực khách những ấn tượng khó quên.\n\n<img class=\"alignnone size-medium wp-image-2380\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cha-mai-cua-300x288.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cha-mai-cua-300x288.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Cha-mai-cua.jpg 800w\" alt=\"Cha-mai-cua\" width=\"300\" height=\"288\" />\n\n<em>Chả mai cua – Nhà hàng Cua Thứ Thiệt</em>\n\n<strong>9. Chả giò cua</strong>\n\nHãy cẩn thận, món ăn này có thể làm “bất loạn” thực khách. Chả giò cua chiên giòn rụm lớp vỏ ngoài, bên trong nhân “hơi bị ngon” với thịt cua Cà Mau trộn với thịt, nhai sật sật, thêm rau củ và thêm sốt mayonnaise và tương ướt chua chua, beo béo, hòa quyện vào nhau một cách hài hòa, cân xứng. Món ăn thích hợp dành cho mọi lứa tuổi, ngon – bổ đem lại hương vị mới cho món chả giò của Việt Nam.\n\n<img class=\"alignnone size-medium wp-image-2381\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cha-gio-cua-300x223.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cha-gio-cua-300x223.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cha-gio-cua-135x100.jpg 135w, http://camautourism.vn/cmt-content/uploads/2017/01/cha-gio-cua.jpg 800w\" alt=\"cha-gio-cua\" width=\"300\" height=\"223\" />\n\n<em>Chả giò cua Năm Căn – Nhà hàng Ozon</em>\n\n<strong>10. Cua Phụng Hoàng</strong>\n\n“Nem công, chả phượng” là những món ăn cầu kỳ dùng để tiến vua chúa ngày xưa, hiện diện trên các yến tiệc trang trọng, tao nhã. Ngày nay, món chả phụng vẫn giữ nguyên giá trị tinh tế và trang nhã của nó, xuất hiện trong các mâm tiệc nhờ bàn tay khéo léo của người đầu bếp. Đến mảnh đất trứ danh về cua, hãy thưởng thức chả phụng hoàng theo phong cách của người miền biển.\n\n&nbsp;\n\n<img class=\"alignnone size-medium wp-image-2382\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/amthuccuaphunghoang-300x255.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/amthuccuaphunghoang-300x255.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/amthuccuaphunghoang.jpg 800w\" alt=\"amthuccuaphunghoang\" width=\"300\" height=\"255\" />\n\n<em>Cua Phụng Hoàng – Ẩm thực Ngon</em>\n\nNguyên liệu chính là thịt cua trộn với giò sống, thêm gia vị và gói với các lớp rong biển, trứng, trang trí bắt mắt và tinh tế, hứa hẹn là món ăn may mắn, ăn lành cho mâm cỗ gia đình trong những dịp lễ, tết.\n\n<strong>11. Cua vàng kim</strong>\n\nĐến Thới Bình, không nên bỏ qua món cua vàng kim vô cùng thơm ngon, bổ dưỡng được chế biến từ những con cua chắc nịch. Màu đỏ của cua kết hợp với màu vàng ươm của lòng đỏ trứng muối, điểm xuyến bằng những cọng rau trang trí hài hòa, bắt mắt. Khi ăn bạn sẽ thấy bùi mặn của trứng muối hòa quyện cùng vị thơm ngon ngọt không thể lẫn của thịt cua biển Cà Mau.\n\n<img class=\"alignnone size-medium wp-image-2384\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-vang-kim-300x260.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-vang-kim-300x260.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-vang-kim.jpg 800w\" alt=\"cua vang kim\" width=\"300\" height=\"260\" />\n\n<em>Cua vàng kim – Nhà hàng Khách sạn Phước Nguyên</em>\n\n<strong>12. Cua hoàng kim giáp</strong>\n\nCua chọn loại có gạch ngon, qua nhiều công đoạn chế biến tỷ mỹ và kỳ công, thịt cua, gạch cua và thịt quả gấc sẽ hòa quyện thành một hỗn hợp hài hòa về hương vị, có vị béo ngậy của gạch cua, chất ngọt thanh tự nhiên của thịt cua cùng màu sắc bắt mắt của quả gấc. Lớp trứng được đánh bông lên và tráng mỏng và gói trọn lấy nhân thịt cua. Hình dáng bên ngoài như con cua đang khoác lên mình chiếc áo khoác Hoàng Kim lấp lánh. Món ăn mang đến một phong cách và hương vị mới lạ so với những cách chế biến cua truyền thống, mang đến giá trị dinh dưỡng tuyệt vời cho sức khỏe.\n\n<img class=\"alignnone size-medium wp-image-2385\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-hoang-kim-giapp-300x219.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-hoang-kim-giapp-300x219.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Cua-hoang-kim-giapp-135x100.jpg 135w, http://camautourism.vn/cmt-content/uploads/2017/01/Cua-hoang-kim-giapp.jpg 800w\" alt=\"Cua-hoang-kim-giapp\" width=\"300\" height=\"219\" />\n\n<em>Cua hoàng kim giáp – Nhà hàng Phố Xưa</em>\n\n<strong>13. Cà ri cua</strong>\n\nCà ri Cua là món ăn độc đáo chế biến từ cua biển Cà Mau, vừa thơm ngon vừa đậm đà từ sự kết hợp giữa màu vàng của nước dùng, màu đỏ của cua cùng mùi thơm nức của cà ri thật hấp dẫn và quyến rũ. Vị ngọt đậm đà từ cua biển, vị béo ngậy của nước cốt dừa và sắc đỏ hấp dẫn từ nước màu điều đỏ kích thích không chỉ vị giác mà còn thị giác của thực khách xa gần.\n\n<img class=\"alignnone size-medium wp-image-2386\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Ca-ri-cua-300x275.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Ca-ri-cua-300x275.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Ca-ri-cua.jpg 800w\" alt=\"Ca-ri-cua\" width=\"300\" height=\"275\" />\n\n<em>Cà ri cua – Nhà hàng Ly Na</em>\n\n<strong>14. Lẩu cua Công Đoàn</strong>\n\nCòn gì tuyệt vời hơn khi cùng với người thân, bạn bè quây quần chia sẻ nồi lẩu cua nóng hổi sóng sánh với những con cua đỏ au béo ngậy, ngọt ngào lẫn với vị chua thanh của các loại rau. Khi nhắc đến các món ăn nóng hổi ngày đông nhất định phải nói đến món lẩu. Đơn giản bởi vì trong cái gió lạnh mưa phùn, chẳng có gì bằng được quây quần quanh nồi lẩu đang sôi sùng sục khiến bạn cứ phải liên tục xì xụp thả đồ nhúng, nhanh tay gắp đồ ăn vừa chín tới.\n\n<img class=\"alignnone size-medium wp-image-2388\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/lau-cua-300x214.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/lau-cua-300x214.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/lau-cua-350x250.jpg 350w, http://camautourism.vn/cmt-content/uploads/2017/01/lau-cua.jpg 800w\" alt=\"lau cua\" width=\"300\" height=\"214\" />\n\n<em>Lẩu cua Công Đoàn – Nhà hàng Công Đoàn</em>\n\n<strong>15. Lẩu cua rào</strong>\n\nĐộc đáo hơn, hãy thử qua món lẩu cua rào. Nhìn nồi lẩu lóng lánh sắc đỏ của cua và cà chua, những loại rau thơm hấp dẫn được nấu theo phong cách của Nhà hàng Tân Tân có lẽ hiếm có thực khách kiềm lòng nỗi. Khi ăn lẩu sẽ không gây cảm giác ngán và lại vô cùng hấp dẫn, của vị chua chua cay cay và thịt cua ngọt lịm món ăn thơm ngon bổ dưỡng.\n\n<img class=\"alignnone size-medium wp-image-2389\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Lau-cua-rao-300x245.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Lau-cua-rao-300x245.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Lau-cua-rao.jpg 800w\" alt=\"Lau-cua-rao\" width=\"300\" height=\"245\" />\n\n<em>Lẩu cua rào – Nhà hàng Tân Tân</em>\n\n<strong>16. Lẩu cua Thứ thiệt</strong>\n\nĐây là một nồi lẩu được nấu theo công thức riêng của nhà hàng. Món này được kết hợp từ Cua Cà Mau, nấm và khúc biến tấu cảu các loại rau thuần thiên nhiên như: Bồn Bồn, Bông Bí, Cây Năng, Bầu, Bí Đau, Mướp, mang đến cho món ăn hương vị ngon thanh từ thiên nhiên và vị ngọt thơm mùi hải sản từ thịt Cua Cà Mau. Một món ăn không thể bỏ qua khi đến Cà Mau.\n\n<img class=\"alignnone size-medium wp-image-2390\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-thu-thiet-300x199.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-thu-thiet-300x199.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-thu-thiet.jpg 800w\" alt=\"cua-thu-thiet\" width=\"300\" height=\"199\" />\n\n<em>Lẩu cua Thứ thiệt – Nhà hàng Cua Thứ Thiệt</em>\n\n<strong>17. Cua sốt bắp</strong>\n\nNguyên liệu chinh Cua Ngọc Hiển, Nước mắm Phú Quốc, Bắp mỹ. Đây là một sự kết hợp đa vùng miền, mới lạ và giàu dinh dưỡng của hai nguyên liệu chính là Thịt Cua và Bắp mỹ. Vị bùi ngọt của thịt Cua, vị mặn nhẹ và thơm lừng từ nước mắm, kết hợp cùng vị thơm, ngọt từ bắp. Một sự hòa quyện của các chất dinh dưỡng: Đạm, Canxi, Xơ, Tinh Bột, Omega,….\n\n<img class=\"alignnone size-medium wp-image-2393\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-sop-bap-300x176.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-sop-bap-300x176.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-sop-bap.jpg 800w\" alt=\"cua-sop-bap\" width=\"300\" height=\"176\" />\n\n<em>Cua sốt bắp – Nhà hàng cua thứ thiệt</em>\n\n<strong>18. Cua Như Ý</strong>\n\nĐây là món độc quyền của nhà hàng Như Ý Hải sản Biển Đông. Cua dùng để chế biến là cua gạch son, hấp cách thủy vừa chín tới, được tách thịt. Phần gạch cua được đánh lên, thêm gia vị và trộn chung với thịt cua gồm đem hỗn hợp đổ vào mai cua đã được rửa sạch. Những chiếc mai cua hấp dẫn được đem nướng lên thơm phức và nhìn bắt mắt như sau:\n\n<img class=\"alignnone size-medium wp-image-2394\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-nhu-y-300x241.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/Cua-nhu-y-300x241.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/Cua-nhu-y.jpg 800w\" alt=\"Cua-nhu-y\" width=\"300\" height=\"241\" />\n\n<em>Cua Như Ý- Nhà hàng Như Ý-Hải sản Biển Đông</em>\n\n<strong>19. Cua tay cầm</strong>\n\nCua gạch ngon đem tách mai, lấy thịt cắt ra thành 2 rồi đem chiên sơ qua trên chảo dầu nóng. Vớt cua ra để ráo dầu rồi chế biến cùng với các nguyên liệu như nấm đông cô, nấm mèo, đặc biệt là nước sốt Hàn quốc với vị cay, chua, ngọt đặc trưng. Món ăn có màu đỏ tươi, ngấm gia vị, thịt cua không bị vỡ nát; ngấm gia vị đậm đà, hấp dẫn.\n\n<img class=\"alignnone size-medium wp-image-2392\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-tay-cam-300x199.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-tay-cam-300x199.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-tay-cam-1024x682.jpg 1024w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-tay-cam.jpg 1115w\" alt=\"cua-tay-cam\" width=\"300\" height=\"199\" />\n\n<em>Cua tay cầm – Điểm du lịch sinh thái Quốc Tế</em>\n\n<strong>20. Cua bò bờ đê</strong>\n\nĐây là món cua chế biến thành 3 vị của 3 vùng khác nhau: Bắc – Trung – Nam với 3 vị chua – mặn – ngọt để dự thi món ăn “Cua Bò Bờ Đê”. Với gia vị đặc trưng để làm nên một món ăn hấp dẫn và đẹp mắt. Thành phần gia vị gồm: Me, đường, muối, tỏi, sốt hoisin, bơ đậu phộng, lá đinh lăng, ớt cay và cùng với nước sốt đặc biệt của Khách sạn Mường Thanh Luxury Cà Mau để tạo nên hương vị món ăn.\n\n&nbsp;\n\n<img class=\"alignnone size-medium wp-image-2395\" src=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-bo-bo-de-300x250.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"http://camautourism.vn/cmt-content/uploads/2017/01/cua-bo-bo-de-300x250.jpg 300w, http://camautourism.vn/cmt-content/uploads/2017/01/cua-bo-bo-de.jpg 800w\" alt=\"cua-bo-bo-de\" width=\"300\" height=\"250\" />","Cua gạch","","publish","open","open","","cua-gach","","","2019-04-16 11:17:50","2019-04-16 04:17:50","","0","https://bizhostvn.com/w/nhahang/?p=1","0","post","","1"),
("2","1","2019-04-15 03:36:16","2019-04-15 03:36:16","<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"https://bizhostvn.com/w/nhahang/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2019-04-15 03:36:16","2019-04-15 03:36:16","","0","https://bizhostvn.com/w/nhahang/?page_id=2","0","page","","0"),
("3","1","2019-04-15 03:36:16","2019-04-15 03:36:16","<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: https://bizhostvn.com/w/nhahang.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-04-15 03:36:16","2019-04-15 03:36:16","","0","https://bizhostvn.com/w/nhahang/?page_id=3","0","page","","0"),
("7","1","2019-04-16 09:09:50","2019-04-16 02:09:50","","LOGO-NHA-HANG","","inherit","open","closed","","logo-nha-hang","","","2019-04-16 09:09:50","2019-04-16 02:09:50","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/LOGO-NHA-HANG.png","0","attachment","image/png","0"),
("10","1","2019-04-16 09:11:41","2019-04-16 02:11:41","","favicon","","inherit","open","closed","","favicon","","","2019-04-16 09:11:41","2019-04-16 02:11:41","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/favicon.jpg","0","attachment","image/jpeg","0"),
("11","1","2019-04-16 09:11:44","2019-04-16 02:11:44","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cropped-favicon.jpg","cropped-favicon.jpg","","inherit","open","closed","","cropped-favicon-jpg","","","2019-04-16 09:11:44","2019-04-16 02:11:44","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cropped-favicon.jpg","0","attachment","image/jpeg","0"),
("20","1","2019-04-16 09:37:12","2019-04-16 02:37:12","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"https://webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-04-16 16:54:44","2019-04-16 09:54:44","","0","https://bizhostvn.com/w/nhahang/?page_id=20","0","page","","0"),
("22","1","2019-04-16 09:37:20","2019-04-16 02:37:20","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"https://webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Liên hệ","","publish","closed","closed","","lien-he","","","2019-04-16 16:54:34","2019-04-16 09:54:34","","0","https://bizhostvn.com/w/nhahang/?page_id=22","0","page","","0"),
("24","1","2019-04-16 09:37:26","2019-04-16 02:37:26","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" visibility=\"hide-for-small\"]\n\n[ux_banner height=\"33%\" bg=\"62\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInX\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Lẩu hơi Tỳ Hưu Trung Thành</h3>\n<p><span style=\"font-size: 95%;\">Đến với Nhà hàng Lẩu hơi Tỳ Hưu Trung Thành, quý khách sẽ được thưởng thức các món lẩu ngon nhất, được chế biến bởi các đầu bếp hàng đầu Việt Nam. Chúng tôi chắc chắn sẽ khiến bạn hài lòng!.</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"33%\" bg=\"63\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInY\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Ẩm thực Việt Nam</h3>\n<p><span style=\"font-size: 95%;\">Không gì tuyệt vời bằng thưởng thức ẩm thực Việt Nam cùng gia đình và người thân. Chúng tôi cung cấp các món lẩu chuẩn vị ẩm thực Việt Nam mang đến cảm giác quen thuộc nhưng cực kỳ đặc sắc cho bạn thưởng thức</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" visibility=\"show-for-small\"]\n\n[ux_banner height=\"76%\" height__sm=\"187%\" bg=\"607\" bg_size=\"original\" bg_overlay__sm=\"rgba(0, 0, 0, 0)\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInX\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Lẩu hơi Tỳ Hưu Trung Thành</h3>\n<p><span style=\"font-size: 115%;\">Đến với Nhà hàng Lẩu hơi Tỳ Hưu Trung Thành, quý khách sẽ được thưởng thức các món lẩu ngon nhất, được chế biến bởi các đầu bếp hàng đầu Việt Nam. Chúng tôi chắc chắn sẽ khiến bạn hài lòng!.</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"33%\" height__sm=\"187%\" bg=\"63\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInY\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Ẩm thực Việt Nam</h3>\n<p><span style=\"font-size: 120%;\">Không gì tuyệt vời bằng thưởng thức ẩm thực Việt Nam cùng gia đình và người thân. Chúng tôi cung cấp các món lẩu chuẩn vị ẩm thực Việt Nam mang đến cảm giác quen thuộc nhưng cực kỳ đặc sắc cho bạn thưởng thức</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[section label=\"Thực đơn\" padding=\"51px\" class=\"thuc-don-section\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"157\" image_size=\"original\" width=\"21\"]\n\n[title style=\"center\" text=\"Thực đơn tại Nhà hàng Trung Thành\" tag_name=\"h2\" color=\"rgb(159, 0, 0)\"]\n\n<p style=\"text-align: center;\">Thực đơn hấp dẫn của nhà hàng có tới hơn 150 món ăn chuẩn vị Việt Nam sẵn sàng cho bạn lựa chọn</p>\n[tabgroup style=\"pills\" nav_size=\"large\" align=\"center\" class=\"tab-thuc-don\"]\n\n[tab title=\"Khai vị\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Món tự chọn\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Chiên, xào, om\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Đồ uống\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Lẩu các loại\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"12\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Các món đặt trước\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"6\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Thuốc lá\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n\n[/tabgroup]\n[ux_banner_grid class=\"banner-thuc-don\"]\n\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"251\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"6\" height=\"2-3\"]\n\n[ux_image id=\"261\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"253\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"263\" image_size=\"original\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/col]\n[col span__sm=\"12\" align=\"center\" visibility=\"show-for-small\"]\n\n[ux_image id=\"157\" image_size=\"original\" width=\"21\" width__sm=\"56\"]\n\n[title style=\"center\" text=\"Thực đơn tại Nhà hàng Trung Thành\" tag_name=\"h2\" color=\"rgb(159, 0, 0)\" size=\"138\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Thực đơn hấp dẫn của nhà hàng có tới hơn 150 món ăn chuẩn vị Việt Nam sẵn sàng cho bạn lựa chọn</span></p>\n[tabgroup style=\"pills\" nav_size=\"large\" align=\"center\" class=\"tab-thuc-don\"]\n\n[tab title=\"Khai vị\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Món tự chọn\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Chiên, xào, om\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Đồ uống\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Lẩu các loại\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"12\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Các món đặt trước\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"6\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Thuốc lá\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n\n[/tabgroup]\n[ux_banner_grid class=\"banner-thuc-don\"]\n\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"251\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"6\" height=\"2-3\"]\n\n[ux_image id=\"261\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"253\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"263\" image_size=\"original\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao\" bg=\"362\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.78)\" dark=\"true\" padding=\"48px\" class=\"tai-sao-section\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"7\" image_size=\"original\" width=\"18\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn Nhà hàng Lẩu hơi Trung Thành\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Thực đơn lẩu chuẩn vị Việt Nam có hơn 50 món do chính tay đầu bếp giàu kinh nghiệm lựa chọn, được dọn lên theo trình tự sup khai vị, món nướng, món măng, món nước, món canh, lẩu, chè và trái cây tráng miện để thực khách thưởng thức trọn vẹn tất cả cả các loại món mà không cảm thấy quá no, thay vào đó chỉ còn lại hương vị thơm ngon cùng chất dinh dưỡng đặc biệt trong từng món ăn sẽ làm cho thực khách nhớ mãi</span></p>\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"380\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Sản phẩm luôn luôn tươi sống</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"381\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Hỗ trợ đặt hàng Online dễ dàng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"383\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Sóng wifi mạnh phủ khắp nhà hàng </span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"382\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Có chỗ đậu xe Ô tô miễn phí</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"384\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Giao hàng tận nơi với các đơn Online</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"385\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Có phòng lớn tổ chức hội nghị</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Món ăn hấp dẫn nhất\" bg=\"417\" bg_size=\"original\" bg_overlay=\"rgba(255, 255, 255, 0.7)\" padding=\"51px\" class=\"ban-chay\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Món ăn bán chạy nhất tháng 4/2019\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Chúng tôi gợi ý cho bạn một số món ăn đã trở thành thương hiệu của chúng tôi và có doanh thu bán chạy nhất tháng 4/2019</span></p>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" cat=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Thông tin liên hệ\" bg=\"436\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.22)\" dark=\"true\" class=\"thong-tin-lien-he\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"442\" img_width=\"50\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\"><strong>0909009009</strong></span></p>\n<p><span style=\"font-size: 95%;\">Hotline đặt hàng và tư vấn 24/7</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"443\" img_width=\"55\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 110%;\">demo@gmail.com</span></strong></p>\n<p><span style=\"font-size: 95%;\">Email nhận báo giá, yêu cầu xuất hóa đơn</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"444\" img_width=\"55\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 110%;\">145 Phượng Hoàng, Hải Phòng</span></strong></p>\n<p><span style=\"font-size: 95%;\">Địa chỉ Nhà hàng Lẩu Hơi Trung Thành</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đặt bàn - PC\" bg=\"643\" bg_size=\"original\" padding=\"45px\" class=\"dat-ban-section\" visibility=\"hide-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"455\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đặt bàn - Mobile\" padding=\"45px\" class=\"dat-ban-section\" visibility=\"show-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"455\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bài viết - hướng dẫn\" padding=\"50px\" class=\"bai-viet-huong-dan\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Bài viết mới\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Cùng đầu bếp của Nhà hàng chúng tôi tìm hiểu và học cách chế biến một số món ăn thông dụng nhé!</span></p>\n[blog_posts style=\"normal\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"13,2\" show_date=\"text\" excerpt=\"false\" excerpt_length=\"23\" image_height=\"58%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2019-04-17 22:25:26","2019-04-17 15:25:26","","0","https://bizhostvn.com/w/nhahang/?page_id=24","0","page","","0"),
("26","1","2019-04-16 09:37:47","2019-04-16 02:37:47"," ","","","publish","closed","closed","","26","","","2019-04-16 10:25:01","2019-04-16 03:25:01","","0","https://bizhostvn.com/w/nhahang/?p=26","1","nav_menu_item","","0"),
("27","1","2019-04-16 09:37:47","2019-04-16 02:37:47"," ","","","publish","closed","closed","","27","","","2019-04-16 10:25:01","2019-04-16 03:25:01","","0","https://bizhostvn.com/w/nhahang/?p=27","5","nav_menu_item","","0"),
("28","1","2019-04-16 09:37:47","2019-04-16 02:37:47"," ","","","publish","closed","closed","","28","","","2019-04-16 10:25:01","2019-04-16 03:25:01","","0","https://bizhostvn.com/w/nhahang/?p=28","2","nav_menu_item","","0"),
("29","1","2019-04-16 09:37:47","2019-04-16 02:37:47"," ","","","publish","closed","closed","","29","","","2019-04-16 10:25:01","2019-04-16 03:25:01","","0","https://bizhostvn.com/w/nhahang/?p=29","3","nav_menu_item","","0"),
("30","1","2019-04-16 09:37:47","2019-04-16 02:37:47","","Tin tức - sự kiện","","publish","closed","closed","","30","","","2019-04-16 10:25:01","2019-04-16 03:25:01","","0","https://bizhostvn.com/w/nhahang/?p=30","4","nav_menu_item","","0"),
("31","1","2019-04-16 09:38:08","2019-04-16 02:38:08","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"https://webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Hướng dẫn đặt bàn","","publish","closed","closed","","huong-dan-dat-ban","","","2019-04-16 17:03:27","2019-04-16 10:03:27","","0","https://bizhostvn.com/w/nhahang/?page_id=31","0","page","","0"),
("33","1","2019-04-16 09:38:13","2019-04-16 02:38:13","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"https://webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Quy định thanh toán","","publish","closed","closed","","quy-dinh-thanh-toan","","","2019-04-16 17:03:17","2019-04-16 10:03:17","","0","https://bizhostvn.com/w/nhahang/?page_id=33","0","page","","0"),
("35","1","2019-04-16 09:38:31","2019-04-16 02:38:31"," ","","","publish","closed","closed","","35","","","2019-04-16 09:38:31","2019-04-16 02:38:31","","0","https://bizhostvn.com/w/nhahang/?p=35","1","nav_menu_item","","0"),
("36","1","2019-04-16 09:38:31","2019-04-16 02:38:31"," ","","","publish","closed","closed","","36","","","2019-04-16 09:38:31","2019-04-16 02:38:31","","0","https://bizhostvn.com/w/nhahang/?p=36","2","nav_menu_item","","0"),
("62","1","2019-04-16 10:07:15","2019-04-16 03:07:15","","slider01","","inherit","open","closed","","slider01","","","2019-04-16 10:07:15","2019-04-16 03:07:15","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/slider01.jpg","0","attachment","image/jpeg","0"),
("63","1","2019-04-16 10:07:18","2019-04-16 03:07:18","","slider2","","inherit","open","closed","","slider2","","","2019-04-16 10:07:18","2019-04-16 03:07:18","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/slider2.jpg","0","attachment","image/jpeg","0"),
("117","1","2019-04-16 10:27:01","2019-04-16 03:27:01","","bg-header","","inherit","open","closed","","bg-header","","","2019-04-16 10:27:01","2019-04-16 03:27:01","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg-header.jpg","0","attachment","image/jpeg","0"),
("118","1","2019-04-16 10:27:15","2019-04-16 03:27:15","","bg-header","","inherit","open","closed","","bg-header-2","","","2019-04-16 10:27:15","2019-04-16 03:27:15","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg-header.png","0","attachment","image/png","0"),
("157","1","2019-04-16 10:50:22","2019-04-16 03:50:22","","logo-trung-thanh","","inherit","open","closed","","logo-trung-thanh","","","2019-04-16 10:50:22","2019-04-16 03:50:22","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/logo-trung-thanh.jpg","0","attachment","image/jpeg","0"),
("184","1","2019-04-16 11:12:41","2019-04-16 04:12:41","a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:thuc-don\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Món ăn","mon-an","publish","closed","closed","","group_5cb55630733a8","","","2019-04-16 11:14:51","2019-04-16 04:14:51","","0","https://bizhostvn.com/w/nhahang/?post_type=acf-field-group&#038;p=184","0","acf-field-group","","0"),
("185","1","2019-04-16 11:14:51","2019-04-16 04:14:51","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Nhập giá tiền cho món này. Ví dụ: 100.000đ/đĩa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Nhập giá tiền\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Giá tiền","gia_tien","publish","closed","closed","","field_5cb556411aa8f","","","2019-04-16 11:14:51","2019-04-16 04:14:51","","184","https://bizhostvn.com/w/nhahang/?post_type=acf-field&p=185","0","acf-field","","0"),
("186","1","2019-04-16 11:14:51","2019-04-16 04:14:51","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Nhập giá sau khi đã khuyến mại. Ví dụ: 50.000đ/đĩa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:26:\"Nhập giá khuyến mại\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Giá khuyến mãi","gia_khuyen_mai","publish","closed","closed","","field_5cb5567a1aa90","","","2019-04-16 11:14:51","2019-04-16 04:14:51","","184","https://bizhostvn.com/w/nhahang/?post_type=acf-field&p=186","1","acf-field","","0"),
("188","1","2019-04-16 11:17:00","2019-04-16 04:17:00","","món-cua-gạch","","inherit","open","closed","","mon-cua-gach","","","2019-04-16 11:17:00","2019-04-16 04:17:00","","1","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/món-cua-gạch.jpg","0","attachment","image/jpeg","0"),
("198","1","2019-04-16 11:23:09","2019-04-16 04:23:09","Ốc hương xào bắp bơ với thịt ốc hương nhai giòn sần sật, quyện đều vị béo thơm của bơ, cùng bắp hột dẻo ngọt, thêm ít vị béo của tóp mỡ, hành lá thơm phức. Đây thích hợp làm món ăn vặt cho cả nhà nhâm nhi lót dạ.\n\nỐc hương sống mua về các bạn ngâm với nước vo gạo có pha ớt khoảng vài tiếng cho nhả nhớt. Sau đó rửa sạch, luộc chín ốc với gừng cắt lát, vớt ra để ráo. Gỡ bỏ vảy ốc sẽ giúp ốc dễ thấm gia vị hơn trong lúc xào. Bắp hột đem luộc chín rồi trút ra rỗ để ráo nước. Hành tím bóc vỏ, bào mỏng. Tỏi lột vỏ băm nhuyễn.\n\nCho 50g bơ vào chảo, bật lửa, bơ tan cho tiếp hành tỏi vào phi thơm. Tiếp theo cho 1 muỗng cà phê ớt bột, ốc hương và gia vị vào chảo, đảo đều, nêm vừa ăn. Xào lửa nhỏ để gia vị từ từ thấm vào thịt ốc.\n\nKhi sốt bắt đầu cạn tiếp tục cho vào chảo bắp hạt đã luộc chín và 10g tóp mỡ đảo đều vài lượt thì tắt bếp.\n\nỐc hương xào bắp bơ với thịt ốc hương nhai giòn sần sật, quyện đều vị béo thơm của bơ, cùng bắp hột dẻo ngọt, thêm ít vị béo của tóp mỡ, hành lá thơm phức. Đây thích hợp làm món ăn vặt cho cả nhà nhâm nhi lót dạ.","Ốc hương","","publish","open","open","","oc-huong","","","2019-04-16 11:23:59","2019-04-16 04:23:59","","0","https://bizhostvn.com/w/nhahang/?p=198","0","post","","0"),
("199","1","2019-04-16 11:23:04","2019-04-16 04:23:04","","món-ốc-hương","","inherit","open","closed","","mon-oc-huong","","","2019-04-16 11:23:04","2019-04-16 04:23:04","","198","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/món-ốc-hương.jpg","0","attachment","image/jpeg","0"),
("202","1","2019-04-16 11:25:53","2019-04-16 04:25:53","<strong>Với người dân Hải Phòng, giá biển hay giá bể là một món ăn rất quen thuộc, hấp dẫn, nhất là vào ngày mùa đông lạnh giá. Nhưng với người dân ở xứ khác, đây có lẽ là một món ăn xa lạ. Vì thế, giá biển được xem là một đặc sản độc đáo của thành phố hoa phượng đỏ.</strong>\n\nGiá biển là một loại <strong>nhuyễn thể</strong>*, có hai mảnh vỏ màu xanh, to bằng ngón tay, cùng với những cọng chân khoằn khoèo như cái giá đỗ. Giá biển sống trong các bãi cát ven biển. Giá biển ẩn chứa bên trong một lớp thịt ngọt lừ và có thể chế biến thành nhiều món ăn độc đáo như giá biển xào chua ngọt, giá biển trộn thính và nem làm gỏi giá, hay chỉ đon giản là giá biển xào nóng tất cả đều hấp dẫn, đều đậm bùi hương vị của con giá.\n<blockquote>*Giá bể là một loài thuộc ngành Tay Cuộn (Brachiopoda). Ngành này phát triển mạnh trong Đại Cổ Sinh (Paleozoi). Nhưng chúng đã bị tuyệt chủng vào thời gian cuối Đại Cổ Sinh, đầu Đại Trung Sinh (Mezozoi). (Theo thông tin anh Nguyễn Thanh Sơn cung cấp)</blockquote>\n<a title=\"\" href=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-2.jpg\" data-rel=\"lightbox-gallery-BpKxeg1v\" data-rl_title=\"\" data-rl_caption=\"\"><img class=\" size-full wp-image-2005 aligncenter\" src=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-2.jpg\" sizes=\"(max-width: 610px) 100vw, 610px\" srcset=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-2.jpg 610w, https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-2-600x450.jpg 600w, https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-2-300x225.jpg 300w\" alt=\"\" width=\"100%\" height=\"auto\" /></a>\n\nCách chế biến giá biển cũng khá đơn giản. Sau khi rửa sạch, vặt chân và bỏ đầu, người ta bỏ mình giá vào chõ đồ như đồ xôi (thay vì luộc) cho chín vừa tới rồi đổ giá ra, để nguội và bóc lấy thịt giá. Chân giá làm sạch, nhúng nước sôi nhưng đừng kỹ quá kẻo dai, vớt ra để ráo. Từ nguyên liệu là chân giá, thịt giá có thể chế biến thành các món ăn khác nhau, tùy sở thích của từng người.\n\nĐơn giản nhất là làm nộm giá. Chỉ cần giã thêm chút riềng thật nhuyễn, cho mình giá vào xào chung, rồi rang vừng cho vàng và một ít lá chanh thái chỉ, trộn chung tất cả gia vị với mình giá, chân giá đã trụng nước sô vào là đã có món nộm vừa ngon, vừa độc đáo. Nộm giá biển ăn có cảm giác sần sật, bùi bùi, giòn, ngọt và hơi cay cay.\n\n<a title=\"\" href=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-4.jpg\" data-rel=\"lightbox-gallery-BpKxeg1v\" data-rl_title=\"\" data-rl_caption=\"\"><img class=\" size-full wp-image-2007 aligncenter\" src=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-4.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-4.jpg 600w, https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-4-300x225.jpg 300w\" alt=\"\" width=\"100%\" height=\"auto\" /></a>\n\nGiá bể không đắt, nhưng công sức để chế biến ra thành những món ăn cho mọi ngưòi thường thức rất công phu và không phải ai cũng biết làm cho ngon. Phổ biến nhất chỉ có hai món: giá bể làm gỏi và giá xào chua ngọt.\n\nNgười bán hàng tả, giá bể mua về rửa sạch để ráo, rồi luộc thật kỹ vì không kỹ sẽ không thể tách thịt chúng ra khỏi vỏ, đây cũng là khâu mất thời gian nhất. Thịt giá bể sau khi tách ra được trộn với hỗn hợp thính gạo, riềng, đậu phộng, mè….giã nhỏ và lá chanh xắt nhuyễn.\n\n<a title=\"\" href=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-1.jpg\" data-rel=\"lightbox-gallery-BpKxeg1v\" data-rl_title=\"\" data-rl_caption=\"\"><img class=\" size-full wp-image-2004 aligncenter\" src=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-1.jpg 600w, https://yesvietnam.vn/wp-content/uploads/2015/07/Gia-be-Hai-Phong-1-300x225.jpg 300w\" alt=\"\" width=\"100%\" height=\"auto\" /></a>\n\nMón này cuốn bánh tráng ăn kèm với các loại rau thơm đinh lăng, lá sắn thuyền, chuối chát, dứa chua ngọt, khế xắt mỏng…chấm nước mắm chua ngọt. Vị beo béo của thịt giá bể hoà quyện cùng chút hương thơm ngai ngái của riềng, vị bùi thơm của mè, đậu phộng, vị thơm đặc trưng của lá chanh cùng các gia vị chua chát, các loại rau thơm…\n\nCòn món giá bể xào, Cô Tân nói chế biến rất dễ, chỉ khó là cách nêm nếm gia vị sao cho vừa miệng. Hành tỏi phi thơm cho giá vào đảo, nêm gia vị, giấm, mắm, đường…và chút bột mỳ, bột dong pha loãng vào cho giá bể sệt lại, tới lúc ăn cho thêm ít lá ngò)xắt nhuyễn và chút tương ớt vào là được. Giá bể xào chua chua ngọt ngọt rất dễ ăn, tuy nhiên cũng hơi mệt vì ngưòi ăn phải nhằn từng con một, tách vỏ chúng ra bằng lưỡi để ăn phần thân nằm trong…","Nộm giá bể","","publish","open","open","","nom-gia-be","","","2019-04-16 11:26:08","2019-04-16 04:26:08","","0","https://bizhostvn.com/w/nhahang/?p=202","0","post","","0"),
("203","1","2019-04-16 11:25:49","2019-04-16 04:25:49","","nộm-giá-bể","","inherit","open","closed","","nom-gia-be","","","2019-04-16 11:25:49","2019-04-16 04:25:49","","202","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/nộm-giá-bể.jpg","0","attachment","image/jpeg","0"),
("206","1","2019-04-16 11:27:37","2019-04-16 04:27:37","<strong>Vị trí của gầu bò mỹ</strong>: là miếng thịt thuộc hai chân trước phần từ chân đến hầu của con bò.\n\nhay còn gọi là nạm bò, ức bò (Brisket) là sản phẩm nhập khẩu trực tiếp từ các thương hiệu thịt bò hàng đầu của Mỹ như Excel Cargill, St.Helen,…với đầy đủ tem nhãn của nhà sản xuất và dấu kiểm định của Bộ Nông Nghiệp Hoa Kỳ – USDA.\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Quá trình sơ chế, hút chân không, đóng khay, cấp đông gầu bò Mỹ vệ sinh sạch sẽ, đảm bảo chất lượng, an toàn cho sức khỏe người tiêu dùng. Gầu bò Mỹ được pha cắt bằng máy bào công nghiệp, bào lẩu theo tiêu chuẩn độ dày 1,5mm hoặc bào lát 4mm – 5mm phù hợp cho món nướng, bbq, áp chảo.</span></p>\n<span style=\"font-size: 12pt;\"><img src=\"http://file.hstatic.net/1000301274/file/shutterstock_558054829-min.jpg\" /></span>\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><a href=\"https://homefarm.vn/products/thit-ba-chi-bo-my\"><strong>Bò Mỹ</strong></a> có thể bảo quản đông trong ngăn đá với nhiệt độ -18 độ C. Trước khi sử dụng nên xả đông 30 – 40 phút. Không nên để thịt tan giá hoàn toàn mà miếng thịt phải còn hơi cứng để khi thái lát, cắt miếng sẽ dễ dàng hơn. Sau đó tẩm ướp gia vị và trong quá trình đợi gia vị ngấm đều thì thịt tan giá hết là vừa. Như vậy thịt vừa có độ dẻo dai, vừa giữ được hương vị tự nhiên nhất và không bị nát khi chế biến.</span></p>\n<span style=\"font-size: 12pt;\"><img src=\"http://file.hstatic.net/1000301274/file/shutterstock_558054856-min.jpg\" /></span>\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Gầu bò Mỹ là phần thịt nằm ở ức bò (từ ngực đến cổ dưới của bò) có nhiều mỡ xen kẽ nhưng nạc hơn thịt ba chỉ bò Mỹ, có nhiều gân và dai hơn các phần thịt khác, ăn giòn, thơm và không ngấy. Gầu bò Mỹ là thực phẩm quen thuộc giàu dinh dưỡng có thể chế biến được nhiều món trong bữa ăn hàng ngày như: lẩu bò, phở bò, bò nhúng dấm, bò hầm, bò kho, bò sốt, bò nướng, bò chiên, bò áp chảo, bò xào, bò luộc, bò muối…rất ngon miệng. Gầu bò Mỹ có hàm lượng dinh dưỡng cao, hội tụ nhiều loại axit amin, protein thích hợp với những người có thể chất yếu. Do đó, sử dụng <a href=\"https://homefarm.vn/\"><strong>thịt bò nhập khẩu</strong></a> giúp cải thiện sức đề kháng của cơ thể.</span></p>\n<span style=\"font-size: 12pt;\"><img src=\"http://file.hstatic.net/1000301274/file/shutterstock_558054838-min.jpg\" /></span>","Gầu bò Mỹ","","publish","open","open","","gau-bo-my","","","2019-04-16 11:27:37","2019-04-16 04:27:37","","0","https://bizhostvn.com/w/nhahang/?p=206","0","post","","0"),
("207","1","2019-04-16 11:27:01","2019-04-16 04:27:01","","bầu-bò-mỹ","","inherit","open","closed","","bau-bo-my","","","2019-04-16 11:27:01","2019-04-16 04:27:01","","206","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bầu-bò-mỹ.jpg","0","attachment","image/jpeg","0"),
("209","1","2019-04-16 11:29:18","2019-04-16 04:29:18","Bắp cá lóc bò Mỹ – Chuck tender là vết cắt hình chữ nhật nằm ở vai gần cổ bò. Hình dáng tương tự như Tenderloin nhưng ngắn và to hơn. Là vùng cơ hoạt động nhiều nhưng nằm trong lõi cổ bò cho nên không dai. Bắp cá lóc được sử dụng để thay thế thăn nội bò vì lát cắt tương đối giống. Các món nướng, steak là lựa chọn phù hợp.\n\nCác lát cắt phụ thuộc vào món chúng ta chế biến. Tuy nhiên khi chế biến các món nướng thường cắt lát dày 0.8cm đến 1cm. Ngoài ra một số nơi thái lát mỏng để nhúng lẩu, phở,…","Bắp bò Mỹ","","publish","open","open","","bap-bo-my","","","2019-04-16 11:29:18","2019-04-16 04:29:18","","0","https://bizhostvn.com/w/nhahang/?p=209","0","post","","0"),
("210","1","2019-04-16 11:29:01","2019-04-16 04:29:01","","bắp-bò-mỹ","","inherit","open","closed","","bap-bo-my","","","2019-04-16 11:29:01","2019-04-16 04:29:01","","209","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bắp-bò-mỹ.jpg","0","attachment","image/jpeg","0"),
("212","1","2019-04-16 11:30:46","2019-04-16 04:30:46","Cá vược có nhiều điểm tương đồng với cá rô, trong tiếng Anh cũ, thuật ngữ cá vược (bass) có nghĩa là cá rô[1] Cá vược là một đặc sản cho giá trị kinh tế cao bởi dinh dưỡng mà cá vược mang lại vượt trên nhiều loại cá khác, cá vược đã được thuần hóa để nuôi cả trong nguồn nước mặn và nước ngọt.[2] Cá vược còn là loài cá phổ biến trong việc câu cá giải trí hay câu cá thể thao, đặc biệt là ở Bắc Mỹ với các loài cá vược đen.\nĐặc trưng chung cho các loài cá vược trong thể loại này là loài cá sinh sống được cả ở nước ngọt và nước lợ những con Cá vược có cơ thể dài, miệng rộng, không cân, hàm trên kéo tới tận sau mắt. Đầu nhọn, nhìn bên lõm phía lưng (hình dạng lưng lõm) và lồi ở phía trước vây lưng. Vẩy dạng lược rộng. Chiều dài tối đa: 200 cm, cân nặng 60 kg.\n\nNhiều loài cá vược có kích thước khổng lồ. Cá vược cỡ lớn có con đến 50 kg hoặc 70 kg, chẳng hạn như có cá vược nặng tới 112 kg, chiều dài hơn 1,8m tại Uganda. Kỉ lục hiện hành thuộc về con cá vược nặng 103,5 kg[5] hay như có con cá vược nặng 6,5 kg trên sông Hương ở Việt Nam, có chiều dài hơn 75 cm, vòng bụng hơn 70 cm, cân nặng đúng 6,5 kg, đây là con đạt trọng lượng cao nhất từ trước đến nay.\n\nMàu sắc cá có hai giai đoạn, giai đoạn giống cá thường có màu nâu Oliu ở phía trên với màu bạc ở hai bên lườn và bụng, khi cá sống trong môi trường nước biển và màu nâu vàng trong môi trường nước ngọt, giai đoạn trưởng thành cá có màu xanh lục hay vàng nhạt ở phần trên và màu bạc phần đuôi. Cá vược là loài cá dữ, thức ăn ưa thích là các loại cá tạp, tôm, không ăn thực vật và các loài giáp xác khác nhau như cua, cáy.","Cá vược","","publish","open","open","","ca-vuoc","","","2019-04-16 11:30:46","2019-04-16 04:30:46","","0","https://bizhostvn.com/w/nhahang/?p=212","0","post","","0"),
("213","1","2019-04-16 11:29:58","2019-04-16 04:29:58","","cá-vược","","inherit","open","closed","","ca-vuoc","","","2019-04-16 11:29:58","2019-04-16 04:29:58","","212","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cá-vược.jpg","0","attachment","image/jpeg","0"),
("215","1","2019-04-16 11:31:59","2019-04-16 04:31:59","<div id=\"divfirst\"><b>Cá song rất được ưa chuộng trong các loài cá biển vì lý do thịt trắng phau, dai, ngọt thanh cùng lớp da cá béo giòn sừn sựt. Là loài cá quý, giàu giá trị dinh dưỡng, cá song làm được rất nhiều món ngon từ hấp, gỏi, nấu cháo đến nấu lẩu, hấp thuốc bắc…</b>\n<i>Trong thịt cá song (hay còn gọi là cá mú) nói riêng và cá nói chung có chứa rất nhiều chất protein và vitamin cần thiết như vitamin A, D, phốt pho, magiê, kẽm tốt cho sức khỏe con người đặc biệt là tốt cho hệ tiêu hóa và tim mạch. Các axit béo Omega 3 có trong cá góp phần đẩy mạnh việc sản xuất chất chống kết thụ tiểu cầu giúp giảm nguy cơ hình thành cục máu đông. Ngoài ra, với thành phần DHA và EPA còn giúp làm giảm đáng kể hàm lượng triglyceride trong máu từ đó làm giảm nguy cơ nhồi máu cơ tim. DHA cũng có vai trò quan trọng trong quá trình sinh trưởng của tế bào não và hệ thần kinh. Thiếu chất này con người sẽ giảm trí nhớ, kém thông minh.</i>\n<div class=\"VCSortableInPreviewMode active noCaption\">\n<div><img id=\"img_f0ba1060-c16a-11e8-8eb4-0d26170c4a4b\" title=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 1.\" src=\"https://tieudungvne.mediacdn.vn/thumb_w/640/2018/9/26/ca-mu-cham-15379525673101176475153.jpg\" alt=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 1.\" width=\"\" height=\"\" data-original=\"https://tieudungvne.mediacdn.vn/2018/9/26/ca-mu-cham-15379525673101176475153.jpg\" /></div>\n</div>\n<i>Nào mời bạn cùng vào bếp để thực hiện 3 món ăn rất được ưa thích từ cá song nhé!</i><b>1/Cá song hấp xì dầu</b>\n<div class=\"VCSortableInPreviewMode active\">\n<div><img id=\"img_04d46550-c16b-11e8-a6b9-73d705daca42\" title=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 2.\" src=\"https://tieudungvne.mediacdn.vn/thumb_w/640/2018/9/26/cach-lam-ca-song-hap-xi-dau-1-15379526010561423866855.jpg\" alt=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://tieudungvne.mediacdn.vn/2018/9/26/cach-lam-ca-song-hap-xi-dau-1-15379526010561423866855.jpg\" /></div>\n<div class=\"PhotoCMS_Caption\">\n<p class=\"\" data-placeholder=\"[nhập chú thích]\">Ảnh internet</p>\n\n</div>\n</div>\n<i>Nguyên liệu:</i> 15-20 cái nấm hương; 1 củ hành tây, 1-2 quả cà chua; 1 củ gừng, 1 thìa cà phê tiêu hạt, hành khô, hành lá, rau răm, ớt; Gia vị: đường, giấm, xì dầu, dầu mè, tiêu xay<i>Thực hiện:</i>- Sơ chế cá song rồi đem ướp rượu để khử mùi tanh; Hành tây, cà chua bổ múi cau. Ớt thái lát, gừng thái chỉ, hành khô băm nhỏ. Hành hoa và rau răm nhặt rửa sạch, nấm hương sau khi đã ngâm với nước khoảng 10 phút cũng đem đi rửa, để ráo nước.- Xếp cá vào 1 cái đĩa sâu to rồi xếp lên trên các loại nguyên liệu đã được chuẩn bị (nấm hương, hành tây, cà chua, gừng chỉ, tiêu hạt, hành lá, rau răm và ớt). Đặt cá vào nồi hấp, hấp chín trong khoảng 20 phút.- Sốt xì dầu: Hòa đều 3 thìa canh xì dầu; 3 thìa nước; 2 thìa dấm; 2,5 thìa đường; ½ thìa dầu mè; ¼ thìa hạt tiêu xay vào một tô con. Phi thơm hành đã được băm sẵn rồi đổ bát hỗn hợp xì dầu vào và bắt đầu đun sôi, sau đó tắt bếp.- Cá sau khi hấp chín thì cho ra ngoài, rưới hỗn hợp xì dầu vừa đun sôi lên trên cá và bắt đầu thưởng thức.<b>2/ Cá song nấu chua</b>\n<div class=\"VCSortableInPreviewMode active noCaption\">\n<div><img id=\"img_b57e87f0-c16b-11e8-8f6d-1740e85db408\" title=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 3.\" src=\"https://tieudungvne.mediacdn.vn/thumb_w/640/2018/9/26/153064-canh-chua-ca-loc-15379528977451469767163.jpg\" alt=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://tieudungvne.mediacdn.vn/2018/9/26/153064-canh-chua-ca-loc-15379528977451469767163.jpg\" /></div>\n</div>\n<i>Nguyên liệu:</i> 1 con cá song; Rau củ: 2 trái cà chua, 100 gr dọc mùng, 2 quả me chua; 1/2 trái dứa, 1 ít rau ngổ, 1 ít rau răm, 2 trái ớt, 1 củ nghệ nhỏ; 4 tép tỏi đập dập, 2 củ hành tím bào nhuyễn; Gia vị: nước mắm, muối đường, dầu ăn, hạt nêm.<i>Thực hiện:</i>- Sơ chế cá song, sau đó cắt cá thành 3 khúc nhỏ và ướp với hành tím, ½ muỗng cà phê muối và 1 trái ớt băm trong vòng 15 – 20 phút.- Dọc mùng tước sach vỏ đem bóp muối, bóp mạnh tay cho ra hết nước ngứa sau đó rửa sạch lại với nước 2-3 lần- Chiên cá: Để cá không bị tanh và chắc thịt thì bạn cần chiên sơ qua với 1 chút dầu sau đó đem ướp với 1 chút nước nghệ, hạt nêm, bột ngọt, ớt khoảng 10 phút.- Đun nóng nồi, cho thêm 1 chút dầu rồi cho cà chua vào đảo. Sau đó thả me, dứa thái miếng vừa mỏng và hỗn hợp cá vào đảo thêm 1 phút rồi đổ nước vào đun. Ninh cá trong khoảng 15 phút để cho nước ngọt thì nêm nếm lại gia vị, me lúc này vớt ra và chắt lấy nước. Hành, răm, ngổ sau khi được thái nhỏ thì cho vào canh cùng với giá và dọc mùng đun tái thì tắt bếp.</div>\n<div id=\"admbackground\"></div>\n<div id=\"divend\"><b>3/ Cháo cá song</b>\n<div class=\"VCSortableInPreviewMode active noCaption\">\n<div><img id=\"img_a38abc80-c16b-11e8-b9e4-914c12398d04\" title=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 4.\" src=\"https://tieudungvne.mediacdn.vn/thumb_w/640/2018/9/26/8-mon-an-ngon-bo-re-cho-ba-bau-trong-suot-thai-ky-1-1537952866976322267860.jpg\" alt=\"3 món từ cá song biển tuyệt ngon cho ngày se lạnh - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://tieudungvne.mediacdn.vn/2018/9/26/8-mon-an-ngon-bo-re-cho-ba-bau-trong-suot-thai-ky-1-1537952866976322267860.jpg\" /></div>\n</div>\n<i>Nguyên liệu:</i> Cá song: 900 gam; Hành lá, thì là; Hành tím; Gừng; Gia vị: Muối, hạt nêm, bột ngọt, dầu ăn, tiêu bột, nước mắm.Thực hiện:- Hành lá, thì là rửa sạch, thái nhỏ, hành tím băm nhỏ. Gừng cạo sạch vỏ, rửa sạch, thái lát.- Cá song đánh vảy, mổ bỏ nội tạng rửa sạch để ráo nước. Không nên cắt vây, đuôi mà để nguyên như vậy vì đến khi gỡ xương rất dễ, bạn chỉ việc dùng thìa gạt thịt ra là xong vì dưới vây, nhất là vây lưng còn có một hệ thống xương, nếu cắt vây sẽ tạo ra những vụn xương nhỏ, khi gỡ dễ bị lẫn xương cá vào thịt.- Tiếp theo, cho cá vào dụng cụ hấp, cho thêm khoảng vài thìa nước lạnh, một ít muối và thêm lát gừng mỏng rồi cho vào lò vi sóng nấu trong khoảng 8 phút.- Sau đó, chúng ta lột sạch da cá, gỡ nhẹ thịt cá ở phần lưng rồi đến phần bụng cá, cá song không có xương dăm nhưng khoảng thịt lưng và bụng có vài xương dăm nhỏ, cầm xương phần đuôi dùng thìa gạt phần thịt ở mặt sau và hai bên má cá, ức cá.- Tiếp đến, bỏ xương và đầu cá cùng với gừng vào nồi áp suất đổ nước ngập xương, rồi hầm để lọc lấy nước nấu cháo.- Bây giờ, bắc chảo lên bếp, cho dầu ăn vào đun nóng già, cho hành tím vào phi thơm rồi cho thịt cá vào xào chín vừa là tắt bếp.-  Cuối cùng, múc cháo ra tô cho thịt cá lên trên cùng với hành lá, thì là và tiêu bột là món ăn của chúng ta đã hoàn thành.</div>","Cá song","","publish","open","open","","ca-song","","","2019-04-16 11:31:59","2019-04-16 04:31:59","","0","https://bizhostvn.com/w/nhahang/?p=215","0","post","","0"),
("216","1","2019-04-16 11:31:44","2019-04-16 04:31:44","","cá-song","","inherit","open","closed","","ca-song","","","2019-04-16 11:31:44","2019-04-16 04:31:44","","215","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cá-song.jpg","0","attachment","image/jpeg","0"),
("218","1","2019-04-16 11:33:31","2019-04-16 04:33:31","Tôm tít, tôm tích, tôm thuyền, bề bề hay tôm búa, là tên được dùng để gọi nhóm giáp xác biển thuộc bộ Tôm chân miệng. Chúng không phải tôm cũng chẳng phải bọ ngựa nhưng chúng có tên trong tiếng Anh là Mantis shrimp hay tôm bọ ngựa vì chúng giống cả hai, với cặp càng giống của bọ ngựa.\n<ol class=\"numbered-list ui-sortable\" style=\"box-sizing: border-box; margin: 0px; counter-reset: numList 0; list-style: none; padding: 0px 0px 1px; color: #484432; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" data-behavior=\"sortable\" data-sort-url=\"/vn/recipes/900603-b%E1%BB%81-b%E1%BB%81-rang-mu%E1%BB%91i/steps/sort\" data-record-list=\"  &lt;li class=&quot;step numbered-list__item card-sm&quot; id=&quot;new_step&quot; data-record=&quot;/vn/recipes/900603-b%E1%BB%81-b%E1%BB%81-rang-mu%E1%BB%91i/steps&quot;&gt;\n    &lt;div data-field-group&gt;\n      &lt;div class=&quot;numbered-list__contents&quot;&gt;\n        &lt;div class=&quot;step__description&quot;&gt;\n          &lt;div class=&quot;prose&quot;&gt;\n            &lt;div itemprop=&quot;recipeInstructions&quot; data-field=&quot;textarea&quot; data-field-name=&quot;description&quot; data-field-hint=\'Nhấn ENTER để thêm bước hướng dẫn mới.\' data-placeholder=&quot;Mô tả cách làm từng bước...&quot; data-maxlength=&quot;500&quot;&gt;\n              &lt;p&gt;&lt;/p&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n\n        &lt;/div&gt;\n\n        &lt;div class=&quot;step-image&quot; data-field=&quot;image&quot; data-field-name=&quot;images[1]&quot; data-ajax-upload=&quot;/vn/step/images&quot;&gt;\n    &lt;div class=&quot;step-image__container step-image__container--placeholder image-upload editor__tool&quot;&gt;\n    &lt;div class=&quot;step-image__upload&quot;&gt;\n      &lt;i class=&quot;icf icf--camera icf--medium&quot;&gt;&lt;/i&gt;\n      &lt;p class=&quot;x-small&quot;&gt;\n        &lt;i class=&quot;icf icf--add &quot;&gt;&lt;/i&gt;\n        Thêm Hình Ảnh\n      &lt;/p&gt;\n      &lt;input type=&quot;file&quot; name=&quot;file&quot; aria-label=&quot;Gửi hình&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n\n&lt;/div&gt;\n&lt;div class=&quot;step-image&quot; data-field=&quot;image&quot; data-field-name=&quot;images[2]&quot; data-ajax-upload=&quot;/vn/step/images&quot;&gt;\n    &lt;div class=&quot;step-image__container step-image__container--placeholder image-upload editor__tool&quot;&gt;\n    &lt;div class=&quot;step-image__upload&quot;&gt;\n      &lt;i class=&quot;icf icf--camera icf--medium&quot;&gt;&lt;/i&gt;\n      &lt;p class=&quot;x-small&quot;&gt;\n        &lt;i class=&quot;icf icf--add &quot;&gt;&lt;/i&gt;\n        Thêm Hình Ảnh\n      &lt;/p&gt;\n      &lt;input type=&quot;file&quot; name=&quot;file&quot; aria-label=&quot;Gửi hình&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n\n&lt;/div&gt;\n&lt;div class=&quot;step-image&quot; data-field=&quot;image&quot; data-field-name=&quot;images[3]&quot; data-ajax-upload=&quot;/vn/step/images&quot;&gt;\n    &lt;div class=&quot;step-image__container step-image__container--placeholder image-upload editor__tool&quot;&gt;\n    &lt;div class=&quot;step-image__upload&quot;&gt;\n      &lt;i class=&quot;icf icf--camera icf--medium&quot;&gt;&lt;/i&gt;\n      &lt;p class=&quot;x-small&quot;&gt;\n        &lt;i class=&quot;icf icf--add &quot;&gt;&lt;/i&gt;\n        Thêm Hình Ảnh\n      &lt;/p&gt;\n      &lt;input type=&quot;file&quot; name=&quot;file&quot; aria-label=&quot;Gửi hình&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n\n&lt;/div&gt;\n\n        &lt;div class=&quot;field-group__hover subtle editor__tool editor__tool--pc&quot;&gt;\n          &lt;div class=&quot;pull-right&quot;&gt;\n            &lt;a class=&quot;faint&quot; tabindex=&quot;-1&quot; data-behavior=&quot;delete&quot; data-message=&quot;Chắc chắn xoá?&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;icf icf--close &quot;&gt;&lt;/i&gt;&lt;/a&gt;\n            &lt;i data-behavior=&quot;handle&quot; class=&quot;icf icf--sortable &quot;&gt;&lt;/i&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/li&gt;\n\">\n 	<li id=\"step_3838629\" class=\"step numbered-list__item card-sm\" data-record=\"/vn/recipes/900603-b%E1%BB%81-b%E1%BB%81-rang-mu%E1%BB%91i/steps\">\n<div data-field-group=\"\">\n<div class=\"numbered-list__contents\">\n<div class=\"step__description\">\n<div class=\"prose\">\n<div data-field=\"textarea\" data-field-name=\"description\" data-field-hint=\"Nhấn ENTER để thêm bước hướng dẫn mới.\" data-placeholder=\"Mô tả cách làm từng bước...\" data-maxlength=\"500\">\n\nBề bề cắt bớt chân, rửa sạch - Rán bề bề với dầu rán khoảng 5 ph - vớt bề bề ra đĩa có giấy thấm bớt dầu.\n\n</div>\n</div>\n</div>\n</div>\n</div></li>\n 	<li id=\"step_3838630\" class=\"step numbered-list__item card-sm\" data-record=\"/vn/recipes/900603-b%E1%BB%81-b%E1%BB%81-rang-mu%E1%BB%91i/steps\">\n<div data-field-group=\"\">\n<div class=\"numbered-list__contents\">\n<div class=\"step__description\">\n<div class=\"prose\">\n<div data-field=\"textarea\" data-field-name=\"description\" data-field-hint=\"Nhấn ENTER để thêm bước hướng dẫn mới.\" data-placeholder=\"Mô tả cách làm từng bước...\" data-maxlength=\"500\">\n\nMuối : - trộn muối, bột điều, tiêu, ớt, mì chính thành hỗn hợp muối rang bề bề.\n\n</div>\n</div>\n</div>\n</div>\n</div></li>\n 	<li id=\"step_3838688\" class=\"step numbered-list__item card-sm\" data-record=\"/vn/recipes/900603-b%E1%BB%81-b%E1%BB%81-rang-mu%E1%BB%91i/steps\">\n<div data-field-group=\"\">\n<div class=\"numbered-list__contents\">\n<div class=\"step__description\">\n<div class=\"prose\">\n<div data-field=\"textarea\" data-field-name=\"description\" data-field-hint=\"Nhấn ENTER để thêm bước hướng dẫn mới.\" data-placeholder=\"Mô tả cách làm từng bước...\" data-maxlength=\"500\">\n\nBắc một chảo nóng coa chút dầu nóng. - đổ sả thái nát cùng bề bề vào rang cùng đến khi sả nhát màu vàng. - rắc hỗn hợp muối vừa trộn, đảo nhanh tay cho bề bề phủ một lớp muối mỏng trên bề mặt. - gắp bề bề ra đĩa vắt chanh và thưởng thức ^^\n\n</div>\n</div>\n</div>\n</div>\n</div></li>\n</ol>","Bề bề","","publish","open","open","","be-be","","","2019-04-16 11:33:31","2019-04-16 04:33:31","","0","https://bizhostvn.com/w/nhahang/?p=218","0","post","","0"),
("219","1","2019-04-16 11:32:54","2019-04-16 04:32:54","","bề-bề","","inherit","open","closed","","be-be","","","2019-04-16 11:32:54","2019-04-16 04:32:54","","218","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bề-bề.jpg","0","attachment","image/jpeg","0"),
("221","1","2019-04-16 11:34:13","2019-04-16 04:34:13","Thịt bò nhập khẩu ngày càng chiếm thị phần cao trong ngành thực phẩm Việt Nam. Hiện nay những món ăn chế biến từ thịt bò không khó để tìm thấy trong thực đơn hàng ngày của các gia đình. Thịt ba chỉ bò Mỹ không phải là một ngoại lệ. Hãy cùng Nông sản Dũng Hà cập nhật những kiến thức cơ bản về thịt ba chỉ bò Mỹ nhé.\n<h2><span id=\"Thit_ba_chi_bo_My_la_gi\">Thịt ba chỉ bò Mỹ là gì?</span></h2>\nThịt ba chỉ bò Mỹ có tên tiếng anh là Short Plate Beef. Đây là phần thịt được xẻ ra từ phần bụng của con bò có đặc điểm là dải mỡ và nạc phân bố đều nhau. Chính vì vậy mà thịt ba chỉ bò thơm ngậy, độ mềm vừa phải và không bị ngấy.\n\n<img class=\"aligncenter wp-image-10352\" src=\"https://i3.wp.com/nongsandungha.com/wp-content/uploads/thit-ba-chi-bo-my.jpg\" alt=\"thit ba chi bo my\" width=\"500\" height=\"352\" />\n<h2><span id=\"Gia_tri_dinh_duong_cua_thit_ba_chi_bo_My\">Giá trị dinh dưỡng của thịt ba chỉ bò Mỹ?</span></h2>\nThịt ba chỉ bò Mỹ được đánh giá là một trong những loại thịt đỏ có giá trị dinh dưỡng cao. Trong đó chiếm tỷ lệ cao nhất là các vitamin nhóm B, axit amin thiết yếu mà cơ thể con người không có khả năng tự sản sinh được và vô vàn các loại khoáng chất lành mạnh khác. Cứ 100gr thịt ba chỉ bò Mỹ thì có chứa khoảng 21.7gr Protein, 4mg kẽm, 2mg sắt, 1.1mg B12,…\n\nSử dụng thịt bò trong khẩu phần ăn thường xuyên giúp tăng cường chất dinh dưỡng cần thiết cho cơ thể và phòng chống nhiều bệnh. Kẽm là thành phần quan trọng giúp nâng cao hệ miễn dịch cho cơ thể. Ăn thịt bò cũng là một trong những cách để bổ sung kẽm cho phụ nữ, trẻ em. Bên cạnh đó, chất sắt trong thịt bò giúp phục hồi và tái tạo các tế bào máu bị tổn thương, sản sinh ra hồng cầu. Vitamin B12 giúp tăng cường tuần hoàn máu và khả năng truyền thông tin lên não bộ.\n\nChất béo có trong thịt bò là loại protein có lợi cho sức khỏe. Năng lượng có trong chất béo của thịt bò không hề cao và không chứa nhiều cholesterol có hại. Nếu bổ sung 1 lượng nhất định vừa phải và đều đặn thì bạn sẽ có 1 trái tim khỏe mạnh.","Ba chỉ bò Mỹ","","publish","open","open","","ba-chi-bo-my","","","2019-04-16 11:34:34","2019-04-16 04:34:34","","0","https://bizhostvn.com/w/nhahang/?p=221","0","post","","0"),
("222","1","2019-04-16 11:34:10","2019-04-16 04:34:10","","ba-chỉ-bò-mỹ","","inherit","open","closed","","ba-chi-bo-my","","","2019-04-16 11:34:10","2019-04-16 04:34:10","","221","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/ba-chỉ-bò-mỹ.jpg","0","attachment","image/jpeg","0"),
("226","1","2019-04-16 11:36:03","2019-04-16 04:36:03","Ngao xào húng quế với vị ngọt tự nhiên của ngao cùng vị thơm của húng quế mang đến một món ăn có sức hấp dẫn khó cưỡng lại. Sau đây, hãy cùng nhau tìm hiểu về cách xào ngao ngon để chiêu đãi cả nhà bữa ăn cuối tuần lạ miệng, hấp dẫn nhé!\n\nTrong các loại hải sản, có thể nói ngao là nguyên liệu được nhiều người yêu thích và ưa chuộng nhất. Và từ ngao, ta có thể chế biến thành nhiều món ăn hấp dẫn như ngao xào chua ngọt, ngao xốt me, ngao hấp sả, ngao hấp Thái và đặc biệt là ngao hấp húng quế… Ăn vào miếng thịt ngao xào húng quế, bạn sẽ được thưởng thức vị ngao ngọt ngọt pha lẫn chút mặn và xuýt xoa vị cay của ớt quyện cùng mùi thơm của húng quế thật hấp dẫn.\n\n<img class=\"aligncenter size-full wp-image-69654\" src=\"https://beptruong.edu.vn/wp-content/uploads/2013/10/ngao-xao-hung-que.jpg\" alt=\"Ngao xào húng quế\" width=\"600\" height=\"400\" />\n\n<em>Nồi ngao nóng hổi bốc hơi nghi ngút tỏa hương thơm</em>\n\n<em>phưng phức kích thích vị giác của thực khách (Ảnh: Internet)</em>\n<h2><span id=\"Nguyen_lieu_lam_ngao_xao_hung_que\">Nguyên liệu làm ngào xào húng quế</span></h2>\n<ul>\n 	<li>500g ngao</li>\n 	<li>3 tép tỏi</li>\n 	<li>4 quả ớt đỏ</li>\n 	<li>1 nắm húng quế</li>\n 	<li>Vài cây hành lá</li>\n 	<li>Gia vị: Đường, hạt nêm, bột ngọt, nước mắm</li>\n 	<li>Bia</li>\n</ul>\n<h2><span id=\"Cach_lam_ngao_xao_hung_que\">Cách làm ngao xào húng quế</span></h2>\n<h3><span id=\"So_che_nguyen_lieu\">Sơ chế nguyên liệu</span></h3>\n<ul>\n 	<li>Để món ngao xào húng quế hay còn gọi ngao hấp húng quế ngon đúng vị, trước tiên, ngao phải sạch, không bị sạn. Do đó, khi mua ngao về bạn ngâm ngao vào nước muối loãng có cho vài lát ớt ngâm khoảng nửa ngày cho ngao nhả hết chất bẩn và rửa lại với nước thật sạch. Tiếp đến, bạn vớt ngao để ráo.</li>\n 	<li>Hành tươi bạn đem cắt bỏ rễ, nhặt sạch lá úa, rửa sạch và cắt khúc dài chừng 1 ngón tay.</li>\n 	<li>Húng quế bạn tách riêng từng lá, rửa thật nhẹ với nước để rau không bị nát.</li>\n 	<li>Tỏi bạn bóc sạch vỏ và lát mỏng.</li>\n 	<li>Ớt cũng thái lát chéo và mỏng.</li>\n</ul>\n<h3><span id=\"Cach_nau_ngao_xao_hung_que\">Cách nấu ngao xào húng quế</span></h3>\nBạn cho chảo lên bếp, đợi chảo nóng bạn cho dầu ăn vào rồi cho tỏi, ớt và đầu hành trắng vào phi thơm. Khi các nguyên liệu đã dậy mùi, bạn cho ngao vào và đảo nhanh tay khoảng 20 giây. Sau đó, bạn cho bia vào rồi đảo đều tay. Cho vào một chút bia sẽ giúp cho món ngao xào trở nên đặc trưng hơn. Lưu ý, bạn chỉ cho bia vừa phải vừa đủ vì nếu nhiều bia sẽ khiến ngao bị đắng.\n\n<img class=\"aligncenter size-full wp-image-69656\" src=\"https://beptruong.edu.vn/wp-content/uploads/2013/10/ngao-xao-hung-que-ngon.jpg\" alt=\"ngao xào húng quế ngon\" width=\"600\" height=\"400\" />\n<em>Để món ngao xào húng quế ngon bạn phải chọn được nhữn</em><em>g</em>\n\n<em>con ngao tươi sống và sơ chế thật sạch trước khi chế biến (Ảnh: Internet)</em>\n<h3><span id=\"Nem_nem\">Nêm nếm</span></h3>\nXào đến khi ngao há miệng thì bạn cho vào 1 muỗng canh dầu hào, 1 muỗng đường, 1 muỗng canh nước tương. Tiếp đến, đảo đều nhưng nhẹ tay vị không làm thịt ngao rơi ra khỏi vỏ. Đậy nắp và đun nhỏ lửa chút cho ngao thấm gia vị. Bạn đậy kín nắp khoảng 10 phút, nêm nếm cho vừa ăn rồi tắt bếp và cho ngao ra đĩa.\n\nCách làm ngao hấp húng quế có cho thêm một ít bia trước khi nêm nếm gia vị sẽ khiến cho món ngao xào quen thuộc không còn vị tanh mà ngược lại còn rất quyến rũ. Món ăn này không chỉ thích hợp nhâm nhi với vài lon bia mà còn phù hợp để ăn với cơm trắng. Với công thức ngao xào thơm ngon, độc đáo và dễ làm như trên. Hy vọng, bạn sẽ mang đến những hương vị mới lạ, giúp cả gia đình thay đổi khẩu vị nhé! Chúc các bạn thành công!","Ngao 2 vòi","","publish","open","open","","ngao-2-voi","","","2019-04-16 11:36:03","2019-04-16 04:36:03","","0","https://bizhostvn.com/w/nhahang/?p=226","0","post","","0"),
("227","1","2019-04-16 11:35:32","2019-04-16 04:35:32","","ngao-2-vòi","","inherit","open","closed","","ngao-2-voi","","","2019-04-16 11:35:32","2019-04-16 04:35:32","","226","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/ngao-2-vòi.jpg","0","attachment","image/jpeg","0"),
("229","1","2019-04-16 11:36:57","2019-04-16 04:36:57","<p id=\"h.p_UTsdgZeaN139\" class=\"zfr3Q\"><em><strong>DASAFOOD</strong> -Nhà cung cấp hải sản chuyên nghiệp cho nhà hàng và khách hàng chuyên nghiệp</em></p>\n<p id=\"h.p_zk2R5yPNR1WU\" class=\"zfr3Q\"><em>Với bề dầy kinh nghiệm và lợi thế sẵn có của vùng nguyên liệu Phú Quốc, Kiên Giang chúng tôi luôn mong muốn mang lại những sản phẩm hải sản chất lượng cao với giá cả cạnh tranh cung cấp cho các khách hàng. Tài sản giá trị nhất của công ty chính là niềm tin từ quý khách hàng</em></p>","Mực trứng","","publish","open","open","","muc-trung","","","2019-04-16 11:36:57","2019-04-16 04:36:57","","0","https://bizhostvn.com/w/nhahang/?p=229","0","post","","0"),
("230","1","2019-04-16 11:36:42","2019-04-16 04:36:42","","mực-trứng","","inherit","open","closed","","muc-trung","","","2019-04-16 11:36:42","2019-04-16 04:36:42","","229","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/mực-trứng.jpg","0","attachment","image/jpeg","0"),
("251","1","2019-04-16 11:57:28","2019-04-16 04:57:28","","banner1","","inherit","open","closed","","banner1-2","","","2019-04-16 11:57:28","2019-04-16 04:57:28","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner1-1.jpg","0","attachment","image/jpeg","0"),
("253","1","2019-04-16 12:00:45","2019-04-16 05:00:45","","banner2","","inherit","open","closed","","banner2","","","2019-04-16 12:00:45","2019-04-16 05:00:45","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner2.jpg","0","attachment","image/jpeg","0"),
("255","1","2019-04-16 12:03:20","2019-04-16 05:03:20","","banner3","","inherit","open","closed","","banner3","","","2019-04-16 12:03:20","2019-04-16 05:03:20","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner3.jpg","0","attachment","image/jpeg","0"),
("257","1","2019-04-16 12:05:13","2019-04-16 05:05:13","","banner4","","inherit","open","closed","","banner4","","","2019-04-16 12:05:13","2019-04-16 05:05:13","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner4.jpg","0","attachment","image/jpeg","0"),
("259","1","2019-04-16 12:08:40","2019-04-16 05:08:40","","banner5","","inherit","open","closed","","banner5","","","2019-04-16 12:08:40","2019-04-16 05:08:40","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner5.jpg","0","attachment","image/jpeg","0"),
("261","1","2019-04-16 12:09:16","2019-04-16 05:09:16","","banner-05","","inherit","open","closed","","banner-05","","","2019-04-16 12:09:16","2019-04-16 05:09:16","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner-05.jpg","0","attachment","image/jpeg","0"),
("263","1","2019-04-16 12:10:55","2019-04-16 05:10:55","","banner-04","","inherit","open","closed","","banner-04","","","2019-04-16 12:10:55","2019-04-16 05:10:55","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/banner-04.jpg","0","attachment","image/jpeg","0"),
("265","1","2019-04-16 12:25:16","2019-04-16 05:25:16","Khi bạn chọn làm món măng tây xào nấm tươi cho gia đình, bạn sẽ thấy nó rất đơn giản, dễ thực hiện mà lại ngon miệng, phù hợp cho cả khẩu vị của người thích ăn chay lẫn ăn mặn.\n\n300g măng tây, 1 khay nấm tươi hỗn hợp, 1 củ cà rốt, 1 củ tỏi, gia vị, hạt nêm, dầu hào, dầu ăn.\n\n<strong>Cách làm:</strong>\n\nMăng tây cắt bỏ phần gốc già, rửa sạch và cắt khúc. Cà rốt gọt vỏ, thái khúc dài vừa ăn. Nấm tươi rửa sạch, cắt chân rồi thái miếng. Đun sôi nước, cho vào một chút muối, cho măng tây vào chần sơ trong nước rồi vớt ra tô nước đá lạnh.\n\nTỏi bóc vỏ, băm nhỏ, phi thơm, cho nấm vào xào, tiếp đó cho măng tây, cà rốt vào xào chín tới, nêm gia vị vừa ăn.","Măng tây xào nấm","","publish","open","open","","mang-tay-xao-nam","","","2019-04-16 12:25:16","2019-04-16 05:25:16","","0","https://bizhostvn.com/w/nhahang/?p=265","0","post","","0"),
("266","1","2019-04-16 12:24:47","2019-04-16 05:24:47","","măng-tây-xào-nấm","","inherit","open","closed","","mang-tay-xao-nam","","","2019-04-16 12:24:47","2019-04-16 05:24:47","","265","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/măng-tây-xào-nấm.jpg","0","attachment","image/jpeg","0"),
("268","1","2019-04-16 12:26:48","2019-04-16 05:26:48","Một trong số những món ăn ngon mang thương hiệu nhà hàng đó chính là <b>măng tây xào hải sản. </b>Măng tây xanh chứa nhiều chất dinh dưỡng, chất xơ, giúp phòng chống ung thư, tốt cho tiêu hóa, giảm cân, đẹp da... mà ăn lại giòn ngon. Một sự kết hợp ngon đúng điểu với hải sản nhất là tôm sú, hãy khám phá ngay món ngon này nhé!\n\nBạn bỏ chút xíu dầu ăn vào chảo, bật bếp, thả tỏi băm. Khi thấy tỏi chín vàng thì tắt bếp bỏ ra đĩa\n\nTiếp đến cho tôm vào xào chín nhanh, để ra đĩa.\n<div class=\"tips\">\n<h5 class=\"no-margin\">Mẹo hay</h5>\nXào tôm tránh để lửa lớn quá tôm dễ bị khô, bạn nên để lửa vừa phải đảo đều nhanh tay trong 2-3 phút là tôm lên màu rất đẹp\n\n</div>","Măng tây xào hải sản","","publish","open","open","","mang-tay-xao-hai-san","","","2019-04-16 12:26:48","2019-04-16 05:26:48","","0","https://bizhostvn.com/w/nhahang/?p=268","0","post","","0"),
("269","1","2019-04-16 12:26:12","2019-04-16 05:26:12","","măng-tây-xào-hải-sản","","inherit","open","closed","","mang-tay-xao-hai-san","","","2019-04-16 12:26:12","2019-04-16 05:26:12","","268","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/măng-tây-xào-hải-sản.jpg","0","attachment","image/jpeg","0"),
("271","1","2019-04-16 12:27:56","2019-04-16 05:27:56","<div><strong>Cách làm:</strong></div>\n<div></div>\n<div>Ngao tươi sau khi mua về ngâm vào nước muối loãng có thả vài lát ớt khoảng nửa ngày cho ngao nhả sạch đất cát. Bạn cũng có thể ngâm ngao vào nước vo gạo. Sau khi ngâm vớt ngao ra, cọ rửa sạch lớp vỏ rồi để vào rổ cho ráo nước.</div>\n<div>Hành tươi cắt rễ, rửa sạch, thái thành từng khúc.</div>\n<div></div>\n<div>Húng quế nhặt bỏ lá sâu, già, nhặt rời từng lá, rửa sạch húng quế dưới vòi nước chảy. Chú ý rửa nhẹ nhàng không bóp làm lá húng quế dập và thâm đen.</div>\n<div>\n<div>\n<div><center>\n<table class=\"contentimg\">\n<tbody>\n<tr>\n<td><a href=\"https://images.kienthuc.net.vn/zoom/1000/uploaded/huyenthu/2014_03_17/huong%20sen%20(3)_untb_agnd.jpg\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://images.kienthuc.net.vn/zoom/500/uploaded/huyenthu/2014_03_17/huong%20sen%20(3)_untb_agnd.jpg\" alt=\"\" /></a></td>\n</tr>\n<tr>\n<td><em> Ngao xào húng quế tại nhà hàng Khoảng lặng Hương Sen.</em></td>\n</tr>\n</tbody>\n</table>\n</center>\n<div class=\"zone sponsor-zone clearfix\">\n<h3 class=\"sponsor-title\">TIN TÀI TRỢ</h3>\n<div class=\"zone-content\">\n<ul>\n 	<li>\n<div id=\"04df4d434d481c5bb723be1b6df1ee65\">\n<div class=\"head_1911\"></div>\n<table class=\"block_1911\">\n<tbody>\n<tr>\n<td class=\"teaser_1911\">\n<div class=\"img_wrap_1911\"><img id=\"ns_ad1555392464823\" class=\"img_1911\" src=\"https://worker4.advertnative.com/storage/teaser/image/335/216/1552062911-S3b_200.jpg\" alt=\"\" /></div>\n<div class=\"title_1911\">Chuyện ly kỳ về cách các hoàng đế \"lâm trận\" hằng đêm không mệt mỏi</div>\n<div class=\"cost_goods_1911\"></div>\n<div class=\"teaser_button_1911\"></div></td>\n</tr>\n</tbody>\n</table>\n</div>\n<div><img src=\"https://ialaddin.genieesspv.jp/yie/ld/gl1?zid=1272919&amp;asid=8120249&amp;idx=0&amp;gid=c7df3839af34667fb4c9106ba6370f8a&amp;cb=3346d11bfe&amp;l=bL6Nq0vuCrkPTrj0vIZUGoE8_WIYzQXNY265M3P1Wx8hM1PUWPQ4F4BH66osTnHAoH9ZTYMoUgida-HGXCi-cLSdKEcE3w-uAdoWD4wkqxOI5gJQZ2MhsrcmwrQQilIF_3904fgC7DvRX5CVzbK9l5GLn_hC5h7c8uFzRE7v2exzKJIU2-zlAAZO9zN3pQQHF155BEECnX2X49JZV4yCAKwDSMBGPH28PYxd4Rnd9K-a1DLFyFUzrgQX94d078ftjr46U4Gma9f-yxopM0TwRRDvTIbXRCvDS13fZ-bIMVxJdT11lCUK4cCjpPOaFD6NuliXF6hn8eMSfZmV1b9FLTE6nfMgD_1DmH2XCmm7VdV33uuWzun4jj6QJ_B6ECWMlGT1-zkXgVr87ev7Wr2TpXXAdhfZ873DG9OcQWgTT9eD3rZkjubj-30dbv6JgYWUaWoIQ-TKRecJVYScmNqcfnyO5kTUr5NGl9y-BtWcX9Ec69fp8VkZeOel1AK38cVRT1ot379fPi5o65tmyQQMUrNVbx_cwcA4qpB1A1MSUn5J37z4EPJRLDdI6t426dh_HnjBiHt6seQGgEBo-6SBbNmb94ZRuRzUT4CZqphyB3OOEcKxuYqAnh8TOITFpaukE8mNAnFFpyX2YrvrpJVzuVODtKlRJpIixqlq5GRzNlRe4ZaUHECfU-wBGqRfC59MOjdyyNVHJs48iD95KrTR2grzBX36olsbS20z9wWJKLhSQTZzsSjp6WMi_jBnBGazKqkjbvPZpVf8gU3VuQcolD15EAuKfdh6\" alt=\"\" width=\"0\" height=\"0\" /></div></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div></div>\n<div>Tỏi bóc vỏ. thái lát mỏng. Ớt tươi thái chéo.</div>\n<div></div>\n<div>Bắc chảo xào lên bếp cho dầu ăn vào, đun nóng dầu trong chảo, cho tỏi, ớt và đầu hành trắng vào phi thơm. Trút ngao vào đảo nhanh tay trong giây lát thì đổ bia vào.</div>\n<div></div>\n<div>Đun ngao trong bia tới khi ngao bắt đầu há miệng thì nêm dầu hào, nước tương, đường và chút gia vị vào đảo đều. Đun thêm khoảng 5 phút cho ngao ngấm đều gia vị thì tắt bếp. Đổ toàn bộ số húng quế đã nhặt vào đảo đều sau đó đổ ngao vào đĩa.</div>\n<div></div>\n<div>Đĩa ngao nóng hổi bốc hơi nghi ngút hương húng quế thơm ngọt, đậm đà vị cay thơm của ớt và các loại gia vị cực kỳ ngon miệng và hấp dẫn.</div>","Ngao 2 vòi xào húng","","publish","open","open","","ngao-2-voi-xao-hung","","","2019-04-16 12:27:56","2019-04-16 05:27:56","","0","https://bizhostvn.com/w/nhahang/?p=271","0","post","","0"),
("272","1","2019-04-16 12:27:43","2019-04-16 05:27:43","","ngao-2-vòi-xào-hung","","inherit","open","closed","","ngao-2-voi-xao-hung","","","2019-04-16 12:27:43","2019-04-16 05:27:43","","271","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/ngao-2-vòi-xào-hung.jpg","0","attachment","image/jpeg","0"),
("274","1","2019-04-16 12:28:50","2019-04-16 05:28:50","","Thịt lợn rừng","","publish","open","open","","thit-lon-rung","","","2019-04-16 12:28:50","2019-04-16 05:28:50","","0","https://bizhostvn.com/w/nhahang/?p=274","0","post","","0"),
("275","1","2019-04-16 12:28:46","2019-04-16 05:28:46","","thịt-lợn-rừng","","inherit","open","closed","","thit-lon-rung","","","2019-04-16 12:28:46","2019-04-16 05:28:46","","274","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/thịt-lợn-rừng.jpg","0","attachment","image/jpeg","0"),
("277","1","2019-04-16 12:30:03","2019-04-16 05:30:03","","Xúp lơ xào nấm","","publish","open","open","","xup-lo-xao-nam","","","2019-04-16 12:30:03","2019-04-16 05:30:03","","0","https://bizhostvn.com/w/nhahang/?p=277","0","post","","0"),
("278","1","2019-04-16 12:29:46","2019-04-16 05:29:46","","xúp-lơ-xào-nấm","","inherit","open","closed","","xup-lo-xao-nam","","","2019-04-16 12:29:46","2019-04-16 05:29:46","","277","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/xúp-lơ-xào-nấm.jpg","0","attachment","image/jpeg","0"),
("282","1","2019-04-16 12:35:42","2019-04-16 05:35:42","","Lẩu bò","","publish","open","open","","lau-bo","","","2019-04-16 12:35:42","2019-04-16 05:35:42","","0","https://bizhostvn.com/w/nhahang/?p=282","0","post","","0"),
("283","1","2019-04-16 12:35:37","2019-04-16 05:35:37","","lẩu-bò","","inherit","open","closed","","lau-bo","","","2019-04-16 12:35:37","2019-04-16 05:35:37","","282","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/lẩu-bò.jpg","0","attachment","image/jpeg","0"),
("285","1","2019-04-16 12:36:46","2019-04-16 05:36:46","<div class=\"head-article\">Hải sản là loại thực phẩm được hầu hết mọi người đều yêu thích. Đặc biệt hầu như hải sản đều tốt đối với từ trẻ em đến người lớn tuổi. Quan trọng nhất hải sản lại vô cùng dễ ăn, không béo cũng không ngấy, luôn tươi mát.</div>\n<h2>Hải sản vẫn là sự lựa chọn ưu tiên của rất nhiều người khi định ăn lẩu bởi những món ăn từ hải sản vừa tươi ngon, mát lành lại giàu đạm và canxi. Vậy lý do gì các bạn không cùng <strong>monngon.tv</strong> học ngay<strong>cách làm lẩu hải sản</strong> này.</h2>\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-lam-lau-hai-san-1.jpg\" alt=\"\" />\n<h3>Nguyên liệu cần chuẩn bị cho <strong>cách làm lẩu hải sản</strong> đủ 6 đủ 8 người ăn</h3>\n<ul>\n 	<li>Tôm sú hoặc tôm càng tươi 1kg</li>\n 	<li>Mực nang hoặc mực ống 1/2kg</li>\n 	<li>Ngêu 1kg</li>\n 	<li>Dứa (thơm) 1 quả</li>\n 	<li><strong>Cà chua</strong> 3 quả</li>\n 	<li>Rau ăn kèm gồm có: Bông bí, cải thảo, bạc hà, rau muống, ngó sen</li>\n 	<li>Nấm hương 100gr</li>\n 	<li>Me chua, rau mùi tàu, ngổ, lá quế, ngò gai</li>\n 	<li>Xương ống 1kg</li>\n 	<li>Đậu phụ 4 miếng</li>\n 	<li>Gia vị nêm nếm gồm hành khô, sa tế cay, tỏi băm, hạt nêm, mắm ngon, đường cát, muối, bột ngọt, tiêu, dầu ăn, gừng tươi, sả băm</li>\n</ul>\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-lam-lau-hai-san-2.jpg\" alt=\"\" />\n<h4>Thực hiện c<strong>ách làm lẩu hải sản</strong></h4>\nBước 1: Xương ống rửa sạch, cho xương vào nồi hầm với nước để nước lẩu ngọt thanh, lưu ý khi nước sôi bạn nên dùng muỗng to vớt bỏ hết bọt phía bên trên để nước dùng có độ trong nhé, bỏ xương để riêng, lọc lại lấy nước dùng.\n\nBước 2: Tôm, mực, ngao bạn cần sơ chế thật sạch và bớt mùi tanh, mực cắt miếng vừa ăn.\n\nCác loại rau ăn kèm: Nhặt bớt lá già và rửa sạch, để ráo nước thì xếp riêng từng loại ra đĩa lớn, bạn nên trãi đều để rau dài khoảng 6 đến 8cm, khi nhúng lẩu sẽ dễ dàng và thuận tiện hơn.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-lam-lau-hai-san-3.jpg\" alt=\"\" />\n\nBước 3: Phi hành tỏi và sả băm với dầu ăn cho dậy mùi thơm và chuyển màu vàng tươi, tiếp tục cho cà chua cắt hạt lựu vào để tạo màu hấp dẫn cho món ăn nhé.\n\nBước 4: Cho nước dùng vừa chuẩn bị sẵn ở bước trên vào cùng, phần cà chua đã xào, cho thêm nấm hương. Me bạn có thể dùng loại me quả tươi hoặc me chín đã tách vỏ, dạng đóng túi sẵn, nhớ phải lọc bỏ hạt trước khi cho vào nước lẩu hải sản. Chú ý chỉ cần vặn lửa vừa cho <strong>cách làm lẩu hải sản</strong>.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-lam-lau-hai-san-4.jpg\" alt=\"\" />\n\nBước 5: Nêm nếm gia vị cho vừa miệng, dứa cắt lát thả vào nước lẩu cùng phần rau mùi gia vị đun lấy mùi thơm .\n\nBước 6: Đậu phụ cắt miếng vừa ăn, rau nhúng lẩu các bạn có thể chọn tùy vào sở thích của gia đình nhé.\n\nSau đó, bạn nên tắt bếp, cho hành lá cắt nhỏ lên trên là bạn đã hoàn thành một nồi nước súp hoàn hảo để ăn lẩu hải sản rồi đấy.\n\nCho nồi lẩu điện vào giữa bàn. Xếp 2 đĩa rau, 2 đĩa hải sản, 2 đĩa bún và vài chén chén nước mắm ngon đã chuẩn bị sẵn xung quanh, nhớ nước mắm không thể thiếu vài lát ớt sừng nhé.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-lam-lau-hai-san-5.jpg\" alt=\"\" />\n\nVới món lẩu hải sản này, bạn nên nhúng các loại hải sản và rau vào nước lẩu đang nóng sôi để thưởng thức các hương vị của món ăn, nhờ nên giữ nồi lẩu phải luôn ở chế độ sôi để có thể làm đồ ăn được chín đều nhé.\n\nChúc các bạn thành công và ngon miệng cùng <strong>cách làm lẩu hải sả</strong>","Lẩu hải sản","","publish","open","open","","lau-hai-san","","","2019-04-16 12:36:46","2019-04-16 05:36:46","","0","https://bizhostvn.com/w/nhahang/?p=285","0","post","","0"),
("286","1","2019-04-16 12:36:19","2019-04-16 05:36:19","","cach-nau-lau-hai-san-3-650x500","","inherit","open","closed","","cach-nau-lau-hai-san-3-650x500","","","2019-04-16 12:36:19","2019-04-16 05:36:19","","285","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cach-nau-lau-hai-san-3-650x500.jpg","0","attachment","image/jpeg","0"),
("288","1","2019-04-16 12:38:02","2019-04-16 05:38:02","<div class=\"nsSap sap clrF\">\n<h2><span class=\"clrTit bld\">Những ngày se lạnh, cùng cả nhà quây quần bên nồi lẩu cá thuyền chài, nhâm nhi hương vị tươi ngon, nóng hổi của cá cùng các loại rau nhúng thì còn gì bằng.</span></h2>\n</div>\n<div id=\"baiviet-container\" class=\"nwsCt\">\n\nCó tên gọi lẩu cá thuyền chài là sở dĩ, tương truyền, từ rất xa xưa, trong một gia đình anh ngư dân hiếu thảo nọ, mỗi bữa ăn có món Lẩu thuyền chài, anh đều gắp riêng miếng gan cá Song để mời cha mẹ, rồi mới chia phần dạ dày cá cho mình và các em, như để răn dạy nhau phải luôn giữ tấm lòng hiếu thuận dành cho bậc sinh thành.\n\nCâu chuyện đầy tính nhân văn này được truyền khắp làng chài và trở thành văn hóa ứng xử trong bữa ăn của những người con miền biển nói riêng và của con người Việt Nam nói chung. Lẩu cá thuyền chài nó tượng chưng cho nét văn hóa kính trên nhường dưới. Và cũng theo chuyện xưa này, làng chài ấy ở Quảng Ninh.\n\nThông thường lẩu thuyền chài hay chọn loại cá vược, cá song hay trắm đen được cắt khúc bản to dày cỡ 2-3 cm. Để khi nhúng cá sẽ không bị nát và giữ được độ ngọt của cá.\n\nNgoài các loại rau thông thường thì không thể thiếu hoa chuối khi nhúng.\n\n<strong>PHẦN 1: CHUẨN BỊ NGUYÊN LIỆU</strong>\n\n- Cá vược (hoặc cá song, trắm đen): 3 kg\n- Xương ống: 1 kg\n- Cà chua: 5 quả\n- Me: 2 quả (nếu thích)\n- Mẻ: 1 túi nhỏ, ớt hiểm: 2 quả\n- Gừng: 1 củ\n- Rau sống, hoa chuối, cải canh, nấm\n- Hành, răm, thì là\n- Bún: 1 kg\n- Gia vị: Bột canh, mì chính, hạt tiêu, dầu ăn, sa tế.\n\n<strong>PHẦN 2: CÁCH LÀM LẨU THUYỀN CHÀI</strong>\n\n<strong>Bước 1: </strong>Cá vược làm sạch, cắt miếng vừa ăn. Xếp lên đĩa để riêng (để khử mùi tanh của cá bạn nên dùng giấm hoặc rượu trắng).\n\n<img class=\"initial loaded\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-4-1519643699-194-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-5-1519643699-614-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<strong>Bước 2: </strong>Cà chua rửa sạch, bổ múi cau.\n<div id=\"ADS_159_15s\" class=\"txtCent\"></div>\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-2-1519643699-677-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\nHành, răm, thì là rửa sạch rồi cắt khúc.\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-3-1519643699-832-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<strong>Bước 3: </strong>Phi thơm hành khô với chút dầu ăn, cho 1/2 cà chua vào xào xơ, nêm 1 thìa bột canh. Phần mẻ hòa với ít nước rồi lọc lấy nước cốt. Ngoài ra bạn có thể thay mẻ bằng nước cốt me nếu thích.\n\n<strong>Bước 4:</strong> Rau cải canh, hoa chuối, nấm rửa sạch ngâm nước muối loãng (ngoài ra bạn có thể dùng thêm nhiều loại rau bạn thích).\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-9-1519643699-975-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-7-1519643699-555-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<strong>Bước 5: Phần chế nước dùng</strong>\n\nPhần cà chua sau khi xào xơ thêm nước và đun sôi, cho mẻ và chút nước cốt me để nồi nước dùng có vị chua vừa phải, nêm gia vị vừa miệng. Sau đó tiếp tục thêm phần cà chua còn lại, cùng 2 thìa sa tế, ít gừng thái chỉ và đun sôi, khi thấy nồi nước dùng sôi hạ bớt lửa sau đó cho nước dùng ra nồi lẩu để riêng.\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-8-1519643699-733-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<strong>Bước 6: </strong>Đặt nồi lẩu cá ở giữa bên cạnh bày cá cùng các loại rau nhúng. Trời se lạnh cả nhà quây quần bên nồi lẩu nóng hổi thì thật là thích.\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-10-1519643699-777-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\n<img class=\"loading\" src=\"https://cdn.eva.vn/upload/1-2018/images/2018-02-26/lau-thuyen-chai-ca-vuoc-lau-ca-vuoc-thuyen-chai-11-1519643699-986-width650height488.jpg\" alt=\"\" data-was-processed=\"true\" />\n\nChúc bạn thành công và ngon miệng cách làm lẩu thuyền chài nóng hổi hấp dẫn!\n\n</div>","Lẩu thuyền chài và rau","","publish","open","open","","lau-thuyen-chai-va-rau","","","2019-04-16 12:38:02","2019-04-16 05:38:02","","0","https://bizhostvn.com/w/nhahang/?p=288","0","post","","0"),
("289","1","2019-04-16 12:37:57","2019-04-16 05:37:57","","lẩu-thuyền-chài-và-rau","","inherit","open","closed","","lau-thuyen-chai-va-rau","","","2019-04-16 12:37:57","2019-04-16 05:37:57","","288","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/lẩu-thuyền-chài-và-rau.jpg","0","attachment","image/jpeg","0"),
("291","1","2019-04-16 12:39:09","2019-04-16 05:39:09","<h2 class=\"knc-sapo\">Lẩu cua đồng ở Hải Phòng thật sự đã \"bỏ bùa\" những ai từng ăn, khiến người ta lại muốn bắt một chuyến xe dù đang ở rất xa chỉ để về đây và ăn một bữa lẩu.</h2>\n<div class=\"react-relate animated hiding-react-relate\"></div>\n<div data-check-position=\"body_start\"></div>\n<div class=\"knc-content\">\n\nKhông phải vô cớ mà Hải Phòng luôn trở thành \"điểm hẹn cuối tuần\" cho rất nhiều bạn ở Hà Nội hay cả những tỉnh lân cận như Hải Dương, Bắc Ninh... Quá nhiều địa điểm vui chơi, cũng có quá nhiều nơi ăn uống cho chúng ta thoả sức \"tung hoành\".\n\nThỉnh thoảng, cuối tuần rảnh rang chẳng biết làm gì, muốn đi xa để đổi gió đôi chút thì hãy rủ nhau về ăn món lẩu riêu cua đồng ở thành phố hoa phượng đỏ. Chắc chắn đó sẽ là một chuyến đi rất xứng đáng với mấy kẻ... ham ăn đó.\n<div id=\"videoid_180121\" class=\"VCSortableInPreviewMode noCaption\" data-src=\"https://vcplayer.mediacdn.vn/1.1/?_site=kenh14&amp;vid=kenh14/dysmfe2mr01t0rbal6oblumlebhhqj/2017/07/01/laucuadong-1498847412505-9f8ef.mp4&amp;autoplay=false&amp;_info=7cb160cb00ac473bac61d4568f2a52f2\" data-width=\"600px\" data-height=\"400px\" data-vid=\"kenh14/dysmfe2mr01t0rbal6oblumlebhhqj/2017/07/01/laucuadong-1498847412505-9f8ef.mp4\">\n<div id=\"streamid_180121_qqki6si7k\" class=\"videoNewsPlayer streamid_180121_qqki6si7k-dimensions player-user-active Kenh14Player-pc Kenh14Player-full-width Kenh14Player default-skin\" lang=\"vi\" tabindex=\"-1\" role=\"region\" aria-label=\"Video Player\">\n<div class=\"Kenh14Player-area-control\">\n<div id=\"context-stats\" class=\" paused user-active\" tabindex=\"-1\" role=\"region\" data-reactroot=\"\" aria-label=\"video player\">\n<div class=\"\"></div>\n<div class=\"Kenh14Player-countdown\">\n<div class=\"Kenh14Player-countdown-background\"></div>\n<div class=\"Kenh14Player-loading-vid-icon\">\n<div class=\"Kenh14Player-countdown-play-icon\"></div>\n</div>\n</div>\n<div class=\" Kenh14Player-overlay clear\"><button class=\"overlay-pause\"></button><button class=\"overlay-play\"></button>\n<div class=\"overlay-shadow\"></div>\n<div class=\"overlay-ad\"></div>\n</div>\n<div class=\"Kenh14Player-info-waiting undefined\">\n<div class=\"Kenh14Player-title-video\">\n<div class=\"Kenh14Player-title-vd\">Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng</div>\n</div>\n<div class=\"Kenh14Player-time-video\"><span class=\"Kenh14Player-total-time-video\">00:01:24</span></div>\n<div class=\"Kenh14Player-setting-video\">\n<div class=\"Kenh14Player-control Kenh14Player-volume-control \"><button class=\"Kenh14Player-control Kenh14Player-button volume-toggle\"></button>\n<div class=\"Kenh14Player-control volume-slider\">\n<div class=\"volume-slider-level\">\n<div class=\"volume-level\"></div>\n</div>\n</div>\n</div>\n<button class=\"Kenh14Player-control  Kenh14Player-button full-screen-toggle\"></button></div>\n</div>\n<div class=\"thumbnail\"></div>\n</div>\n</div>\n</div>\n</div>\nTuy là thành phố biển, nhưng Hải Phòng lại có món lẩu cua đồng rất nổi tiếng. Không chỉ có người dân ở đây, mà các tín đồ ẩm thực, hay những ai thường xuyên đi du lịch ẩm thực đến nhiều tỉnh thành trong cả nước cũng hay nghe tên và biết đến lẩu cua đồng phố Văn Cao. Và một trong những quán được nhiều người biết đến nhất chính là lẩu cua đồng Minh Quỳnh (188 Văn Cao).\n\nMở ra cách đây đã 10 năm (năm 2007), tên quán cũng được đặt một cách rất giản dị bằng cách ghép tên 2 vợ chồng thành quán lẩu cua đồng Minh Quỳnh, anh chị chủ quán chính là người đã nghĩ ra cách làm món lẩu cua đồng đặc trưng của quán này.\n\nQuán khá rộng, có 2 tầng, nằm ngay mặt đường Văn Cao nên rất dễ tìm. Không gian quán rất thoáng và sáng sủa, chỉ với bàn ghế nhựa dân dã, giản dị nhưng rất sạch sẽ, tạo cảm giác dễ chịu, ngon miệng cho khách khi tới ăn uống.\n<div class=\"VCSortableInPreviewMode\">\n<div><img id=\"img_7b284370-5dcb-11e7-b560-f35f60ffc133\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 2.\" src=\"https://kenh14cdn.com/2017/lau2-1498851412628.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau2-1498851412628.jpg\" /></div>\n<div class=\"PhotoCMS_Caption\">\n<p data-placeholder=\"[nhập chú thích]\">Quán đơn giản nhưng rất rộng rãi, sạch sẽ.</p>\n\n</div>\n</div>\nĐã có quá nhiều \"thổ địa\" Hải Phòng chứng thực về độ ngon của món này, lẩu cua đồng ở đây thật sự khiến người ta bị mê hoặc.\n<div class=\"VCSortableInPreviewMode\">\n<div><img id=\"img_7c219790-5dcb-11e7-b560-f35f60ffc133\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 3.\" src=\"https://kenh14cdn.com/2017/lau6-1498851412635.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau6-1498851412635.jpg\" /></div>\n<div class=\"PhotoCMS_Caption\">\n<p data-placeholder=\"[nhập chú thích]\">Quán có nhiều loại lẩu, nhưng đa số khách đến đây đều chỉ gọi lẩu cua đồng.</p>\n\n</div>\n</div>\nĐiều ấn tượng đầu tiên cho những ai lần đầu đến ăn lẩu ở quán này, đó là nồi lẩu lúc nào cũng đầy ắp gạch và thịt cua.\n\nRiêu cua vàng ruộm, béo ngậy, nổi thành từng miếng đầy đặn trên mặt nồi. Một nồi lẩu riêu với thật nhiều cua, lại thêm màu đỏ của cà chua, màu xanh của hành lá, chỉ nhìn thôi đã thấy hấp dẫn rồi. Cảm giác \"xôi thịt\" đến mức muốn thốt lên ngay rằng: Đây mới thật sự là ăn lẩu riêu cua này!\n<div class=\"VCSortableInPreviewMode noCaption active\">\n<div><img id=\"img_7ba86ff0-5dcb-11e7-b560-f35f60ffc133\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 4.\" src=\"https://kenh14cdn.com/2017/lau4-1498851412631.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau4-1498851412631.jpg\" /></div>\n</div>\nNước dùng mang hương vị rất đặc biệt. Vị chua dễ chịu được đánh từ chút giấm bỗng thanh thanh hòa quyện với vị ngọt của thịt cua tạo nên thứ mùi vị đậm đà, khó quên. Chẳng biết chủ quán có bí quyết gì, chỉ biết rằng nó rất đặc biệt và cực ngon. Với khách hàng thì như thế thôi là quá đủ rồi.\n<div id=\"admsection4\">\n<div id=\"adm5495334\">\n<div id=\"ad1555393120630\"><span class=\"hd1555393120630\">ADVERTISING</span>\n<div class=\"vd1555393120630\"></div>\n<span class=\"ft1555393120630\">iTVC from Admicro</span></div>\n</div>\n</div>\nĐồ nhúng ở đây thì có vô vàn, nào thịt bò, chả cá, lòng non, đậu phụ, rồi giò sống, tôm, ngao, mực... mỗi thứ một đĩa nhỏ, tha hồ ăn hết món này đến món khác. Đừng quên kèm theo cả nấm, hoa chuối thái mỏng và các loại rau cho đủ vị.\n<div class=\"VCSortableInPreviewMode\">\n<div><img id=\"img_7b6dff00-5dcb-11e7-acc2-f3b8cf6c53c3\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/2017/lau3-1498851412630.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 5.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau3-1498851412630.jpg\" /></div>\n<div class=\"PhotoCMS_Caption\">\n<p data-placeholder=\"[nhập chú thích]\">Đồ nhúng được quán chuẩn bị trong ngày, ngày nào bán hết ngày ấy nên cảm giác rất tươi ngon.</p>\n\n</div>\n</div>\nThả từng thứ vào nồi lẩu đang sôi sùng sục trên bếp, mùi hương toả ra thơm phưng phức, nức cả mũi. Đợi thêm một chút rồi vớt ra, chấm muối tiêu chanh ớt hoặc tương ớt cay xè, vừa ăn vừa thổi phù phù, tha hồ mà tận hưởng.\n\nCòn một điều nữa, khi ăn lẩu cua đồng ở Hải Phòng, đó là nhất định phải ăn với bánh đa đỏ thì mới \"đúng điệu\". Bánh đa phải nhúng kỹ một chút để từng sợi chín mềm, vớt ra bát, chan thêm chút nước và ít gạch cua vào, cứ gọi là ngon \"bá cháy\".\n\nTuy nhiên, nếu ai không thích ăn bánh đa cua thì quán vẫn phục vụ thêm cả các loại mì khác nên ai cũng có thể ăn ngon với đúng sở thích của mình.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_7be3f250-5dcb-11e7-acc2-f3b8cf6c53c3\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 6.\" src=\"https://kenh14cdn.com/2017/lau5-1498851412634.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 6.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau5-1498851412634.jpg\" /></div>\n</div>\nQuán mở từ 10h sáng đến khoảng 10h30 tối, hầu như lúc nào cũng đông khách nhưng đông nhất vào buổi trưa và tối. Đông khách là bởi lẩu ngon, và cũng bởi giá thành ở đây rất rẻ. Một người ăn no nê cũng chỉ hết khoảng 150k mà thôi.\n\nNgon - bổ - rẻ, bởi vậy nên quán thu hút rất nhiều khách hàng, không chỉ các dịp cuối tuần mà còn vào tất cả các ngày khác. Vào những ngày lễ, cao điểm, quán có khi bán tới mấy trăm nồi lẩu một ngày.\n\nCuối tuần rồi, rủ nhau về Hải Phòng làm một bữa lẩu cua đồng thôi nhỉ!!?\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_7c5a81e0-5dcb-11e7-acc2-f3b8cf6c53c3\" title=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 7.\" src=\"https://kenh14cdn.com/2017/lau7-1498851412636.jpg\" alt=\"Muốn ăn ngon - bổ - rẻ thì nhất định đừng bỏ qua lẩu cua đồng Hải Phòng - Ảnh 7.\" width=\"\" height=\"\" data-original=\"https://kenh14cdn.com/2017/lau7-1498851412636.jpg\" /></div>\n</div>\n</div>","Lẩu cua đồng","","publish","open","open","","lau-cua-dong","","","2019-04-16 12:39:09","2019-04-16 05:39:09","","0","https://bizhostvn.com/w/nhahang/?p=291","0","post","","0"),
("292","1","2019-04-16 12:39:04","2019-04-16 05:39:04","","lẩu-cua-đồng","","inherit","open","closed","","lau-cua-dong","","","2019-04-16 12:39:04","2019-04-16 05:39:04","","291","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/lẩu-cua-đồng.jpg","0","attachment","image/jpeg","0"),
("294","1","2019-04-16 12:40:11","2019-04-16 05:40:11","<div class=\"head-article\">Lẩu nói chung là một trong những món ăn thường được nhiều gia đình yêu thích và ưu tiên lựa chọn trong những ngày cuối tuần khi mà ngoài trời mưa đang rơi làm cho không khí có phần se se lạnh. Tuy nhiên, để muốn có được một nồi lẩu ngon, thơm ngon chuẩn và đúng vị thì cũng không hề dễ dàng chút nào. Các bạn cần chú ý để lựa chọn từ nguyên liệu, cho đến cách ninh nước súp từ xương..vv..</div>\n<h2>Vậy hôm nay các bạn hãy cùng monngon.tv tham khảo để học ngay công thức của <strong>cách nấu nước lẩu gà </strong>thơm ngon tuyệt vời một cách khá đơn giản thôi. Công thức sẽ được giới thiệu ngay sau đây, các bạn hãy chuẩn bị tham và lên tinh thần chuẩn bị ngay nhé.</h2>\nBên dưới đây là 2 cách để các bạn pha chế lẩu gà cực thơm ngon cho mọi người tham khảo nhé!\n<h3> Nguyên liệu các bạn cần chuẩn bị cho <strong>cách nấu nước lẩu gà </strong>thơm ngon chuẩn vị</h3>\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-nau-nuoc-lau-ga-1.jpg\" alt=\"\" />\n\nLẩu thường:\n<ul>\n 	<li>Một con gà ta hoặc gà công nghiệp đều được</li>\n 	<li>Xương ống heo (hay xương bò đều được)</li>\n 	<li>Cà chua chín 1 quả</li>\n 	<li>Gừng tươi 1 nhánh nhỏ</li>\n 	<li>Hành lá,<strong>cần tây</strong> mỗi thứ 1 ít</li>\n 	<li>Cà rốt 1 củ</li>\n</ul>\nLẩu gà cay:\n<ul>\n 	<li>Gừng, tỏi, hạt tiêu xay, ớt cay phơi khô</li>\n 	<li>Hoa hồi, vỏ quế, hạt thìa là, sốt đậu tương cay</li>\n</ul>\n<h4>Thực hiện công đoạn nấu của <strong>cách nấu nước lẩu gà</strong></h4>\nPhần nước dùng lẩu thường:\n\n- Thịt gà sau khi được nhặt lông, bóp đều với muối, rửa lại thật sạch thì đem chặt thành những miếng nhỏ. Thực hiện tương tự như thế đối với xương heo đã chuẩn bị.\n\n- Gừng cạo sạch vỏ rửa sạch, cà chua chín cắt thành những lát mỏng. Hành lá và cần tây cắt bỏ gốc nhặt và rửa sạch rồi cắt nhỏ. Cà rốt gọt bỏ vỏ, cắt thành những miếng vuông.\n\n- Đặt một nồi nước lọc có cho vào ít muối lên bếp. Đun sôi già rồi thả thịt gà và xương heo vào chần sơ qua rồi vớt ra để ráo nước. Ướp 2 phần gồm thịt và xương với ít muối ăn đẻ cho ngấm gia vị khoảng 30 phút.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-nau-nuoc-lau-ga-2.jpg\" alt=\"\" />\n\n- Xương ống heo xào sơ cho ngấm gia vị, sau đó cho vào nước vào nồi sao cho xâm xấp mặt xương, rồi ninh nồi xương ở lửa vừa và nhỏ. Khi nồi thấy nồi nước sôi thì cho thịt gà, thêm gừng cắt nhỏ vào, 3 thìa muối ăn, tiếp tục đun sôi tiếp khoảng 7 đến 10 phút thì cho đầu hành cắt khúc, cà rốt, <a href=\"http://www.monngon.tv/cach-xao-khoai-tay-2935.html\"><strong>cà chua</strong></a>cắt nhỏ vào đun sôi lại.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-nau-nuoc-lau-ga-3.jpg\" alt=\"\" />\n\nSau khi nồi nước sôi lại thì vặn lửa nhỏ lại rồi ninh tiếp khoảng 40 đến 45 phút. Như vậy, bạn đã có được nồi nước dùng lẩu gà thường được hoàn thành một cách rất nhanh chống. Các bạn đã hoàn toàn có thể thả thêm những loại rau, nấm ăn kèm khác vào và thưởng thức ngay.\n\nChuẩn bị tiếp phần nước dùng lẩu cay cho <strong>cách nấu nước lẩu gà.</strong>\n\n- Gừng cạo vỏ rửa sạch, cắt miếng dài. Tỏi bóc bỏ vỏ, cắt lát. Ớt khô cũng cắt miếng nhỏ. Chuẩn bị đến các loại gia vị gồm hoa hồi, quế, hạt thìa là.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-nau-nuoc-lau-ga-4.jpg\" alt=\"\" />\n\nĐặt một cái chảo dầu lên bếp, đun cho nóng già rồi thả gừng, tỏi vào xào nhanh tay khoảng 1 phút. Sau đó, thêm phần tương đậu cay vào xào tiếp tục cho đến khi dậy mùi thơm thì cho nốt các gia vị còn lại (quế, hồi, ớt khô, hạt thìa là) vào chảo xào tiếp.\n\nPhần gà và xương heo đã được sơ chế như phần nước lẩu thường. Các bạn cho 2 loại này lên bếp xào cùng chút muối ăn cho đằm vị rồi cho lượng nước vừa đủ ăn và tiếp tục đun sôi lăn tăn lên.\n\n- Sau đó lại cho tiếp các nguyên liệu gia vị vừa xào vào nồi nước lẩu này, rồi đun sôi lên lại, nhớ phải thêm chút giấm gạo cho vừa ăn là hoàn thành.\n\n<img src=\"http://www.monngon.tv/uploads/images/images/cach-nau-nuoc-lau-ga-5.jpg\" alt=\"\" />\n\nNếu muốn thưởng thức 2 loại lẩu 1 lúc, các bạn có thể chuẩn bị một chiếc nồi dạng hai ngăn, chia nồi thành hai phần nước dùng thường và nước dùng cay sang thành hai bên khác nhau và thưởng thức nhé!\n\nCuối cùng chúc các bạn thành công cùng nồi lẩu gà ngon của <strong>cách nấu nước lẩu gà </strong>thơm ngon tuyệt vời, để cả nhà quây quần vui vẻ bên nhau dịp cuối tuần.","Lẩu gà","","publish","open","open","","lau-ga","","","2019-04-16 12:40:11","2019-04-16 05:40:11","","0","https://bizhostvn.com/w/nhahang/?p=294","0","post","","0"),
("295","1","2019-04-16 12:39:52","2019-04-16 05:39:52","","lẩu-gà","","inherit","open","closed","","lau-ga","","","2019-04-16 12:39:52","2019-04-16 05:39:52","","294","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/lẩu-gà.jpg","0","attachment","image/jpeg","0"),
("299","1","2019-04-16 13:50:12","2019-04-16 06:50:12","<h2 class=\"ctTp\">Độ “ép-phê” của món gà giả cầy còn đã hơn thịt chó “kỹ xảo”!</h2>\nTrước nay, thường đám chim vẹt, két mới có khả năng nhái đủ thứ tiếng của con vật hoặc người, dù còn bập bẹ. Liệu bắt gà giả chó có ổn không?\n\nĐằng này, gà còn có “số phận” thảm thương: chân run, mắt kém vì mê... “cống hiến” cho các chị gà mái đến ... “hết xí quách”!\n\nKhông đành lòng nhìn cảnh tiễn chú gà trống đầu đàn, nặng 3 - 4 ký, vào nồi nước hầm sả thật đơn điệu, anh Hải, một đầu bếp “không khói” (có tài nghĩ món mới nhưng không trực tiếp vào bếp chế biến), ở Phú Nhuận, TP.HCM đã nghĩ ra cách “an bài” gà “chồng” tử tế hơn: hấp giả cầy.\n\n<img class=\"news-image initial loading\" src=\"https://anh.24h.com.vn/upload/1-2013/images/2013-03-22/1363949946-ga-lao-gia-cay.jpg\" alt=\"Gà lão giả cầy - 1\" data-was-processed=\"true\" />\n\nNgon ngậm ngùi đùi gà lão giả cầy - Ảnh: Tùng Châu\n\nNào ngờ ngon lạ! Miếng thơm khơi gợi nhiều tầng cảm xúc: lúc giòn sần sật (da), khi mềm dẻo lẫn ngọt thơm (thịt), đoạn cay nồng ấm (hỗn hợp tinh dầu của riềng, sả, lá mơ) thêm chén mắm tôm pha sủi tăm, như réo gọi - đủ vị mặn ngọt, chua cay. Xen lẫn tiếng cười nói rôm rả của bằng hữu, giọng “khà” trầm ấm tán thưởng ly rượu hậu vị ngọt, nhờ ngâm bầy ong rừng... Gà ơi hãy yên lòng! “Đàn vợ” mi sẽ có “thằng” gà khác lo!\n\nNgoài ra, món ăn còn giàu vị thuốc. Theo đông y, lá mơ giúp thanh nhiệt, giải độc. Còn củ riềng và sả thì tiêu thực.\n\nHứng chí, có người đặt lại tên cho món mới: “Ngô Phù Sai sa cơ”!\n\nMuốn đồng cảm cái tên “vương giả” này, phải lục tìm huyền sử Tàu, thời Xuân Thu. Xưa quân dân của Câu Tiễn vì yếu thế, đã bị quân Ngô xâm chiếm. Câu Tiễn cùng hoàng hậu bị bắt làm con tin, đày sang nước Ngô, khổ nhục hơn trọng phạm. Để thực hiện kế hoạch phục quốc, Câu Tiễn đã tuyển chọn 2 người đẹp nhất nước, giỏi múa ca, cống tiến cho Phù Sai. Trong đó, nổi bậc nhất là Tây Thi, nàng đẹp đến độ “chim sa cá lặn”. Nhiệm vụ của người đẹp “hai mặt” này là quyến dụ Phù Sai ăn chơi vô độ, mất cảnh giác phòng bị. Cuối cùng, Phù Sai phải chết thảm!\n\nThì ra, một số món ăn dân dã Việt không chỉ ngon, bổ vì có nhiều rau gia vị tươi giàu chất thuốc, còn hàm chứa tinh thần lạc quan và cả những bài học làm người!\n\n<strong>Cách làm:</strong> chọn lấy cặp đùi to cỡ nửa cổ tay người lớn của gà, mang thui sơ rồi ngâm vào thau nước đá để da gà thêm giòn. Trụng tiếp vào nồi nước dừa xiêm đang sôi, canh vừa chín tái thì vớt ra, để nguội. Xắt miếng vừa gắp, mang hấp cách thủy. Tương tự, có thể dùng đùi gà đòn, gà nòi, gà sao, vịt xiêm... già.","Cầy hương","","publish","open","open","","cay-huong","","","2019-04-16 13:50:12","2019-04-16 06:50:12","","0","https://bizhostvn.com/w/nhahang/?p=299","0","post","","0"),
("300","1","2019-04-16 13:49:56","2019-04-16 06:49:56","","cầy-hương","","inherit","open","closed","","cay-huong","","","2019-04-16 13:49:56","2019-04-16 06:49:56","","299","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cầy-hương.jpg","0","attachment","image/jpeg","0"),
("302","1","2019-04-16 13:51:32","2019-04-16 06:51:32","<div class=\"article-summary\">Tham khảo cách nấu các món ngon và bổ dưỡng từ thịt ba ba mà chúng tôi giới thiệu ở đây nhé!</div>\n<div class=\"clearfix\"></div>\n<article class=\"article-content\"><strong>Ba ba là một loại thực phẩm rất bổ dưỡng và có công dụng chữa nhiều thứ bệnh, tốt cho cả nam giới và nữ giới. Các món ăn từ ba ba thường không được phổ biến trong bữa ăn hàng ngày, hãy cùng tham khảo cách nấu một số món ngon từ ba ba để cả gia đình bạn cùng thử nhé!</strong>\n\nCác món ăn từ ba ba hiện nay là các món đặc sản mà nhiều thực khách tìm đến ở các nhà hàng sang trọng do hương vị đăc biệt thơm ngon và tác dụng chữa bệnh hiệu quả của nó.\n\n<img src=\"https://giadinhhaisan.com/media/news/2107_cach-lam-mon-ba-ba-nau-ruou-vang-thom-ngon-bo-duong.jpg\" alt=\"món ngon từ thịt ba ba\" width=\"500\" />\n\n<em>Thịt ba ba bổ dưỡng cho cả nam giới và nữ giới</em>\n\nBa ba tuy là món không phổ biến nhưng cách chế biến các món ngon từ ba ba không hề khó, bạn có thể tự mình chế biến để cả nhà cùng thưởng thức mà không cần phải đến các quán ăn đắt tiền. Chúng tôi sẽ hướng dẫn bạn cách chế biến một số <strong>món ăn từ ba ba</strong> dưới đây.\n\n<strong>Ba ba hầm chuối đậu</strong>\n\n<img src=\"https://giadinhhaisan.com/media/news/2107_1kg-ba-ba-tuoi-song.jpg\" alt=\"hướng dẫn nấu các món từ ba ba\" width=\"500\" />\n\n<em>Món ba ba hầm chuối đậu</em>\n\n<em><strong>Nguyên liệu:</strong></em>\n\n- Ba ba đã làm thịt: 1kg\n\n- Chuối xanh: 8-10 quả nhỏ\n\n- Đậu phụ: 2 bìa\n\n- Thịt ba chỉ: 300g\n\n- Hành lá, tía tô, lá lốt\n\n- Nước cốt nghệ, mẻ, riềng, sả\n\n<em><strong>Cách chế biến món ăn:</strong></em>\n\n- Ba ba đã sơ chế cắt thành khúc vừa ăn.\n\n- Bỏ ba ba vào nồi sau đó ướp với các loại gia vị: nước cốt nghệ, mẻ đã lọc, riềng sả băm nhỏ, chút muối, bột nêm. Đảo đều cho thịt ngấm gia vị, để tầm 10 phút.\n\n- Chuối xanh cắt chéo thành các khúc dày khoảng 3cm, rửa sạch với nước sau đó bỏ vào nồi luộc qua để bớt vị chát của nhựa chuối.\n\n- Thịt ba chỉ thái miếng nhỏ, đậu phụ cắt thành các miếng vuông, đem rán qua.\n\n- Thịt ba ba đã ướp cho lên bếp đảo đều, sau đó bỏ thịt ba chỉ vào đun lửa to khoảng 5 phút cho các miếng thịt baba săn lại. Tiếp tục cho phần chuối đã luộc sơ qua vào nồi đảo đều, chế thêm nước dùng vào nồi sao cho ngập phần thịt. Nêm nếm lại gia vị cho vừa ăn, để lửa nhỏ om cho đến khi thịt ba ba và chuối đều đã mềm thì bỏ phần đậu phụ rán vào.\n\n- Đun lửa to thêm đến khi phần nước sánh lại, bỏ các loại rau thơm: hành lá, tía tô, là lốt thái nhỏ vào nồi sau đó tắt bếp.\n\nBỏ món ăn ra bát và thưởng thức nóng, vị mềm ngọt của thịt ba ba, cùng mùi thơm của các loại rau gia vị quen thuộc chắc chắn sẽ hấp dẫn cả gia đình bạn đấy!\n\n<strong>Ba ba rang muối</strong>\n\n<strong><img src=\"https://giadinhhaisan.com/media/news/2107_baba-dang-boi-cat-tiet-tai-ban-nha-hang-ho-trung-kinh4.jpg\" alt=\"cách làm các món ăn từ ba ba\" width=\"500\" /></strong>\n\n<em>Món ba ba rang muối hấp dẫn</em>\n\n<em><strong>Nguyên liệu:</strong></em>\n\n- Ba ba đã làm thịt: 1 con\n\n- Bột năng, bột chiên chuyên dụng.\n\n- Muối chuyên dùng cho các món rang (có thể tìm thấy ở các siêu thị)\n\n- Nước mắm, muối, mì chính, hạt tiêu, đường trắng, rượu, gừng, sả, sa tế\n\n- Dầu ăn\n\n<em><strong>Cách chế biến món ăn:</strong></em>\n\n- Bắc nồi lên bếp, cho khoảng 2 bát tô nước sạch vào nồi đun sôi lên. Bỏ sa tế, tiêu, muối, đường, mỳ chính, nước mắm cùng sả, gừng đập dập vào nồi đun sôi.\n\n- Sau khi đã đun sôi các loại gia vị, vớt hết bã sả bỏ đi. Bỏ phần thịt ba ba đã cắt khúc vào nồi nước để khoảng 5 phút rồi vớt ra để ráo nước.\n\n- Cho vào tô 2 muỗng bột năng, 4 muỗng bột chiên, khuấy đều với nước nguội thành hỗn hợp lỏng không quá đặc.\n\n- Nhúng thịt ba ba qua hỗn hợp bột chiên, sau đó cho vào chảo chiên ngập dầu đến khi miếng thịt ba ba đã vàng đậm thì vớt ra để thấm dầu. Phần thịt đã chiên xong, rắc muối lên trộn đều cho bột muối phủ đều trên miếng thịt ba ba.\n\nBày món ăn ra đĩa, rắc thêm chút hành khô lên trên. Món ăn thấm đều gia vị, bên ngoài vàng giòn, bên trong thịt mềm ngọt như vậy là đã đạt yêu cầu.\n\n</article>","Ba ba","","publish","open","open","","ba-ba","","","2019-04-16 13:51:32","2019-04-16 06:51:32","","0","https://bizhostvn.com/w/nhahang/?p=302","0","post","","0"),
("303","1","2019-04-16 13:51:27","2019-04-16 06:51:27","","ba-ba","","inherit","open","closed","","ba-ba","","","2019-04-16 13:51:27","2019-04-16 06:51:27","","302","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/ba-ba.jpg","0","attachment","image/jpeg","0"),
("305","1","2019-04-16 13:52:40","2019-04-16 06:52:40","","Nhím","","publish","open","open","","nhim","","","2019-04-16 13:52:40","2019-04-16 06:52:40","","0","https://bizhostvn.com/w/nhahang/?p=305","0","post","","0"),
("306","1","2019-04-16 13:52:37","2019-04-16 06:52:37","","nhím","","inherit","open","closed","","nhim","","","2019-04-16 13:52:37","2019-04-16 06:52:37","","305","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/nhím.jpg","0","attachment","image/jpeg","0"),
("308","1","2019-04-16 13:53:59","2019-04-16 06:53:59","Le le - một loại chim gần giống như vịt trời thường tập trung kiếm ăn ở đồng ruộng, le le có thân hình cũng giống như vịt nhưng con lớn nhất chỉ nặng khoảng 300g. Nếu so với vịt trời, le le có trọng lượng chỉ bằng phân nửa, nhưng thịt lại ngon, bổ và đắt hơn nhiều lần.\nMón ăn từ chim le le như một món ăn có đẳng cấp và thường dành cho giới thượng lưu. Riêng những người sành điệu ẩm thực thì coi le le là<span class=\"text_exposed_show\"> \"hàng độc\", là món đại bổ có khả năng phục hồi sức khỏe và tăng cường sinh lực\nĐến với Nhà Hàng Chim Rừng chúng tôi thực khách sẽ được thưởng thức các món ăn được chế biến từ chim le le do bàn tay khéo léo của những đầu bếp nhiều năm kinh nghiệm chắc chắn sẽ làm hài lòng quý thực khách\nCác món ăn được chế biến từ Chim le le:\n- Tiết canh le le\n- Le le hấp nguyên con\n- Lòng le le xào giá mướp\n- Le le nướng mọi\n- Le le hầm thuốc bắc\n- Le le nấu canh khoai rau rút\n- Xôi le le</span>","Le le","","publish","open","open","","le-le","","","2019-04-16 13:53:59","2019-04-16 06:53:59","","0","https://bizhostvn.com/w/nhahang/?p=308","0","post","","0"),
("309","1","2019-04-16 13:53:38","2019-04-16 06:53:38","","le-le","","inherit","open","closed","","le-le","","","2019-04-16 13:53:38","2019-04-16 06:53:38","","308","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/le-le.jpg","0","attachment","image/jpeg","0"),
("312","1","2019-04-16 13:56:04","2019-04-16 06:56:04","","Khăn ướt","","publish","open","open","","khan-uot","","","2019-04-16 13:56:04","2019-04-16 06:56:04","","0","https://bizhostvn.com/w/nhahang/?p=312","0","post","","0"),
("313","1","2019-04-16 13:55:54","2019-04-16 06:55:54","","nhà-hàng","","inherit","open","closed","","nha-hang","","","2019-04-16 13:55:54","2019-04-16 06:55:54","","312","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/nhà-hàng.jpg","0","attachment","image/jpeg","0"),
("315","1","2019-04-16 13:57:17","2019-04-16 06:57:17","","Rượu Sochu","","publish","open","open","","ruou-sochu","","","2019-04-16 13:57:17","2019-04-16 06:57:17","","0","https://bizhostvn.com/w/nhahang/?p=315","0","post","","0"),
("316","1","2019-04-16 13:57:13","2019-04-16 06:57:13","","rượu-sochu","","inherit","open","closed","","ruou-sochu","","","2019-04-16 13:57:13","2019-04-16 06:57:13","","315","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/rượu-sochu.jpg","0","attachment","image/jpeg","0"),
("318","1","2019-04-16 13:58:09","2019-04-16 06:58:09","","Bia Heniken","","publish","open","open","","bia-heniken","","","2019-04-16 13:58:09","2019-04-16 06:58:09","","0","https://bizhostvn.com/w/nhahang/?p=318","0","post","","0"),
("319","1","2019-04-16 13:58:05","2019-04-16 06:58:05","","bia-heniken","","inherit","open","closed","","bia-heniken","","","2019-04-16 13:58:05","2019-04-16 06:58:05","","318","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bia-heniken.jpg","0","attachment","image/jpeg","0"),
("321","1","2019-04-16 14:00:36","2019-04-16 07:00:36","","Rượu John đỏ new","","publish","open","open","","ruou-john-do-new","","","2019-04-16 14:00:36","2019-04-16 07:00:36","","0","https://bizhostvn.com/w/nhahang/?p=321","0","post","","0"),
("322","1","2019-04-16 14:00:30","2019-04-16 07:00:30","","rượu-john-đỏ","","inherit","open","closed","","ruou-john-do","","","2019-04-16 14:00:30","2019-04-16 07:00:30","","321","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/rượu-john-đỏ.jpg","0","attachment","image/jpeg","0"),
("324","1","2019-04-16 14:01:38","2019-04-16 07:01:38","","Rượu vang Rosso","","publish","open","open","","ruou-vang-rosso","","","2019-04-16 14:01:38","2019-04-16 07:01:38","","0","https://bizhostvn.com/w/nhahang/?p=324","0","post","","0"),
("325","1","2019-04-16 14:01:34","2019-04-16 07:01:34","","rượu-vang-rosso","","inherit","open","closed","","ruou-vang-rosso","","","2019-04-16 14:01:34","2019-04-16 07:01:34","","324","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/rượu-vang-rosso.jpg","0","attachment","image/jpeg","0"),
("362","1","2019-04-16 14:29:00","2019-04-16 07:29:00","","bg","","inherit","open","closed","","bg","","","2019-04-16 14:29:00","2019-04-16 07:29:00","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg.jpg","0","attachment","image/jpeg","0"),
("380","1","2019-04-16 14:47:55","2019-04-16 07:47:55","","fresh","","inherit","open","closed","","fresh","","","2019-04-16 14:47:55","2019-04-16 07:47:55","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/fresh.png","0","attachment","image/png","0"),
("381","1","2019-04-16 14:47:56","2019-04-16 07:47:56","","online-order","","inherit","open","closed","","online-order","","","2019-04-16 14:47:56","2019-04-16 07:47:56","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/online-order.png","0","attachment","image/png","0"),
("382","1","2019-04-16 14:47:56","2019-04-16 07:47:56","","free-parking","","inherit","open","closed","","free-parking","","","2019-04-16 14:47:56","2019-04-16 07:47:56","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/free-parking.png","0","attachment","image/png","0"),
("383","1","2019-04-16 14:47:57","2019-04-16 07:47:57","","FREE-WIFI","","inherit","open","closed","","free-wifi","","","2019-04-16 14:47:57","2019-04-16 07:47:57","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/FREE-WIFI.png","0","attachment","image/png","0"),
("384","1","2019-04-16 14:47:57","2019-04-16 07:47:57","","ship-tan-nha","","inherit","open","closed","","ship-tan-nha","","","2019-04-16 14:47:57","2019-04-16 07:47:57","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/ship-tan-nha.png","0","attachment","image/png","0"),
("385","1","2019-04-16 14:47:58","2019-04-16 07:47:58","","phong-hoi-truong","","inherit","open","closed","","phong-hoi-truong","","","2019-04-16 14:47:58","2019-04-16 07:47:58","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/phong-hoi-truong.png","0","attachment","image/png","0"),
("417","1","2019-04-16 14:56:58","2019-04-16 07:56:58","","bg2","","inherit","open","closed","","bg2","","","2019-04-16 14:56:58","2019-04-16 07:56:58","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg2.jpg","0","attachment","image/jpeg","0");
INSERT INTO bz_posts VALUES
("436","1","2019-04-16 15:07:43","2019-04-16 08:07:43","","bg4","","inherit","open","closed","","bg4","","","2019-04-16 15:07:43","2019-04-16 08:07:43","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg4.jpg","0","attachment","image/jpeg","0"),
("442","1","2019-04-16 15:11:17","2019-04-16 08:11:17","","phone-icon","","inherit","open","closed","","phone-icon","","","2019-04-16 15:11:17","2019-04-16 08:11:17","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/phone-icon.png","0","attachment","image/png","0"),
("443","1","2019-04-16 15:11:18","2019-04-16 08:11:18","","mail-icon","","inherit","open","closed","","mail-icon","","","2019-04-16 15:11:18","2019-04-16 08:11:18","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/mail-icon.png","0","attachment","image/png","0"),
("444","1","2019-04-16 15:11:18","2019-04-16 08:11:18","","map-icon","","inherit","open","closed","","map-icon","","","2019-04-16 15:11:18","2019-04-16 08:11:18","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/map-icon.png","0","attachment","image/png","0"),
("455","1","2019-04-16 15:16:48","2019-04-16 08:16:48","<div class=\"form-dat-ban\" id=\"dat-ban\">\n<h3>Liên hệ đặt bàn</h3>\n<p class=\"des\">Quý khách vui lòng đặt bàn trước để chúng tôi sắp xếp cho quý khách chỗ ngồi tốt nhất!</p>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Tên của bạn:</label>\n[text* text-657 placeholder \"Tên của bạn...\"]\n<label>Số điện thoại của bạn:</label>\n[tel* tel-466 placeholder \"Số điện thoại...\"]\n<label>Email của bạn (nếu có):</label>\n[email email-715 placeholder \"Email của bạn...\"]\n</div>\n<div class=\"right\">\n<label>Số người:</label>\n[number* number-620 min:1 max:10 placeholder \"Số người\"]\n<label>Bạn có thể tới dùng bữa ngày nào?</label>\n[date* date-815 min:2019-04-16 max:2020-01-31 placeholder \"Thời gian bạn tới\"]\n<label>Thời gian:</label>\n[select menu-54 \"Thời gian\" \"Buổi sáng\" \"Buổi trưa\" \"Buổi chiều\" \"Buổi tối\"]\n</div>\n</div>\n<p class=\"des\">Khách đặt tiệc hội nghị, liên hoan vui lòng gọi trực tiếp: 0909009009</p>\n[submit \"Đặt bàn ngay\"]\n</div>\n1\nMẫu website nhà hàng - Thiết kế website Ninh Bình \"[your-subject]\"\nMẫu website nhà hàng - Thiết kế website Ninh Bình <wordpress@bizhostvn.com>\ndemo@gmail.com\nCó một khách hàng đặt bàn tại nhà hàng:\n- Họ và tên: [text-657]\n- Số điện thoại: [tel-466]\n- Địa chỉ email: [email-715]\n- Số người: [number-620]\n- Ngày tới ăn: [date-815]\n- Thời gian trong ngày: [menu-54]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nhà hàng - Thiết kế website Ninh Bình (https://bizhostvn.com/w/nhahang)\n\n\n\n\n\nMẫu website nhà hàng - Thiết kế website Ninh Bình \"[your-subject]\"\nMẫu website nhà hàng - Thiết kế website Ninh Bình <wordpress@bizhostvn.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nhà hàng - Thiết kế website Ninh Bình (https://bizhostvn.com/w/nhahang)\nReply-To: demo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Đặt bàn","","publish","closed","closed","","form-lien-he-1","","","2019-04-16 16:33:35","2019-04-16 09:33:35","","0","https://bizhostvn.com/w/nhahang/?post_type=wpcf7_contact_form&#038;p=455","0","wpcf7_contact_form","","0"),
("477","1","2019-04-16 15:48:08","2019-04-16 08:48:08","","bg5","","inherit","open","closed","","bg5","","","2019-04-16 15:48:08","2019-04-16 08:48:08","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg5.png","0","attachment","image/png","0"),
("485","1","2019-04-16 15:52:53","2019-04-16 08:52:53","i phi lê\n\n2 cây rau thì là\n\n1 củ hành khô\n\n3 tép tỏi\n\nMột ít nước mắm, hạt tiêu, dầu ăn\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><a class=\"detail-img-lightbox\" title=\"\" href=\"http://afamilycdn.com/2019/4/16/thuc-don-1-15553891553792070270932-15553915298522046894904.png\" target=\"_blank\" rel=\"noopener noreferrer\" data-fancybox-group=\"img-lightbox\"><img id=\"img_aa3a6150-6000-11e9-8457-8fbdcbd35d2c\" class=\"lightbox-content\" title=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 1.\" src=\"http://afamilycdn.com/2019/4/16/thuc-don-1-15553891553792070270932-15553915298522046894904.png\" alt=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 1.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/16/thuc-don-1-15553891553792070270932-15553915298522046894904.png\" /></a></div>\n</div>\n<b>Chế biến:</b>\n\nCá rửa sạch lọc bỏ da cá. Để cá ráo nước sau đó thái miếng nhỏ rồi cho vào bát, ướp cá với nước mắm, hạt tiêu; rau thì là rửa sạch thái nhỏ; hành tỏi bóc vỏ. Cho cá đã ướp vào máy xay cùng với rau thì là, tỏi và hành khô. Xay nhuyễn cá rồi cho ra tô, dùng thìa quết qua vài lần. Viên cá thành từng viên tròn rồi ấn dẹt. Đun nóng dầu ăn trong chảo, cho chả cá vào chiên đến khi chín vàng đều hai mặt là được. (Khi viên cá, để tránh bị chả cá dính tay thì bạn có thể xoa một ít dầu ăn vào lòng bàn tay hoặc đơn giản hơn là làm ướt tay là được).\n\n<b>2. Thịt xào rau cần, cà rốt</b>\n\n<b>Nguyên liệu:</b>\n\n100g thịt nạc vai\n\n300g rau cần tây\n\n½ củ cà rốt\n\n3 tép tỏi băm nhỏ\n\nGia vị: Muối, hạt nêm, dầu ăn.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><a class=\"detail-img-lightbox\" title=\"\" href=\"http://afamilycdn.com/2019/4/16/thuc-don-2-15553891553821186247859-1555391529856235669279.png\" target=\"_blank\" rel=\"noopener noreferrer\" data-fancybox-group=\"img-lightbox\"><img id=\"img_aa93cbf0-6000-11e9-9b28-35dd58226773\" class=\"lightbox-content\" title=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 2.\" src=\"http://afamilycdn.com/2019/4/16/thuc-don-2-15553891553821186247859-1555391529856235669279.png\" alt=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 2.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/16/thuc-don-2-15553891553821186247859-1555391529856235669279.png\" /></a></div>\n</div>\n<b>Cách làm:</b>\n\nThịt rửa sạch thái lát mỏng sau đó ướp thịt với chút muối và hạt nêm, rau cần tây rửa sạch thái khúc, cà rốt bào vỏ rồi tỉa hoa, thái lát. Đun nóng 1 thìa canh dầu ăn trong chảo, đổ tỏi băm vào xào thơm rồi cho thịt vào xào săn lại ở lửa to. Tiếp đó đổ rau cần và cà rốt vào xào, nêm thêm chút gia vị cho vừa ăn. Xào cho đến khi các nguyên liệu chín tới thì tắt bếp.\n\n<b>3. Canh trứng nấu cà chua</b>\n\n<b>Nguyên liệu:</b>\n\n2 quả trứng\n\n3 quả cà chua\n\n1 cây hành lá\n\nDầu ăn, hạt nêm, muối\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><a class=\"detail-img-lightbox\" title=\"\" href=\"http://afamilycdn.com/2019/4/16/thuc-don-3-15553891553861966215641-15553915298601689157350.png\" target=\"_blank\" rel=\"noopener noreferrer\" data-fancybox-group=\"img-lightbox\"><img id=\"img_aacc1a00-6000-11e9-a569-c5139f5a8089\" class=\"lightbox-content\" title=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 3.\" src=\"http://afamilycdn.com/2019/4/16/thuc-don-3-15553891553861966215641-15553915298601689157350.png\" alt=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 3.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/16/thuc-don-3-15553891553861966215641-15553915298601689157350.png\" /></a></div>\n</div>\n<b>Cách làm:</b>\n\nĐập trứng vào bát, đánh tan; cà chua rửa sạch thái múi cau; hành lá thái nhỏ và để riêng phần gốc hành, lá hành. Đun nóng 1 thìa dầu ăn trong chảo, đổ phần gốc hành vào xào thơm sau đó thêm cà chua vào xào mềm cùng chút muối và hạt nêm. Tiếp đó đổ lượng nước vừa ăn vào đun sôi. Khi nối canh sôi thì đổ trứng vào khuấy theo một chiều. Đun cho trứng chín rồi tắt bếp, cho hành lá thái nhỏ vào là xong.\n\n<b>4. Tráng miệng: Cam ngọt</b>\n<div id=\"admzone480454\">\n<div id=\"ads_zone480454\">\n<div id=\"ads_zone480454_slot1\"></div>\n</div>\n</div>\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><a class=\"detail-img-lightbox\" title=\"\" href=\"http://afamilycdn.com/2019/4/16/thuc-don-4-15553891553891770741019-15553915298661751166924.png\" target=\"_blank\" rel=\"noopener noreferrer\" data-fancybox-group=\"img-lightbox\"><img id=\"img_ab0ad0b0-6000-11e9-9b28-35dd58226773\" class=\"lightbox-content\" title=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 4.\" src=\"http://afamilycdn.com/2019/4/16/thuc-don-4-15553891553891770741019-15553915298661751166924.png\" alt=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 4.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/16/thuc-don-4-15553891553891770741019-15553915298661751166924.png\" /></a></div>\n</div>\n<b>Giá thành thực đơn:</b>\n\nThịt cá phi lê (cá rô phi): 30.000 đồng\n\nThịt nạc: 10.000 đồng\n\nRau cần tây, cà rốt: 7.000 đồng\n\nTrứng: 6.000 đồng\n\nCam ngọt: 3.000 đồng\n\nHành tỏi, cà chua, rau thì là…: 5.000 đồng\n\n<b>Tổng số tiền bạn cần: 60.000 đồng</b>\n\n<b>Thành phẩm:</b>\n\n<a class=\"link-inline-content\" title=\"Thực đơn cơm tối\" href=\"http://afamily.vn/me-tho-chia-se-thuc-don-com-toi-ngon-dep-lung-linh-ma-di-cho-chi-het-chua-toi-80k-20190325160607004.chn\" target=\"_blank\" rel=\"noopener noreferrer\">Thực đơn cơm tối</a> với 3 món mặn và một món tráng miệng rất đơn giản, dễ làm mà ngon cơm. Thời gian để chế biến thực đơn này chỉ khoảng 30 phút thôi bạn nhé. Nếu bạn nghĩ món chả cá trong <a class=\"link-inline-content\" title=\"thực đơn\" href=\"http://afamily.vn/bo-sung-ngay-6-mon-rau-xanh-vao-thuc-don-com-toi-de-thanh-loc-co-the-sau-nhung-ngay-tet-an-co-trien-mien-20190210024322036.chn\" target=\"_blank\" rel=\"noopener noreferrer\">thực đơn</a> làm rất mất thời gian, nhưng kỳ thực món này cũng làm rất nhanh đó bạn. Trong trường hợp bận rộn quá thì món chả cá bạn có thể làm trước rồi chiên sơ qua, bỏ vào hộp kín rồi để ngăn đá tủ lạnh bảo quản. Khi ăn bạn chỉ việc rã đông rồi chiên lại là xong.\n<div class=\"VCSortableInPreviewMode\">\n<div><a class=\"detail-img-lightbox\" title=\"Chúc bạn có một bữa tối thật ngon miệng nhé!\" href=\"http://afamilycdn.com/2019/4/16/thuc-don-8-1555391433536102173690-15553915298691594156596.png\" target=\"_blank\" rel=\"noopener noreferrer\" data-fancybox-group=\"img-lightbox\"><img id=\"img_f883a1f0-6005-11e9-9162-e5cb5148bd2e\" class=\"lightbox-content\" title=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 5.\" src=\"http://afamilycdn.com/2019/4/16/thuc-don-8-1555391433536102173690-15553915298691594156596.png\" alt=\"Thực đơn sinh viên đi chợ chỉ hết 60k mà đủ 3 món mặn 1 món tráng miệng ngon lành - Ảnh 5.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/16/thuc-don-8-1555391433536102173690-15553915298691594156596.png\" /></a></div>\n<div class=\"PhotoCMS_Caption\">\n<p class=\"NLPlaceholderShow\" data-placeholder=\"[nhập chú thích]\">Chúc bạn có một bữa tối thật ngon miệng nhé!</p>\n\n</div>\n</div>","Thực đơn giá \"sinh viên\" đi chợ chỉ hết 60k mà đủ các món ngon lành","","publish","open","open","","thuc-don-gia-sinh-vien-di-cho-chi-het-60k-ma-du-cac-mon-ngon-lanh","","","2019-04-16 17:01:58","2019-04-16 10:01:58","","0","https://bizhostvn.com/w/nhahang/?p=485","0","post","","0"),
("486","1","2019-04-16 15:52:49","2019-04-16 08:52:49","","post1","","inherit","open","closed","","post1","","","2019-04-16 15:52:49","2019-04-16 08:52:49","","485","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/post1.jpg","0","attachment","image/jpeg","0"),
("503","1","2019-04-16 15:59:10","2019-04-16 08:59:10","<div class=\"afcbc-sapo\">Với công thức làm miến trộn này bạn sẽ có thêm gợi ý hay ho cho thực đơn giảm cân của mình.</div>\n<div id=\"ContentFirstFull\" class=\"news-content\">\n<div class=\"afcbc-body vceditor-content\">\n\n<b>Để làm miến trộn bạn cần chuẩn bị những nguyên liệu sau đây:</b>\n\n120g miến rong (chọn miến Hàn hoặc miến của Nhật sợi tròn sẽ dai hơn)\n\n30g rong biển khô\n\n1 quả dưa chuột\n\n1/3 củ cà rốt\n\n1/2 thìa cafe muối\n\n3 lát thịt nguội\n\n2 thìa cafe vừng trắng đã rang\n\n<i>Phần nước xốt:</i>\n\n3 thìa súp giấm gạo, 1,5 thìa nước tương, 1 thìa súp đường, 1 thìa súp dầu mè, 1 thìa súp dầu thực vật\n\nMuối\n\n1 chút hạt tiêu tươi nếu muốn\n<div id=\"admzone500409\">\n<div id=\"ads_zone500409\">\n<div id=\"ads_zone500409_slot1\"></div>\n</div>\n</div>\n<b>Cách làm</b>\n\nĐun sôi 1 nồi nước sau đó thả miến vào luộc chín. Khi miến mềm thì ngay lập tức trút ra rổ rồi thả vào tô nước đá để làm miến không bị nhũn. Rong biển rửa sạch rồi cho vào bát nước ấm ngâm cho nở, sau đó vắt kiệt nước.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_b2027fd0-5f88-11e9-b708-771d46e0f7b3\" title=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 1.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/15/1-15553376335701264011614.jpg\" alt=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 1.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/15/1-15553376335701264011614.jpg\" /></div>\n</div>\nDưa chuột rửa sạch, bổ đôi quả theo chiều dọc rồi thái vát. Cà rốt cắt khúc rồi thái sợi.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_b22d1240-5f88-11e9-9dee-455e7a18434b\" title=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 2.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/15/2-15553376335751510925096.png\" alt=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 2.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/15/2-15553376335751510925096.png\" /></div>\n</div>\nTrộn dưa chuột và cà rốt với 1/2 thìa cafe muối, ướp trong 5 phút sau đó rửa sạch muối dưới vòi nước rồi để ráo. Thịt nguội thái sợi. Miến vớt ra rổ cho ráo nước.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_b24729f0-5f88-11e9-aa9c-dbccfc311fd7\" title=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 3.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/15/3-1555337633582755915197.png\" alt=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 3.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/15/3-1555337633582755915197.png\" /></div>\n</div>\nCho tất cả nguyên liệu phần nước xốt vào tô, trộn đều. Sau đó cho miến, thịt nguội, rong biển, cà rốt, dưa chuột, vừng vào tô rồi rưới phần nước xốt lên, trộn đều và gắp ra đĩa.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_b2801440-5f88-11e9-ab6b-21bdf57d4377\" title=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 4.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/15/4-1555337633586405219959.png\" alt=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 4.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/15/4-1555337633586405219959.png\" /></div>\n</div>\nMón miến trộn này làm cực nhanh mà ăn thì ngon, rất phù hợp để bạn thưởng thức khi mùa hè đã tới.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_b2c47040-5f88-11e9-a61a-1bd483db5aad\" title=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 5.\" src=\"http://afamilycdn.com/2019/4/15/harusame-salad-ii-15553376335891170643540.jpg\" alt=\"Giảm cân không còn khó kể từ khi tôi có món miến trộn thần thánh ăn trưa mỗi ngày - Ảnh 5.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/15/harusame-salad-ii-15553376335891170643540.jpg\" /></div>\n</div>\n</div>\n</div>","Giảm cân không còn khó kể từ khi tôi có món miến trộn \"thần thánh\" ăn trưa mỗi ngày","","publish","open","open","","giam-can-khong-con-kho-ke-tu-khi-toi-co-mon-mien-tron-than-thanh-an-trua-moi-ngay","","","2019-04-16 17:01:53","2019-04-16 10:01:53","","0","https://bizhostvn.com/w/nhahang/?p=503","0","post","","0"),
("505","1","2019-04-16 15:59:57","2019-04-16 08:59:57","<div class=\"afcbc-sapo\">Một bát mì trộn với hương vị cân bằng rất dễ ăn hẳn sẽ là lựa chọn tuyệt vời cho bữa trưa văn phòng.</div>\n<div id=\"ContentFirstFull\" class=\"news-content\">\n<div class=\"afcbc-body vceditor-content\">\n\n<b>Bạn cần chuẩn bị những nguyên liệu sau cho món mì trộn:</b>\n\n1 cái ức gà, 2 vắt mì khô\n\n2 lát gừng, 1 cây hành lá - cắt khúc, ½ quả dưa chuột, 1,5 bát ăn cơm giá đỗ, ½ bát ăn cơm đậu phộng rang chín\n\n1 cây hành lá, thái khoanh xéo\n\nMột ít rau mùi tây\n\n<b>Gia vị phần nước xốt: </b>2 thìa cà phê đường, 1 thìa súp dầu mè - 4 tép tỏi, băm nhuyễn, 4 thìa súp giấm gạo, 3 thìa súp nước tương, 2 - 3 thìa cà phê dầu ớt (nếu bạn không ăn cay được có thể bỏ qua), một ít muối và tiêu.\n\n<b>Chế biến:</b>\n\nCho nước, hành lá và gừng vào nồi. Đun đến khi nước sôi thì cho gà vào nấu đến khi nước sôi trở lại. Tắt bếp, để gà trong nồi khoảng 20 đến 25 phút. Trong lúc chờ đợi thì thái sợi dưa leo, băm nhỏ mùi tây và giã nhỏ đậu phộng rang.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_89a9d300-496a-11e9-95aa-4b19cc7dcbb0\" title=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 1.\" src=\"http://afamilycdn.com/thumb_w/650/2019/3/18/0a-15529057534091421009982.jpg\" alt=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 1.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/3/18/0a-15529057534091421009982.jpg\" /></div>\n</div>\nTrộn đều các gia vị phần nước xốt trong bát nhỏ cho hòa quyện.\n\nLuộc chín vắt mì khô theo hướng dẫn ghi trên bao bì của nhãn hiệu mà bạn đang sử dụng. Mì chỉ nên luộc vừa chín tới, sau khi luộc nên xối mì qua nước lạnh để giữ độ dai.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_89d41750-496a-11e9-8df0-4556e6f8fb4c\" title=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 2.\" src=\"http://afamilycdn.com/thumb_w/650/2019/3/18/0b-15529057534111052226646.jpg\" alt=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 2.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/3/18/0b-15529057534111052226646.jpg\" /></div>\n</div>\nBây giờ chỉ cần kết hợp mì với dưa leo, giá đỗ, hành lá, mùi tây, nước xốt và đậu phộng rang là có ngay bát mì trộn ngon lành để thưởng thức rồi.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_8a3968d0-496a-11e9-94d7-39cbf763c067\" title=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 3.\" src=\"http://afamilycdn.com/thumb_w/650/2019/3/18/mi-tron-ga-xe-6-1552905753415121749128.jpg\" alt=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 3.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/3/18/mi-tron-ga-xe-6-1552905753415121749128.jpg\" /></div>\n</div>\n<b>Thành phẩm</b>\n\nVới <a class=\"link-inline-content\" title=\"công thức mì trộn\" href=\"http://afamily.vn/cuoi-tuan-doi-mon-cho-bua-sang-voi-mon-mi-tron-ai-an-cung-phai-tam-tac-khen-ngon-20181130071730027.chn\" target=\"_blank\" rel=\"noopener noreferrer\">công thức mì trộn</a> gà xé này, bữa trưa của bạn sẽ được giải quyết nhanh nhưng vẫn ngon và đủ chất. Bát mì trộn là sự kết hợp của các nguyên liệu tươi mát và phần nước xốt chua ngọt, xen một chút vị cay đảm bảo đã ăn là mê ngay.\n<div class=\"VCSortableInPreviewMode\">\n<div><img id=\"img_8a08e2f0-496a-11e9-9e56-1714e67010dd\" title=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 4.\" src=\"http://afamilycdn.com/2019/3/18/mi-tron-ga-xe-5-15529057534131449698293.jpg\" alt=\"Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké - Ảnh 4.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/3/18/mi-tron-ga-xe-5-15529057534131449698293.jpg\" /></div>\n<div class=\"PhotoCMS_Caption\">\n<p class=\"NLPlaceholderShow\" data-placeholder=\"[nhập chú thích]\">Chúc các bạn thành công và có món mì trộn thật ngon nhé!</p>\n\n</div>\n</div>\n</div>\n</div>","Tôi làm mì trộn mang đi ăn trưa, cả văn phòng nhao nhao đòi ăn ké","","publish","open","open","","toi-lam-mi-tron-mang-di-an-trua-ca-van-phong-nhao-nhao-doi-an-ke","","","2019-04-16 17:01:49","2019-04-16 10:01:49","","0","https://bizhostvn.com/w/nhahang/?p=505","0","post","","0"),
("506","1","2019-04-16 15:59:33","2019-04-16 08:59:33","","mi-tron-ga-xe-6-1552905753415121749128","","inherit","open","closed","","mi-tron-ga-xe-6-1552905753415121749128","","","2019-04-16 15:59:33","2019-04-16 08:59:33","","505","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/mi-tron-ga-xe-6-1552905753415121749128.jpg","0","attachment","image/jpeg","0"),
("507","1","2019-04-16 15:59:54","2019-04-16 08:59:54","","mi-tron-ga-xe-6-1552905753415121749128","","inherit","open","closed","","mi-tron-ga-xe-6-1552905753415121749128-2","","","2019-04-16 15:59:54","2019-04-16 08:59:54","","505","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/mi-tron-ga-xe-6-1552905753415121749128-1.jpg","0","attachment","image/jpeg","0"),
("509","1","2019-04-16 16:00:53","2019-04-16 09:00:53","<div class=\"afcbc-sapo\">Với bí quyết làm bánh flan này, bạn sẽ có món bánh flan ngon đẹp chưa từng thấy!</div>\n<div id=\"ContentFirstShort\" class=\"body-short news-content\">\n<div class=\"afcbc-body vceditor-content\">\n\nĐể làm bánh flan bạn cần làm 2 phần: caramel và bánh flan. Dưới đây là nguyên liệu và cách làm từng phần.\n\n<b>I. Phần caramel</b>\n\n<b>Nguyên liệu:</b>\n\n- 180g đường\n\n- 100-120ml nước\n\n- 1/2 quả chanh lọc lấy nước cốt, bỏ hạt\n\n<b>**Cách làm:</b>\n\nCho đường và nước vào nồi lắc nhẹ, đun sôi đường, để lửa vừa cho đường tự tan (không khuấy đảo tránh bị lại đường) rồi đun đến khi đường chuyển màu cánh gián thì cho nước cốt chanh vào, dùng thìa khuấy đều. Cho 2 thìa cà phê nước lọc vào cho đường khỏi bị keo lại (lúc này đường rất nóng nên cho nước cẩn thận kẻo bị bỏng) rồi tắt bếp.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_e3e58aa0-5c6e-11e9-9109-7ff2eb6418e1\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 1.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/0-1554996693971614412952.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 1.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/0-1554996693971614412952.jpg\" /></div>\n</div>\nĐể đường nguội bớt rồi múc đều ra các khuôn.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_2c639600-5c6f-11e9-8f39-bb87723ad34c\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 2.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/crm3-15549968155572061080404.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 2.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/crm3-15549968155572061080404.jpg\" /></div>\n</div>\n<b>II. Phần bánh flan</b>\n\n<b>**Nguyên liệu:</b>\n\n- 6 quả trứng gà to\n\n- 6 lòng đỏ trứng gà to\n\n- 120g đường\n<div id=\"admzone500409\">\n<div id=\"ads_zone500409\">\n<div id=\"ads_zone500409_slot1\"></div>\n</div>\n</div>\n- 350ml whipping cream\n\n- 800ml sữa tươi không đường\n\n- 6ml tinh chất vanilla\n\n<b>**Cách làm:</b>\n\n1. Cho sữa tươi và whipping cream vào nồi đun lửa vừa, khuấy đều tay đến khi hỗn hợp ấm nóng (nóng hơn nước tắm một chút, không được đun sôi) thì bắc xuống.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_a04914a0-5c6f-11e9-b708-771d46e0f7b3\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 3.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/1-15549969894651829560120-crop-1554997009600997515906.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 3.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/1-15549969894651829560120-crop-1554997009600997515906.jpg\" /></div>\n</div>\n2. Cho trứng gà, đường, vanilla vào bát dùng phới đánh trứng cầm tay đánh cho trứng tan thì từ từ đổ kem sữa vừa đun vào bát trứng, vừa đổ vừa khuấy đều.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_e1fb2a50-5c6f-11e9-8b73-033df4394fc3\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 4.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/0a-1554997120149232016403.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 4.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/0a-1554997120149232016403.jpg\" /></div>\n</div>\n3. Lọc hỗn hợp qua rây cho mịn rồi đổ vào các khuôn flan, đậy nắp khuôn lại.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_38f31ca0-5c70-11e9-84ab-d7aaeb259588\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 5.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/0b-1554997266336479055379.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 5.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/0b-1554997266336479055379.jpg\" /></div>\n</div>\n4. Làm chín flan, có thể hấp hoặc nướng\n\nCách hấp: Đun nước sôi cho flan vào hấp cách thủy lửa nhỏ nhất <b>(hấp lửa to flan sẽ bị rỗ) - đây chính là bí quyết làm bánh flan mịn đẹp</b>, lót khăn dưới vung nồi để tránh nước rớt xuống làm rỗ flan. Cứ 5 phút lại mở vung ra một lần để hơi nước thoát ra rồi đậy vung lại. Hấp khoảng 30-35 phút, thử flan bằng cách xiên tăm vào giữa cốc flan, rút tăm ra thấy không dính tăm là bánh chín.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_361a64b0-5c71-11e9-9caa-5381ada2910c\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 6.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/4c-15549976909542099769579.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 6.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/4c-15549976909542099769579.jpg\" /></div>\n</div>\nCách nướng: Làm nóng lò 150 độ trong 10-15 phút.\n\nLót khăn dưới khay nướng cách thủy, cho các hộp flan vào khay. Đổ nước sôi vào sao cho nước ngập 1/2 khay. Nướng nhiệt 150-160 độ C trong 30-40 phút. Xiên tăm vào hộp flan thấy không dính tăm là bánh chín.\n<div class=\"VCSortableInPreviewMode noCaption\">\n<div><img id=\"img_925b0810-5c71-11e9-b447-a33d39161639\" title=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 7.\" src=\"http://afamilycdn.com/thumb_w/650/2019/4/11/5-1554997845533731861706.jpg\" alt=\"Bí quyết làm bánh flan mịn căng mềm mượt đẹp như hoa hậu - Ảnh 7.\" width=\"\" height=\"\" data-original=\"http://afamilycdn.com/2019/4/11/5-1554997845533731861706.jpg\" /></div>\n</div>\n</div>\n</div>","Bí quyết làm bánh flan mịn căng mềm mượt đẹp “như hoa hậu”","","publish","open","open","","bi-quyet-lam-banh-flan-min-cang-mem-muot-dep-nhu-hoa-hau","","","2019-04-16 17:01:43","2019-04-16 10:01:43","","0","https://bizhostvn.com/w/nhahang/?p=509","0","post","","0"),
("510","1","2019-04-16 16:00:49","2019-04-16 09:00:49","","cach-lam-banh-flan-thom-ngon","","inherit","open","closed","","cach-lam-banh-flan-thom-ngon","","","2019-04-16 16:00:49","2019-04-16 09:00:49","","509","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/cach-lam-banh-flan-thom-ngon.jpg","0","attachment","image/jpeg","0"),
("516","1","2019-04-16 16:19:18","2019-04-16 09:19:18","[section label=\"Footer Section\" bg_color=\"rgb(0, 0, 0)\" dark=\"true\" class=\"footer-section\"]\n\n[row style=\"small\"]\n\n[col span=\"5\" span__sm=\"12\" align=\"left\"]\n\n<p><span style=\"color: #ffffff; font-size: 100%;\"><strong>Nhà hàng Lẩu Hơi Tỳ Hưu Trung Thành</strong></span></p>\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Nhà hàng chúng tôi tự hào là một trong những nhà hàng nổi tiếng tại Thành phố Hải Phòng, chuyên về các món ăn chuẩn hương vị thuần Việt.</span></p>\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Thực phẩm tươi sống là yêu cầu tất yếu của chúng tôi để chế bến cho khách hàng. Quý khách chắc chắn sẽ hài lòng về chất lượng sản phẩm và dịch vụ của chúng tôi.</span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" color=\"light\"]\n\n[ux_image id=\"7\" image_size=\"original\" width=\"60\"]\n\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" link=\"#dat-ban\"]\n\n[follow style=\"fill\" align=\"center\" facebook=\"#\" email=\"#\" phone=\"#\" pinterest=\"#\" googleplus=\"#\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n<p><strong><span style=\"color: #ffffff;\">Thông tin liên <span style=\"font-size: 110%;\">hệ</span></span></strong></p>\n<ul>\n<li><span style=\"font-size: 90%; color: #c0c0c0;\"><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 90%; color: #c0c0c0;\"><strong>Điện thoại:</strong> 0909009009 - 0909009009</span></li>\n<li><span style=\"font-size: 90%; color: #c0c0c0;\"><strong>Email:</strong> demo@gmail.com</span></li>\n<li><span style=\"font-size: 90%; color: #c0c0c0;\"><strong>Website:</strong> www.webdemo.com</span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-04-16 16:32:53","2019-04-16 09:32:53","","0","https://bizhostvn.com/w/nhahang/?post_type=blocks&#038;p=516","0","blocks","","0"),
("530","1","2019-04-16 16:24:53","2019-04-16 09:24:53","","bg-footer","","inherit","open","closed","","bg-footer","","","2019-04-16 16:24:53","2019-04-16 09:24:53","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg-footer.jpg","0","attachment","image/jpeg","0"),
("607","1","2019-04-16 17:17:10","2019-04-16 10:17:10","","bg","","inherit","open","closed","","bg-2","","","2019-04-16 17:17:10","2019-04-16 10:17:10","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg-1.jpg","0","attachment","image/jpeg","0"),
("638","1","2019-04-16 17:36:29","2019-04-16 10:36:29","","icon","","inherit","open","closed","","icon","","","2019-04-16 17:36:29","2019-04-16 10:36:29","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/icon.png","0","attachment","image/png","0"),
("639","1","2019-04-16 17:36:51","2019-04-16 10:36:51","","phone-icon (1)","","inherit","open","closed","","phone-icon-1","","","2019-04-16 17:36:51","2019-04-16 10:36:51","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/phone-icon-1.png","0","attachment","image/png","0"),
("643","1","2019-04-17 22:25:14","2019-04-17 15:25:14","","bg6","","inherit","open","closed","","bg6","","","2019-04-17 22:25:14","2019-04-17 15:25:14","","0","https://bizhostvn.com/w/nhahang/wp-content/uploads/2019/04/bg6.jpg","0","attachment","image/jpeg","0"),
("644","1","2019-04-17 22:25:26","2019-04-17 15:25:26","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" visibility=\"hide-for-small\"]\n\n[ux_banner height=\"33%\" bg=\"62\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInX\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Lẩu hơi Tỳ Hưu Trung Thành</h3>\n<p><span style=\"font-size: 95%;\">Đến với Nhà hàng Lẩu hơi Tỳ Hưu Trung Thành, quý khách sẽ được thưởng thức các món lẩu ngon nhất, được chế biến bởi các đầu bếp hàng đầu Việt Nam. Chúng tôi chắc chắn sẽ khiến bạn hài lòng!.</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"33%\" bg=\"63\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInY\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Ẩm thực Việt Nam</h3>\n<p><span style=\"font-size: 95%;\">Không gì tuyệt vời bằng thưởng thức ẩm thực Việt Nam cùng gia đình và người thân. Chúng tôi cung cấp các món lẩu chuẩn vị ẩm thực Việt Nam mang đến cảm giác quen thuộc nhưng cực kỳ đặc sắc cho bạn thưởng thức</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" visibility=\"show-for-small\"]\n\n[ux_banner height=\"76%\" height__sm=\"187%\" bg=\"607\" bg_size=\"original\" bg_overlay__sm=\"rgba(0, 0, 0, 0)\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInX\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Lẩu hơi Tỳ Hưu Trung Thành</h3>\n<p><span style=\"font-size: 115%;\">Đến với Nhà hàng Lẩu hơi Tỳ Hưu Trung Thành, quý khách sẽ được thưởng thức các món lẩu ngon nhất, được chế biến bởi các đầu bếp hàng đầu Việt Nam. Chúng tôi chắc chắn sẽ khiến bạn hài lòng!.</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"33%\" height__sm=\"187%\" bg=\"63\" bg_size=\"original\"]\n\n[text_box padding=\"17px 16px 16px 15px\" animate=\"flipInY\" position_x=\"50\" position_y=\"80\" bg=\"rgba(0, 0, 0, 0.7)\" class=\"text-box-banner\"]\n\n<h3>Ẩm thực Việt Nam</h3>\n<p><span style=\"font-size: 120%;\">Không gì tuyệt vời bằng thưởng thức ẩm thực Việt Nam cùng gia đình và người thân. Chúng tôi cung cấp các món lẩu chuẩn vị ẩm thực Việt Nam mang đến cảm giác quen thuộc nhưng cực kỳ đặc sắc cho bạn thưởng thức</span></p>\n[button text=\"Đặt bàn ngay\" letter_case=\"lowercase\" radius=\"99\" expand=\"0\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[section label=\"Thực đơn\" padding=\"51px\" class=\"thuc-don-section\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"157\" image_size=\"original\" width=\"21\"]\n\n[title style=\"center\" text=\"Thực đơn tại Nhà hàng Trung Thành\" tag_name=\"h2\" color=\"rgb(159, 0, 0)\"]\n\n<p style=\"text-align: center;\">Thực đơn hấp dẫn của nhà hàng có tới hơn 150 món ăn chuẩn vị Việt Nam sẵn sàng cho bạn lựa chọn</p>\n[tabgroup style=\"pills\" nav_size=\"large\" align=\"center\" class=\"tab-thuc-don\"]\n\n[tab title=\"Khai vị\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Món tự chọn\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Chiên, xào, om\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Đồ uống\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Lẩu các loại\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"12\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Các món đặt trước\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"6\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Thuốc lá\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n\n[/tabgroup]\n[ux_banner_grid class=\"banner-thuc-don\"]\n\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"251\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"6\" height=\"2-3\"]\n\n[ux_image id=\"261\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"253\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"263\" image_size=\"original\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/col]\n[col span__sm=\"12\" align=\"center\" visibility=\"show-for-small\"]\n\n[ux_image id=\"157\" image_size=\"original\" width=\"21\" width__sm=\"56\"]\n\n[title style=\"center\" text=\"Thực đơn tại Nhà hàng Trung Thành\" tag_name=\"h2\" color=\"rgb(159, 0, 0)\" size=\"138\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Thực đơn hấp dẫn của nhà hàng có tới hơn 150 món ăn chuẩn vị Việt Nam sẵn sàng cho bạn lựa chọn</span></p>\n[tabgroup style=\"pills\" nav_size=\"large\" align=\"center\" class=\"tab-thuc-don\"]\n\n[tab title=\"Khai vị\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Món tự chọn\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Chiên, xào, om\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"11\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Đồ uống\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Lẩu các loại\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"12\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Các món đặt trước\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"6\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n[tab title=\"Thuốc lá\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\" class=\"mon-an\"]\n\n\n[/tab]\n\n[/tabgroup]\n[ux_banner_grid class=\"banner-thuc-don\"]\n\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"251\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"6\" height=\"2-3\"]\n\n[ux_image id=\"261\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"253\" image_size=\"original\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"263\" image_size=\"original\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tại sao\" bg=\"362\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.78)\" dark=\"true\" padding=\"48px\" class=\"tai-sao-section\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"7\" image_size=\"original\" width=\"18\"]\n\n[title style=\"center\" text=\"Tại sao nên chọn Nhà hàng Lẩu hơi Trung Thành\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Thực đơn lẩu chuẩn vị Việt Nam có hơn 50 món do chính tay đầu bếp giàu kinh nghiệm lựa chọn, được dọn lên theo trình tự sup khai vị, món nướng, món măng, món nước, món canh, lẩu, chè và trái cây tráng miện để thực khách thưởng thức trọn vẹn tất cả cả các loại món mà không cảm thấy quá no, thay vào đó chỉ còn lại hương vị thơm ngon cùng chất dinh dưỡng đặc biệt trong từng món ăn sẽ làm cho thực khách nhớ mãi</span></p>\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"380\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Sản phẩm luôn luôn tươi sống</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"381\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Hỗ trợ đặt hàng Online dễ dàng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"383\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Sóng wifi mạnh phủ khắp nhà hàng </span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"382\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Có chỗ đậu xe Ô tô miễn phí</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"384\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Giao hàng tận nơi với các đơn Online</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[featured_box img=\"385\" img_width=\"80\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 100%;\">Có phòng lớn tổ chức hội nghị</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Món ăn hấp dẫn nhất\" bg=\"417\" bg_size=\"original\" bg_overlay=\"rgba(255, 255, 255, 0.7)\" padding=\"51px\" class=\"ban-chay\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Món ăn bán chạy nhất tháng 4/2019\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Chúng tôi gợi ý cho bạn một số món ăn đã trở thành thương hiệu của chúng tôi và có doanh thu bán chạy nhất tháng 4/2019</span></p>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" cat=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Thông tin liên hệ\" bg=\"436\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.22)\" dark=\"true\" class=\"thong-tin-lien-he\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"442\" img_width=\"50\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\"><strong>0909009009</strong></span></p>\n<p><span style=\"font-size: 95%;\">Hotline đặt hàng và tư vấn 24/7</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"443\" img_width=\"55\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 110%;\">demo@gmail.com</span></strong></p>\n<p><span style=\"font-size: 95%;\">Email nhận báo giá, yêu cầu xuất hóa đơn</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"444\" img_width=\"55\" pos=\"left\"]\n\n<p><strong><span style=\"font-size: 110%;\">145 Phượng Hoàng, Hải Phòng</span></strong></p>\n<p><span style=\"font-size: 95%;\">Địa chỉ Nhà hàng Lẩu Hơi Trung Thành</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đặt bàn - PC\" bg=\"643\" bg_size=\"original\" padding=\"45px\" class=\"dat-ban-section\" visibility=\"hide-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"455\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đặt bàn - Mobile\" padding=\"45px\" class=\"dat-ban-section\" visibility=\"show-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"455\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bài viết - hướng dẫn\" padding=\"50px\" class=\"bai-viet-huong-dan\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Bài viết mới\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Cùng đầu bếp của Nhà hàng chúng tôi tìm hiểu và học cách chế biến một số món ăn thông dụng nhé!</span></p>\n[blog_posts style=\"normal\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"13,2\" show_date=\"text\" excerpt=\"false\" excerpt_length=\"23\" image_height=\"58%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","24-revision-v1","","","2019-04-17 22:25:26","2019-04-17 15:25:26","","24","https://bizhostvn.com/w/nhahang/24-revision-v1/","0","revision","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("1","8","0"),
("26","3","0"),
("27","3","0"),
("28","3","0"),
("29","3","0"),
("30","3","0"),
("35","4","0"),
("36","4","0"),
("198","1","0"),
("198","8","0"),
("202","1","0"),
("202","8","0"),
("206","1","0"),
("206","8","0"),
("209","1","0"),
("209","8","0"),
("212","1","0"),
("212","8","0"),
("215","1","0"),
("215","8","0"),
("218","1","0"),
("218","8","0"),
("221","1","0"),
("221","8","0"),
("226","1","0"),
("226","8","0"),
("229","1","0"),
("229","8","0"),
("265","1","0"),
("265","11","0"),
("268","1","0"),
("268","11","0"),
("271","1","0"),
("271","11","0"),
("274","1","0"),
("274","11","0"),
("277","1","0"),
("277","11","0"),
("282","1","0"),
("282","12","0"),
("285","1","0"),
("285","12","0"),
("288","1","0"),
("288","12","0"),
("291","1","0"),
("291","12","0"),
("294","1","0"),
("294","12","0"),
("299","1","0"),
("299","6","0"),
("302","1","0"),
("302","6","0"),
("305","1","0"),
("305","6","0"),
("308","1","0"),
("308","6","0"),
("312","1","0"),
("312","9","0"),
("315","1","0"),
("315","9","0"),
("318","1","0"),
("318","9","0"),
("321","1","0"),
("321","9","0"),
("324","1","0"),
("324","9","0"),
("485","2","0"),
("485","13","0"),
("503","2","0"),
("503","13","0"),
("505","2","0"),
("505","13","0"),
("509","2","0"),
("509","13","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","30"),
("2","2","category","","0","4"),
("3","3","nav_menu","","0","5"),
("4","4","nav_menu","","0","2"),
("5","5","category","","1","0"),
("6","6","category","","1","4"),
("7","7","category","","1","0"),
("8","8","category","","1","11"),
("9","9","category","","1","5"),
("10","10","category","","1","0"),
("11","11","category","","1","5"),
("12","12","category","","1","5"),
("13","13","category","","0","4");




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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Thực đơn","thuc-don","0"),
("2","Tin tức","tin-tuc","0"),
("3","Main-menu","main-menu","0"),
("4","Topbar menu","topbar-menu","0"),
("5","Món khai vị","mon-khai-vi","0"),
("6","Món đặt trước","mon-dat-truoc","0"),
("7","Món tráng miệng","mon-trang-mieng","0"),
("8","Tự chọn theo đĩa","tu-chon-theo-dia","0"),
("9","Đồ uống","do-uong","0"),
("10","Thuốc lá","thuoc-la","0"),
("11","Các món xào, chiên, om","cac-mon-xao-chien-om","0"),
("12","Lẩu các loại","lau-cac-loai","0"),
("13","Hướng dẫn","huong-dan","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","ninhbinhweb.info"),
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
("14","1","dismissed_wp_pointers","wp496_privacy"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:4:{s:64:\"6ecb785bd338d19c401a0327f11cfca1bc3f39b2cebc758cc45ee67f2f29d141\";a:4:{s:10:\"expiration\";i:1558168676;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557995876;}s:64:\"d7522fe8c922f85bf565527ec4f0c99657a8da6abe3125735a0f6d83bbcfc3e1\";a:4:{s:10:\"expiration\";i:1558170314;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557997514;}s:64:\"d19f4c1de7300547f2bf9604b8834b8b95d09b4ab625121cf4ae854b6daee26f\";a:4:{s:10:\"expiration\";i:1558232664;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558059864;}s:64:\"e9a571bedd3d6397309c9a049a77135a2dbb540fcd1e08cc7932cc3c8ef05408\";a:4:{s:10:\"expiration\";i:1558232933;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1558060133;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","647"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1558059866"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","3"),
("25","1","wpcf7_hide_welcome_panel_on","a:1:{i:0;s:3:\"5.1\";}");




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
("1","admin","$P$BLzFSXbD7yarBS52n9cC9hdZOAJUPR0","admin","demo@gmail.com","","2019-04-15 03:36:16","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("1","https://Webdemo.com/","144","0","external"),
("2","http://Webdemo.com/","144","0","external"),
("8","/","694","0","internal"),
("9","https://Webdemo.com/","27","0","external"),
("10","http://Webdemo.com/","27","0","external"),
("577","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("578","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("579","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("580","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("581","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("582","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("583","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("584","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("585","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("586","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("587","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("588","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("589","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("590","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("591","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("592","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("593","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("594","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("595","/xuat-khau-lao-dong/","29","0","internal"),
("596","/xuat-khau-lao-dong/","29","0","internal"),
("597","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("598","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("599","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("600","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("601","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("602","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("603","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("604","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("605","/xuat-khau-lao-dong/","29","0","internal"),
("606","/xuat-khau-lao-dong/don-hang-dai-bac/","29","0","internal"),
("607","/xuat-khau-lao-dong/don-hang-dai-trung/","29","0","internal"),
("608","/xuat-khau-lao-dong/don-hang-dai-nam/","29","0","internal"),
("609","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("610","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("611","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("612","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("613","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("614","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("615","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("616","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("617","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("618","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("619","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("620","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("621","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("622","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("623","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("624","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("625","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("626","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("627","/huong-dan/","29","0","internal"),
("628","/huong-dan/hoi-dap/","29","0","internal"),
("629","/huong-dan/kinh-nghiem/","29","0","internal"),
("630","/huong-dan/van-ban-phap-luat/","29","0","internal"),
("631","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("632","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("633","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("634","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("635","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("636","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("637","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("638","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("639","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("640","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("641","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("642","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("643","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("644","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("645","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("646","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("647","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("648","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("649","/dai-loan/","29","0","internal"),
("650","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("651","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("652","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("653","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("654","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("655","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("656","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("657","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("658","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("659","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("660","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("661","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("662","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("663","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("664","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("665","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("666","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("667","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("668","/tin-tuc/","29","0","internal"),
("669","/tin-tuc/kinh-nghiem-song/","29","0","internal"),
("670","/tin-tuc/tin-xuat-khau-lao-dong/","29","0","internal"),
("671","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal");
INSERT INTO bz_yoast_seo_links VALUES
("672","https://tppone.com/demo/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("673","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("674","https://tppone.com/demo/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("675","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("676","https://tppone.com/demo/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("677","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("678","https://tppone.com/demo/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("679","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("680","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("681","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("682","https://tppone.com/demo/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("683","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("684","https://tppone.com/demo/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("685","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("686","https://tppone.com/demo/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("687","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("688","https://tppone.com/demo/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("691","https://Webdemo.com/","147","0","external"),
("692","http://Webdemo.com/","147","0","external");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("1","0","0"),
("2","0","0"),
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("10","0","0"),
("11","0","0"),
("12","0","0"),
("15","0","0"),
("16","0","0"),
("17","0","0"),
("18","0","0"),
("19","0","0"),
("20","0","0"),
("21","0","0"),
("22","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","0"),
("28","0","0"),
("29","112","0"),
("30","0","0"),
("31","0","0"),
("32","0","0"),
("33","0","0"),
("42","0","0"),
("43","0","0"),
("44","0","0"),
("45","0","0"),
("46","0","0"),
("47","0","0"),
("48","0","0"),
("49","0","0"),
("50","0","0"),
("51","0","0"),
("52","0","0"),
("53","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("58","0","0"),
("59","0","0"),
("60","0","0"),
("61","0","0"),
("62","0","0"),
("63","0","0"),
("64","0","0"),
("65","0","0"),
("66","0","0"),
("67","0","0"),
("68","0","0"),
("69","0","0"),
("70","0","0"),
("74","0","0"),
("75","0","0"),
("76","0","0"),
("85","0","0"),
("86","0","0"),
("87","0","0"),
("88","0","0"),
("89","0","0"),
("90","0","0"),
("91","0","0"),
("92","0","0"),
("93","0","0"),
("94","0","0"),
("95","0","0"),
("96","0","0"),
("97","0","0"),
("98","0","0"),
("99","0","0"),
("100","0","0"),
("101","0","0"),
("102","0","0"),
("103","0","0"),
("104","0","0"),
("105","0","0"),
("106","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("112","0","0"),
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("119","0","0"),
("120","0","0"),
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("126","0","0"),
("127","0","0"),
("128","0","0"),
("129","0","0"),
("130","0","0"),
("131","0","0"),
("132","0","0"),
("133","0","0"),
("134","0","0"),
("135","0","10"),
("137","0","0"),
("138","0","10"),
("140","0","0"),
("141","0","10"),
("143","0","0"),
("144","0","10"),
("146","0","0"),
("147","0","12"),
("149","0","0"),
("150","0","12"),
("152","0","0"),
("153","0","12"),
("155","0","0"),
("156","0","12"),
("158","0","0"),
("159","0","0"),
("160","0","0"),
("161","0","0"),
("162","0","0"),
("163","0","0"),
("164","0","0"),
("165","0","0"),
("166","0","0"),
("167","0","0"),
("168","0","0"),
("169","0","0"),
("170","0","0"),
("171","0","0"),
("172","0","0"),
("173","0","0"),
("174","0","0"),
("175","0","0"),
("176","0","0"),
("177","0","0"),
("178","0","0"),
("179","0","0"),
("180","0","0"),
("181","0","0"),
("182","0","0"),
("183","0","0"),
("184","0","0"),
("185","0","0"),
("186","0","0"),
("187","0","0"),
("188","0","0"),
("189","0","0"),
("190","0","0"),
("191","0","0"),
("192","0","0"),
("193","0","0"),
("194","0","0"),
("195","0","0"),
("196","0","0"),
("197","0","0"),
("198","0","0"),
("199","0","0"),
("200","0","0"),
("201","0","0"),
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("206","0","0"),
("207","0","0"),
("208","0","10"),
("210","0","0"),
("211","0","0"),
("212","0","0"),
("213","0","0"),
("214","0","0"),
("215","0","0"),
("216","0","0"),
("217","0","0"),
("218","0","0"),
("219","0","0"),
("220","0","0"),
("221","0","0"),
("222","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("227","0","0"),
("228","0","0"),
("229","0","0"),
("230","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0"),
("234","0","0"),
("235","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("236","0","0"),
("237","0","0"),
("238","0","0"),
("239","0","0"),
("240","0","0"),
("241","0","0"),
("242","0","0"),
("243","0","0"),
("244","0","0"),
("245","0","0"),
("246","0","0"),
("247","0","0"),
("248","0","0"),
("249","0","0"),
("250","0","0"),
("251","0","0"),
("252","0","0"),
("253","0","0"),
("254","0","0"),
("255","0","0"),
("256","0","0"),
("257","0","0"),
("258","0","0"),
("259","0","0"),
("260","0","0"),
("261","0","0"),
("262","0","0"),
("263","0","0"),
("264","0","0"),
("265","0","0"),
("266","0","0"),
("267","0","0"),
("268","0","0"),
("269","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("273","0","0"),
("274","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
("279","0","0"),
("280","0","0"),
("281","0","0"),
("282","0","0"),
("283","0","0"),
("284","0","0"),
("285","0","0"),
("286","0","0"),
("287","0","0"),
("288","0","0"),
("289","0","0"),
("290","0","0"),
("291","0","0"),
("292","0","0"),
("293","0","0"),
("294","0","0"),
("295","0","0"),
("296","0","0"),
("297","0","0"),
("298","0","0"),
("299","0","0"),
("300","0","0"),
("301","0","0"),
("302","0","0"),
("303","0","0"),
("304","0","0"),
("305","0","0"),
("306","0","0"),
("307","0","0"),
("308","0","0"),
("309","0","0"),
("310","0","0"),
("311","0","0"),
("312","0","0"),
("313","0","0"),
("314","0","0"),
("315","0","0"),
("316","0","0"),
("317","0","0"),
("318","0","0"),
("319","0","0"),
("320","0","0"),
("321","0","0"),
("322","0","0"),
("323","0","0"),
("324","0","0"),
("326","0","0"),
("327","0","0"),
("328","0","0"),
("329","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("333","0","0"),
("334","0","0"),
("338","0","0"),
("339","0","0"),
("340","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("341","0","0"),
("342","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("349","0","0"),
("350","0","0"),
("351","0","0"),
("352","0","0"),
("353","0","0"),
("354","0","0"),
("355","0","0"),
("356","0","0"),
("357","0","0"),
("358","0","0"),
("359","0","0"),
("360","0","0"),
("361","0","0"),
("362","0","0"),
("364","0","0"),
("365","0","0"),
("366","0","0"),
("367","0","0"),
("369","0","0"),
("370","0","0"),
("371","0","0"),
("372","0","0"),
("373","0","0"),
("374","0","0"),
("375","0","0"),
("376","0","0"),
("377","0","0"),
("378","0","0"),
("379","0","0"),
("380","0","0"),
("381","0","0"),
("382","0","0"),
("385","0","0"),
("386","0","0"),
("387","0","0"),
("388","0","0"),
("389","0","0"),
("390","0","0"),
("391","0","0"),
("392","0","0"),
("393","0","0"),
("394","0","0"),
("395","0","0"),
("396","0","0"),
("397","0","0"),
("398","0","0"),
("399","0","0"),
("400","0","0"),
("401","0","0"),
("402","0","0"),
("403","0","0"),
("404","0","0"),
("405","0","0"),
("406","0","0"),
("407","0","0"),
("408","0","0"),
("409","0","0"),
("410","0","0"),
("411","0","0"),
("412","0","0"),
("413","0","0"),
("414","0","0"),
("415","0","0"),
("416","0","0"),
("417","0","0"),
("418","0","0"),
("419","0","0"),
("420","0","0"),
("421","0","0"),
("422","0","0"),
("423","0","0"),
("424","0","0"),
("425","0","0"),
("426","0","0"),
("427","0","0"),
("428","0","0"),
("429","0","0"),
("430","0","0"),
("431","0","0"),
("432","0","0"),
("433","0","0"),
("434","0","0"),
("435","0","0"),
("436","0","0"),
("437","0","0"),
("438","0","0"),
("439","0","0"),
("440","0","0"),
("441","0","0"),
("442","0","0"),
("443","0","0"),
("444","0","0"),
("445","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("450","0","0"),
("451","0","0"),
("452","0","0"),
("453","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
("460","0","0"),
("461","0","0"),
("462","0","0"),
("463","0","0"),
("464","0","0"),
("465","0","0"),
("466","0","0"),
("467","0","0"),
("468","0","0"),
("469","0","0"),
("470","0","0"),
("471","0","0"),
("472","0","0"),
("473","0","0"),
("474","0","0"),
("475","0","0"),
("476","0","0"),
("477","0","0"),
("478","0","0"),
("479","0","0"),
("480","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("485","0","0"),
("486","0","0"),
("487","0","0"),
("488","0","0"),
("489","0","0"),
("490","0","0"),
("491","0","0"),
("492","0","0"),
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("498","0","0"),
("499","0","0"),
("500","0","0"),
("501","0","0"),
("502","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("506","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","0","0"),
("512","0","0"),
("513","0","0"),
("514","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("519","0","0"),
("521","0","0"),
("522","0","0"),
("523","0","0"),
("548","0","0"),
("549","0","0"),
("557","0","0"),
("558","0","0"),
("559","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("563","0","0"),
("564","0","0"),
("567","0","0"),
("568","0","0"),
("569","0","0"),
("570","0","0"),
("571","0","0"),
("572","0","0"),
("573","0","0"),
("574","0","0"),
("575","0","0"),
("576","0","0"),
("577","0","0"),
("578","0","0"),
("579","0","0"),
("580","0","0"),
("581","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("582","0","0"),
("583","0","0"),
("584","0","0"),
("585","0","0"),
("586","0","0"),
("587","0","0"),
("588","0","0"),
("589","0","0"),
("590","0","0"),
("591","0","0"),
("592","0","0"),
("593","0","0"),
("594","0","0"),
("595","0","0"),
("596","0","0"),
("597","0","0"),
("598","0","0"),
("599","0","0"),
("600","0","0"),
("601","0","0"),
("602","0","0"),
("603","0","0"),
("604","0","0"),
("605","0","0"),
("606","0","0"),
("607","0","0"),
("608","0","0"),
("609","0","0"),
("610","0","0"),
("611","0","0"),
("612","0","0"),
("613","0","0"),
("614","0","0"),
("615","0","0"),
("616","0","0"),
("617","0","0"),
("618","0","0"),
("619","0","0"),
("620","0","0"),
("621","0","0"),
("622","0","0"),
("623","0","0"),
("624","0","0"),
("625","0","0"),
("626","0","0"),
("627","0","0"),
("628","0","0"),
("629","0","0"),
("630","0","0"),
("631","0","0"),
("632","0","0"),
("633","0","0"),
("634","0","0"),
("635","0","0"),
("636","0","0"),
("637","0","0"),
("638","0","0"),
("639","0","0"),
("640","0","0"),
("641","0","0"),
("642","0","0"),
("643","0","0"),
("644","0","0"),
("645","0","0"),
("646","0","0"),
("647","0","0"),
("648","0","0"),
("649","0","0"),
("650","0","0"),
("651","0","0"),
("652","0","0"),
("653","0","0"),
("654","0","0"),
("655","0","0"),
("656","0","0"),
("657","0","0"),
("658","0","0"),
("659","0","0"),
("660","0","0"),
("661","0","0"),
("662","0","0"),
("663","0","0"),
("664","0","0"),
("665","0","0"),
("666","0","0"),
("667","0","0"),
("668","0","0"),
("669","0","0"),
("671","0","0"),
("672","0","0"),
("673","0","0"),
("674","0","0"),
("675","0","0"),
("676","0","0"),
("677","0","0"),
("678","0","0"),
("679","0","0"),
("680","0","0"),
("681","0","0"),
("682","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("683","0","0"),
("684","0","0"),
("685","0","0"),
("686","0","0"),
("687","0","0"),
("688","0","0"),
("689","0","0"),
("690","0","0"),
("691","0","0"),
("692","0","0"),
("693","0","0"),
("694","1","0"),
("695","0","0"),
("696","0","0"),
("697","0","0"),
("699","0","0"),
("700","0","0"),
("701","0","0"),
("702","0","0"),
("703","0","0"),
("704","0","0"),
("705","0","0"),
("706","0","0"),
("707","0","0"),
("708","0","0"),
("709","0","0"),
("710","0","0"),
("711","0","0"),
("712","0","0"),
("713","0","0"),
("714","0","0"),
("715","0","0"),
("716","0","0"),
("717","0","0"),
("718","0","0"),
("719","0","0"),
("720","0","0"),
("721","0","0"),
("722","0","0"),
("723","0","0"),
("724","0","0"),
("725","0","0"),
("726","0","0"),
("727","0","0"),
("728","0","0"),
("729","0","0"),
("730","0","0"),
("731","0","0"),
("732","0","0"),
("733","0","0"),
("734","0","0"),
("735","0","0"),
("736","0","0"),
("737","0","0"),
("738","0","0"),
("739","0","0"),
("740","0","0"),
("741","0","0"),
("742","0","0"),
("743","0","0"),
("744","0","0"),
("745","0","0"),
("746","0","0"),
("747","0","0"),
("748","0","0"),
("749","0","0"),
("750","0","0"),
("751","0","0"),
("752","0","0"),
("753","0","0"),
("754","0","0"),
("755","0","0"),
("756","0","0"),
("757","0","0"),
("758","0","0"),
("759","0","0"),
("760","0","0"),
("761","0","0"),
("762","0","0"),
("763","0","0"),
("764","0","0"),
("765","0","0"),
("766","0","0"),
("767","0","0"),
("768","0","0"),
("769","0","0"),
("770","0","0"),
("771","0","0"),
("772","0","0"),
("773","0","0"),
("774","0","0"),
("775","0","0"),
("776","0","0"),
("777","0","0"),
("778","0","0"),
("779","0","0"),
("780","0","0"),
("804","0","0"),
("805","0","0"),
("806","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("807","0","0"),
("809","0","0"),
("810","0","0"),
("811","0","0"),
("812","0","0"),
("813","0","0"),
("814","0","0"),
("821","0","0"),
("822","0","0"),
("825","0","0"),
("826","0","0"),
("827","0","0"),
("828","0","0"),
("829","0","0"),
("830","0","0"),
("831","0","0"),
("832","0","0"),
("833","0","0"),
("835","0","0"),
("836","0","0"),
("837","0","0"),
("838","0","0"),
("839","0","0"),
("840","0","0"),
("841","0","0"),
("844","0","0"),
("845","0","0"),
("850","0","0"),
("851","0","0"),
("852","0","0"),
("853","0","0"),
("854","0","0"),
("856","0","0"),
("857","0","0"),
("858","0","0"),
("859","0","0"),
("863","0","0"),
("864","0","0"),
("865","0","0"),
("866","0","0"),
("867","0","0"),
("868","0","0"),
("869","0","0"),
("870","0","0"),
("871","0","0"),
("872","0","0"),
("873","0","0"),
("874","0","0"),
("875","0","0"),
("876","0","0"),
("877","0","0"),
("878","0","0"),
("879","0","0"),
("880","0","0"),
("881","0","0"),
("882","0","0"),
("883","0","0"),
("884","0","0"),
("885","0","0"),
("886","0","0"),
("887","0","0"),
("888","0","0"),
("889","0","0"),
("890","0","0"),
("891","0","0"),
("892","0","0"),
("897","0","0"),
("898","0","0"),
("899","0","0"),
("901","0","0"),
("902","0","0"),
("903","0","0"),
("904","0","0"),
("905","0","0"),
("906","0","0"),
("907","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;