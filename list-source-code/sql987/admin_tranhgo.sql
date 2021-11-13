SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w67`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2018-06-02 14:36:34","2018-06-02 14:36:34","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":0,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":100,\"package_php_chunking\":false,\"archive_build_mode\":3,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/bizhostvn.com\\/w\\/tranhgo\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1535012869,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1540277907,\"initial_activation_timestamp\":1528047775,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":false,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":false}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1540277987,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("6","DUP_PRO_DupArchive_Expand_State_Entity","{\"package_id\":\"4\",\"basePath\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\\/tmp\\/validate\",\"archivePath\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\\/tmp\\/20180810_websitebantranhgothietkew_393bb93d214fbaa13282_20180810072226_archive.daf\",\"isCompressed\":true,\"currentFileOffset\":0,\"archiveOffset\":44574859,\"timeSliceInSecs\":10,\"working\":false,\"startTimestamp\":-1,\"throttleDelayInUs\":0,\"timeoutTimestamp\":1533886088,\"timerEnabled\":true,\"archiveHeaderString\":\"{\\\"version\\\":\\\"3.7.3.1\\\",\\\"isCompressed\\\":true}\",\"currentFileHeaderString\":null,\"failuresString\":\"[]\",\"validateOnly\":true,\"validationType\":1,\"fileWriteCount\":8076,\"directoryWriteCount\":1237,\"expectedFileCount\":8076,\"expectedDirectoryCount\":1237,\"isRobust\":false,\"type\":\"DUP_PRO_DupArchive_Expand_State_Entity\",\"currentFileHeader\":null,\"filteredDirectories\":[],\"filteredFiles\":[],\"includedFiles\":[],\"fileRenames\":[],\"directoryModeOverride\":-1,\"fileModeOverride\":-1,\"lastHeaderOffset\":-1,\"failures\":[]}");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






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






CREATE TABLE `bz_muahangnhanh` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `madonhang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sanpham` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` mediumint(5) NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thanhtien` float NOT NULL,
  `addtion` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2066 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/tranhgo","yes"),
("2","home","https://bizhostvn.com/w/tranhgo","yes"),
("3","blogname","tranhgo","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","giuselethien@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","50","yes"),
("13","rss_use_excerpt","0","yes"),
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("18","default_category","1","yes"),
("19","default_comment_status","open","yes"),
("20","default_ping_status","open","yes"),
("21","default_pingback_flag","0","yes"),
("22","posts_per_page","50","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:183:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\"mau-sac/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_mau-sac=$matches[1]&feed=$matches[2]\";s:43:\"mau-sac/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_mau-sac=$matches[1]&feed=$matches[2]\";s:24:\"mau-sac/([^/]+)/embed/?$\";s:43:\"index.php?pa_mau-sac=$matches[1]&embed=true\";s:36:\"mau-sac/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_mau-sac=$matches[1]&paged=$matches[2]\";s:18:\"mau-sac/([^/]+)/?$\";s:32:\"index.php?pa_mau-sac=$matches[1]\";s:45:\"size/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:40:\"size/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:21:\"size/([^/]+)/embed/?$\";s:40:\"index.php?pa_size=$matches[1]&embed=true\";s:33:\"size/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?pa_size=$matches[1]&paged=$matches[2]\";s:15:\"size/([^/]+)/?$\";s:29:\"index.php?pa_size=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:1;s:30:\"db-prefix-change/db_prefix.php\";i:2;s:31:\"muahangnhanh/dinhhien_web79.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:37:\"woocommerce-products-filter/index.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:93:\"/home/admin/domains/bizhostvn.com/public_html/w/tranhgo/wp-content/themes/flatsome/footer.php\";i:2;s:92:\"/home/admin/domains/bizhostvn.com/public_html/w/tranhgo/wp-content/themes/flatsome/style.css\";i:3;s:92:\"/home/admin/domains/bizhostvn.com/public_html/w/tranhgo/wp-content/themes/babyshop/style.css\";i:4;s:97:\"/home/admin/domains/bizhostvn.com/public_html/w/tranhgo/wp-content/plugins/muahangnhanh/index.php\";i:5;s:106:\"/home/admin/domains/bizhostvn.com/public_html/w/tranhgo/wp-content/plugins/muahangnhanh/dinhhien_web79.php\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","babyshop","yes"),
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
("66","image_default_link_type","file","yes"),
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
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","755","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","initial_db_version","38590","yes"),
("93","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("94","fresh_site","0","yes"),
("95","WPLANG","vi","yes"),
("96","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:4:{i:0;s:8:\"search-2\";i:1;s:32:\"woocommerce_product_categories-2\";i:2;s:23:\"flatsome_recent_posts-2\";i:3;s:22:\"woocommerce_products-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("102","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","cron","a:14:{i:1558007320;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558007741;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558010194;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558010903;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558017394;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558017595;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558018541;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558020923;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083341;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083351;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558084237;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("112","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527950945;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("144","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1557996878;}","yes"),
("149","new_admin_email","giuselethien@gmail.com","yes"),
("160","current_theme","BabyShop","yes"),
("161","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 02 Jun 2018 14:49:06 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527951001;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("162","theme_switched","","yes"),
("163","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"Bài viết mới nhất\";s:6:\"number\";i:8;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("164","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("166","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("167","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("168","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("169","flatsome_wup_buyer","trannguyen886","yes"),
("170","allowedthemes","a:1:{s:8:\"babyshop\";b:1;}","no"),
("171","fl_has_child_theme","babyshop","yes"),
("173","theme_mods_babyshop","a:186:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:3:{i:0;s:11:\"search-form\";i:1;s:7:\"account\";i:2;s:4:\"cart\";}s:21:\"header_elements_right\";a:1:{i:0;s:8:\"button-1\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:10:\"no-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:22;s:14:\"primary_mobile\";i:22;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 02 Jun 2018 14:50:04 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1260px\";s:13:\"color_primary\";s:7:\"#9e490d\";s:15:\"color_secondary\";s:7:\"#dd9933\";s:11:\"color_texts\";s:7:\"#0a0a0a\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#9e490d\";s:17:\"color_links_hover\";s:7:\"#dd9933\";s:9:\"type_size\";s:2:\"95\";s:16:\"type_size_mobile\";s:3:\"100\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"162\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"52\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:7:\"#ffffff\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:7:\"#ffffff\";s:20:\"type_nav_color_hover\";s:7:\"#fff0a7\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"40\";s:15:\"nav_position_bg\";s:7:\"#bd7645\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:5:\"large\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:7:\"#424242\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#fff0a7\";s:9:\"site_logo\";s:67:\"https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/logo.png\";s:12:\"logo_padding\";s:1:\"1\";s:14:\"header_divider\";b:0;s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:0:\"\";s:18:\"search_placeholder\";s:32:\"Nhập từ khóa tìm kiếm...\";s:19:\"header_search_width\";s:2:\"50\";s:15:\"html_custom_css\";s:9101:\"input[type=search]{font-size:14px;height:36px;border:0;border-top-left-radius:4px;border-bottom-left-radius:4px}.icon-search:before{color:#bd7645;font-size:17px}.button.secondary:not(.is-outline){background-color:#fff;height:36px;border-top-right-radius:3px}.header-button a,.header-button a:hover{background:white!important;color:#bd7645}.header-button a{border-radius:4px;border:1px solid #fff;font-weight:700;text-transform:none;box-shadow:no-drop}.button:hover{box-shadow:0 0 0 gray!important}.header-nav .header-cart-link{padding:10px 12px!important;background:#fff;height:36px;border-radius:4px;color:#bd7645!important;font-weight:700;text-transform:none!important;font-size:15px!important}.header-nav .account-link{height:36px;border:1px solid #fff;border-radius:4px;padding:5px 12px;font-size:15px;color:#fff!important;text-transform:none}.after-header-main .col{padding-bottom:0}.has-sticky .shop-page-title,.header-wrapper.stuck .block-html-after-header{display:none}.header:not(.transparent) .header-bottom-nav.nav>li>a{color:white;font-weight:400;text-transform: none; padding:0 5px}.after-header-main .icon-box-left .icon-box-img+.icon-box-text{padding-left:5px}.header-main{background:#823905}.hang-moi-ve .section-title-normal span{background:#9e490d;padding:8px 20px 4px;margin-right:15px;border-bottom:2px solid rgba(0,0,0,.1);margin-bottom:-2px;color:#fff;font-size:16px;border-top-left-radius:4px}.section-title a{padding-right:10px;font-weight:400;color:#823905}.section-title-normal{    background: #ffe3d1;\n    border-bottom: 2px solid #bd7645;}#main,#wrapper{background-color:#fffdf1}.product-small .col-inner{border:1px solid #f4f4f4;background:#fff;padding:8px}.section-title-container{margin-bottom:15px}.badge-container{margin:15px 0 0}.badge-circle{margin-left:auto;margin-right:15px}.badge-inner{color:#bd7645}.product .left{left:auto;right:0}.badge-inner.on-sale{background-color:#ffe3d1;border-radius:999px}.product-small .product-title a{color:#823905;margin-bottom:10px}.product-small .price-wrapper ins span.amount{color:#f3ad7e;font-size:19px}.product-small .box-text{padding-bottom:5px}.flickity-prev-next-button{top:70%}.slider-nav-outside .flickity-prev-next-button.next{left:102%}.slider-nav-outside .flickity-prev-next-button.previous{right:102%}.slider-nav-circle .flickity-prev-next-button .arrow,.slider-nav-circle .flickity-prev-next-button svg{border-radius:100%;border:0;background:#fff;box-shadow:2px 2px 10px #ababab;color:gray}.banner-section .col{padding-bottom:0}.hang-moi-ve{padding-bottom:0!important}.bao-tay-tre-em .section-title-normal span,.mu-tre-em .section-title-normal span{padding:8px 20px 4px;margin-right:15px;border-bottom:2px solid rgba(0,0,0,.1);margin-bottom:-2px;color:#fff;font-size:16px;border-top-left-radius:4px}.bao-tay-tre-em .section-title-normal span{background:#9e490d}.mu-tre-em .section-title-normal span{background:#9e490d}.section{padding-bottom:0}.after-header-main{padding-bottom:6px!important}.copyright-footer{color:#fffad9}ul li.bullet-arrow,ul li.bullet-checkmark,ul li.bullet-star{padding:5px 0 5px 15px;border-color:#0c2435}.dark ul li.bullet-arrow,.dark ul li.bullet-checkmark,.dark ul li.bullet-star{border-color:#0b2233}.banner-section{padding-bottom:20px!important}.product-small .col-inner:hover{border:1px solid #bd7645}.footer-section .col{padding-bottom:10px}.category-page-row,.shop-container{background: #fff0f0;}.product-info,.product-main .product-gallery .row{background:#fff}.product-main .content-row{max-width:1200px}.product-info{padding-top:15px!important;margin-left:20px}.product-main .product-gallery .row .row{padding:0}.product-info .breadcrumbs{font-size:14px;text-transform:none;margin-bottom:15px}.product-main .product-title{font-weight:400;color:#823905}.product-main .price-wrapper del span.amount{font-size:18px;color:gray}.product-main .price-wrapper ins span.amount{color:red;font-size:25px}.product-main .product-short-description{font-size:14px;color:#888}.product-main .variations{width:95%;background:#f2f2f2;float:left;margin-right:20px;display:inline-block;padding:10px}.product-main .variations label{color:#222;font-size:15px}.product-main .variations td:first-child{padding-right:15px}.form-flat select{background-color:#fff;box-shadow:none;border-color:#c7c7c7;background-position:99% 50%;color:currentColor!important;border-radius:3px!important}.variations .reset_variations{right:-9px;bottom:88%;text-transform:none;font-size:10px;background:#000;padding:5px 2px;border-radius:99px;color:#fff}.form-flat select{padding-right:30px}.variations_form{margin-bottom:0;width:100%;float:left;display:block}.product-main .product_meta{float:left;padding-left:0;font-size:14px}.product-main .product_meta .tagged_as a{background:#f2f2f2;padding:4px 8px;border-radius:3px;border:1px solid #eaeaea;margin-right:6px;color:#616161}.product-main .product_meta .tagged_as a:hover{background:#ec2154;color:#fff;border:1px solid #ec2154}.product_meta>span{border:0}.form-flat button,.form-flat input:not([type=submit]),.woocommerce-ordering,.woocommerce-ordering select{border-radius:4px}.product-info{padding-bottom:0}.product-footer .woocommerce-tabs{background:#fff;padding:20px}.product-footer .woocommerce-tabs>.nav-line:not(.nav-vertical){margin-top:0;background:#f2f2f2}.product-footer .woocommerce-tabs li{margin:0}.product-footer .woocommerce-tabs li a{font-size:15px;font-weight:400;text-transform:none;padding:10px 12px}.product-footer .woocommerce-tabs li.active>a{background:#bd7645;color:#fff}.related-products-wrapper .container-width{max-width:1200px;padding:10px;background:#fff;margin-top:20px;margin-bottom:20px;font-size:18px;color:#823905}.page-title{position:relative;z-index:9999;background:#fff4e2}.page-title-inner{padding-top:0}.breadcrumbs{font-size:15px;color:#ec2154;font-weight:400;text-transform:none}.woof_block_html_items ul li{width:46%;float:left}.woof_block_html_items ul li label{font-size:12px;font-weight:400;margin-bottom:0;padding-top:5px;padding-bottom:0}.woof_sid_auto_shortcode .woof_container{width:25%;margin-bottom:10px}.woof_submit_search_form_container .button{margin-bottom:0;border-radius:3px;font-size:14px;line-height:18px}.cart{margin-bottom:0}.woof_list li{margin:0 6px 0 3px!important;padding:0 0 11px!important}.woof_sid_auto_shortcode{border-radius:3px;padding-bottom:2px!important;border:0;margin-bottom:30px}.woof_container{padding-bottom:0;margin-bottom:0}.woof_edit_view{display:none}.note_checkout{border: 1px dashed #bd7645;\n    border-radius: 4px;font-size:13px;background:#fff4e2;padding:10px;color:#444;margin-bottom:20px;display:inline-block;width:100%}.detailcall-1 span,.product-main .clearfix{display:none}.single_variation_wrap{width:95%;float:left}.lien-he-button .col{padding-bottom:10px}.product-gallery,.product-thumbnails .col{background:#fff;padding-top:15px;margin-left:0}.product-main .flickity-prev-next-button{top:30%}.product-main .cart{width:40%;float:left}.detailcall-1 h3{font-size:15px;margin-bottom:0}.detailcall-1{width:60%;float:left;margin:0 0 10px;box-shadow:0 -3px 0 0 #fd6e1d inset;padding:7px 20px}td select{margin:3px 0}.single_add_to_cart_button{letter-spacing:0;text-transform:none;padding:0 21px}.woocommerce-variation-price{border-top:0;padding:0}.product-summary .variations_button{padding:0}.popup-inner{overflow-x:hidden;overflow-y:hidden}.popup-close{top:20px;right:20px}.popup-inner input[type=text]{height:33px}button.btn.btn-default{padding:3px 20px}.notice{border:0 solid #ff6009;color:#fff;padding:5px;font-weight:400;border-radius:4px;text-align:center;margin-top:10px;background:#69963e}.nav-dropdown-default{padding:10px;z-index:999999!important}.button.checkout,.button.wc-forward:not(.checkout):not(.checkout-button){text-transform:none;font-weight:400;border-radius:3px}#message-purchased p a{color:#e4003d;font-size:14px;font-weight:400}#message-purchased p small{color:#bdbdbd}\n.block-html-after-header{z-index:1}\n.nav-dropdown{border: 0px }\n.dark ul li.bullet-arrow{border-color: #885735;}\n#footer ul li.bullet-checkmark:before, ul li.bullet-arrow:before, ul li.bullet-star:before{color: #f4db96;}.button.icon.circle{background: #f4db96; border:0}\n.tin-tuc-section .post-item .post-title{font-size:15px}\nul.product_list_widget li a span{font-size:14px; }\nul.product_list_widget li a, .recent-blog-posts a{color: black; font-size:14px}\nul.product_list_widget li a:hover, .recent-blog-posts a:hover{color:#dd9933}\n.article-inner{    background: white;\n    padding: 20px;\n    border: 1px solid #ffe2cf;\n    border-radius: 4px;}\n.post-sidebar{padding-left:0 !important}\n.blog-single .html-before-comments .tin-tuc-section{background: white; border-radius:4px; border: 1px solid #ffe2cf}\n.blog-single .html-before-comments .tin-tuc-section .col{padding-bottom:0}\n.blog-single #comments{background: white; padding:20px; border-radius:4px ; border: 1px solid #ffe2cf}\n.nav-spacing-medium>li{margin:0}\n.nav-spacing-medium>li a{line-height:43px; padding: 0px 13px !important}\n.nav-spacing-medium>li a:hover{background: #f4db96; color: #823905 !important}\";s:15:\"header_button_1\";s:19:\"Hotline: 0909009009\";s:20:\"header_button_1_link\";s:14:\"tel:0909009009\";s:27:\"header_button_1_link_target\";s:6:\"_blank\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:21:\"header_button_1_style\";s:0:\"\";s:20:\"header_button_1_size\";s:5:\"large\";s:21:\"header_button_1_depth\";s:1:\"0\";s:21:\"header_button_1_color\";s:7:\"primary\";s:15:\"cart_icon_style\";s:5:\"plain\";s:17:\"header_cart_total\";b:0;s:17:\"header_cart_title\";b:1;s:17:\"nav_height_bottom\";s:1:\"7\";s:18:\"nav_spacing_bottom\";s:6:\"medium\";s:17:\"html_after_header\";s:30:\"[block id=\"after-header-main\"]\";s:7:\"body_bg\";s:7:\"#efefef\";s:20:\"header_height_sticky\";s:2:\"70\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:13:\"header_sticky\";b:0;s:16:\"category_sidebar\";s:4:\"none\";s:27:\"category_force_image_height\";b:1;s:21:\"category_image_height\";s:3:\"100\";s:16:\"products_pr_page\";s:2:\"50\";s:18:\"category_row_count\";s:1:\"5\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:6:\"normal\";s:13:\"product_hover\";s:4:\"none\";s:15:\"category_shadow\";s:1:\"0\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:12:\"bubble_style\";s:6:\"style1\";s:22:\"sale_bubble_percentage\";b:1;s:22:\"html_custom_css_mobile\";s:343:\".bao-tay-tre-em .col{padding-bottom:15px}.product-info{margin-left:0}.detailcall-1,.product-main .cart,.product-main .variations,.woof_sid_auto_shortcode .woof_container{width:100%}.section-content{padding-left:10px;padding-right:10px}\n.tin-tuc-section .post-item{flex-basis:50%; max-width:100%}\n.tin-tuc-section{background:white !important}\";s:12:\"footer_block\";s:14:\"footer-section\";s:19:\"footer_bottom_color\";s:7:\"#bd7645\";s:16:\"footer_left_text\";s:125:\"Thiết kế & Duy trì bởi webdesign.com | webdesign.com | <a href=\"https://giuseart.com\" target=\"blank\">webdesign.com</a>\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_align\";s:6:\"center\";s:21:\"product_custom_layout\";s:19:\"custom-product-page\";s:12:\"product_zoom\";b:0;s:19:\"product_image_style\";s:6:\"normal\";s:14:\"product_header\";s:0:\"\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"5\";s:21:\"product_title_divider\";b:0;s:17:\"product_info_form\";s:4:\"flat\";s:18:\"product_tabs_align\";s:4:\"left\";s:14:\"product_upsell\";s:6:\"bottom\";s:16:\"related_products\";s:4:\"grid\";s:20:\"max_related_products\";s:2:\"18\";s:23:\"related_products_pr_row\";s:1:\"6\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:19:\"category_show_title\";b:0;s:20:\"category_title_style\";s:0:\"\";s:22:\"html_after_add_to_cart\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:457:\"<div class=\"note_checkout\" style=\"font-size:13px\">	\n		\n      <div style=\"color: green; font-weight: 700; margin-top: 6px; padding-left: 5px;  margin-bottom:10px\"> CAM KẾT KHI BÁN HÀNG:</div>\n			<div>- KHÔNG bán hàng kém chất lượng. </div> \n			<div>- Sản phẩm y như hình.</div>\n      <div>- Đổi trả dễ dàng nếu không vừa ý.</div>\n			<div>- Sẽ có mặt tại nhà bạn từ 1-5 ngày làm việc. </div> \n\n		</div>\";s:22:\"html_custom_css_tablet\";s:41:\".bao-tay-tre-em .col{padding-bottom:15px}\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"1\";s:13:\"search_result\";s:1:\"0\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";s:1:\"0\";s:21:\"search_by_product_tag\";s:1:\"0\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"0\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:15:\"disable_reviews\";s:1:\"0\";s:27:\"product_gallery_woocommerce\";s:1:\"0\";s:14:\"html_shop_page\";s:0:\"\";s:9:\"tab_title\";s:27:\"Hướng dẫn thanh toán:\";s:11:\"tab_content\";s:730:\"<b>Liên hệ:</b> Lê Văn Thiện<br>\n<b>Số điện thoại:</b>0909009009<br>\n<b>Email:</b> giuselethien@gmail.com<br>\n<b>Website:</b> <a href=\"http://www.giuseart.com\">www.giuseart.com</a>\n<br><br>\n<b>THÔNG TIN THANH TOÁN</b><br>\n<b>1. Ngân hàng Vietcombank</b><br>\n- Số tài khoản: 0691000374599<br>\n- Tên tài khoản: Lê Văn Thiện<br>\n- Chi nhánh: VCB Chi nhánh Hà Tây<br>\n<b>2. Ngân hàng Agribank</b><br>\n- Số tài khoản: 2000206180703<br>\n- Tên tài khoản: Lê Văn Thiện<br>\n- Chi nhánh: Agribank Chi nhánh Đà Nẵng<br>\n<b>3. Ngân hàng ACB</b><br>\n- Số tài khoản: 221262879<br>\n- Tên tài khoản: Lê Văn Thiện<br>\n- Chi nhánh: VCB Chi nhánh Hà Thành		\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"0\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"1\";s:27:\"infinite_scroll_loader_type\";s:6:\"button\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:12:\"fl_portfolio\";s:1:\"0\";s:8:\"nav_push\";s:1:\"0\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:0;s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:15:\"blog_after_post\";s:345:\"[section label=\"Tin tức\" class=\"tin-tuc-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"BÀI VIẾT MỚI NHẤT\" color=\"rgb(113, 65, 7)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" posts=\"4\" show_date=\"false\" comments=\"false\" image_height=\"71%\" text_align=\"left\"]\n\n[/col]\n\n[/row]\n\n[/section]\";}","yes"),
("175","envato_setup_complete","1527951011","yes"),
("185","woocommerce_store_address","Số 29 ngõ 18 Lương Ngọc Quyến,","yes"),
("186","woocommerce_store_address_2","Hà Đông","yes"),
("187","woocommerce_store_city","Hà Nội","yes"),
("188","woocommerce_default_country","VN","yes"),
("189","woocommerce_store_postcode","100000","yes"),
("190","woocommerce_allowed_countries","all","yes"),
("191","woocommerce_all_except_countries","a:0:{}","yes"),
("192","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("193","woocommerce_ship_to_countries","","yes"),
("194","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("195","woocommerce_default_customer_address","geolocation","yes"),
("196","woocommerce_calc_taxes","no","yes"),
("197","woocommerce_enable_coupons","yes","yes"),
("198","woocommerce_calc_discounts_sequentially","no","no"),
("199","woocommerce_currency","VND","yes"),
("200","woocommerce_currency_pos","right","yes"),
("201","woocommerce_price_thousand_sep",".","yes"),
("202","woocommerce_price_decimal_sep",".","yes"),
("203","woocommerce_price_num_decimals","0","yes"),
("204","woocommerce_shop_page_id","40","yes"),
("205","woocommerce_cart_redirect_after_add","no","yes"),
("206","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("207","woocommerce_weight_unit","kg","yes"),
("208","woocommerce_dimension_unit","cm","yes"),
("209","woocommerce_enable_reviews","yes","yes"),
("210","woocommerce_review_rating_verification_label","yes","no"),
("211","woocommerce_review_rating_verification_required","no","no"),
("212","woocommerce_enable_review_rating","yes","yes"),
("213","woocommerce_review_rating_required","yes","no"),
("214","woocommerce_manage_stock","yes","yes"),
("215","woocommerce_hold_stock_minutes","60","no"),
("216","woocommerce_notify_low_stock","yes","no"),
("217","woocommerce_notify_no_stock","yes","no"),
("218","woocommerce_stock_email_recipient","giuselethien@gmail.com","no"),
("219","woocommerce_notify_low_stock_amount","2","no"),
("220","woocommerce_notify_no_stock_amount","0","yes"),
("221","woocommerce_hide_out_of_stock_items","no","yes"),
("222","woocommerce_stock_format","","yes"),
("223","woocommerce_file_download_method","force","no"),
("224","woocommerce_downloads_require_login","no","no"),
("225","woocommerce_downloads_grant_access_after_payment","yes","no"),
("226","woocommerce_prices_include_tax","no","yes"),
("227","woocommerce_tax_based_on","shipping","yes"),
("228","woocommerce_shipping_tax_class","inherit","yes"),
("229","woocommerce_tax_round_at_subtotal","no","yes"),
("230","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("231","woocommerce_tax_display_shop","excl","yes"),
("232","woocommerce_tax_display_cart","excl","yes"),
("233","woocommerce_price_display_suffix","","yes"),
("234","woocommerce_tax_total_display","itemized","no"),
("235","woocommerce_enable_shipping_calc","yes","no"),
("236","woocommerce_shipping_cost_requires_address","no","yes"),
("237","woocommerce_ship_to_destination","billing","no"),
("238","woocommerce_shipping_debug_mode","no","yes"),
("239","woocommerce_enable_guest_checkout","yes","no"),
("240","woocommerce_enable_checkout_login_reminder","no","no"),
("241","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("242","woocommerce_enable_myaccount_registration","no","no"),
("243","woocommerce_registration_generate_username","yes","no"),
("244","woocommerce_registration_generate_password","yes","no"),
("245","woocommerce_erasure_request_removes_order_data","no","no"),
("246","woocommerce_erasure_request_removes_download_data","no","no"),
("247","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("248","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("249","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("250","woocommerce_trash_pending_orders","","no"),
("251","woocommerce_trash_failed_orders","","no"),
("252","woocommerce_trash_cancelled_orders","","no"),
("253","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("254","woocommerce_email_from_name","Babyshop &#8211; Thiết kế web Ninh Bình","no"),
("255","woocommerce_email_from_address","giuselethien@gmail.com","no"),
("256","woocommerce_email_header_image","","no"),
("257","woocommerce_email_footer_text","{site_title}","no");
INSERT INTO bz_options VALUES
("258","woocommerce_email_base_color","#96588a","no"),
("259","woocommerce_email_background_color","#f7f7f7","no"),
("260","woocommerce_email_body_background_color","#ffffff","no"),
("261","woocommerce_email_text_color","#3c3c3c","no"),
("262","woocommerce_cart_page_id","41","yes"),
("263","woocommerce_checkout_page_id","42","yes"),
("264","woocommerce_myaccount_page_id","43","yes"),
("265","woocommerce_terms_page_id","","no"),
("266","woocommerce_force_ssl_checkout","no","yes"),
("267","woocommerce_unforce_ssl_checkout","no","yes"),
("268","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("269","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("270","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("271","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("272","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("273","woocommerce_myaccount_orders_endpoint","orders","yes"),
("274","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("275","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("276","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("277","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("278","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("279","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("280","woocommerce_logout_endpoint","customer-logout","yes"),
("281","woocommerce_api_enabled","no","yes"),
("282","woocommerce_single_image_width","600","yes"),
("283","woocommerce_thumbnail_image_width","598","yes"),
("284","woocommerce_checkout_highlight_required_fields","yes","yes"),
("285","woocommerce_demo_store","no","no"),
("286","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:8:\"san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("287","current_theme_supports_woocommerce","yes","yes"),
("288","woocommerce_queue_flush_rewrite_rules","no","yes"),
("291","default_product_cat","15","yes"),
("296","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("298","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("299","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("300","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("301","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("302","widget_woocommerce_product_categories","a:2:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("303","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("304","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:18:\"Sản phẩm mới\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("306","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","woocommerce_meta_box_errors","a:0:{}","yes"),
("320","woocommerce_product_type","physical","yes"),
("321","woocommerce_allow_tracking","no","yes"),
("322","woocommerce_ppec_paypal_settings","a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}","yes"),
("323","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("324","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("325","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("341","woocommerce_maybe_regenerate_images_hash","c8db465b0deb1b1f26922a27bcc30583","yes"),
("357","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("455","woocommerce_thumbnail_cropping_custom_width","1","yes"),
("456","woocommerce_thumbnail_cropping_custom_height","1","yes"),
("640","wp_installer_settings","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","yes"),
("641","widget_woof_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("642","woof_first_init","1","yes"),
("643","woof_set_automatically","1","yes"),
("644","woof_autosubmit","1","yes"),
("645","woof_show_count","1","yes"),
("646","woof_show_count_dynamic","1","yes"),
("647","woof_hide_dynamic_empty_pos","1","yes"),
("648","woof_try_ajax","0","yes"),
("649","woof_checkboxes_slide","1","yes"),
("650","woof_hide_red_top_panel","0","yes"),
("651","woof_sort_terms_checked","0","yes"),
("652","woof_filter_btn_txt","Lọc sản phẩm","yes"),
("653","woof_reset_btn_txt","Lọc lại","yes"),
("654","woof_settings","a:47:{s:11:\"items_order\";s:0:\"\";s:8:\"by_price\";a:6:{s:4:\"show\";s:1:\"0\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:0:\"\";s:6:\"ranges\";s:0:\"\";s:17:\"first_option_text\";s:0:\"\";s:15:\"ion_slider_step\";s:1:\"1\";}s:7:\"by_text\";a:10:{s:4:\"show\";s:1:\"1\";s:5:\"title\";s:0:\"\";s:11:\"placeholder\";s:24:\"Tìm kiếm sản phẩm\";s:8:\"behavior\";s:27:\"title_or_content_or_excerpt\";s:19:\"search_by_full_word\";s:1:\"0\";s:12:\"autocomplete\";s:1:\"1\";s:26:\"post_links_in_autocomplete\";s:1:\"1\";s:17:\"how_to_open_links\";s:1:\"1\";s:5:\"image\";s:0:\"\";s:17:\"sku_compatibility\";s:1:\"1\";}s:8:\"tax_type\";a:5:{s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_cat\";s:8:\"checkbox\";s:11:\"product_tag\";s:8:\"checkbox\";s:10:\"pa_mau-sac\";s:8:\"checkbox\";s:7:\"pa_size\";s:8:\"checkbox\";}s:14:\"excluded_terms\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:10:\"pa_mau-sac\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:16:\"tax_block_height\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:16:\"show_title_label\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:7:\"pa_size\";s:1:\"1\";}s:18:\"show_toggle_button\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:13:\"dispay_in_row\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:16:\"custom_tax_label\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:24:\"Danh mục sản phẩm:\";s:11:\"product_tag\";s:23:\"Từ khóa tìm kiếm:\";s:10:\"pa_mau-sac\";s:11:\"Màu sắc:\";s:7:\"pa_size\";s:5:\"Size:\";}s:23:\"not_toggled_terms_count\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:10:\"pa_mau-sac\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:12:\"show_tooltip\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:3:\"tax\";a:4:{s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:7:\"pa_size\";s:1:\"1\";}s:11:\"icheck_skin\";s:9:\"flat_pink\";s:12:\"overlay_skin\";s:12:\"plainoverlay\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinFlat\";s:21:\"woof_auto_hide_button\";s:1:\"0\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:12:\"init_only_on\";s:0:\"\";s:17:\"swoof_search_slug\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:14:\"non_latin_mode\";s:1:\"1\";s:17:\"optimize_js_files\";s:1:\"0\";s:20:\"hide_terms_count_txt\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:20:\"activated_extensions\";a:4:{i:0;s:32:\"033a613df49cd5c79cfda3727316d44c\";i:1;s:32:\"92fe22ed6bb9f2d200b52ad99b1af644\";i:2;s:32:\"fb5128813d6a2d24bfb6c89d12d4dbb3\";i:3;s:32:\"884cdb47a7050888afa7379f69861a13\";}}","yes"),
("655","woof_version","2.1.7","yes"),
("656","woof_woocs_alert","a:1:{s:29:\"woocommerce-currency-switcher\";i:1;}","no"),
("818","installer_repositories_with_theme","a:1:{i:0;s:7:\"toolset\";}","yes"),
("821","my_plg_db_version","","yes"),
("827","muahangnhanh_options","a:6:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:4:\"port\";s:3:\"465\";s:8:\"username\";s:29:\"josthienlangvan1991@gmail.com\";s:8:\"password\";s:16:\"zlzvqainhmcazygh\";s:8:\"sendfrom\";s:29:\"josthienlangvan1991@gmail.com\";s:10:\"noticemail\";s:22:\"giuselethien@gmail.com\";}","yes"),
("1101","wnotification_params","a:29:{s:6:\"enable\";s:1:\"1\";s:12:\"archive_page\";s:1:\"2\";s:19:\"order_threshold_num\";s:2:\"60\";s:20:\"order_threshold_time\";s:1:\"2\";s:14:\"order_statuses\";a:2:{i:0;s:13:\"wc-processing\";i:1;s:12:\"wc-completed\";}s:12:\"virtual_name\";s:96:\"Mr. Hùng Thái Nguyên\nMs. Linh\nMs. Thảo VTC\nMr. Thiện GiuseArt\nMs. Ngô Vân\nMr. Thao\";s:12:\"virtual_time\";s:2:\"10\";s:7:\"country\";s:1:\"1\";s:12:\"virtual_city\";s:92:\"Hải Dương\nHà Tĩnh\nNinh Bình\nNghệ An\nHà Nội\nTp. Hồ Chí Minh\nThanh Hóa\n\";s:15:\"virtual_country\";s:0:\"\";s:15:\"ipfind_auth_key\";s:0:\"\";s:13:\"product_sizes\";s:14:\"shop_thumbnail\";s:12:\"cache_enable\";s:1:\"1\";s:8:\"non_ajax\";s:1:\"1\";s:15:\"highlight_color\";s:7:\"#000000\";s:10:\"text_color\";s:7:\"#000000\";s:16:\"background_color\";s:7:\"#ffffff\";s:16:\"background_image\";s:1:\"0\";s:14:\"image_position\";s:1:\"0\";s:8:\"position\";s:1:\"1\";s:13:\"border_radius\";s:1:\"4\";s:15:\"show_close_icon\";s:1:\"1\";s:14:\"image_redirect\";s:1:\"1\";s:22:\"message_display_effect\";s:11:\"fadeInRight\";s:21:\"message_hidden_effect\";s:8:\"fade-out\";s:17:\"message_purchased\";a:2:{i:0;s:75:\"{first_name} vừa đặt hàng thành công {product_with_link} {time_ago}\";i:1;s:28:\"{product_with_link} {custom}\";}s:16:\"custom_shortcode\";s:44:\"{number} khách đang xem sản phẩm này!\";s:10:\"min_number\";s:2:\"50\";s:10:\"max_number\";s:3:\"100\";}","yes"),
("1108","_woocommerce_notification_prefix","ecdb7975c6","yes"),
("1273","duplicator_pro_package_active","{\"Created\":\"2018-08-11 02:54:05\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.31\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20180811_websitebantranhgothietkew\",\"Hash\":\"3af44ed494bc48d48697_20180811025405\",\"NameHash\":\"20180811_websitebantranhgothietkew_3af44ed494bc48d48697_20180811025405\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/bizhostvn.com\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20180811_websitebantranhgothietkew_3af44ed494bc48d48697_20180811025405_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"DAF\",\"PackDir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\",\"Size\":114802411,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-598x540.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-598x540.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-600x450.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-600x450.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-600x339.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-600x339.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-300x203.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-300x203.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-150x150.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-100x100.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-150x150.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-768x518.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-768x518.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-600x405.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI-600x405.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-300x225.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-300x225.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-100x100.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-768x434.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-768x434.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-300x173.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-300x173.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-300x170.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-300x170.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-598x448.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-598x448.jpg\"},{\"name\":\"Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Logo-Ng\\u00e0y-g\\u1eb7p-m\\u1eb7t-Thi\\u1ebfu-Nhi-Ph\\u00e1t-Di\\u1ec7m-l\\u1ea7n-th\\u1ee9-VI.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-598x452.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-598x452.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-100x100.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-768x576.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-768x576.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-600x346.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-600x346.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-Truy\\u1ec1n-Th\\u1ed1ng-SVCG-B\\u00f9i-Chu-l\\u1ea7n-th\\u1ee9-XII-150x150.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-598x598.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-598x598.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-100x100.jpg\"},{\"name\":\"Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Ph\\u00f4ng-s\\u00e2n-kh\\u1ea5u-L\\u1ec5-quan-th\\u00e0y-thi\\u1ebfu-nhi-150x150.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3.jpg\"},{\"name\":\"Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-768x443.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/Giuseart.com-Vector-c\\u00f4-d\\u00e2u-ch\\u00fa-r\\u1ec3-768x443.jpg\"}],\"Unreadable\":[],\"Size\":[{\"ubytes\":4938656,\"bytes\":\"4.71MB\",\"name\":\"duplicator-pro.zip\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-content\\/uploads\\/2018\\/08\\/duplicator-pro.zip\"}],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/tranhgo\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web17\",\"tablesBaseCount\":32,\"tablesFinalCount\":32,\"tablesRowCount\":2464,\"tablesSizeOnDisk\":3211264,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1293","duplicator_pro_ui_view_state","a:2:{s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";s:22:\"dup-pack-archive-panel\";s:1:\"0\";}","yes"),
("1425","product_cat_children","a:0:{}","yes"),
("1589","category_children","a:0:{}","yes"),
("1768","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1791","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1806","woocommerce_db_version","3.4.7","yes"),
("1808","_transient_shipping-transient-version","1540278014","yes"),
("1811","_transient_product-transient-version","1540278014","yes"),
("1845","dbprefix_old_dbprefix","wp_","yes"),
("1846","dbprefix_new","bz_","yes"),
("1859","_transient_timeout_wc_product_children_199","1559898639","no"),
("1860","_transient_wc_product_children_199","a:2:{s:3:\"all\";a:9:{i:0;i:325;i:1;i:326;i:2;i:327;i:3;i:328;i:4;i:329;i:5;i:330;i:6;i:331;i:7;i:332;i:8;i:333;}s:7:\"visible\";a:9:{i:0;i:325;i:1;i:326;i:2;i:327;i:3;i:328;i:4;i:329;i:5;i:330;i:6;i:331;i:7;i:332;i:8;i:333;}}","no"),
("1861","_transient_timeout_wc_var_prices_199","1559898640","no"),
("1862","_transient_wc_var_prices_199","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"},\"regular_price\":{\"325\":\"250000\",\"326\":\"250000\",\"327\":\"250000\",\"328\":\"250000\",\"329\":\"250000\",\"330\":\"250000\",\"331\":\"250000\",\"332\":\"250000\",\"333\":\"250000\"},\"sale_price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"}}}","no"),
("1863","_transient_timeout_wc_product_children_169","1559898640","no"),
("1864","_transient_wc_product_children_169","a:2:{s:3:\"all\";a:1:{i:0;i:549;}s:7:\"visible\";a:1:{i:0;i:549;}}","no"),
("1865","_transient_timeout_wc_var_prices_169","1559898640","no"),
("1866","_transient_wc_var_prices_169","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"549\":\"150000\"},\"regular_price\":{\"549\":\"350000\"},\"sale_price\":{\"549\":\"150000\"}}}","no"),
("1867","_transient_timeout_wc_product_children_167","1559898641","no"),
("1868","_transient_wc_product_children_167","a:2:{s:3:\"all\";a:6:{i:0;i:539;i:1;i:540;i:2;i:541;i:3;i:542;i:4;i:543;i:5;i:544;}s:7:\"visible\";a:6:{i:0;i:539;i:1;i:540;i:2;i:541;i:3;i:542;i:4;i:543;i:5;i:544;}}","no");
INSERT INTO bz_options VALUES
("1869","_transient_timeout_wc_var_prices_167","1559898641","no"),
("1870","_transient_wc_var_prices_167","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"},\"regular_price\":{\"539\":\"350000\",\"540\":\"350000\",\"541\":\"350000\",\"542\":\"350000\",\"543\":\"350000\",\"544\":\"350000\"},\"sale_price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"}}}","no"),
("1871","_transient_timeout_wc_product_children_160","1559898642","no"),
("1872","_transient_wc_product_children_160","a:2:{s:3:\"all\";a:4:{i:0;i:545;i:1;i:546;i:2;i:547;i:3;i:548;}s:7:\"visible\";a:4:{i:0;i:545;i:1;i:546;i:2;i:547;i:3;i:548;}}","no"),
("1873","_transient_timeout_wc_var_prices_160","1559898642","no"),
("1874","_transient_wc_var_prices_160","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"},\"regular_price\":{\"545\":\"230000\",\"546\":\"230000\",\"547\":\"230000\",\"548\":\"230000\"},\"sale_price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"}}}","no"),
("1875","_transient_timeout_wc_product_children_156","1559898642","no"),
("1876","_transient_wc_product_children_156","a:2:{s:3:\"all\";a:1:{i:0;i:550;}s:7:\"visible\";a:1:{i:0;i:550;}}","no"),
("1877","_transient_timeout_wc_var_prices_156","1559898642","no"),
("1878","_transient_wc_var_prices_156","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"550\":\"200000\"},\"regular_price\":{\"550\":\"260000\"},\"sale_price\":{\"550\":\"200000\"}}}","no"),
("1880","_transient_timeout_wc_product_children_154","1559898642","no"),
("1881","_transient_wc_product_children_154","a:2:{s:3:\"all\";a:9:{i:0;i:530;i:1;i:531;i:2;i:532;i:3;i:533;i:4;i:534;i:5;i:535;i:6;i:536;i:7;i:537;i:8;i:538;}s:7:\"visible\";a:9:{i:0;i:530;i:1;i:531;i:2;i:532;i:3;i:533;i:4;i:534;i:5;i:535;i:6;i:536;i:7;i:537;i:8;i:538;}}","no"),
("1882","_transient_timeout_wc_var_prices_154","1559898643","no"),
("1883","_transient_wc_var_prices_154","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"},\"regular_price\":{\"530\":\"250000\",\"531\":\"250000\",\"532\":\"250000\",\"533\":\"250000\",\"534\":\"250000\",\"535\":\"250000\",\"536\":\"250000\",\"537\":\"250000\",\"538\":\"250000\"},\"sale_price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"}}}","no"),
("1884","_transient_timeout_wc_product_children_201","1559898643","no"),
("1885","_transient_wc_product_children_201","a:2:{s:3:\"all\";a:2:{i:0;i:400;i:1;i:401;}s:7:\"visible\";a:2:{i:0;i:400;i:1;i:401;}}","no"),
("1886","_transient_timeout_wc_var_prices_201","1559898644","no"),
("1887","_transient_wc_var_prices_201","{\"version\":\"1540278014\",\"f9bb5a50d5df29d52c033a2d178eee7e\":{\"price\":{\"400\":\"120000\",\"401\":\"120000\"},\"regular_price\":{\"400\":\"250000\",\"401\":\"250000\"},\"sale_price\":{\"400\":\"120000\",\"401\":\"120000\"}}}","no"),
("1895","recovery_keys","a:0:{}","yes"),
("1924","_transient_timeout_wc_term_counts","1560045777","no"),
("1925","_transient_wc_term_counts","a:8:{i:20;s:0:\"\";i:50;s:0:\"\";i:17;s:1:\"1\";i:15;s:1:\"1\";i:16;s:1:\"2\";i:18;s:1:\"5\";i:19;s:1:\"2\";i:21;s:1:\"9\";}","no"),
("2013","show_comments_cookies_opt_in","1","yes"),
("2014","db_upgraded","","yes"),
("2018","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558583156","no"),
("2019","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("2020","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558583158","no"),
("2021","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("2022","_transient_timeout_wc_report_sales_by_date","1558083136","no"),
("2023","_transient_wc_report_sales_by_date","a:32:{s:32:\"f94c9bc1f9271ae5297c66f9203e6c7b\";a:0:{}s:32:\"b1fd0d4f8f3ac292c70d303e6f7c8aa4\";a:0:{}s:32:\"d947772c079e5996a8c050c0aff9814d\";a:0:{}s:32:\"70da3ee305af4c94bcf893178095c8c4\";N;s:32:\"394a5c19b28881d49efdeec239aef360\";a:0:{}s:32:\"ba0cbaecefb9fbcc4b92fe5b46b9d992\";a:0:{}s:32:\"b7024c925bf35bc5a4bed70244468312\";a:0:{}s:32:\"3041680f7827703a29ab2d369f5030d8\";a:0:{}s:32:\"38322c30620e162c473b6ec3fc3d41d2\";a:0:{}s:32:\"8116061fe278cd4d4ef3a39afb78f4b3\";a:0:{}s:32:\"1f831950711059c32028896d5c10106f\";a:0:{}s:32:\"0215cd4134d6b7497c6276f0772aa14e\";N;s:32:\"992e70bee4e3cdafdc0892ac3d136541\";a:0:{}s:32:\"2cb4a66d0accc528b30b63515b60cf20\";a:0:{}s:32:\"7e506861e175088a8dd5a7b1d4caaa44\";a:0:{}s:32:\"2778137cf6f280aa8ff01686d2159fcf\";a:0:{}s:32:\"e0f92eabcd527d59c01466787ef405e9\";a:0:{}s:32:\"3c10732f15dc310c6a4035e13b8a1de3\";a:0:{}s:32:\"ee26f9f505b833a397723f2319569e4a\";a:0:{}s:32:\"a456c6985a6ce20389633eed53ee9695\";N;s:32:\"5d9b4e3566c466cc44f8927661bf2c83\";a:0:{}s:32:\"c122cfa553db172341db02c57f45a0b5\";a:0:{}s:32:\"d39dc44dc7034297570285f44cedaca1\";a:0:{}s:32:\"8563005a746a0f622cad9ae96fb719e2\";a:0:{}s:32:\"2a3159014308ff0e2e1f60a9b7c85ed7\";a:0:{}s:32:\"d1b571ac009933bd1306c30ab009ae96\";a:0:{}s:32:\"5c913e6fbbc3d9e2358853cfa1365dbe\";a:0:{}s:32:\"eb92480efd1fbf12775bd7629e6a0ec5\";N;s:32:\"b0d45976644abf9d8330bd1714ea719b\";a:0:{}s:32:\"5ad9afd7f30fd4b2b326c411469ac237\";a:0:{}s:32:\"2aed68f46bc8df5d1d4b592406618d27\";a:0:{}s:32:\"a862d4b9d0e6e22586093621e08ae219\";a:0:{}}","no"),
("2024","_transient_timeout_wc_admin_report","1558064758","no"),
("2025","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("2026","_transient_timeout_wc_low_stock_count","1560570358","no"),
("2027","_transient_wc_low_stock_count","0","no"),
("2028","_transient_timeout_wc_outofstock_count","1560570358","no"),
("2029","_transient_wc_outofstock_count","0","no"),
("2030","can_compress_scripts","0","no"),
("2031","_site_transient_timeout_browser_cd1f678cd3032e73518e5a71fd683dc9","1558583316","no"),
("2032","_site_transient_browser_cd1f678cd3032e73518e5a71fd683dc9","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("2033","_transient_timeout_plugin_slugs","1558083278","no"),
("2034","_transient_plugin_slugs","a:6:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:30:\"db-prefix-change/db_prefix.php\";i:2;s:31:\"muahangnhanh/dinhhien_web79.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:37:\"woocommerce-products-filter/index.php\";}","no"),
("2035","_transient_timeout_wc_upgrade_notice_3.6.2","1558064931","no"),
("2036","_transient_wc_upgrade_notice_3.6.2","","no"),
("2043","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558601536","no"),
("2044","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("2045","_transient_timeout__woocommerce_helper_subscriptions","1557997691","no"),
("2046","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("2047","_site_transient_timeout_theme_roots","1557998591","no"),
("2048","_site_transient_theme_roots","a:2:{s:8:\"babyshop\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("2049","_transient_timeout__woocommerce_helper_updates","1558039991","no"),
("2050","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1557996791;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("2053","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("2056","woocommerce_placeholder_image","757","yes"),
("2057","woocommerce_allow_bulk_remove_personal_data","no","no"),
("2058","woocommerce_show_marketplace_suggestions","yes","no"),
("2059","woocommerce_version","3.6.2","yes"),
("2061","_transient_wc_attribute_taxonomies","a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:4:\"name\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:4:\"name\";s:16:\"attribute_public\";s:1:\"1\";}}","yes");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2874 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("3","2","_edit_lock","1533883991:1"),
("4","2","_edit_last","1"),
("22","14","_wp_attached_file","2018/06/123-01.png"),
("23","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:139;s:6:\"height\";i:139;s:4:\"file\";s:18:\"2018/06/123-01.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"123-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("24","15","_wp_attached_file","2018/06/cropped-123-01.png"),
("25","15","_wp_attachment_context","site-icon"),
("26","15","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2018/06/cropped-123-01.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-123-01-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("114","60","_menu_item_type","post_type"),
("115","60","_menu_item_menu_item_parent","0"),
("116","60","_menu_item_object_id","2"),
("117","60","_menu_item_object","page"),
("118","60","_menu_item_target",""),
("119","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("120","60","_menu_item_xfn",""),
("121","60","_menu_item_url",""),
("177","67","_menu_item_type","custom"),
("178","67","_menu_item_menu_item_parent","0"),
("179","67","_menu_item_object_id","67"),
("180","67","_menu_item_object","custom"),
("181","67","_menu_item_target",""),
("182","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("183","67","_menu_item_xfn",""),
("184","67","_menu_item_url","/danh-muc/hang-moi-ve/"),
("188","69","_edit_last","1"),
("189","69","_edit_lock","1527955367:1"),
("224","2","_footer","normal"),
("243","121","_wc_review_count","0"),
("244","121","_wc_rating_count","a:0:{}"),
("245","121","_wc_average_rating","0"),
("246","121","_edit_last","1"),
("247","121","_edit_lock","1533873650:1"),
("250","121","_thumbnail_id","660"),
("251","121","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:3:\"New\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("252","121","_sku",""),
("253","121","_regular_price","150000"),
("254","121","_sale_price","120000"),
("255","121","_sale_price_dates_from",""),
("256","121","_sale_price_dates_to",""),
("257","121","total_sales","0"),
("258","121","_tax_status","taxable"),
("259","121","_tax_class",""),
("260","121","_manage_stock","no"),
("261","121","_backorders","no"),
("262","121","_sold_individually","no"),
("263","121","_weight",""),
("264","121","_length",""),
("265","121","_width",""),
("266","121","_height",""),
("267","121","_upsell_ids","a:0:{}"),
("268","121","_crosssell_ids","a:0:{}"),
("269","121","_purchase_note",""),
("270","121","_default_attributes","a:0:{}"),
("271","121","_virtual","no"),
("272","121","_downloadable","no"),
("273","121","_product_image_gallery","660,659,657"),
("274","121","_download_limit","-1"),
("275","121","_download_expiry","-1"),
("276","121","_stock",""),
("277","121","_stock_status","instock"),
("278","121","_product_version","3.4.4"),
("279","121","_price","120000"),
("336","150","_wc_review_count","0"),
("337","150","_wc_rating_count","a:0:{}"),
("338","150","_wc_average_rating","0"),
("339","150","_edit_last","1"),
("340","150","_edit_lock","1533873105:1"),
("343","150","_thumbnail_id","653"),
("344","150","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("345","150","_sku",""),
("346","150","_regular_price","325000"),
("347","150","_sale_price","250000"),
("348","150","_sale_price_dates_from",""),
("349","150","_sale_price_dates_to",""),
("350","150","total_sales","0"),
("351","150","_tax_status","taxable"),
("352","150","_tax_class",""),
("353","150","_manage_stock","no"),
("354","150","_backorders","no"),
("355","150","_sold_individually","no"),
("356","150","_weight",""),
("357","150","_length",""),
("358","150","_width",""),
("359","150","_height",""),
("360","150","_upsell_ids","a:0:{}"),
("361","150","_crosssell_ids","a:0:{}"),
("362","150","_purchase_note",""),
("363","150","_default_attributes","a:0:{}"),
("364","150","_virtual","no"),
("365","150","_downloadable","no"),
("366","150","_product_image_gallery","653,651,649"),
("367","150","_download_limit","-1"),
("368","150","_download_expiry","-1"),
("369","150","_stock",""),
("370","150","_stock_status","instock"),
("371","150","_product_version","3.4.4"),
("372","150","_price","250000"),
("373","152","_wc_review_count","0"),
("374","152","_wc_rating_count","a:0:{}");
INSERT INTO bz_postmeta VALUES
("375","152","_wc_average_rating","0"),
("376","152","_edit_last","1"),
("377","152","_edit_lock","1533873218:1"),
("380","152","_thumbnail_id","655"),
("381","152","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("382","152","_sku",""),
("383","152","_regular_price","360000"),
("384","152","_sale_price","250000"),
("385","152","_sale_price_dates_from",""),
("386","152","_sale_price_dates_to",""),
("387","152","total_sales","0"),
("388","152","_tax_status","taxable"),
("389","152","_tax_class",""),
("390","152","_manage_stock","no"),
("391","152","_backorders","no"),
("392","152","_sold_individually","no"),
("393","152","_weight",""),
("394","152","_length",""),
("395","152","_width",""),
("396","152","_height",""),
("397","152","_upsell_ids","a:0:{}"),
("398","152","_crosssell_ids","a:0:{}"),
("399","152","_purchase_note",""),
("400","152","_default_attributes","a:0:{}"),
("401","152","_virtual","no"),
("402","152","_downloadable","no"),
("403","152","_product_image_gallery","655,653,651"),
("404","152","_download_limit","-1"),
("405","152","_download_expiry","-1"),
("406","152","_stock",""),
("407","152","_stock_status","instock"),
("408","152","_product_version","3.4.4"),
("409","152","_price","250000"),
("410","154","_wc_review_count","0"),
("411","154","_wc_rating_count","a:0:{}"),
("412","154","_wc_average_rating","0"),
("413","154","_edit_last","1"),
("414","154","_edit_lock","1533873316:1"),
("417","154","_thumbnail_id","657"),
("418","154","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("419","154","_sku",""),
("420","154","_regular_price","260000"),
("421","154","_sale_price","210000"),
("422","154","_sale_price_dates_from",""),
("423","154","_sale_price_dates_to",""),
("424","154","total_sales","0"),
("425","154","_tax_status","taxable"),
("426","154","_tax_class",""),
("427","154","_manage_stock","no"),
("428","154","_backorders","no"),
("429","154","_sold_individually","no"),
("430","154","_weight",""),
("431","154","_length",""),
("432","154","_width",""),
("433","154","_height",""),
("434","154","_upsell_ids","a:0:{}"),
("435","154","_crosssell_ids","a:0:{}"),
("436","154","_purchase_note",""),
("437","154","_default_attributes","a:0:{}"),
("438","154","_virtual","no"),
("439","154","_downloadable","no"),
("440","154","_product_image_gallery","657,655,653"),
("441","154","_download_limit","-1"),
("442","154","_download_expiry","-1"),
("443","154","_stock",""),
("444","154","_stock_status","instock"),
("445","154","_product_version","3.4.4"),
("447","156","_wc_review_count","0"),
("448","156","_wc_rating_count","a:0:{}"),
("449","156","_wc_average_rating","0"),
("450","156","_edit_last","1"),
("451","156","_edit_lock","1533872964:1"),
("454","156","_thumbnail_id","651"),
("455","156","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("456","156","_sku",""),
("457","156","_regular_price","650000"),
("458","156","_sale_price","450000"),
("459","156","_sale_price_dates_from",""),
("460","156","_sale_price_dates_to",""),
("461","156","total_sales","0"),
("462","156","_tax_status","taxable"),
("463","156","_tax_class",""),
("464","156","_manage_stock","no"),
("465","156","_backorders","no"),
("466","156","_sold_individually","no"),
("467","156","_weight",""),
("468","156","_length",""),
("469","156","_width",""),
("470","156","_height",""),
("471","156","_upsell_ids","a:0:{}"),
("472","156","_crosssell_ids","a:0:{}"),
("473","156","_purchase_note",""),
("474","156","_default_attributes","a:0:{}"),
("475","156","_virtual","no"),
("476","156","_downloadable","no"),
("477","156","_product_image_gallery","651,649,647"),
("478","156","_download_limit","-1"),
("479","156","_download_expiry","-1"),
("480","156","_stock",""),
("481","156","_stock_status","instock");
INSERT INTO bz_postmeta VALUES
("482","156","_product_version","3.4.4"),
("484","2","_thumbnail_id",""),
("485","160","_wc_review_count","0"),
("486","160","_wc_rating_count","a:0:{}"),
("487","160","_wc_average_rating","0"),
("488","160","_edit_last","1"),
("489","160","_edit_lock","1533872796:1"),
("492","160","_thumbnail_id","649"),
("493","160","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("494","160","_sku",""),
("495","160","_regular_price","560000"),
("496","160","_sale_price","420000"),
("497","160","_sale_price_dates_from",""),
("498","160","_sale_price_dates_to",""),
("499","160","total_sales","0"),
("500","160","_tax_status","taxable"),
("501","160","_tax_class",""),
("502","160","_manage_stock","no"),
("503","160","_backorders","no"),
("504","160","_sold_individually","no"),
("505","160","_weight",""),
("506","160","_length",""),
("507","160","_width",""),
("508","160","_height",""),
("509","160","_upsell_ids","a:0:{}"),
("510","160","_crosssell_ids","a:0:{}"),
("511","160","_purchase_note",""),
("512","160","_default_attributes","a:0:{}"),
("513","160","_virtual","no"),
("514","160","_downloadable","no"),
("515","160","_product_image_gallery","649,647,646"),
("516","160","_download_limit","-1"),
("517","160","_download_expiry","-1"),
("518","160","_stock",""),
("519","160","_stock_status","instock"),
("520","160","_product_version","3.4.4"),
("532","167","_wc_review_count","0"),
("533","167","_wc_rating_count","a:0:{}"),
("534","167","_wc_average_rating","0"),
("535","167","_edit_last","1"),
("536","167","_edit_lock","1533872693:1"),
("539","167","_thumbnail_id","647"),
("540","167","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("541","167","_sku",""),
("542","167","_regular_price","630000"),
("543","167","_sale_price","450000"),
("544","167","_sale_price_dates_from",""),
("545","167","_sale_price_dates_to",""),
("546","167","total_sales","0"),
("547","167","_tax_status","taxable"),
("548","167","_tax_class",""),
("549","167","_manage_stock","no"),
("550","167","_backorders","no"),
("551","167","_sold_individually","no"),
("552","167","_weight",""),
("553","167","_length",""),
("554","167","_width",""),
("555","167","_height",""),
("556","167","_upsell_ids","a:0:{}"),
("557","167","_crosssell_ids","a:0:{}"),
("558","167","_purchase_note",""),
("559","167","_default_attributes","a:0:{}"),
("560","167","_virtual","no"),
("561","167","_downloadable","no"),
("562","167","_product_image_gallery","645,647,646"),
("563","167","_download_limit","-1"),
("564","167","_download_expiry","-1"),
("565","167","_stock",""),
("566","167","_stock_status","instock"),
("567","167","_product_version","3.4.4"),
("569","169","_wc_review_count","0"),
("570","169","_wc_rating_count","a:0:{}"),
("571","169","_wc_average_rating","0"),
("572","169","_edit_last","1"),
("573","169","_edit_lock","1533872577:1"),
("576","169","_thumbnail_id","646"),
("577","169","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("578","169","_sku",""),
("579","169","_regular_price","250000"),
("580","169","_sale_price","150000"),
("581","169","_sale_price_dates_from",""),
("582","169","_sale_price_dates_to",""),
("583","169","total_sales","0"),
("584","169","_tax_status","taxable"),
("585","169","_tax_class",""),
("586","169","_manage_stock","no"),
("587","169","_backorders","no"),
("588","169","_sold_individually","no"),
("589","169","_weight",""),
("590","169","_length",""),
("591","169","_width",""),
("592","169","_height",""),
("593","169","_upsell_ids","a:0:{}"),
("594","169","_crosssell_ids","a:0:{}"),
("595","169","_purchase_note",""),
("596","169","_default_attributes","a:0:{}"),
("597","169","_virtual","no"),
("598","169","_downloadable","no"),
("599","169","_product_image_gallery","170"),
("600","169","_download_limit","-1");
INSERT INTO bz_postmeta VALUES
("601","169","_download_expiry","-1"),
("602","169","_stock",""),
("603","169","_stock_status","instock"),
("604","169","_product_version","3.4.4"),
("636","199","_wc_review_count","0"),
("637","199","_wc_rating_count","a:0:{}"),
("638","199","_wc_average_rating","0"),
("639","199","_edit_last","1"),
("640","199","_edit_lock","1533872461:1"),
("643","199","_thumbnail_id","645"),
("644","199","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("645","199","_sku","GS01"),
("646","199","_regular_price","350000"),
("647","199","_sale_price","120000"),
("648","199","_sale_price_dates_from",""),
("649","199","_sale_price_dates_to",""),
("650","199","total_sales","0"),
("651","199","_tax_status","taxable"),
("652","199","_tax_class",""),
("653","199","_manage_stock","no"),
("654","199","_backorders","no"),
("655","199","_sold_individually","no"),
("656","199","_weight",""),
("657","199","_length",""),
("658","199","_width",""),
("659","199","_height",""),
("660","199","_upsell_ids","a:0:{}"),
("661","199","_crosssell_ids","a:0:{}"),
("662","199","_purchase_note",""),
("663","199","_default_attributes","a:2:{s:10:\"pa_mau-sac\";s:2:\"do\";s:7:\"pa_size\";s:6:\"size-1\";}"),
("664","199","_virtual","no"),
("665","199","_downloadable","no"),
("666","199","_product_image_gallery","304,170,202,161,157"),
("667","199","_download_limit","-1"),
("668","199","_download_expiry","-1"),
("669","199","_stock",""),
("670","199","_stock_status","instock"),
("671","199","_product_version","3.4.4"),
("673","201","_wc_review_count","0"),
("674","201","_wc_rating_count","a:0:{}"),
("675","201","_wc_average_rating","0"),
("676","201","_edit_last","1"),
("677","201","_edit_lock","1533873545:1"),
("680","201","_thumbnail_id","659"),
("681","201","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("682","201","_sku",""),
("683","201","_regular_price","260000"),
("684","201","_sale_price","120000"),
("685","201","_sale_price_dates_from",""),
("686","201","_sale_price_dates_to",""),
("687","201","total_sales","0"),
("688","201","_tax_status","taxable"),
("689","201","_tax_class",""),
("690","201","_manage_stock","no"),
("691","201","_backorders","no"),
("692","201","_sold_individually","no"),
("693","201","_weight",""),
("694","201","_length",""),
("695","201","_width",""),
("696","201","_height",""),
("697","201","_upsell_ids","a:0:{}"),
("698","201","_crosssell_ids","a:0:{}"),
("699","201","_purchase_note",""),
("700","201","_default_attributes","a:2:{s:10:\"pa_mau-sac\";s:4:\"hong\";s:7:\"pa_size\";s:7:\"size-10\";}"),
("701","201","_virtual","no"),
("702","201","_downloadable","no"),
("703","201","_product_image_gallery","659,657,655"),
("704","201","_download_limit","-1"),
("705","201","_download_expiry","-1"),
("706","201","_stock",""),
("707","201","_stock_status","instock"),
("708","201","_product_version","3.4.4"),
("744","224","_edit_last","1"),
("745","224","_edit_lock","1527960058:1"),
("747","244","_wp_attached_file","2018/06/sp-dich-vu-vang.png"),
("748","244","_wp_attachment_metadata","a:5:{s:5:\"width\";i:148;s:6:\"height\";i:58;s:4:\"file\";s:27:\"2018/06/sp-dich-vu-vang.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"sp-dich-vu-vang-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"sp-dich-vu-vang-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("770","224","_thumbnail_id",""),
("790","272","_edit_last","1"),
("791","272","_edit_lock","1528002525:1"),
("792","272","_thumbnail_id",""),
("874","199","_product_attributes","a:2:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("875","325","_variation_description",""),
("876","325","_sku",""),
("877","325","_regular_price","250000"),
("878","325","_sale_price","110000"),
("879","325","_sale_price_dates_from",""),
("880","325","_sale_price_dates_to",""),
("881","325","total_sales","0"),
("882","325","_tax_status","taxable"),
("883","325","_tax_class","parent"),
("884","325","_manage_stock","no"),
("885","325","_backorders","no"),
("886","325","_sold_individually","no"),
("887","325","_weight",""),
("888","325","_length",""),
("889","325","_width",""),
("890","325","_height",""),
("891","325","_upsell_ids","a:0:{}"),
("892","325","_crosssell_ids","a:0:{}"),
("893","325","_purchase_note","");
INSERT INTO bz_postmeta VALUES
("894","325","_default_attributes","a:0:{}"),
("895","325","_virtual","no"),
("896","325","_downloadable","no"),
("897","325","_product_image_gallery",""),
("898","325","_download_limit","-1"),
("899","325","_download_expiry","-1"),
("900","325","_stock",""),
("901","325","_stock_status","instock"),
("902","325","_wc_average_rating","0"),
("903","325","_wc_rating_count","a:0:{}"),
("904","325","_wc_review_count","0"),
("905","325","_downloadable_files","a:0:{}"),
("906","325","attribute_pa_size","size-1"),
("907","325","attribute_pa_mau-sac","den"),
("908","325","_price","110000"),
("909","325","_product_version","3.4.1"),
("910","326","_variation_description",""),
("911","326","_sku",""),
("912","326","_regular_price","250000"),
("913","326","_sale_price","110000"),
("914","326","_sale_price_dates_from",""),
("915","326","_sale_price_dates_to",""),
("916","326","total_sales","0"),
("917","326","_tax_status","taxable"),
("918","326","_tax_class","parent"),
("919","326","_manage_stock","no"),
("920","326","_backorders","no"),
("921","326","_sold_individually","no"),
("922","326","_weight",""),
("923","326","_length",""),
("924","326","_width",""),
("925","326","_height",""),
("926","326","_upsell_ids","a:0:{}"),
("927","326","_crosssell_ids","a:0:{}"),
("928","326","_purchase_note",""),
("929","326","_default_attributes","a:0:{}"),
("930","326","_virtual","no"),
("931","326","_downloadable","no"),
("932","326","_product_image_gallery",""),
("933","326","_download_limit","-1"),
("934","326","_download_expiry","-1"),
("935","326","_stock",""),
("936","326","_stock_status","instock"),
("937","326","_wc_average_rating","0"),
("938","326","_wc_rating_count","a:0:{}"),
("939","326","_wc_review_count","0"),
("940","326","_downloadable_files","a:0:{}"),
("941","326","attribute_pa_size","size-10"),
("942","326","attribute_pa_mau-sac","den"),
("943","326","_price","110000"),
("944","326","_product_version","3.4.1"),
("945","327","_variation_description",""),
("946","327","_sku",""),
("947","327","_regular_price","250000"),
("948","327","_sale_price","110000"),
("949","327","_sale_price_dates_from",""),
("950","327","_sale_price_dates_to",""),
("951","327","total_sales","0"),
("952","327","_tax_status","taxable"),
("953","327","_tax_class","parent"),
("954","327","_manage_stock","no"),
("955","327","_backorders","no"),
("956","327","_sold_individually","no"),
("957","327","_weight",""),
("958","327","_length",""),
("959","327","_width",""),
("960","327","_height",""),
("961","327","_upsell_ids","a:0:{}"),
("962","327","_crosssell_ids","a:0:{}"),
("963","327","_purchase_note",""),
("964","327","_default_attributes","a:0:{}"),
("965","327","_virtual","no"),
("966","327","_downloadable","no"),
("967","327","_product_image_gallery",""),
("968","327","_download_limit","-1"),
("969","327","_download_expiry","-1"),
("970","327","_stock",""),
("971","327","_stock_status","instock"),
("972","327","_wc_average_rating","0"),
("973","327","_wc_rating_count","a:0:{}"),
("974","327","_wc_review_count","0"),
("975","327","_downloadable_files","a:0:{}"),
("976","327","attribute_pa_size","size-11"),
("977","327","attribute_pa_mau-sac","den"),
("978","327","_price","110000"),
("979","327","_product_version","3.4.1"),
("980","328","_variation_description",""),
("981","328","_sku",""),
("982","328","_regular_price","250000"),
("983","328","_sale_price","110000"),
("984","328","_sale_price_dates_from",""),
("985","328","_sale_price_dates_to",""),
("986","328","total_sales","0"),
("987","328","_tax_status","taxable"),
("988","328","_tax_class","parent"),
("989","328","_manage_stock","no"),
("990","328","_backorders","no"),
("991","328","_sold_individually","no"),
("992","328","_weight",""),
("993","328","_length","");
INSERT INTO bz_postmeta VALUES
("994","328","_width",""),
("995","328","_height",""),
("996","328","_upsell_ids","a:0:{}"),
("997","328","_crosssell_ids","a:0:{}"),
("998","328","_purchase_note",""),
("999","328","_default_attributes","a:0:{}"),
("1000","328","_virtual","no"),
("1001","328","_downloadable","no"),
("1002","328","_product_image_gallery",""),
("1003","328","_download_limit","-1"),
("1004","328","_download_expiry","-1"),
("1005","328","_stock",""),
("1006","328","_stock_status","instock"),
("1007","328","_wc_average_rating","0"),
("1008","328","_wc_rating_count","a:0:{}"),
("1009","328","_wc_review_count","0"),
("1010","328","_downloadable_files","a:0:{}"),
("1011","328","attribute_pa_size","size-1"),
("1012","328","attribute_pa_mau-sac","do"),
("1013","328","_price","110000"),
("1014","328","_product_version","3.4.1"),
("1015","329","_variation_description",""),
("1016","329","_sku",""),
("1017","329","_regular_price","250000"),
("1018","329","_sale_price","110000"),
("1019","329","_sale_price_dates_from",""),
("1020","329","_sale_price_dates_to",""),
("1021","329","total_sales","0"),
("1022","329","_tax_status","taxable"),
("1023","329","_tax_class","parent"),
("1024","329","_manage_stock","no"),
("1025","329","_backorders","no"),
("1026","329","_sold_individually","no"),
("1027","329","_weight",""),
("1028","329","_length",""),
("1029","329","_width",""),
("1030","329","_height",""),
("1031","329","_upsell_ids","a:0:{}"),
("1032","329","_crosssell_ids","a:0:{}"),
("1033","329","_purchase_note",""),
("1034","329","_default_attributes","a:0:{}"),
("1035","329","_virtual","no"),
("1036","329","_downloadable","no"),
("1037","329","_product_image_gallery",""),
("1038","329","_download_limit","-1"),
("1039","329","_download_expiry","-1"),
("1040","329","_stock",""),
("1041","329","_stock_status","instock"),
("1042","329","_wc_average_rating","0"),
("1043","329","_wc_rating_count","a:0:{}"),
("1044","329","_wc_review_count","0"),
("1045","329","_downloadable_files","a:0:{}"),
("1046","329","attribute_pa_size","size-10"),
("1047","329","attribute_pa_mau-sac","do"),
("1048","329","_price","110000"),
("1049","329","_product_version","3.4.1"),
("1050","330","_variation_description",""),
("1051","330","_sku",""),
("1052","330","_regular_price","250000"),
("1053","330","_sale_price","110000"),
("1054","330","_sale_price_dates_from",""),
("1055","330","_sale_price_dates_to",""),
("1056","330","total_sales","0"),
("1057","330","_tax_status","taxable"),
("1058","330","_tax_class","parent"),
("1059","330","_manage_stock","no"),
("1060","330","_backorders","no"),
("1061","330","_sold_individually","no"),
("1062","330","_weight",""),
("1063","330","_length",""),
("1064","330","_width",""),
("1065","330","_height",""),
("1066","330","_upsell_ids","a:0:{}"),
("1067","330","_crosssell_ids","a:0:{}"),
("1068","330","_purchase_note",""),
("1069","330","_default_attributes","a:0:{}"),
("1070","330","_virtual","no"),
("1071","330","_downloadable","no"),
("1072","330","_product_image_gallery",""),
("1073","330","_download_limit","-1"),
("1074","330","_download_expiry","-1"),
("1075","330","_stock",""),
("1076","330","_stock_status","instock"),
("1077","330","_wc_average_rating","0"),
("1078","330","_wc_rating_count","a:0:{}"),
("1079","330","_wc_review_count","0"),
("1080","330","_downloadable_files","a:0:{}"),
("1081","330","attribute_pa_size","size-11"),
("1082","330","attribute_pa_mau-sac","do"),
("1083","330","_price","110000"),
("1084","330","_product_version","3.4.1"),
("1085","331","_variation_description",""),
("1086","331","_sku",""),
("1087","331","_regular_price","250000"),
("1088","331","_sale_price","110000"),
("1089","331","_sale_price_dates_from",""),
("1090","331","_sale_price_dates_to",""),
("1091","331","total_sales","0"),
("1092","331","_tax_status","taxable"),
("1093","331","_tax_class","parent");
INSERT INTO bz_postmeta VALUES
("1094","331","_manage_stock","no"),
("1095","331","_backorders","no"),
("1096","331","_sold_individually","no"),
("1097","331","_weight",""),
("1098","331","_length",""),
("1099","331","_width",""),
("1100","331","_height",""),
("1101","331","_upsell_ids","a:0:{}"),
("1102","331","_crosssell_ids","a:0:{}"),
("1103","331","_purchase_note",""),
("1104","331","_default_attributes","a:0:{}"),
("1105","331","_virtual","no"),
("1106","331","_downloadable","no"),
("1107","331","_product_image_gallery",""),
("1108","331","_download_limit","-1"),
("1109","331","_download_expiry","-1"),
("1110","331","_stock",""),
("1111","331","_stock_status","instock"),
("1112","331","_wc_average_rating","0"),
("1113","331","_wc_rating_count","a:0:{}"),
("1114","331","_wc_review_count","0"),
("1115","331","_downloadable_files","a:0:{}"),
("1116","331","attribute_pa_size","size-1"),
("1117","331","attribute_pa_mau-sac","hong"),
("1118","331","_price","110000"),
("1119","331","_product_version","3.4.1"),
("1120","332","_variation_description",""),
("1121","332","_sku",""),
("1122","332","_regular_price","250000"),
("1123","332","_sale_price","110000"),
("1124","332","_sale_price_dates_from",""),
("1125","332","_sale_price_dates_to",""),
("1126","332","total_sales","0"),
("1127","332","_tax_status","taxable"),
("1128","332","_tax_class","parent"),
("1129","332","_manage_stock","no"),
("1130","332","_backorders","no"),
("1131","332","_sold_individually","no"),
("1132","332","_weight",""),
("1133","332","_length",""),
("1134","332","_width",""),
("1135","332","_height",""),
("1136","332","_upsell_ids","a:0:{}"),
("1137","332","_crosssell_ids","a:0:{}"),
("1138","332","_purchase_note",""),
("1139","332","_default_attributes","a:0:{}"),
("1140","332","_virtual","no"),
("1141","332","_downloadable","no"),
("1142","332","_product_image_gallery",""),
("1143","332","_download_limit","-1"),
("1144","332","_download_expiry","-1"),
("1145","332","_stock",""),
("1146","332","_stock_status","instock"),
("1147","332","_wc_average_rating","0"),
("1148","332","_wc_rating_count","a:0:{}"),
("1149","332","_wc_review_count","0"),
("1150","332","_downloadable_files","a:0:{}"),
("1151","332","attribute_pa_size","size-10"),
("1152","332","attribute_pa_mau-sac","hong"),
("1153","332","_price","110000"),
("1154","332","_product_version","3.4.1"),
("1155","333","_variation_description",""),
("1156","333","_sku",""),
("1157","333","_regular_price","250000"),
("1158","333","_sale_price","110000"),
("1159","333","_sale_price_dates_from",""),
("1160","333","_sale_price_dates_to",""),
("1161","333","total_sales","0"),
("1162","333","_tax_status","taxable"),
("1163","333","_tax_class","parent"),
("1164","333","_manage_stock","no"),
("1165","333","_backorders","no"),
("1166","333","_sold_individually","no"),
("1167","333","_weight",""),
("1168","333","_length",""),
("1169","333","_width",""),
("1170","333","_height",""),
("1171","333","_upsell_ids","a:0:{}"),
("1172","333","_crosssell_ids","a:0:{}"),
("1173","333","_purchase_note",""),
("1174","333","_default_attributes","a:0:{}"),
("1175","333","_virtual","no"),
("1176","333","_downloadable","no"),
("1177","333","_product_image_gallery",""),
("1178","333","_download_limit","-1"),
("1179","333","_download_expiry","-1"),
("1180","333","_stock",""),
("1181","333","_stock_status","instock"),
("1182","333","_wc_average_rating","0"),
("1183","333","_wc_rating_count","a:0:{}"),
("1184","333","_wc_review_count","0"),
("1185","333","_downloadable_files","a:0:{}"),
("1186","333","attribute_pa_size","size-11"),
("1187","333","attribute_pa_mau-sac","hong"),
("1188","333","_price","110000"),
("1189","333","_product_version","3.4.1"),
("1194","199","_price","110000"),
("1347","201","_product_attributes","a:2:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("1348","400","_variation_description",""),
("1349","400","_sku","");
INSERT INTO bz_postmeta VALUES
("1350","400","_regular_price","250000"),
("1351","400","_sale_price","120000"),
("1352","400","_sale_price_dates_from",""),
("1353","400","_sale_price_dates_to",""),
("1354","400","total_sales","0"),
("1355","400","_tax_status","taxable"),
("1356","400","_tax_class","parent"),
("1357","400","_manage_stock","no"),
("1358","400","_backorders","no"),
("1359","400","_sold_individually","no"),
("1360","400","_weight",""),
("1361","400","_length",""),
("1362","400","_width",""),
("1363","400","_height",""),
("1364","400","_upsell_ids","a:0:{}"),
("1365","400","_crosssell_ids","a:0:{}"),
("1366","400","_purchase_note",""),
("1367","400","_default_attributes","a:0:{}"),
("1368","400","_virtual","no"),
("1369","400","_downloadable","no"),
("1370","400","_product_image_gallery",""),
("1371","400","_download_limit","-1"),
("1372","400","_download_expiry","-1"),
("1373","400","_stock",""),
("1374","400","_stock_status","instock"),
("1375","400","_wc_average_rating","0"),
("1376","400","_wc_rating_count","a:0:{}"),
("1377","400","_wc_review_count","0"),
("1378","400","_downloadable_files","a:0:{}"),
("1379","400","attribute_pa_size","size-10"),
("1380","400","attribute_pa_mau-sac","hong"),
("1381","400","_price","120000"),
("1382","400","_product_version","3.4.1"),
("1383","401","_variation_description",""),
("1384","401","_sku",""),
("1385","401","_regular_price","250000"),
("1386","401","_sale_price","120000"),
("1387","401","_sale_price_dates_from",""),
("1388","401","_sale_price_dates_to",""),
("1389","401","total_sales","0"),
("1390","401","_tax_status","taxable"),
("1391","401","_tax_class","parent"),
("1392","401","_manage_stock","no"),
("1393","401","_backorders","no"),
("1394","401","_sold_individually","no"),
("1395","401","_weight",""),
("1396","401","_length",""),
("1397","401","_width",""),
("1398","401","_height",""),
("1399","401","_upsell_ids","a:0:{}"),
("1400","401","_crosssell_ids","a:0:{}"),
("1401","401","_purchase_note",""),
("1402","401","_default_attributes","a:0:{}"),
("1403","401","_virtual","no"),
("1404","401","_downloadable","no"),
("1405","401","_product_image_gallery",""),
("1406","401","_download_limit","-1"),
("1407","401","_download_expiry","-1"),
("1408","401","_stock",""),
("1409","401","_stock_status","instock"),
("1410","401","_wc_average_rating","0"),
("1411","401","_wc_rating_count","a:0:{}"),
("1412","401","_wc_review_count","0"),
("1413","401","_downloadable_files","a:0:{}"),
("1414","401","attribute_pa_size","size-11"),
("1415","401","attribute_pa_mau-sac","hong"),
("1416","401","_price","120000"),
("1417","401","_product_version","3.4.1"),
("1493","201","_price","120000"),
("1508","411","_menu_item_type","custom"),
("1509","411","_menu_item_menu_item_parent","0"),
("1510","411","_menu_item_object_id","411"),
("1511","411","_menu_item_object","custom"),
("1512","411","_menu_item_target",""),
("1513","411","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1514","411","_menu_item_xfn",""),
("1515","411","_menu_item_url","/cua-hang/"),
("1556","430","_edit_last","1"),
("1557","430","_edit_lock","1528022408:1"),
("1683","503","_edit_last","1"),
("1684","503","_edit_lock","1528037321:1"),
("1685","503","_footer","normal"),
("1686","503","_wp_page_template","default"),
("1689","514","_edit_last","1"),
("1690","514","_edit_lock","1528037340:1"),
("1691","514","_footer","normal"),
("1692","514","_wp_page_template","default"),
("1693","516","_edit_last","1"),
("1694","516","_edit_lock","1528037511:1"),
("1695","516","_footer","normal"),
("1696","516","_wp_page_template","default"),
("1698","521","_edit_last","1"),
("1699","521","_edit_lock","1528037521:1"),
("1700","521","_footer","normal"),
("1701","521","_wp_page_template","default"),
("1714","154","_product_attributes","a:2:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("1715","530","_variation_description",""),
("1716","530","_sku",""),
("1717","530","_regular_price","250000"),
("1718","530","_sale_price","230000");
INSERT INTO bz_postmeta VALUES
("1719","530","_sale_price_dates_from",""),
("1720","530","_sale_price_dates_to",""),
("1721","530","total_sales","0"),
("1722","530","_tax_status","taxable"),
("1723","530","_tax_class","parent"),
("1724","530","_manage_stock","no"),
("1725","530","_backorders","no"),
("1726","530","_sold_individually","no"),
("1727","530","_weight",""),
("1728","530","_length",""),
("1729","530","_width",""),
("1730","530","_height",""),
("1731","530","_upsell_ids","a:0:{}"),
("1732","530","_crosssell_ids","a:0:{}"),
("1733","530","_purchase_note",""),
("1734","530","_default_attributes","a:0:{}"),
("1735","530","_virtual","no"),
("1736","530","_downloadable","no"),
("1737","530","_product_image_gallery",""),
("1738","530","_download_limit","-1"),
("1739","530","_download_expiry","-1"),
("1740","530","_stock",""),
("1741","530","_stock_status","instock"),
("1742","530","_wc_average_rating","0"),
("1743","530","_wc_rating_count","a:0:{}"),
("1744","530","_wc_review_count","0"),
("1745","530","_downloadable_files","a:0:{}"),
("1746","530","attribute_pa_mau-sac","do"),
("1747","530","attribute_pa_size","size-10"),
("1748","530","_price","230000"),
("1749","530","_product_version","3.4.1"),
("1750","531","_variation_description",""),
("1751","531","_sku",""),
("1752","531","_regular_price","250000"),
("1753","531","_sale_price","230000"),
("1754","531","_sale_price_dates_from",""),
("1755","531","_sale_price_dates_to",""),
("1756","531","total_sales","0"),
("1757","531","_tax_status","taxable"),
("1758","531","_tax_class","parent"),
("1759","531","_manage_stock","no"),
("1760","531","_backorders","no"),
("1761","531","_sold_individually","no"),
("1762","531","_weight",""),
("1763","531","_length",""),
("1764","531","_width",""),
("1765","531","_height",""),
("1766","531","_upsell_ids","a:0:{}"),
("1767","531","_crosssell_ids","a:0:{}"),
("1768","531","_purchase_note",""),
("1769","531","_default_attributes","a:0:{}"),
("1770","531","_virtual","no"),
("1771","531","_downloadable","no"),
("1772","531","_product_image_gallery",""),
("1773","531","_download_limit","-1"),
("1774","531","_download_expiry","-1"),
("1775","531","_stock",""),
("1776","531","_stock_status","instock"),
("1777","531","_wc_average_rating","0"),
("1778","531","_wc_rating_count","a:0:{}"),
("1779","531","_wc_review_count","0"),
("1780","531","_downloadable_files","a:0:{}"),
("1781","531","attribute_pa_mau-sac","hong"),
("1782","531","attribute_pa_size","size-10"),
("1783","531","_price","230000"),
("1784","531","_product_version","3.4.1"),
("1785","532","_variation_description",""),
("1786","532","_sku",""),
("1787","532","_regular_price","250000"),
("1788","532","_sale_price","230000"),
("1789","532","_sale_price_dates_from",""),
("1790","532","_sale_price_dates_to",""),
("1791","532","total_sales","0"),
("1792","532","_tax_status","taxable"),
("1793","532","_tax_class","parent"),
("1794","532","_manage_stock","no"),
("1795","532","_backorders","no"),
("1796","532","_sold_individually","no"),
("1797","532","_weight",""),
("1798","532","_length",""),
("1799","532","_width",""),
("1800","532","_height",""),
("1801","532","_upsell_ids","a:0:{}"),
("1802","532","_crosssell_ids","a:0:{}"),
("1803","532","_purchase_note",""),
("1804","532","_default_attributes","a:0:{}"),
("1805","532","_virtual","no"),
("1806","532","_downloadable","no"),
("1807","532","_product_image_gallery",""),
("1808","532","_download_limit","-1"),
("1809","532","_download_expiry","-1"),
("1810","532","_stock",""),
("1811","532","_stock_status","instock"),
("1812","532","_wc_average_rating","0"),
("1813","532","_wc_rating_count","a:0:{}"),
("1814","532","_wc_review_count","0"),
("1815","532","_downloadable_files","a:0:{}"),
("1816","532","attribute_pa_mau-sac","trang"),
("1817","532","attribute_pa_size","size-10"),
("1818","532","_price","230000");
INSERT INTO bz_postmeta VALUES
("1819","532","_product_version","3.4.1"),
("1820","533","_variation_description",""),
("1821","533","_sku",""),
("1822","533","_regular_price","250000"),
("1823","533","_sale_price","230000"),
("1824","533","_sale_price_dates_from",""),
("1825","533","_sale_price_dates_to",""),
("1826","533","total_sales","0"),
("1827","533","_tax_status","taxable"),
("1828","533","_tax_class","parent"),
("1829","533","_manage_stock","no"),
("1830","533","_backorders","no"),
("1831","533","_sold_individually","no"),
("1832","533","_weight",""),
("1833","533","_length",""),
("1834","533","_width",""),
("1835","533","_height",""),
("1836","533","_upsell_ids","a:0:{}"),
("1837","533","_crosssell_ids","a:0:{}"),
("1838","533","_purchase_note",""),
("1839","533","_default_attributes","a:0:{}"),
("1840","533","_virtual","no"),
("1841","533","_downloadable","no"),
("1842","533","_product_image_gallery",""),
("1843","533","_download_limit","-1"),
("1844","533","_download_expiry","-1"),
("1845","533","_stock",""),
("1846","533","_stock_status","instock"),
("1847","533","_wc_average_rating","0"),
("1848","533","_wc_rating_count","a:0:{}"),
("1849","533","_wc_review_count","0"),
("1850","533","_downloadable_files","a:0:{}"),
("1851","533","attribute_pa_mau-sac","do"),
("1852","533","attribute_pa_size","size-12"),
("1853","533","_price","230000"),
("1854","533","_product_version","3.4.1"),
("1855","534","_variation_description",""),
("1856","534","_sku",""),
("1857","534","_regular_price","250000"),
("1858","534","_sale_price","230000"),
("1859","534","_sale_price_dates_from",""),
("1860","534","_sale_price_dates_to",""),
("1861","534","total_sales","0"),
("1862","534","_tax_status","taxable"),
("1863","534","_tax_class","parent"),
("1864","534","_manage_stock","no"),
("1865","534","_backorders","no"),
("1866","534","_sold_individually","no"),
("1867","534","_weight",""),
("1868","534","_length",""),
("1869","534","_width",""),
("1870","534","_height",""),
("1871","534","_upsell_ids","a:0:{}"),
("1872","534","_crosssell_ids","a:0:{}"),
("1873","534","_purchase_note",""),
("1874","534","_default_attributes","a:0:{}"),
("1875","534","_virtual","no"),
("1876","534","_downloadable","no"),
("1877","534","_product_image_gallery",""),
("1878","534","_download_limit","-1"),
("1879","534","_download_expiry","-1"),
("1880","534","_stock",""),
("1881","534","_stock_status","instock"),
("1882","534","_wc_average_rating","0"),
("1883","534","_wc_rating_count","a:0:{}"),
("1884","534","_wc_review_count","0"),
("1885","534","_downloadable_files","a:0:{}"),
("1886","534","attribute_pa_mau-sac","hong"),
("1887","534","attribute_pa_size","size-12"),
("1888","534","_price","230000"),
("1889","534","_product_version","3.4.1"),
("1890","535","_variation_description",""),
("1891","535","_sku",""),
("1892","535","_regular_price","250000"),
("1893","535","_sale_price","230000"),
("1894","535","_sale_price_dates_from",""),
("1895","535","_sale_price_dates_to",""),
("1896","535","total_sales","0"),
("1897","535","_tax_status","taxable"),
("1898","535","_tax_class","parent"),
("1899","535","_manage_stock","no"),
("1900","535","_backorders","no"),
("1901","535","_sold_individually","no"),
("1902","535","_weight",""),
("1903","535","_length",""),
("1904","535","_width",""),
("1905","535","_height",""),
("1906","535","_upsell_ids","a:0:{}"),
("1907","535","_crosssell_ids","a:0:{}"),
("1908","535","_purchase_note",""),
("1909","535","_default_attributes","a:0:{}"),
("1910","535","_virtual","no"),
("1911","535","_downloadable","no"),
("1912","535","_product_image_gallery",""),
("1913","535","_download_limit","-1"),
("1914","535","_download_expiry","-1"),
("1915","535","_stock",""),
("1916","535","_stock_status","instock"),
("1917","535","_wc_average_rating","0"),
("1918","535","_wc_rating_count","a:0:{}");
INSERT INTO bz_postmeta VALUES
("1919","535","_wc_review_count","0"),
("1920","535","_downloadable_files","a:0:{}"),
("1921","535","attribute_pa_mau-sac","trang"),
("1922","535","attribute_pa_size","size-12"),
("1923","535","_price","230000"),
("1924","535","_product_version","3.4.1"),
("1925","536","_variation_description",""),
("1926","536","_sku",""),
("1927","536","_regular_price","250000"),
("1928","536","_sale_price","230000"),
("1929","536","_sale_price_dates_from",""),
("1930","536","_sale_price_dates_to",""),
("1931","536","total_sales","0"),
("1932","536","_tax_status","taxable"),
("1933","536","_tax_class","parent"),
("1934","536","_manage_stock","no"),
("1935","536","_backorders","no"),
("1936","536","_sold_individually","no"),
("1937","536","_weight",""),
("1938","536","_length",""),
("1939","536","_width",""),
("1940","536","_height",""),
("1941","536","_upsell_ids","a:0:{}"),
("1942","536","_crosssell_ids","a:0:{}"),
("1943","536","_purchase_note",""),
("1944","536","_default_attributes","a:0:{}"),
("1945","536","_virtual","no"),
("1946","536","_downloadable","no"),
("1947","536","_product_image_gallery",""),
("1948","536","_download_limit","-1"),
("1949","536","_download_expiry","-1"),
("1950","536","_stock",""),
("1951","536","_stock_status","instock"),
("1952","536","_wc_average_rating","0"),
("1953","536","_wc_rating_count","a:0:{}"),
("1954","536","_wc_review_count","0"),
("1955","536","_downloadable_files","a:0:{}"),
("1956","536","attribute_pa_mau-sac","do"),
("1957","536","attribute_pa_size","size-13"),
("1958","536","_price","230000"),
("1959","536","_product_version","3.4.1"),
("1960","537","_variation_description",""),
("1961","537","_sku",""),
("1962","537","_regular_price","250000"),
("1963","537","_sale_price","230000"),
("1964","537","_sale_price_dates_from",""),
("1965","537","_sale_price_dates_to",""),
("1966","537","total_sales","0"),
("1967","537","_tax_status","taxable"),
("1968","537","_tax_class","parent"),
("1969","537","_manage_stock","no"),
("1970","537","_backorders","no"),
("1971","537","_sold_individually","no"),
("1972","537","_weight",""),
("1973","537","_length",""),
("1974","537","_width",""),
("1975","537","_height",""),
("1976","537","_upsell_ids","a:0:{}"),
("1977","537","_crosssell_ids","a:0:{}"),
("1978","537","_purchase_note",""),
("1979","537","_default_attributes","a:0:{}"),
("1980","537","_virtual","no"),
("1981","537","_downloadable","no"),
("1982","537","_product_image_gallery",""),
("1983","537","_download_limit","-1"),
("1984","537","_download_expiry","-1"),
("1985","537","_stock",""),
("1986","537","_stock_status","instock"),
("1987","537","_wc_average_rating","0"),
("1988","537","_wc_rating_count","a:0:{}"),
("1989","537","_wc_review_count","0"),
("1990","537","_downloadable_files","a:0:{}"),
("1991","537","attribute_pa_mau-sac","hong"),
("1992","537","attribute_pa_size","size-13"),
("1993","537","_price","230000"),
("1994","537","_product_version","3.4.1"),
("1995","538","_variation_description",""),
("1996","538","_sku",""),
("1997","538","_regular_price","250000"),
("1998","538","_sale_price","230000"),
("1999","538","_sale_price_dates_from",""),
("2000","538","_sale_price_dates_to",""),
("2001","538","total_sales","0"),
("2002","538","_tax_status","taxable"),
("2003","538","_tax_class","parent"),
("2004","538","_manage_stock","no"),
("2005","538","_backorders","no"),
("2006","538","_sold_individually","no"),
("2007","538","_weight",""),
("2008","538","_length",""),
("2009","538","_width",""),
("2010","538","_height",""),
("2011","538","_upsell_ids","a:0:{}"),
("2012","538","_crosssell_ids","a:0:{}"),
("2013","538","_purchase_note",""),
("2014","538","_default_attributes","a:0:{}"),
("2015","538","_virtual","no"),
("2016","538","_downloadable","no"),
("2017","538","_product_image_gallery",""),
("2018","538","_download_limit","-1");
INSERT INTO bz_postmeta VALUES
("2019","538","_download_expiry","-1"),
("2020","538","_stock",""),
("2021","538","_stock_status","instock"),
("2022","538","_wc_average_rating","0"),
("2023","538","_wc_rating_count","a:0:{}"),
("2024","538","_wc_review_count","0"),
("2025","538","_downloadable_files","a:0:{}"),
("2026","538","attribute_pa_mau-sac","trang"),
("2027","538","attribute_pa_size","size-13"),
("2028","538","_price","230000"),
("2029","538","_product_version","3.4.1"),
("2033","154","_price","230000"),
("2034","167","_product_attributes","a:2:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("2035","539","_variation_description",""),
("2036","539","_sku",""),
("2037","539","_regular_price","350000"),
("2038","539","_sale_price","250000"),
("2039","539","_sale_price_dates_from",""),
("2040","539","_sale_price_dates_to",""),
("2041","539","total_sales","0"),
("2042","539","_tax_status","taxable"),
("2043","539","_tax_class","parent"),
("2044","539","_manage_stock","no"),
("2045","539","_backorders","no"),
("2046","539","_sold_individually","no"),
("2047","539","_weight",""),
("2048","539","_length",""),
("2049","539","_width",""),
("2050","539","_height",""),
("2051","539","_upsell_ids","a:0:{}"),
("2052","539","_crosssell_ids","a:0:{}"),
("2053","539","_purchase_note",""),
("2054","539","_default_attributes","a:0:{}"),
("2055","539","_virtual","no"),
("2056","539","_downloadable","no"),
("2057","539","_product_image_gallery",""),
("2058","539","_download_limit","-1"),
("2059","539","_download_expiry","-1"),
("2060","539","_stock",""),
("2061","539","_stock_status","instock"),
("2062","539","_wc_average_rating","0"),
("2063","539","_wc_rating_count","a:0:{}"),
("2064","539","_wc_review_count","0"),
("2065","539","_downloadable_files","a:0:{}"),
("2066","539","attribute_pa_size","size-10"),
("2067","539","attribute_pa_mau-sac","den"),
("2068","539","_price","250000"),
("2069","539","_product_version","3.4.1"),
("2070","540","_variation_description",""),
("2071","540","_sku",""),
("2072","540","_regular_price","350000"),
("2073","540","_sale_price","250000"),
("2074","540","_sale_price_dates_from",""),
("2075","540","_sale_price_dates_to",""),
("2076","540","total_sales","0"),
("2077","540","_tax_status","taxable"),
("2078","540","_tax_class","parent"),
("2079","540","_manage_stock","no"),
("2080","540","_backorders","no"),
("2081","540","_sold_individually","no"),
("2082","540","_weight",""),
("2083","540","_length",""),
("2084","540","_width",""),
("2085","540","_height",""),
("2086","540","_upsell_ids","a:0:{}"),
("2087","540","_crosssell_ids","a:0:{}"),
("2088","540","_purchase_note",""),
("2089","540","_default_attributes","a:0:{}"),
("2090","540","_virtual","no"),
("2091","540","_downloadable","no"),
("2092","540","_product_image_gallery",""),
("2093","540","_download_limit","-1"),
("2094","540","_download_expiry","-1"),
("2095","540","_stock",""),
("2096","540","_stock_status","instock"),
("2097","540","_wc_average_rating","0"),
("2098","540","_wc_rating_count","a:0:{}"),
("2099","540","_wc_review_count","0"),
("2100","540","_downloadable_files","a:0:{}"),
("2101","540","attribute_pa_size","size-11"),
("2102","540","attribute_pa_mau-sac","den"),
("2103","540","_price","250000"),
("2104","540","_product_version","3.4.1"),
("2105","541","_variation_description",""),
("2106","541","_sku",""),
("2107","541","_regular_price","350000"),
("2108","541","_sale_price","250000"),
("2109","541","_sale_price_dates_from",""),
("2110","541","_sale_price_dates_to",""),
("2111","541","total_sales","0"),
("2112","541","_tax_status","taxable"),
("2113","541","_tax_class","parent"),
("2114","541","_manage_stock","no"),
("2115","541","_backorders","no"),
("2116","541","_sold_individually","no"),
("2117","541","_weight",""),
("2118","541","_length",""),
("2119","541","_width",""),
("2120","541","_height",""),
("2121","541","_upsell_ids","a:0:{}");
INSERT INTO bz_postmeta VALUES
("2122","541","_crosssell_ids","a:0:{}"),
("2123","541","_purchase_note",""),
("2124","541","_default_attributes","a:0:{}"),
("2125","541","_virtual","no"),
("2126","541","_downloadable","no"),
("2127","541","_product_image_gallery",""),
("2128","541","_download_limit","-1"),
("2129","541","_download_expiry","-1"),
("2130","541","_stock",""),
("2131","541","_stock_status","instock"),
("2132","541","_wc_average_rating","0"),
("2133","541","_wc_rating_count","a:0:{}"),
("2134","541","_wc_review_count","0"),
("2135","541","_downloadable_files","a:0:{}"),
("2136","541","attribute_pa_size","size-10"),
("2137","541","attribute_pa_mau-sac","do"),
("2138","541","_price","250000"),
("2139","541","_product_version","3.4.1"),
("2140","542","_variation_description",""),
("2141","542","_sku",""),
("2142","542","_regular_price","350000"),
("2143","542","_sale_price","250000"),
("2144","542","_sale_price_dates_from",""),
("2145","542","_sale_price_dates_to",""),
("2146","542","total_sales","0"),
("2147","542","_tax_status","taxable"),
("2148","542","_tax_class","parent"),
("2149","542","_manage_stock","no"),
("2150","542","_backorders","no"),
("2151","542","_sold_individually","no"),
("2152","542","_weight",""),
("2153","542","_length",""),
("2154","542","_width",""),
("2155","542","_height",""),
("2156","542","_upsell_ids","a:0:{}"),
("2157","542","_crosssell_ids","a:0:{}"),
("2158","542","_purchase_note",""),
("2159","542","_default_attributes","a:0:{}"),
("2160","542","_virtual","no"),
("2161","542","_downloadable","no"),
("2162","542","_product_image_gallery",""),
("2163","542","_download_limit","-1"),
("2164","542","_download_expiry","-1"),
("2165","542","_stock",""),
("2166","542","_stock_status","instock"),
("2167","542","_wc_average_rating","0"),
("2168","542","_wc_rating_count","a:0:{}"),
("2169","542","_wc_review_count","0"),
("2170","542","_downloadable_files","a:0:{}"),
("2171","542","attribute_pa_size","size-11"),
("2172","542","attribute_pa_mau-sac","do"),
("2173","542","_price","250000"),
("2174","542","_product_version","3.4.1"),
("2175","543","_variation_description",""),
("2176","543","_sku",""),
("2177","543","_regular_price","350000"),
("2178","543","_sale_price","250000"),
("2179","543","_sale_price_dates_from",""),
("2180","543","_sale_price_dates_to",""),
("2181","543","total_sales","0"),
("2182","543","_tax_status","taxable"),
("2183","543","_tax_class","parent"),
("2184","543","_manage_stock","no"),
("2185","543","_backorders","no"),
("2186","543","_sold_individually","no"),
("2187","543","_weight",""),
("2188","543","_length",""),
("2189","543","_width",""),
("2190","543","_height",""),
("2191","543","_upsell_ids","a:0:{}"),
("2192","543","_crosssell_ids","a:0:{}"),
("2193","543","_purchase_note",""),
("2194","543","_default_attributes","a:0:{}"),
("2195","543","_virtual","no"),
("2196","543","_downloadable","no"),
("2197","543","_product_image_gallery",""),
("2198","543","_download_limit","-1"),
("2199","543","_download_expiry","-1"),
("2200","543","_stock",""),
("2201","543","_stock_status","instock"),
("2202","543","_wc_average_rating","0"),
("2203","543","_wc_rating_count","a:0:{}"),
("2204","543","_wc_review_count","0"),
("2205","543","_downloadable_files","a:0:{}"),
("2206","543","attribute_pa_size","size-10"),
("2207","543","attribute_pa_mau-sac","hong"),
("2208","543","_price","250000"),
("2209","543","_product_version","3.4.1"),
("2210","544","_variation_description",""),
("2211","544","_sku",""),
("2212","544","_regular_price","350000"),
("2213","544","_sale_price","250000"),
("2214","544","_sale_price_dates_from",""),
("2215","544","_sale_price_dates_to",""),
("2216","544","total_sales","0"),
("2217","544","_tax_status","taxable"),
("2218","544","_tax_class","parent"),
("2219","544","_manage_stock","no"),
("2220","544","_backorders","no"),
("2221","544","_sold_individually","no");
INSERT INTO bz_postmeta VALUES
("2222","544","_weight",""),
("2223","544","_length",""),
("2224","544","_width",""),
("2225","544","_height",""),
("2226","544","_upsell_ids","a:0:{}"),
("2227","544","_crosssell_ids","a:0:{}"),
("2228","544","_purchase_note",""),
("2229","544","_default_attributes","a:0:{}"),
("2230","544","_virtual","no"),
("2231","544","_downloadable","no"),
("2232","544","_product_image_gallery",""),
("2233","544","_download_limit","-1"),
("2234","544","_download_expiry","-1"),
("2235","544","_stock",""),
("2236","544","_stock_status","instock"),
("2237","544","_wc_average_rating","0"),
("2238","544","_wc_rating_count","a:0:{}"),
("2239","544","_wc_review_count","0"),
("2240","544","_downloadable_files","a:0:{}"),
("2241","544","attribute_pa_size","size-11"),
("2242","544","attribute_pa_mau-sac","hong"),
("2243","544","_price","250000"),
("2244","544","_product_version","3.4.1"),
("2248","167","_price","250000"),
("2249","160","_product_attributes","a:2:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("2250","545","_variation_description",""),
("2251","545","_sku",""),
("2252","545","_regular_price","230000"),
("2253","545","_sale_price","210000"),
("2254","545","_sale_price_dates_from",""),
("2255","545","_sale_price_dates_to",""),
("2256","545","total_sales","0"),
("2257","545","_tax_status","taxable"),
("2258","545","_tax_class","parent"),
("2259","545","_manage_stock","no"),
("2260","545","_backorders","no"),
("2261","545","_sold_individually","no"),
("2262","545","_weight",""),
("2263","545","_length",""),
("2264","545","_width",""),
("2265","545","_height",""),
("2266","545","_upsell_ids","a:0:{}"),
("2267","545","_crosssell_ids","a:0:{}"),
("2268","545","_purchase_note",""),
("2269","545","_default_attributes","a:0:{}"),
("2270","545","_virtual","no"),
("2271","545","_downloadable","no"),
("2272","545","_product_image_gallery",""),
("2273","545","_download_limit","-1"),
("2274","545","_download_expiry","-1"),
("2275","545","_stock",""),
("2276","545","_stock_status","instock"),
("2277","545","_wc_average_rating","0"),
("2278","545","_wc_rating_count","a:0:{}"),
("2279","545","_wc_review_count","0"),
("2280","545","_downloadable_files","a:0:{}"),
("2281","545","attribute_pa_size","size-11"),
("2282","545","attribute_pa_mau-sac","do"),
("2283","545","_price","210000"),
("2284","545","_product_version","3.4.1"),
("2285","546","_variation_description",""),
("2286","546","_sku",""),
("2287","546","_regular_price","230000"),
("2288","546","_sale_price","210000"),
("2289","546","_sale_price_dates_from",""),
("2290","546","_sale_price_dates_to",""),
("2291","546","total_sales","0"),
("2292","546","_tax_status","taxable"),
("2293","546","_tax_class","parent"),
("2294","546","_manage_stock","no"),
("2295","546","_backorders","no"),
("2296","546","_sold_individually","no"),
("2297","546","_weight",""),
("2298","546","_length",""),
("2299","546","_width",""),
("2300","546","_height",""),
("2301","546","_upsell_ids","a:0:{}"),
("2302","546","_crosssell_ids","a:0:{}"),
("2303","546","_purchase_note",""),
("2304","546","_default_attributes","a:0:{}"),
("2305","546","_virtual","no"),
("2306","546","_downloadable","no"),
("2307","546","_product_image_gallery",""),
("2308","546","_download_limit","-1"),
("2309","546","_download_expiry","-1"),
("2310","546","_stock",""),
("2311","546","_stock_status","instock"),
("2312","546","_wc_average_rating","0"),
("2313","546","_wc_rating_count","a:0:{}"),
("2314","546","_wc_review_count","0"),
("2315","546","_downloadable_files","a:0:{}"),
("2316","546","attribute_pa_size","size-12"),
("2317","546","attribute_pa_mau-sac","do"),
("2318","546","_price","210000"),
("2319","546","_product_version","3.4.1"),
("2320","547","_variation_description",""),
("2321","547","_sku",""),
("2322","547","_regular_price","230000"),
("2323","547","_sale_price","210000"),
("2324","547","_sale_price_dates_from","");
INSERT INTO bz_postmeta VALUES
("2325","547","_sale_price_dates_to",""),
("2326","547","total_sales","0"),
("2327","547","_tax_status","taxable"),
("2328","547","_tax_class","parent"),
("2329","547","_manage_stock","no"),
("2330","547","_backorders","no"),
("2331","547","_sold_individually","no"),
("2332","547","_weight",""),
("2333","547","_length",""),
("2334","547","_width",""),
("2335","547","_height",""),
("2336","547","_upsell_ids","a:0:{}"),
("2337","547","_crosssell_ids","a:0:{}"),
("2338","547","_purchase_note",""),
("2339","547","_default_attributes","a:0:{}"),
("2340","547","_virtual","no"),
("2341","547","_downloadable","no"),
("2342","547","_product_image_gallery",""),
("2343","547","_download_limit","-1"),
("2344","547","_download_expiry","-1"),
("2345","547","_stock",""),
("2346","547","_stock_status","instock"),
("2347","547","_wc_average_rating","0"),
("2348","547","_wc_rating_count","a:0:{}"),
("2349","547","_wc_review_count","0"),
("2350","547","_downloadable_files","a:0:{}"),
("2351","547","attribute_pa_size","size-11"),
("2352","547","attribute_pa_mau-sac","trang"),
("2353","547","_price","210000"),
("2354","547","_product_version","3.4.1"),
("2355","548","_variation_description",""),
("2356","548","_sku",""),
("2357","548","_regular_price","230000"),
("2358","548","_sale_price","210000"),
("2359","548","_sale_price_dates_from",""),
("2360","548","_sale_price_dates_to",""),
("2361","548","total_sales","0"),
("2362","548","_tax_status","taxable"),
("2363","548","_tax_class","parent"),
("2364","548","_manage_stock","no"),
("2365","548","_backorders","no"),
("2366","548","_sold_individually","no"),
("2367","548","_weight",""),
("2368","548","_length",""),
("2369","548","_width",""),
("2370","548","_height",""),
("2371","548","_upsell_ids","a:0:{}"),
("2372","548","_crosssell_ids","a:0:{}"),
("2373","548","_purchase_note",""),
("2374","548","_default_attributes","a:0:{}"),
("2375","548","_virtual","no"),
("2376","548","_downloadable","no"),
("2377","548","_product_image_gallery",""),
("2378","548","_download_limit","-1"),
("2379","548","_download_expiry","-1"),
("2380","548","_stock",""),
("2381","548","_stock_status","instock"),
("2382","548","_wc_average_rating","0"),
("2383","548","_wc_rating_count","a:0:{}"),
("2384","548","_wc_review_count","0"),
("2385","548","_downloadable_files","a:0:{}"),
("2386","548","attribute_pa_size","size-12"),
("2387","548","attribute_pa_mau-sac","trang"),
("2388","548","_price","210000"),
("2389","548","_product_version","3.4.1"),
("2393","160","_price","210000"),
("2394","169","_product_attributes","a:2:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("2395","549","_variation_description",""),
("2396","549","_sku",""),
("2397","549","_regular_price","350000"),
("2398","549","_sale_price","150000"),
("2399","549","_sale_price_dates_from",""),
("2400","549","_sale_price_dates_to",""),
("2401","549","total_sales","0"),
("2402","549","_tax_status","taxable"),
("2403","549","_tax_class","parent"),
("2404","549","_manage_stock","no"),
("2405","549","_backorders","no"),
("2406","549","_sold_individually","no"),
("2407","549","_weight",""),
("2408","549","_length",""),
("2409","549","_width",""),
("2410","549","_height",""),
("2411","549","_upsell_ids","a:0:{}"),
("2412","549","_crosssell_ids","a:0:{}"),
("2413","549","_purchase_note",""),
("2414","549","_default_attributes","a:0:{}"),
("2415","549","_virtual","no"),
("2416","549","_downloadable","no"),
("2417","549","_product_image_gallery",""),
("2418","549","_download_limit","-1"),
("2419","549","_download_expiry","-1"),
("2420","549","_stock",""),
("2421","549","_stock_status","instock"),
("2422","549","_wc_average_rating","0"),
("2423","549","_wc_rating_count","a:0:{}"),
("2424","549","_wc_review_count","0"),
("2425","549","_downloadable_files","a:0:{}"),
("2426","549","attribute_pa_size","size-13"),
("2427","549","attribute_pa_mau-sac","den");
INSERT INTO bz_postmeta VALUES
("2428","549","_price","150000"),
("2429","549","_product_version","3.4.1"),
("2433","169","_price","150000"),
("2434","156","_product_attributes","a:2:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}"),
("2435","550","_variation_description",""),
("2436","550","_sku",""),
("2437","550","_regular_price","260000"),
("2438","550","_sale_price","200000"),
("2439","550","_sale_price_dates_from",""),
("2440","550","_sale_price_dates_to",""),
("2441","550","total_sales","0"),
("2442","550","_tax_status","taxable"),
("2443","550","_tax_class","parent"),
("2444","550","_manage_stock","no"),
("2445","550","_backorders","no"),
("2446","550","_sold_individually","no"),
("2447","550","_weight",""),
("2448","550","_length",""),
("2449","550","_width",""),
("2450","550","_height",""),
("2451","550","_upsell_ids","a:0:{}"),
("2452","550","_crosssell_ids","a:0:{}"),
("2453","550","_purchase_note",""),
("2454","550","_default_attributes","a:0:{}"),
("2455","550","_virtual","no"),
("2456","550","_downloadable","no"),
("2457","550","_product_image_gallery",""),
("2458","550","_download_limit","-1"),
("2459","550","_download_expiry","-1"),
("2460","550","_stock",""),
("2461","550","_stock_status","instock"),
("2462","550","_wc_average_rating","0"),
("2463","550","_wc_rating_count","a:0:{}"),
("2464","550","_wc_review_count","0"),
("2465","550","_downloadable_files","a:0:{}"),
("2466","550","attribute_pa_mau-sac","xam"),
("2467","550","attribute_pa_size","size-1"),
("2468","550","_price","200000"),
("2469","550","_product_version","3.4.1"),
("2473","156","_price","200000"),
("2520","69","_thumbnail_id",""),
("2523","578","_wp_attached_file","2018/08/icon1.png"),
("2524","578","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:17:\"2018/08/icon1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2525","579","_wp_attached_file","2018/08/icon3.png"),
("2526","579","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:17:\"2018/08/icon3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2527","581","_wp_attached_file","2018/08/icon-2.png"),
("2528","581","_wp_attachment_metadata","a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:18:\"2018/08/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2557","600","_wp_attached_file","2018/08/icon-nhan-bao-gia.jpg"),
("2558","600","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:29:\"2018/08/icon-nhan-bao-gia.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2559","602","_wp_attached_file","2018/08/icon-thanh-toan.png"),
("2560","602","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:27:\"2018/08/icon-thanh-toan.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2561","604","_wp_attached_file","2018/08/icon-diachi.png"),
("2562","604","_wp_attachment_metadata","a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:23:\"2018/08/icon-diachi.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2563","606","_wp_attached_file","2018/08/icon-phone.png"),
("2564","606","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:22:\"2018/08/icon-phone.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2573","612","_menu_item_type","custom"),
("2574","612","_menu_item_menu_item_parent","0"),
("2575","612","_menu_item_object_id","612"),
("2576","612","_menu_item_object","custom"),
("2577","612","_menu_item_target",""),
("2578","612","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2579","612","_menu_item_xfn",""),
("2580","612","_menu_item_url","/danh-muc/tranh-go/"),
("2582","613","_menu_item_type","custom"),
("2583","613","_menu_item_menu_item_parent","0"),
("2584","613","_menu_item_object_id","613"),
("2585","613","_menu_item_object","custom"),
("2586","613","_menu_item_target",""),
("2587","613","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2588","613","_menu_item_xfn",""),
("2589","613","_menu_item_url","/danh-muc/tranh-ca-chep/"),
("2591","614","_menu_item_type","custom"),
("2592","614","_menu_item_menu_item_parent","0"),
("2593","614","_menu_item_object_id","614"),
("2594","614","_menu_item_object","custom"),
("2595","614","_menu_item_target",""),
("2596","614","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2597","614","_menu_item_xfn",""),
("2598","614","_menu_item_url","/danh-muc/tranh-chu/"),
("2600","615","_menu_item_type","custom"),
("2601","615","_menu_item_menu_item_parent","0"),
("2602","615","_menu_item_object_id","615"),
("2603","615","_menu_item_object","custom"),
("2604","615","_menu_item_target",""),
("2605","615","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2606","615","_menu_item_xfn",""),
("2607","615","_menu_item_url","/danh-muc/tranh-dong-ho/"),
("2609","616","_menu_item_type","custom"),
("2610","616","_menu_item_menu_item_parent","0"),
("2611","616","_menu_item_object_id","616"),
("2612","616","_menu_item_object","custom"),
("2613","616","_menu_item_target",""),
("2614","616","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2615","616","_menu_item_xfn",""),
("2616","616","_menu_item_url","/danh-muc/tranh-thu-phap/"),
("2618","617","_menu_item_type","custom"),
("2619","617","_menu_item_menu_item_parent","0"),
("2620","617","_menu_item_object_id","617"),
("2621","617","_menu_item_object","custom"),
("2622","617","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("2623","617","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2624","617","_menu_item_xfn",""),
("2625","617","_menu_item_url","/danh-muc/tranh-tu-linh/"),
("2627","618","_menu_item_type","custom"),
("2628","618","_menu_item_menu_item_parent","0"),
("2629","618","_menu_item_object_id","618"),
("2630","618","_menu_item_object","custom"),
("2631","618","_menu_item_target",""),
("2632","618","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2633","618","_menu_item_xfn",""),
("2634","618","_menu_item_url","/danh-muc/tranh-tu-quy/"),
("2651","629","_wp_attached_file","2018/08/slider5.jpg"),
("2652","629","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:315;s:4:\"file\";s:19:\"2018/08/slider5.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider5-300x69.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider5-768x177.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider5-1024x236.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider5-598x315.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider5-600x138.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider5-598x315.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider5-600x138.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2653","631","_wp_attached_file","2018/08/slider3.jpg"),
("2654","631","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:315;s:4:\"file\";s:19:\"2018/08/slider3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x69.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x177.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x236.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider3-598x315.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x138.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider3-598x315.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x138.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2655","634","_wp_attached_file","2018/08/logo.png"),
("2656","634","_wp_attachment_metadata","a:5:{s:5:\"width\";i:157;s:6:\"height\";i:35;s:4:\"file\";s:16:\"2018/08/logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x35.png\";s:5:\"width\";i:150;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x35.png\";s:5:\"width\";i:100;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x35.png\";s:5:\"width\";i:100;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2678","645","_wp_attached_file","2018/06/product-1.jpg"),
("2679","645","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:599;s:4:\"file\";s:21:\"2018/06/product-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"product-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"product-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"product-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"product-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"product-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"product-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2680","199","_wp_old_slug","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai"),
("2681","646","_wp_attached_file","2018/06/product2-1.jpg"),
("2682","646","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:599;s:4:\"file\";s:22:\"2018/06/product2-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"product2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"product2-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"product2-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"product2-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"product2-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2683","169","_wp_old_slug","ao-thun-meo-phoi-no-quan-jeans-gia-vay-de-thuong"),
("2684","647","_wp_attached_file","2018/06/product3-1.jpg"),
("2685","647","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:22:\"2018/06/product3-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"product3-1-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"product3-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"product3-1-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"product3-1-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"product3-1-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2686","167","_wp_old_slug","quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai"),
("2687","649","_wp_attached_file","2018/06/product4.jpg"),
("2688","649","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:20:\"2018/06/product4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product4-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product4-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"product4-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product4-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"product4-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2689","160","_wp_old_slug","quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai"),
("2690","651","_wp_attached_file","2018/06/product7.jpg"),
("2691","651","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:20:\"2018/06/product7.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product7-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product7-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"product7-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product7-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"product7-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2692","156","_wp_old_slug","bo-croptop-sieu-sanh-dieu-cho-be-gai-1-8-tuoi"),
("2693","653","_wp_attached_file","2018/06/product8.jpg"),
("2694","653","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:20:\"2018/06/product8.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product8-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product8-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"product8-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product8-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"product8-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2695","150","_wp_old_slug","bo-do-boi-2-day-lien-vay-cho-be-gai"),
("2696","655","_wp_attached_file","2018/06/product0.jpg"),
("2697","655","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:20:\"2018/06/product0.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"product0-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"product0-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"product0-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"product0-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"product0-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2698","152","_wp_old_slug","do-boi-lien-quan-cho-be-trai-hinh-spiderman-2"),
("2699","657","_wp_attached_file","2018/06/product-10.jpg"),
("2700","657","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:22:\"2018/06/product-10.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"product-10-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"product-10-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"product-10-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"product-10-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"product-10-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2701","154","_wp_old_slug","dam-voan-hoa-co-yem-sieu-de-thuong"),
("2702","659","_wp_attached_file","2018/06/ahz1478227187.jpg"),
("2703","659","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2018/06/ahz1478227187.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"ahz1478227187-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"ahz1478227187-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2704","201","_wp_old_slug","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai"),
("2705","660","_wp_attached_file","2018/06/tuonggo352.jpg"),
("2706","660","_wp_attachment_metadata","a:5:{s:5:\"width\";i:720;s:6:\"height\";i:732;s:4:\"file\";s:22:\"2018/06/tuonggo352.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tuonggo352-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tuonggo352-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"tuonggo352-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"tuonggo352-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"tuonggo352-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"tuonggo352-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"tuonggo352-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"tuonggo352-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2707","121","_wp_old_slug","do-boi-lien-quan-cho-be-trai-hinh-spiderman"),
("2708","661","_wp_attached_file","2018/08/banner2.jpg"),
("2709","661","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/08/banner2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner2-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2710","664","_wp_attached_file","2018/08/BANNER6.jpg"),
("2711","664","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/08/BANNER6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"BANNER6-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2720","671","_wp_attached_file","2018/08/banner8.jpg"),
("2721","671","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/08/banner8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner8-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2722","673","_wp_attached_file","2018/08/SFSD.jpg"),
("2723","673","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:16:\"2018/08/SFSD.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"SFSD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"SFSD-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"SFSD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"SFSD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2724","676","_wp_attached_file","2018/08/thong-bao-bo-cong-thuong.png"),
("2725","676","_wp_attachment_metadata","a:5:{s:5:\"width\";i:148;s:6:\"height\";i:58;s:4:\"file\";s:36:\"2018/08/thong-bao-bo-cong-thuong.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"thong-bao-bo-cong-thuong-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"thong-bao-bo-cong-thuong-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2755","692","_edit_last","1"),
("2756","692","_edit_lock","1533882517:1"),
("2757","693","_wp_attached_file","2018/08/Giuseart.com-Vector-cô-dâu-chú-rể.jpg"),
("2758","693","_wp_attachment_metadata","a:5:{s:5:\"width\";i:776;s:6:\"height\";i:448;s:4:\"file\";s:50:\"2018/08/Giuseart.com-Vector-cô-dâu-chú-rể.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-768x443.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-598x448.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-600x346.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-598x448.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-600x346.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Giuseart.com-Vector-cô-dâu-chú-rể-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2759","692","_thumbnail_id","693"),
("2761","695","_edit_last","1"),
("2762","695","_edit_lock","1533882940:1"),
("2763","696","_wp_attached_file","2018/08/Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi.jpg"),
("2764","696","_wp_attachment_metadata","a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:71:\"2018/08/Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:71:\"Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2765","695","_thumbnail_id","696"),
("2767","699","_wp_attached_file","2018/08/Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII.jpg"),
("2768","699","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:452;s:4:\"file\";s:95:\"2018/08/Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-768x434.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-598x452.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-600x339.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-598x452.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-600x339.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:95:\"Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("2769","698","_edit_last","1"),
("2770","698","_thumbnail_id","699"),
("2772","698","_edit_lock","1533882635:1"),
("2773","701","_edit_last","1"),
("2774","701","_edit_lock","1533882684:1"),
("2775","702","_wp_attached_file","2018/08/Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI.jpg"),
("2776","702","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:540;s:4:\"file\";s:87:\"2018/08/Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-598x540.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-600x405.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-598x540.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-600x405.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2777","701","_thumbnail_id","702"),
("2868","755","_wp_attached_file","2018/10/favi.png"),
("2869","755","_wp_attachment_metadata","a:5:{s:5:\"width\";i:192;s:6:\"height\";i:192;s:4:\"file\";s:16:\"2018/10/favi.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"favi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"favi-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"favi-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2872","757","_wp_attached_file","woocommerce-placeholder.png"),
("2873","757","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2018-06-02 14:36:34","2018-06-02 14:36:34","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2018-06-02 14:36:34","2018-06-02 14:36:34","","0","https://bizhostvn.com/w/tranhgo/?p=1","0","post","","1"),
("2","1","2018-06-02 14:36:34","2018-06-02 14:36:34","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"629\" image_size=\"original\" height=\"22%\"]\n\n[ux_image id=\"631\" image_size=\"original\" height=\"22%\"]\n\n\n[/ux_slider]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"661\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"664\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tranh thư pháp\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Tranh thư pháp\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Tranh gia đình\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Tranh gia đình\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm khuyến mại\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Sản phẩm khuyến mại\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc-section\" bg_color=\"rgb(255, 254, 234)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN TỨC - BÀI VIẾT\" color=\"rgb(113, 65, 7)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" posts=\"4\" show_date=\"false\" comments=\"false\" image_height=\"71%\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-08-10 14:02:03","2018-08-10 07:02:03","","0","https://bizhostvn.com/w/tranhgo/?page_id=2","0","page","","0"),
("3","1","2018-06-02 14:36:34","2018-06-02 14:36:34","<h2>Who we are</h2><p>Our website address is: https://bizhostvn.com/w/tranhgo.</p><h2>What personal data we collect and why we collect it</h2><h3>Bình luận</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Thư viện</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>","Privacy Policy","","draft","closed","open","","privacy-policy","","","2018-06-02 14:36:34","2018-06-02 14:36:34","","0","https://bizhostvn.com/w/tranhgo/?page_id=3","0","page","","0"),
("14","1","2018-06-02 21:59:54","2018-06-02 14:59:54","","123-01","","inherit","open","closed","","123-01","","","2018-06-02 21:59:54","2018-06-02 14:59:54","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/123-01.png","0","attachment","image/png","0"),
("15","1","2018-06-02 21:59:56","2018-06-02 14:59:56","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/cropped-123-01.png","cropped-123-01.png","","inherit","open","closed","","cropped-123-01-png","","","2018-06-02 21:59:56","2018-06-02 14:59:56","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/cropped-123-01.png","0","attachment","image/png","0"),
("40","1","2018-06-02 22:17:31","2018-06-02 15:17:31","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://bizhostvn.com/w/tranhgo/cua-hang/","0","page","","0"),
("41","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://bizhostvn.com/w/tranhgo/gio-hang/","0","page","","0"),
("42","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://bizhostvn.com/w/tranhgo/thanh-toan/","0","page","","0"),
("43","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://bizhostvn.com/w/tranhgo/tai-khoan/","0","page","","0"),
("60","1","2018-06-02 22:32:22","2018-06-02 15:32:22"," ","","","publish","closed","closed","","60","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=60","1","nav_menu_item","","0"),
("67","1","2018-06-02 22:34:05","2018-06-02 15:34:05","","Hàng mới về","","publish","closed","closed","","hang-moi-ve","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=67","10","nav_menu_item","","0"),
("69","1","2018-06-02 22:35:35","2018-06-02 15:35:35","[section label=\"after-header-main\" class=\"after-header-main\" bg_color=\"rgb(158, 73, 13)\" padding=\"4px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"606\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"color: #ffff00; font-size: 95%;\"><span style=\"color: #efc7ac;\">Hỗ trợ đặt hàng:</span> <span style=\"color: #fff0a7;\">0909009009</span></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"604\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"color: #efc7ac; font-size: 95%;\">Xem hàng tại: Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"602\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\n<p><span style=\"color: #efc7ac; font-size: 95%;\">Hướng dẫn thanh toán</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]","After Header Main","","publish","closed","closed","","after-header-main","","","2018-08-10 09:09:44","2018-08-10 02:09:44","","0","https://bizhostvn.com/w/tranhgo/?post_type=blocks&#038;p=69","0","blocks","","0"),
("121","1","2018-06-02 23:16:01","2018-06-02 16:16:01","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Tranh nhất long gỗ mun hoa 130x70x8cm","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","tranh-nhat-long-go-mun-hoa","","","2018-08-10 11:03:07","2018-08-10 04:03:07","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=121","0","product","","0"),
("150","1","2018-06-02 23:35:40","2018-06-02 16:35:40","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Tranh phù dung công gỗ hương loại to 127x81x50cm","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","tranh-phu-dung-cong-go-huong-loai-to","","","2018-08-10 10:54:06","2018-08-10 03:54:06","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=150","0","product","","0"),
("152","1","2018-06-02 23:36:52","2018-06-02 16:36:52","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Tranh tứ quý gỗ hương dát vàng 86x145x5cm","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","tranh-tu-quy-go-huong-dat-vang","","","2018-08-10 10:55:57","2018-08-10 03:55:57","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=152","0","product","","0"),
("154","1","2018-06-02 23:37:58","2018-06-02 16:37:58","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Khánh tứ linh gỗ mun hoa 50x58x3cm","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","khanh-tu-linh-go-mun-hoa","","","2018-08-10 10:57:35","2018-08-10 03:57:35","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=154","0","product","","0"),
("156","1","2018-06-02 23:39:22","2018-06-02 16:39:22","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Tranh cá chép Lý Ngư Vọng Nguyệt gỗ hương 110x40cm","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","tranh-ca-chep-ly-ngu-vong-nguyet-go-huong","","","2018-08-10 10:51:45","2018-08-10 03:51:45","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=156","0","product","","0"),
("160","1","2018-06-02 23:43:17","2018-06-02 16:43:17","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Đĩa tứ linh gỗ mun hoa đục tinh xảo 50x40x3.5cm","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","dia-tu-linh-go-mun-hoa-duc-tinh-xao","","","2018-08-10 10:48:56","2018-08-10 03:48:56","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=160","0","product","","0"),
("167","1","2018-06-02 23:48:21","2018-06-02 16:48:21","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","dia-tu-linh-go-mun-hoa-loai-nh0","","","2018-08-10 10:47:12","2018-08-10 03:47:12","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=167","0","product","","0"),
("169","1","2018-06-02 23:49:15","2018-06-02 16:49:15","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 76x60x5.5cm","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","dia-tu-linh-duc-kenh-bong-go-huong-lien-tam-2","","","2018-08-10 10:45:12","2018-08-10 03:45:12","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=169","0","product","","0"),
("199","1","2018-06-03 00:02:18","2018-06-02 17:02:18","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","dia-tu-linh-duc-kenh-bong-go-huong-lien-tam","","","2018-08-10 10:43:20","2018-08-10 03:43:20","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=199","0","product","","0"),
("201","1","2018-06-03 00:03:26","2018-06-02 17:03:26","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Tranh Thư Pháp Quê Hương gỗ hương 40x88x3","Set áo nhún bèo xoè may túi trước quần bí caro cực iu cho bé ngày hè. Áo chất vải linen mềm mát, thoáng thích hợp ngày hè, eo nhún bèo kèm túi kiểu cực iu, phía sau cột dây cổ. quần bí caro chất kate mềm mại, bo thun.","publish","open","closed","","tranh-thu-phap-que-huong-go-huong","","","2018-08-10 11:01:25","2018-08-10 04:01:25","","0","https://bizhostvn.com/w/tranhgo/?post_type=product&#038;p=201","0","product","","0"),
("224","1","2018-06-03 00:15:10","2018-06-02 17:15:10","[section class=\"footer-section\" bg_color=\"rgb(130, 57, 5)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: 0909009009</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: 0909009009</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Hotline: 0909009009</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #fffad9; font-size: 85%;\">Tranhgo.com.vn là shop bán tranh gỗ uy tín và chất lượng tốt nhất tại Việt Nam</span></p>\n<p><span style=\"color: #fffad9; font-size: 85%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tạ shop tranh gỗ của chúng tôi.</span></p>\n<p><span style=\"color: #fffad9; font-size: 85%;\">Chọn mua ngay để nhận những ưu đãi tốt nhất hoặc liên hệ hotline: 0909009009.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><a href=\"https://giuseart.com/about-us/\"><span style=\"font-size: 85%;\">Bạn Cần Biết</span></a></li>\n<li><a href=\"/huong-dan-thanh-toan/\"><span style=\"font-size: 85%;\">Phương thức thanh toán</span></a></li>\n<li><a href=\"/phuong-thuc-van-chuyen/\"><span style=\"font-size: 85%;\">Phương thức vận chuyển</span></a></li>\n<li><a href=\"/huong-dan-mua-hang/\"><span style=\"font-size: 85%;\"> Hướng dẫn mua hàng</span></a></li>\n<li><a href=\"https://bizhostvn.com/w/tranhgo/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Xuất xứ sản phẩm</span></a></li>\n<li><a href=\"/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Địa chỉ shop quần áo trẻ em Babi</span></a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"676\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","publish","closed","closed","","footer-section","","","2018-08-10 11:49:14","2018-08-10 04:49:14","","0","https://bizhostvn.com/w/tranhgo/?post_type=blocks&#038;p=224","0","blocks","","0"),
("244","1","2018-06-03 00:21:33","2018-06-02 17:21:33","","sp-dich-vu-vang","","inherit","open","closed","","sp-dich-vu-vang","","","2018-06-03 00:21:33","2018-06-02 17:21:33","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/sp-dich-vu-vang.png","0","attachment","image/png","0"),
("272","1","2018-06-03 12:11:05","2018-06-03 05:11:05","[section class=\"row1\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n<p>[ux_product_breadcrumbs]</p>\n<pre data-initialized=\"true\" data-gclp-id=\"7\">[ux_product_title]</pre>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_product_gallery]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Custom Product Page","","publish","closed","closed","","custom-product-page","","","2018-06-03 12:17:55","2018-06-03 05:17:55","","0","https://bizhostvn.com/w/tranhgo/?post_type=blocks&#038;p=272","0","blocks","","0"),
("325","1","2018-06-03 12:45:14","2018-06-03 05:45:14","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","1","product_variation","","0"),
("326","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-2","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","2","product_variation","","0"),
("327","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-3","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","3","product_variation","","0"),
("328","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-4","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","4","product_variation","","0"),
("329","1","2018-06-03 12:45:17","2018-06-03 05:45:17","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-5","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","5","product_variation","","0"),
("330","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-6","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","6","product_variation","","0"),
("331","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-7","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","7","product_variation","","0"),
("332","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-8","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","8","product_variation","","0"),
("333","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 90x70x7cm","","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-9","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://bizhostvn.com/w/tranhgo/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","9","product_variation","","0"),
("400","1","2018-06-03 16:56:09","2018-06-03 09:56:09","","Tranh Thư Pháp Quê Hương gỗ hương 40x88x3","","publish","closed","closed","","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai","","","2018-06-03 16:56:47","2018-06-03 09:56:47","","201","https://bizhostvn.com/w/tranhgo/san-pham/set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai/","2","product_variation","","0"),
("401","1","2018-06-03 16:56:09","2018-06-03 09:56:09","","Tranh Thư Pháp Quê Hương gỗ hương 40x88x3","","publish","closed","closed","","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai-2","","","2018-06-03 16:56:47","2018-06-03 09:56:47","","201","https://bizhostvn.com/w/tranhgo/san-pham/set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai/","3","product_variation","","0"),
("411","1","2018-06-03 17:06:30","2018-06-03 10:06:30","","Sản phẩm","","publish","closed","closed","","san-pham","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=411","2","nav_menu_item","","0"),
("430","1","2018-06-03 17:32:15","2018-06-03 10:32:15","[row style=\"small\" class=\"lien-he-button\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Hotline: 0909009009\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" icon=\"icon-phone\" icon_pos=\"left\" link=\"tel:0909009009\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Chat Facebook\" letter_case=\"lowercase\" color=\"success\" radius=\"4\" expand=\"true\" icon=\"icon-facebook\" icon_pos=\"left\" link=\"https://messenger.com/t/joseph.thien.75\" target=\"_blank\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Bản đồ\" letter_case=\"lowercase\" color=\"alert\" radius=\"4\" expand=\"true\" icon=\"icon-map-pin-fill\" icon_pos=\"left\" link=\"https://messenger.com/t/joseph.thien.75\" target=\"_blank\"]\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2018-06-03 17:35:51","2018-06-03 10:35:51","","0","https://bizhostvn.com/w/tranhgo/?post_type=blocks&#038;p=430","0","blocks","","0"),
("503","1","2018-06-03 21:45:58","2018-06-03 14:45:58","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n<h3 style=\"text-align: center;\">Bé xinh shop - Shop quần áo trẻ em TPHCM</h3>\nCửa hàng quần áo trẻ em Bé xinh là một trong những kênh mua sắm thời trang trẻ em online đã và đang được rất nhiều ông bố, bà mẹ quan tâm, tin tưởng nhất hiện nay. Bởi khi mua sắm tại Bé xinh shop, quý khách không chỉ tiết kiệm được rất nhiều thời gian mà có thể  dễ dàng tìm thấy cho bé đủ các loại quần áo thời trang, phụ kiện chất lượng cao từ sơ sinh đến 15 tuổi dành cho cả bé trai lẫn bé gái.\n\n<strong>Bé xinh shop Cam kết</strong>:\n- Cung cấp các sản phẩm – dịch vụ chất lượng tốt nhất, giá cạnh tranh, dễ mua với dịch vụ chu đáo và thân thiện.\n- Được đổi, trả hàng trong vòng 3 ngày với bất kỳ lý do gì. (Xem chi tiết tại <u><strong>Chính sách đổi – trả hàng</strong></u>).\n- Đội ngũ nhân viên tư vấn nhiệt tình và thân thiện.\n<ul>\n 	<li><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</li>\n 	<li><strong>Điện thoại:</strong> 0972939840</li>\n 	<li><strong>Email:</strong> giuselethien@gmail.com</li>\n 	<li><strong>Website:</strong> <a href=\"https://giuseart.com\">www.giuseart.com</a> | <a href=\"http://ninhbinhweb.com\">www.ninhbinhweb.com</a></li>\n</ul>\n[/col]\n\n[/row]\n\n[/section]","Hướng dẫn thanh toán","","publish","closed","closed","","huong-dan-thanh-toan","","","2018-06-03 21:50:59","2018-06-03 14:50:59","","0","https://bizhostvn.com/w/tranhgo/?page_id=503","0","page","","0"),
("514","1","2018-06-03 21:51:19","2018-06-03 14:51:19","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n<h3 style=\"text-align: center;\">Bé xinh shop - Shop quần áo trẻ em TPHCM</h3>\nCửa hàng quần áo trẻ em Bé xinh là một trong những kênh mua sắm thời trang trẻ em online đã và đang được rất nhiều ông bố, bà mẹ quan tâm, tin tưởng nhất hiện nay. Bởi khi mua sắm tại Bé xinh shop, quý khách không chỉ tiết kiệm được rất nhiều thời gian mà có thể  dễ dàng tìm thấy cho bé đủ các loại quần áo thời trang, phụ kiện chất lượng cao từ sơ sinh đến 15 tuổi dành cho cả bé trai lẫn bé gái.\n\n<strong>Bé xinh shop Cam kết</strong>:\n- Cung cấp các sản phẩm – dịch vụ chất lượng tốt nhất, giá cạnh tranh, dễ mua với dịch vụ chu đáo và thân thiện.\n- Được đổi, trả hàng trong vòng 3 ngày với bất kỳ lý do gì. (Xem chi tiết tại <u><strong>Chính sách đổi – trả hàng</strong></u>).\n- Đội ngũ nhân viên tư vấn nhiệt tình và thân thiện.\n<ul>\n 	<li><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</li>\n 	<li><strong>Điện thoại:</strong> 0972939840</li>\n 	<li><strong>Email:</strong> giuselethien@gmail.com</li>\n 	<li><strong>Website:</strong> <a href=\"https://giuseart.com\">www.giuseart.com</a> | <a href=\"http://ninhbinhweb.com\">www.ninhbinhweb.com</a></li>\n</ul>\n[/col]\n\n[/row]\n\n[/section]","Phương thức vận chuyển","","publish","closed","closed","","phuong-thuc-van-chuyen","","","2018-06-03 21:51:19","2018-06-03 14:51:19","","0","https://bizhostvn.com/w/tranhgo/?page_id=514","0","page","","0"),
("516","1","2018-06-03 21:52:34","2018-06-03 14:52:34","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n\nXin chào bạn – độc giả của <a href=\"https://giuseart.com/\">Giuseart.com</a>,\n\nLời đầu tiên, cho phép GiuseArt được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://giuseart.com/\">Giuseart.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, GiuseArt đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, GiuseArt chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho GiuseArt trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin\n\n[/col]\n\n[/row]\n\n[/section]","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2018-06-03 21:53:23","2018-06-03 14:53:23","","0","https://bizhostvn.com/w/tranhgo/?page_id=516","0","page","","0"),
("521","1","2018-06-03 21:54:04","2018-06-03 14:54:04","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n\nXin chào bạn – độc giả của <a href=\"https://giuseart.com/\">Giuseart.com</a>,\n\nLời đầu tiên, cho phép GiuseArt được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://giuseart.com/\">Giuseart.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, GiuseArt đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, GiuseArt chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho GiuseArt trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin\n\n[/col]\n\n[/row]\n\n[/section]","Xuất xứ sản phẩm","","publish","closed","closed","","xuat-xu-san-pham","","","2018-06-03 21:54:23","2018-06-03 14:54:23","","0","https://bizhostvn.com/w/tranhgo/?page_id=521","0","page","","0"),
("530","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","1","product_variation","","0"),
("531","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-2","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","2","product_variation","","0"),
("532","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-3","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","3","product_variation","","0"),
("533","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-4","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","4","product_variation","","0"),
("534","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-5","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","5","product_variation","","0"),
("535","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-6","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","6","product_variation","","0"),
("536","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-7","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","7","product_variation","","0"),
("537","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-8","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","8","product_variation","","0"),
("538","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Khánh tứ linh gỗ mun hoa 50x58x3cm","","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-9","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://bizhostvn.com/w/tranhgo/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","9","product_variation","","0"),
("539","1","2018-06-03 23:11:17","2018-06-03 16:11:17","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","1","product_variation","","0"),
("540","1","2018-06-03 23:11:17","2018-06-03 16:11:17","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-2","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","2","product_variation","","0"),
("541","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-3","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","3","product_variation","","0"),
("542","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-4","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","4","product_variation","","0"),
("543","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-5","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","5","product_variation","","0"),
("544","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Đĩa tứ linh gỗ mun hoa loại nhỏ 43x37x3cm","","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-6","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://bizhostvn.com/w/tranhgo/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","6","product_variation","","0"),
("545","1","2018-06-03 23:13:55","2018-06-03 16:13:55","","Đĩa tứ linh gỗ mun hoa đục tinh xảo 50x40x3.5cm","","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://bizhostvn.com/w/tranhgo/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","1","product_variation","","0"),
("546","1","2018-06-03 23:13:55","2018-06-03 16:13:55","","Đĩa tứ linh gỗ mun hoa đục tinh xảo 50x40x3.5cm","","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-2","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://bizhostvn.com/w/tranhgo/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","2","product_variation","","0"),
("547","1","2018-06-03 23:13:56","2018-06-03 16:13:56","","Đĩa tứ linh gỗ mun hoa đục tinh xảo 50x40x3.5cm","","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-3","","","2018-06-03 23:14:14","2018-06-03 16:14:14","","160","https://bizhostvn.com/w/tranhgo/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","3","product_variation","","0"),
("548","1","2018-06-03 23:13:56","2018-06-03 16:13:56","","Đĩa tứ linh gỗ mun hoa đục tinh xảo 50x40x3.5cm","","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-4","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://bizhostvn.com/w/tranhgo/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","4","product_variation","","0"),
("549","1","2018-06-03 23:14:53","2018-06-03 16:14:53","","Đĩa tứ linh đục kênh bong gỗ hương liền tấm 76x60x5.5cm","","publish","closed","closed","","ao-thun-meo-phoi-no-quan-jeans-gia-vay","","","2018-06-03 23:15:16","2018-06-03 16:15:16","","169","https://bizhostvn.com/w/tranhgo/san-pham/ao-thun-meo-phoi-no-quan-jeans-gia-vay-de-thuong/","1","product_variation","","0"),
("550","1","2018-06-03 23:16:11","2018-06-03 16:16:11","","Tranh cá chép Lý Ngư Vọng Nguyệt gỗ hương 110x40cm","","publish","closed","closed","","bo-croptop-sieu-sanh-dieu-cho-be-gai","","","2018-06-03 23:16:28","2018-06-03 16:16:28","","156","https://bizhostvn.com/w/tranhgo/san-pham/bo-croptop-sieu-sanh-dieu-cho-be-gai-1-8-tuoi/","1","product_variation","","0"),
("578","1","2018-08-10 08:47:21","2018-08-10 01:47:21","","icon1","","inherit","open","closed","","icon1","","","2018-08-10 08:47:21","2018-08-10 01:47:21","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon1.png","0","attachment","image/png","0"),
("579","1","2018-08-10 08:47:22","2018-08-10 01:47:22","","icon3","","inherit","open","closed","","icon3","","","2018-08-10 08:47:22","2018-08-10 01:47:22","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon3.png","0","attachment","image/png","0"),
("581","1","2018-08-10 08:48:07","2018-08-10 01:48:07","","icon-2","","inherit","open","closed","","icon-2","","","2018-08-10 08:48:07","2018-08-10 01:48:07","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon-2.png","0","attachment","image/png","0"),
("600","1","2018-08-10 09:07:15","2018-08-10 02:07:15","","icon-nhan-bao-gia","","inherit","open","closed","","icon-nhan-bao-gia","","","2018-08-10 09:07:15","2018-08-10 02:07:15","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon-nhan-bao-gia.jpg","0","attachment","image/jpeg","0"),
("602","1","2018-08-10 09:07:52","2018-08-10 02:07:52","","icon-thanh-toan","","inherit","open","closed","","icon-thanh-toan","","","2018-08-10 09:07:52","2018-08-10 02:07:52","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon-thanh-toan.png","0","attachment","image/png","0"),
("604","1","2018-08-10 09:08:47","2018-08-10 02:08:47","","icon-diachi","","inherit","open","closed","","icon-diachi","","","2018-08-10 09:08:47","2018-08-10 02:08:47","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon-diachi.png","0","attachment","image/png","0"),
("606","1","2018-08-10 09:09:40","2018-08-10 02:09:40","","icon-phone","","inherit","open","closed","","icon-phone-3","","","2018-08-10 09:09:40","2018-08-10 02:09:40","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/icon-phone.png","0","attachment","image/png","0"),
("612","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh gỗ","","publish","closed","closed","","tranh-go","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=612","3","nav_menu_item","","0"),
("613","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh cá chép","","publish","closed","closed","","tranh-ca-chep","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=613","4","nav_menu_item","","0"),
("614","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh chữ","","publish","closed","closed","","tranh-chu","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=614","5","nav_menu_item","","0"),
("615","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh đồng hồ","","publish","closed","closed","","tranh-dong-ho","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=615","6","nav_menu_item","","0"),
("616","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh thư pháp","","publish","closed","closed","","tranh-thu-phap","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=616","7","nav_menu_item","","0"),
("617","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh tứ linh","","publish","closed","closed","","tranh-tu-linh","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=617","8","nav_menu_item","","0"),
("618","1","2018-08-10 09:20:58","2018-08-10 02:20:58","","Tranh tứ quý","","publish","closed","closed","","tranh-tu-quy","","","2018-08-10 09:21:12","2018-08-10 02:21:12","","0","https://bizhostvn.com/w/tranhgo/?p=618","9","nav_menu_item","","0"),
("629","1","2018-08-10 10:21:37","2018-08-10 03:21:37","","slider5","","inherit","open","closed","","slider5","","","2018-08-10 10:21:37","2018-08-10 03:21:37","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/slider5.jpg","0","attachment","image/jpeg","0"),
("631","1","2018-08-10 10:29:41","2018-08-10 03:29:41","","slider3","","inherit","open","closed","","slider3-2","","","2018-08-10 10:29:41","2018-08-10 03:29:41","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/slider3.jpg","0","attachment","image/jpeg","0"),
("634","1","2018-08-10 10:31:39","2018-08-10 03:31:39","","logo","","inherit","open","closed","","logo-2","","","2018-08-10 10:31:39","2018-08-10 03:31:39","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/logo.png","0","attachment","image/png","0"),
("645","1","2018-08-10 10:43:14","2018-08-10 03:43:14","","product-1","","inherit","open","closed","","product-1","","","2018-08-10 10:43:14","2018-08-10 03:43:14","","199","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product-1.jpg","0","attachment","image/jpeg","0"),
("646","1","2018-08-10 10:45:04","2018-08-10 03:45:04","","product2","","inherit","open","closed","","product2-2","","","2018-08-10 10:45:04","2018-08-10 03:45:04","","169","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product2-1.jpg","0","attachment","image/jpeg","0"),
("647","1","2018-08-10 10:46:54","2018-08-10 03:46:54","","product3","","inherit","open","closed","","product3-2","","","2018-08-10 10:46:54","2018-08-10 03:46:54","","167","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product3-1.jpg","0","attachment","image/jpeg","0"),
("649","1","2018-08-10 10:48:45","2018-08-10 03:48:45","","product4","","inherit","open","closed","","product4","","","2018-08-10 10:48:45","2018-08-10 03:48:45","","160","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product4.jpg","0","attachment","image/jpeg","0"),
("651","1","2018-08-10 10:51:32","2018-08-10 03:51:32","","product7","","inherit","open","closed","","product7","","","2018-08-10 10:51:32","2018-08-10 03:51:32","","156","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product7.jpg","0","attachment","image/jpeg","0"),
("653","1","2018-08-10 10:53:35","2018-08-10 03:53:35","","product8","","inherit","open","closed","","product8","","","2018-08-10 10:53:35","2018-08-10 03:53:35","","150","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product8.jpg","0","attachment","image/jpeg","0"),
("655","1","2018-08-10 10:55:46","2018-08-10 03:55:46","","product0","","inherit","open","closed","","product0","","","2018-08-10 10:55:46","2018-08-10 03:55:46","","152","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product0.jpg","0","attachment","image/jpeg","0"),
("657","1","2018-08-10 10:57:22","2018-08-10 03:57:22","","product-10","","inherit","open","closed","","product-10","","","2018-08-10 10:57:22","2018-08-10 03:57:22","","154","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/product-10.jpg","0","attachment","image/jpeg","0"),
("659","1","2018-08-10 11:01:14","2018-08-10 04:01:14","","ahz1478227187","","inherit","open","closed","","ahz1478227187","","","2018-08-10 11:01:14","2018-08-10 04:01:14","","201","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/ahz1478227187.jpg","0","attachment","image/jpeg","0"),
("660","1","2018-08-10 11:02:58","2018-08-10 04:02:58","","tuonggo352","","inherit","open","closed","","tuonggo352","","","2018-08-10 11:02:58","2018-08-10 04:02:58","","121","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/06/tuonggo352.jpg","0","attachment","image/jpeg","0"),
("661","1","2018-08-10 11:12:29","2018-08-10 04:12:29","","banner2","","inherit","open","closed","","banner2-2","","","2018-08-10 11:12:29","2018-08-10 04:12:29","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/banner2.jpg","0","attachment","image/jpeg","0"),
("664","1","2018-08-10 11:19:22","2018-08-10 04:19:22","","BANNER6","","inherit","open","closed","","banner6","","","2018-08-10 11:19:22","2018-08-10 04:19:22","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/BANNER6.jpg","0","attachment","image/jpeg","0"),
("671","1","2018-08-10 11:38:07","2018-08-10 04:38:07","","banner8","","inherit","open","closed","","banner8","","","2018-08-10 11:38:07","2018-08-10 04:38:07","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/banner8.jpg","0","attachment","image/jpeg","0"),
("673","1","2018-08-10 11:45:25","2018-08-10 04:45:25","","SFSD","","inherit","open","closed","","sfsd","","","2018-08-10 11:45:25","2018-08-10 04:45:25","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/SFSD.jpg","0","attachment","image/jpeg","0"),
("676","1","2018-08-10 11:47:55","2018-08-10 04:47:55","","thong-bao-bo-cong-thuong","","inherit","open","closed","","thong-bao-bo-cong-thuong-2","","","2018-08-10 11:47:55","2018-08-10 04:47:55","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/thong-bao-bo-cong-thuong.png","0","attachment","image/png","0"),
("692","1","2018-08-10 13:30:53","2018-08-10 06:30:53","Chào các bạn, chẳng là hôm trước mình nhận lệnh từ vợ tương lai là <strong>“anh phải thiết kế cho em một mẫu áo thật dễ thương nhé, anh làm cho thiên hạ nhiều rồi, đến lượt làm cho em nhé!”</strong>. Vì chuẩn bị để đi chụp ảnh cưới nên mình cố gắng tuân lệnh và làm thật nhanh để in cho kịp ngày đi chụp. Kết quả là mình làm trong vòng một buổi sáng và gửi đi in mất 1h đồng hồ nữa là có một cặp áo cực kỳ dễ thương. Hôm nay, mình sẽ chia sẻ lại cho các bạn free tải về nhé!\n<h3>Vector cô dâu chú rể</h3>\nMẫu này mình lấy một hình trên mạng và đưa về vẽ lại dưới định dạng vector, bên cạnh đó thêm sửa phối màu chút nữa cho ra những nét đặc sắc của riêng mình.\n\n<strong>Cô dâu</strong> mình phối màu theo tông màu hồng nhạt, với hình họa chibi cho cô dâu cảm giác rất dễ thương. Bên dưới là tên cô dâu của mình kèm theo ngày lễ cưới tại nhà thờ.\n\n<strong>Chú rể</strong> mình phối màu theo tông màu xanh biển nhạt + xanh lá cho cảm giác chững chạc hơn nhưng cũng không kém phần dễ  thương và tương phản. Bên dưới cũng được ghi tên chú rể và ngày tổ chức lễ thành hôn ở nhà thờ.\n<h3>Thông tin thiết kế</h3>\n<ul>\n 	<li><strong>Phần mềm:</strong> Adobe Illustrator CS6</li>\n 	<li><strong>Font chữ:</strong> UTM Edwardian</li>\n 	<li><strong>Định dạng:</strong> Vector (.ai)</li>\n 	<li><strong>Dung lượng:</strong> ~15Mb</li>\n 	<li><strong>Công nghệ in phù hợp:</strong> in áo, in standee, banner, backgroup,…</li>\n</ul>\n<h3>Link download</h3>\nCác bạn được tự do download về và sử dụng với nhiều mục đích khác nhau. Mình không can thiệp vấn đề bản quyền vì hình này mình cũng lấy từ nguồn internet. Chúc các bạn có thể sử dụng mẫu thiết kế này một cách thật hữu ích nhé!\n\n<strong>Link tải về miễn phí: <a href=\"https://drive.google.com/drive/folders/1f0eUTUcyP2eXIgc2SrrFq6d2XXkClrxQ?usp=sharing\">https://drive.google.com/drive/folders/1f0eUTUcyP2eXIgc2SrrFq6d2XXkClrxQ?usp=sharing</a></strong>\n<h3>Lời kết</h3>\nCám ơn các bạn đã quan tâm theo dõi và ủng hộ blog <a href=\"https://giuseart.com/\">Giuseart t</a>rong suốt thời gian qua. Chúc các bạn có những phút thư giãn và trải nghiệm thật tuyệt trên webdesign.com. Mọi nhu cầu thiết kế, in ấn sáng tạo, vui lòng liên hệ admin để được trợ giúp nhiệt tình.\n\n<strong>Thông tin liên hệ:</strong>\n\n<strong>+ Liên hệ:</strong> Lê Văn Thiện\n<strong>+ Phone:</strong> 0909009009\n<strong>+ Email:</strong> giuselethien@gmail.com\n<strong>+ Website:</strong> www.giuseart.com\n<strong>+ Flickr:</strong><a href=\"http://www.flickr.com/photos/77493237@N07/albums\"> www.flickr.com/photos/77493237@N07/albums</a>\n<strong>+ Behance:</strong> <a href=\"https://www.behance.net/giuselethien\">https://www.behance.net/giuselethien</a>\n<strong>+ Pintesest:</strong><a href=\"https://www.pinterest.com/giuselethien/pins/\"> https://www.pinterest.com/giuselethien/pins/</a>","[Free download] – Vector cô dâu chú rể cực teen cho các bạn trẻ có đôi có cặp","","publish","open","open","","free-download-vector-co-dau-chu-re-cuc-teen-cho-cac-ban-tre-co-doi-co-cap","","","2018-08-10 13:30:53","2018-08-10 06:30:53","","0","https://bizhostvn.com/w/tranhgo/?p=692","0","post","","0"),
("693","1","2018-08-10 13:30:50","2018-08-10 06:30:50","","Giuseart.com-Vector-cô-dâu-chú-rể","","inherit","open","closed","","giuseart-com-vector-co-dau-chu-re","","","2018-08-10 13:30:50","2018-08-10 06:30:50","","692","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/Giuseart.com-Vector-cô-dâu-chú-rể.jpg","0","attachment","image/jpeg","0"),
("695","1","2018-08-10 13:31:57","2018-08-10 06:31:57","Chào các bạn, ngày hôm qua 27/7/2018, tại Giáo xứ Lãng Vân (Phát Diệm) đã tổ chức rất thành công <strong>Lễ Bổn Mạng Thiếu Nhi Thánh Thể &amp; Sinh nhật Xứ đoàn lần thứ VII</strong>. Sự kiện kết thúc đã để lại không ít những ấn tượng tốt đẹp, đặc biệt là Logo và Phông sân khấu chính trong ngày lễ với chủ đề <strong>“Em yêu Giêsu”.</strong>\n<h3>Logo công giáo “Em yêu Giêsu”</h3>\nLogo với hai hình ảnh chính là Chúa Giêsu và em bé được mình vẽ lại từ một tấm phác họa trên mạng sau một hồi tìm kiếm khá vất vả. Màu chủ đạo của logo là màu xanh lá cây, kết hợp với một số màu sắc tươi trẻ khác phù hợp với lứa tuổi thiếu nhi như: màu vàng, màu hồng, màu xanh dương,…\n\nHình ảnh Chúa Giêsu và em bé được vẽ lại theo phong cách hoạt hình dễ thương, tươi tắn và nổi bật. Bên dưới hình ảnh chính là dòng chữ chủ đề <strong>“Em yêu Giêsu”</strong> với 2 màu phân biệt rõ ràng là xanh và trắng hồng.\n\nLogo này nhận được rất nhiều sự phản hồi tích cực của các em thiếu nhi cũng như các anh chị tổ chức chương trình. Mình thiết nghĩ mai mốt có thời gian cũng sẽ dùng logo này để in một số chiếc áo phông mặc cũng rất đẹp.\n<h3>Thẻ đeo tham dự viên</h3>\nMỗi sự kiện lớn đều hay có những thẻ đeo dành riêng cho tham dự viên hoặc các ban phụ trách các công việc tổ chức. Và trong sự kiện lần này, mình cũng có làm thẻ đeo cho các em thiếu nhi như sau:\n<figure id=\"attachment_6174\" class=\"wp-caption aligncenter\"><figcaption class=\"wp-caption-text\">Giuseart.com – Thẻ đeo tham dự viên</figcaption></figure>\nThẻ đeo này chỉ có một mặt trước, sử dụng hình ảnh cánh đồng lúa ngộ nghĩnh làm nền. Bên cạnh đó, logo chính và cụm chữ tiêu đề đặt ở bên trên có tỏa ánh sáng trắng nên rất tương phản và tươi tắn.\n\n<strong>Thông tin thiết kế:</strong>\n<ul>\n 	<li><strong>Phần mềm:</strong> Adobe Photoshop CS6</li>\n 	<li><strong>Kích thước:</strong> 148x210mm (A5 – khổ dọc)</li>\n 	<li><strong>Hệ màu:</strong> CMYK</li>\n 	<li><strong>Độ phân giải:</strong> 300dpi</li>\n 	<li><strong>Phông chữ:</strong> UTM Avo</li>\n</ul>\n<h3>Phông sân khấu lễ quan thày thiếu nhi</h3>\nPhông sân khấu thực hiện rất đơn giản vì mình chỉ muốn đặt logo lên trên một tấm nền nhẹ nhàng, trên đó chỉ đặt một số thông tin chính về tên xứ đoàn và ngày tháng tổ chức mà thôi. Do tấm phông lớn và logo cũng được đặt ở ví trị chính diện nên tạo cảm giác thu hút rất tốt.\n\nBên trên cùng là tên xứ đoàn <strong>“Thiếu Nhi Thánh Thể Giáo xứ Lãng Vân, xứ đoàn Maria Goretti”</strong>; ở giữa là logo công giáo <strong>“Em yêu Giêsu”</strong>; dưới cùng là thông tin ngày tháng tổ chức.\n\n<strong>Thông tin thiết kế</strong>\n<ul>\n 	<li><strong>Phần mềm:</strong> Adobe Photoshop CS6</li>\n 	<li><strong>Kích thước:</strong> 7x4m ngang</li>\n 	<li><strong>Hệ màu:</strong> CMYK</li>\n 	<li><strong>Độ phân giải:</strong> 72dpi</li>\n 	<li><strong>Công nghệ in phù hợp:</strong> in bạt hiflex</li>\n</ul>\n<h3>Lời kết</h3>\nCám ơn các bạn đã quan tâm theo dõi và ủng hộ blog GiuseArt trong suốt thời gian vừa qua. Mọi nhu cầu thiết kế, in ấn sáng tạo, vui lòng liên hệ admin để được trợ giúp nhiệt tình nhé!\n\n<strong>Thông tin liên hệ: </strong>\n\n<strong>+ Liên hệ:</strong> Lê Văn Thiện\n<strong>+ Phone:</strong> 0909009009\n<strong>+ Email:</strong> giuselethien@gmail.com\n<strong>+ Website:</strong> www.giuseart.com\n<strong>+ Flickr:</strong><a href=\"http://www.flickr.com/photos/77493237@N07/albums\"> www.flickr.com/photos/77493237@N07/albums</a>\n<strong>+ Behance:</strong> <a href=\"https://www.behance.net/giuselethien\">https://www.behance.net/giuselethien</a>\n<strong>+ Pintesest:</strong><a href=\"https://www.pinterest.com/giuselethien/pins/\"> https://www.pinterest.com/giuselethien/pins/</a>","Phông sân khấu “Em yêu Giêsu”, bổn mạng TNTT Lãng Vân 2018","","publish","open","open","","thiet-ke-logo-va-phong-san-khau-em-yeu-giesu-bon-mang-tntt-lang-van-2018","","","2018-08-10 13:37:59","2018-08-10 06:37:59","","0","https://bizhostvn.com/w/tranhgo/?p=695","0","post","","0"),
("696","1","2018-08-10 13:31:53","2018-08-10 06:31:53","","Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi","","inherit","open","closed","","giuseart-com-phong-san-khau-le-quan-thay-thieu-nhi","","","2018-08-10 13:31:53","2018-08-10 06:31:53","","695","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/Giuseart.com-Phông-sân-khấu-Lễ-quan-thày-thiếu-nhi.jpg","0","attachment","image/jpeg","0"),
("698","1","2018-08-10 13:32:51","2018-08-10 06:32:51","Chào các bạn, mấy hôm vừa rồi bận việc quá nên mình không viết bài thường xuyên được, rất mong các bạn thông cảm. Hôm nay mình viết bài giới thiệu mẫu thiết kế <strong>Phông sân khấu Lễ truyền thống SVCG Bùi Chu lần thứ XII</strong> được tổ chức tại <strong>Giáo xứ Hồng Quang</strong>, ngày 28-29/7 vừa qua.\n<h3>Phông sân khấu Lễ Truyền Thống</h3>\nMình rất nể các bạn SVCG Bùi Chu trong những năm qua luôn là một trong những nhóm sinh viên hoạt động rất mạnh tại khu vực Hà Nội và các tỉnh thành lân cận. Chính vì quy mô tổ chức lớn nên mỗi dịp Lễ truyền thống đều được coi là một ngày hội của các bạn sinh viên công giáo đến từ Bùi Chu.\n\nNăm nay, SVCG Bùi Chu tổ chức lễ truyền thống lần thứ XII tại Giáo xứ Hồng Quang. Qua theo dõi các kênh truyền thông, mình nhận thấy các bạn năm nay tổ chức rất hoành tráng và sôi động, có thể nói là bậc nhất trong những năm trở lại đây.\n\nVà rất vinh dự cho mình khi có quen biết một số anh em trong ban tổ chức và chịu trách nhiệm chính việc trang trí sân khấu cho ngày lễ này. Do đó, mình được cộng tác để thiết kế nên phông sân khấu cho các bạn như hình dưới đây:\n\nPhông sân khấu được chia thành 3 khối chính:\n\n<strong>Khối thứ nhất – bên trái:</strong> Làm nổi bật hình ảnh Chúa Giêsu đang tươi cười, mờ dưới nền là hình ảnh Chúa Giêsu và các Tông đồ đang trên đường loan báo tin mừng. Phía dưới Chúa Giêsu là câu chủ đề của ngày lễ là<strong> “Con đường Hạt Lúa” </strong>(Ga 12,20-32). Gói trên cùng bên trái là hình ảnh thánh quan thầy Inhaxio.\n\n<strong>Khối chính giữa:</strong> Cây Thánh Giá màu trắng là tâm điểm của đời sống người Kitô hữu. Đối với sinh viên, Thánh Giá Đức Kitô cũng có vai trò rất to lớn trong việc hướng dẫn các bạn sống ngay lành và phấn đấu học tập tốt. Hai bên của Thánh Giá là các bông lúa vươn lên trời cao. Tổng cộng có tất cả 15 bông lúa, tượng trưng cho 15 năm thành lập của SVCG Bùi Chu.\n\n<strong>Khối thứ ba – bên phải: </strong>Với tông màu chủ đạo vàng – cam dễ dàng làm nổi bật tiêu đề và các thông tin khác của ngày lễ. Góc trên cùng bên phải là logo của nhóm SVCG Bùi Chu.\n<figure id=\"attachment_6194\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-6194 lazy-load-active\" src=\"https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-M%C3%B4-t%E1%BA%A3-k%C3%ADch-th%C6%B0%E1%BB%9Bc-Ph%C3%B4ng-s%C3%A2n-kh%E1%BA%A5u-L%E1%BB%85-truy%E1%BB%81n-th%E1%BB%91ng.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống.jpg 800w, https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống-300x170.jpg 300w, https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống-768x434.jpg 768w\" alt=\"Giuseart.com - Mô tả kích thước Phông sân khấu Lễ truyền thống\" width=\"800\" height=\"452\" data-src=\"https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống.jpg\" data-srcset=\"https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống.jpg 800w, https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống-300x170.jpg 300w, https://giuseart.com/wp-content/uploads/2018/08/Giuseart.com-Mô-tả-kích-thước-Phông-sân-khấu-Lễ-truyền-thống-768x434.jpg 768w\" /></figure>","Thiết kế Phông sân khấu Lễ truyền thống SVCG Bùi Chu lần thứ XII","","publish","open","open","","thiet-ke-phong-san-khau-le-truyen-thong-svcg-bui-chu-lan-thu-xii","","","2018-08-10 13:32:51","2018-08-10 06:32:51","","0","https://bizhostvn.com/w/tranhgo/?p=698","0","post","","0");
INSERT INTO bz_posts VALUES
("699","1","2018-08-10 13:32:45","2018-08-10 06:32:45","","Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII","","inherit","open","closed","","giuseart-com-phong-san-khau-le-truyen-thong-svcg-bui-chu-lan-thu-xii","","","2018-08-10 13:32:45","2018-08-10 06:32:45","","698","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/Giuseart.com-Phông-sân-khấu-Lễ-Truyền-Thống-SVCG-Bùi-Chu-lần-thứ-XII.jpg","0","attachment","image/jpeg","0"),
("701","1","2018-08-10 13:33:42","2018-08-10 06:33:42","Chào các bạn, hôm qua mình có dịp trở lại Phát Diệm tham gia <strong>Ngày gặp mặt Thiếu Nhi của Giáo phận lần thứ VI</strong> với chủ đề <strong>“Bước đi trong ánh sáng”.</strong> Đây là một ngày hội được tổ chức với quy mô rất hoành tráng và ý nghĩa – sự kiện thường niên dành riêng cho các em thiếu nhi trong Giáo phận.\n<h3>Logo Công Giáo</h3>\nLogo Công Giáo thường được mình thiết kế khá tỉ mỉ và chi tiết, khác hẳn những logo thương hiệu của các doanh nghiệp. Logo Công Giáo cũng mang nhiều hình ảnh biểu tượng và nhiều ý nghĩa khác nhau nên việc thiết kế khá là khó về mặt bố cục và màu sắc.\n\nTuy vậy, không hẳn thiết kế Logo Công Giáo là một công việc quá khó khăn. Chỉ cần bạn hiểu và đam mê nghệ thuật Công giáo, bạn cũng có thể làm được thôi!\n<h3>Logo ngày gặp mặt Thiếu nhi Giáo phận Phát Diệm</h3>\nViệc thiết kế Logo cho <strong>Ngày gặp mặt Thiếu Nhi Giáo phận Phát Diệm lần thứ VI</strong> của mình được diễn ra khá suôn sẻ, từ lúc nhận ý tưởng cho tới lúc hoàn thiện gần như không gặp khó khăn gì. Yêu cầu của Cha Trưởng Ban Giáo lý cũng tương đối dễ dàng và không phải sửa soạn quá nhiều.\n\nNhờ thế, mình được tự do sáng tác và cuối cùng cũng chốt được một mẫu thiết kế như sau:\n<h4>Ý nghĩa logo:</h4>\nLogo với những hình ảnh biểu tượng khá đơn giản và dễ nhìn nên gần như ai nhìn cũng có thể dễ dàng nhận ra ý nghĩa luôn.\n\n<strong>Thánh Giá</strong> là trung tâm của logo được thiết kế dạng thô, đang đứng vững trước hình biểu tượng của cuốn sách Kinh Thánh được mở rộng.\n\nỞ giữa là hình ảnh biểu tượng <strong>các em thiếu nhi</strong> của Giáo phận đang nô nức kéo về Nhà thờ Phát Diệm. Phía dưới là con đường, biểu tượng cho lời kêu gọi và con đường dẫn đến Phúc Âm.\n\nBên trái cuốn sách là <strong>biểu tượng thánh thể</strong> với các ký tự JHS, bên phải là hình biểu tượng<strong> Phương đình Phát Diệm.</strong>\n\nNổi bật không kém là hình ngọn lửa màu đỏ ở phía trên, biểu tượng cho tình yêu và sự quan phòng của Chúa Thánh Thần. <strong>Chúa Thánh Thần</strong> soi sáng và dẫn lối cho các em thiếu nhi tìm về với Kinh Thánh và tìm về với Giáo Hội.\n<h4>Hình ảnh mockup:</h4>\nDưới đây là một số hình ảnh mockup của logo:\n<h3>Lời kết</h3>\nCám ơn các bạn đã quan tâm theo dõi và ủng hộ GiuseArt trong suốt thời gian vừa qua. Mọi nhu cầu thiết kế, in ấn sáng tạo, vui lòng liên hệ admin để được trợ giúp nhiệt tình. webdesign.com – Thiết kế logo, thiết kế banner, thiết kế thiệp mời, thiết kế phông sân khấu,…\n\n<strong>Thông tin liên hệ:</strong>\n\n<strong>+ Liên hệ:</strong> Lê Văn Thiện\n<strong>+ Phone:</strong> 0909009009\n<strong>+ Email:</strong> giuselethien@gmail.com\n<strong>+ Website:</strong> www.giuseart.com\n<strong>+ Flickr:</strong><a href=\"http://www.flickr.com/photos/77493237@N07/albums\"> www.flickr.com/photos/77493237@N07/albums</a>\n<strong>+ Behance:</strong> <a href=\"https://www.behance.net/giuselethien\">https://www.behance.net/giuselethien</a>\n<strong>+ Pintesest:</strong><a href=\"https://www.pinterest.com/giuselethien/pins/\"> https://www.pinterest.com/giuselethien/pins/</a>\n<div class=\"kk-star-ratings disabled bottom-left lft\" data-id=\"5702\">\n<div class=\"kksr-stars kksr-star gray\"></div>\n</div>","Thiết kế Logo Ngày gặp mặt thiếu nhi Giáo phận Phát diệm lần thứ VI","","publish","open","open","","thiet-ke-logo-ngay-gap-mat-thieu-nhi-giao-phan-phat-diem-lan-thu-vi","","","2018-08-10 13:33:42","2018-08-10 06:33:42","","0","https://bizhostvn.com/w/tranhgo/?p=701","0","post","","0"),
("702","1","2018-08-10 13:33:38","2018-08-10 06:33:38","","Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI","","inherit","open","closed","","giuseart-com-logo-ngay-gap-mat-thieu-nhi-phat-diem-lan-thu-vi","","","2018-08-10 13:33:38","2018-08-10 06:33:38","","701","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/08/Giuseart.com-Logo-Ngày-gặp-mặt-Thiếu-Nhi-Phát-Diệm-lần-thứ-VI.jpg","0","attachment","image/jpeg","0"),
("746","1","2018-08-10 14:00:54","2018-08-10 07:00:54","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"629\" image_size=\"original\" height=\"22%\"]\n\n[ux_image id=\"631\" image_size=\"original\" height=\"22%\"]\n\n\n[/ux_slider]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"661\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"664\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tranh thư pháp\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Tranh thư pháp\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc-section\" bg_color=\"rgb(255, 254, 234)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN TỨC - BÀI VIẾT\" color=\"rgb(113, 65, 7)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" posts=\"4\" show_date=\"false\" comments=\"false\" image_height=\"71%\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-08-10 14:00:54","2018-08-10 07:00:54","","2","https://bizhostvn.com/w/tranhgo/2-revision-v1/","0","revision","","0"),
("747","1","2018-08-10 14:02:03","2018-08-10 07:02:03","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"629\" image_size=\"original\" height=\"22%\"]\n\n[ux_image id=\"631\" image_size=\"original\" height=\"22%\"]\n\n\n[/ux_slider]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"661\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"664\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tranh thư pháp\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Tranh thư pháp\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Tranh gia đình\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Tranh gia đình\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm khuyến mại\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Sản phẩm khuyến mại\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc-section\" bg_color=\"rgb(255, 254, 234)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN TỨC - BÀI VIẾT\" color=\"rgb(113, 65, 7)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" posts=\"4\" show_date=\"false\" comments=\"false\" image_height=\"71%\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-08-10 14:02:03","2018-08-10 07:02:03","","2","https://bizhostvn.com/w/tranhgo/2-revision-v1/","0","revision","","0"),
("755","1","2018-10-23 14:02:03","2018-10-23 07:02:03","","favi","","inherit","open","closed","","favi","","","2018-10-23 14:02:03","2018-10-23 07:02:03","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2018/10/favi.png","0","attachment","image/png","0"),
("757","1","2019-05-16 15:55:41","2019-05-16 08:55:41","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 15:55:41","2019-05-16 08:55:41","","0","https://bizhostvn.com/w/tranhgo/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("60","22","0"),
("67","22","0"),
("121","2","0"),
("121","15","0"),
("121","21","0"),
("121","23","0"),
("150","2","0"),
("150","18","0"),
("150","21","0"),
("150","24","0"),
("152","2","0"),
("152","16","0"),
("152","21","0"),
("152","45","0"),
("154","4","0"),
("154","18","0"),
("154","21","0"),
("154","25","0"),
("154","27","0"),
("154","28","0"),
("154","40","0"),
("154","42","0"),
("154","43","0"),
("154","52","0"),
("156","4","0"),
("156","19","0"),
("156","21","0"),
("156","30","0"),
("156","31","0"),
("156","45","0"),
("156","49","0"),
("160","4","0"),
("160","18","0"),
("160","21","0"),
("160","25","0"),
("160","27","0"),
("160","41","0"),
("160","42","0"),
("160","49","0"),
("167","4","0"),
("167","18","0"),
("167","21","0"),
("167","26","0"),
("167","27","0"),
("167","28","0"),
("167","40","0"),
("167","41","0"),
("167","51","0"),
("167","52","0"),
("169","4","0"),
("169","18","0"),
("169","21","0"),
("169","26","0"),
("169","43","0"),
("169","45","0"),
("169","49","0"),
("199","4","0"),
("199","19","0"),
("199","21","0"),
("199","25","0"),
("199","26","0"),
("199","27","0"),
("199","28","0"),
("199","29","0"),
("199","30","0"),
("199","31","0"),
("199","40","0"),
("199","41","0"),
("199","42","0"),
("199","43","0"),
("199","44","0"),
("199","45","0"),
("199","46","0"),
("201","4","0"),
("201","16","0"),
("201","17","0"),
("201","28","0"),
("201","40","0"),
("201","41","0"),
("411","22","0"),
("612","22","0"),
("613","22","0"),
("614","22","0"),
("615","22","0"),
("616","22","0"),
("617","22","0"),
("618","22","0"),
("692","1","0"),
("695","1","0"),
("698","1","0"),
("701","1","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","5"),
("2","2","product_type","","0","3"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","7"),
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
("15","15","product_cat","","0","1"),
("16","16","product_cat","","0","2"),
("17","17","product_cat","","0","1"),
("18","18","product_cat","","0","5"),
("19","19","product_cat","","0","2"),
("20","20","product_cat","","0","0"),
("21","21","product_cat","","0","9"),
("22","22","nav_menu","","0","10"),
("23","23","product_tag","","0","1"),
("24","24","product_tag","","0","1"),
("25","25","pa_mau-sac","","0","3"),
("26","26","pa_mau-sac","","0","3"),
("27","27","pa_mau-sac","","0","4"),
("28","28","pa_mau-sac","","0","4"),
("29","29","pa_mau-sac","","0","1"),
("30","30","pa_mau-sac","","0","2"),
("31","31","pa_size","","0","2"),
("32","32","pa_size","","0","0"),
("33","33","pa_size","","0","0"),
("34","34","pa_size","","0","0"),
("35","35","pa_size","","0","0"),
("36","36","pa_size","","0","0"),
("37","37","pa_size","","0","0"),
("38","38","pa_size","","0","0"),
("39","39","pa_size","","0","0"),
("40","40","pa_size","","0","4"),
("41","41","pa_size","","0","4"),
("42","42","pa_size","","0","3"),
("43","43","pa_size","","0","3"),
("44","44","pa_size","","0","1"),
("45","45","product_tag","","0","4"),
("46","46","product_tag","","0","1"),
("47","47","product_tag","","0","0"),
("48","48","product_tag","","0","0"),
("49","49","product_tag","","0","3"),
("50","50","product_cat","","0","0"),
("51","51","product_tag","","0","1"),
("52","52","product_tag","","0","2");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","15","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","15","display_type",""),
("3","15","thumbnail_id","0"),
("4","16","order","0"),
("5","16","display_type",""),
("6","16","thumbnail_id","0"),
("7","17","order","0"),
("8","17","display_type",""),
("9","17","thumbnail_id","0"),
("10","18","order","0"),
("11","18","display_type",""),
("12","18","thumbnail_id","0"),
("13","19","order","0"),
("14","19","display_type",""),
("15","19","thumbnail_id","0"),
("16","20","order","0"),
("17","20","display_type",""),
("18","20","thumbnail_id","0"),
("19","21","order","0"),
("20","21","display_type",""),
("21","21","thumbnail_id","0"),
("22","15","product_count_product_cat","1"),
("23","21","product_count_product_cat","9"),
("24","23","product_count_product_tag","1"),
("25","18","product_count_product_cat","5"),
("26","24","product_count_product_tag","1"),
("27","16","product_count_product_cat","2"),
("28","19","product_count_product_cat","2"),
("29","17","product_count_product_cat","1"),
("30","25","order_pa_mau-sac","0"),
("31","26","order_pa_mau-sac","0"),
("32","27","order_pa_mau-sac","0"),
("33","28","order_pa_mau-sac","0"),
("34","29","order_pa_mau-sac","0"),
("35","30","order_pa_mau-sac","0"),
("36","31","order_pa_size","0"),
("37","32","order_pa_size","0"),
("38","33","order_pa_size","0"),
("39","34","order_pa_size","0"),
("40","35","order_pa_size","0"),
("41","36","order_pa_size","0"),
("42","37","order_pa_size","0"),
("43","38","order_pa_size","0"),
("44","39","order_pa_size","0"),
("45","40","order_pa_size","0"),
("46","41","order_pa_size","0"),
("47","42","order_pa_size","0"),
("48","43","order_pa_size","0"),
("49","44","order_pa_size","0"),
("50","45","product_count_product_tag","4"),
("51","46","product_count_product_tag","1"),
("52","47","product_count_product_tag","0"),
("53","48","product_count_product_tag","0"),
("54","49","product_count_product_tag","3"),
("55","50","order","0"),
("56","50","display_type",""),
("57","50","thumbnail_id","0"),
("58","51","product_count_product_tag","1"),
("59","52","product_count_product_tag","2");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
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
("15","Tranh gỗ","tranh-go","0"),
("16","Tranh thư pháp","tranh-thu-phap","0"),
("17","Tranh đồng hồ","tranh-dong-ho","0"),
("18","Tranh tứ linh","tranh-tu-linh","0"),
("19","Tranh tứ quý","tranh-tu-quy","0"),
("20","Tranh cá chép","tranh-ca-chep","0"),
("21","Tượng phật gỗ","tuong-phat-go","0"),
("22","Main-menu","main-menu","0"),
("23","Siêu anh hùng","quan-ao-sieu-anh-hung","0"),
("24","Váy trẻ em","vay-tre-em","0"),
("25","Trắng","trang","0"),
("26","Đen","den","0"),
("27","Đỏ","do","0"),
("28","Hồng","hong","0"),
("29","Xanh","xanh","0"),
("30","Xám","xam","0"),
("31","Size 1","size-1","0"),
("32","Size 2","size-2","0"),
("33","Size 3","size-3","0"),
("34","Size 4","size-4","0"),
("35","Size 5","size-5","0"),
("36","Size 6","size-6","0"),
("37","Size 7","size-7","0"),
("38","Size 8","size-8","0"),
("39","Size 9","size-9","0"),
("40","Size 10","size-10","0"),
("41","Size 11","size-11","0"),
("42","Size 12","size-12","0"),
("43","Size 13","size-13","0"),
("44","Size 14","size-14","0"),
("45","Hàng mới về","hang-moi-ve","0"),
("46","Bé mầm non","be-mam-non","0"),
("47","Trẻ 7-10 tuổi","cho-tre-7-10-tuoi","0"),
("48","Đồ đi chơi","do-di-choi","0"),
("49","Hàng cao cấp","hang-cao-cap","0"),
("50","Tranh chữ","tranh-chu","0"),
("51","linh hương","linh-huong","0"),
("52","gỗ mun","go-mun","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","ninhbinhweb.net"),
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
("14","1","dismissed_wp_pointers","wp496_privacy,plugin_editor_notice,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:4:{s:64:\"4b55e09a8e3d478afd0d92a13fafd6f0930991ed28819bcab1fc6df3e56d2fc8\";a:4:{s:10:\"expiration\";i:1558151152;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978352;}s:64:\"3e06eb979dd3ccedc2df0a4bce0e000c37f04e61ac1a6838fc977619f8506576\";a:4:{s:10:\"expiration\";i:1558151284;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978484;}s:64:\"23c99efc086c976ad2c3fe95b7979d6edc0484bd661ca793f167b70e565dfb8e\";a:4:{s:10:\"expiration\";i:1558151313;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557978513;}s:64:\"368481bea407641fbd203a95a117ba5bbf2c62c2e092ef09c431226e607a08b6\";a:4:{s:10:\"expiration\";i:1558169534;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557996734;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","745"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1557978511"),
("22","1","dismissed_no_secure_connection_notice","1"),
("23","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("24","1","wc_last_active","1557964800"),
("25","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("26","1","metaboxhidden_nav-menus","a:10:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:27:\"add-post-type-featured_item\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:20:\"add-block_categories\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";i:8;s:26:\"add-featured_item_category\";i:9;s:21:\"add-featured_item_tag\";}"),
("27","1","dismissed_no_shipping_methods_notice","1"),
("28","1","closedpostboxes_product","a:0:{}"),
("29","1","metaboxhidden_product","a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}"),
("30","1","nav_menu_recently_edited","22"),
("31","1","closedpostboxes_dashboard","a:3:{i:0;s:28:\"woocommerce_dashboard_status\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}"),
("32","1","metaboxhidden_dashboard","a:0:{}"),
("35","1","duplicator_pro_created_format","1"),
("36","1","dismissed_template_files_notice","1"),
("37","1","show_try_gutenberg_panel","0"),
("38","1","dismissed_update_notice","1"),
("39","1","_woocommerce_tracks_anon_id","woo:BDP5xOmMzK57GunYDOCDJiLQ");




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
("1","admin","$P$BS1EM0AubFcUfiUZlcByuCBWovoVE7.","admin","demobz@gmail.com","","2018-06-02 14:36:34","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_attribute_taxonomies VALUES
("1","mau-sac","Màu sắc","select","name","1"),
("2","size","Size","select","name","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("8","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558151167");




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






CREATE TABLE `bz_woof_query_cache` (
  `mkey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `mkey` (`mkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;