SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w16`
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






CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/mica2\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1544456530,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960662,\"initial_activation_timestamp\":1544456541,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557028038,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=1883 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/mica2","yes"),
("2","home","https://bizhostvn.com/w/mica2","yes"),
("3","blogname","mica2","yes"),
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
("39","recently_edited","a:3:{i:0;s:91:\"/home/tppone/domains/tppone.com/public_html/demo/mica2/wp-content/themes/mica/functions.php\";i:2;s:87:\"/home/tppone/domains/tppone.com/public_html/demo/mica2/wp-content/themes/mica/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","mica","yes"),
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
("79","widget_text","a:5:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:392:\"<iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"500\" frameborder=\"0\" scrolling=\"no\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:392:\"<iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"500\" frameborder=\"0\" scrolling=\"no\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:392:\"<iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"500\" frameborder=\"0\" scrolling=\"no\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:22:\"woocommerce_products-4\";i:1;s:23:\"flatsome_recent_posts-4\";i:2;s:6:\"text-4\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:3:{i:0;s:22:\"woocommerce_products-3\";i:1;s:23:\"flatsome_recent_posts-3\";i:2;s:6:\"text-3\";}s:15:\"product-sidebar\";a:3:{i:0;s:22:\"woocommerce_products-2\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:6:\"text-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:13:{i:1558020800;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558023247;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558024371;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558036579;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558058179;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558058189;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558066464;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558067621;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558068979;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558082799;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("143","new_admin_email","webdemo@gmail.com","yes"),
("150","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557028249;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557028042;s:30:\"db-prefix-change/db_prefix.php\";i:1557026705;}","yes"),
("151","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544242489;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("152","current_theme","mica","yes"),
("153","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 08 Dec 2018 04:14:49 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544242511;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("154","theme_switched","","yes"),
("155","widget_flatsome_recent_posts","a:4:{i:2;a:4:{s:5:\"title\";s:23:\"Bài viết - tin tức\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}i:3;a:4:{s:5:\"title\";s:23:\"Bài viết - tin tức\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}i:4;a:4:{s:5:\"title\";s:23:\"Bài viết - tin tức\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("156","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("158","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("159","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("160","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("161","flatsome_wup_buyer","trannguyen886","yes"),
("162","allowedthemes","a:1:{s:4:\"mica\";b:1;}","no"),
("163","fl_has_child_theme","mica","yes"),
("165","theme_mods_mica","a:158:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:4:\"html\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:1:{i:0;s:3:\"nav\";}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:17:\"left-sidebar-full\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:16;s:7:\"primary\";i:42;s:14:\"primary_mobile\";i:42;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 08 Dec 2018 04:15:15 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.7.2\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:8775:\".nav>li>a>i+span {\n    text-transform: none;\n    font-size: 15px;\n}\n.header-bottom {\n    \n    border-top: 1px solid #efefef;\n    border-bottom: 1px solid #efefef;\n}\nli.html input{height: 45px;\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 4px;\n    box-shadow: 0px 0px grey;}\n.searchform .button.icon {\n    margin: 0;\n    height: 45px;\n    width: 45px;\n    border-top-right-radius: 4px;\n    border-bottom-right-radius: 4px;\n    background: #80c82d;\n}\n.header-button .header-cart-link {    border-width: 1px;\n    padding: 1px 15px;\n    border-radius: 3px;\n    background: #ff890b;}\n.account-item .header-account-title{border-width: 1px;\n    padding: 7px 15px;\n    border-radius: 4px;\n    background: #038018;\n    color: white;}\n.nav-spacing-large>li{margin:0}\n.nav-spacing-large>li a{line-height:30px; padding-left:12px; padding-right:12px}\n.nav-spacing-large>li a:hover, .header-bottom-nav.nav > li.active > a{line-height:30px; background:#6eb51d; color:white; padding:10px; padding-left: 12px;\n    padding-right: 12px;}\n#wide-nav .nav>li.html {\n    font-size: 16px;color: #ffffff;\n    background: #ff890b;\n    line-height: 49px;\n    padding: 0 69px;\n    margin-right: 10px;\n    font-weight: bold;\n}\n#top-bar .nav li a{font-size:15px}\n.nav-dropdown{padding:0;  border:0; border-top:4px solid rgb(128, 200, 45)}\n.nav-dropdown>li>a, .nav-dropdown>li>a:hover{padding:5px 15px}\n.nav-dropdown>li>a:hover{color:gray}\n.slider-section .cot1 p{margin-bottom:5px}\n.slider-section .cot1{background:#f7f7f7}\n.slider-section .cot1 .col-inner{padding:20px 10px}\nbody{word-wrap: break-word;}\n.slider-section .cot1 .social-icons .button{margin-bottom: 6px;}\n.tieu-chi .icon-box{border: 1px dashed #dcdcdc;\n    padding: 10px;\n    border-radius: 4px;}\n.san-pham .row1 .large-12 .col-inner{    border: 1px solid #f7f7f7;\n    border-radius: 3px;\n	padding: 15px;}\n.san-pham .row1 .large-columns-6 .col-inner {border:0; padding:0}.section-title-container {\n    margin-bottom: 5px;\n}.section-title a {\n    font-size: 14px;\n      font-weight: normal;\n    color: gray;\n}.widget .is-divider{display:none}\n.san-pham .add-to-cart-button a, .archive .product-small .add-to-cart-button a {\n    background: white;\n    border-radius: 3px;\n    border: 1px solid #80c82d;\n    padding: 0px 19px;\n    color: #80c82d;\n    text-transform: none;\n    font-weight: normal;\n    font-size: 14px;\n}\n.san-pham .price-wrapper{display: block;\nmargin-top: 10px;}\n.san-pham .price-wrapper .price span{    font-size: 16px;\n    color: #80c82d;}\n.san-pham .row1 .col{padding-bottom:5px}\n.tin-tuc .post-item .box-text .post-title{color:black}\n.tin-tuc .post-item .box-image img{border-radius:8px}\n.tin-tuc .col, .nhan-tin .col{padding-bottom:0}\n.nhan-tin .form-flat input:not([type=\"submit\"]){border-radius: 4px;\n    height: 45px;background:white}\n.nhan-tin input[type=\'submit\']{    background-color: #80c82d;\n    height: 41px;\n    border-radius: 4px;}\n.tin-tuc .post-item .box-text{padding-right:0;}\n.tin-tuc .post-item{padding-bottom:15px}\n.single-product #product-sidebar, .blog-archive .post-sidebar, .blog-single .post-sidebar{flex-basis:26.2%; max-width:26.2%; padding-right:15px}\n.single-product .large-9, .blog-archive .large-9, .blog-single .large-9{flex-basis:73.8%; max-width:73.8%; padding-left:15px}\n.blog-archive {padding-top:0}\n.product-main{padding-top:0}\n.blog-archive .post-sidebar{border-right: 1px solid #f7f7f7}\n.blog-archive .row-header{margin-bottom:20px}\n.archive-page-header .large-12{    padding-bottom: 15px;\n    text-align: left;\n    letter-spacing: 0;\n    text-transform: none;}\n.archive-page-header .page-title {font-size: 22px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-weight: normal;\n    color: #80c82d;}\n.blog-archive .large-9 .badge.post-date{display:none}\n.recent-blog-posts-li .badge-inner{border-radius:99%}\n.blog-archive .post-item .box-image img{border-radius:10px}\n.blog-archive .taxonomy-description{font-size:15px}\n.single-product .row-header{margin-bottom:20px}\n.breadcrumbs a {\n    font-weight: normal;\n    font-size: 14px;\n    text-transform: none;\n}\n.single-product .product-main .product-title{font-weight: normal;\n    color: #80c82d;\n    font-size: 24px;\n    margin-top: 10px;}\n.single-product .is-divider{display:none}\n.product-info .price{margin-top:0; margin-bottom:15px}\n.single-product .price-wrapper .price{font-size:17px; font-weight:normal}\n.devvn-popup-title, .popup-customer-info-group .devvn-order-btn, a.devvn_buy_now_style{max-width:100%; margin-bottom:10px; background:#80c82d !important}\n.before-add-to-cart-button{background: #fff3c7;\n    padding: 10px;\n    margin-bottom: 15px;\n    border-radius: 4px;\n    border: 1px dashed #f59000;\n    color: #ec6000;\n    font-size: 15px;}\n.form-dang-ky-sp{ text-align:center; background: #d00055;\n    padding: 10px;\n    border-radius: 4px;\n    background-image: linear-gradient(to right, #9d0069 , #fc0043);\n    color: white;\n    font-size: 14px;\n    margin-bottom: 15px;}\n.form-dang-ky-sp h3{text-align:center; color:white; font-size:19px}\n.form-dang-ky-sp .wpcf7{margin-top:15px}\n.form-dang-ky-sp .form-flat input:not([type=\"submit\"]){background:white; border-radius:4px}\n.form-dang-ky-sp input[type=\'submit\']{    margin-right: 0;\n    background: #ff890b;\n    border-radius: 4px;}\n.product-tabs li a{color: rgb(128, 200, 45) !important;\n    font-size: 18px;}\n.product-footer .woocommerce-tabs{border-top: 1px solid #80c82d;}\n.nav-line-bottom>li>a:before, .nav-line-grow>li>a:before, .nav-line>li>a:before{background-color: #80c82d;}\n.tabbed-content .tab-panels{font-size:15px}\n.related h3{text-transform: none;\n    letter-spacing: 0;\n    color: #80c82d;\n}\n.product-footer .woocommerce-tabs{padding-bottom:0 !important}\n.related .product-small .product-title a{ margin-top:0; font-size:14px}\n.related .product-small .price span{color:#80c82d}\n.related .product-small .product-title{margin-top:0 !important}\n.related .product-small  .box-text{padding-top:0}\n.related .product-small .add-to-cart-button .button {    margin-top: 1em;\n    border: 1px solid #80c82d;\n    border-radius: 3px;\n    background: white;\n    color: #80c82d;\n    text-transform: none;\n    font-weight: normal;\n    font-size: 13px;\n    padding: 0 16px;\n}.related .product-small .box-text{padding-top:0}\nspan.widget-title {\n    font-size: 1em;\n    font-weight: 600;\n    background: #80c82d;\n    display: block;\n    padding: 15px;\n    color: white;\n    letter-spacing: 0;\n    text-align: center;\n}\n.product_list_widget{border: 1px solid #ececec;\n    padding: 10px;}\n.widget_products .product-title{font-size:15px !important; color:black !important}\n.widget_products span.amount{color:#80c82d !important}\n.flatsome_recent_posts ul{    border: 1px solid #ececec;\n    padding: 10px;}\n.recent-blog-posts a{font-size:15px; color:black;}\n.recent-blog-posts a:hover{color:#80c82d}\n.flatsome_recent_posts .badge-outline .badge-inner{border-radius:99%}\n.product_meta>span{font-size:15px}\n.archive .page-title-inner{padding-top:0; background: #f7f7f7;\n    padding: 10px 15px;\n    margin-bottom: 17px;\n    border-radius: 4px;\n}.category-page-row {\n    padding-top: 20px;\n}\n.archive .product-small .price span{font-size:16px; color: #80c82d}\n.archive .product-small .product-title{margin-bottom:6px}\n\n.archive .shop-page-title{font-size: 22px;\n    color: #80c82d;\n    font-weight: normal;\n    margin-bottom: 0;}\n.breadcrumbs {\n    text-transform: none;\n    color: #80c82d;\n    font-weight: normal;\n    letter-spacing: 0px;\n    padding: 0;\n    font-size: 15px;\n}\n.woocommerce-result-count, .woocommerce-ordering{font-size:15px}\n.blog-single {padding-top:0}\n.blog-single .row-header{margin-bottom:15px}\n.blog-single .entry-header-text{padding-bottom:0}\n.blog-single .is-divider{display:none}\n.blog-single .entry-title{    font-size: 25px;\n    font-weight: normal;\n    color: #80c82d;}\n.blog-single .entry-content{font-size:15px}\ndiv.list-news{    border: 1px solid #ececec;\n    border-radius: 4px;\n    padding: 10px;}\n.list-news h3{font-size: 19px;\n    font-weight: normal;\n    color: #80c82d;}\ndiv.list-news ul{display: inline-block;}\ndiv.list-news ul li{width:25%; float:left; margin:0; list-style:none; padding:0 5px}\ndiv.list-news ul li a{font-size:15px}\ndiv.list-news ul li .relative-post-title{line-height:20px; margin-top:10px}\ndiv.list-news ul li a img{height:142px; object-fit: cover}\n.title-news{    margin-top: 20px;\n    font-size: 19px;\n    font-weight: normal;\n    color: #80c82d;}\n.newpost ul li{font-size:15px; color:black}\n.newpost{background: #f7f7f7;\n    padding: 10px;\n    border-radius: 4px;}\n.newpost ul{margin-left:20px; margin-bottom:0}\n.newpost ul li a{font-size:15px; font-weight:normal}\n.newpost ul li a:hover{color:#80c82d}\nbody{word-wrap: break-word;}\n.header-wrapper.stuck #wide-nav .nav>li.html{display:none}\";s:22:\"html_custom_css_tablet\";s:588:\".slider-section .cot1, #top-bar, .tin-tuc .post-item .from_the_blog_excerpt, .nhan-tin .medium-2, .blog-archive .post-sidebar, .blog-single .post-sidebar  {display:none}\n.slider-section .medium-9, .single-product .large-9, .blog-archive .large-9,  .blog-single .large-9{flex-basis:100%; max-width:100%}\n.san-pham .large-columns-6 .col{flex-basis:25%; max-width:25%}\n.related .col.product-small{flex-basis:33.33%; max-width:33.33%}\n.san-pham .row1 .large-12 .col-inner{padding:0; border:0}\n.tin-tuc .post-item, .nhan-tin .medium-3, .single-product .large-6 {flex-basis:50%; max-width:50%}\n\";s:22:\"html_custom_css_mobile\";s:938:\".san-pham .row1 .large-12 .col-inner{padding:0; border:0;}\n.tin-tuc .post-item, .blog-archive .post-item{flex-basis:50%; max-width:50%}\n.blog-archive .post-item {padding-bottom:0}\n.blog-archive .post-item .from_the_blog_excerpt, .blog-archive .post-item .box-blog-post .is-divider, .blog-archive .post-sidebar, .blog-single .post-sidebar, .slider-section .cot1 {display:none}\ndiv.list-news ul li{width:50%}\ndiv.list-news{padding:0;  border:0}\n\n.nhan-tin .medium-2, .nhan-tin .medium-3{display:none}\n.nhan-tin input[type=\'submit\']{display:block; width:100%; margin-left:0}\n.nhan-tin .flex-col{margin-left:0}\n.footer-section, .absolute-footer{font-size:13px}\n.tin-tuc .post-item .box-text .from_the_blog_excerpt{display:none}\n.row-header{display:none}\n.single-product .large-9, .blog-archive .large-9, .blog-single .large-9{flex-basis:100%; max-width:100%}\n.single-product .large-9 .large-6, .single-product .product-info {padding-bottom:0}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1300\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"249\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#f4f4f4\";s:13:\"nav_style_top\";s:0:\"\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"108\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#80c82d\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:5:\"large\";s:20:\"nav_uppercase_bottom\";b:0;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:7:\"#ffffff\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#ffffff\";s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_email\";s:17:\"webdemo@gmail.com\";s:19:\"contact_email_label\";s:17:\"webdemo@gmail.com\";s:13:\"contact_hours\";s:0:\"\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:5:\"large\";s:14:\"header_divider\";b:0;s:9:\"site_logo\";s:66:\"https://bizhostvn.com/w/mica2/wp-content/uploads/2019/05/mica2.png\";s:12:\"logo_padding\";s:1:\"1\";s:19:\"header_search_width\";s:2:\"79\";s:15:\"cart_icon_style\";s:10:\"fill-round\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:11:\"topbar_left\";s:25:\"HỖ TRỢ TRỰC TUYẾN\";s:14:\"dropdown_arrow\";b:0;s:17:\"dropdown_nav_size\";s:3:\"100\";s:14:\"dropdown_style\";s:6:\"simple\";s:16:\"category_sidebar\";s:12:\"left-sidebar\";s:27:\"category_force_image_height\";b:1;s:21:\"category_image_height\";s:3:\"145\";s:16:\"products_pr_page\";s:2:\"36\";s:18:\"category_row_count\";s:1:\"4\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:19:\"category_show_title\";b:1;s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:6:\"normal\";s:13:\"product_hover\";s:4:\"zoom\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:20:\"product_box_category\";b:0;s:17:\"add_to_cart_style\";s:4:\"flat\";s:20:\"header_height_sticky\";s:2:\"70\";s:13:\"header_sticky\";b:0;s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"50\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:16:\"footer_left_text\";s:173:\"Copyright [ux_current_year] © Thiết kế bởi <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_align\";s:6:\"center\";s:19:\"product_image_width\";s:1:\"6\";s:21:\"product_next_prev_nav\";b:0;s:9:\"tab_title\";s:20:\"Lời giới thiệu\";s:11:\"tab_content\";s:1906:\"<p>Xin chào bạn – độc giả của <a href=\"https://Webdemo.com\">Webdemo.com</a>,</p>\n<p>Lời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.</p>\n<p><a href=\"http://Webdemo.com\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi&nbsp;lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập,&nbsp;làm việc.</p>\n<p>Sau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website&nbsp;trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo&nbsp;đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.</p>\n<p>Tự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <span style=\"color: #ff0000;\"><strong>Thiết kế đồ họa</strong></span>&nbsp;và <span style=\"color: #ff0000;\"><strong>Thiết kế Website chuyên nghiệp<span style=\"color: #000000;\">&nbsp;</span></strong><span style=\"color: #000000;\"><span style=\"color: #333333;\">từ đầu năm 2017</span>.</span><strong>&nbsp;</strong></span>Sự ủng hộ và tin tưởng của khách hàng sẽ&nbsp;trở thành nguồn cảm hứng&nbsp;lớn lao cho Webdemo&nbsp;trong quá trình&nbsp;phác họa những ý tưởng thiết kế được trở thành hiện thực.</p>\n<p>Xin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.</p>\n<p>Trân trọng./.</p>\n<p>Admin</p>\";s:23:\"html_before_add_to_cart\";s:209:\"<div class=\"before-add-to-cart-button\">\nMọi nhu cầu thiết kế và gia công thẻ tên, biển chức danh, quà tặng,... vui lòng liên hệ số hotline:  để nhận báo giá trực tiếp</div>\";s:22:\"html_after_add_to_cart\";s:261:\"<div class=\"form-dang-ky-sp\">\n<h3>Nhận thông báo khuyến mại</h3>\n<span>Đăng ký địa chỉ email để nhận tin khuyến mại mới nhất về sản phẩm này</span>\n[contact-form-7 id=\"302\" title=\"Đăng ký nhận tin khuyến mại\"]\n</div>\";s:16:\"related_products\";s:4:\"grid\";s:23:\"related_products_pr_row\";s:1:\"4\";s:20:\"max_related_products\";s:1:\"8\";s:10:\"grid_style\";s:5:\"grid2\";s:11:\"blog_layout\";s:12:\"left-sidebar\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:17:\"blog_show_excerpt\";b:1;s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:16:\"blog_post_layout\";s:12:\"left-sidebar\";s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:1;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;}","yes"),
("167","envato_setup_complete","1544242524","yes"),
("177","woocommerce_store_address","Tầng 2, Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Tập thể Đại học Sư phạm Nghệ thuật Trung Ương","yes"),
("178","woocommerce_store_address_2","Hà Đông","yes"),
("179","woocommerce_store_city","Hà Nội","yes"),
("180","woocommerce_default_country","VN:*","yes"),
("181","woocommerce_store_postcode","100000","yes"),
("182","woocommerce_allowed_countries","all","yes"),
("183","woocommerce_all_except_countries","","yes"),
("184","woocommerce_specific_allowed_countries","","yes"),
("185","woocommerce_ship_to_countries","","yes"),
("186","woocommerce_specific_ship_to_countries","","yes"),
("187","woocommerce_default_customer_address","geolocation","yes"),
("188","woocommerce_calc_taxes","no","yes"),
("189","woocommerce_enable_coupons","yes","yes"),
("190","woocommerce_calc_discounts_sequentially","no","no"),
("191","woocommerce_currency","VND","yes"),
("192","woocommerce_currency_pos","left","yes"),
("193","woocommerce_price_thousand_sep",",","yes"),
("194","woocommerce_price_decimal_sep",".","yes"),
("195","woocommerce_price_num_decimals","2","yes"),
("196","woocommerce_shop_page_id","25","yes"),
("197","woocommerce_cart_redirect_after_add","no","yes"),
("198","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("199","woocommerce_placeholder_image","550","yes"),
("200","woocommerce_weight_unit","kg","yes"),
("201","woocommerce_dimension_unit","cm","yes"),
("202","woocommerce_enable_reviews","no","yes"),
("203","woocommerce_review_rating_verification_label","yes","no"),
("204","woocommerce_review_rating_verification_required","no","no"),
("205","woocommerce_enable_review_rating","yes","yes"),
("206","woocommerce_review_rating_required","yes","no"),
("207","woocommerce_manage_stock","yes","yes"),
("208","woocommerce_hold_stock_minutes","60","no"),
("209","woocommerce_notify_low_stock","yes","no"),
("210","woocommerce_notify_no_stock","yes","no"),
("211","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("212","woocommerce_notify_low_stock_amount","2","no"),
("213","woocommerce_notify_no_stock_amount","0","yes"),
("214","woocommerce_hide_out_of_stock_items","no","yes"),
("215","woocommerce_stock_format","","yes"),
("216","woocommerce_file_download_method","force","no"),
("217","woocommerce_downloads_require_login","no","no"),
("218","woocommerce_downloads_grant_access_after_payment","yes","no"),
("219","woocommerce_prices_include_tax","no","yes"),
("220","woocommerce_tax_based_on","shipping","yes"),
("221","woocommerce_shipping_tax_class","inherit","yes"),
("222","woocommerce_tax_round_at_subtotal","no","yes"),
("223","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("224","woocommerce_tax_display_shop","excl","yes"),
("225","woocommerce_tax_display_cart","excl","yes"),
("226","woocommerce_price_display_suffix","","yes"),
("227","woocommerce_tax_total_display","itemized","no"),
("228","woocommerce_enable_shipping_calc","yes","no"),
("229","woocommerce_shipping_cost_requires_address","no","yes"),
("230","woocommerce_ship_to_destination","billing","no"),
("231","woocommerce_shipping_debug_mode","no","yes"),
("232","woocommerce_enable_guest_checkout","yes","no"),
("233","woocommerce_enable_checkout_login_reminder","no","no"),
("234","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("235","woocommerce_enable_myaccount_registration","no","no"),
("236","woocommerce_registration_generate_username","yes","no"),
("237","woocommerce_registration_generate_password","yes","no"),
("238","woocommerce_erasure_request_removes_order_data","no","no"),
("239","woocommerce_erasure_request_removes_download_data","no","no"),
("240","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("241","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("242","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("243","woocommerce_trash_pending_orders","","no"),
("244","woocommerce_trash_failed_orders","","no"),
("245","woocommerce_trash_cancelled_orders","","no"),
("246","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("247","woocommerce_email_from_name","Mẫu website quảng cáo &#8211; Thiết kế web Webdemo","no"),
("248","woocommerce_email_from_address","webdemo@gmail.com","no");
INSERT INTO bz_options VALUES
("249","woocommerce_email_header_image","","no"),
("250","woocommerce_email_footer_text","{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("251","woocommerce_email_base_color","#96588a","no"),
("252","woocommerce_email_background_color","#f7f7f7","no"),
("253","woocommerce_email_body_background_color","#ffffff","no"),
("254","woocommerce_email_text_color","#3c3c3c","no"),
("255","woocommerce_cart_page_id","26","yes"),
("256","woocommerce_checkout_page_id","27","yes"),
("257","woocommerce_myaccount_page_id","28","yes"),
("258","woocommerce_terms_page_id","","no"),
("259","woocommerce_force_ssl_checkout","no","yes"),
("260","woocommerce_unforce_ssl_checkout","no","yes"),
("261","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("262","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("263","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("264","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("265","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("266","woocommerce_myaccount_orders_endpoint","orders","yes"),
("267","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("268","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("269","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("270","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("271","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("272","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("273","woocommerce_logout_endpoint","customer-logout","yes"),
("274","woocommerce_api_enabled","no","yes"),
("275","woocommerce_single_image_width","600","yes"),
("276","woocommerce_thumbnail_image_width","300","yes"),
("277","woocommerce_checkout_highlight_required_fields","yes","yes"),
("278","woocommerce_demo_store","no","no"),
("279","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("280","current_theme_supports_woocommerce","yes","yes"),
("281","woocommerce_queue_flush_rewrite_rules","no","yes"),
("284","default_product_cat","15","yes"),
("288","woocommerce_db_version","3.5.2","yes"),
("289","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("291","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("292","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("293","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("294","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("295","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("296","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("297","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("298","widget_woocommerce_products","a:4:{i:2;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:8;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:3;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:8;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:4;a:7:{s:5:\"title\";s:31:\"Sản phẩm mới cập nhật\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("299","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("300","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("301","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("302","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("303","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","woocommerce_meta_box_errors","a:0:{}","yes"),
("314","woocommerce_product_type","physical","yes"),
("315","woocommerce_allow_tracking","no","yes"),
("316","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("317","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("318","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("334","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("349","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("381","product_cat_children","a:4:{i:15;a:4:{i:0;i:17;i:1;i:18;i:2;i:19;i:3;i:20;}i:21;a:3:{i:0;i:22;i:1;i:23;i:2;i:24;}i:25;a:9:{i:0;i:26;i:1;i:27;i:2;i:28;i:3;i:29;i:4;i:30;i:5;i:31;i:6;i:32;i:7;i:33;i:8;i:34;}i:35;a:6:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;i:5;i:41;}}","yes"),
("595","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1544281392;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("805","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:17:\"Đặt hàng ngay\";s:12:\"button_text2\";s:43:\"Liên hệ hotline:  nhận ưu đãi hơn!\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"Đặt mua %s\";s:10:\"popup_mess\";s:143:\"Bạn vui lòng nhập đúng số điện thoại để chúng tôi sẽ gọi xác nhận đơn hàng trước khi giao hàng. Xin cảm ơn!\";s:12:\"popup_sucess\";s:644:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">Đặt hàng thành công!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">Mã đơn hàng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">DevVN SHOP sẽ liên hệ với bạn trong 12h tới. Cám ơn bạn đã cho chúng tôi cơ hội được phục vụ.\n<strong>Hotline:</strong> 0972939830</p>\n<p class=\"clearfix\"><strong>Ghi chú: </strong>Đơn hàng chỉ có hiệu lực trong vòng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"Đặt hàng thất bại. Vui lòng đặt hàng lại. Xin cảm ơn!\";s:17:\"out_of_stock_mess\";s:12:\"Hết hàng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("893","category_children","a:0:{}","yes"),
("1373","duplicator_pro_package_active","{\"Created\":\"2018-12-10 15:43:47\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.32\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20181210_mauwebsitequangcaothietke\",\"Hash\":\"bbebc1869b9dfa913355_20181210154347\",\"NameHash\":\"20181210_mauwebsitequangcaothietke_bbebc1869b9dfa913355_20181210154347\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/mica2\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20181210_mauwebsitequangcaothietke_bbebc1869b9dfa913355_20181210154347_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\",\"Size\":96022526,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/mica2\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web48\",\"tablesBaseCount\":30,\"tablesFinalCount\":30,\"tablesRowCount\":2332,\"tablesSizeOnDisk\":3506176,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1376","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1396","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960699;}","no"),
("1406","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1407","_transient_as_comment_count","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1523","db_upgraded","","yes"),
("1538","can_compress_scripts","0","no"),
("1545","dbprefix_old_dbprefix","mc_","yes"),
("1546","dbprefix_new","bz_","yes"),
("1583","_transient_timeout_wc_low_stock_count","1559620508","no"),
("1584","_transient_wc_low_stock_count","0","no"),
("1585","_transient_timeout_wc_outofstock_count","1559620508","no"),
("1586","_transient_wc_outofstock_count","0","no"),
("1651","_transient_shipping-transient-version","1557133609","yes"),
("1656","_transient_timeout_wc_shipping_method_count_1_1557133609","1559729588","no"),
("1657","_transient_wc_shipping_method_count_1_1557133609","0","no"),
("1673","recovery_keys","a:0:{}","yes"),
("1770","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1773","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1774","woocommerce_show_marketplace_suggestions","yes","no"),
("1775","woocommerce_version","3.6.2","yes"),
("1777","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("1782","_transient_timeout_wc_shipping_method_count_legacy","1560046464","no"),
("1783","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557133609\";s:5:\"value\";i:0;}","no"),
("1830","_transient_timeout_wc_term_counts","1560345111","no"),
("1831","_transient_wc_term_counts","a:6:{i:17;s:1:\"6\";i:15;s:2:\"18\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:36;s:1:\"6\";i:35;s:1:\"6\";}","no"),
("1877","_site_transient_timeout_theme_roots","1558015270","no"),
("1878","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:4:\"mica\";s:7:\"/themes\";}","no"),
("1879","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558013479;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1880","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558013480;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:4:\"mica\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1881","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558013482;s:7:\"checked\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("23","15","_wp_attached_file","2018/12/logo.png"),
("24","15","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2018/12/logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("25","16","_wp_attached_file","2018/12/cropped-logo.png"),
("26","16","_wp_attachment_context","site-icon"),
("27","16","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/12/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("69","2","_edit_lock","1544261350:1"),
("70","2","_edit_last","1"),
("71","2","_footer","normal"),
("72","42","_edit_last","1"),
("73","42","_footer","normal"),
("74","42","_wp_page_template","default"),
("75","42","_edit_lock","1544243482:1"),
("76","44","_edit_last","1"),
("77","44","_footer","normal"),
("78","44","_wp_page_template","default"),
("79","44","_edit_lock","1544243488:1"),
("80","46","_edit_last","1"),
("81","46","_footer","normal"),
("82","46","_wp_page_template","default"),
("83","46","_edit_lock","1544243501:1"),
("84","48","_menu_item_type","post_type"),
("85","48","_menu_item_menu_item_parent","0"),
("86","48","_menu_item_object_id","46"),
("87","48","_menu_item_object","page"),
("88","48","_menu_item_target",""),
("89","48","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("90","48","_menu_item_xfn",""),
("91","48","_menu_item_url",""),
("93","49","_menu_item_type","post_type"),
("94","49","_menu_item_menu_item_parent","0"),
("95","49","_menu_item_object_id","44"),
("96","49","_menu_item_object","page"),
("97","49","_menu_item_target",""),
("98","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("99","49","_menu_item_xfn",""),
("100","49","_menu_item_url",""),
("102","50","_menu_item_type","post_type"),
("103","50","_menu_item_menu_item_parent","0"),
("104","50","_menu_item_object_id","28"),
("105","50","_menu_item_object","page"),
("106","50","_menu_item_target",""),
("107","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("108","50","_menu_item_xfn",""),
("109","50","_menu_item_url",""),
("110","50","_menu_item_orphaned","1544243673"),
("111","51","_menu_item_type","post_type"),
("112","51","_menu_item_menu_item_parent","0"),
("113","51","_menu_item_object_id","27"),
("114","51","_menu_item_object","page"),
("115","51","_menu_item_target",""),
("116","51","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("117","51","_menu_item_xfn",""),
("118","51","_menu_item_url",""),
("119","51","_menu_item_orphaned","1544243673"),
("120","52","_menu_item_type","post_type"),
("121","52","_menu_item_menu_item_parent","0"),
("122","52","_menu_item_object_id","42"),
("123","52","_menu_item_object","page"),
("124","52","_menu_item_target",""),
("125","52","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("126","52","_menu_item_xfn",""),
("127","52","_menu_item_url",""),
("129","53","_menu_item_type","post_type"),
("130","53","_menu_item_menu_item_parent","0"),
("131","53","_menu_item_object_id","2"),
("132","53","_menu_item_object","page"),
("133","53","_menu_item_target",""),
("134","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("135","53","_menu_item_xfn",""),
("136","53","_menu_item_url",""),
("138","54","_menu_item_type","post_type"),
("139","54","_menu_item_menu_item_parent","0"),
("140","54","_menu_item_object_id","44"),
("141","54","_menu_item_object","page"),
("142","54","_menu_item_target",""),
("143","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("144","54","_menu_item_xfn",""),
("145","54","_menu_item_url",""),
("147","55","_menu_item_type","custom"),
("148","55","_menu_item_menu_item_parent","0"),
("149","55","_menu_item_object_id","55"),
("150","55","_menu_item_object","custom"),
("151","55","_menu_item_target",""),
("152","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("153","55","_menu_item_xfn",""),
("154","55","_menu_item_url","/danh-muc/the-ten/"),
("156","56","_menu_item_type","custom"),
("157","56","_menu_item_menu_item_parent","55"),
("158","56","_menu_item_object_id","56"),
("159","56","_menu_item_object","custom"),
("160","56","_menu_item_target",""),
("161","56","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("162","56","_menu_item_xfn",""),
("163","56","_menu_item_url","/danh-muc/the-ten/bien-chuc-danh/"),
("165","57","_menu_item_type","custom"),
("166","57","_menu_item_menu_item_parent","55"),
("167","57","_menu_item_object_id","57"),
("168","57","_menu_item_object","custom");
INSERT INTO bz_postmeta VALUES
("169","57","_menu_item_target",""),
("170","57","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("171","57","_menu_item_xfn",""),
("172","57","_menu_item_url","/danh-muc/the-ten/huy-hieu/"),
("174","58","_menu_item_type","custom"),
("175","58","_menu_item_menu_item_parent","55"),
("176","58","_menu_item_object_id","58"),
("177","58","_menu_item_object","custom"),
("178","58","_menu_item_target",""),
("179","58","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("180","58","_menu_item_xfn",""),
("181","58","_menu_item_url","/danh-muc/the-ten/the-ten-nhan-vien/"),
("183","59","_menu_item_type","custom"),
("184","59","_menu_item_menu_item_parent","55"),
("185","59","_menu_item_object_id","59"),
("186","59","_menu_item_object","custom"),
("187","59","_menu_item_target",""),
("188","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("189","59","_menu_item_xfn",""),
("190","59","_menu_item_url","/danh-muc/the-ten/the-thay-ten-nhan-vien/"),
("192","60","_menu_item_type","custom"),
("193","60","_menu_item_menu_item_parent","0"),
("194","60","_menu_item_object_id","60"),
("195","60","_menu_item_object","custom"),
("196","60","_menu_item_target",""),
("197","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("198","60","_menu_item_xfn",""),
("199","60","_menu_item_url","/danh-muc/an-pham-van-phong/"),
("201","61","_menu_item_type","custom"),
("202","61","_menu_item_menu_item_parent","60"),
("203","61","_menu_item_object_id","61"),
("204","61","_menu_item_object","custom"),
("205","61","_menu_item_target",""),
("206","61","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("207","61","_menu_item_xfn",""),
("208","61","_menu_item_url","/danh-muc/an-pham-van-phong/brochure/"),
("210","62","_menu_item_type","custom"),
("211","62","_menu_item_menu_item_parent","60"),
("212","62","_menu_item_object_id","62"),
("213","62","_menu_item_object","custom"),
("214","62","_menu_item_target",""),
("215","62","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("216","62","_menu_item_xfn",""),
("217","62","_menu_item_url","/danh-muc/an-pham-van-phong/card-visit/"),
("219","63","_menu_item_type","custom"),
("220","63","_menu_item_menu_item_parent","60"),
("221","63","_menu_item_object_id","63"),
("222","63","_menu_item_object","custom"),
("223","63","_menu_item_target",""),
("224","63","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("225","63","_menu_item_xfn",""),
("226","63","_menu_item_url","/danh-muc/an-pham-van-phong/kep-file/"),
("228","64","_menu_item_type","custom"),
("229","64","_menu_item_menu_item_parent","60"),
("230","64","_menu_item_object_id","64"),
("231","64","_menu_item_object","custom"),
("232","64","_menu_item_target",""),
("233","64","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("234","64","_menu_item_xfn",""),
("235","64","_menu_item_url","/danh-muc/an-pham-van-phong/phieu-thu-phieu-chi/"),
("237","65","_menu_item_type","custom"),
("238","65","_menu_item_menu_item_parent","60"),
("239","65","_menu_item_object_id","65"),
("240","65","_menu_item_object","custom"),
("241","65","_menu_item_target",""),
("242","65","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("243","65","_menu_item_xfn",""),
("244","65","_menu_item_url","/danh-muc/an-pham-van-phong/phieu-xuat-kho/"),
("246","66","_menu_item_type","custom"),
("247","66","_menu_item_menu_item_parent","60"),
("248","66","_menu_item_object_id","66"),
("249","66","_menu_item_object","custom"),
("250","66","_menu_item_target",""),
("251","66","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("252","66","_menu_item_xfn",""),
("253","66","_menu_item_url","/danh-muc/an-pham-van-phong/phong-bi-thu/"),
("255","67","_menu_item_type","custom"),
("256","67","_menu_item_menu_item_parent","60"),
("257","67","_menu_item_object_id","67"),
("258","67","_menu_item_object","custom"),
("259","67","_menu_item_target",""),
("260","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("261","67","_menu_item_xfn",""),
("262","67","_menu_item_url","/danh-muc/an-pham-van-phong/tem-decal-tem-bao-hanh/"),
("264","68","_menu_item_type","custom"),
("265","68","_menu_item_menu_item_parent","60"),
("266","68","_menu_item_object_id","68"),
("267","68","_menu_item_object","custom"),
("268","68","_menu_item_target",""),
("269","68","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("270","68","_menu_item_xfn",""),
("271","68","_menu_item_url","/danh-muc/an-pham-van-phong/tieu-de-thu/"),
("273","69","_menu_item_type","custom"),
("274","69","_menu_item_menu_item_parent","60"),
("275","69","_menu_item_object_id","69"),
("276","69","_menu_item_object","custom"),
("277","69","_menu_item_target",""),
("278","69","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("279","69","_menu_item_xfn",""),
("280","69","_menu_item_url","/danh-muc/an-pham-van-phong/to-roi/");
INSERT INTO bz_postmeta VALUES
("282","70","_menu_item_type","custom"),
("283","70","_menu_item_menu_item_parent","0"),
("284","70","_menu_item_object_id","70"),
("285","70","_menu_item_object","custom"),
("286","70","_menu_item_target",""),
("287","70","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("288","70","_menu_item_xfn",""),
("289","70","_menu_item_url","/danh-muc/qua-tang/"),
("291","71","_menu_item_type","custom"),
("292","71","_menu_item_menu_item_parent","70"),
("293","71","_menu_item_object_id","71"),
("294","71","_menu_item_object","custom"),
("295","71","_menu_item_target",""),
("296","71","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("297","71","_menu_item_xfn",""),
("298","71","_menu_item_url","/danh-muc/qua-tang/dong-ho/"),
("300","72","_menu_item_type","custom"),
("301","72","_menu_item_menu_item_parent","70"),
("302","72","_menu_item_object_id","72"),
("303","72","_menu_item_object","custom"),
("304","72","_menu_item_target",""),
("305","72","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("306","72","_menu_item_xfn",""),
("307","72","_menu_item_url","/danh-muc/qua-tang/gom-su/"),
("309","73","_menu_item_type","custom"),
("310","73","_menu_item_menu_item_parent","70"),
("311","73","_menu_item_object_id","73"),
("312","73","_menu_item_object","custom"),
("313","73","_menu_item_target",""),
("314","73","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("315","73","_menu_item_xfn",""),
("316","73","_menu_item_url","/danh-muc/qua-tang/ly-coc-thuy-tinh/"),
("318","74","_menu_item_type","custom"),
("319","74","_menu_item_menu_item_parent","70"),
("320","74","_menu_item_object_id","74"),
("321","74","_menu_item_object","custom"),
("322","74","_menu_item_target",""),
("323","74","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("324","74","_menu_item_xfn",""),
("325","74","_menu_item_url","/danh-muc/qua-tang/qua-tang-kim-loai/"),
("327","75","_menu_item_type","custom"),
("328","75","_menu_item_menu_item_parent","70"),
("329","75","_menu_item_object_id","75"),
("330","75","_menu_item_object","custom"),
("331","75","_menu_item_target",""),
("332","75","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("333","75","_menu_item_xfn",""),
("334","75","_menu_item_url","/danh-muc/qua-tang/qua-tang-pha-le/"),
("336","76","_menu_item_type","custom"),
("337","76","_menu_item_menu_item_parent","70"),
("338","76","_menu_item_object_id","76"),
("339","76","_menu_item_object","custom"),
("340","76","_menu_item_target",""),
("341","76","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("342","76","_menu_item_xfn",""),
("343","76","_menu_item_url","/danh-muc/qua-tang/qua-tang-quang-cao/"),
("345","77","_menu_item_type","custom"),
("346","77","_menu_item_menu_item_parent","0"),
("347","77","_menu_item_object_id","77"),
("348","77","_menu_item_object","custom"),
("349","77","_menu_item_target",""),
("350","77","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("351","77","_menu_item_xfn",""),
("352","77","_menu_item_url","/danh-muc/the-nhua/"),
("354","78","_menu_item_type","custom"),
("355","78","_menu_item_menu_item_parent","77"),
("356","78","_menu_item_object_id","78"),
("357","78","_menu_item_object","custom"),
("358","78","_menu_item_target",""),
("359","78","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("360","78","_menu_item_xfn",""),
("361","78","_menu_item_url","/danh-muc/the-nhua/the-hoc-sinh-sinh-vien/"),
("363","79","_menu_item_type","custom"),
("364","79","_menu_item_menu_item_parent","77"),
("365","79","_menu_item_object_id","79"),
("366","79","_menu_item_object","custom"),
("367","79","_menu_item_target",""),
("368","79","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("369","79","_menu_item_xfn",""),
("370","79","_menu_item_url","/danh-muc/the-nhua/the-nhua-nhan-vien-pvc/"),
("372","80","_menu_item_type","custom"),
("373","80","_menu_item_menu_item_parent","77"),
("374","80","_menu_item_object_id","80"),
("375","80","_menu_item_object","custom"),
("376","80","_menu_item_target",""),
("377","80","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("378","80","_menu_item_xfn",""),
("379","80","_menu_item_url","/danh-muc/the-nhua/the-vip-the-khach-hang/"),
("381","81","_menu_item_type","taxonomy"),
("382","81","_menu_item_menu_item_parent","0"),
("383","81","_menu_item_object_id","1"),
("384","81","_menu_item_object","category"),
("385","81","_menu_item_target",""),
("386","81","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("387","81","_menu_item_xfn",""),
("388","81","_menu_item_url",""),
("455","119","_wp_attached_file","2018/12/4-1.jpg"),
("456","119","_wp_attachment_metadata","a:5:{s:5:\"width\";i:918;s:6:\"height\";i:362;s:4:\"file\";s:15:\"2018/12/4-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"4-1-768x303.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"4-1-600x237.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"4-1-600x237.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("457","121","_wp_attached_file","2018/12/1.jpg"),
("458","121","_wp_attachment_metadata","a:5:{s:5:\"width\";i:918;s:6:\"height\";i:363;s:4:\"file\";s:13:\"2018/12/1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x304.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"1-600x237.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"1-600x237.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("461","130","_wp_attached_file","2018/12/icon-mail.jpg"),
("462","130","_wp_attachment_metadata","a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:21:\"2018/12/icon-mail.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("465","143","_wp_attached_file","2018/12/zalo.jpg"),
("466","143","_wp_attachment_metadata","a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:16:\"2018/12/zalo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("483","168","_wp_attached_file","2018/12/icon1-01-300x300-1.png"),
("484","168","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2018/12/icon1-01-300x300-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"icon1-01-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"icon1-01-300x300-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"icon1-01-300x300-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("485","172","_wp_attached_file","2018/12/icon2-01-300x288.png"),
("486","172","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:288;s:4:\"file\";s:28:\"2018/12/icon2-01-300x288.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("487","175","_wp_attached_file","2018/12/icon3-01-293x300.png"),
("488","175","_wp_attachment_metadata","a:5:{s:5:\"width\";i:293;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2018/12/icon3-01-293x300.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("493","183","_wc_review_count","0"),
("494","183","_wc_rating_count","a:0:{}"),
("495","183","_wc_average_rating","0"),
("496","183","_edit_last","1"),
("497","183","_edit_lock","1544252804:1"),
("498","184","_wp_attached_file","2018/12/1-1.jpg"),
("499","184","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2018/12/1-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("500","183","_thumbnail_id","184"),
("501","183","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("502","183","_sku",""),
("503","183","_regular_price",""),
("504","183","_sale_price",""),
("505","183","_sale_price_dates_from",""),
("506","183","_sale_price_dates_to",""),
("507","183","total_sales","0"),
("508","183","_tax_status","taxable"),
("509","183","_tax_class",""),
("510","183","_manage_stock","no"),
("511","183","_backorders","no"),
("512","183","_low_stock_amount",""),
("513","183","_sold_individually","no"),
("514","183","_weight",""),
("515","183","_length",""),
("516","183","_width",""),
("517","183","_height",""),
("518","183","_upsell_ids","a:0:{}"),
("519","183","_crosssell_ids","a:0:{}"),
("520","183","_purchase_note",""),
("521","183","_default_attributes","a:0:{}"),
("522","183","_virtual","no"),
("523","183","_downloadable","no"),
("524","183","_product_image_gallery",""),
("525","183","_download_limit","-1"),
("526","183","_download_expiry","-1"),
("527","183","_stock",""),
("528","183","_stock_status","instock"),
("529","183","_product_version","3.5.2"),
("530","183","_price",""),
("531","185","_wc_review_count","0"),
("532","185","_wc_rating_count","a:0:{}"),
("533","185","_wc_average_rating","0"),
("534","185","_edit_last","1"),
("535","185","_edit_lock","1544257009:1"),
("536","186","_wp_attached_file","2018/12/2-1.jpg"),
("537","186","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/2-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("538","185","_thumbnail_id","186"),
("539","185","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("540","185","_sku",""),
("541","185","_regular_price",""),
("542","185","_sale_price",""),
("543","185","_sale_price_dates_from",""),
("544","185","_sale_price_dates_to",""),
("545","185","total_sales","0"),
("546","185","_tax_status","taxable"),
("547","185","_tax_class",""),
("548","185","_manage_stock","no"),
("549","185","_backorders","no"),
("550","185","_low_stock_amount",""),
("551","185","_sold_individually","no"),
("552","185","_weight",""),
("553","185","_length",""),
("554","185","_width",""),
("555","185","_height",""),
("556","185","_upsell_ids","a:0:{}"),
("557","185","_crosssell_ids","a:0:{}"),
("558","185","_purchase_note",""),
("559","185","_default_attributes","a:0:{}"),
("560","185","_virtual","no"),
("561","185","_downloadable","no"),
("562","185","_product_image_gallery",""),
("563","185","_download_limit","-1"),
("564","185","_download_expiry","-1"),
("565","185","_stock",""),
("566","185","_stock_status","instock"),
("567","185","_product_version","3.5.2"),
("568","185","_price",""),
("569","187","_wc_review_count","0"),
("570","187","_wc_rating_count","a:0:{}"),
("571","187","_wc_average_rating","0"),
("572","187","_edit_last","1"),
("573","187","_edit_lock","1544257016:1"),
("574","188","_wp_attached_file","2018/12/3.jpg"),
("575","188","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2018/12/3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("576","187","_thumbnail_id","188"),
("577","187","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("578","187","_sku",""),
("579","187","_regular_price",""),
("580","187","_sale_price",""),
("581","187","_sale_price_dates_from",""),
("582","187","_sale_price_dates_to","");
INSERT INTO bz_postmeta VALUES
("583","187","total_sales","0"),
("584","187","_tax_status","taxable"),
("585","187","_tax_class",""),
("586","187","_manage_stock","no"),
("587","187","_backorders","no"),
("588","187","_low_stock_amount",""),
("589","187","_sold_individually","no"),
("590","187","_weight",""),
("591","187","_length",""),
("592","187","_width",""),
("593","187","_height",""),
("594","187","_upsell_ids","a:0:{}"),
("595","187","_crosssell_ids","a:0:{}"),
("596","187","_purchase_note",""),
("597","187","_default_attributes","a:0:{}"),
("598","187","_virtual","no"),
("599","187","_downloadable","no"),
("600","187","_product_image_gallery",""),
("601","187","_download_limit","-1"),
("602","187","_download_expiry","-1"),
("603","187","_stock",""),
("604","187","_stock_status","instock"),
("605","187","_product_version","3.5.2"),
("606","187","_price",""),
("607","189","_wc_review_count","0"),
("608","189","_wc_rating_count","a:0:{}"),
("609","189","_wc_average_rating","0"),
("610","189","_edit_last","1"),
("611","189","_edit_lock","1544257022:1"),
("612","190","_wp_attached_file","2018/12/4-2.jpg"),
("613","190","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/4-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"4-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("614","189","_thumbnail_id","190"),
("615","189","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("616","189","_sku",""),
("617","189","_regular_price",""),
("618","189","_sale_price",""),
("619","189","_sale_price_dates_from",""),
("620","189","_sale_price_dates_to",""),
("621","189","total_sales","0"),
("622","189","_tax_status","taxable"),
("623","189","_tax_class",""),
("624","189","_manage_stock","no"),
("625","189","_backorders","no"),
("626","189","_low_stock_amount",""),
("627","189","_sold_individually","no"),
("628","189","_weight",""),
("629","189","_length",""),
("630","189","_width",""),
("631","189","_height",""),
("632","189","_upsell_ids","a:0:{}"),
("633","189","_crosssell_ids","a:0:{}"),
("634","189","_purchase_note",""),
("635","189","_default_attributes","a:0:{}"),
("636","189","_virtual","no"),
("637","189","_downloadable","no"),
("638","189","_product_image_gallery",""),
("639","189","_download_limit","-1"),
("640","189","_download_expiry","-1"),
("641","189","_stock",""),
("642","189","_stock_status","instock"),
("643","189","_product_version","3.5.2"),
("644","189","_price",""),
("645","191","_wc_review_count","0"),
("646","191","_wc_rating_count","a:0:{}"),
("647","191","_wc_average_rating","0"),
("648","191","_edit_last","1"),
("649","191","_edit_lock","1544257033:1"),
("650","192","_wp_attached_file","2018/12/5.jpg"),
("651","192","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2018/12/5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("652","191","_thumbnail_id","192"),
("653","191","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("654","191","_sku",""),
("655","191","_regular_price",""),
("656","191","_sale_price",""),
("657","191","_sale_price_dates_from",""),
("658","191","_sale_price_dates_to",""),
("659","191","total_sales","0"),
("660","191","_tax_status","taxable"),
("661","191","_tax_class",""),
("662","191","_manage_stock","no"),
("663","191","_backorders","no"),
("664","191","_low_stock_amount",""),
("665","191","_sold_individually","no"),
("666","191","_weight",""),
("667","191","_length",""),
("668","191","_width",""),
("669","191","_height",""),
("670","191","_upsell_ids","a:0:{}"),
("671","191","_crosssell_ids","a:0:{}"),
("672","191","_purchase_note",""),
("673","191","_default_attributes","a:0:{}"),
("674","191","_virtual","no"),
("675","191","_downloadable","no"),
("676","191","_product_image_gallery",""),
("677","191","_download_limit","-1"),
("678","191","_download_expiry","-1"),
("679","191","_stock",""),
("680","191","_stock_status","instock"),
("681","191","_product_version","3.5.2"),
("682","191","_price","");
INSERT INTO bz_postmeta VALUES
("683","193","_wc_review_count","0"),
("684","193","_wc_rating_count","a:0:{}"),
("685","193","_wc_average_rating","0"),
("686","193","_edit_last","1"),
("687","193","_edit_lock","1544252948:1"),
("688","194","_wp_attached_file","2018/12/6.jpg"),
("689","194","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2018/12/6.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("690","193","_thumbnail_id","194"),
("691","193","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("692","193","_sku",""),
("693","193","_regular_price",""),
("694","193","_sale_price",""),
("695","193","_sale_price_dates_from",""),
("696","193","_sale_price_dates_to",""),
("697","193","total_sales","0"),
("698","193","_tax_status","taxable"),
("699","193","_tax_class",""),
("700","193","_manage_stock","no"),
("701","193","_backorders","no"),
("702","193","_low_stock_amount",""),
("703","193","_sold_individually","no"),
("704","193","_weight",""),
("705","193","_length",""),
("706","193","_width",""),
("707","193","_height",""),
("708","193","_upsell_ids","a:0:{}"),
("709","193","_crosssell_ids","a:0:{}"),
("710","193","_purchase_note",""),
("711","193","_default_attributes","a:0:{}"),
("712","193","_virtual","no"),
("713","193","_downloadable","no"),
("714","193","_product_image_gallery",""),
("715","193","_download_limit","-1"),
("716","193","_download_expiry","-1"),
("717","193","_stock",""),
("718","193","_stock_status","instock"),
("719","193","_product_version","3.5.2"),
("720","193","_price",""),
("721","195","_wc_review_count","0"),
("722","195","_wc_rating_count","a:0:{}"),
("723","195","_wc_average_rating","0"),
("724","195","_edit_last","1"),
("725","195","_edit_lock","1544257041:1"),
("726","196","_wp_attached_file","2018/12/1-2.jpg"),
("727","196","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/1-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("728","195","_thumbnail_id","196"),
("729","195","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("730","195","_sku",""),
("731","195","_regular_price",""),
("732","195","_sale_price",""),
("733","195","_sale_price_dates_from",""),
("734","195","_sale_price_dates_to",""),
("735","195","total_sales","0"),
("736","195","_tax_status","taxable"),
("737","195","_tax_class",""),
("738","195","_manage_stock","no"),
("739","195","_backorders","no"),
("740","195","_low_stock_amount",""),
("741","195","_sold_individually","no"),
("742","195","_weight",""),
("743","195","_length",""),
("744","195","_width",""),
("745","195","_height",""),
("746","195","_upsell_ids","a:0:{}"),
("747","195","_crosssell_ids","a:0:{}"),
("748","195","_purchase_note",""),
("749","195","_default_attributes","a:0:{}"),
("750","195","_virtual","no"),
("751","195","_downloadable","no"),
("752","195","_product_image_gallery",""),
("753","195","_download_limit","-1"),
("754","195","_download_expiry","-1"),
("755","195","_stock",""),
("756","195","_stock_status","instock"),
("757","195","_product_version","3.5.2"),
("758","195","_price",""),
("759","197","_wc_review_count","0"),
("760","197","_wc_rating_count","a:0:{}"),
("761","197","_wc_average_rating","0"),
("762","197","_edit_last","1"),
("763","197","_edit_lock","1544257052:1"),
("764","198","_wp_attached_file","2018/12/2-2.jpg"),
("765","198","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/2-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("766","197","_thumbnail_id","198"),
("767","197","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("768","197","_sku",""),
("769","197","_regular_price",""),
("770","197","_sale_price",""),
("771","197","_sale_price_dates_from",""),
("772","197","_sale_price_dates_to",""),
("773","197","total_sales","0"),
("774","197","_tax_status","taxable"),
("775","197","_tax_class",""),
("776","197","_manage_stock","no"),
("777","197","_backorders","no"),
("778","197","_low_stock_amount",""),
("779","197","_sold_individually","no"),
("780","197","_weight",""),
("781","197","_length",""),
("782","197","_width","");
INSERT INTO bz_postmeta VALUES
("783","197","_height",""),
("784","197","_upsell_ids","a:0:{}"),
("785","197","_crosssell_ids","a:0:{}"),
("786","197","_purchase_note",""),
("787","197","_default_attributes","a:0:{}"),
("788","197","_virtual","no"),
("789","197","_downloadable","no"),
("790","197","_product_image_gallery",""),
("791","197","_download_limit","-1"),
("792","197","_download_expiry","-1"),
("793","197","_stock",""),
("794","197","_stock_status","instock"),
("795","197","_product_version","3.5.2"),
("796","197","_price",""),
("797","199","_wc_review_count","0"),
("798","199","_wc_rating_count","a:0:{}"),
("799","199","_wc_average_rating","0"),
("800","199","_edit_last","1"),
("801","199","_edit_lock","1544257064:1"),
("802","200","_wp_attached_file","2018/12/3-1.jpg"),
("803","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/3-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("804","199","_thumbnail_id","200"),
("805","199","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("806","199","_sku",""),
("807","199","_regular_price",""),
("808","199","_sale_price",""),
("809","199","_sale_price_dates_from",""),
("810","199","_sale_price_dates_to",""),
("811","199","total_sales","0"),
("812","199","_tax_status","taxable"),
("813","199","_tax_class",""),
("814","199","_manage_stock","no"),
("815","199","_backorders","no"),
("816","199","_low_stock_amount",""),
("817","199","_sold_individually","no"),
("818","199","_weight",""),
("819","199","_length",""),
("820","199","_width",""),
("821","199","_height",""),
("822","199","_upsell_ids","a:0:{}"),
("823","199","_crosssell_ids","a:0:{}"),
("824","199","_purchase_note",""),
("825","199","_default_attributes","a:0:{}"),
("826","199","_virtual","no"),
("827","199","_downloadable","no"),
("828","199","_product_image_gallery",""),
("829","199","_download_limit","-1"),
("830","199","_download_expiry","-1"),
("831","199","_stock",""),
("832","199","_stock_status","instock"),
("833","199","_product_version","3.5.2"),
("834","199","_price",""),
("835","201","_wc_review_count","0"),
("836","201","_wc_rating_count","a:0:{}"),
("837","201","_wc_average_rating","0"),
("838","201","_edit_last","1"),
("839","201","_edit_lock","1544257071:1"),
("840","202","_wp_attached_file","2018/12/4-3.jpg"),
("841","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/4-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"4-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("842","201","_thumbnail_id","202"),
("843","201","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("844","201","_sku",""),
("845","201","_regular_price",""),
("846","201","_sale_price",""),
("847","201","_sale_price_dates_from",""),
("848","201","_sale_price_dates_to",""),
("849","201","total_sales","0"),
("850","201","_tax_status","taxable"),
("851","201","_tax_class",""),
("852","201","_manage_stock","no"),
("853","201","_backorders","no"),
("854","201","_low_stock_amount",""),
("855","201","_sold_individually","no"),
("856","201","_weight",""),
("857","201","_length",""),
("858","201","_width",""),
("859","201","_height",""),
("860","201","_upsell_ids","a:0:{}"),
("861","201","_crosssell_ids","a:0:{}"),
("862","201","_purchase_note",""),
("863","201","_default_attributes","a:0:{}"),
("864","201","_virtual","no"),
("865","201","_downloadable","no"),
("866","201","_product_image_gallery",""),
("867","201","_download_limit","-1"),
("868","201","_download_expiry","-1"),
("869","201","_stock",""),
("870","201","_stock_status","instock"),
("871","201","_product_version","3.5.2"),
("872","201","_price",""),
("873","203","_wc_review_count","0"),
("874","203","_wc_rating_count","a:0:{}"),
("875","203","_wc_average_rating","0"),
("876","203","_edit_last","1"),
("877","203","_edit_lock","1544257079:1"),
("878","204","_wp_attached_file","2018/12/10.jpg"),
("879","204","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2018/12/10.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("880","203","_thumbnail_id","204"),
("881","203","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("882","203","_sku","");
INSERT INTO bz_postmeta VALUES
("883","203","_regular_price",""),
("884","203","_sale_price",""),
("885","203","_sale_price_dates_from",""),
("886","203","_sale_price_dates_to",""),
("887","203","total_sales","0"),
("888","203","_tax_status","taxable"),
("889","203","_tax_class",""),
("890","203","_manage_stock","no"),
("891","203","_backorders","no"),
("892","203","_low_stock_amount",""),
("893","203","_sold_individually","no"),
("894","203","_weight",""),
("895","203","_length",""),
("896","203","_width",""),
("897","203","_height",""),
("898","203","_upsell_ids","a:0:{}"),
("899","203","_crosssell_ids","a:0:{}"),
("900","203","_purchase_note",""),
("901","203","_default_attributes","a:0:{}"),
("902","203","_virtual","no"),
("903","203","_downloadable","no"),
("904","203","_product_image_gallery",""),
("905","203","_download_limit","-1"),
("906","203","_download_expiry","-1"),
("907","203","_stock",""),
("908","203","_stock_status","instock"),
("909","203","_product_version","3.5.2"),
("910","203","_price",""),
("911","205","_wc_review_count","0"),
("912","205","_wc_rating_count","a:0:{}"),
("913","205","_wc_average_rating","0"),
("914","205","_edit_last","1"),
("915","205","_edit_lock","1544257086:1"),
("916","206","_wp_attached_file","2018/12/11.jpg"),
("917","206","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2018/12/11.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("918","205","_thumbnail_id","206"),
("919","205","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("920","205","_sku",""),
("921","205","_regular_price",""),
("922","205","_sale_price",""),
("923","205","_sale_price_dates_from",""),
("924","205","_sale_price_dates_to",""),
("925","205","total_sales","0"),
("926","205","_tax_status","taxable"),
("927","205","_tax_class",""),
("928","205","_manage_stock","no"),
("929","205","_backorders","no"),
("930","205","_low_stock_amount",""),
("931","205","_sold_individually","no"),
("932","205","_weight",""),
("933","205","_length",""),
("934","205","_width",""),
("935","205","_height",""),
("936","205","_upsell_ids","a:0:{}"),
("937","205","_crosssell_ids","a:0:{}"),
("938","205","_purchase_note",""),
("939","205","_default_attributes","a:0:{}"),
("940","205","_virtual","no"),
("941","205","_downloadable","no"),
("942","205","_product_image_gallery",""),
("943","205","_download_limit","-1"),
("944","205","_download_expiry","-1"),
("945","205","_stock",""),
("946","205","_stock_status","instock"),
("947","205","_product_version","3.5.2"),
("948","205","_price",""),
("949","207","_wc_review_count","0"),
("950","207","_wc_rating_count","a:0:{}"),
("951","207","_wc_average_rating","0"),
("952","207","_edit_last","1"),
("953","207","_edit_lock","1544253089:1"),
("954","208","_wp_attached_file","2018/12/1-3.jpg"),
("955","208","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/1-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"1-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("956","207","_thumbnail_id","208"),
("957","207","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("958","207","_sku",""),
("959","207","_regular_price",""),
("960","207","_sale_price",""),
("961","207","_sale_price_dates_from",""),
("962","207","_sale_price_dates_to",""),
("963","207","total_sales","0"),
("964","207","_tax_status","taxable"),
("965","207","_tax_class",""),
("966","207","_manage_stock","no"),
("967","207","_backorders","no"),
("968","207","_low_stock_amount",""),
("969","207","_sold_individually","no"),
("970","207","_weight",""),
("971","207","_length",""),
("972","207","_width",""),
("973","207","_height",""),
("974","207","_upsell_ids","a:0:{}"),
("975","207","_crosssell_ids","a:0:{}"),
("976","207","_purchase_note",""),
("977","207","_default_attributes","a:0:{}"),
("978","207","_virtual","no"),
("979","207","_downloadable","no"),
("980","207","_product_image_gallery",""),
("981","207","_download_limit","-1"),
("982","207","_download_expiry","-1");
INSERT INTO bz_postmeta VALUES
("983","207","_stock",""),
("984","207","_stock_status","instock"),
("985","207","_product_version","3.5.2"),
("986","207","_price",""),
("987","209","_wc_review_count","0"),
("988","209","_wc_rating_count","a:0:{}"),
("989","209","_wc_average_rating","0"),
("990","209","_edit_last","1"),
("991","209","_edit_lock","1544253106:1"),
("992","210","_wp_attached_file","2018/12/2-3.jpg"),
("993","210","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/2-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("994","209","_thumbnail_id","210"),
("995","209","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("996","209","_sku",""),
("997","209","_regular_price",""),
("998","209","_sale_price",""),
("999","209","_sale_price_dates_from",""),
("1000","209","_sale_price_dates_to",""),
("1001","209","total_sales","0"),
("1002","209","_tax_status","taxable"),
("1003","209","_tax_class",""),
("1004","209","_manage_stock","no"),
("1005","209","_backorders","no"),
("1006","209","_low_stock_amount",""),
("1007","209","_sold_individually","no"),
("1008","209","_weight",""),
("1009","209","_length",""),
("1010","209","_width",""),
("1011","209","_height",""),
("1012","209","_upsell_ids","a:0:{}"),
("1013","209","_crosssell_ids","a:0:{}"),
("1014","209","_purchase_note",""),
("1015","209","_default_attributes","a:0:{}"),
("1016","209","_virtual","no"),
("1017","209","_downloadable","no"),
("1018","209","_product_image_gallery",""),
("1019","209","_download_limit","-1"),
("1020","209","_download_expiry","-1"),
("1021","209","_stock",""),
("1022","209","_stock_status","instock"),
("1023","209","_product_version","3.5.2"),
("1024","209","_price",""),
("1025","211","_wc_review_count","0"),
("1026","211","_wc_rating_count","a:0:{}"),
("1027","211","_wc_average_rating","0"),
("1028","211","_edit_last","1"),
("1029","211","_edit_lock","1544257126:1"),
("1030","212","_wp_attached_file","2018/12/3-2.jpg"),
("1031","212","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/3-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"3-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1032","211","_thumbnail_id","212"),
("1033","211","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1034","211","_sku",""),
("1035","211","_regular_price",""),
("1036","211","_sale_price",""),
("1037","211","_sale_price_dates_from",""),
("1038","211","_sale_price_dates_to",""),
("1039","211","total_sales","0"),
("1040","211","_tax_status","taxable"),
("1041","211","_tax_class",""),
("1042","211","_manage_stock","no"),
("1043","211","_backorders","no"),
("1044","211","_low_stock_amount",""),
("1045","211","_sold_individually","no"),
("1046","211","_weight",""),
("1047","211","_length",""),
("1048","211","_width",""),
("1049","211","_height",""),
("1050","211","_upsell_ids","a:0:{}"),
("1051","211","_crosssell_ids","a:0:{}"),
("1052","211","_purchase_note",""),
("1053","211","_default_attributes","a:0:{}"),
("1054","211","_virtual","no"),
("1055","211","_downloadable","no"),
("1056","211","_product_image_gallery",""),
("1057","211","_download_limit","-1"),
("1058","211","_download_expiry","-1"),
("1059","211","_stock",""),
("1060","211","_stock_status","instock"),
("1061","211","_product_version","3.5.2"),
("1062","211","_price",""),
("1063","213","_wc_review_count","0"),
("1064","213","_wc_rating_count","a:0:{}"),
("1065","213","_wc_average_rating","0"),
("1066","213","_edit_last","1"),
("1067","213","_edit_lock","1544253142:1"),
("1068","214","_wp_attached_file","2018/12/4-4.jpg"),
("1069","214","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/4-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"4-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1070","213","_thumbnail_id","214"),
("1071","213","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1072","213","_sku",""),
("1073","213","_regular_price",""),
("1074","213","_sale_price",""),
("1075","213","_sale_price_dates_from",""),
("1076","213","_sale_price_dates_to",""),
("1077","213","total_sales","0"),
("1078","213","_tax_status","taxable"),
("1079","213","_tax_class",""),
("1080","213","_manage_stock","no"),
("1081","213","_backorders","no"),
("1082","213","_low_stock_amount","");
INSERT INTO bz_postmeta VALUES
("1083","213","_sold_individually","no"),
("1084","213","_weight",""),
("1085","213","_length",""),
("1086","213","_width",""),
("1087","213","_height",""),
("1088","213","_upsell_ids","a:0:{}"),
("1089","213","_crosssell_ids","a:0:{}"),
("1090","213","_purchase_note",""),
("1091","213","_default_attributes","a:0:{}"),
("1092","213","_virtual","no"),
("1093","213","_downloadable","no"),
("1094","213","_product_image_gallery",""),
("1095","213","_download_limit","-1"),
("1096","213","_download_expiry","-1"),
("1097","213","_stock",""),
("1098","213","_stock_status","instock"),
("1099","213","_product_version","3.5.2"),
("1100","213","_price",""),
("1101","215","_wc_review_count","0"),
("1102","215","_wc_rating_count","a:0:{}"),
("1103","215","_wc_average_rating","0"),
("1104","215","_edit_last","1"),
("1105","215","_edit_lock","1544257208:1"),
("1106","216","_wp_attached_file","2018/12/5-1.jpg"),
("1107","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/5-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1108","215","_thumbnail_id","216"),
("1109","215","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1110","215","_sku",""),
("1111","215","_regular_price",""),
("1112","215","_sale_price",""),
("1113","215","_sale_price_dates_from",""),
("1114","215","_sale_price_dates_to",""),
("1115","215","total_sales","0"),
("1116","215","_tax_status","taxable"),
("1117","215","_tax_class",""),
("1118","215","_manage_stock","no"),
("1119","215","_backorders","no"),
("1120","215","_low_stock_amount",""),
("1121","215","_sold_individually","no"),
("1122","215","_weight",""),
("1123","215","_length",""),
("1124","215","_width",""),
("1125","215","_height",""),
("1126","215","_upsell_ids","a:0:{}"),
("1127","215","_crosssell_ids","a:0:{}"),
("1128","215","_purchase_note",""),
("1129","215","_default_attributes","a:0:{}"),
("1130","215","_virtual","no"),
("1131","215","_downloadable","no"),
("1132","215","_product_image_gallery",""),
("1133","215","_download_limit","-1"),
("1134","215","_download_expiry","-1"),
("1135","215","_stock",""),
("1136","215","_stock_status","instock"),
("1137","215","_product_version","3.5.2"),
("1138","215","_price",""),
("1139","217","_wc_review_count","0"),
("1140","217","_wc_rating_count","a:0:{}"),
("1141","217","_wc_average_rating","0"),
("1142","217","_edit_last","1"),
("1143","217","_edit_lock","1544253191:1"),
("1144","218","_wp_attached_file","2018/12/6-1.jpg"),
("1145","218","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/6-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"6-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"6-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1146","217","_thumbnail_id","218"),
("1147","217","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1148","217","_sku",""),
("1149","217","_regular_price",""),
("1150","217","_sale_price",""),
("1151","217","_sale_price_dates_from",""),
("1152","217","_sale_price_dates_to",""),
("1153","217","total_sales","0"),
("1154","217","_tax_status","taxable"),
("1155","217","_tax_class",""),
("1156","217","_manage_stock","no"),
("1157","217","_backorders","no"),
("1158","217","_low_stock_amount",""),
("1159","217","_sold_individually","no"),
("1160","217","_weight",""),
("1161","217","_length",""),
("1162","217","_width",""),
("1163","217","_height",""),
("1164","217","_upsell_ids","a:0:{}"),
("1165","217","_crosssell_ids","a:0:{}"),
("1166","217","_purchase_note",""),
("1167","217","_default_attributes","a:0:{}"),
("1168","217","_virtual","no"),
("1169","217","_downloadable","no"),
("1170","217","_product_image_gallery",""),
("1171","217","_download_limit","-1"),
("1172","217","_download_expiry","-1"),
("1173","217","_stock",""),
("1174","217","_stock_status","instock"),
("1175","217","_product_version","3.5.2"),
("1176","217","_price",""),
("1177","219","_wc_review_count","0"),
("1178","219","_wc_rating_count","a:0:{}"),
("1179","219","_wc_average_rating","0"),
("1180","219","_edit_last","1"),
("1181","219","_edit_lock","1544257151:1"),
("1182","220","_wp_attached_file","2018/12/thenhua-1.jpg");
INSERT INTO bz_postmeta VALUES
("1183","220","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1184","219","_thumbnail_id","220"),
("1185","219","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1186","219","_sku",""),
("1187","219","_regular_price",""),
("1188","219","_sale_price",""),
("1189","219","_sale_price_dates_from",""),
("1190","219","_sale_price_dates_to",""),
("1191","219","total_sales","0"),
("1192","219","_tax_status","taxable"),
("1193","219","_tax_class",""),
("1194","219","_manage_stock","no"),
("1195","219","_backorders","no"),
("1196","219","_low_stock_amount",""),
("1197","219","_sold_individually","no"),
("1198","219","_weight",""),
("1199","219","_length",""),
("1200","219","_width",""),
("1201","219","_height",""),
("1202","219","_upsell_ids","a:0:{}"),
("1203","219","_crosssell_ids","a:0:{}"),
("1204","219","_purchase_note",""),
("1205","219","_default_attributes","a:0:{}"),
("1206","219","_virtual","no"),
("1207","219","_downloadable","no"),
("1208","219","_product_image_gallery",""),
("1209","219","_download_limit","-1"),
("1210","219","_download_expiry","-1"),
("1211","219","_stock",""),
("1212","219","_stock_status","instock"),
("1213","219","_product_version","3.5.2"),
("1214","219","_price",""),
("1215","221","_wc_review_count","0"),
("1216","221","_wc_rating_count","a:0:{}"),
("1217","221","_wc_average_rating","0"),
("1218","221","_edit_last","1"),
("1219","221","_edit_lock","1544257143:1"),
("1220","222","_wp_attached_file","2018/12/thenhua-2.jpg"),
("1221","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1222","221","_thumbnail_id","222"),
("1223","221","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1224","221","_sku",""),
("1225","221","_regular_price",""),
("1226","221","_sale_price",""),
("1227","221","_sale_price_dates_from",""),
("1228","221","_sale_price_dates_to",""),
("1229","221","total_sales","0"),
("1230","221","_tax_status","taxable"),
("1231","221","_tax_class",""),
("1232","221","_manage_stock","no"),
("1233","221","_backorders","no"),
("1234","221","_low_stock_amount",""),
("1235","221","_sold_individually","no"),
("1236","221","_weight",""),
("1237","221","_length",""),
("1238","221","_width",""),
("1239","221","_height",""),
("1240","221","_upsell_ids","a:0:{}"),
("1241","221","_crosssell_ids","a:0:{}"),
("1242","221","_purchase_note",""),
("1243","221","_default_attributes","a:0:{}"),
("1244","221","_virtual","no"),
("1245","221","_downloadable","no"),
("1246","221","_product_image_gallery",""),
("1247","221","_download_limit","-1"),
("1248","221","_download_expiry","-1"),
("1249","221","_stock",""),
("1250","221","_stock_status","instock"),
("1251","221","_product_version","3.5.2"),
("1252","221","_price",""),
("1253","223","_wc_review_count","0"),
("1254","223","_wc_rating_count","a:0:{}"),
("1255","223","_wc_average_rating","0"),
("1256","223","_edit_last","1"),
("1257","223","_edit_lock","1544257135:1"),
("1258","224","_wp_attached_file","2018/12/thenhua-3.jpg"),
("1259","224","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1260","223","_thumbnail_id","224"),
("1261","223","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1262","223","_sku",""),
("1263","223","_regular_price",""),
("1264","223","_sale_price",""),
("1265","223","_sale_price_dates_from",""),
("1266","223","_sale_price_dates_to",""),
("1267","223","total_sales","0"),
("1268","223","_tax_status","taxable"),
("1269","223","_tax_class",""),
("1270","223","_manage_stock","no"),
("1271","223","_backorders","no"),
("1272","223","_low_stock_amount",""),
("1273","223","_sold_individually","no"),
("1274","223","_weight",""),
("1275","223","_length",""),
("1276","223","_width",""),
("1277","223","_height",""),
("1278","223","_upsell_ids","a:0:{}"),
("1279","223","_crosssell_ids","a:0:{}"),
("1280","223","_purchase_note",""),
("1281","223","_default_attributes","a:0:{}"),
("1282","223","_virtual","no");
INSERT INTO bz_postmeta VALUES
("1283","223","_downloadable","no"),
("1284","223","_product_image_gallery",""),
("1285","223","_download_limit","-1"),
("1286","223","_download_expiry","-1"),
("1287","223","_stock",""),
("1288","223","_stock_status","instock"),
("1289","223","_product_version","3.5.2"),
("1290","223","_price",""),
("1291","225","_wc_review_count","0"),
("1292","225","_wc_rating_count","a:0:{}"),
("1293","225","_wc_average_rating","0"),
("1294","225","_edit_last","1"),
("1295","225","_edit_lock","1544257111:1"),
("1296","226","_wp_attached_file","2018/12/thenhua-4.jpg"),
("1297","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1298","225","_thumbnail_id","226"),
("1299","225","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1300","225","_sku",""),
("1301","225","_regular_price",""),
("1302","225","_sale_price",""),
("1303","225","_sale_price_dates_from",""),
("1304","225","_sale_price_dates_to",""),
("1305","225","total_sales","0"),
("1306","225","_tax_status","taxable"),
("1307","225","_tax_class",""),
("1308","225","_manage_stock","no"),
("1309","225","_backorders","no"),
("1310","225","_low_stock_amount",""),
("1311","225","_sold_individually","no"),
("1312","225","_weight",""),
("1313","225","_length",""),
("1314","225","_width",""),
("1315","225","_height",""),
("1316","225","_upsell_ids","a:0:{}"),
("1317","225","_crosssell_ids","a:0:{}"),
("1318","225","_purchase_note",""),
("1319","225","_default_attributes","a:0:{}"),
("1320","225","_virtual","no"),
("1321","225","_downloadable","no"),
("1322","225","_product_image_gallery",""),
("1323","225","_download_limit","-1"),
("1324","225","_download_expiry","-1"),
("1325","225","_stock",""),
("1326","225","_stock_status","instock"),
("1327","225","_product_version","3.5.2"),
("1328","225","_price",""),
("1329","227","_wc_review_count","0"),
("1330","227","_wc_rating_count","a:0:{}"),
("1331","227","_wc_average_rating","0"),
("1332","227","_edit_last","1"),
("1333","227","_edit_lock","1544257103:1"),
("1334","228","_wp_attached_file","2018/12/thenhua-5.jpg"),
("1335","228","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1336","227","_thumbnail_id","228"),
("1337","227","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1338","227","_sku",""),
("1339","227","_regular_price",""),
("1340","227","_sale_price",""),
("1341","227","_sale_price_dates_from",""),
("1342","227","_sale_price_dates_to",""),
("1343","227","total_sales","0"),
("1344","227","_tax_status","taxable"),
("1345","227","_tax_class",""),
("1346","227","_manage_stock","no"),
("1347","227","_backorders","no"),
("1348","227","_low_stock_amount",""),
("1349","227","_sold_individually","no"),
("1350","227","_weight",""),
("1351","227","_length",""),
("1352","227","_width",""),
("1353","227","_height",""),
("1354","227","_upsell_ids","a:0:{}"),
("1355","227","_crosssell_ids","a:0:{}"),
("1356","227","_purchase_note",""),
("1357","227","_default_attributes","a:0:{}"),
("1358","227","_virtual","no"),
("1359","227","_downloadable","no"),
("1360","227","_product_image_gallery",""),
("1361","227","_download_limit","-1"),
("1362","227","_download_expiry","-1"),
("1363","227","_stock",""),
("1364","227","_stock_status","instock"),
("1365","227","_product_version","3.5.2"),
("1366","227","_price",""),
("1367","229","_wc_review_count","0"),
("1368","229","_wc_rating_count","a:0:{}"),
("1369","229","_wc_average_rating","0"),
("1370","229","_edit_last","1"),
("1371","229","_edit_lock","1544257095:1"),
("1372","230","_wp_attached_file","2018/12/thenhua-6.jpg"),
("1373","230","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/12/thenhua-6.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thenhua-6-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thenhua-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thenhua-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thenhua-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1374","229","_thumbnail_id","230"),
("1375","229","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1376","229","_sku",""),
("1377","229","_regular_price",""),
("1378","229","_sale_price",""),
("1379","229","_sale_price_dates_from",""),
("1380","229","_sale_price_dates_to",""),
("1381","229","total_sales","0"),
("1382","229","_tax_status","taxable");
INSERT INTO bz_postmeta VALUES
("1383","229","_tax_class",""),
("1384","229","_manage_stock","no"),
("1385","229","_backorders","no"),
("1386","229","_low_stock_amount",""),
("1387","229","_sold_individually","no"),
("1388","229","_weight",""),
("1389","229","_length",""),
("1390","229","_width",""),
("1391","229","_height",""),
("1392","229","_upsell_ids","a:0:{}"),
("1393","229","_crosssell_ids","a:0:{}"),
("1394","229","_purchase_note",""),
("1395","229","_default_attributes","a:0:{}"),
("1396","229","_virtual","no"),
("1397","229","_downloadable","no"),
("1398","229","_product_image_gallery",""),
("1399","229","_download_limit","-1"),
("1400","229","_download_expiry","-1"),
("1401","229","_stock",""),
("1402","229","_stock_status","instock"),
("1403","229","_product_version","3.5.2"),
("1404","229","_price",""),
("1405","231","_wc_review_count","0"),
("1406","231","_wc_rating_count","a:0:{}"),
("1407","231","_wc_average_rating","0"),
("1408","231","_edit_last","1"),
("1409","231","_edit_lock","1544257196:1"),
("1410","232","_wp_attached_file","2018/12/1-4.jpg"),
("1411","232","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/1-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"1-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1412","231","_thumbnail_id","232"),
("1413","231","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1414","231","_sku",""),
("1415","231","_regular_price",""),
("1416","231","_sale_price",""),
("1417","231","_sale_price_dates_from",""),
("1418","231","_sale_price_dates_to",""),
("1419","231","total_sales","0"),
("1420","231","_tax_status","taxable"),
("1421","231","_tax_class",""),
("1422","231","_manage_stock","no"),
("1423","231","_backorders","no"),
("1424","231","_low_stock_amount",""),
("1425","231","_sold_individually","no"),
("1426","231","_weight",""),
("1427","231","_length",""),
("1428","231","_width",""),
("1429","231","_height",""),
("1430","231","_upsell_ids","a:0:{}"),
("1431","231","_crosssell_ids","a:0:{}"),
("1432","231","_purchase_note",""),
("1433","231","_default_attributes","a:0:{}"),
("1434","231","_virtual","no"),
("1435","231","_downloadable","no"),
("1436","231","_product_image_gallery",""),
("1437","231","_download_limit","-1"),
("1438","231","_download_expiry","-1"),
("1439","231","_stock",""),
("1440","231","_stock_status","instock"),
("1441","231","_product_version","3.5.2"),
("1442","231","_price",""),
("1443","233","_wc_review_count","0"),
("1444","233","_wc_rating_count","a:0:{}"),
("1445","233","_wc_average_rating","0"),
("1446","233","_edit_last","1"),
("1447","233","_edit_lock","1544253366:1"),
("1448","234","_wp_attached_file","2018/12/2-4.jpg"),
("1449","234","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/2-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1450","233","_thumbnail_id","234"),
("1451","233","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1452","233","_sku",""),
("1453","233","_regular_price",""),
("1454","233","_sale_price",""),
("1455","233","_sale_price_dates_from",""),
("1456","233","_sale_price_dates_to",""),
("1457","233","total_sales","0"),
("1458","233","_tax_status","taxable"),
("1459","233","_tax_class",""),
("1460","233","_manage_stock","no"),
("1461","233","_backorders","no"),
("1462","233","_low_stock_amount",""),
("1463","233","_sold_individually","no"),
("1464","233","_weight",""),
("1465","233","_length",""),
("1466","233","_width",""),
("1467","233","_height",""),
("1468","233","_upsell_ids","a:0:{}"),
("1469","233","_crosssell_ids","a:0:{}"),
("1470","233","_purchase_note",""),
("1471","233","_default_attributes","a:0:{}"),
("1472","233","_virtual","no"),
("1473","233","_downloadable","no"),
("1474","233","_product_image_gallery",""),
("1475","233","_download_limit","-1"),
("1476","233","_download_expiry","-1"),
("1477","233","_stock",""),
("1478","233","_stock_status","instock"),
("1479","233","_product_version","3.5.2"),
("1480","233","_price",""),
("1481","235","_wc_review_count","0"),
("1482","235","_wc_rating_count","a:0:{}");
INSERT INTO bz_postmeta VALUES
("1483","235","_wc_average_rating","0"),
("1484","235","_edit_last","1"),
("1485","235","_edit_lock","1544261897:1"),
("1486","236","_wp_attached_file","2018/12/4-5.jpg"),
("1487","236","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/4-5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"4-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1488","235","_thumbnail_id","236"),
("1489","235","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1490","235","_sku",""),
("1491","235","_regular_price",""),
("1492","235","_sale_price",""),
("1493","235","_sale_price_dates_from",""),
("1494","235","_sale_price_dates_to",""),
("1495","235","total_sales","0"),
("1496","235","_tax_status","taxable"),
("1497","235","_tax_class",""),
("1498","235","_manage_stock","no"),
("1499","235","_backorders","no"),
("1500","235","_low_stock_amount",""),
("1501","235","_sold_individually","no"),
("1502","235","_weight",""),
("1503","235","_length",""),
("1504","235","_width",""),
("1505","235","_height",""),
("1506","235","_upsell_ids","a:0:{}"),
("1507","235","_crosssell_ids","a:0:{}"),
("1508","235","_purchase_note",""),
("1509","235","_default_attributes","a:0:{}"),
("1510","235","_virtual","no"),
("1511","235","_downloadable","no"),
("1512","235","_product_image_gallery",""),
("1513","235","_download_limit","-1"),
("1514","235","_download_expiry","-1"),
("1515","235","_stock",""),
("1516","235","_stock_status","instock"),
("1517","235","_product_version","3.5.2"),
("1518","235","_price",""),
("1519","237","_wc_review_count","0"),
("1520","237","_wc_rating_count","a:0:{}"),
("1521","237","_wc_average_rating","0"),
("1522","237","_edit_last","1"),
("1523","237","_edit_lock","1544257175:1"),
("1524","238","_wp_attached_file","2018/12/12.jpg"),
("1525","238","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2018/12/12.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1526","237","_thumbnail_id","238"),
("1527","237","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1528","237","_sku",""),
("1529","237","_regular_price",""),
("1530","237","_sale_price",""),
("1531","237","_sale_price_dates_from",""),
("1532","237","_sale_price_dates_to",""),
("1533","237","total_sales","0"),
("1534","237","_tax_status","taxable"),
("1535","237","_tax_class",""),
("1536","237","_manage_stock","no"),
("1537","237","_backorders","no"),
("1538","237","_low_stock_amount",""),
("1539","237","_sold_individually","no"),
("1540","237","_weight",""),
("1541","237","_length",""),
("1542","237","_width",""),
("1543","237","_height",""),
("1544","237","_upsell_ids","a:0:{}"),
("1545","237","_crosssell_ids","a:0:{}"),
("1546","237","_purchase_note",""),
("1547","237","_default_attributes","a:0:{}"),
("1548","237","_virtual","no"),
("1549","237","_downloadable","no"),
("1550","237","_product_image_gallery",""),
("1551","237","_download_limit","-1"),
("1552","237","_download_expiry","-1"),
("1553","237","_stock",""),
("1554","237","_stock_status","instock"),
("1555","237","_product_version","3.5.2"),
("1556","237","_price",""),
("1557","239","_wc_review_count","0"),
("1558","239","_wc_rating_count","a:0:{}"),
("1559","239","_wc_average_rating","0"),
("1560","239","_edit_last","1"),
("1561","239","_edit_lock","1544257167:1"),
("1562","240","_wp_attached_file","2018/12/17.jpg"),
("1563","240","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2018/12/17.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"17-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"17-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"17-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1564","239","_thumbnail_id","240"),
("1565","239","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1566","239","_sku",""),
("1567","239","_regular_price",""),
("1568","239","_sale_price",""),
("1569","239","_sale_price_dates_from",""),
("1570","239","_sale_price_dates_to",""),
("1571","239","total_sales","0"),
("1572","239","_tax_status","taxable"),
("1573","239","_tax_class",""),
("1574","239","_manage_stock","no"),
("1575","239","_backorders","no"),
("1576","239","_low_stock_amount",""),
("1577","239","_sold_individually","no"),
("1578","239","_weight",""),
("1579","239","_length",""),
("1580","239","_width",""),
("1581","239","_height",""),
("1582","239","_upsell_ids","a:0:{}");
INSERT INTO bz_postmeta VALUES
("1583","239","_crosssell_ids","a:0:{}"),
("1584","239","_purchase_note",""),
("1585","239","_default_attributes","a:0:{}"),
("1586","239","_virtual","no"),
("1587","239","_downloadable","no"),
("1588","239","_product_image_gallery",""),
("1589","239","_download_limit","-1"),
("1590","239","_download_expiry","-1"),
("1591","239","_stock",""),
("1592","239","_stock_status","instock"),
("1593","239","_product_version","3.5.2"),
("1594","239","_price",""),
("1595","241","_wc_review_count","0"),
("1596","241","_wc_rating_count","a:0:{}"),
("1597","241","_wc_average_rating","0"),
("1598","241","_edit_last","1"),
("1599","241","_edit_lock","1544261965:1"),
("1600","242","_wp_attached_file","2018/12/5-2.jpg"),
("1601","242","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2018/12/5-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"5-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"5-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"5-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"5-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1602","241","_thumbnail_id","242"),
("1603","241","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1604","241","_sku",""),
("1605","241","_regular_price",""),
("1606","241","_sale_price",""),
("1607","241","_sale_price_dates_from",""),
("1608","241","_sale_price_dates_to",""),
("1609","241","total_sales","0"),
("1610","241","_tax_status","taxable"),
("1611","241","_tax_class",""),
("1612","241","_manage_stock","no"),
("1613","241","_backorders","no"),
("1614","241","_low_stock_amount",""),
("1615","241","_sold_individually","no"),
("1616","241","_weight",""),
("1617","241","_length",""),
("1618","241","_width",""),
("1619","241","_height",""),
("1620","241","_upsell_ids","a:0:{}"),
("1621","241","_crosssell_ids","a:0:{}"),
("1622","241","_purchase_note",""),
("1623","241","_default_attributes","a:0:{}"),
("1624","241","_virtual","no"),
("1625","241","_downloadable","no"),
("1626","241","_product_image_gallery",""),
("1627","241","_download_limit","-1"),
("1628","241","_download_expiry","-1"),
("1629","241","_stock",""),
("1630","241","_stock_status","instock"),
("1631","241","_product_version","3.5.2"),
("1632","241","_price",""),
("1669","279","_edit_last","1"),
("1670","279","_edit_lock","1544255544:1"),
("1671","280","_wp_attached_file","2018/12/day-deo-the.jpg"),
("1672","280","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2018/12/day-deo-the.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"day-deo-the-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"day-deo-the-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"day-deo-the-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"day-deo-the-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"day-deo-the-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"day-deo-the-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"day-deo-the-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"day-deo-the-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1673","279","_thumbnail_id","280"),
("1676","282","_edit_last","1"),
("1677","282","_edit_lock","1544255980:1"),
("1678","283","_wp_attached_file","2018/12/tintuc-3.jpg"),
("1679","283","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2018/12/tintuc-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tintuc-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tintuc-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tintuc-3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tintuc-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tintuc-3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1680","282","_thumbnail_id","283"),
("1683","285","_edit_last","1"),
("1684","285","_edit_lock","1544255819:1"),
("1685","286","_wp_attached_file","2018/12/tintuc-2.jpg"),
("1686","286","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2018/12/tintuc-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tintuc-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tintuc-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tintuc-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tintuc-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tintuc-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tintuc-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1687","285","_thumbnail_id","286"),
("1690","288","_edit_last","1"),
("1691","288","_edit_lock","1544255755:1"),
("1692","289","_wp_attached_file","2018/12/in-the-nhua-lay-gap-hcm-788x445.jpg"),
("1693","289","_wp_attachment_metadata","a:5:{s:5:\"width\";i:788;s:6:\"height\";i:445;s:4:\"file\";s:43:\"2018/12/in-the-nhua-lay-gap-hcm-788x445.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-768x434.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-600x339.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-600x339.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"in-the-nhua-lay-gap-hcm-788x445-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1694","288","_thumbnail_id","289"),
("1710","302","_form","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[email* your-email placeholder \"Nhập địa chỉ email của bạn...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký ngay\"]\n    </div>\n    </div>"),
("1711","302","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:53:\"Mẫu website quảng cáo - Thiết kế web Webdemo\";s:6:\"sender\";s:41:\"[your-name] <wordpress@mica2.webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:259:\"Có một email đăng ký nhận tin khuyến mại từ website:\n- Địa chỉ email: [your-email]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website quảng cáo - Thiết kế web Webdemo (https://bizhostvn.com/w/mica2)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1712","302","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:70:\"Mẫu website quảng cáo - Thiết kế web Webdemo \"[your-subject]\"\";s:6:\"sender\";s:83:\"Mẫu website quảng cáo - Thiết kế web Webdemo <wordpress@mica2.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:200:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website quảng cáo - Thiết kế web Webdemo (https://bizhostvn.com/w/mica2)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1713","302","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("1714","302","_additional_settings",""),
("1715","302","_locale","vi"),
("1734","326","_edit_last","1"),
("1735","326","_edit_lock","1544261870:1"),
("1737","335","_edit_last","1"),
("1738","335","_edit_lock","1544256793:1"),
("1739","335","_footer","normal"),
("1740","335","_wp_page_template","default"),
("1741","338","_edit_last","1"),
("1742","338","_footer","normal"),
("1743","338","_wp_page_template","default"),
("1744","338","_edit_lock","1544256840:1"),
("1745","340","_edit_last","1"),
("1746","340","_footer","normal"),
("1747","340","_wp_page_template","default"),
("1748","340","_edit_lock","1544256848:1"),
("1749","342","_edit_last","1"),
("1750","342","_footer","normal"),
("1751","342","_wp_page_template","default"),
("1752","342","_edit_lock","1544256856:1"),
("1753","344","_edit_last","1"),
("1754","344","_edit_lock","1544256865:1"),
("1755","344","_footer","normal"),
("1756","344","_wp_page_template","default"),
("1772","353","_edit_last","1"),
("1773","353","_edit_lock","1544258084:1");
INSERT INTO bz_postmeta VALUES
("2160","2","_thumbnail_id",""),
("2176","546","_wp_trash_meta_status","publish"),
("2177","546","_wp_trash_meta_time","1557133702"),
("2178","547","_wp_attached_file","2019/05/mica2.png"),
("2179","547","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:85;s:4:\"file\";s:17:\"2019/05/mica2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"mica2-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"mica2-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"mica2-100x85.png\";s:5:\"width\";i:100;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2180","548","_wp_trash_meta_status","publish"),
("2181","548","_wp_trash_meta_time","1557137755"),
("2182","326","_thumbnail_id",""),
("2183","550","_wp_attached_file","woocommerce-placeholder.png"),
("2184","550","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2018-12-08 04:14:06","2018-12-08 04:14:06","[section label=\"Slider\" class=\"slider-section\" padding=\"0px\"]\n\n[row style=\"collapse\"]\n\n[col span=\"3\" span__sm=\"12\" align=\"left\" class=\"cot1\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 1: Demoweb</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ff890b;\"></span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">minhanhadv2015@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"14px\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 2: Ms. Hương</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ff890b;\">0123.456.789</span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">webdemo@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\" flickr=\"#\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"119\" image_size=\"original\" height=\"38%\"]\n\n[ux_image id=\"121\" image_size=\"original\" height=\"38%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tiêu chí\" class=\"tieu-chi\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"168\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Tiết kiệm chi phí</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tiết kiệm tối đa chi phí sử dụng so với các loại sản phẩm khác</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"172\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">An toàn cho người sử dụng</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tuyệt đối không hóa chất gây hại cho người sử dụng.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"175\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Thân thiện môi trường</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Sản phẩm Newsuns hoàn toàn thân thiện với môi trường.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm\" class=\"san-pham\" padding=\"0px\"]\n\n[row class=\"row1\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Thẻ tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"17\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ thay tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-thay-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"18\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Biển chức danh\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/bien-chuc-danh/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"19\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ nhân viên PVC\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-nhua/the-nhua-nhan-vien-pvc/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"22\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Quà tặng pha lê\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/qua-tang/qua-tang-pha-le/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"36\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin tức\" color=\"rgb(253, 138, 0)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"2\" columns__md=\"1\" cat=\"1\" posts=\"4\" show_date=\"text\" excerpt_length=\"25\" image_height=\"77%\" image_width=\"38\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-12-08 19:19:00","2018-12-08 12:19:00","","0","https://tppone.com/demo/mica2/?page_id=2","0","page","","0"),
("3","1","2018-12-08 04:14:06","2018-12-08 04:14:06","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/mica2.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2018-12-08 04:14:06","2018-12-08 04:14:06","","0","https://tppone.com/demo/mica2/?page_id=3","0","page","","0"),
("15","1","2018-12-08 11:22:13","2018-12-08 04:22:13","","logo","","inherit","open","closed","","logo","","","2018-12-08 11:22:13","2018-12-08 04:22:13","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/logo.png","0","attachment","image/png","0"),
("16","1","2018-12-08 11:22:28","2018-12-08 04:22:28","https://bizhostvn.com/w/mica2/wp-content/uploads/2018/12/cropped-logo.png","cropped-logo.png","","inherit","open","closed","","cropped-logo-png","","","2018-12-08 11:22:28","2018-12-08 04:22:28","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/cropped-logo.png","0","attachment","image/png","0"),
("25","1","2018-12-08 11:28:44","2018-12-08 04:28:44","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2018-12-08 11:28:44","2018-12-08 04:28:44","","0","https://tppone.com/demo/mica2/cua-hang/","0","page","","0"),
("26","1","2018-12-08 11:28:44","2018-12-08 04:28:44","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2018-12-08 11:28:44","2018-12-08 04:28:44","","0","https://tppone.com/demo/mica2/gio-hang/","0","page","","0"),
("27","1","2018-12-08 11:28:44","2018-12-08 04:28:44","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2018-12-08 11:28:44","2018-12-08 04:28:44","","0","https://tppone.com/demo/mica2/thanh-toan/","0","page","","0"),
("28","1","2018-12-08 11:28:44","2018-12-08 04:28:44","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2018-12-08 11:28:44","2018-12-08 04:28:44","","0","https://tppone.com/demo/mica2/tai-khoan/","0","page","","0"),
("42","1","2018-12-08 11:33:45","2018-12-08 04:33:45","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-12-08 11:33:45","2018-12-08 04:33:45","","0","https://tppone.com/demo/mica2/?page_id=42","0","page","","0"),
("44","1","2018-12-08 11:33:51","2018-12-08 04:33:51","","Liên hệ","","publish","closed","closed","","lien-he","","","2018-12-08 11:33:51","2018-12-08 04:33:51","","0","https://tppone.com/demo/mica2/?page_id=44","0","page","","0"),
("46","1","2018-12-08 11:33:59","2018-12-08 04:33:59","","Hướng dẫn thanh toán","","publish","closed","closed","","huong-dan-thanh-toan","","","2018-12-08 11:33:59","2018-12-08 04:33:59","","0","https://tppone.com/demo/mica2/?page_id=46","0","page","","0"),
("48","1","2018-12-08 11:34:49","2018-12-08 04:34:49"," ","","","publish","closed","closed","","48","","","2018-12-08 11:34:51","2018-12-08 04:34:51","","0","https://tppone.com/demo/mica2/?p=48","2","nav_menu_item","","0"),
("49","1","2018-12-08 11:34:49","2018-12-08 04:34:49"," ","","","publish","closed","closed","","49","","","2018-12-08 11:34:51","2018-12-08 04:34:51","","0","https://tppone.com/demo/mica2/?p=49","3","nav_menu_item","","0"),
("50","1","2018-12-08 11:34:33","0000-00-00 00:00:00"," ","","","draft","closed","closed","","","","","2018-12-08 11:34:33","0000-00-00 00:00:00","","0","https://tppone.com/demo/mica2/?p=50","1","nav_menu_item","","0"),
("51","1","2018-12-08 11:34:33","0000-00-00 00:00:00"," ","","","draft","closed","closed","","","","","2018-12-08 11:34:33","0000-00-00 00:00:00","","0","https://tppone.com/demo/mica2/?p=51","1","nav_menu_item","","0"),
("52","1","2018-12-08 11:34:49","2018-12-08 04:34:49"," ","","","publish","closed","closed","","52","","","2018-12-08 11:34:51","2018-12-08 04:34:51","","0","https://tppone.com/demo/mica2/?p=52","1","nav_menu_item","","0"),
("53","1","2018-12-08 11:43:57","2018-12-08 04:43:57"," ","","","publish","closed","closed","","53","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=53","1","nav_menu_item","","0"),
("54","1","2018-12-08 11:43:57","2018-12-08 04:43:57"," ","","","publish","closed","closed","","54","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=54","29","nav_menu_item","","0"),
("55","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ tên","","publish","closed","closed","","the-ten","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=55","2","nav_menu_item","","0"),
("56","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Biển chức danh","","publish","closed","closed","","bien-chuc-danh","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=56","3","nav_menu_item","","0"),
("57","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Huy hiệu","","publish","closed","closed","","huy-hieu","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=57","4","nav_menu_item","","0"),
("58","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ tên nhân viên","","publish","closed","closed","","the-ten-nhan-vien","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=58","5","nav_menu_item","","0"),
("59","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ thay tên nhân viên","","publish","closed","closed","","the-thay-ten-nhan-vien","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=59","6","nav_menu_item","","0"),
("60","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Ấn phẩm văn phòng","","publish","closed","closed","","an-pham-van-phong","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=60","7","nav_menu_item","","0"),
("61","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Brochure","","publish","closed","closed","","brochure","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=61","8","nav_menu_item","","0"),
("62","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Card visit","","publish","closed","closed","","card-visit","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=62","9","nav_menu_item","","0"),
("63","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Kẹp file","","publish","closed","closed","","kep-file","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=63","10","nav_menu_item","","0"),
("64","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Phiếu thu, phiếu chi","","publish","closed","closed","","phieu-thu-phieu-chi","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=64","11","nav_menu_item","","0"),
("65","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Phiếu xuất kho","","publish","closed","closed","","phieu-xuat-kho","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=65","12","nav_menu_item","","0"),
("66","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Phong bì thư","","publish","closed","closed","","phong-bi-thu","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=66","13","nav_menu_item","","0"),
("67","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Tem decal, tem bảo hành","","publish","closed","closed","","tem-decal-tem-bao-hanh","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=67","14","nav_menu_item","","0"),
("68","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Tiêu đề thư","","publish","closed","closed","","tieu-de-thu","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=68","15","nav_menu_item","","0"),
("69","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Tờ rơi","","publish","closed","closed","","to-roi","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=69","16","nav_menu_item","","0"),
("70","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Quà tặng","","publish","closed","closed","","qua-tang","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=70","17","nav_menu_item","","0"),
("71","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Đồng hồ","","publish","closed","closed","","dong-ho","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=71","18","nav_menu_item","","0"),
("72","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Gốm sứ","","publish","closed","closed","","gom-su","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=72","19","nav_menu_item","","0"),
("73","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Ly cốc thủy tinh","","publish","closed","closed","","ly-coc-thuy-tinh","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=73","20","nav_menu_item","","0"),
("74","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Quà tặng kim loại","","publish","closed","closed","","qua-tang-kim-loai","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=74","21","nav_menu_item","","0"),
("75","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Quà tặng pha lê","","publish","closed","closed","","qua-tang-pha-le","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=75","22","nav_menu_item","","0"),
("76","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Quà tặng quảng cáo","","publish","closed","closed","","qua-tang-quang-cao","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=76","23","nav_menu_item","","0"),
("77","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ nhựa","","publish","closed","closed","","the-nhua","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=77","24","nav_menu_item","","0"),
("78","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ nhựa học sinh - sinh viên","","publish","closed","closed","","the-nhua-hoc-sinh-sinh-vien","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=78","25","nav_menu_item","","0"),
("79","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ nhựa nhân viên PVC","","publish","closed","closed","","the-nhua-nhan-vien-pvc","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=79","26","nav_menu_item","","0"),
("80","1","2018-12-08 11:43:57","2018-12-08 04:43:57","","Thẻ VIP - thẻ khách hàng","","publish","closed","closed","","the-vip-the-khach-hang","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=80","27","nav_menu_item","","0"),
("81","1","2018-12-08 11:43:57","2018-12-08 04:43:57"," ","","","publish","closed","closed","","81","","","2018-12-08 11:43:57","2018-12-08 04:43:57","","0","https://tppone.com/demo/mica2/?p=81","28","nav_menu_item","","0"),
("119","1","2018-12-08 12:34:59","2018-12-08 05:34:59","","4 (1)","","inherit","open","closed","","4-1","","","2018-12-08 12:34:59","2018-12-08 05:34:59","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/4-1.jpg","0","attachment","image/jpeg","0"),
("121","1","2018-12-08 12:35:17","2018-12-08 05:35:17","","1","","inherit","open","closed","","1","","","2018-12-08 12:35:17","2018-12-08 05:35:17","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/1.jpg","0","attachment","image/jpeg","0"),
("130","1","2018-12-08 12:39:58","2018-12-08 05:39:58","","icon-mail","","inherit","open","closed","","icon-mail","","","2018-12-08 12:39:58","2018-12-08 05:39:58","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/icon-mail.jpg","0","attachment","image/jpeg","0"),
("143","1","2018-12-08 12:43:25","2018-12-08 05:43:25","","zalo","","inherit","open","closed","","zalo","","","2018-12-08 12:43:25","2018-12-08 05:43:25","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/zalo.jpg","0","attachment","image/jpeg","0"),
("168","1","2018-12-08 12:52:16","2018-12-08 05:52:16","","icon1-01-300x300 (1)","","inherit","open","closed","","icon1-01-300x300-1","","","2018-12-08 12:52:16","2018-12-08 05:52:16","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/icon1-01-300x300-1.png","0","attachment","image/png","0"),
("172","1","2018-12-08 12:53:01","2018-12-08 05:53:01","","icon2-01-300x288","","inherit","open","closed","","icon2-01-300x288","","","2018-12-08 12:53:01","2018-12-08 05:53:01","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/icon2-01-300x288.png","0","attachment","image/png","0"),
("175","1","2018-12-08 12:53:35","2018-12-08 05:53:35","","icon3-01-293x300","","inherit","open","closed","","icon3-01-293x300","","","2018-12-08 12:53:35","2018-12-08 05:53:35","","0","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/icon3-01-293x300.png","0","attachment","image/png","0"),
("183","1","2018-12-08 14:09:04","2018-12-08 07:09:04","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ tên nhân viên 001","Hotline: 0978 959 633","publish","open","closed","","the-ten-nhan-vien-001","","","2018-12-08 14:09:04","2018-12-08 07:09:04","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=183","0","product","","0"),
("184","1","2018-12-08 14:09:00","2018-12-08 07:09:00","","1 (1)","","inherit","open","closed","","1-1","","","2018-12-08 14:09:00","2018-12-08 07:09:00","","183","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/1-1.jpg","0","attachment","image/jpeg","0"),
("185","1","2018-12-08 14:09:51","2018-12-08 07:09:51","<strong>iệc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ tên nhân viên 002","","publish","open","closed","","the-ten-nhan-vien-002","","","2018-12-08 15:19:12","2018-12-08 08:19:12","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=185","0","product","","0"),
("186","1","2018-12-08 14:09:47","2018-12-08 07:09:47","","2 (1)","","inherit","open","closed","","2-1","","","2018-12-08 14:09:47","2018-12-08 07:09:47","","185","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/2-1.jpg","0","attachment","image/jpeg","0"),
("187","1","2018-12-08 14:10:13","2018-12-08 07:10:13","<strong>iệc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ tên nhân viên 003","","publish","open","closed","","the-ten-nhan-vien-003","","","2018-12-08 15:19:19","2018-12-08 08:19:19","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=187","0","product","","0"),
("188","1","2018-12-08 14:10:10","2018-12-08 07:10:10","","3","","inherit","open","closed","","3","","","2018-12-08 14:10:10","2018-12-08 07:10:10","","187","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/3.jpg","0","attachment","image/jpeg","0"),
("189","1","2018-12-08 14:10:38","2018-12-08 07:10:38","<strong>iệc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ tên nhân viên 04","","publish","open","closed","","the-ten-nhan-vien-04","","","2018-12-08 15:19:25","2018-12-08 08:19:25","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=189","0","product","","0"),
("190","1","2018-12-08 14:10:35","2018-12-08 07:10:35","","4 (2)","","inherit","open","closed","","4-2","","","2018-12-08 14:10:35","2018-12-08 07:10:35","","189","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/4-2.jpg","0","attachment","image/jpeg","0"),
("191","1","2018-12-08 14:10:56","2018-12-08 07:10:56","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ tên nhân viên 05","","publish","open","closed","","the-ten-nhan-vien-05","","","2018-12-08 15:19:36","2018-12-08 08:19:36","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=191","0","product","","0"),
("192","1","2018-12-08 14:10:54","2018-12-08 07:10:54","","5","","inherit","open","closed","","5","","","2018-12-08 14:10:54","2018-12-08 07:10:54","","191","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/5.jpg","0","attachment","image/jpeg","0"),
("193","1","2018-12-08 14:11:18","2018-12-08 07:11:18","","Thẻ tên nhân viên 06","","publish","open","closed","","the-ten-nhan-vien-06","","","2018-12-08 14:11:18","2018-12-08 07:11:18","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=193","0","product","","0"),
("194","1","2018-12-08 14:11:11","2018-12-08 07:11:11","","6","","inherit","open","closed","","6","","","2018-12-08 14:11:11","2018-12-08 07:11:11","","193","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/6.jpg","0","attachment","image/jpeg","0"),
("195","1","2018-12-08 14:11:51","2018-12-08 07:11:51","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 001","","publish","open","closed","","the-thay-ten-nhan-vien-001","","","2018-12-08 15:19:44","2018-12-08 08:19:44","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=195","0","product","","0"),
("196","1","2018-12-08 14:11:48","2018-12-08 07:11:48","","1 (2)","","inherit","open","closed","","1-2","","","2018-12-08 14:11:48","2018-12-08 07:11:48","","195","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/1-2.jpg","0","attachment","image/jpeg","0"),
("197","1","2018-12-08 14:12:10","2018-12-08 07:12:10","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 002","","publish","open","closed","","the-thay-ten-nhan-vien-002","","","2018-12-08 15:19:52","2018-12-08 08:19:52","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=197","0","product","","0"),
("198","1","2018-12-08 14:12:08","2018-12-08 07:12:08","","2 (2)","","inherit","open","closed","","2-2","","","2018-12-08 14:12:08","2018-12-08 07:12:08","","197","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/2-2.jpg","0","attachment","image/jpeg","0"),
("199","1","2018-12-08 14:12:33","2018-12-08 07:12:33","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 003","","publish","open","closed","","the-thay-ten-nhan-vien-003","","","2018-12-08 15:20:06","2018-12-08 08:20:06","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=199","0","product","","0"),
("200","1","2018-12-08 14:12:30","2018-12-08 07:12:30","","3 (1)","","inherit","open","closed","","3-1","","","2018-12-08 14:12:30","2018-12-08 07:12:30","","199","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/3-1.jpg","0","attachment","image/jpeg","0"),
("201","1","2018-12-08 14:12:50","2018-12-08 07:12:50","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 004","","publish","open","closed","","the-thay-ten-nhan-vien-004","","","2018-12-08 15:20:14","2018-12-08 08:20:14","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=201","0","product","","0"),
("202","1","2018-12-08 14:12:48","2018-12-08 07:12:48","","4 (3)","","inherit","open","closed","","4-3","","","2018-12-08 14:12:48","2018-12-08 07:12:48","","201","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/4-3.jpg","0","attachment","image/jpeg","0"),
("203","1","2018-12-08 14:13:08","2018-12-08 07:13:08","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 005","","publish","open","closed","","the-thay-ten-nhan-vien-005","","","2018-12-08 15:20:20","2018-12-08 08:20:20","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=203","0","product","","0"),
("204","1","2018-12-08 14:13:05","2018-12-08 07:13:05","","10","","inherit","open","closed","","10","","","2018-12-08 14:13:05","2018-12-08 07:13:05","","203","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/10.jpg","0","attachment","image/jpeg","0"),
("205","1","2018-12-08 14:13:28","2018-12-08 07:13:28","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ thay tên nhân viên 006","","publish","open","closed","","the-thay-ten-nhan-vien-006","","","2018-12-08 15:20:29","2018-12-08 08:20:29","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=205","0","product","","0"),
("206","1","2018-12-08 14:13:23","2018-12-08 07:13:23","","11","","inherit","open","closed","","11","","","2018-12-08 14:13:23","2018-12-08 07:13:23","","205","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/11.jpg","0","attachment","image/jpeg","0"),
("207","1","2018-12-08 14:13:49","2018-12-08 07:13:49","","Biển chức danh 1","","publish","open","closed","","bien-chuc-danh-1","","","2018-12-08 14:13:49","2018-12-08 07:13:49","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=207","0","product","","0"),
("208","1","2018-12-08 14:13:46","2018-12-08 07:13:46","","1 (3)","","inherit","open","closed","","1-3","","","2018-12-08 14:13:46","2018-12-08 07:13:46","","207","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/1-3.jpg","0","attachment","image/jpeg","0"),
("209","1","2018-12-08 14:14:05","2018-12-08 07:14:05","","Biển chức danh 2","","publish","open","closed","","bien-chuc-danh-2","","","2018-12-08 14:14:05","2018-12-08 07:14:05","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=209","0","product","","0"),
("210","1","2018-12-08 14:14:03","2018-12-08 07:14:03","","2 (3)","","inherit","open","closed","","2-3","","","2018-12-08 14:14:03","2018-12-08 07:14:03","","209","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/2-3.jpg","0","attachment","image/jpeg","0"),
("211","1","2018-12-08 14:14:22","2018-12-08 07:14:22","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Biển chức danh 3","","publish","open","closed","","bien-chuc-danh-3","","","2018-12-08 15:21:04","2018-12-08 08:21:04","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=211","0","product","","0"),
("212","1","2018-12-08 14:14:20","2018-12-08 07:14:20","","3 (2)","","inherit","open","closed","","3-2","","","2018-12-08 14:14:20","2018-12-08 07:14:20","","211","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/3-2.jpg","0","attachment","image/jpeg","0"),
("213","1","2018-12-08 14:14:42","2018-12-08 07:14:42","","Biển chức danh 4","","publish","open","closed","","bien-chuc-danh-4","","","2018-12-08 14:14:42","2018-12-08 07:14:42","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=213","0","product","","0"),
("214","1","2018-12-08 14:14:38","2018-12-08 07:14:38","","4 (4)","","inherit","open","closed","","4-4","","","2018-12-08 14:14:38","2018-12-08 07:14:38","","213","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/4-4.jpg","0","attachment","image/jpeg","0"),
("215","1","2018-12-08 14:15:03","2018-12-08 07:15:03","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Biển chức danh 5","","publish","open","closed","","bien-chuc-danh-5","","","2018-12-08 15:22:29","2018-12-08 08:22:29","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=215","0","product","","0"),
("216","1","2018-12-08 14:15:00","2018-12-08 07:15:00","","5 (1)","","inherit","open","closed","","5-1","","","2018-12-08 14:15:00","2018-12-08 07:15:00","","215","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/5-1.jpg","0","attachment","image/jpeg","0"),
("217","1","2018-12-08 14:15:22","2018-12-08 07:15:22","","Biển chức danh 6","","publish","open","closed","","bien-chuc-danh-6","","","2018-12-08 14:15:23","2018-12-08 07:15:23","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=217","0","product","","0"),
("218","1","2018-12-08 14:15:18","2018-12-08 07:15:18","","6 (1)","","inherit","open","closed","","6-1","","","2018-12-08 14:15:18","2018-12-08 07:15:18","","217","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/6-1.jpg","0","attachment","image/jpeg","0"),
("219","1","2018-12-08 14:16:07","2018-12-08 07:16:07","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PVC 1","","publish","open","closed","","the-nhua-nhan-vien-pvc-1","","","2018-12-08 15:21:33","2018-12-08 08:21:33","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=219","0","product","","0"),
("220","1","2018-12-08 14:16:04","2018-12-08 07:16:04","","thenhua-1","","inherit","open","closed","","thenhua-1","","","2018-12-08 14:16:04","2018-12-08 07:16:04","","219","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-1.jpg","0","attachment","image/jpeg","0"),
("221","1","2018-12-08 14:16:29","2018-12-08 07:16:29","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PVC-2","","publish","open","closed","","the-nhua-nhan-vien-pvc-2","","","2018-12-08 15:21:26","2018-12-08 08:21:26","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=221","0","product","","0"),
("222","1","2018-12-08 14:16:23","2018-12-08 07:16:23","","thenhua-2","","inherit","open","closed","","thenhua-2","","","2018-12-08 14:16:23","2018-12-08 07:16:23","","221","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-2.jpg","0","attachment","image/jpeg","0"),
("223","1","2018-12-08 14:16:47","2018-12-08 07:16:47","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PCV-3","","publish","open","closed","","the-nhua-nhan-vien-pcv-3","","","2018-12-08 15:21:17","2018-12-08 08:21:17","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=223","0","product","","0"),
("224","1","2018-12-08 14:16:44","2018-12-08 07:16:44","","thenhua-3","","inherit","open","closed","","thenhua-3","","","2018-12-08 14:16:44","2018-12-08 07:16:44","","223","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-3.jpg","0","attachment","image/jpeg","0"),
("225","1","2018-12-08 14:17:05","2018-12-08 07:17:05","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PVC-4","","publish","open","closed","","the-nhua-nhan-vien-pvc-4","","","2018-12-08 15:20:54","2018-12-08 08:20:54","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=225","0","product","","0"),
("226","1","2018-12-08 14:17:02","2018-12-08 07:17:02","","thenhua-4","","inherit","open","closed","","thenhua-4","","","2018-12-08 14:17:02","2018-12-08 07:17:02","","225","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-4.jpg","0","attachment","image/jpeg","0"),
("227","1","2018-12-08 14:17:23","2018-12-08 07:17:23","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PVC-5","","publish","open","closed","","the-nhua-nhan-vien-pvc-5","","","2018-12-08 15:20:46","2018-12-08 08:20:46","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=227","0","product","","0"),
("228","1","2018-12-08 14:17:18","2018-12-08 07:17:18","","thenhua-5","","inherit","open","closed","","thenhua-5","","","2018-12-08 14:17:18","2018-12-08 07:17:18","","227","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-5.jpg","0","attachment","image/jpeg","0"),
("229","1","2018-12-08 14:17:42","2018-12-08 07:17:42","<strong>iệc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Thẻ nhựa nhân viên PCV-6","","publish","open","closed","","the-nhua-nhan-vien-pcv-6","","","2018-12-08 15:19:03","2018-12-08 08:19:03","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=229","0","product","","0"),
("230","1","2018-12-08 14:17:40","2018-12-08 07:17:40","","thenhua-6","","inherit","open","closed","","thenhua-6","","","2018-12-08 14:17:40","2018-12-08 07:17:40","","229","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/thenhua-6.jpg","0","attachment","image/jpeg","0");
INSERT INTO bz_posts VALUES
("231","1","2018-12-08 14:18:07","2018-12-08 07:18:07","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Biểu trưng pha lê vuông nghiêng","","publish","open","closed","","bieu-trung-pha-le-vuong-nghieng","","","2018-12-08 15:22:19","2018-12-08 08:22:19","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=231","0","product","","0"),
("232","1","2018-12-08 14:18:04","2018-12-08 07:18:04","","1 (4)","","inherit","open","closed","","1-4","","","2018-12-08 14:18:04","2018-12-08 07:18:04","","231","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/1-4.jpg","0","attachment","image/jpeg","0"),
("233","1","2018-12-08 14:18:26","2018-12-08 07:18:26","","Biểu trưng pha lê xen xanh","","publish","open","closed","","bieu-trung-pha-le-xen-xanh","","","2018-12-08 14:18:26","2018-12-08 07:18:26","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=233","0","product","","0"),
("234","1","2018-12-08 14:18:24","2018-12-08 07:18:24","","2 (4)","","inherit","open","closed","","2-4","","","2018-12-08 14:18:24","2018-12-08 07:18:24","","233","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/2-4.jpg","0","attachment","image/jpeg","0"),
("235","1","2018-12-08 14:18:45","2018-12-08 07:18:45","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Cúp HTM cao chất lượng cao","","publish","closed","closed","","cup-htm-cao","","","2018-12-08 16:40:39","2018-12-08 09:40:39","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=235","0","product","","0"),
("236","1","2018-12-08 14:18:42","2018-12-08 07:18:42","","4 (5)","","inherit","open","closed","","4-5","","","2018-12-08 14:18:42","2018-12-08 07:18:42","","235","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/4-5.jpg","0","attachment","image/jpeg","0"),
("237","1","2018-12-08 14:19:06","2018-12-08 07:19:06","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Cúp kim cương thân trăng","","publish","open","closed","","cup-kim-cuong-than-trang","","","2018-12-08 15:21:58","2018-12-08 08:21:58","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=237","0","product","","0"),
("238","1","2018-12-08 14:19:02","2018-12-08 07:19:02","","12","","inherit","open","closed","","12","","","2018-12-08 14:19:02","2018-12-08 07:19:02","","237","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/12.jpg","0","attachment","image/jpeg","0"),
("239","1","2018-12-08 14:19:28","2018-12-08 07:19:28","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Cúp kim cương thân xanh","","publish","open","closed","","cup-kim-cuong-than-xanh","","","2018-12-08 15:21:50","2018-12-08 08:21:50","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=239","0","product","","0"),
("240","1","2018-12-08 14:19:25","2018-12-08 07:19:25","","17","","inherit","open","closed","","17","","","2018-12-08 14:19:25","2018-12-08 07:19:25","","239","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/17.jpg","0","attachment","image/jpeg","0"),
("241","1","2018-12-08 14:19:49","2018-12-08 07:19:49","<strong>Việc đeo thẻ tên nhân viên đang trở nên phổ biến ở các công ty trong nước và nước ngoài, một số công ty cho nhân viên đeo bảng tên bằng nhựa trước ngực hay bảng tên bằng kim loại được gắn trên áo. Đi theo xu thế của nhu cầu doanh nghiệp, công ty Minh Anh chuyên sản xuất các mặt hàng bảng tên đeo áo cho nhân viên công ty bằng nhiều chất liệu, mẫu mã đa đạng và phong phú.</strong>\n\n- Có 2 loại gắn trên áo : dùng kim ghim hay nam châm cài.\n\n- Kích thước tùy thuộc vào nhu cầu khách hàng, tiêu chuẩn là 2.0 x 6.0 cm hay 2.5cm x 7.0 cm.\n\n- Chất liệu gồm : in trên inox, đồng, hay nhôm. Ngoài ra còn có đông ăn mòn, hay inox ăn mòn.\n\n- Thiết kế : tùy theo mẫu của khách hàng hay công ty chúng tôi sẽ thiết kế miễn phí theo yêu cầu.\n\n- Chất lượng : sản phẩm không rỉ, bền đẹp, dễ sử dụng.\n\n- Giá thành : để có giá tốt nhất xin vui lòng liên hệ với chúng tôi theo số <strong>0979.959.633</strong>","Cúp mặt nguyệt phi 10 chất lượng cao","","publish","closed","closed","","cup-mat-nguyet-phi-10","","","2018-12-08 16:41:48","2018-12-08 09:41:48","","0","https://tppone.com/demo/mica2/?post_type=product&#038;p=241","0","product","","0"),
("242","1","2018-12-08 14:19:47","2018-12-08 07:19:47","","5 (2)","","inherit","open","closed","","5-2","","","2018-12-08 14:19:47","2018-12-08 07:19:47","","241","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/5-2.jpg","0","attachment","image/jpeg","0"),
("279","1","2018-12-08 14:54:43","2018-12-08 07:54:43","<div class=\"news-container\">\n\nCũng giống như đồng phục của công ty việc mỗi nhân viên,cán bộ,lãnh đạo sử dụng dây đeo thẻ nhân viên là một truyền thống lâu đời. Đó được xem là một nền văn hóa tốt đẹp và văn minh nơi công sở.\n\n</div>\n<div class=\"news-detailt\">\n\nĐeo <strong>dây đeo thẻ</strong> nhằm mục đích giúp cho khâu quản lý nhân sự được dễ dàng. Thể hiện được tác phong chuyên nghiệp, trang phục công sở gọn gàng, chuẩn mực.Giúp cho mọi người có thể thuận tiện hơn trong việc giao tiếp hằng ngày cũng như trao đổi trong vấn đề công việc.\n\n<strong>Dây đeo thẻ</strong> có thể đảm bảo an ninh nơi làm việc. Số lượng đông nhân viên không thể kiểm soát nổi và thường xảy ra vấn đề có người lạ vào khuôn viên sinh hoạt chung sẽ xảy ra tình trạng mất cắp tài sản quý giá.Vì thế để đảm bảo an toàn cho tính mạng cũng như tài sản chúng ta nên đeo thẻ nhân viên để phân biệt và tách lọc với những đối tượng xấu.\n\nViệc công nhân viên ở xa, các tỉnh lẻ nội trú ở mỗi Doanh Nghiệp là rất nhiều và tập trung ở khu ký túc xá nhân viên. Cho nên khi vào ký túc xá chỉ có những người có <strong>dây đeo thẻ nhân viên</strong> mới được vào.\n\nNgoài ra <strong>dây đeo thẻ</strong>  cũng được xem là một phụ kiện thời trang sành điệu và đầy cá tính nếu bạn kết hợp vài phụ kiện nhỏ khác như bao đựng thẻ, các biểu tượng ngộ nghĩnh. Như vậy dây đeo thẻ không đơn giản là một sợi dây đeo bình thường nữa mà nó còn trở thành một vật phẩm thời trang nghệ thuật làm tô lên vẻ đẹp của người mang dây đeo thẻ.\n\nMột trong những địa điểm Cung Cấp Sản Xuất - In Gia Công <strong>dây đeo thẻ nhân viên</strong>, dây đeo thẻ học sinh sinh viên Giá Rẻ tại Hà Nội là Minh Anh Adv. Đến với Minh Anh Adv Qúy Khách hàng sẽ được trải nghiệm các dịch vụ với chi phí rẻ nhất nhưng chất lượng nhất.\n\n</div>","Ý nghĩa của việc dùng dây đeo thẻ nhân viên tại nơi làm việc","","publish","open","open","","y-nghia-cua-viec-dung-day-deo-the-nhan-vien-tai-noi-lam-viec","","","2018-12-08 14:54:43","2018-12-08 07:54:43","","0","https://tppone.com/demo/mica2/?p=279","0","post","","0"),
("280","1","2018-12-08 14:54:40","2018-12-08 07:54:40","","day-deo-the","","inherit","open","closed","","day-deo-the","","","2018-12-08 14:54:40","2018-12-08 07:54:40","","279","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/day-deo-the.jpg","0","attachment","image/jpeg","0"),
("282","1","2018-12-08 14:55:21","2018-12-08 07:55:21","<div class=\"news-container\">\n\nThẻ nhân viên là một sản phẩm in ấn rất được ưa chuộng hiện nay của các công ty hay doanh nghiệp bởi nó ảnh hưởng trực tiếp tới sự chuyên nghiệp và bản sắc của mỗi doanh nghiệp. Bên cạch đó, theo các nhà quản lý nhân sự thì việc đeo thẻ nhân viên không những tạo cho nhân viên cảm thấy mình luôn được nhắc nhở việc thực hiện nội quy và quy định của công ty mà còn tự hào khi mình làm tại một môi trường công việc có tính chuyên nghiệp cao.\n\n</div>\n<div class=\"news-detailt\">\n\nThẻ nhân viên là một sản phẩm in ấn rất được ưa chuộng hiện nay của các công ty hay doanh nghiệp bởi nó ảnh hưởng trực tiếp tới sự chuyên nghiệp và bản sắc của mỗi doanh nghiệp. Bên cạch đó, theo các nhà quản lý nhân sự thì việc đeo thẻ nhân viên không những tạo cho nhân viên cảm thấy mình luôn được nhắc nhở việc thực hiện nội quy và quy định của công ty mà còn tự hào khi mình làm tại một môi trường công việc có tính chuyên nghiệp cao.\n\n<strong>LÀM SAO ĐỂ CÓ ĐƯỢC MẪU THẺ NHÂN VIÊN ĐẸP?</strong>\n\nIn thẻ nhựa nhân viên bao gồm các thông tin liên quan đến công ty, doanh nghiệp như: logo, tên tổ chức, công ty, doanh nghiệp  và thông tin cá nhân gồm có ảnh, tên, chức vụ của cán bộ công nhân viên, chức vụ tại cơ quan đang làm việc. Mẫu thẻ nhân viên đẹp cần chuẩn về thiết kế cũng như chỉnh chu về màu sắc và chất lượng sản xuất tốt nhất với ý tưởng đơn giản bám theo logo và bộ nhận diện thương hiệu của công ty, doanh nghiệp\n\n<b>Minh Anh</b> là đơn vị có hơn 10 năm kinh nghiệm trong lĩnh vực in ấn – thiết kế sản xuất thẻ nhân viên, đã cung cấp hơn 10.000 mẫu thẻ nhân viên đẹp cho các cá nhân, công ty, tổ chức, doanh nghiệp trong và ngoài nước. Với đội ngũ thiết kế và sản xuất  lành nghề với kinh nghiệm lâu năm, đầy nhiệt huyết và sự sáng tạo thiết kế sẽ giúp Quý khách có được mẫu thẻ nhân viên đẹp, phù hợp với bộ nhận diện của công ty và doanh nghiệp.\n\n<strong>PHỤ KIỆN THẺ NHỰA NHÂN VIÊN BAO GỒM</strong>\n\n- Bao đựng thẻ: bao da, vỏ, kẹp, nẹp thẻ bằng nhựa cứng, trong suốt hoặc nhiều màu khác nhau.\n\n- Dây đeo: đa dạng mẫu, màu sắc và kích thước.\n\n<strong>QUY CÁCH THIẾT KẾ THẺ NHÂN VIÊN</strong>\n\nThẻ nhân viên được làm bằng nhựa PVC 3 lớp hoặc 4 lớp, có độ bền cao, chịu được lực tác động cao, nhiệt độ và nước. Kích thước tiêu chuẩn của thẻ nhân viên là 86x54 (mm) bằng đúng kích thước của thẻ ngân hàng ATM và cũng được bo tròn ở 4 góc. Tuy nhiên, quý khách hàng hoàn toàn có thể thay đổi kích thước ( to hay nhỏ hơn)  để chiếc thẻ nhân viên trở nên ấn tượng hơn. Thẻ nhân viên đẹp sử dụng công nghệ in offset tiên tiến nhất và được ép bằng máy ép cao tần hiện đại nhẩt cho màu sắc chân thực và độ bền màu là vĩnh cửu mãi mãi với thời gian.\n\n<strong>SỰ ĐA NĂNG VÀ TÍNH BẢO MẬT CAO TIỆN LỢI VỚI NGƯỜI DÙNG</strong>\n\nThẻ nhân viên rất đa năng, ngoài việc cung cấp thông tin nhân viên thì nó còn là một công cụ hữu hiệu quảng cáo hình ảnh công ty bằng cách ép nhũ vàng nhũ bạc hoặc phủ UV định hình các thông tin về công ty. Làm mã vạch (QRcode) cho thẻ nhân viên không những tăng tính bảo mật mà còn có thể biến nó thành thẻ tích điểm, thẻ thanh toán ATM. Ép dải từ cho thẻ nhân viên có thể tích hợp nó thành thẻ chấm công, vừa tiện lợi vừa có tính bảo mật cao.\n\n<strong>CÔNG TY IN THẺ NHÂN VIÊN GIÁ RẺ - LẤY NGAY TRONG NGÀY</strong>\n\nCông ty Minh Anh nhận làm thẻ nhân viên mọi số lượng với giá thành hợp lý nhất trong thời gian nhanh nhất.\n\n» Tư vấn miễn phí thiết kế.\n\n» Nguồn phôi thẻ nhựa nhập trực tiếp từ nước ngoài giúp giảm giá thành.\n\n» Hệ thống sản xuất khép kín tại công ty không qua trung gian.\n\n» Đặt hàng – sản xuất – giao hàng tại cùng một địa điểm.\n\n» Miễn phí giao hàng trong nội thành.\n\n» Giảm giá 3-6% khi có thẻ hội viên hay thẻ giảm giá\n\n» Chiết khấu % cao cho người đặt hàng.\n\nThật đơn giản, bạn chỉ cần cho chúng tôi biết những gì bạn muốn truyền tải trên thẻ nhân viên, <b>Minh Anh</b> sẽ giúp bạn có những mẫu thẻ nhân viên đẹp, chuyên nghiệp, đầy tính sáng tạo đồng thời cho bạn biết chính xác chi phí - thời gian hoàn thành sớm nhất.\n\n</div>","Những mẫu thẻ nhân viên đẹp nhất tại Minh Anh ADV","","publish","open","open","","mau-the-nhan-vien-dep-tai-minh-anh","","","2018-12-08 14:59:39","2018-12-08 07:59:39","","0","https://tppone.com/demo/mica2/?p=282","0","post","","0"),
("283","1","2018-12-08 14:55:17","2018-12-08 07:55:17","","tintuc-3","","inherit","open","closed","","tintuc-3","","","2018-12-08 14:55:17","2018-12-08 07:55:17","","282","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/tintuc-3.jpg","0","attachment","image/jpeg","0"),
("285","1","2018-12-08 14:55:54","2018-12-08 07:55:54","<div class=\"news-container\">\n\nThẻ VIP, Thẻ khách hàng thân thiết, Thẻ Hội viên, Thẻ Tích điểm, Thẻ Thành Viên … là tên gọi chung của thẻ này được phát hành với mục đích nhận dạng và tri ân những thành viên hoặc khách hàng quan trọng, lâu năm của tổ chức.\n\n<strong style=\"font-size: 14.4px;\"><u>Khi khách hàng đến mua, sử dụng sản phẩm dịch vụ của cty, Để tồn tại và phát triển các nhà cung cấp đều muốn biết</u></strong><span style=\"font-size: 14.4px;\">:</span>\n\n</div>\n<div class=\"news-detailt\">\n\n- Khách hàng có hài lòng với hàng hóa dịch vụ mình cung cấp hay không\n\n- Khách hàng có muốn quay lại tiếp tục sử dụng sản phẩm, dịch vụ của mình hay không\n\n- Trong nhiều đối thủ cạnh tranh thì khách hàng vẫn tin tưởng và chọn sử dụng sản phẩm dịch vụ của mình.\n\n<strong><u>Biết được những vấn đề đó doanh nghiệp mới có thể: Phát hành thẻ thành viên</u></strong>\n\nPhát huy thế mạnh sản phẩm, khắc phục những điểm yếu của sản phẩm mà chưa làm khách hàng hài lòng=&gt; hoàn thiện sản phẩm, cải tiến chất lượng, nắm bắt được mong mỏi nhu cầu về sản phẩm  ngày càng phát triển, biến đổi không ngừng của khách.\n\nNắm bắt tâm được lý khách hàng để kịp thời làm hài lòng khách hàng qua đó tiêu thụ được sản phẩm, dịch vụ\n\nBên cạnh việc nâng cao chất lượng sản phẩm, nắm bắt hu cầu khách hàng thì việc làm sao đễ giữ chân khách hàng trogn thị trường có nhiều cạnh tranh, nhiều nhà cung cấp chất lượng dịch vụ không kém là vấn đề sống còn của công ty.\n\n</div>","Sử dụng thẻ thành viên có lợi như thế nào?","","publish","open","open","","the-thanh-vien-co-loi-nhu-the-nao","","","2018-12-08 14:59:22","2018-12-08 07:59:22","","0","https://tppone.com/demo/mica2/?p=285","0","post","","0"),
("286","1","2018-12-08 14:55:51","2018-12-08 07:55:51","","tintuc-2","","inherit","open","closed","","tintuc-2","","","2018-12-08 14:55:51","2018-12-08 07:55:51","","285","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/tintuc-2.jpg","0","attachment","image/jpeg","0"),
("288","1","2018-12-08 14:56:45","2018-12-08 07:56:45","<div class=\"news-container\">\n\nCác loại thẻ nhựa đang ngày càng phổ biến và trở thành công cụ hữu hiệu để các doanh nghiệp tiếp thị, đánh bóng thương hiệu, cũng như nâng cao tính chuyên nghiệp trong hoạt động quản lý, kinh doanh.\n\n</div>\n<div class=\"news-detailt\">\n\nThẻ nhựa không còn là một sản phẩm đặc thù của ngành ngân hàng, giờ đây, từ nhà máy đến cao ốc văn phòng, từ trung tâm thương mại hạng sang đến siêu thị bình dân, từ nhà hàng khách sạn đến những quán café, bãi giữ xe… đâu đâu cũng thấy sự xuất hiện của các loại thẻ nhựa với những chức năng, công dụng khác nhau.\n\nTrong lĩnh vực quản lý, thẻ nhựa đã thay thế chiếc thẻ giấy dán ảnh trước kia bởi nhiều ưu điểm như: bền, đẹp, chống thấm và trầy xướt để trở thành chiếc thẻ nhân viên, thẻ học sinh, sinh viên, thẻ thành viên… cung cấp đầy đủ các thông tin cơ bản cũng như hình ảnh nhận diện của người sở hữu. Những chiếc thẻ này không chỉ giúp nâng tầm hình ảnh của doanh nghiệp, tổ chức với bên ngoài mà theo các nhà tâm lý, còn khiến chính người đeo thẻ cảm thấy có trách nhiệm và tự hào hơn đối với doanh nghiệp, tổ chức đó.\n\nỞ khía cạnh tiếp thị, kinh doanh, việc phát hành các loại thẻ nhựa như thẻ ưu đãi, thẻ VIP, thẻ giảm giá, thẻ danh thiếp giới thiệu… sẽ giúp doanh nghiệp, tổ chức thể hiện sự quan tâm và tôn trọng đến các đối tác, khách hàng, từ đó tạo được mối quan hệ thân thiết hơn, gắn kết ngày càng bền vững. Ngoài ra, những chiếc thẻ nhựa đẹp đi kèm nhiều tiện ích luôn là một công cụ hữu hiệu trong hoạt động quảng cáo, đánh bóng hình ảnh và nâng cao doanh số.\n\nĐặc biệt, với công nghệ in ấn hiện đại, những chiếc thẻ từ hoặc thẻ chip điện tử có tính bảo mật cao ra đời càng mang đến nhiều tiện ích và ứng dụng cho người dùng. Theo đó, những chiếc thẻ này có thể giúp chấm công hay điểm danh, ra vào cổng, mở khóa, quản lý hệ thống, thống kê, thanh toán…\n\nTừ trước đến nay, ở nước ta, các loại thẻ nhựa thường được sản xuất từ phôi nhựa 3 lớp, hoặc nhựa pha giấy theo một quy cách nhất định và bằng các loại mực thường, nên có giá thành khá thấp. Tuy nhiên, cách làm này khiến thẻ nhựa có chất lượng màu kém, chỉ đạt 60-70% yêu cầu mà độ bền cũng không cao, dễ bong tróc, bay màu trong thời gian ngắn. Trong khi đó, với công nghệ in ấn thẻ nhựa trực tiếp từ phôi nhựa PVC ISO 4 lớp bằng mực in của Hàn Quốc, độ trung thực màu sắc trên thẻ được đảm bảo đến 99%, tuổi thọ của đoạn phim từ hoặc chip điện tử cũng tăng lên đáng kể. Do vậy, những chiếc thẻ nhựa chất lượng cao được sản xuất theo tiêu chuẩn PVC ISO có độ bền lên đến trên 3 năm.\n\nHãy liên hệ ngay với Minhanhadv để được tư vấn về mẫu mã thẻ, cách quản lý khách hàng bằng thẻ từ, mã vạch…. Đảm bảo chất lượng và giá tốt nhất thị trường.\n\nRất vinh hạnh được là nhà cung cấp phương tiện đóng góp vào sự phát triển kinh doanh của quý khách hàng!\n\n</div>","Thẻ nhựa - Một sản phẩm in ấn công nghệ cao","","publish","open","open","","the-nhua-mot-san-pham-in-an-cong-nghe-cao","","","2018-12-08 14:56:45","2018-12-08 07:56:45","","0","https://tppone.com/demo/mica2/?p=288","0","post","","0"),
("289","1","2018-12-08 14:56:42","2018-12-08 07:56:42","","in-the-nhua-lay-gap-hcm-788x445","","inherit","open","closed","","in-the-nhua-lay-gap-hcm-788x445","","","2018-12-08 14:56:42","2018-12-08 07:56:42","","288","https://tppone.com/demo/mica2/wp-content/uploads/2018/12/in-the-nhua-lay-gap-hcm-788x445.jpg","0","attachment","image/jpeg","0"),
("302","1","2018-12-08 15:03:12","2018-12-08 08:03:12","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[email* your-email placeholder \"Nhập địa chỉ email của bạn...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký ngay\"]\n    </div>\n    </div>\n1\nMẫu website quảng cáo - Thiết kế web Webdemo\n[your-name] <wordpress@mica2.webdemo.com>\nwebdemo@gmail.com\nCó một email đăng ký nhận tin khuyến mại từ website:\n- Địa chỉ email: [your-email]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website quảng cáo - Thiết kế web Webdemo (https://bizhostvn.com/w/mica2)\n\n\n\n\n\nMẫu website quảng cáo - Thiết kế web Webdemo \"[your-subject]\"\nMẫu website quảng cáo - Thiết kế web Webdemo <wordpress@mica2.webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website quảng cáo - Thiết kế web Webdemo (https://bizhostvn.com/w/mica2)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Đăng ký nhận tin khuyến mại","","publish","closed","closed","","form-lien-he-1","","","2018-12-08 15:04:18","2018-12-08 08:04:18","","0","https://tppone.com/demo/mica2/?post_type=wpcf7_contact_form&#038;p=302","0","wpcf7_contact_form","","0"),
("326","1","2018-12-08 15:11:08","2018-12-08 08:11:08","[section label=\"Nhận tin khuyến mại\" class=\"nhan-tin\" bg_color=\"rgb(234, 234, 234)\" padding=\"18px\"]\n\n[gap height=\"16px\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"302\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[gap height=\"7px\"]\n\n<p style=\"text-align: right;\"><span style=\"color: #000000;\">Kết nối với chúng tôi:</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"left\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" linkedin=\"#\" email=\"#\" pinterest=\"#\" youtube=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Footer-section\" class=\"footer-section\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"547\" img_width=\"205\"]\n\n<p><span style=\"color: #000000; font-size: 90%;\">Webdemo.com là blog cá nhân chia sẻ những kiến thức đồ họa và kinh nghiệm làm website Wordpress cho tất cả mọi người</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 100%;\"><strong><span style=\"color: #000000;\">Thông tin liên hệ</span></strong></span></p>\n<ul>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Địa chỉ: Tầng 5 A17 Ngõ 26  Doãn Kế Thiện, Mai Dịch,Cầu Giấy, Hà Nội</span></li>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Hotline: 0978 959 633</span></li>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Email: minhanhadv2015@gmail.com</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><strong><span style=\"color: #000000;\">Hỗ trợ khách hàng</span></strong></p>\n<ul>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Giới thiệu\" href=\"/gioi-thieu/\" target=\"_self\" rel=\"noopener noreferrer\">Giới thiệu</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Hướng dẫn mua hàng\" href=\"https://Webdemo.com\" target=\"_self\" rel=\"noopener noreferrer\">Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Hướng dẫn thanh toán\" href=\"/huong-dan-thanh-toan/\" target=\"_self\" rel=\"noopener noreferrer\">Hướng dẫn thanh toán</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Liên hệ\" href=\"/lien-he/\" target=\"_self\" rel=\"noopener noreferrer\">Liên hệ</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><strong><span style=\"color: #000000;\">Chính sách &amp; quy định</span></strong></p>\n<ul>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách và qui định chung\" href=\"http://minhanhadv.com/chinh-sach-va-qui-dinh-chung.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách và qui định chung</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách vận chuyển\" href=\"/chinh-sach-van-chuyen.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách vận chuyển</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách bảo hành\" href=\"/chinh-sach-bao-hanh.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách bảo hành</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách đổi, trả lại hàng\" href=\"/chinh-sach-doi-tra-lai-hang.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách đổi, trả lại hàng</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Bảo mật thông tin khách hàng\" href=\"/bao-mat-thong-tin-khach-hang.html\" target=\"_self\" rel=\"noopener noreferrer\">Bảo mật thông tin khách hàng</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-05-09 14:43:54","2019-05-09 07:43:54","","0","https://tppone.com/demo/mica2/?post_type=blocks&#038;p=326","0","blocks","","0"),
("334","1","2018-12-08 15:14:52","2018-12-08 08:14:52","<blockquote class=\"wp-embedded-content\" data-secret=\"TfQDKIfv0b\"><a href=\"https://bizhostvn.com/w/mica2/lien-he/\">Liên hệ</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"https://bizhostvn.com/w/mica2/lien-he/embed/#?secret=TfQDKIfv0b\" data-secret=\"TfQDKIfv0b\" width=\"347\" height=\"200\" title=\"&#8220;Liên hệ&#8221; &#8212; Mẫu website quảng cáo - Thiết kế web Webdemo\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>","","","publish","closed","closed","","adc542d9a200507475a3eca8e9cea3eb","","","2018-12-08 15:14:52","2018-12-08 08:14:52","","0","https://tppone.com/demo/mica2/2018/12/08/adc542d9a200507475a3eca8e9cea3eb/","0","oembed_cache","","0"),
("335","1","2018-12-08 15:15:36","2018-12-08 08:15:36","","Chính sách và quy định chung","","publish","closed","closed","","chinh-sach-va-quy-dinh-chung","","","2018-12-08 15:15:36","2018-12-08 08:15:36","","0","https://tppone.com/demo/mica2/?page_id=335","0","page","","0"),
("338","1","2018-12-08 15:16:22","2018-12-08 08:16:22","","Chính sách vận chuyển","","publish","closed","closed","","chinh-sach-van-chuyen","","","2018-12-08 15:16:22","2018-12-08 08:16:22","","0","https://tppone.com/demo/mica2/?page_id=338","0","page","","0"),
("340","1","2018-12-08 15:16:29","2018-12-08 08:16:29","","Chính sách bảo hành","","publish","closed","closed","","chinh-sach-bao-hanh","","","2018-12-08 15:16:29","2018-12-08 08:16:29","","0","https://tppone.com/demo/mica2/?page_id=340","0","page","","0"),
("342","1","2018-12-08 15:16:39","2018-12-08 08:16:39","","Chính sách đổi, trả hàng","","publish","closed","closed","","chinh-sach-doi-tra-hang","","","2018-12-08 15:16:39","2018-12-08 08:16:39","","0","https://tppone.com/demo/mica2/?page_id=342","0","page","","0"),
("344","1","2018-12-08 15:16:48","2018-12-08 08:16:48","","Bảo mật thông tin khách hàng","","publish","closed","closed","","bao-mat-thong-tin-khach-hang","","","2018-12-08 15:16:48","2018-12-08 08:16:48","","0","https://tppone.com/demo/mica2/?page_id=344","0","page","","0"),
("353","1","2018-12-08 15:27:25","2018-12-08 08:27:25","[section label=\"Slider\" class=\"slider-section\" padding=\"0px\"]\n\n[row style=\"collapse\"]\n\n[col span=\"3\" span__sm=\"12\" align=\"left\" class=\"cot1\"]\n\n<span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 1: Demoweb</strong></span>\n\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<span style=\"font-size: 120%;\"><strong><span style=\"color: #ed1c24;\"></span></strong></span>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<span style=\"font-size: 100%; color: #000000;\">minhanhadv2015@gmail.com</span>\n\n[/featured_box]\n[gap height=\"14px\"]\n\n<span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 2: Ms. Hương</strong></span>\n\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<span style=\"font-size: 120%;\"><strong><span style=\"color: #ed1c24;\">0123.456.789</span></strong></span>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<span style=\"font-size: 100%; color: #000000;\">webdemo@gmail.com</span>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\" flickr=\"#\"]\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"119\" image_size=\"original\" height=\"38%\"]\n\n[ux_image id=\"121\" image_size=\"original\" height=\"38%\"]\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]","Header page","","publish","closed","closed","","header-page","","","2018-12-08 15:27:38","2018-12-08 08:27:38","","0","https://tppone.com/demo/mica2/?post_type=blocks&#038;p=353","0","blocks","","0"),
("535","1","2018-12-08 19:18:46","2018-12-08 12:18:46","[section label=\"Slider\" class=\"slider-section\" padding=\"0px\"]\n\n[row style=\"collapse\"]\n\n[col span=\"3\" span__sm=\"12\" align=\"left\" class=\"cot1\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 1: Demoweb</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ff890b;\"></span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">minhanhadv2015@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"14px\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 2: Ms. Hương</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ed1c24;\">0123.456.789</span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">webdemo@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\" flickr=\"#\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"119\" image_size=\"original\" height=\"38%\"]\n\n[ux_image id=\"121\" image_size=\"original\" height=\"38%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tiêu chí\" class=\"tieu-chi\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"168\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Tiết kiệm chi phí</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tiết kiệm tối đa chi phí sử dụng so với các loại sản phẩm khác</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"172\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">An toàn cho người sử dụng</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tuyệt đối không hóa chất gây hại cho người sử dụng.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"175\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Thân thiện môi trường</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Sản phẩm Newsuns hoàn toàn thân thiện với môi trường.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm\" class=\"san-pham\" padding=\"0px\"]\n\n[row class=\"row1\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Thẻ tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"17\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ thay tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-thay-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"18\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Biển chức danh\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/bien-chuc-danh/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"19\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ nhân viên PVC\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-nhua/the-nhua-nhan-vien-pvc/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"22\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Quà tặng pha lê\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/qua-tang/qua-tang-pha-le/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"36\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin tức\" color=\"rgb(253, 138, 0)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"2\" columns__md=\"1\" cat=\"1\" posts=\"4\" show_date=\"text\" excerpt_length=\"25\" image_height=\"77%\" image_width=\"38\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-12-08 19:18:46","2018-12-08 12:18:46","","2","https://tppone.com/demo/mica2/2018/12/08/2-revision-v1/","0","revision","","0"),
("536","1","2018-12-08 19:19:00","2018-12-08 12:19:00","[section label=\"Slider\" class=\"slider-section\" padding=\"0px\"]\n\n[row style=\"collapse\"]\n\n[col span=\"3\" span__sm=\"12\" align=\"left\" class=\"cot1\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 1: Demoweb</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ff890b;\"></span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">minhanhadv2015@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"14px\"]\n\n<p><span style=\"color: #99cc00; font-size: 110%;\"><strong>Kinh doanh 2: Ms. Hương</strong></span></p>\n[featured_box img=\"143\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #ff890b;\">0123.456.789</span></strong></span></p>\n\n[/featured_box]\n[featured_box img=\"130\" img_width=\"30\" pos=\"left\"]\n\n[gap height=\"6px\"]\n\n<p><span style=\"font-size: 100%; color: #000000;\">webdemo@gmail.com</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\" flickr=\"#\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"119\" image_size=\"original\" height=\"38%\"]\n\n[ux_image id=\"121\" image_size=\"original\" height=\"38%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tiêu chí\" class=\"tieu-chi\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"168\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Tiết kiệm chi phí</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tiết kiệm tối đa chi phí sử dụng so với các loại sản phẩm khác</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"172\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">An toàn cho người sử dụng</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Tuyệt đối không hóa chất gây hại cho người sử dụng.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"175\" img_width=\"73\" pos=\"left\"]\n\n<h4><span style=\"font-size: 95%; color: #008000;\">Thân thiện môi trường</span></h4>\n<p><span style=\"font-size: 95%; color: #000000;\">Sản phẩm Newsuns hoàn toàn thân thiện với môi trường.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm\" class=\"san-pham\" padding=\"0px\"]\n\n[row class=\"row1\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Thẻ tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"17\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ thay tên nhân viên\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/the-thay-ten-nhan-vien/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"18\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Biển chức danh\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-ten/bien-chuc-danh/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"19\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Thẻ nhân viên PVC\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/the-nhua/the-nhua-nhan-vien-pvc/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"22\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n[title text=\"Quà tặng pha lê\" color=\"rgb(255, 125, 0)\" size=\"95\" link_text=\"+ Xem tất cả\" link=\"/danh-muc/qua-tang/qua-tang-pha-le/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"6\" cat=\"36\" products=\"6\" image_height=\"140%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.25)\" image_hover=\"overlay-add\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin tức\" color=\"rgb(253, 138, 0)\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"2\" columns__md=\"1\" cat=\"1\" posts=\"4\" show_date=\"text\" excerpt_length=\"25\" image_height=\"77%\" image_width=\"38\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-12-08 19:19:00","2018-12-08 12:19:00","","2","https://tppone.com/demo/mica2/2018/12/08/2-revision-v1/","0","revision","","0"),
("546","1","2019-05-06 16:08:22","2019-05-06 09:08:22","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:08:22\"\n    }\n}","","","trash","closed","closed","","f551899d-5f96-4221-a181-cc1a2b138a24","","","2019-05-06 16:08:22","2019-05-06 09:08:22","","0","https://tppone.com/demo/mica2/f551899d-5f96-4221-a181-cc1a2b138a24/","0","customize_changeset","","0"),
("547","1","2019-05-06 17:15:50","2019-05-06 10:15:50","","mica2","","inherit","open","closed","","mica2","","","2019-05-06 17:15:50","2019-05-06 10:15:50","","0","https://tppone.com/demo/mica2/wp-content/uploads/2019/05/mica2.png","0","attachment","image/png","0"),
("548","1","2019-05-06 17:15:55","2019-05-06 10:15:55","{\n    \"mica::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/mica2/wp-content/uploads/2019/05/mica2.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:15:55\"\n    }\n}","","","trash","closed","closed","","8f361d56-deb4-4fc8-8b0a-e9800e8532c7","","","2019-05-06 17:15:55","2019-05-06 10:15:55","","0","https://tppone.com/demo/mica2/8f361d56-deb4-4fc8-8b0a-e9800e8532c7/","0","customize_changeset","","0"),
("549","1","2019-05-09 14:43:54","2019-05-09 07:43:54","[section label=\"Nhận tin khuyến mại\" class=\"nhan-tin\" bg_color=\"rgb(234, 234, 234)\" padding=\"18px\"]\n\n[gap height=\"16px\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"302\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[gap height=\"7px\"]\n\n<p style=\"text-align: right;\"><span style=\"color: #000000;\">Kết nối với chúng tôi:</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"left\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" linkedin=\"#\" email=\"#\" pinterest=\"#\" youtube=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Footer-section\" class=\"footer-section\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"547\" img_width=\"205\"]\n\n<p><span style=\"color: #000000; font-size: 90%;\">Webdemo.com là blog cá nhân chia sẻ những kiến thức đồ họa và kinh nghiệm làm website Wordpress cho tất cả mọi người</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 100%;\"><strong><span style=\"color: #000000;\">Thông tin liên hệ</span></strong></span></p>\n<ul>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Địa chỉ: Tầng 5 A17 Ngõ 26  Doãn Kế Thiện, Mai Dịch,Cầu Giấy, Hà Nội</span></li>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Hotline: 0978 959 633</span></li>\n<li class=\"p-f name-company\"><span style=\"font-size: 90%;\">Email: minhanhadv2015@gmail.com</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><strong><span style=\"color: #000000;\">Hỗ trợ khách hàng</span></strong></p>\n<ul>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Giới thiệu\" href=\"/gioi-thieu/\" target=\"_self\" rel=\"noopener noreferrer\">Giới thiệu</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Hướng dẫn mua hàng\" href=\"https://Webdemo.com\" target=\"_self\" rel=\"noopener noreferrer\">Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Hướng dẫn thanh toán\" href=\"/huong-dan-thanh-toan/\" target=\"_self\" rel=\"noopener noreferrer\">Hướng dẫn thanh toán</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Liên hệ\" href=\"/lien-he/\" target=\"_self\" rel=\"noopener noreferrer\">Liên hệ</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><strong><span style=\"color: #000000;\">Chính sách &amp; quy định</span></strong></p>\n<ul>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách và qui định chung\" href=\"http://minhanhadv.com/chinh-sach-va-qui-dinh-chung.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách và qui định chung</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách vận chuyển\" href=\"/chinh-sach-van-chuyen.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách vận chuyển</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách bảo hành\" href=\"/chinh-sach-bao-hanh.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách bảo hành</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Chính sách đổi, trả lại hàng\" href=\"/chinh-sach-doi-tra-lai-hang.html\" target=\"_self\" rel=\"noopener noreferrer\">Chính sách đổi, trả lại hàng</a></span></li>\n<li><span style=\"font-size: 90%; color: #808080;\"><a style=\"color: #808080;\" title=\"Bảo mật thông tin khách hàng\" href=\"/bao-mat-thong-tin-khach-hang.html\" target=\"_self\" rel=\"noopener noreferrer\">Bảo mật thông tin khách hàng</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","326-revision-v1","","","2019-05-09 14:43:54","2019-05-09 07:43:54","","326","https://bizhostvn.com/w/mica2/326-revision-v1/","0","revision","","0"),
("550","1","2019-05-10 08:56:19","2019-05-10 01:56:19","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-10 08:56:19","2019-05-10 01:56:19","","0","https://bizhostvn.com/w/mica2/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("48","16","0"),
("49","16","0"),
("52","16","0"),
("53","42","0"),
("54","42","0"),
("55","42","0"),
("56","42","0"),
("57","42","0"),
("58","42","0"),
("59","42","0"),
("60","42","0"),
("61","42","0"),
("62","42","0"),
("63","42","0"),
("64","42","0"),
("65","42","0"),
("66","42","0"),
("67","42","0"),
("68","42","0"),
("69","42","0"),
("70","42","0"),
("71","42","0"),
("72","42","0"),
("73","42","0"),
("74","42","0"),
("75","42","0"),
("76","42","0"),
("77","42","0"),
("78","42","0"),
("79","42","0"),
("80","42","0"),
("81","42","0"),
("183","2","0"),
("183","15","0"),
("183","17","0"),
("185","2","0"),
("185","15","0"),
("185","17","0"),
("187","2","0"),
("187","15","0"),
("187","17","0"),
("189","2","0"),
("189","15","0"),
("189","17","0"),
("191","2","0"),
("191","15","0"),
("191","17","0"),
("193","2","0"),
("193","15","0"),
("193","17","0"),
("195","2","0"),
("195","15","0"),
("195","18","0"),
("197","2","0"),
("197","18","0"),
("199","2","0"),
("199","15","0"),
("199","18","0"),
("201","2","0"),
("201","15","0"),
("201","18","0"),
("203","2","0"),
("203","15","0"),
("203","18","0"),
("205","2","0"),
("205","15","0"),
("205","18","0"),
("207","2","0"),
("207","15","0"),
("207","19","0"),
("209","2","0"),
("209","15","0"),
("209","19","0"),
("211","2","0"),
("211","15","0"),
("211","19","0"),
("213","2","0"),
("213","15","0"),
("213","19","0"),
("215","2","0"),
("215","15","0"),
("215","19","0"),
("217","2","0"),
("217","15","0"),
("217","19","0"),
("219","2","0"),
("219","21","0"),
("219","22","0"),
("221","2","0"),
("221","21","0"),
("221","22","0"),
("223","2","0"),
("223","21","0"),
("223","22","0"),
("225","2","0"),
("225","21","0"),
("225","22","0"),
("227","2","0"),
("227","21","0"),
("227","22","0");
INSERT INTO bz_term_relationships VALUES
("229","2","0"),
("229","21","0"),
("229","22","0"),
("231","2","0"),
("231","35","0"),
("231","36","0"),
("233","2","0"),
("233","35","0"),
("233","36","0"),
("235","2","0"),
("235","35","0"),
("235","36","0"),
("237","2","0"),
("237","35","0"),
("237","36","0"),
("239","2","0"),
("239","35","0"),
("239","36","0"),
("241","2","0"),
("241","35","0"),
("241","36","0"),
("279","1","0"),
("282","1","0"),
("285","1","0"),
("288","1","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","Các loại thẻ nhựa đang ngày càng phổ biến và trở thành công cụ hữu hiệu để các doanh nghiệp tiếp thị, đánh bóng thương hiệu, cũng như nâng cao tính chuyên nghiệp trong hoạt động quản lý, kinh doanh.\n\nThẻ nhựa không còn là một sản phẩm đặc thù của ngành ngân hàng, giờ đây, từ nhà máy đến cao ốc văn phòng, từ trung tâm thương mại hạng sang đến siêu thị bình dân, từ nhà hàng khách sạn đến những quán café, bãi giữ xe… đâu đâu cũng thấy sự xuất hiện của các loại thẻ nhựa với những chức năng, công dụng khác nhau.\n\nTrong lĩnh vực quản lý, thẻ nhựa đã thay thế chiếc thẻ giấy dán ảnh trước kia bởi nhiều ưu điểm như: bền, đẹp, chống thấm và trầy xướt để trở thành chiếc thẻ nhân viên, thẻ học sinh, sinh viên, thẻ thành viên… cung cấp đầy đủ các thông tin cơ bản cũng như hình ảnh nhận diện của người sở hữu. Những chiếc thẻ này không chỉ giúp nâng tầm hình ảnh của doanh nghiệp, tổ chức với bên ngoài mà theo các nhà tâm lý, còn khiến chính người đeo thẻ cảm thấy có trách nhiệm và tự hào hơn đối với doanh nghiệp, tổ chức đó.","0","4"),
("2","2","product_type","","0","30"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_visibility","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_cat","","0","17"),
("16","16","nav_menu","","0","3"),
("17","17","product_cat","","15","6"),
("18","18","product_cat","","15","6"),
("19","19","product_cat","","15","6"),
("20","20","product_cat","","15","0"),
("21","21","product_cat","","0","6"),
("22","22","product_cat","","21","6"),
("23","23","product_cat","","21","0"),
("24","24","product_cat","","21","0"),
("25","25","product_cat","","0","0"),
("26","26","product_cat","","25","0"),
("27","27","product_cat","","25","0"),
("28","28","product_cat","","25","0"),
("29","29","product_cat","","25","0"),
("30","30","product_cat","","25","0"),
("31","31","product_cat","","25","0"),
("32","32","product_cat","","25","0"),
("33","33","product_cat","","25","0"),
("34","34","product_cat","","25","0"),
("35","35","product_cat","","0","6"),
("36","36","product_cat","","35","6"),
("37","37","product_cat","","35","0"),
("38","38","product_cat","","35","0"),
("39","39","product_cat","","35","0"),
("40","40","product_cat","","35","0"),
("41","41","product_cat","","35","0"),
("42","42","nav_menu","","0","29");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","15","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","15","display_type",""),
("3","15","thumbnail_id","0"),
("4","17","order","0"),
("5","17","display_type",""),
("6","17","thumbnail_id","0"),
("7","18","order","0"),
("8","18","display_type",""),
("9","18","thumbnail_id","0"),
("10","19","order","0"),
("11","19","display_type",""),
("12","19","thumbnail_id","0"),
("13","20","order","0"),
("14","20","display_type",""),
("15","20","thumbnail_id","0"),
("16","21","order","0"),
("17","21","display_type",""),
("18","21","thumbnail_id","0"),
("19","22","order","0"),
("20","22","display_type",""),
("21","22","thumbnail_id","0"),
("22","23","order","0"),
("23","23","display_type",""),
("24","23","thumbnail_id","0"),
("25","24","order","0"),
("26","24","display_type",""),
("27","24","thumbnail_id","0"),
("28","25","order","0"),
("29","25","display_type",""),
("30","25","thumbnail_id","0"),
("31","26","order","0"),
("32","26","display_type",""),
("33","26","thumbnail_id","0"),
("34","27","order","0"),
("35","27","display_type",""),
("36","27","thumbnail_id","0"),
("37","28","order","0"),
("38","28","display_type",""),
("39","28","thumbnail_id","0"),
("40","29","order","0"),
("41","29","display_type",""),
("42","29","thumbnail_id","0"),
("43","30","order","0"),
("44","30","display_type",""),
("45","30","thumbnail_id","0"),
("46","31","order","0"),
("47","31","display_type",""),
("48","31","thumbnail_id","0"),
("49","32","order","0"),
("50","32","display_type",""),
("51","32","thumbnail_id","0"),
("52","33","order","0"),
("53","33","display_type",""),
("54","33","thumbnail_id","0"),
("55","34","order","0"),
("56","34","display_type",""),
("57","34","thumbnail_id","0"),
("58","35","order","0"),
("59","35","display_type",""),
("60","35","thumbnail_id","0"),
("61","36","order","0"),
("62","36","display_type",""),
("63","36","thumbnail_id","0"),
("64","37","order","0"),
("65","37","display_type",""),
("66","37","thumbnail_id","0"),
("67","38","order","0"),
("68","38","display_type",""),
("69","38","thumbnail_id","0"),
("70","39","order","0"),
("71","39","display_type",""),
("72","39","thumbnail_id","0"),
("73","40","order","0"),
("74","40","display_type",""),
("75","40","thumbnail_id","0"),
("76","41","order","0"),
("77","41","display_type",""),
("78","41","thumbnail_id","0"),
("79","15","product_count_product_cat","18"),
("80","17","product_count_product_cat","6"),
("81","18","product_count_product_cat","6"),
("82","19","product_count_product_cat","6"),
("83","21","product_count_product_cat","6"),
("84","22","product_count_product_cat","6"),
("85","35","product_count_product_cat","6"),
("86","36","product_count_product_cat","6");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Tin tức","tin-tuc","0"),
("2","simple","simple","0"),
("3","grouped","grouped","0"),
("4","variable","variable","0"),
("5","external","external","0"),
("6","exclude-from-search","exclude-from-search","0"),
("7","exclude-from-catalog","exclude-from-catalog","0"),
("8","featured","featured","0"),
("9","outofstock","outofstock","0"),
("10","rated-1","rated-1","0"),
("11","rated-2","rated-2","0"),
("12","rated-3","rated-3","0"),
("13","rated-4","rated-4","0"),
("14","rated-5","rated-5","0"),
("15","Thẻ tên","the-ten","0"),
("16","Topbar menu","topbar-menu","0"),
("17","Thẻ tên nhân viên","the-ten-nhan-vien","0"),
("18","Thẻ thay tên nhân viên","the-thay-ten-nhan-vien","0"),
("19","Biển chức danh","bien-chuc-danh","0"),
("20","Huy hiệu","huy-hieu","0"),
("21","Thẻ nhựa","the-nhua","0"),
("22","Thẻ nhựa nhân viên PVC","the-nhua-nhan-vien-pvc","0"),
("23","Thẻ học sinh - sinh viên","the-hoc-sinh-sinh-vien","0"),
("24","Thẻ VIP - thẻ khách hàng","the-vip-the-khach-hang","0"),
("25","Ấn phẩm văn phòng","an-pham-van-phong","0"),
("26","Card visit","card-visit","0"),
("27","Tiêu đề thư","tieu-de-thu","0"),
("28","Phong bì thư","phong-bi-thu","0"),
("29","Tờ rơi","to-roi","0"),
("30","Brochure","brochure","0"),
("31","Kẹp file","kep-file","0"),
("32","Phiếu thu, phiếu chi","phieu-thu-phieu-chi","0"),
("33","Phiếu xuất kho","phieu-xuat-kho","0"),
("34","Tem decal, tem bảo hành","tem-decal-tem-bao-hanh","0"),
("35","Quà tặng","qua-tang","0"),
("36","Quà tặng pha lê","qua-tang-pha-le","0"),
("37","Quà tặng kim loại","qua-tang-kim-loai","0"),
("38","Gốm sứ","gom-su","0"),
("39","Ly cốc thủy tinh","ly-coc-thuy-tinh","0"),
("40","Đồng hồ","dong-ho","0"),
("41","Quà tặng quảng cáo","qua-tang-quang-cao","0"),
("42","Main-menu","main-menu","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:9:{s:64:\"d6d41054738bf7aad46c5d450c2d33765224c005ee1b34a68a6c5cb1fd67a913\";a:4:{s:10:\"expiration\";i:1557485669;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557312869;}s:64:\"eba7a6934a921726f6bd657b4eb2fc93fddc8695738b5df11a3ff23796faeef0\";a:4:{s:10:\"expiration\";i:1557560592;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557387792;}s:64:\"813164d2694b07c737128a6eb47eb0c96684d1565ba2841ff5d87ede08c946f7\";a:4:{s:10:\"expiration\";i:1557616401;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443601;}s:64:\"3f83735f1ae3b066f95431519ec472f08afc0a44b168b6a8a61db45f86092c84\";a:4:{s:10:\"expiration\";i:1557625810;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453010;}s:64:\"af7843619eeb2c7c649d044863a410738f554634e1b77809c889926b75d64bcd\";a:4:{s:10:\"expiration\";i:1557625810;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453010;}s:64:\"b1b2fd5c2333d77cbb6a8ab0735a2f6922700abbf6ca64eeb8a323f503ea6ac7\";a:4:{s:10:\"expiration\";i:1557628223;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455423;}s:64:\"a99c1c7a177c749822fe2548f671ef7f83e77b15b4d842a34116b685fd672733\";a:4:{s:10:\"expiration\";i:1557628637;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455837;}s:64:\"478412060444e82d089511d545a05fb05ea271e21f00c00bd3bc29721e1b3466\";a:4:{s:10:\"expiration\";i:1557637615;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557464815;}s:64:\"66f001805cf3d0a15b6088cec95b78595692812cebcda3f0e85827e676ba1858\";a:4:{s:10:\"expiration\";i:1557652417;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557479617;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","545"),
("18","1","show_try_gutenberg_panel","0"),
("19","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557387790"),
("23","1","dismissed_no_secure_connection_notice","1"),
("24","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("25","1","wc_last_active","1557446400"),
("26","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("27","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:15:\"add-product_cat\";i:6;s:15:\"add-product_tag\";}"),
("28","1","nav_menu_recently_edited","42"),
("29","1","edit_product_cat_per_page","50"),
("30","1","dismissed_no_shipping_methods_notice","1"),
("31","1","wpcf7_hide_welcome_panel_on","a:1:{i:0;s:3:\"5.0\";}"),
("33","1","duplicator_pro_created_format","1"),
("46","1","_woocommerce_tracks_anon_id","woo:Vv8pxDUFdOiKQZWX0ySBXKI8"),
("48","1","_woocommerce_load_saved_cart_after_login","1");




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
("1","admin","$P$BrduHmHd0ay/E7ZV09es8/rE.hvIXX.","admin","demobz@gmail.com","","2018-12-08 04:14:06","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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