SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w27`
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
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2018-11-28 07:03:25","2018-11-28 07:03:25","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/nuocgiat\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1543418668,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960670,\"initial_activation_timestamp\":1543418679,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557026030,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




CREATE TABLE `bz_duplicator_pro_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=1326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/nuocgiat","yes"),
("2","home","https://bizhostvn.com/w/nuocgiat","yes"),
("3","blogname","nuocgiat","yes"),
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
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:173:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("40","template","flatsome","yes"),
("41","stylesheet","newsuns","yes"),
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
("79","widget_text","a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:315:\"<div class=\"cam-ket-box\">\n<div class=\"row1\">Các sản phẩm Newsuns cam kết không dùng chất bảo quản, không chứa hóa chất độc hại.</div>\n<div class=\"info\">\n<ul>\n 	<li>Hotline: 0909000000</li>\n 	<li>Email: demoweb@gmail.com</li>\n 	<li>Website: www.Webdemo.com</li>\n</ul>\n</div>\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:315:\"<div class=\"cam-ket-box\">\n<div class=\"row1\">Các sản phẩm Newsuns cam kết không dùng chất bảo quản, không chứa hóa chất độc hại.</div>\n<div class=\"info\">\n<ul>\n 	<li>Hotline: 0909000000</li>\n 	<li>Email: demoweb@gmail.com</li>\n 	<li>Website: www.Webdemo.com</li>\n</ul>\n</div>\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:0:{}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:8:\"search-2\";i:1;s:13:\"media_image-4\";i:2;s:23:\"flatsome_recent_posts-3\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:4:{i:0;s:13:\"media_image-3\";i:1;s:6:\"text-3\";i:2;s:22:\"woocommerce_products-2\";i:3;s:23:\"flatsome_recent_posts-2\";}s:15:\"product-sidebar\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:6:\"text-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:4:{i:2;a:15:{s:13:\"attachment_id\";i:173;s:3:\"url\";s:89:\"https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2018/11/logo-newsuns-01-1-300x275.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:400;s:6:\"height\";i:366;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:173;s:3:\"url\";s:89:\"https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2018/11/logo-newsuns-01-1-300x275.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:400;s:6:\"height\";i:366;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:173;s:3:\"url\";s:89:\"https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2018/11/logo-newsuns-01-1-300x275.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:400;s:6:\"height\";i:366;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:15:{i:1558023790;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558026205;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558027368;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558033405;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558036712;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558058312;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558058322;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558069112;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558076624;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558078630;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558082824;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558106172;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("141","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557028165;s:30:\"db-prefix-change/db_prefix.php\";i:1557026711;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557026034;}","yes"),
("143","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543388631;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("144","current_theme","Newsuns","yes"),
("145","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 28 Nov 2018 07:03:51 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543388658;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("146","theme_switched","","yes"),
("147","widget_flatsome_recent_posts","a:3:{i:2;a:4:{s:5:\"title\";s:23:\"Bài viết - tin tức\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}i:3;a:4:{s:5:\"title\";s:30:\"Bài viết mới cập nhật\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("148","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("150","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("151","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("152","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("153","flatsome_wup_buyer","trannguyen886","yes"),
("154","allowedthemes","a:1:{s:7:\"newsuns\";b:1;}","no"),
("155","fl_has_child_theme","newsuns","yes"),
("157","theme_mods_newsuns","a:149:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:4:\"cart\";i:1;s:7:\"nav-top\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:2:{i:0;s:8:\"button-2\";i:1;s:8:\"button-1\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:3:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 28 Nov 2018 07:04:20 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:8070:\".header-nav input[type=\'search\']{height: 45px;\n    box-shadow: 0px 0px 0px grey;\n    border-top-left-radius: 3px;\n    border-bottom-left-radius: 3px;}\n.header-search-form-wrapper .button{    height: 45px;\n    width: 45px;\n    border-top-right-radius: 3px;\n    border-bottom-right-radius: 3px;}.nav-small.nav>li.html {\n    font-size: 13px;\n    color: grey;\n}\n.header-nav .button{margin-left:10px}\n.header-nav .button span {\n    display: inline-block;\n    line-height: 39px;\n    text-transform: none;\n    font-weight: normal;\n    font-size: 15px;\n}.header-nav.nav > li > a{    font-size: 16px;}.header-nav.nav > li{margin:0}\n.header-nav.nav > li a{padding-left:15px; padding-right:15px}\n.header-nav.nav > li > a:hover, .header-nav.nav > li.active > a, .header-nav.nav > li > a.current, .header-nav.nav > li.active > a{    background: #097f3a;\n    color: white !important;\n    line-height: 25px;}\n.slider-section .cot4 .col-inner{background: white;\n    padding: 10px;\n}.section-title-normal span{color: rgb(255, 255, 255) !important;\n    background: #14a751;\n    padding: 3px 12px;\n    font-size: 17px;}.section-title-container {\n    margin-bottom: 0;\n}\n.slider-section .cot4 .post-item .col-inner{padding:0}\n.single-product .badge-container{margin:10px 0}\n.single-product .badge-container .badge-inner{border-radius:99%}\n.slider-section .cot4 .post-item{padding-bottom:0}\n.slider-section .cot4 .post-item .box-text{padding-left:10px; padding-right:0; padding-bottom:5px}\n.slider-section .cot4 .post-item .box-blog-post .is-divider, .single-product .is-divider, .widget .is-divider{display:none}.section-title-normal {\n    border-bottom: 2px solid #14a751;\n}.section-title-normal span:after{content: \"\";\n    display: table;\n    clear: both;\n    border: 17px solid #097f3a;\n    position: absolute;\n    top: 0px;\n    left: 25.5%;\n    border-right-color: rgba(0, 0, 0, 0);\n    border-top-color: rgba(0, 0, 0, 0);}\n.slider-section .col{padding-bottom:0px}\n.slider-section .cot4 .post-item .post-title{font-size:15px}\n.slider-section .cot4 .post-item .post-title:hover{color:#14a751}\n.tieu-chi .icon-box .icon-box-text h3{color:#14a751; font-size:19px}\n\n.gioi-thieu .cot3 img{border-top-left-radius:30px;}\n.tieu-chi .col{padding-bottom:0}\n.tieu-chi .col .col-inner{ border: 1px dashed #78c043; padding:10px}\n.gioi-thieu .button{font-weight:normal; font-size:15px}\n.section-title a {\n    display: block;\n    padding-left: 15px;\n    margin-left: auto;\n    font-size: 14px;\n    font-weight: normal;\n    color: gray;\n}\n.gioi-thieu .col{padding-bottom:0}\n.cam-ket-box {\n    padding: 15px;\n    background: url(/wp-content/uploads/2018/11/bg.jpg);\n   \n    border-bottom-right-radius: 30px;\n}\n.cam-ket-box .row1{color: #007931;\n    font-weight: 600;\n    margin-bottom: 10px;\n    font-size: 17px; line-height:25px}\n.cam-ket-box ul li{margin-bottom: 5px;\n    font-size: 16px;\n    list-style: square;}\n.gioi-thieu .icon-box .icon-box-text p, .gioi-thieu .icon-box .icon-box-text h3{margin-bottom:8px}\n.san-pham .section-title-normal span:after{left: 17.5%;}\n.san-pham .product-small.box{    background: white;\n    padding: 10px;\n    border-radius: 4px;}\n.san-pham .badge-container{margin:10px}\n.san-pham .badge-container .badge-inner{border-radius:99%; font-weight:normal; font-size:15px}\n.san-pham .product-small .box-text{text-align:center}\n.san-pham .product-small .box-text{padding-bottom:10px}\n.san-pham .product-small .product-title{    font-size: 16px;\n    margin-bottom: 10px;}\n.san-pham .product-small .price ins span{font-size: 20px;\n    color: #d81a91;font-weight:500}\n.san-pham .product-small .add-to-cart-button a{font-size: 14px;\n    border-radius: 3px;\n    background: #65ad2f;\n    text-transform: none;\n    font-weight: normal;}\n.san-pham .product-small.box:hover, .single-product .content-row:hover{box-shadow: 2px 2px 14px #dedede;}span.widget-title {display:block; padding-bottom:10px;\n    font-size: 21px;\n    font-weight: 20px;\n    letter-spacing: 0;\n    font-weight: bold;\n    text-transform: none;\n}\n.tin-tuc .col{padding-bottom:0}\n\n.footer-section .col{padding-bottom:0}\n.footer-secondary{padding:0}.demo_store {\n    padding: 5px;\n    margin: 0;\n    text-align: center;\n    background-color: #65ad2f;\n    color: #FFF;\n    font-size: 15px;\n}\na.devvn_buy_now_style, .devvn-popup-title, .popup-customer-info-group .devvn-order-btn, a.devvn_buy_now_style:hover, a.devvn_buy_now_style:focus{background: #14a751;\n    background: -webkit-gradient(linear,0% 0%,0% 100%,from(#14a751),to(#65ad2f));\n    background: -webkit-linear-gradient(top,#65ad2f,#14a751);}\n.breadcrumbs a {\n    color: rgba(102,102,102,0.7);\n    font-weight: normal;\n    font-size: 15px;\n	text-transform: none;}\n.shop-container .product-main{background: #f7f7f7;}\n.single-product .page-title-inner {\n	padding-top: 0;}\n.single-product .content-row{margin-top:5px; background:white; border-radius:4px}\n.single-product #product-sidebar{padding-left:0px}\n.single-product .product-info{border-right:0}\n.single-product .product-main .product-title{    font-size: 23px;\n    font-weight: normal;\n    color: #2b2b2b;}\n.single-product .product-main .price del span{color:gray; font-size:16px}\n.single-product .product-main .price ins span{color: #f100a5}\n.single-product .product-short-description {background: #f7f7f7;\n    padding: 10px;\n    font-size: 15px;\n    margin-bottom: 15px;}\n.single-product .product-short-description ul, .single-product .cart{margin-bottom:0}\n.single-product .product-short-description ul li{margin-bottom:5px}\n.single-product .widget ul{margin-left:20px}\n.single-product #product-sidebar, .single-product .product-info{padding-top:20px}\n.single-product .product-info, .single-product #product-sidebar{padding-bottom:0}\n.product-footer .woocommerce-tabs .product-tabs {font-size:19px}\n.product-footer .woocommerce-tabs .product-tabs li{margin-right:0; margin:0}\n.product-footer .woocommerce-tabs .product-tabs li a{padding-left: 15px;\n    padding-right: 15px;\n    background: #f7f7f7;\n    color: grat;}\n.product-footer .woocommerce-tabs .product-tabs li.active a{background:#14a751; color:white}\n.product-footer .woocommerce-tabs{border-bottom:2px solid gray}\n.single-product .product-section-title{margin: 0;\n    letter-spacing: 0;\n	color: #14a751;border-top:0}.product-footer .woocommerce-tabs{border-bottom:0}\n.related {\n    border-top: 0px solid #ececec;\n}\n.single-product .related .product-small .product-title, .archive .product-small .product-title{margin-bottom:10px}\n.single-product .related .product-small .price ins span, .archive .product-small .price  ins span{font-size:18px; color:#f100a5; font-weight:normal}\n.single-product .related .product-small .add-to-cart-button a, .archive .product-small .add-to-cart-button a{border-radius: 3px;\n    text-transform: none;\n    font-weight: normal;\n	font-size: 14px;}.recent-blog-posts a{font-size:15px}.category-page-row {\n    padding-top: 20px;\n}\n.page-title-inner {\n  \n    padding-top: 10px;\n   \n    font-size: 15px;\n}\n\n.widget_products, .flatsome_recent_posts{background: #ffffff;\n    padding: 10px;\n    border: 1px solid #f7f7f7;}\n.product_list_widget li a{font-size: 15px;\n    color: #272727;}\n.product_list_widget li ins span{color:#f81370}\n.product_list_widget li del span{font-size:14px; color:gray}\n.archive .product-small .product-title{font-size:16px; margin-bottom:15px}\n.archive .product-small .price ins span{font-size:20px; color:#e20688}\n.archive .product-small .badge{margin:10px}\n.archive .product-small .badge-inner{border-radius:99%; font-weight:normal; font-size:15px}\n.widget .cam-ket-box{border-bottom-right-radius:0}\n.blog-single .entry-content{padding-top:0}\n.blog-single .entry-header-text-top{padding-bottom:0}\n.blog-single .post-sidebar{padding-left:0}\n.blog-archive .page-title {\n    position: relative;\n    text-align: left;\n    letter-spacing: 0;\n    text-transform: none;\n    font-size: 20px;\n}\n.blog-archive .large-9 .badge {display:none}\nbody{word-wrap: break-word;}\n.page-right-sidebar .large-9{border-right:0}\n.page-right-sidebar .large-3{padding-left:0}\n.san-pham .large-12{padding-bottom:0}\";s:22:\"html_custom_css_tablet\";s:338:\".section-title-normal span:after, .slider-section .cot4{display:none}\n.slider-section .cot8{flex-basis:100%; max-width:100%}\n.tieu-chi .icon-box .icon-box-img {width:40px !important}\n.gioi-thieu .icon-box .icon-box-text h3{font-size:15px; line-height:20px}\n.cam-ket-box{font-size:13px}\n\n.tin-tuc .post-item{flex-basis:50%; max-width:50%}\n\";s:22:\"html_custom_css_mobile\";s:778:\".slider-section .cot4 .post-item, .tin-tuc .post-item, .blog-archive .post-item{flex-basis:50%; max-width:50%}\n.tieu-chi .icon-box h3{font-size:15px !important;}\n.tieu-chi .icon-box p, .gioi-thieu p, #footer{font-size:14px !important}\n.gioi-thieu .medium-9{padding-top:20px}.section-title-normal span:after{display:none}\n.san-pham .product-small .product-title, .san-pham .product-small .price ins span{font-size:13px}\n.san-pham .product-small .add-to-cart-button a{font-size:10px}\n.header-search-form-wrapper input[type=\'search\']{height:45px}\n.blog-single .post-sidebar, .blog-archive .post-sidebar{display:none}\n.blog-archive .large-12{padding-bottom:10px}\n.blog-archive .post-item .box-text .from_the_blog_excerpt {font-size:12px}\n.blog-archive .post-item{padding-bottom:5px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:24:\"Nhập tên sản phẩm\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:9:\"site_logo\";s:72:\"https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2019/05/nuocgiat.png\";s:10:\"logo_width\";s:3:\"258\";s:12:\"logo_padding\";s:1:\"1\";s:13:\"header_height\";s:3:\"101\";s:12:\"header_color\";s:5:\"light\";s:17:\"box_shadow_header\";s:1:\"0\";s:14:\"header_divider\";b:0;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.7.1\";s:9:\"header_bg\";s:7:\"#ffffff\";s:13:\"nav_uppercase\";b:0;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:14:\"type_nav_color\";s:7:\"#ffffff\";s:20:\"type_nav_color_hover\";s:7:\"#a4c945\";s:25:\"header_height_transparent\";s:3:\"265\";s:11:\"topbar_show\";b:1;s:20:\"header_bottom_height\";s:2:\"45\";s:15:\"nav_position_bg\";s:7:\"#14a751\";s:17:\"nav_height_bottom\";s:2:\"16\";s:19:\"header_search_style\";s:8:\"dropdown\";s:24:\"header_search_form_style\";s:0:\"\";s:19:\"header_search_width\";s:2:\"90\";s:15:\"header_button_1\";s:19:\"Hotline: 0909000000\";s:20:\"header_button_1_link\";s:15:\"tel: 0909000000\";s:15:\"header_button_2\";s:21:\"Tư vấn: 0963854874\";s:20:\"header_button_2_link\";s:15:\"tel: 0909000000\";s:13:\"color_primary\";s:7:\"#14a751\";s:15:\"color_secondary\";s:7:\"#65ad2f\";s:11:\"color_texts\";s:7:\"#303030\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#14a751\";s:27:\"header_button_1_depth_hover\";s:1:\"0\";s:21:\"header_button_2_style\";s:0:\"\";s:17:\"header_top_height\";s:2:\"35\";s:9:\"topbar_bg\";s:7:\"#f7f7f7\";s:12:\"topbar_color\";s:5:\"light\";s:11:\"topbar_left\";s:57:\"Nước rửa chén Newsuns - An toàn cho Cộng Đồng\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:21:\"header_button_1_depth\";s:1:\"0\";s:10:\"site_width\";s:4:\"1200\";s:15:\"nav_size_bottom\";s:6:\"xlarge\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:20:\"header_height_sticky\";s:2:\"52\";s:17:\"nav_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";b:0;s:19:\"sticky_logo_padding\";s:1:\"0\";s:28:\"woocommerce_store_notice_top\";b:0;s:27:\"category_force_image_height\";b:1;s:18:\"category_row_count\";s:1:\"4\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:9:\"cat_style\";s:6:\"normal\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:17:\"add_to_cart_style\";s:4:\"flat\";s:21:\"category_image_height\";s:3:\"100\";s:10:\"grid_style\";s:5:\"grid2\";s:13:\"product_hover\";s:4:\"zoom\";s:19:\"blog_excerpt_suffix\";s:3:\"...\";s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_align\";s:0:\"\";s:19:\"footer_bottom_color\";s:7:\"#14a751\";s:16:\"footer_left_text\";s:187:\"Copyright [ux_current_year] ©. Thiết kế và duy trì bởi <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:13:\"payment_icons\";a:0:{}s:17:\"footer_right_text\";s:44:\"Hotline kỹ thuật: MR. Thiện 0909000000\";s:14:\"product_header\";s:3:\"top\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"5\";s:15:\"product_display\";s:11:\"tabs_normal\";s:18:\"product_tabs_align\";s:6:\"center\";s:16:\"related_products\";s:4:\"grid\";s:23:\"related_products_pr_row\";s:1:\"5\";s:20:\"max_related_products\";s:2:\"10\";s:16:\"category_sidebar\";s:4:\"none\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:23:\"blog_single_header_meta\";b:0;s:26:\"blog_single_featured_image\";b:0;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:14:\"mobile_overlay\";s:6:\"center\";s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#13a753\";}","yes"),
("159","envato_setup_complete","1543388665","yes"),
("164","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("167","category_children","a:0:{}","yes"),
("175","new_admin_email","webdemo@gmail.com","yes"),
("189","woocommerce_store_address","Tầng 2, Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Tập thể Đại học Sư phạm Nghệ thuật Trung Ương","yes"),
("190","woocommerce_store_address_2","","yes"),
("191","woocommerce_store_city","Hà Nội","yes"),
("192","woocommerce_default_country","VN","yes"),
("193","woocommerce_store_postcode","100000","yes"),
("194","woocommerce_allowed_countries","all","yes"),
("195","woocommerce_all_except_countries","a:0:{}","yes"),
("196","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("197","woocommerce_ship_to_countries","","yes"),
("198","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("199","woocommerce_default_customer_address","geolocation","yes"),
("200","woocommerce_calc_taxes","no","yes"),
("201","woocommerce_enable_coupons","yes","yes"),
("202","woocommerce_calc_discounts_sequentially","no","no"),
("203","woocommerce_currency","VND","yes"),
("204","woocommerce_currency_pos","right","yes"),
("205","woocommerce_price_thousand_sep",".","yes"),
("206","woocommerce_price_decimal_sep",".","yes"),
("207","woocommerce_price_num_decimals","0","yes"),
("208","woocommerce_shop_page_id","277","yes"),
("209","woocommerce_cart_redirect_after_add","no","yes"),
("210","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("211","woocommerce_placeholder_image","536","yes"),
("212","woocommerce_weight_unit","kg","yes"),
("213","woocommerce_dimension_unit","cm","yes"),
("214","woocommerce_enable_reviews","yes","yes"),
("215","woocommerce_review_rating_verification_label","yes","no"),
("216","woocommerce_review_rating_verification_required","no","no"),
("217","woocommerce_enable_review_rating","yes","yes"),
("218","woocommerce_review_rating_required","yes","no"),
("219","woocommerce_manage_stock","yes","yes"),
("220","woocommerce_hold_stock_minutes","60","no"),
("221","woocommerce_notify_low_stock","yes","no"),
("222","woocommerce_notify_no_stock","yes","no"),
("223","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("224","woocommerce_notify_low_stock_amount","2","no"),
("225","woocommerce_notify_no_stock_amount","0","yes"),
("226","woocommerce_hide_out_of_stock_items","no","yes"),
("227","woocommerce_stock_format","","yes"),
("228","woocommerce_file_download_method","force","no"),
("229","woocommerce_downloads_require_login","no","no"),
("230","woocommerce_downloads_grant_access_after_payment","yes","no"),
("231","woocommerce_prices_include_tax","no","yes"),
("232","woocommerce_tax_based_on","shipping","yes"),
("233","woocommerce_shipping_tax_class","inherit","yes"),
("234","woocommerce_tax_round_at_subtotal","no","yes"),
("235","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("236","woocommerce_tax_display_shop","excl","yes"),
("237","woocommerce_tax_display_cart","excl","yes"),
("238","woocommerce_price_display_suffix","","yes"),
("239","woocommerce_tax_total_display","itemized","no"),
("240","woocommerce_enable_shipping_calc","yes","no"),
("241","woocommerce_shipping_cost_requires_address","no","yes"),
("242","woocommerce_ship_to_destination","billing","no"),
("243","woocommerce_shipping_debug_mode","no","yes"),
("244","woocommerce_enable_guest_checkout","yes","no"),
("245","woocommerce_enable_checkout_login_reminder","no","no"),
("246","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("247","woocommerce_enable_myaccount_registration","no","no"),
("248","woocommerce_registration_generate_username","yes","no"),
("249","woocommerce_registration_generate_password","yes","no"),
("250","woocommerce_erasure_request_removes_order_data","no","no"),
("251","woocommerce_erasure_request_removes_download_data","no","no"),
("252","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("253","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("254","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("255","woocommerce_trash_pending_orders","","no"),
("256","woocommerce_trash_failed_orders","","no"),
("257","woocommerce_trash_cancelled_orders","","no"),
("258","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no");
INSERT INTO bz_options VALUES
("259","woocommerce_email_from_name","Mẫu website nước rửa chén &#8211; Thiết kế web Webdemo","no"),
("260","woocommerce_email_from_address","webdemo@gmail.com","no"),
("261","woocommerce_email_header_image","","no"),
("262","woocommerce_email_footer_text","{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("263","woocommerce_email_base_color","#96588a","no"),
("264","woocommerce_email_background_color","#f7f7f7","no"),
("265","woocommerce_email_body_background_color","#ffffff","no"),
("266","woocommerce_email_text_color","#3c3c3c","no"),
("267","woocommerce_cart_page_id","278","yes"),
("268","woocommerce_checkout_page_id","279","yes"),
("269","woocommerce_myaccount_page_id","280","yes"),
("270","woocommerce_terms_page_id","","no"),
("271","woocommerce_force_ssl_checkout","no","yes"),
("272","woocommerce_unforce_ssl_checkout","no","yes"),
("273","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("274","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("275","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("276","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("277","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("278","woocommerce_myaccount_orders_endpoint","orders","yes"),
("279","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("280","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("281","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("282","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("283","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("284","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("285","woocommerce_logout_endpoint","customer-logout","yes"),
("286","woocommerce_api_enabled","no","yes"),
("287","woocommerce_single_image_width","600","yes"),
("288","woocommerce_thumbnail_image_width","300","yes"),
("289","woocommerce_checkout_highlight_required_fields","yes","yes"),
("290","woocommerce_demo_store","yes","yes"),
("291","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:8:\"san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("292","current_theme_supports_woocommerce","yes","yes"),
("293","woocommerce_queue_flush_rewrite_rules","no","yes"),
("296","default_product_cat","18","yes"),
("300","woocommerce_db_version","3.5.1","yes"),
("301","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("303","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("304","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("306","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:18:\"Sản phẩm mới\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("311","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("312","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("313","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("315","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("320","woocommerce_meta_box_errors","a:0:{}","yes"),
("328","woocommerce_product_type","physical","yes"),
("329","woocommerce_sell_in_person","1","yes"),
("330","woocommerce_allow_tracking","no","yes"),
("331","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("332","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("333","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("357","woocommerce_demo_store_notice","Đây là mẫu web của webdemo.com, không phải website bán hàng chính thức!","yes"),
("358","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("519","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:8:\"Mua ngay\";s:12:\"button_text2\";s:51:\"Gọi điện xác nhận và giao hàng tận nơi\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"Đặt mua %s\";s:10:\"popup_mess\";s:143:\"Bạn vui lòng nhập đúng số điện thoại để chúng tôi sẽ gọi xác nhận đơn hàng trước khi giao hàng. Xin cảm ơn!\";s:12:\"popup_sucess\";s:644:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">Đặt hàng thành công!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">Mã đơn hàng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">DevVN SHOP sẽ liên hệ với bạn trong 12h tới. Cám ơn bạn đã cho chúng tôi cơ hội được phục vụ.\n<strong>Hotline:</strong> 0909000000</p>\n<p class=\"clearfix\"><strong>Ghi chú: </strong>Đơn hàng chỉ có hiệu lực trong vòng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"Đặt hàng thất bại. Vui lòng đặt hàng lại. Xin cảm ơn!\";s:17:\"out_of_stock_mess\";s:12:\"Hết hàng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("600","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1543435839;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("610","product_cat_children","a:1:{i:18;a:4:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:22;}}","yes"),
("797","duplicator_pro_package_active","{\"Created\":\"2018-11-28 15:27:51\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.32\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20181128_mauwebsitenuocruachenthiet\",\"Hash\":\"d54b963c5383eab69238_20181128152751\",\"NameHash\":\"20181128_mauwebsitenuocruachenthiet_d54b963c5383eab69238_20181128152751\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/nuocgiat\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20181128_mauwebsitenuocruachenthiet_d54b963c5383eab69238_20181128152751_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\",\"Size\":93980620,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/nuocgiat\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web47\",\"tablesBaseCount\":30,\"tablesFinalCount\":30,\"tablesRowCount\":1161,\"tablesSizeOnDisk\":4718592,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("807","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("827","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960702;}","no"),
("838","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("839","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("959","db_upgraded","","yes"),
("974","can_compress_scripts","0","no"),
("982","dbprefix_old_dbprefix","ng_","yes"),
("983","dbprefix_new","bz_","yes"),
("1020","_transient_timeout_wc_low_stock_count","1559620601","no"),
("1021","_transient_wc_low_stock_count","0","no"),
("1022","_transient_timeout_wc_outofstock_count","1559620601","no"),
("1023","_transient_wc_outofstock_count","0","no"),
("1054","_transient_timeout_wc_term_counts","1559632474","no"),
("1055","_transient_wc_term_counts","a:4:{i:19;s:1:\"4\";i:21;s:1:\"3\";i:20;s:1:\"4\";i:22;s:1:\"4\";}","no"),
("1107","recovery_keys","a:0:{}","yes"),
("1186","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1189","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1190","woocommerce_show_marketplace_suggestions","yes","no"),
("1191","woocommerce_version","3.6.2","yes"),
("1193","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("1221","_site_transient_timeout_browser_53ad83e7ffe60968becca0ade7b723b5","1558078045","no"),
("1222","_site_transient_browser_53ad83e7ffe60968becca0ade7b723b5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1269","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558318301","no"),
("1270","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1271","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558318302","no"),
("1272","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("1277","_transient_product_query-transient-version","1557713502","yes"),
("1317","_site_transient_timeout_theme_roots","1557997269","no"),
("1318","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:7:\"newsuns\";s:7:\"/themes\";}","no"),
("1319","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557995479;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1320","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557995480;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:7:\"newsuns\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1321","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557995482;s:7:\"checked\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("16","11","_wp_attached_file","2018/11/cropped-Baner-hau-01-copy.png"),
("17","11","_wp_attachment_context","site-icon"),
("18","11","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:37:\"2018/11/cropped-Baner-hau-01-copy.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-Baner-hau-01-copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-Baner-hau-01-copy-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:37:\"cropped-Baner-hau-01-copy-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:37:\"cropped-Baner-hau-01-copy-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:37:\"cropped-Baner-hau-01-copy-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:35:\"cropped-Baner-hau-01-copy-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("72","37","_wp_attached_file","2018/11/logo-ninhbinhweb.jpg"),
("73","37","_wp_attachment_metadata","a:5:{s:5:\"width\";i:356;s:6:\"height\";i:97;s:4:\"file\";s:28:\"2018/11/logo-ninhbinhweb.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"logo-ninhbinhweb-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-ninhbinhweb-100x97.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-ninhbinhweb-150x97.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"logo-ninhbinhweb-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("98","50","_edit_last","1"),
("99","50","_footer","normal"),
("100","50","_wp_page_template","page-right-sidebar.php"),
("101","50","_edit_lock","1543410727:1"),
("102","52","_edit_last","1"),
("103","52","_footer","normal"),
("104","52","_wp_page_template","default"),
("105","52","_edit_lock","1543410443:1"),
("106","54","_menu_item_type","post_type"),
("107","54","_menu_item_menu_item_parent","0"),
("108","54","_menu_item_object_id","52"),
("109","54","_menu_item_object","page"),
("110","54","_menu_item_target",""),
("111","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("112","54","_menu_item_xfn",""),
("113","54","_menu_item_url",""),
("115","55","_menu_item_type","post_type"),
("116","55","_menu_item_menu_item_parent","0"),
("117","55","_menu_item_object_id","50"),
("118","55","_menu_item_object","page"),
("119","55","_menu_item_target",""),
("120","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("121","55","_menu_item_xfn",""),
("122","55","_menu_item_url",""),
("124","2","_edit_lock","1543390539:1"),
("125","2","_edit_last","1"),
("126","2","_footer","normal"),
("127","57","_edit_last","1"),
("128","57","_footer","normal"),
("129","57","_wp_page_template","default"),
("130","57","_edit_lock","1543390548:1"),
("131","59","_edit_last","1"),
("132","59","_footer","normal"),
("133","59","_wp_page_template","default"),
("134","59","_edit_lock","1543390553:1"),
("135","61","_edit_last","1"),
("136","61","_footer","normal"),
("137","61","_wp_page_template","default"),
("138","61","_edit_lock","1543390564:1"),
("139","63","_menu_item_type","post_type"),
("140","63","_menu_item_menu_item_parent","0"),
("141","63","_menu_item_object_id","61"),
("142","63","_menu_item_object","page"),
("143","63","_menu_item_target",""),
("144","63","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("145","63","_menu_item_xfn",""),
("146","63","_menu_item_url",""),
("148","64","_menu_item_type","post_type"),
("149","64","_menu_item_menu_item_parent","0"),
("150","64","_menu_item_object_id","59"),
("151","64","_menu_item_object","page"),
("152","64","_menu_item_target",""),
("153","64","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("154","64","_menu_item_xfn",""),
("155","64","_menu_item_url",""),
("156","64","_menu_item_orphaned","1543390719"),
("166","66","_menu_item_type","post_type"),
("167","66","_menu_item_menu_item_parent","0"),
("168","66","_menu_item_object_id","52"),
("169","66","_menu_item_object","page"),
("170","66","_menu_item_target",""),
("171","66","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("172","66","_menu_item_xfn",""),
("173","66","_menu_item_url",""),
("175","67","_menu_item_type","post_type"),
("176","67","_menu_item_menu_item_parent","0"),
("177","67","_menu_item_object_id","50"),
("178","67","_menu_item_object","page"),
("179","67","_menu_item_target",""),
("180","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("181","67","_menu_item_xfn",""),
("182","67","_menu_item_url",""),
("184","68","_menu_item_type","post_type"),
("185","68","_menu_item_menu_item_parent","0"),
("186","68","_menu_item_object_id","2"),
("187","68","_menu_item_object","page"),
("188","68","_menu_item_target",""),
("189","68","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("190","68","_menu_item_xfn",""),
("191","68","_menu_item_url",""),
("201","73","_edit_last","1"),
("202","73","_footer","normal"),
("203","73","_wp_page_template","default"),
("204","73","_edit_lock","1543390749:1"),
("205","75","_edit_last","1"),
("206","75","_footer","normal"),
("207","75","_wp_page_template","default"),
("208","75","_edit_lock","1543390753:1"),
("209","77","_edit_last","1"),
("210","77","_footer","normal"),
("211","77","_wp_page_template","default"),
("212","77","_edit_lock","1543390760:1"),
("264","2","_thumbnail_id","");
INSERT INTO bz_postmeta VALUES
("265","98","_wp_attached_file","2018/11/slider1.jpg"),
("266","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:900;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2018/11/slider1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider1-600x260.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x333.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("267","100","_wp_attached_file","2018/11/slider2.jpg"),
("268","100","_wp_attachment_metadata","a:5:{s:5:\"width\";i:900;s:6:\"height\";i:408;s:4:\"file\";s:19:\"2018/11/slider2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x272.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("269","106","_wp_attached_file","2018/11/khongngaiomo0_1386585133.jpg"),
("270","106","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:36:\"2018/11/khongngaiomo0_1386585133.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"khongngaiomo0_1386585133-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"khongngaiomo0_1386585133-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"khongngaiomo0_1386585133-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"khongngaiomo0_1386585133-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("271","105","_edit_last","1"),
("272","105","_thumbnail_id","106"),
("275","105","_edit_lock","1543391803:1"),
("276","108","_edit_last","1"),
("277","108","_edit_lock","1543391865:1"),
("278","109","_wp_attached_file","2018/11/1.jpg"),
("279","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:570;s:6:\"height\";i:400;s:4:\"file\";s:13:\"2018/11/1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("280","108","_thumbnail_id","109"),
("283","111","_edit_last","1"),
("284","111","_edit_lock","1543392005:1"),
("285","112","_wp_attached_file","2018/11/mu-mua-he-cho-be-yeu-3603.jpg"),
("286","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:396;s:6:\"height\";i:276;s:4:\"file\";s:37:\"2018/11/mu-mua-he-cho-be-yeu-3603.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"mu-mua-he-cho-be-yeu-3603-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"mu-mua-he-cho-be-yeu-3603-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"mu-mua-he-cho-be-yeu-3603-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"mu-mua-he-cho-be-yeu-3603-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("287","111","_thumbnail_id","112"),
("306","1","_edit_lock","1543392447:1"),
("309","129","_wp_attached_file","2018/11/3.jpg"),
("310","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:281;s:4:\"file\";s:13:\"2018/11/3.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-300x281.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("311","1","_edit_last","1"),
("312","1","_thumbnail_id","129"),
("338","148","_wp_attached_file","2018/11/icon1-01.png"),
("339","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:699;s:6:\"height\";i:698;s:4:\"file\";s:20:\"2018/11/icon1-01.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"icon1-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"icon1-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"icon1-01-600x599.png\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"icon1-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"icon1-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("340","149","_wp_attached_file","2018/11/icon2-01.png"),
("341","149","_wp_attachment_metadata","a:5:{s:5:\"width\";i:697;s:6:\"height\";i:670;s:4:\"file\";s:20:\"2018/11/icon2-01.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"icon2-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"icon2-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"icon2-01-600x577.png\";s:5:\"width\";i:600;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"icon2-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"icon2-01-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("342","150","_wp_attached_file","2018/11/icon3-01.png"),
("343","150","_wp_attachment_metadata","a:5:{s:5:\"width\";i:690;s:6:\"height\";i:706;s:4:\"file\";s:20:\"2018/11/icon3-01.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"icon3-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"icon3-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"icon3-01-600x614.png\";s:5:\"width\";i:600;s:6:\"height\";i:614;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"icon3-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"icon3-01-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("357","169","_wp_attached_file","2018/11/logo-newsuns-01.jpg"),
("358","169","_wp_attachment_metadata","a:5:{s:5:\"width\";i:271;s:6:\"height\";i:248;s:4:\"file\";s:27:\"2018/11/logo-newsuns-01.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-newsuns-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-newsuns-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("359","173","_wp_attached_file","2018/11/logo-newsuns-01-1.jpg"),
("360","173","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:366;s:4:\"file\";s:29:\"2018/11/logo-newsuns-01-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"logo-newsuns-01-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-newsuns-01-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-newsuns-01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"logo-newsuns-01-1-300x275.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:275;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("386","198","_menu_item_type","taxonomy"),
("387","198","_menu_item_menu_item_parent","0"),
("388","198","_menu_item_object_id","4"),
("389","198","_menu_item_object","category"),
("390","198","_menu_item_target",""),
("391","198","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("392","198","_menu_item_xfn",""),
("393","198","_menu_item_url",""),
("409","228","_wp_attached_file","2018/11/nuoc-rua-chen-2.jpg"),
("410","228","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:276;s:4:\"file\";s:27:\"2018/11/nuoc-rua-chen-2.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"nuoc-rua-chen-2-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"nuoc-rua-chen-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"nuoc-rua-chen-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"nuoc-rua-chen-2-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("411","231","_wp_attached_file","2018/11/nuoc-lau-san-newsuns.jpg"),
("412","231","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:276;s:4:\"file\";s:32:\"2018/11/nuoc-lau-san-newsuns.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"nuoc-lau-san-newsuns-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"nuoc-lau-san-newsuns-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"nuoc-lau-san-newsuns-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"nuoc-lau-san-newsuns-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","233","_wp_attached_file","2018/11/nuoc-giat-newsuns.jpg"),
("414","233","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:276;s:4:\"file\";s:29:\"2018/11/nuoc-giat-newsuns.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"nuoc-giat-newsuns-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"nuoc-giat-newsuns-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"nuoc-giat-newsuns-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"nuoc-giat-newsuns-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("419","244","_wp_attached_file","2018/11/bg.jpg"),
("420","244","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:276;s:4:\"file\";s:14:\"2018/11/bg.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"bg-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","244","_edit_lock","1543398543:1"),
("443","257","_edit_last","1"),
("444","257","_footer","normal"),
("445","257","_wp_page_template","default"),
("446","257","_edit_lock","1543398665:1"),
("459","281","_wc_review_count","0"),
("460","281","_wc_rating_count","a:0:{}"),
("461","281","_wc_average_rating","0"),
("462","281","_edit_last","1"),
("463","281","_edit_lock","1543410986:1"),
("464","282","_wp_attached_file","2018/11/product1.jpg"),
("465","282","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:276;s:4:\"file\";s:20:\"2018/11/product1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product1-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product1-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"product1-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("466","281","_thumbnail_id","282"),
("467","281","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("468","281","_sku",""),
("469","281","_regular_price","496000"),
("470","281","_sale_price","368000"),
("471","281","_sale_price_dates_from",""),
("472","281","_sale_price_dates_to",""),
("473","281","total_sales","0"),
("474","281","_tax_status","taxable"),
("475","281","_tax_class",""),
("476","281","_manage_stock","no"),
("477","281","_backorders","no"),
("478","281","_low_stock_amount",""),
("479","281","_sold_individually","no"),
("480","281","_weight",""),
("481","281","_length",""),
("482","281","_width",""),
("483","281","_height",""),
("484","281","_upsell_ids","a:0:{}"),
("485","281","_crosssell_ids","a:0:{}"),
("486","281","_purchase_note",""),
("487","281","_default_attributes","a:0:{}"),
("488","281","_virtual","no"),
("489","281","_downloadable","no"),
("490","281","_product_image_gallery",""),
("491","281","_download_limit","-1"),
("492","281","_download_expiry","-1"),
("493","281","_stock",""),
("494","281","_stock_status","instock"),
("495","281","_product_version","3.5.1"),
("496","281","_price","368000"),
("531","302","_wc_review_count","0"),
("532","302","_wc_rating_count","a:0:{}"),
("533","302","_wc_average_rating","0"),
("534","302","_edit_last","1"),
("535","302","_edit_lock","1543400130:1"),
("538","304","_wp_attached_file","2018/11/DHgYaP_simg_d0daf0_800x1200_max.jpg"),
("539","304","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:43:\"2018/11/DHgYaP_simg_d0daf0_800x1200_max.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"DHgYaP_simg_d0daf0_800x1200_max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("540","302","_thumbnail_id","304"),
("541","302","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("542","302","_sku",""),
("543","302","_regular_price","311000"),
("544","302","_sale_price","248800"),
("545","302","_sale_price_dates_from",""),
("546","302","_sale_price_dates_to",""),
("547","302","total_sales","0"),
("548","302","_tax_status","taxable"),
("549","302","_tax_class",""),
("550","302","_manage_stock","no"),
("551","302","_backorders","no"),
("552","302","_low_stock_amount",""),
("553","302","_sold_individually","no"),
("554","302","_weight",""),
("555","302","_length",""),
("556","302","_width",""),
("557","302","_height",""),
("558","302","_upsell_ids","a:0:{}"),
("559","302","_crosssell_ids","a:0:{}"),
("560","302","_purchase_note",""),
("561","302","_default_attributes","a:0:{}"),
("562","302","_virtual","no"),
("563","302","_downloadable","no"),
("564","302","_product_image_gallery",""),
("565","302","_download_limit","-1"),
("566","302","_download_expiry","-1"),
("567","302","_stock",""),
("568","302","_stock_status","instock"),
("569","302","_product_version","3.5.1"),
("570","302","_price","248800"),
("571","305","_wc_review_count","0"),
("572","305","_wc_rating_count","a:0:{}"),
("573","305","_wc_average_rating","0"),
("574","305","_edit_last","1"),
("575","305","_edit_lock","1543400246:1"),
("576","306","_wp_attached_file","2018/11/product3.jpg"),
("577","306","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:20:\"2018/11/product3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product3-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("578","305","_thumbnail_id","306"),
("579","305","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("580","305","_sku",""),
("581","305","_regular_price","431000"),
("582","305","_sale_price","344000"),
("583","305","_sale_price_dates_from",""),
("584","305","_sale_price_dates_to",""),
("585","305","total_sales","0"),
("586","305","_tax_status","taxable"),
("587","305","_tax_class",""),
("588","305","_manage_stock","no"),
("589","305","_backorders","no"),
("590","305","_low_stock_amount",""),
("591","305","_sold_individually","no"),
("592","305","_weight",""),
("593","305","_length",""),
("594","305","_width",""),
("595","305","_height",""),
("596","305","_upsell_ids","a:0:{}"),
("597","305","_crosssell_ids","a:0:{}"),
("598","305","_purchase_note",""),
("599","305","_default_attributes","a:0:{}"),
("600","305","_virtual","no"),
("601","305","_downloadable","no"),
("602","305","_product_image_gallery",""),
("603","305","_download_limit","-1"),
("604","305","_download_expiry","-1"),
("605","305","_stock",""),
("606","305","_stock_status","instock"),
("607","305","_product_version","3.5.1"),
("608","305","_price","344000"),
("615","311","_wc_review_count","0"),
("616","311","_wc_rating_count","a:0:{}"),
("617","311","_wc_average_rating","0"),
("618","311","_edit_last","1"),
("619","311","_edit_lock","1543410981:1"),
("620","312","_wp_attached_file","2018/11/product-4.jpg"),
("621","312","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:21:\"2018/11/product-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"product-4-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"product-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"product-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("622","311","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("623","311","_sku",""),
("624","311","_regular_price","292000"),
("625","311","_sale_price","225000"),
("626","311","_sale_price_dates_from",""),
("627","311","_sale_price_dates_to",""),
("628","311","total_sales","0"),
("629","311","_tax_status","taxable"),
("630","311","_tax_class",""),
("631","311","_manage_stock","no"),
("632","311","_backorders","no"),
("633","311","_low_stock_amount",""),
("634","311","_sold_individually","no"),
("635","311","_weight",""),
("636","311","_length",""),
("637","311","_width",""),
("638","311","_height",""),
("639","311","_upsell_ids","a:0:{}"),
("640","311","_crosssell_ids","a:0:{}"),
("641","311","_purchase_note",""),
("642","311","_default_attributes","a:0:{}"),
("643","311","_virtual","no"),
("644","311","_downloadable","no"),
("645","311","_product_image_gallery","");
INSERT INTO bz_postmeta VALUES
("646","311","_download_limit","-1"),
("647","311","_download_expiry","-1"),
("648","311","_stock",""),
("649","311","_stock_status","instock"),
("650","311","_product_version","3.5.1"),
("651","311","_price","225000"),
("652","311","_thumbnail_id","312"),
("655","315","_wc_review_count","0"),
("656","315","_wc_rating_count","a:0:{}"),
("657","315","_wc_average_rating","0"),
("658","315","_edit_last","1"),
("659","315","_edit_lock","1543400744:1"),
("660","316","_wp_attached_file","2018/11/product5.jpg"),
("661","316","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:20:\"2018/11/product5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product5-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("662","315","_thumbnail_id","316"),
("663","315","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("664","315","_sku",""),
("665","315","_regular_price","360000"),
("666","315","_sale_price","250000"),
("667","315","_sale_price_dates_from",""),
("668","315","_sale_price_dates_to",""),
("669","315","total_sales","0"),
("670","315","_tax_status","taxable"),
("671","315","_tax_class",""),
("672","315","_manage_stock","no"),
("673","315","_backorders","no"),
("674","315","_low_stock_amount",""),
("675","315","_sold_individually","no"),
("676","315","_weight",""),
("677","315","_length",""),
("678","315","_width",""),
("679","315","_height",""),
("680","315","_upsell_ids","a:0:{}"),
("681","315","_crosssell_ids","a:0:{}"),
("682","315","_purchase_note",""),
("683","315","_default_attributes","a:0:{}"),
("684","315","_virtual","no"),
("685","315","_downloadable","no"),
("686","315","_product_image_gallery",""),
("687","315","_download_limit","-1"),
("688","315","_download_expiry","-1"),
("689","315","_stock",""),
("690","315","_stock_status","instock"),
("691","315","_product_version","3.5.1"),
("692","315","_price","250000"),
("693","317","_wc_review_count","0"),
("694","317","_wc_rating_count","a:0:{}"),
("695","317","_wc_average_rating","0"),
("696","317","_edit_last","1"),
("697","317","_edit_lock","1543410976:1"),
("698","318","_wp_attached_file","2018/11/product6.jpg"),
("699","318","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:20:\"2018/11/product6.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product6-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("700","317","_thumbnail_id","318"),
("701","317","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("702","317","_sku",""),
("703","317","_regular_price","360000"),
("704","317","_sale_price","250000"),
("705","317","_sale_price_dates_from",""),
("706","317","_sale_price_dates_to",""),
("707","317","total_sales","0"),
("708","317","_tax_status","taxable"),
("709","317","_tax_class",""),
("710","317","_manage_stock","no"),
("711","317","_backorders","no"),
("712","317","_low_stock_amount",""),
("713","317","_sold_individually","no"),
("714","317","_weight",""),
("715","317","_length",""),
("716","317","_width",""),
("717","317","_height",""),
("718","317","_upsell_ids","a:0:{}"),
("719","317","_crosssell_ids","a:0:{}"),
("720","317","_purchase_note",""),
("721","317","_default_attributes","a:0:{}"),
("722","317","_virtual","no"),
("723","317","_downloadable","no"),
("724","317","_product_image_gallery",""),
("725","317","_download_limit","-1"),
("726","317","_download_expiry","-1"),
("727","317","_stock",""),
("728","317","_stock_status","instock"),
("729","317","_product_version","3.5.1"),
("730","317","_price","250000"),
("731","319","_wc_review_count","0"),
("732","319","_wc_rating_count","a:0:{}"),
("733","319","_wc_average_rating","0"),
("734","319","_edit_last","1"),
("735","319","_edit_lock","1543400946:1"),
("736","320","_wp_attached_file","2018/11/product-7.jpg"),
("737","320","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:21:\"2018/11/product-7.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"product-7-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"product-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"product-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("738","319","_thumbnail_id","320"),
("739","319","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("740","319","_sku",""),
("741","319","_regular_price","360000"),
("742","319","_sale_price","300000"),
("743","319","_sale_price_dates_from",""),
("744","319","_sale_price_dates_to",""),
("745","319","total_sales","0"),
("746","319","_tax_status","taxable"),
("747","319","_tax_class","");
INSERT INTO bz_postmeta VALUES
("748","319","_manage_stock","no"),
("749","319","_backorders","no"),
("750","319","_low_stock_amount",""),
("751","319","_sold_individually","no"),
("752","319","_weight",""),
("753","319","_length",""),
("754","319","_width",""),
("755","319","_height",""),
("756","319","_upsell_ids","a:0:{}"),
("757","319","_crosssell_ids","a:0:{}"),
("758","319","_purchase_note",""),
("759","319","_default_attributes","a:0:{}"),
("760","319","_virtual","no"),
("761","319","_downloadable","no"),
("762","319","_product_image_gallery",""),
("763","319","_download_limit","-1"),
("764","319","_download_expiry","-1"),
("765","319","_stock",""),
("766","319","_stock_status","instock"),
("767","319","_product_version","3.5.1"),
("768","319","_price","300000"),
("769","321","_wc_review_count","0"),
("770","321","_wc_rating_count","a:0:{}"),
("771","321","_wc_average_rating","0"),
("772","321","_edit_last","1"),
("773","321","_edit_lock","1543410971:1"),
("774","322","_wp_attached_file","2018/11/product-8.jpg"),
("775","322","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:484;s:4:\"file\";s:21:\"2018/11/product-8.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"product-8-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"product-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"product-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("776","321","_thumbnail_id","322"),
("777","321","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("778","321","_sku",""),
("779","321","_regular_price","360000"),
("780","321","_sale_price","320000"),
("781","321","_sale_price_dates_from",""),
("782","321","_sale_price_dates_to",""),
("783","321","total_sales","0"),
("784","321","_tax_status","taxable"),
("785","321","_tax_class",""),
("786","321","_manage_stock","no"),
("787","321","_backorders","no"),
("788","321","_low_stock_amount",""),
("789","321","_sold_individually","no"),
("790","321","_weight",""),
("791","321","_length",""),
("792","321","_width",""),
("793","321","_height",""),
("794","321","_upsell_ids","a:0:{}"),
("795","321","_crosssell_ids","a:0:{}"),
("796","321","_purchase_note",""),
("797","321","_default_attributes","a:0:{}"),
("798","321","_virtual","no"),
("799","321","_downloadable","no"),
("800","321","_product_image_gallery",""),
("801","321","_download_limit","-1"),
("802","321","_download_expiry","-1"),
("803","321","_stock",""),
("804","321","_stock_status","instock"),
("805","321","_product_version","3.5.1"),
("806","321","_price","320000"),
("811","332","_edit_last","1"),
("812","332","_edit_lock","1543401402:1"),
("813","334","_wp_attached_file","2018/11/footer-bg.jpg"),
("814","334","_wp_attachment_metadata","a:5:{s:5:\"width\";i:14;s:6:\"height\";i:332;s:4:\"file\";s:21:\"2018/11/footer-bg.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"footer-bg-14x150.jpg\";s:5:\"width\";i:14;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"footer-bg-13x300.jpg\";s:5:\"width\";i:13;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"footer-bg-14x300.jpg\";s:5:\"width\";i:14;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"footer-bg-14x100.jpg\";s:5:\"width\";i:14;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"footer-bg-14x300.jpg\";s:5:\"width\";i:14;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"footer-bg-14x100.jpg\";s:5:\"width\";i:14;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("815","334","_edit_lock","1543401974:1"),
("816","332","_thumbnail_id",""),
("1056","471","_wp_attached_file","2018/11/slider2-1.jpg"),
("1057","471","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:435;s:4:\"file\";s:21:\"2018/11/slider2-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider2-1-300x96.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider2-1-768x245.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider2-1-1024x326.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slider2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"slider2-1-600x191.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"slider2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"slider2-1-600x191.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1059","476","_form","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]"),
("1060","476","_mail","a:8:{s:7:\"subject\";s:77:\"Mẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\";s:6:\"sender\";s:44:\"[your-name] <wordpress@nuocgiat.webdemo.com>\";s:4:\"body\";s:285:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("1061","476","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"Mẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\";s:6:\"sender\";s:93:\"Mẫu website nước rửa chén - Thiết kế web Webdemo <wordpress@nuocgiat.webdemo.com>\";s:4:\"body\";s:210:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("1062","476","_messages","a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";}"),
("1063","476","_additional_settings",""),
("1064","476","_locale","vi"),
("1065","477","_form","[text* text-324 placeholder \"Họ và tên...\"]\n[email email-866 placeholder \"Địa chỉ email...\"]\n[tel* tel-494 placeholder \"Số điện thoại...\"]\n[text text-3234 placeholder \"Địa chỉ...\"]\n[textarea textarea-82 placeholder \"Nội dung chia sẻ...\"]\n[submit \"Gửi liên hệ\"]"),
("1066","477","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:60:\"Mẫu website nước rửa chén - Thiết kế web Webdemo\";s:6:\"sender\";s:32:\"<wordpress@nuocgiat.webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:359:\"Có người mới liên hệ qua website:\n- Họ và tên: [text-324]\n- Địa chỉ email: [email-866]\n- Điện thoại: [tel-494]\n- Địa chỉ: [text-3234]\n- Nội dung: [textarea-82]\n\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1067","477","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"Mẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\";s:6:\"sender\";s:93:\"Mẫu website nước rửa chén - Thiết kế web Webdemo <wordpress@nuocgiat.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:210:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1068","477","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("1069","477","_additional_settings",""),
("1070","477","_locale","vi"),
("1071","52","_thumbnail_id",""),
("1075","483","_menu_item_type","taxonomy"),
("1076","483","_menu_item_menu_item_parent","0"),
("1077","483","_menu_item_object_id","19"),
("1078","483","_menu_item_object","product_cat"),
("1079","483","_menu_item_target",""),
("1080","483","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1081","483","_menu_item_xfn",""),
("1082","483","_menu_item_url",""),
("1084","484","_menu_item_type","taxonomy"),
("1085","484","_menu_item_menu_item_parent","0"),
("1086","484","_menu_item_object_id","20"),
("1087","484","_menu_item_object","product_cat"),
("1088","484","_menu_item_target",""),
("1089","484","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1090","484","_menu_item_xfn",""),
("1091","484","_menu_item_url",""),
("1093","485","_menu_item_type","taxonomy"),
("1094","485","_menu_item_menu_item_parent","0"),
("1095","485","_menu_item_object_id","22"),
("1096","485","_menu_item_object","product_cat");
INSERT INTO bz_postmeta VALUES
("1097","485","_menu_item_target",""),
("1098","485","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1099","485","_menu_item_xfn",""),
("1100","485","_menu_item_url",""),
("1102","486","_menu_item_type","taxonomy"),
("1103","486","_menu_item_menu_item_parent","0"),
("1104","486","_menu_item_object_id","21"),
("1105","486","_menu_item_object","product_cat"),
("1106","486","_menu_item_target",""),
("1107","486","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1108","486","_menu_item_xfn",""),
("1109","486","_menu_item_url",""),
("1199","532","_wp_trash_meta_status","publish"),
("1200","532","_wp_trash_meta_time","1557133818"),
("1201","533","_wp_attached_file","2019/05/nuocgiat.jpg"),
("1202","533","_wp_attachment_metadata","a:5:{s:5:\"width\";i:356;s:6:\"height\";i:97;s:4:\"file\";s:20:\"2019/05/nuocgiat.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-150x97.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"nuocgiat-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"nuocgiat-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-100x97.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"nuocgiat-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-100x97.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1203","534","_wp_attached_file","2019/05/nuocgiat.png"),
("1204","534","_wp_attachment_metadata","a:5:{s:5:\"width\";i:356;s:6:\"height\";i:97;s:4:\"file\";s:20:\"2019/05/nuocgiat.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-150x97.png\";s:5:\"width\";i:150;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"nuocgiat-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"nuocgiat-300x97.png\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-100x97.png\";s:5:\"width\";i:100;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"nuocgiat-300x97.png\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"nuocgiat-100x97.png\";s:5:\"width\";i:100;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1205","535","_edit_lock","1557137819:1"),
("1206","535","_wp_trash_meta_status","publish"),
("1207","535","_wp_trash_meta_time","1557137823"),
("1208","536","_wp_attached_file","woocommerce-placeholder.png"),
("1209","536","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2018-11-28 07:03:25","2018-11-28 07:03:25","<em><strong>Bánh đuông hay còn gọi là bánh con sâu là thức bánh tuổi thơ với hình dáng lạ mắt, giống hệt như những chú đuông dừa – một đặc sản vô cùng nổi tiếng của miền Tây sông nước. Bánh có vị giòn tan, màu sắc thu hút, kế hợp với vị thơm béo của sữa, nước cốt dừa, tạo thành một thức bánh ăn một lần là muốn thưởng thức lần hai. </strong></em>\n\n<img class=\"alignnone size-full wp-image-36020 aligncenter lazy-load-active\" src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-7.jpg\" alt=\"Quay trở về tuổi thơ với cách làm bánh đuông thơm lừng căn bếp-764\" width=\"500\" height=\"334\" data-src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-7.jpg\" />\n<h2>Nguyên liệu</h2>\n– Bột năng: 400g\n\n– Bột mì: 100g\n\n– Bơ: 100g (để mềm ở nhiệt độ phòng)\n\n– Nước cốt dừa: 140ml\n\n– Bột cốt dừa: 50g\n\n– Đường xay: 120g (có thể thay đổi tùy khẩu vị)\n\n– Sữa đặc: 100g\n\n– Socola chip\n\n– Màu thực phẩm (xanh, đỏ, vàng,.. tùy ý).\n<h2>Cách làm</h2>\n(1) Trộn đều bột năng, bột mì, bột cốt dừa, đường xay với nhau, rây qua rây lọc để loại bỏ lợn cợn, tạp chất. Cho tất cả các nguyên liệu vào một chiếc tô to.\n\n(2) Thêm nước cốt dừa, bơ, sữa đặc vào tô bột. Dùng tay nhào đều cho các nguyên liệu hòa quyện, tạo thành một khối dẻo không dính tay, không quá nhão cũng không quá khô.\n\n<img class=\"wp-image-36012 aligncenter lazy-load-active\" src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-3.jpg\" alt=\"Quay trở về tuổi thơ với cách làm bánh đuông thơm lừng căn bếp-23\" width=\"500\" height=\"333\" data-src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-3.jpg\" />\n\nNếu khối bột quá nhão có thể khắc phục bằng cách thêm bột mì, nếu khối bột quá khô thì cho thêm một chút nước.\n\n(3) Chia khối bột thành từng phần bằng nhau để trộn với màu thực phẩm tạo màu sắc cho đuông, có bao nhiêu màu tương ứng với bấy nhiêu phần bột.\n\nNhỏ màu thực phẩm vào từng phần bột, nhào đều cho màu quyện với bột, nếu chưa được màu ưng ý thì có thể tiếp tục thêm màu và nhào tiếp đến khi đạt.\n\n<img class=\"wp-image-36011 aligncenter lazy-load-active\" src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-2.jpg\" alt=\"Quay trở về tuổi thơ với cách làm bánh đuông thơm lừng căn bếp-23\" width=\"500\" height=\"281\" data-src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-2.jpg\" />\n\n(4) Tạo hình đuông dừa\n\nNặn hình đuông khá dễ, bạn chỉ cần bấu một phần bột, viên cho thuôn dài, phần đầu to hơn và nhỏ dần về phía đuôi. Tiếp tục lăn bột qua chiếc lược chải tóc để tạo vân cho giống đuông dừa. Cuối cùng gắn mắt cho đuông bằng socola chip.\n\nLàm lần lượt như thế đến khi hết bột.\n\n<img class=\"wp-image-36010 aligncenter lazy-load-active\" src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-1.jpg\" alt=\"Quay trở về tuổi thơ với cách làm bánh đuông thơm lừng căn bếp-87\" width=\"500\" height=\"375\" data-src=\"https://blog.beemart.vn/wp-content/uploads/2017/10/quay-tro-ve-tuoi-tho-voi-cach-lam-banh-duong-dua-thom-lung-can-bep-1.jpg\" />","Trở về tuổi thơ với cách làm bánh đuông thơm lừng","","publish","open","open","","chao-moi-nguoi","","","2018-11-28 08:09:50","2018-11-28 08:09:50","","0","https://tppone.com/demo/nuocgiat/?p=1","0","post","","1"),
("2","1","2018-11-28 07:03:25","2018-11-28 07:03:25","[section label=\"Slider\" class=\"slider-section\" bg_color=\"rgb(249, 249, 249)\" padding=\"15px\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"98\" image_size=\"original\" height=\"45.7%\"]\n\n[ux_image id=\"100\" image_size=\"original\" height=\"45.7%\" animate=\"flipInX\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title text=\"Tin tức\" color=\"rgb(23, 99, 31)\" link_text=\"Xem thêm\" link=\"/category/tin-tuc/\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"60%\" image_width=\"25\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[row label=\"Tiêu chí\" class=\"tieu-chi\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"148\" img_width=\"85\" pos=\"left\"]\n\n<h3>Tiết kiệm chi phí</h3>\n<p>Tiết kiệm tối đa chi phí sử dụng so với các loại sản phẩm khác</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"149\" img_width=\"85\" pos=\"left\"]\n\n<h3>An toàn cho người sử dụng</h3>\n<p>Tuyệt đối không hóa chất gây hại cho người sử dụng.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"150\" img_width=\"85\" pos=\"left\"]\n\n<h3>Thân thiện môi trường</h3>\n<p>Sản phẩm Newsuns hoàn toàn thân thiện với môi trường.</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[section label=\"Giới thiệu\" class=\"gioi-thieu\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" class=\"cot3\"]\n\n[ux_image id=\"173\" image_size=\"original\"]\n\n<div class=\"cam-ket-box\">\n<div class=\"row1\">Các sản phẩm Newsuns cam kết không dùng chất bảo quản, không chứa hóa chất độc hại.</div>\n<div class=\"info\">\n<ul>\n<li>Hotline: 0909000000</li>\n<li>Email: demoweb@gmail.com</li>\n<li>Website: www.Webdemo.com</li>\n</ul>\n</div>\n</div>\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n<h2>Giới thiệu về Newsuns</h2>\n<p><strong>Newsun</strong> là một thương hiệu bao gồm các sản phẩm: Nước Lau Sàn, Nước Rửa Chén &amp; Nước Giặt Xả Vải… Các sản phẩm này là thành quả của quá trình nghiên cứu và lòng nhiệt huyết có lương tâm của các Kỹ Sư Hóa trong và ngoài nước. Nước lau sàn, nước rửa chén &amp; nước giặt xả được sản xuất trực tiếp bởi chính các kỹ sư bằng dây chuyền bán tự động. Hơn nữa, nó được sản xuất bởi những con người khát khao mang những sản phẩm không độc hại đến người tiêu dùng, như một cách thức mang sứ điệp yêu thương gửi đến với tha nhân ngày nay. <span style=\"color: #00a859;\"><a style=\"color: #00a859;\" href=\"#\">+ Xem thêm</a></span></p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"233\" img_width=\"197\" pos=\"center\" link=\"/nuoc-giat/\"]\n\n<h3 style=\"text-align: center;\">Nước giặt Newsuns</h3>\n<p style=\"text-align: center;\">Sản phẩm vừa kết hợp công nghệ giặt vừa kết hợp xả quần áo.</p>\n[button text=\"Xem chi tiết\" letter_case=\"lowercase\" radius=\"99\" link=\"#\"]\n\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"228\" img_width=\"197\" pos=\"center\" link=\"/nuoc-rua-bat/\"]\n\n<h3 style=\"text-align: center;\">Nước giặt Newsuns</h3>\n<p style=\"text-align: center;\">Tẩy sạch dầu mỡ và mảng bám. An toàn với chén bát trong gia đình.</p>\n[button text=\"Xem chi tiết\" letter_case=\"lowercase\" radius=\"99\" link=\"#\"]\n\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[featured_box img=\"231\" img_width=\"197\" pos=\"center\" link=\"/nuoc-lau-san/\"]\n\n<h3 style=\"text-align: center;\">Nước lau sàn Newsuns</h3>\n<p style=\"text-align: center;\">Sạch bong kin kít sàn nhà với nước lau sàn Newsuns, an toàn cho gia.</p>\n[button text=\"Xem chi tiết\" letter_case=\"lowercase\" radius=\"99\" link=\"#\"]\n\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm\" class=\"san-pham\" bg_color=\"rgb(249, 249, 249)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Sản phẩm bán chạy\" color=\"rgb(20, 167, 81)\" link_text=\"+ Xem tất cả\" link=\"#\"]\n\n[gap height=\"13px\"]\n\n[ux_products style=\"normal\" type=\"row\" cat=\"18\" image_height=\"100%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h2 style=\"text-align: center;\">Tin tức - bài viết</h2>\n<p style=\"text-align: center;\">Mời bạn theo dõi những tin tức, bài viết mới nhất của chúng tôi về các loại nước giặt, nước lau sàn và nước rửa chén bát tại đây:</p>\n[blog_posts style=\"bounce\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" cat=\"4\" posts=\"4\" show_date=\"text\" excerpt_length=\"21\" comments=\"false\" image_height=\"75%\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-11-28 17:37:37","2018-11-28 10:37:37","","0","https://tppone.com/demo/nuocgiat/?page_id=2","0","page","","0"),
("3","1","2018-11-28 07:03:25","2018-11-28 07:03:25","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/nuocgiat.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2018-11-28 07:03:25","2018-11-28 07:03:25","","0","https://tppone.com/demo/nuocgiat/?page_id=3","0","page","","0"),
("11","1","2018-11-28 07:19:39","2018-11-28 07:19:39","https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2018/11/cropped-Baner-hau-01-copy.png","cropped-Baner-hau-01-copy.png","","inherit","open","closed","","cropped-baner-hau-01-copy-png","","","2018-11-28 07:19:39","2018-11-28 07:19:39","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/cropped-Baner-hau-01-copy.png","0","attachment","image/png","0"),
("37","1","2018-11-28 07:32:17","2018-11-28 07:32:17","","logo-ninhbinhweb","","inherit","open","closed","","logo-ninhbinhweb","","","2018-11-28 07:32:17","2018-11-28 07:32:17","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/logo-ninhbinhweb.jpg","0","attachment","image/jpeg","0"),
("50","1","2018-11-28 07:37:15","2018-11-28 07:37:15","Xin chào bạn – độc giả của Webdemo.com,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\nWebdemo.com được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những bài viết kiến thức hoặc những sản phẩm sáng tạo trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ Thiết kế đồ họa và Thiết kế Website chuyên nghiệp từ đầu năm 2017. Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-11-28 20:14:30","2018-11-28 13:14:30","","0","https://tppone.com/demo/nuocgiat/?page_id=50","0","page","","0"),
("52","1","2018-11-28 07:37:20","2018-11-28 07:37:20","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"471\" image_size=\"original\" height=\"15%\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>Liên hệ: DEMO</li>\n<li>Phone: 0909000000</li>\n<li>Email: demoweb@gmail.com</li>\n<li>Website: www.Webdemo.com</li>\n<li>Flickr: www.flickr.com/photos/demo@N07/albums</li>\n<li>Behance: https://www.behance.net/demo</li>\n<li>Intesest: https://www.pinterest.com/demo/pins/</li>\n</ul>\n<h3>Chi nhánh Hà Nội</h3>\n<ul>\n<li>Địa chỉ: Số 19 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</li>\n<li>Điện thoại: 0909000000 - 01324.567.890</li>\n<li>Email: demoweb@gmail.com</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>Biểu mẫu liên hệ</h2>\n[contact-form-7 id=\"477\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14900.931775031808!2d105.79967699999999!3d20.9832975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543410570953\" width=\"100%\" height=\"250\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2018-11-28 20:14:01","2018-11-28 13:14:01","","0","https://tppone.com/demo/nuocgiat/?page_id=52","0","page","","0"),
("54","1","2018-11-28 07:37:33","2018-11-28 07:37:33"," ","","","publish","closed","closed","","54","","","2018-11-28 07:37:36","2018-11-28 07:37:36","","0","https://tppone.com/demo/nuocgiat/?p=54","2","nav_menu_item","","0"),
("55","1","2018-11-28 07:37:33","2018-11-28 07:37:33"," ","","","publish","closed","closed","","55","","","2018-11-28 07:37:36","2018-11-28 07:37:36","","0","https://tppone.com/demo/nuocgiat/?p=55","1","nav_menu_item","","0"),
("57","1","2018-11-28 07:38:12","2018-11-28 07:38:12","","Sản phẩm","","publish","closed","closed","","san-pham","","","2018-11-28 07:38:12","2018-11-28 07:38:12","","0","https://tppone.com/demo/nuocgiat/?page_id=57","0","page","","0"),
("59","1","2018-11-28 07:38:16","2018-11-28 07:38:16","","Liên hệ","","publish","closed","closed","","lien-he-2","","","2018-11-28 07:38:16","2018-11-28 07:38:16","","0","https://tppone.com/demo/nuocgiat/?page_id=59","0","page","","0"),
("61","1","2018-11-28 07:38:21","2018-11-28 07:38:21","","Đại lý","","publish","closed","closed","","dai-ly","","","2018-11-28 07:38:21","2018-11-28 07:38:21","","0","https://tppone.com/demo/nuocgiat/?page_id=61","0","page","","0"),
("63","1","2018-11-28 07:38:52","2018-11-28 07:38:52"," ","","","publish","closed","closed","","63","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","0","https://tppone.com/demo/nuocgiat/?p=63","7","nav_menu_item","","0"),
("64","1","2018-11-28 07:38:39","0000-00-00 00:00:00"," ","","","draft","closed","closed","","","","","2018-11-28 07:38:39","0000-00-00 00:00:00","","0","https://tppone.com/demo/nuocgiat/?p=64","1","nav_menu_item","","0"),
("66","1","2018-11-28 07:38:52","2018-11-28 07:38:52"," ","","","publish","closed","closed","","66","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","0","https://tppone.com/demo/nuocgiat/?p=66","9","nav_menu_item","","0"),
("67","1","2018-11-28 07:38:51","2018-11-28 07:38:51"," ","","","publish","closed","closed","","67","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","0","https://tppone.com/demo/nuocgiat/?p=67","2","nav_menu_item","","0"),
("68","1","2018-11-28 07:38:51","2018-11-28 07:38:51"," ","","","publish","closed","closed","","68","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","0","https://tppone.com/demo/nuocgiat/?p=68","1","nav_menu_item","","0"),
("73","1","2018-11-28 07:41:32","2018-11-28 07:41:32","","Nước giặt","","publish","closed","closed","","nuoc-giat","","","2018-11-28 07:41:32","2018-11-28 07:41:32","","0","https://tppone.com/demo/nuocgiat/?page_id=73","0","page","","0"),
("75","1","2018-11-28 07:41:37","2018-11-28 07:41:37","","Nước rửa bát","","publish","closed","closed","","nuoc-rua-bat","","","2018-11-28 07:41:37","2018-11-28 07:41:37","","0","https://tppone.com/demo/nuocgiat/?page_id=75","0","page","","0"),
("77","1","2018-11-28 07:41:43","2018-11-28 07:41:43","","Chất tẩy công nghiệp","","publish","closed","closed","","chat-tay-cong-nghiep","","","2018-11-28 07:41:43","2018-11-28 07:41:43","","0","https://tppone.com/demo/nuocgiat/?page_id=77","0","page","","0"),
("98","1","2018-11-28 07:53:02","2018-11-28 07:53:02","","slider1","","inherit","open","closed","","slider1","","","2018-11-28 07:53:02","2018-11-28 07:53:02","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/slider1.jpg","0","attachment","image/jpeg","0"),
("100","1","2018-11-28 07:55:26","2018-11-28 07:55:26","","slider2","","inherit","open","closed","","slider2","","","2018-11-28 07:55:26","2018-11-28 07:55:26","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/slider2.jpg","0","attachment","image/jpeg","0"),
("105","1","2018-11-28 07:59:03","2018-11-28 07:59:03","<h4 class=\"the-article-title cms-title\">Đỗ Mỹ Linh và top 10 HHVN 2016 – Bùi Nữ Kiều Vỹ, siêu mẫu H’ăng Niê đã cùng tham gia ” Ngày chạy Olympic ” vào ngày 26/3.</h4>\n<div class=\"the-article-body cms-body\">\n\nCó mặt tại Phố đi bộ Nguyễn Huệ từ sáng sớm, Mỹ Linh tỏ ra rất khỏe khoắn sau nhiều chuyến bay gấp. Sự kiện “Ngày chạy Olympic” cũng là dịp cô hội ngộ cùng Kiều Vỹ và H’ăng Niê. Cùng với các thành viên khác, cả 3 người đẹp tích cực hưởng ứng ngày chạy vì sức khỏe toàn dân.\n\nĐược biết đến là một người tích cực với hoạt động cộng đồng, sau khi đăng quang Đỗ Mỹ Linh từng góp mặt với vai trò đại sứ Lễ hội Áo dài, quảng bá Festival Đờn ca tài tử Quốc gia lần II – Bình Dương 2017 và nhiều hoạt động từ thiện khác.\n\nHoa hậu Việt Nam 2016 cho biết chương trình chạy vì sức khỏe toàn dân là một hoạt động thú vị. “Tôi rất hào hứng khi được hòa vào dòng chạy cùng mọi người. Thông qua sự kiện này, Linh muốn gởi đến thông điệp hãy thường xuyên rèn luyện thân thể để có một sức khỏe tốt, tinh thần thoải mái và sống vui khỏe hơn”, cô nói thêm.\n\nTop 10 HHVN 2016 – Bùi Nữ Kiều Vỹ lại khá tín tiếng. Sau cuộc thi, cô trở về quê để tiếp tục trau dồi tiếng Anh. Năm nay, Kiều Vỹ gây bất ngờ với người hâm mộ khi trở lại Sài Gòn và tuyên bố sẽ lấn sân vào showbiz. Cô tích cực tham gia đóng phim và trình diễn thời trang. Người đẹp H’ăng Niê hiện là siêu mẫu của làng mốt Việt Nam. Cô được biết đến qua các hoạt động thời trang, chụp ảnh.\n\n“Ngày chạy Olympic” là hoạt động kỷ niệm 71 năm ngày thành lập ngành Thể dục thể thao và ngày Bác Hồ viết bài “Thể dục và sức khỏe” kêu gọi đồng bào tập thể dục (27/3/1946); 86 năm Ngày thành lập ĐTNCSHCM (26/3/1931). Chương trình cũng động viên người dân tham gia tập luyện thể dục, thể thao hưởng ứng cuộc vận động “Toàn dân rèn luyện thân thể theo gương Bác Hồ vĩ đại” và phong trào “Khỏe để lập nghiệp và giữ nước”.\n\nBên cạnh hoạt động chạy bộ cộng đồng, người tham gia còn được thưởng thức và hòa mình vào các hoạt động văn hóa, thể thao đặc sắc. Sự kiện được tài trợ bởi nhãn hàng Bột giặt Aba (công ty TNHH Đại Việt Hương). Đại diện nhà tài trợ cho biết, việc tài trợ “Ngày chạy Olympic” xuất phát từ mong muốn góp phần nâng cao sức khỏe toàn dân. Các hoạt động thể dục thể thao ý nghĩa góp phần phát huy tinh thần rèn luyện không ngừng về tri thức lẫn thể chất cho cộng đồng.\n\n</div>","Bột giặt Aba đồng hành sự kiện “Ngày chạy Olympic” năm 2017","","publish","open","open","","bot-giat-aba-dong-hanh-su-kien-ngay-chay-olympic-nam-2017","","","2018-11-28 07:59:03","2018-11-28 07:59:03","","0","https://tppone.com/demo/nuocgiat/?p=105","0","post","","0"),
("106","1","2018-11-28 07:58:54","2018-11-28 07:58:54","","khongngaiomo0_1386585133","","inherit","open","closed","","khongngaiomo0_1386585133","","","2018-11-28 07:58:54","2018-11-28 07:58:54","","105","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/khongngaiomo0_1386585133.jpg","0","attachment","image/jpeg","0"),
("108","1","2018-11-28 08:00:07","2018-11-28 08:00:07","Dùng kẹp quần áo tác động lực tại các vị trí khác nhau trên vành tai có thể giúp bạn bình tĩnh, giảm căng thẳng và tăng cường sức khỏe cho các cơ quan nội tạng.\n\nTheo <em>Daily Mail</em>, liệu pháp trên đơn giản được gọi là “bấm huyệt tai”. Đúng như tên gọi, nó được thực hiện bằng cách sử dụng tay xoa bóp tai trong vòng khoảng 15 phút, hoặc tạo áp lực lên các huyệt đạo cụ thể bằng các vật dụng thân thuộc, như chiếc kẹp quần áo.\n\nCác chuyên gia trên thế giới tin rằng, giống như gam bàn chân, bàn tay và đầu, đôi tai của con người cũng có các huyệt đạo liên kết trực tiếp với các bộ phận trên cơ thể. Bằng cách xoa bóp hoặc tác động lực bấm lên các huyệt đạo này có thể giúp chúng ta quên đi mệt mỏi, giảm đau.<span style=\"font-size: 14.4px;\">“Bấm huyệt tai là liệu phát mà mọi người có thể thực hiện ngay tại nhà hoặc ở bất cứ đâu. Nếu được chỉ dẫn cụ thể nên bấm vào điểm nào, chúng ta có thể tự giúp mình thư giãn”, chuyên gia bấm huyệt Philippe Mathon cho biết.</span>\n\nMặc dù vậy, liệu pháp bấm huyệt tai còn khá mới mẻ, chưa phải là một môn khoa học được nghiên cứu chuyên sâu. Dất nhiều sơ đồ huyệt đạo khác nhau, giải thích các khu vực khác nhau trên cơ thể chịu ảnh hưởng khi tác động lực lên tai.\n\n<span style=\"font-size: 14.4px;\">Phía trên là sơ đồ khác về các huyệt đạo và tác động của chúng lên cơ thể con người. Tuy nhiên, các nhà nghiên cứu chưa có sự thống nhất về mặt lý thuyết nên không thể xác định được sơ đồ nào chính xác hơn, hiệu quả hơn.</span>\n\nChính vì vậy các bạn có thể tự thử nghiệm, tìm ra những huyệt đạo có tác động hiệu quả nhất với cơ thể mình.\n\nBên cạnh sử dụng tay xoa bóp và bấm huyệt, bạn còn có thể sử dụng các loại kẹp quần áo thông thường. Mặc dù vậy nên lưu ý chỉ kẹp trong thời gian ngắn để tránh cảm thấy đau đớn và phản tác dụng.\n\nNgoài ra vì kích thước lớn nên những chiếc kẹp áo chỉ có thể dùng để bấm một số huyệt đạo nhất định, chủ yếu là xung quanh vành tai – vùng dễ tiếp cận nhất.\n<div class=\"et_social_inline et_social_mobile_on et_social_inline_bottom\">\n<div class=\"et_social_networks et_social_autowidth et_social_slide et_social_rectangle et_social_left et_social_no_animation et_social_outer_dark\">\n<ul class=\"et_social_icons_container\">\n 	<li class=\"et_social_facebook\"></li>\n</ul>\n</div>\n</div>","Cách bấm huyệt giúp giảm mệt mỏi bằng kẹp quần áo","","publish","open","open","","cach-bam-huyet-giup-giam-met-moi-bang-kep-quan-ao","","","2018-11-28 08:00:07","2018-11-28 08:00:07","","0","https://tppone.com/demo/nuocgiat/?p=108","0","post","","0"),
("109","1","2018-11-28 08:00:04","2018-11-28 08:00:04","","1","","inherit","open","closed","","1","","","2018-11-28 08:00:04","2018-11-28 08:00:04","","108","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/1.jpg","0","attachment","image/jpeg","0"),
("111","1","2018-11-28 08:01:05","2018-11-28 08:01:05","Giặt giũ quần áo là công việc quen thuộc nhưng đòi hỏi nhiều nguyên tắc để đảm bảo sức khỏe và an toàn với làn da nhạy cảm của bé.\n\nChú ý 4 điều dưới đây sẽ đảm bảo quần áo thơm tho, sạch sẽ và an toàn.\n<h3>KHÔNG GIẶT CHUNG QUẦN ÁO NGƯỜI LỚN</h3>\nNhiều gia đình có thói quen giặt chung quần áo của trẻ sơ sinh cùng người lớn. Đây là sai lầm dẫn đến nguy cơ lây nhiễm nhiều căn bệnh nguy hiểm. Trang phục người lớn có phạm vi hoạt động lớn, tiếp xúc nhiều môi trường khác nhau, ẩn chứa nhiều loại vi khuẩn gây hại cho sức khỏe. Khi giặt chung đồ sẽ dễ lây lan vi khuẩn, bụi bẩn hoặc thậm chí là hóa chất từ màu nhuộm.\n\n<span style=\"font-size: 20.16px; color: #333333;\">LÀM SẠCH CÁC VẾT BẨN</span>\n\nVới các vết ố bẩn có nguồn gốc protein, mẹ nên dùng các sản phẩm tẩy rửa có chứa enzym để làm sạch. Nếu bé ăn trái cây và để lại dấu vết, có thể giặt quần áo trong nước lạnh hoặc ngâm trong dung dịch cồn – nước với tỷ lệ 1:1 rồi giặt bình thường. Để xử lý quần áo dính nước tiểu, chỉ cần dùng một thìa amoniac pha loãng với nước, chà xát các phần bẩn và giặt bình thường.\n<h3>KHỬ MÙI HÔI TRÊN QUẦN ÁO</h3>\nTrẻ sơ sinh và trẻ nhỏ hay nôn trớ, đi vệ sinh nên quần áo thường bị ám mùi hôi, chua. Nếu sử dụng các sản phẩm có mùi thơm quá mạnh sẽ gây ảnh hưởng đến hệ hô hấp chưa hoàn thiện của con. Để loại bỏ mùi hôi an toàn, phụ huynh có thể lựa chọn những sản phẩm giặt xả có hương thơm từ hoa hoặc cây cỏ với chiết xuất từ thiên nhiên.\n\n<span style=\"font-size: 20.16px; color: #333333;\">DÙNG SẢN PHẨM GIẶT CHUYÊN BIỆT</span>\n\nCác loại bột giặt thông thường chứa một lượng lớn chất tẩy mạnh hoặc mùi thơm. Thành phần này nhiều khả năng kích ứng hoặc khiến quần áo thô ráp, tạo sự khó chịu cho làn da nhạy cảm của trẻ. Sử dụng nước giặt và xả chuyên dụng giúp quần áo của các thành viên nhí vừa sạch sẽ lại vừa thơm mát, mềm mại hơn.\n\nKhi chọn mua sản phẩm cho bé, mẹ cần tìm hiểu kỹ thành phần, xuất xứ và các cửa hàng uy tín để tránh hàng nhái, kém chất lượng. Nên sử dụng nước giặt thay vì bột giặt để tránh việc cặn xà phòng bám trên sợi vải.\n\nCác nước giặt xả dành riêng cho bé với chiết xuất tự nhiên nên được ưu tiên để thân thiện với làn da nhạy cảm. Đơn cử như nước giặt xả Wesser 2in1 dành riêng cho trẻ nhỏ được nhập khẩu từ Hàn Quốc. Sản phẩm có sự kết hợp giữa 2 tính năng giặt – xả, giúp tăng tiện lợi khi sử dụng và tiết kiệm thời gian, phù hợp với làn da nhạy cảm của trẻ em.","Những nguyên tắc giặt quần áo bảo vệ sức khỏe bé","","publish","open","open","","nhung-nguyen-tac-giat-quan-ao-bao-ve-suc-khoe-be","","","2018-11-28 08:01:05","2018-11-28 08:01:05","","0","https://tppone.com/demo/nuocgiat/?p=111","0","post","","0"),
("112","1","2018-11-28 08:01:02","2018-11-28 08:01:02","","mu-mua-he-cho-be-yeu-3603","","inherit","open","closed","","mu-mua-he-cho-be-yeu-3603","","","2018-11-28 08:01:02","2018-11-28 08:01:02","","111","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/mu-mua-he-cho-be-yeu-3603.jpg","0","attachment","image/jpeg","0"),
("129","1","2018-11-28 08:09:46","2018-11-28 08:09:46","","3","","inherit","open","closed","","3","","","2018-11-28 08:09:46","2018-11-28 08:09:46","","1","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/3.jpg","0","attachment","image/jpeg","0"),
("148","1","2018-11-28 15:31:38","2018-11-28 08:31:38","","icon1-01","","inherit","open","closed","","icon1-01","","","2018-11-28 15:31:38","2018-11-28 08:31:38","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/icon1-01.png","0","attachment","image/png","0"),
("149","1","2018-11-28 15:31:38","2018-11-28 08:31:38","","icon2-01","","inherit","open","closed","","icon2-01","","","2018-11-28 15:31:38","2018-11-28 08:31:38","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/icon2-01.png","0","attachment","image/png","0"),
("150","1","2018-11-28 15:31:39","2018-11-28 08:31:39","","icon3-01","","inherit","open","closed","","icon3-01","","","2018-11-28 15:31:39","2018-11-28 08:31:39","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/icon3-01.png","0","attachment","image/png","0"),
("169","1","2018-11-28 15:41:26","2018-11-28 08:41:26","","logo-newsuns-01","","inherit","open","closed","","logo-newsuns-01","","","2018-11-28 15:41:26","2018-11-28 08:41:26","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/logo-newsuns-01.jpg","0","attachment","image/jpeg","0"),
("173","1","2018-11-28 15:43:37","2018-11-28 08:43:37","","logo-newsuns-01","","inherit","open","closed","","logo-newsuns-01-2","","","2018-11-28 15:43:37","2018-11-28 08:43:37","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/logo-newsuns-01-1.jpg","0","attachment","image/jpeg","0"),
("198","1","2018-11-28 15:58:42","2018-11-28 08:58:42"," ","","","publish","closed","closed","","198","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","0","https://tppone.com/demo/nuocgiat/?p=198","8","nav_menu_item","","0"),
("228","1","2018-11-28 16:26:44","2018-11-28 09:26:44","","nuoc-rua-chen-2","","inherit","open","closed","","nuoc-rua-chen-2","","","2018-11-28 16:26:44","2018-11-28 09:26:44","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/nuoc-rua-chen-2.jpg","0","attachment","image/jpeg","0"),
("231","1","2018-11-28 16:37:12","2018-11-28 09:37:12","","nuoc-lau-san-newsuns","","inherit","open","closed","","nuoc-lau-san-newsuns","","","2018-11-28 16:37:12","2018-11-28 09:37:12","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/nuoc-lau-san-newsuns.jpg","0","attachment","image/jpeg","0"),
("233","1","2018-11-28 16:37:47","2018-11-28 09:37:47","","nuoc-giat-newsuns","","inherit","open","closed","","nuoc-giat-newsuns","","","2018-11-28 16:37:47","2018-11-28 09:37:47","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/nuoc-giat-newsuns.jpg","0","attachment","image/jpeg","0"),
("244","1","2018-11-28 16:44:46","2018-11-28 09:44:46","","bg","","inherit","open","closed","","bg","","","2018-11-28 16:44:46","2018-11-28 09:44:46","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/bg.jpg","0","attachment","image/jpeg","0"),
("257","1","2018-11-28 16:53:27","2018-11-28 09:53:27","","Nước lau sàn","","publish","closed","closed","","nuoc-lau-san","","","2018-11-28 16:53:27","2018-11-28 09:53:27","","0","https://tppone.com/demo/nuocgiat/?page_id=257","0","page","","0"),
("277","1","2018-11-28 17:02:36","2018-11-28 10:02:36","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2018-11-28 17:02:36","2018-11-28 10:02:36","","0","https://tppone.com/demo/nuocgiat/cua-hang/","0","page","","0"),
("278","1","2018-11-28 17:02:36","2018-11-28 10:02:36","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2018-11-28 17:02:36","2018-11-28 10:02:36","","0","https://tppone.com/demo/nuocgiat/gio-hang/","0","page","","0"),
("279","1","2018-11-28 17:02:36","2018-11-28 10:02:36","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2018-11-28 17:02:36","2018-11-28 10:02:36","","0","https://tppone.com/demo/nuocgiat/thanh-toan/","0","page","","0"),
("280","1","2018-11-28 17:02:36","2018-11-28 10:02:36","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2018-11-28 17:02:36","2018-11-28 10:02:36","","0","https://tppone.com/demo/nuocgiat/tai-khoan/","0","page","","0"),
("281","1","2018-11-28 17:04:41","2018-11-28 10:04:41","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\nKhông chứa chất Bảo quản\n\nKhông gây hại kích ứng Da tay\n\nKhông gây hại Môi trường\n\nKhông chứa chất gây Ung thư\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo tẩy rửa NewSun - Nước giặt 4Lx3 + Lau Sàn 4L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-tay-rua-newsun-nuoc-giat-4lx3-lau-san-4l","","","2018-11-28 20:16:26","2018-11-28 13:16:26","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=281","0","product","","0"),
("282","1","2018-11-28 17:04:33","2018-11-28 10:04:33","","product1","","inherit","open","closed","","product1","","","2018-11-28 17:04:33","2018-11-28 10:04:33","","281","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product1.jpg","0","attachment","image/jpeg","0"),
("302","1","2018-11-28 17:17:40","2018-11-28 10:17:40","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\nKhông chứa chất Bảo quản\n\nKhông gây hại kích ứng Da tay\n\nKhông gây hại Môi trường\n\nKhông chứa chất gây Ung thư\n\n<strong>Khuyết Điểm </strong>: Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo tẩy rửa NewSun: rửa chén 4L + lau sàn 4Lx3","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-tay-rua-newsun-rua-chen-4l-lau-san-4lx3","","","2018-11-28 17:17:52","2018-11-28 10:17:52","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=302","0","product","","0"),
("304","1","2018-11-28 17:17:34","2018-11-28 10:17:34","","DHgYaP_simg_d0daf0_800x1200_max","","inherit","open","closed","","dhgyap_simg_d0daf0_800x1200_max","","","2018-11-28 17:17:34","2018-11-28 10:17:34","","302","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/DHgYaP_simg_d0daf0_800x1200_max.jpg","0","attachment","image/jpeg","0"),
("305","1","2018-11-28 17:19:47","2018-11-28 10:19:47","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\nKhông chứa chất Bảo quản\n\nKhông gây hại kích ứng Da tay\n\nKhông gây hại Môi trường\n\nKhông chứa chất gây Ung thư\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo tẩy tửa Newsun: Rửa chén 4L + Nước giặt 4Lx2 + Lau sàn 4L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-tay-tua-newsun-rua-chen-4l-nuoc-giat-4lx2-lau-san-4l","","","2018-11-28 17:19:47","2018-11-28 10:19:47","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=305","0","product","","0"),
("306","1","2018-11-28 17:19:42","2018-11-28 10:19:42","","product3","","inherit","open","closed","","product3","","","2018-11-28 17:19:42","2018-11-28 10:19:42","","305","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product3.jpg","0","attachment","image/jpeg","0"),
("311","1","2018-11-28 17:24:36","2018-11-28 10:24:36","<strong>Combo Tẩy Rửa</strong> <strong>NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\n<strong>Không chứa chất Bảo quản</strong>\n\n<strong>Không gây hại kích ứng Da tay</strong>\n\n<strong>Không gây hại Môi trường</strong>\n\n<strong>Không chứa chất gây Ung thư</strong>\n\n&nbsp;\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo tẩy rửa NewSun: Rửa chén 4L + Nước giặt 4L + Lau sàn 4L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>\n&nbsp;","publish","open","closed","","combo-tay-rua-newsun-rua-chen-4l-nuoc-giat-4l-lau-san-4l","","","2018-11-28 20:16:21","2018-11-28 13:16:21","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=311","0","product","","0"),
("312","1","2018-11-28 17:24:17","2018-11-28 10:24:17","","product-4","","inherit","open","closed","","product-4","","","2018-11-28 17:24:17","2018-11-28 10:24:17","","311","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product-4.jpg","0","attachment","image/jpeg","0"),
("315","1","2018-11-28 17:27:53","2018-11-28 10:27:53","<strong>Combo Tẩy Rửa</strong> <strong>NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\n<strong>Không chứa chất Bảo quản</strong>\n\n<strong>Không gây hại kích ứng Da tay</strong>\n\n<strong>Không gây hại Môi trường</strong>\n\n<strong>Không chứa chất gây Ung thư</strong>\n\n&nbsp;\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo NewSun: Rửa chén 800ml + Nước giặt 1,5L + Lau sàn 1,5L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-tay-rua-newsun-rua-chen-800ml-nuoc-giat-15l-lau-san-15l","","","2018-11-28 17:28:07","2018-11-28 10:28:07","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=315","0","product","","0"),
("316","1","2018-11-28 17:27:42","2018-11-28 10:27:42","","product5","","inherit","open","closed","","product5","","","2018-11-28 17:27:42","2018-11-28 10:27:42","","315","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product5.jpg","0","attachment","image/jpeg","0"),
("317","1","2018-11-28 17:29:31","2018-11-28 10:29:31","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\n<strong>Không chứa chất Bảo quản</strong>\n\n<strong>Không gây hại kích ứng Da tay</strong>\n\n<strong>Không gây hại Môi trường</strong>\n\n<strong>Không chứa chất gây Ung thư</strong>\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo NewSun: Rửa chén 4L + Nước giặt 4L + Lau sàn 1,5L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-tay-rua-newsun-rua-chen-4l-nuoc-giat-4l-lau-san-15l","","","2018-11-28 20:16:16","2018-11-28 13:16:16","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=317","0","product","","0"),
("318","1","2018-11-28 17:29:27","2018-11-28 10:29:27","","product6","","inherit","open","closed","","product6","","","2018-11-28 17:29:27","2018-11-28 10:29:27","","317","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product6.jpg","0","attachment","image/jpeg","0"),
("319","1","2018-11-28 17:31:27","2018-11-28 10:31:27","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\nKhông chứa chất Bảo quản\n\nKhông gây hại kích ứng Da tay\n\nKhông gây hại Môi trường\n\nKhông chứa chất gây Ung thư\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo NewSun: Rửa chén 1,5Lx4+ Nước giặt 1,5Lx2+Lau sàn 1,5Lx2","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-newsun-rua-chen-15lx4-nuoc-giat-15lx2lau-san-15lx2","","","2018-11-28 17:31:28","2018-11-28 10:31:28","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=319","0","product","","0"),
("320","1","2018-11-28 17:31:20","2018-11-28 10:31:20","","product-7","","inherit","open","closed","","product-7","","","2018-11-28 17:31:20","2018-11-28 10:31:20","","319","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product-7.jpg","0","attachment","image/jpeg","0"),
("321","1","2018-11-28 17:32:52","2018-11-28 10:32:52","<strong>Combo Tẩy Rửa NEWSUN</strong> được sản xuất bởi <strong>Công Ty TNHH MTV ĐA PHƯỚC LÂM</strong> không độc hại, không gây ô nhiễm môi trường, làm sạch nhanh, khử trùng, Sử dụng tốt cho bề mặt gốm, sứ, nhựa, thủy tinh và kim loại.\n\n<strong>Ưu Điểm</strong> của Sản phẩm ĐỘC ĐÁO này có 4 đặc tính :\n\n<strong>Không chứa chất Bảo quản</strong>\n\n<strong>Không gây hại kích ứng Da tay</strong>\n\n<strong>Không gây hại Môi trường</strong>\n\n<strong>Không chứa chất gây Ung thư</strong>\n\n<strong>Khuyết Điểm</strong> : Không đậm đặc, ít bọt ( Vì bọt không có tham gia vào nhiệm vụ chính là tẩy rửa mà chỉ là cảm quan nhưng rất có hại cho sức khỏe, da tay và môi trường)","Combo NewSun: Rửa chén 1,5L+Nước giặt 4L+Lau sàn 4L","<ul>\n 	<li>Không chứa chất Bảo quản</li>\n 	<li>Không gây hại kích ứng Da tay</li>\n 	<li>Không gây hại Môi trường</li>\n 	<li>Không chứa chất gây Ung thư</li>\n</ul>","publish","open","closed","","combo-newsun-rua-chen-15lnuoc-giat-4llau-san-4l","","","2018-11-28 20:16:11","2018-11-28 13:16:11","","0","https://tppone.com/demo/nuocgiat/?post_type=product&#038;p=321","0","product","","0"),
("322","1","2018-11-28 17:32:48","2018-11-28 10:32:48","","product-8","","inherit","open","closed","","product-8","","","2018-11-28 17:32:48","2018-11-28 10:32:48","","321","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/product-8.jpg","0","attachment","image/jpeg","0"),
("332","1","2018-11-28 17:38:18","2018-11-28 10:38:18","[section label=\"Footer\" class=\"footer-section\" bg_color=\"rgb(249, 249, 249)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h3><span style=\"font-size: 95%;\"><strong>Nước tẩy rửa NewSuns - Công ty TNHH Đa Phước Lâm</strong></span></h3>\n<p><span style=\"font-size: 95%;\">Cung cấp các sản phẩm tẩy rửa an toàn cho sức khỏe như: nước rửa chén, nước giặt, nước lau sàn, nước tẩy công nghiệp...</span></p>\n<ul>\n<li><span style=\"font-size: 95%;\">Email : tayruanewsun@gmail.com</span></li>\n<li><span style=\"font-size: 95%;\">Website : www.nuoctayrua.vn - www.tayruanewsun.com</span></li>\n</ul>\n[button text=\"Gọi đặt hàng: 0909000000\" letter_case=\"lowercase\" radius=\"99\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n<h3>Chính sách đại lý</h3>\n<ul>\n<li><a href=\"#\"><span style=\"font-size: 95%;\">Thanh toán &amp; Vận chuyển</span></a></li>\n<li><a href=\"#\"><span style=\"font-size: 95%;\">Chính sách đại lý</span></a></li>\n<li><a href=\"#\"><span style=\"font-size: 95%;\">Tri ân khách hàng</span></a></li>\n<li><a href=\"#\">Tin tức và bài viết</a></li>\n<li><a href=\"#\">Tin tuyển dụng nhân viên</a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n<h3>Fanpage Facebook</h3>\n<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"200\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2018-11-28 17:59:45","2018-11-28 10:59:45","","0","https://tppone.com/demo/nuocgiat/?post_type=blocks&#038;p=332","0","blocks","","0"),
("334","1","2018-11-28 17:41:17","2018-11-28 10:41:17","","footer-bg","","inherit","open","closed","","footer-bg","","","2018-11-28 17:41:17","2018-11-28 10:41:17","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/footer-bg.jpg","0","attachment","image/jpeg","0"),
("471","1","2018-11-28 20:08:34","2018-11-28 13:08:34","","slider2","","inherit","open","closed","","slider2-2","","","2018-11-28 20:08:34","2018-11-28 13:08:34","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2018/11/slider2-1.jpg","0","attachment","image/jpeg","0"),
("476","1","2018-11-28 20:10:39","2018-11-28 13:10:39","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]\nMẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\n[your-name] <wordpress@nuocgiat.webdemo.com>\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\nwebdemo@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nMẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\nMẫu website nước rửa chén - Thiết kế web Webdemo <wordpress@nuocgiat.webdemo.com>\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\n[your-email]\nReply-To: webdemo@gmail.com\n\n0\n0\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.","Form liên hệ 1","","publish","closed","closed","","form-lien-he-1","","","2018-11-28 20:10:39","2018-11-28 13:10:39","","0","https://tppone.com/demo/nuocgiat/?post_type=wpcf7_contact_form&p=476","0","wpcf7_contact_form","","0"),
("477","1","2018-11-28 20:13:20","2018-11-28 13:13:20","[text* text-324 placeholder \"Họ và tên...\"]\n[email email-866 placeholder \"Địa chỉ email...\"]\n[tel* tel-494 placeholder \"Số điện thoại...\"]\n[text text-3234 placeholder \"Địa chỉ...\"]\n[textarea textarea-82 placeholder \"Nội dung chia sẻ...\"]\n[submit \"Gửi liên hệ\"]\n1\nMẫu website nước rửa chén - Thiết kế web Webdemo\n<wordpress@nuocgiat.webdemo.com>\nwebdemo@gmail.com\nCó người mới liên hệ qua website:\n- Họ và tên: [text-324]\n- Địa chỉ email: [email-866]\n- Điện thoại: [tel-494]\n- Địa chỉ: [text-3234]\n- Nội dung: [textarea-82]\n\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\n\n\n\n\n\nMẫu website nước rửa chén - Thiết kế web Webdemo \"[your-subject]\"\nMẫu website nước rửa chén - Thiết kế web Webdemo <wordpress@nuocgiat.webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nước rửa chén - Thiết kế web Webdemo (https://bizhostvn.com/w/nuocgiat)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Liên hệ","","publish","closed","closed","","lien-he","","","2018-11-28 20:13:20","2018-11-28 13:13:20","","0","https://tppone.com/demo/nuocgiat/?post_type=wpcf7_contact_form&p=477","0","wpcf7_contact_form","","0"),
("483","1","2018-11-28 20:16:54","2018-11-28 13:16:54"," ","","","publish","closed","closed","","483","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","18","https://tppone.com/demo/nuocgiat/?p=483","3","nav_menu_item","","0"),
("484","1","2018-11-28 20:16:54","2018-11-28 13:16:54"," ","","","publish","closed","closed","","484","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","18","https://tppone.com/demo/nuocgiat/?p=484","4","nav_menu_item","","0"),
("485","1","2018-11-28 20:16:54","2018-11-28 13:16:54"," ","","","publish","closed","closed","","485","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","18","https://tppone.com/demo/nuocgiat/?p=485","6","nav_menu_item","","0"),
("486","1","2018-11-28 20:16:54","2018-11-28 13:16:54"," ","","","publish","closed","closed","","486","","","2018-11-28 20:16:54","2018-11-28 13:16:54","","18","https://tppone.com/demo/nuocgiat/?p=486","5","nav_menu_item","","0"),
("532","1","2019-05-06 16:10:18","2019-05-06 09:10:18","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:10:18\"\n    }\n}","","","trash","closed","closed","","8e13508a-57a1-499e-8b5a-9f30a115c2a5","","","2019-05-06 16:10:18","2019-05-06 09:10:18","","0","https://tppone.com/demo/nuocgiat/8e13508a-57a1-499e-8b5a-9f30a115c2a5/","0","customize_changeset","","0"),
("533","1","2019-05-06 17:16:44","2019-05-06 10:16:44","","nuocgiat","","inherit","open","closed","","nuocgiat","","","2019-05-06 17:16:44","2019-05-06 10:16:44","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2019/05/nuocgiat.jpg","0","attachment","image/jpeg","0"),
("534","1","2019-05-06 17:16:55","2019-05-06 10:16:55","","nuocgiat","","inherit","open","closed","","nuocgiat-2","","","2019-05-06 17:16:55","2019-05-06 10:16:55","","0","https://tppone.com/demo/nuocgiat/wp-content/uploads/2019/05/nuocgiat.png","0","attachment","image/png","0"),
("535","1","2019-05-06 17:17:03","2019-05-06 10:17:03","{\n    \"newsuns::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2019/05/nuocgiat.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:16:59\"\n    }\n}","","","trash","closed","closed","","0b49bb0b-0871-4076-9a8d-484e01e9d58e","","","2019-05-06 17:17:03","2019-05-06 10:17:03","","0","https://tppone.com/demo/nuocgiat/?p=535","0","customize_changeset","","0"),
("536","1","2019-05-10 08:58:32","2019-05-10 01:58:32","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-10 08:58:32","2019-05-10 01:58:32","","0","https://bizhostvn.com/w/nuocgiat/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("537","1","2019-05-13 09:11:42","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-13 09:11:42","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/nuocgiat/?p=537","0","post","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","4","0"),
("54","2","0"),
("55","2","0"),
("63","3","0"),
("66","3","0"),
("67","3","0"),
("68","3","0"),
("105","4","0"),
("108","4","0"),
("111","4","0"),
("198","3","0"),
("281","5","0"),
("281","18","0"),
("281","19","0"),
("281","20","0"),
("281","21","0"),
("281","22","0"),
("302","5","0"),
("302","18","0"),
("305","5","0"),
("305","18","0"),
("311","5","0"),
("311","18","0"),
("311","19","0"),
("311","20","0"),
("311","21","0"),
("311","22","0"),
("315","5","0"),
("315","18","0"),
("317","5","0"),
("317","18","0"),
("317","19","0"),
("317","20","0"),
("317","22","0"),
("319","5","0"),
("319","18","0"),
("321","5","0"),
("321","18","0"),
("321","19","0"),
("321","20","0"),
("321","21","0"),
("321","22","0"),
("483","3","0"),
("484","3","0"),
("485","3","0"),
("486","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","0"),
("2","2","nav_menu","","0","2"),
("3","3","nav_menu","","0","9"),
("4","4","category","","0","4"),
("5","5","product_type","","0","8"),
("6","6","product_type","","0","0"),
("7","7","product_type","","0","0"),
("8","8","product_type","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","0"),
("16","16","product_visibility","","0","0"),
("17","17","product_visibility","","0","0"),
("18","18","product_cat","","0","8"),
("19","19","product_cat","","18","4"),
("20","20","product_cat","","18","4"),
("21","21","product_cat","","18","3"),
("22","22","product_cat","","18","4");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","18","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","18","display_type",""),
("3","18","thumbnail_id","0"),
("4","18","product_count_product_cat","8"),
("5","19","order","0"),
("6","19","display_type",""),
("7","19","thumbnail_id","0"),
("8","19","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("9","20","order","0"),
("10","20","display_type",""),
("11","20","thumbnail_id","0"),
("12","21","order","0"),
("13","21","display_type",""),
("14","21","thumbnail_id","0"),
("15","22","order","0"),
("16","22","display_type",""),
("17","22","thumbnail_id","0"),
("18","19","product_count_product_cat","4"),
("19","21","product_count_product_cat","3"),
("20","20","product_count_product_cat","4"),
("21","22","product_count_product_cat","4");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("2","Topbar menu","topbar-menu","0"),
("3","Main menu","main-menu","0"),
("4","Tin tức","tin-tuc","0"),
("5","simple","simple","0"),
("6","grouped","grouped","0"),
("7","variable","variable","0"),
("8","external","external","0"),
("9","exclude-from-search","exclude-from-search","0"),
("10","exclude-from-catalog","exclude-from-catalog","0"),
("11","featured","featured","0"),
("12","outofstock","outofstock","0"),
("13","rated-1","rated-1","0"),
("14","rated-2","rated-2","0"),
("15","rated-3","rated-3","0"),
("16","rated-4","rated-4","0"),
("17","rated-5","rated-5","0"),
("18","Sản phẩm","san-pham","0"),
("19","Nước giặt","nuoc-giat","0"),
("20","Nước rửa bát","nuoc-rua-bat","0"),
("21","Nước lau sàn","nuoc-lau-san","0"),
("22","Nước tẩy công nghiệp","nuoc-tay-cong-nghiep","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:1:{s:64:\"29395b6ee787120bba219386f4b430e52b16ee016e4dcca67b9f665f26dd43fc\";a:4:{s:10:\"expiration\";i:1557886297;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557713497;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","537"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557453022"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("25","1","nav_menu_recently_edited","3"),
("26","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("27","1","dismissed_no_secure_connection_notice","1"),
("28","1","dismissed_no_shipping_methods_notice","1"),
("29","1","wc_last_active","1557705600"),
("31","1","duplicator_pro_created_format","1"),
("43","1","_woocommerce_tracks_anon_id","woo:ilYJkEyGg3nIdF6VXu48i8Po");




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
("1","admin","$P$BgVUtAgF6p2sCEnDxegUuUB7N/w4N81","admin","demobz@gmail.com","","2018-11-28 07:03:25","","0","admin");




CREATE TABLE `bz_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_bz_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `bz_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;