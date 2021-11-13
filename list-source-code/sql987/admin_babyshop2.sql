SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w62`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/babyshop2\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1544774083,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960256,\"initial_activation_timestamp\":1544774105,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025847,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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


INSERT INTO bz_muahangnhanh VALUES
("1","1806031458","THiện","093242","demoweb@gmail.com","Quần jeans wash rách lưng thun dễ thương","23","fsdfdssfd","10350000",""),
("2","1806031458","THiện","093242","demoweb@gmail.com","Quần jeans wash rách lưng thun dễ thương","23","fsdfdssfd","10350000",""),
("3","1806031458","THiện","093242","demoweb@gmail.com","Quần jeans wash rách lưng thun dễ thương","23","fsdfdssfd","10350000",""),
("4","1806031458","THiện","093242","demoweb@gmail.com","Quần jeans wash rách lưng thun dễ thương","23","fsdfdssfd","10350000",""),
("5","1806031458","THiện","093242","demoweb@gmail.com","Quần jeans wash rách lưng thun dễ thương","23","fsdfdssfd","10350000","");




CREATE TABLE `bz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/babyshop2","yes"),
("2","home","https://bizhostvn.com/w/babyshop2","yes"),
("3","blogname","babyshop2","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","demo@gmail.com","yes"),
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
("33","active_plugins","a:5:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:31:\"muahangnhanh/dinhhien_web79.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:37:\"woocommerce-products-filter/index.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:96:\"/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/themes/flatsome/footer.php\";i:2;s:95:\"/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/themes/flatsome/style.css\";i:3;s:95:\"/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/themes/babyshop/style.css\";i:4;s:100:\"/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/plugins/muahangnhanh/index.php\";i:5;s:109:\"/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/plugins/muahangnhanh/dinhhien_web79.php\";}","no"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
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
("92","initial_db_version","38590","yes"),
("93","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("94","fresh_site","0","yes"),
("95","WPLANG","vi","yes"),
("96","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("102","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","cron","a:15:{i:1557938522;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557939600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557941794;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557942034;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557974194;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557974339;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557995939;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557995949;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557996788;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558004848;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558006739;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558017595;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558020923;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("112","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527950945;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("144","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027264;s:30:\"db-prefix-change/db_prefix.php\";i:1557025985;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025848;}","yes"),
("149","new_admin_email","demoweb@gmail.com","yes"),
("160","current_theme","BabyShop","yes"),
("161","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 02 Jun 2018 14:49:06 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527951001;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("162","theme_switched","","yes"),
("163","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("164","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("166","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("167","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("168","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("169","flatsome_wup_buyer","trannguyen886","yes"),
("170","allowedthemes","a:1:{s:8:\"babyshop\";b:1;}","no"),
("171","fl_has_child_theme","babyshop","yes"),
("173","theme_mods_babyshop","a:179:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:2:{i:0;s:7:\"account\";i:1;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:10:\"no-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:22;s:14:\"primary_mobile\";i:22;s:11:\"top_bar_nav\";i:50;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 02 Jun 2018 14:50:04 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:13:\"color_primary\";s:7:\"#f5989d\";s:15:\"color_secondary\";s:7:\"#ffffff\";s:11:\"color_texts\";s:7:\"#0a0a0a\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#00a2ff\";s:17:\"color_links_hover\";s:7:\"#ec2154\";s:9:\"type_size\";s:2:\"95\";s:16:\"type_size_mobile\";s:3:\"100\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"343\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"40\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#f5f5f5\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"110\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:7:\"#ffffff\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#8edff3\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:6:\"medium\";s:20:\"nav_uppercase_bottom\";b:0;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:7:\"#424242\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#ec2154\";s:9:\"site_logo\";s:75:\"https://bizhostvn.com/w/babyshop2/wp-content/uploads/2018/11/Untitled-1.png\";s:12:\"logo_padding\";s:1:\"1\";s:14:\"header_divider\";b:0;s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:0:\"\";s:18:\"search_placeholder\";s:32:\"Nhập từ khóa tìm kiếm...\";s:19:\"header_search_width\";s:2:\"93\";s:15:\"html_custom_css\";s:10657:\"input[type=search]{    font-size: 14px;\n    height: 47px;\n    border: 1px solid #f272ac;\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 4px;\n    box-shadow: 0px 0px grey;}.icon-search:before{color:#ffffff;font-size:17px}.button.secondary:not(.is-outline){ border-bottom-right-radius:3px;   background-color: #f272ac;\n    height: 47px;\n    border-top-right-radius: 3px;\n    color: white;\n    width: 45px;}.header-button a,.header-button a:hover{background:#fff!important;color:#ec2154}.header-button a{border-radius:4px;border:1px solid #fff;font-weight:700;text-transform:none;box-shadow:no-drop}.button:hover{box-shadow:0 0 0 gray!important}.header-nav .header-cart-link{padding:10px 12px!important;background:#fff;height:47px;    border: 1px solid #f5989d;color:#ec2154!important;font-weight:700;text-transform:none!important;font-size:15px!important; border-radius:3px}.header-nav .account-link{height: 47px;\n    border: 1px solid #8edff3;\n    border-radius: 4px;\n    padding: 5px 12px;\n    font-size: 15px;\n    color: #11b5d8!important;\n    text-transform: none;}.after-header-main .col{padding-bottom:0}.has-sticky .shop-page-title,.header-wrapper.stuck .block-html-after-header{display:none}.header:not(.transparent) .header-bottom-nav.nav>li>a{    color: #007c96;\n    font-weight: 400;\n    font-size: 16px;}.after-header-main .icon-box-left .icon-box-img+.icon-box-text{padding-left:5px}.hang-moi-ve .section-title-normal span{background:#ec2154;padding:8px 20px 4px;margin-right:15px;border-bottom:2px solid rgba(0,0,0,.1);margin-bottom:-2px;color:#fff;font-size:16px;border-top-left-radius:4px}.section-title a{padding-right:10px;font-weight:400;color:gray}.section-title-normal{background:#fff;border-bottom:2px solid #fff}#main,#wrapper{background-color:#efefef}.product-small .col-inner{border:1px solid #f4f4f4;background:#fff;padding:8px}.section-title-container{margin-bottom:15px}.badge-container{margin:15px 0 0}.badge-circle{margin-left:auto;margin-right:15px}.product .left{left:auto;right:0}.badge-inner.on-sale{background-color:red;border-radius:999px}.product-small .product-title a{color:#000;margin-bottom:10px; font-size:16px}.product-small .price-wrapper ins span.amount{color:#de0000;font-size:19px}.product-small .box-text{padding-bottom:5px}.flickity-prev-next-button{top:70%}.slider-nav-outside .flickity-prev-next-button.next{left:102%}.slider-nav-outside .flickity-prev-next-button.previous{right:102%}.slider-nav-circle .flickity-prev-next-button .arrow,.slider-nav-circle .flickity-prev-next-button svg{border-radius:100%;border:0;background:#fff;box-shadow:2px 2px 10px #ababab;color:gray}.banner-section .col{padding-bottom:0}.hang-moi-ve{padding-bottom:0!important}.bao-tay-tre-em .section-title-normal span,.mu-tre-em .section-title-normal span{padding:8px 20px 4px;margin-right:15px;border-bottom:2px solid rgba(0,0,0,.1);margin-bottom:-2px;color:#fff;font-size:16px;border-top-left-radius:4px}.bao-tay-tre-em .section-title-normal span{background:#06af0d}.mu-tre-em .section-title-normal span{background:red}.section{padding-bottom:0}.after-header-main{padding-bottom:6px!important}.copyright-footer{color:#009dd1}ul li.bullet-arrow,ul li.bullet-checkmark,ul li.bullet-star{padding:5px 0 5px 15px;border-color:#0c2435}.dark ul li.bullet-arrow,.dark ul li.bullet-checkmark,.dark ul li.bullet-star{border-color:#0b2233}.banner-section{padding-bottom:20px!important}.product-small .col-inner:hover{border: 1px solid #11b5d8;}.footer-section .col{padding-bottom:10px}.category-page-row,.shop-container{background:url(/wp-content/uploads/2018/06/back-22.png)}.product-info,.product-main .product-gallery .row{background:#fff}.product-main .content-row{max-width:1200px}.product-info{padding-top:15px!important;margin-left:20px}.product-main .product-gallery .row .row{padding:0}.product-info .breadcrumbs{font-size:14px;text-transform:none;margin-bottom:15px}.product-main .product-title{font-weight:400;color:#424242}.product-main .price-wrapper del span.amount{font-size:18px;color:gray}.product-main .price-wrapper ins span.amount{color:red;font-size:25px}.product-main .product-short-description{font-size:14px;color:#888}.product-main .variations{width:95%;background:#f2f2f2;float:left;margin-right:20px;display:inline-block;padding:10px}.product-main .variations label{color:#222;font-size:15px}.product-main .variations td:first-child{padding-right:15px}.form-flat select{background-color:#fff;box-shadow:none;border-color:#c7c7c7;background-position:99% 50%;color:currentColor!important;border-radius:3px!important}.variations .reset_variations{right:-9px;bottom:88%;text-transform:none;font-size:10px;background:#000;padding:5px 2px;border-radius:99px;color:#fff}.form-flat select{padding-right:30px}.variations_form{margin-bottom:0;width:100%;float:left;display:block}.product-main .product_meta{float:left;padding-left:0;font-size:14px}.product-main .product_meta .tagged_as a{background:#f2f2f2;padding:4px 8px;border-radius:3px;border:1px solid #eaeaea;margin-right:6px;color:#616161}.product-main .product_meta .tagged_as a:hover{background:#ec2154;color:#fff;border:1px solid #ec2154}.product_meta>span{border:0}.form-flat button,.form-flat input:not([type=submit]),.woocommerce-ordering,.woocommerce-ordering select{border-radius:4px}.product-info{padding-bottom:0}.product-footer .woocommerce-tabs{background:#fff;padding:20px}.product-footer .woocommerce-tabs>.nav-line:not(.nav-vertical){margin-top:0;background:#f2f2f2}.product-footer .woocommerce-tabs li{margin:0}.product-footer .woocommerce-tabs li a{font-size:15px;font-weight:400;text-transform:none;padding:10px 12px}.product-footer .woocommerce-tabs li.active>a{background:#ec2154;color:#fff}.related-products-wrapper .container-width{max-width:1200px;padding:10px;background:#fff;margin-top:20px;margin-bottom:20px;font-size:18px;color:#ec2154}.page-title{position:relative;z-index:9999;background:#fff4e2}.page-title-inner{padding-top:0}.breadcrumbs{font-size:15px;color:#ec2154;font-weight:400;text-transform:none}.woof_block_html_items ul li{width:46%;float:left}.woof_block_html_items ul li label{font-size:12px;font-weight:400;margin-bottom:0;padding-top:5px;padding-bottom:0}.woof_sid_auto_shortcode .woof_container{width:25%;margin-bottom:10px}.woof_submit_search_form_container .button{margin-bottom:0;border-radius:3px;font-size:14px;line-height:18px}.cart{margin-bottom:0}.woof_list li{margin:0 6px 0 3px!important;padding:0 0 11px!important}.woof_sid_auto_shortcode{border-radius:3px;padding-bottom:2px!important;border:0;margin-bottom:30px}.woof_container{padding-bottom:0;margin-bottom:0}.woof_edit_view{display:none}.note_checkout{font-size:13px;background:#fff4e2;padding:10px;color:#444;margin-bottom:20px;display:inline-block;width:100%}.detailcall-1 span,.product-main .clearfix{display:none}.single_variation_wrap{width:95%;float:left}.lien-he-button .col{padding-bottom:10px}.product-gallery,.product-thumbnails .col{background:#fff;padding-top:15px;margin-left:0}.product-main .flickity-prev-next-button{top:30%}.product-main .cart{width:40%;float:left}.detailcall-1 h3{font-size:15px;margin-bottom:0}.detailcall-1{width:60%;float:left;margin:0 0 10px;box-shadow:0 -3px 0 0 #fd6e1d inset;padding:7px 20px}td select{margin:3px 0}.single_add_to_cart_button{letter-spacing:0;text-transform:none;padding:0 21px}.woocommerce-variation-price{border-top:0;padding:0}.product-summary .variations_button{padding:0}.popup-inner{overflow-x:hidden;overflow-y:hidden}.popup-close{top:20px;right:20px}.popup-inner input[type=text]{height:33px}button.btn.btn-default{padding:3px 20px}.notice{border:0 solid #ff6009;color:#fff;padding:5px;font-weight:400;border-radius:4px;text-align:center;margin-top:10px;background:#69963e}.nav-dropdown-default{padding:10px;z-index:999999!important}.button.checkout,.button.wc-forward:not(.checkout):not(.checkout-button){text-transform:none;font-weight:400;border-radius:3px}#message-purchased p a{color:#e4003d;font-size:14px;font-weight:400}#message-purchased p small{color:#bdbdbd}\n.block-html-after-header{z-index:1}\n.nav-dropdown{border: 0px }\n.nav>li>a>i+span {\n    font-size: 15px;text-transform:none\n}.html .social-icons {\n    min-width: 16px;\n}\n.header-bottom-nav.nav > li{margin:0}\n.header-bottom-nav.nav > li a{padding-left:20px; padding-right:20px}\n.header:not(.transparent) .header-bottom-nav.nav > li.active > a, .header-bottom-nav.nav > li > a:hover, .header-nav .current-menu-item a{    color: #ffffff !important;\n    background: #11b5d8;\n    line-height: 31px;}\n.top-bar-nav li a{font-size:15px}\ninput[type=\'search\']:focus{box-shadow:0px 0px 0px gray}.header .nav-small a.icon:not(.button) {\n    font-size: 15px;\n}.nav-dropdown-default {\n    padding: 0;\n    background: #11b5d8;\n    z-index: 999999!important;\n}.nav-dropdown.nav-dropdown-default>li>a{margin:0}\n.nav-dropdown li a{padding-top: 12px;\n    padding-bottom: 12px;\n    color: white;    border-bottom: 1px solid #00a9ce !important;}\n.nav-dropdown>li>a:hover{background: #8edff3;\n    color: white;}\n.banner-row img{border-radius:10px}\n.banner-row .col{padding-bottom:10px}\n.dang-ky-nhan-tin .col{padding-bottom:0}\n.dang-ky-nhan-tin .cot4 .col-inner{    border: 1px solid #11b5d8;\n    padding: 25px;}\n.dang-ky-nhan-tin .cot4 input[type=\'submit\']:not(.is-form){margin:0;     margin-bottom: 16px;    background: #11b5d8;}.dark ul li.bullet-arrow{ border-color: rgb(153, 235, 255);}\n.footer-section:after{content: \"\";\n    float: left;\n    width: 100%;\n    height: 100%;\n    background-image: url(/wp-content/uploads/2018/11/footer-bg-pattern.png);\n    background-repeat: repeat-x;\n    position: absolute;\n    top: -26px;\n    left: 0;\n    right: 0;} \n.banner-section img, .dang-ky-nhan-tin .banner-layer .bg{border-radius:10px}\n.menu-footer{background: white;\n    border-radius: 30px;\n    display: block;\n    line-height: 15px;\n    width: 100%;\n    text-align: center;\n    margin: 0 auto;}\n.menu-footer ul{margin-bottom:0; margin:0 auto; text-align:center; display:inline-block}\n.menu-footer ul li{\n    margin-bottom: .6em;\n    list-style: none;\n    float: left; margin-bottom:0\n}\n.menu-footer ul li a{color:#4e4c4a;line-height: 50px;}.menu-footer ul li a:hover{color:#11b5d8}\nbody{word-wrap: break-word;}\n.shop-container, .archive{padding-bottom:30px}\n.row-lien-he{background:white; padding-top:20px}\n.page-template-page-right-sidebar .large-9 {padding-right:20px}\n\n.page-inner{background:white; padding-top:20px; padding:20px; border-radius:4px}\n.page-template-page-right-sidebar .large-3 #secondary{background:white; padding:15px; border-radius:4px }\n.page-template-page-right-sidebar .large-3 {padding-left:0}\";s:15:\"header_button_1\";s:9:\"Hotline: \";s:20:\"header_button_1_link\";s:14:\"tel:0972939830\";s:27:\"header_button_1_link_target\";s:6:\"_blank\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:21:\"header_button_1_style\";s:0:\"\";s:20:\"header_button_1_size\";s:5:\"large\";s:21:\"header_button_1_depth\";s:1:\"0\";s:21:\"header_button_1_color\";s:7:\"primary\";s:15:\"cart_icon_style\";s:5:\"plain\";s:17:\"header_cart_total\";b:0;s:17:\"header_cart_title\";b:1;s:17:\"nav_height_bottom\";s:1:\"7\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:17:\"html_after_header\";s:0:\"\";s:7:\"body_bg\";s:7:\"#ffffff\";s:20:\"header_height_sticky\";s:2:\"70\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:13:\"header_sticky\";b:0;s:16:\"category_sidebar\";s:4:\"none\";s:27:\"category_force_image_height\";b:1;s:21:\"category_image_height\";s:3:\"100\";s:16:\"products_pr_page\";s:2:\"50\";s:18:\"category_row_count\";s:1:\"5\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:6:\"normal\";s:13:\"product_hover\";s:4:\"none\";s:15:\"category_shadow\";s:1:\"0\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:12:\"bubble_style\";s:6:\"style1\";s:22:\"sale_bubble_percentage\";b:1;s:22:\"html_custom_css_mobile\";s:235:\".bao-tay-tre-em .col{padding-bottom:15px}.product-info{margin-left:0}.detailcall-1,.product-main .cart,.product-main .variations,.woof_sid_auto_shortcode .woof_container{width:100%}.section-content{padding-left:10px;padding-right:10px}\";s:12:\"footer_block\";s:14:\"footer-section\";s:19:\"footer_bottom_color\";s:7:\"#ffffff\";s:16:\"footer_left_text\";s:118:\"Thiết kế & Duy trì bởi Webdemo.com | Webdemo.net | <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_align\";s:6:\"center\";s:21:\"product_custom_layout\";s:19:\"custom-product-page\";s:12:\"product_zoom\";b:0;s:19:\"product_image_style\";s:6:\"normal\";s:14:\"product_header\";s:0:\"\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"5\";s:21:\"product_title_divider\";b:0;s:17:\"product_info_form\";s:4:\"flat\";s:18:\"product_tabs_align\";s:4:\"left\";s:14:\"product_upsell\";s:6:\"bottom\";s:16:\"related_products\";s:4:\"grid\";s:20:\"max_related_products\";s:2:\"15\";s:23:\"related_products_pr_row\";s:1:\"5\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:19:\"category_show_title\";b:0;s:20:\"category_title_style\";s:0:\"\";s:22:\"html_after_add_to_cart\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:451:\"<div class=\"note_checkout\" style=\"font-size:13px\">	\n		\n      <div style=\"color: green; font-weight: 700; margin-top: 6px; padding-left: 5px;  margin-bottom:10px\"> BÉ XINH CAM KẾT:</div>\n			<div>- KHÔNG bán hàng kém chất lượng. </div> \n			<div>- Sản phẩm y như hình.</div>\n      <div>- Đổi trả dễ dàng nếu không vừa ý.</div>\n			<div>- Sẽ có mặt tại nhà bạn từ 1-5 ngày làm việc. </div> \n\n		</div>\";s:22:\"html_custom_css_tablet\";s:41:\".bao-tay-tre-em .col{padding-bottom:15px}\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1475:\"<style>\n.hotline-footer{display:none}\n@media  (max-width: 767px) {\n.hotline-footer{display:block; position:fixed; bottom:0; width:100%; height:50px; z-index:99; background:rgba(0,0,0,0.6)}\n.hotline-footer .left{    width: 65%;\n    float: left;\n    height: 100%;\n    color: white;\n    line-height: 43px;\n    text-align: center;}\n.hotline-footer .right{    width: 35%;\n    float: right;\n    height: 100%;\n    line-height: 43px;\n    text-align: center;}.absolute-footer{font-size:13px}\n.blog-single .large-9, .blog-single .large-3{    flex-basis: 100%;\n max-width: 100%;}.blog-single .large-3{padding-left:15px; font-size:15px}\n \n.blog-single .large-3 .widget-area .section4{display:none}.tin-tuc-section .cot1-2{display:none}.hotline-footer a{color:white}\n.hotline-footer a{display:block;}.hotline-footer .left a{    background: #0082d0;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}.hotline-footer .right a{background: #3fb801;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}\n.hotline-footer .left img, .hotline-footer .right img{width:30px;    padding-right: 10px;}}\n</style><div class=\"hotline-footer\">\n<div class=\"left\">\n<a href=\"https://messenger.com/t/demo\" ><img src=\"/wp-content/uploads/2018/11/icon-3.png\"/>Chat với tư vấn viên</a>\n</div>\n<div class=\"right\">\n<a href=\"tel:0329630512\"><img src=\"/wp-content/uploads/2018/11/phone-icon.png\"/>Gọi ngay</a>\n</div>\n<div class=\"clearboth\"></div>\n</div>\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"1\";s:13:\"search_result\";s:1:\"0\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";s:1:\"0\";s:21:\"search_by_product_tag\";s:1:\"0\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:15:\"disable_reviews\";s:1:\"0\";s:27:\"product_gallery_woocommerce\";s:1:\"0\";s:14:\"html_shop_page\";s:0:\"\";s:9:\"tab_title\";s:27:\"Hướng dẫn thanh toán:\";s:11:\"tab_content\";s:665:\"<b>Liên hệ:</b> DEMO<br>\n<b>Số điện thoại:</b><br>\n<b>Email:</b> demoweb@gmail.com<br>\n<b>Website:</b> <a href=\"http://www.Webdemo.com\">www.Webdemo.com</a>\n<br><br>\n<b>THÔNG TIN THANH TOÁN</b><br>\n<b>1. Ngân hàng Vietcombank</b><br>\n- Số tài khoản: 0691000374599<br>\n- Tên tài khoản: DEMO<br>\n- Chi nhánh: VCB Chi nhánh Hà Tây<br>\n<b>2. Ngân hàng Agribank</b><br>\n- Số tài khoản: 2000206180703<br>\n- Tên tài khoản: DEMO<br>\n- Chi nhánh: Agribank Chi nhánh Đà Nẵng<br>\n<b>3. Ngân hàng ACB</b><br>\n- Số tài khoản: 221262879<br>\n- Tên tài khoản: DEMO<br>\n- Chi nhánh: VCB Chi nhánh Hà Thành		\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"0\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"1\";s:27:\"infinite_scroll_loader_type\";s:6:\"button\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:12:\"fl_portfolio\";s:1:\"0\";s:13:\"contact_phone\";s:10:\"0909009009\";s:13:\"contact_email\";s:22:\"m&amp;mshoes@gmail.com\";s:13:\"contact_hours\";s:0:\"\";s:19:\"contact_email_label\";s:22:\"m&amp;mshoes@gmail.com\";s:11:\"body_layout\";s:10:\"full-width\";s:18:\"footer_bottom_text\";s:5:\"light\";}","yes"),
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
("218","woocommerce_stock_email_recipient","demoweb@gmail.com","no"),
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
("254","woocommerce_email_from_name","Babyshop &#8211; Thiết kế web Webdemo","no"),
("255","woocommerce_email_from_address","demoweb@gmail.com","no"),
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
("302","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("303","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("304","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
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
("827","muahangnhanh_options","a:6:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:4:\"port\";s:3:\"465\";s:8:\"username\";s:29:\"josthienlangvan1991@gmail.com\";s:8:\"password\";s:16:\"zlzvqainhmcazygh\";s:8:\"sendfrom\";s:29:\"josthienlangvan1991@gmail.com\";s:10:\"noticemail\";s:17:\"demoweb@gmail.com\";}","yes"),
("1101","wnotification_params","a:29:{s:6:\"enable\";s:1:\"1\";s:12:\"archive_page\";s:1:\"2\";s:19:\"order_threshold_num\";s:2:\"60\";s:20:\"order_threshold_time\";s:1:\"2\";s:14:\"order_statuses\";a:2:{i:0;s:13:\"wc-processing\";i:1;s:12:\"wc-completed\";}s:12:\"virtual_name\";s:91:\"Mr. Hùng Thái Nguyên\nMs. Linh\nMs. Thảo VTC\nDemoweb Webdemo\nMs. Ngô Vân\nMr. Thao\";s:12:\"virtual_time\";s:2:\"10\";s:7:\"country\";s:1:\"1\";s:12:\"virtual_city\";s:92:\"Hải Dương\nHà Tĩnh\nNinh Bình\nNghệ An\nHà Nội\nTp. Hồ Chí Minh\nThanh Hóa\n\";s:15:\"virtual_country\";s:0:\"\";s:15:\"ipfind_auth_key\";s:0:\"\";s:13:\"product_sizes\";s:14:\"shop_thumbnail\";s:12:\"cache_enable\";s:1:\"1\";s:8:\"non_ajax\";s:1:\"1\";s:15:\"highlight_color\";s:7:\"#000000\";s:10:\"text_color\";s:7:\"#000000\";s:16:\"background_color\";s:7:\"#ffffff\";s:16:\"background_image\";s:1:\"0\";s:14:\"image_position\";s:1:\"0\";s:8:\"position\";s:1:\"1\";s:13:\"border_radius\";s:1:\"4\";s:15:\"show_close_icon\";s:1:\"1\";s:14:\"image_redirect\";s:1:\"1\";s:22:\"message_display_effect\";s:11:\"fadeInRight\";s:21:\"message_hidden_effect\";s:8:\"fade-out\";s:17:\"message_purchased\";a:2:{i:0;s:75:\"{first_name} vừa đặt hàng thành công {product_with_link} {time_ago}\";i:1;s:28:\"{product_with_link} {custom}\";}s:16:\"custom_shortcode\";s:44:\"{number} khách đang xem sản phẩm này!\";s:10:\"min_number\";s:2:\"50\";s:10:\"max_number\";s:3:\"100\";}","yes"),
("1108","_woocommerce_notification_prefix","ecdb7975c6","yes"),
("1273","duplicator_pro_package_active","{\"Created\":\"2018-12-14 07:56:00\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.9\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.32\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20181214_mmshoes\",\"Hash\":\"ecf5866ecbdea5b55035_20181214075600\",\"NameHash\":\"20181214_mmshoes_ecf5866ecbdea5b55035_20181214075600\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/babyshop2\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20181214_mmshoes_ecf5866ecbdea5b55035_20181214075600_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\",\"Size\":110436079,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/babyshop2\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web46\",\"tablesBaseCount\":32,\"tablesFinalCount\":32,\"tablesRowCount\":3073,\"tablesSizeOnDisk\":4767744,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1299","duplicator_pro_ui_view_state","a:1:{s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";}","yes"),
("1306","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"demoweb@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960286;}","no"),
("1324","woocommerce_placeholder_image","791","yes"),
("1445","product_cat_children","a:1:{i:18;a:10:{i:0;i:16;i:1;i:17;i:2;i:21;i:3;i:51;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;}}","yes"),
("1516","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1543359428;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("1909","category_children","a:0:{}","yes"),
("2157","inpsyde-phone-consent-given-BackWPup","a:4:{s:6:\"plugin\";s:8:\"BackWPup\";s:10:\"identifier\";s:32:\"f6273305617acfd840ecf8b31b2ff1e4\";s:11:\"php_version\";s:6:\"7.0.32\";s:10:\"wp_version\";s:5:\"4.9.8\";}","no"),
("2224","updraftplus_tour_cancelled_on","intro","yes"),
("2226","updraftplus_version","1.15.5","yes"),
("2227","updraft_updraftvault","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-91e57e48b0b4d4b2aa7d1edf84f1c6f8\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}","yes"),
("2228","updraft_dropbox","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-c944a1454911eb0b81439ef812119d50\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}","yes"),
("2229","updraft_s3","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-f2e024d5862a2139df7068d3b71f8078\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:3:\"rrs\";s:0:\"\";s:22:\"server_side_encryption\";s:0:\"\";}}}","yes"),
("2230","updraft_cloudfiles","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-d9d6d62ceac56a47d46de9495df748b2\";a:5:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";N;}}}","yes"),
("2231","updraft_googledrive","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-db359b343635a984ca9420f2a936311a\";a:3:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";}}}","yes"),
("2232","updraft_onedrive","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a2f1c6e2ad5c45c771316bcf2362de53\";a:0:{}}}","yes"),
("2233","updraft_ftp","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-8607aebba97b7b6585f9320fd5174d9f\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";i:1;}}}","yes"),
("2234","updraft_azure","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-2e83d60072611200ec7c71f60a43c2a3\";a:0:{}}}","yes"),
("2235","updraft_sftp","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-c90cf147d3bf68adf72e9bacc9912713\";a:0:{}}}","yes"),
("2236","updraft_googlecloud","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-4c1b382aedf76e8b84f7af602cfbafc9\";a:0:{}}}","yes"),
("2237","updraft_backblaze","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-6d1e3d453daa764c5010220ee0f31c4c\";a:0:{}}}","yes");
INSERT INTO bz_options VALUES
("2238","updraft_webdav","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-1e4839b653ea16dc35bcf98be771024d\";a:0:{}}}","yes"),
("2239","updraft_s3generic","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-9ea67b9dee7ddfe7a42eee8d4af1dd94\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}","yes"),
("2240","updraft_openstack","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-c9bae09dad3f3b101159a12ff18531e3\";a:6:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";s:0:\"\";}}}","yes"),
("2241","updraft_dreamobjects","a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-85d5cfa2a018ae062b01d709f486cd0b\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}","yes"),
("2242","updraftplus-addons_siteid","9357ba0fa5fb574e4ee64123476cce60","no"),
("2250","updraft_lastmessage","Local files deleted: 6. Remote files deleted: 0 (Th12 04 12:34:06)","yes"),
("2251","updraftplus_locked_fd","1","no"),
("2252","updraftplus_last_lock_time_fd","2018-12-04 05:20:51","no"),
("2253","updraftplus_semaphore_fd","1","no"),
("2254","updraft_last_scheduled_fd","1543900851","yes"),
("2316","updraft_backup_history","a:0:{}","no"),
("2317","updraft_last_backup","a:5:{s:11:\"backup_time\";i:1543900851;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:56:\"backup_2018-12-04-1220_MM_Shoes_547bef29d244-plugins.zip\";}s:12:\"plugins-size\";i:23710307;s:6:\"themes\";a:1:{i:0;s:55:\"backup_2018-12-04-1220_MM_Shoes_547bef29d244-themes.zip\";}s:11:\"themes-size\";i:7444361;s:7:\"uploads\";a:1:{i:0;s:56:\"backup_2018-12-04-1220_MM_Shoes_547bef29d244-uploads.zip\";}s:12:\"uploads-size\";i:6695193;s:6:\"others\";a:1:{i:0;s:55:\"backup_2018-12-04-1220_MM_Shoes_547bef29d244-others.zip\";}s:11:\"others-size\";i:904052;s:2:\"db\";s:50:\"backup_2018-12-04-1220_MM_Shoes_547bef29d244-db.gz\";s:7:\"db-size\";i:203120;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"24c36e3a09bbc97da569de612ce4f7de31ad3848\";s:7:\"themes0\";s:40:\"16f3c3c446b51fe82b414e2f78f771e43381cdbe\";s:8:\"uploads0\";s:40:\"960ca72e376be990f8f10031e1346796ef8a11b9\";s:7:\"others0\";s:40:\"9661ddf6fc0e047db557c77f7dcb2dc6ebe18908\";s:3:\"db0\";s:40:\"88fb532b177f57cab8e855fac222a7213c1f1a1e\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"46cbb1352fda89567329134f2f900745f2c1beb1102ace6054869b120d0494d2\";s:7:\"themes0\";s:64:\"02daa36f83cb920c64de6bb58fa7ed5bda83005f8f71cf861df8c8342232733d\";s:8:\"uploads0\";s:64:\"8fbd544bd9e17d7d61415a677d9cbd338d6ed186488b90a9e32f92c5e7ed1092\";s:7:\"others0\";s:64:\"f27b902181d1b681370a3bba04a66a6e1c85d790c70b3f02f63ee6e8e9843aa5\";s:3:\"db0\";s:64:\"4332f171af0d2d2deab813eeaeaefbbcd8c92dbbc4db5f6d4e959f409ebf9e2b\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"547bef29d244\";}","yes"),
("2328","updraft_jobdata_5c060eb305e2","a:5:{s:8:\"job_type\";s:8:\"download\";s:11:\"job_time_ms\";d:1543901420.124022;s:29:\"dlmessage_1543900851_others_0\";s:91:\"The file was found locally and matched the recorded size from the backup history (882.9 KB)\";s:7:\"service\";a:1:{i:0;s:4:\"none\";}s:26:\"dlfile_1543900851_others_0\";s:151:\"downloaded:904052:/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/updraft/backup_2018-12-04-1220_MM_Shoes_547bef29d244-others.zip\";}","no"),
("2350","updraft_jobdata_5c060eb30fe0","a:5:{s:8:\"job_type\";s:8:\"download\";s:11:\"job_time_ms\";d:1543901415.636785;s:29:\"dlmessage_1543900851_themes_0\";s:92:\"The file was found locally and matched the recorded size from the backup history (7269.9 KB)\";s:7:\"service\";a:1:{i:0;s:4:\"none\";}s:26:\"dlfile_1543900851_themes_0\";s:152:\"downloaded:7444361:/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/updraft/backup_2018-12-04-1220_MM_Shoes_547bef29d244-themes.zip\";}","no"),
("2354","updraft_jobdata_5c060eb30512","a:5:{s:8:\"job_type\";s:8:\"download\";s:11:\"job_time_ms\";d:1543901417.913834;s:30:\"dlmessage_1543900851_uploads_0\";s:92:\"The file was found locally and matched the recorded size from the backup history (6538.3 KB)\";s:7:\"service\";a:1:{i:0;s:4:\"none\";}s:27:\"dlfile_1543900851_uploads_0\";s:153:\"downloaded:6695193:/home/tppone/domains/tppone.com/public_html/demo/babyshop2/wp-content/updraft/backup_2018-12-04-1220_MM_Shoes_547bef29d244-uploads.zip\";}","no"),
("2387","updraft_jobdata_4a06fab3c8b7","a:2:{s:8:\"job_type\";s:6:\"delete\";s:11:\"job_time_ms\";d:1543901646.971554;}","no"),
("3117","woocommerce_db_version","3.5.2","yes"),
("3122","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("3152","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("3153","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("3179","show_comments_cookies_opt_in","1","yes"),
("3180","db_upgraded","","yes"),
("3195","can_compress_scripts","0","no"),
("3204","dbprefix_old_dbprefix","wp_","yes"),
("3205","dbprefix_new","bz_","yes"),
("3232","_transient_shipping-transient-version","1557027400","yes"),
("3235","_transient_product-transient-version","1557027400","yes"),
("3236","_transient_timeout_wc_product_children_199","1559619400","no"),
("3237","_transient_wc_product_children_199","a:2:{s:3:\"all\";a:9:{i:0;i:325;i:1;i:326;i:2;i:327;i:3;i:328;i:4;i:329;i:5;i:330;i:6;i:331;i:7;i:332;i:8;i:333;}s:7:\"visible\";a:9:{i:0;i:325;i:1;i:326;i:2;i:327;i:3;i:328;i:4;i:329;i:5;i:330;i:6;i:331;i:7;i:332;i:8;i:333;}}","no"),
("3238","_transient_timeout_wc_var_prices_199","1559723944","no"),
("3239","_transient_wc_var_prices_199","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"},\"regular_price\":{\"325\":\"250000\",\"326\":\"250000\",\"327\":\"250000\",\"328\":\"250000\",\"329\":\"250000\",\"330\":\"250000\",\"331\":\"250000\",\"332\":\"250000\",\"333\":\"250000\"},\"sale_price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"},\"regular_price\":{\"325\":\"250000\",\"326\":\"250000\",\"327\":\"250000\",\"328\":\"250000\",\"329\":\"250000\",\"330\":\"250000\",\"331\":\"250000\",\"332\":\"250000\",\"333\":\"250000\"},\"sale_price\":{\"325\":\"110000\",\"326\":\"110000\",\"327\":\"110000\",\"328\":\"110000\",\"329\":\"110000\",\"330\":\"110000\",\"331\":\"110000\",\"332\":\"110000\",\"333\":\"110000\"}}}","no"),
("3240","_transient_timeout_wc_product_children_169","1559619400","no"),
("3241","_transient_wc_product_children_169","a:2:{s:3:\"all\";a:1:{i:0;i:549;}s:7:\"visible\";a:1:{i:0;i:549;}}","no"),
("3242","_transient_timeout_wc_var_prices_169","1559723944","no"),
("3243","_transient_wc_var_prices_169","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"549\":\"150000\"},\"regular_price\":{\"549\":\"350000\"},\"sale_price\":{\"549\":\"150000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"549\":\"150000\"},\"regular_price\":{\"549\":\"350000\"},\"sale_price\":{\"549\":\"150000\"}}}","no"),
("3244","_transient_timeout_wc_product_children_167","1559619401","no"),
("3245","_transient_wc_product_children_167","a:2:{s:3:\"all\";a:6:{i:0;i:539;i:1;i:540;i:2;i:541;i:3;i:542;i:4;i:543;i:5;i:544;}s:7:\"visible\";a:6:{i:0;i:539;i:1;i:540;i:2;i:541;i:3;i:542;i:4;i:543;i:5;i:544;}}","no"),
("3246","_transient_timeout_wc_var_prices_167","1559723944","no"),
("3247","_transient_wc_var_prices_167","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"},\"regular_price\":{\"539\":\"350000\",\"540\":\"350000\",\"541\":\"350000\",\"542\":\"350000\",\"543\":\"350000\",\"544\":\"350000\"},\"sale_price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"},\"regular_price\":{\"539\":\"350000\",\"540\":\"350000\",\"541\":\"350000\",\"542\":\"350000\",\"543\":\"350000\",\"544\":\"350000\"},\"sale_price\":{\"539\":\"250000\",\"540\":\"250000\",\"541\":\"250000\",\"542\":\"250000\",\"543\":\"250000\",\"544\":\"250000\"}}}","no"),
("3248","_transient_timeout_wc_product_children_160","1559619402","no"),
("3249","_transient_wc_product_children_160","a:2:{s:3:\"all\";a:4:{i:0;i:545;i:1;i:546;i:2;i:547;i:3;i:548;}s:7:\"visible\";a:4:{i:0;i:545;i:1;i:546;i:2;i:547;i:3;i:548;}}","no"),
("3250","_transient_timeout_wc_var_prices_160","1559723944","no"),
("3251","_transient_wc_var_prices_160","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"},\"regular_price\":{\"545\":\"230000\",\"546\":\"230000\",\"547\":\"230000\",\"548\":\"230000\"},\"sale_price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"},\"regular_price\":{\"545\":\"230000\",\"546\":\"230000\",\"547\":\"230000\",\"548\":\"230000\"},\"sale_price\":{\"545\":\"210000\",\"546\":\"210000\",\"547\":\"210000\",\"548\":\"210000\"}}}","no"),
("3252","_transient_timeout_wc_product_children_156","1559619402","no"),
("3253","_transient_wc_product_children_156","a:2:{s:3:\"all\";a:1:{i:0;i:550;}s:7:\"visible\";a:1:{i:0;i:550;}}","no"),
("3254","_transient_timeout_wc_var_prices_156","1559723944","no"),
("3255","_transient_wc_var_prices_156","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"550\":\"200000\"},\"regular_price\":{\"550\":\"260000\"},\"sale_price\":{\"550\":\"200000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"550\":\"200000\"},\"regular_price\":{\"550\":\"260000\"},\"sale_price\":{\"550\":\"200000\"}}}","no"),
("3256","_transient_timeout_wc_product_children_154","1559619402","no"),
("3257","_transient_wc_product_children_154","a:2:{s:3:\"all\";a:9:{i:0;i:530;i:1;i:531;i:2;i:532;i:3;i:533;i:4;i:534;i:5;i:535;i:6;i:536;i:7;i:537;i:8;i:538;}s:7:\"visible\";a:9:{i:0;i:530;i:1;i:531;i:2;i:532;i:3;i:533;i:4;i:534;i:5;i:535;i:6;i:536;i:7;i:537;i:8;i:538;}}","no"),
("3258","_transient_timeout_wc_var_prices_154","1559723944","no"),
("3259","_transient_wc_var_prices_154","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"},\"regular_price\":{\"530\":\"250000\",\"531\":\"250000\",\"532\":\"250000\",\"533\":\"250000\",\"534\":\"250000\",\"535\":\"250000\",\"536\":\"250000\",\"537\":\"250000\",\"538\":\"250000\"},\"sale_price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"},\"regular_price\":{\"530\":\"250000\",\"531\":\"250000\",\"532\":\"250000\",\"533\":\"250000\",\"534\":\"250000\",\"535\":\"250000\",\"536\":\"250000\",\"537\":\"250000\",\"538\":\"250000\"},\"sale_price\":{\"530\":\"230000\",\"531\":\"230000\",\"532\":\"230000\",\"533\":\"230000\",\"534\":\"230000\",\"535\":\"230000\",\"536\":\"230000\",\"537\":\"230000\",\"538\":\"230000\"}}}","no"),
("3260","_transient_timeout_wc_product_children_201","1559619402","no"),
("3261","_transient_wc_product_children_201","a:2:{s:3:\"all\";a:2:{i:0;i:400;i:1;i:401;}s:7:\"visible\";a:2:{i:0;i:400;i:1;i:401;}}","no"),
("3262","_transient_timeout_wc_var_prices_201","1559723944","no"),
("3263","_transient_wc_var_prices_201","{\"version\":\"1557027400\",\"28af0580393dd8b2bd0befb8f127c431\":{\"price\":{\"400\":\"120000\",\"401\":\"120000\"},\"regular_price\":{\"400\":\"250000\",\"401\":\"250000\"},\"sale_price\":{\"400\":\"120000\",\"401\":\"120000\"}},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"400\":\"120000\",\"401\":\"120000\"},\"regular_price\":{\"400\":\"250000\",\"401\":\"250000\"},\"sale_price\":{\"400\":\"120000\",\"401\":\"120000\"}}}","no"),
("3267","_transient_timeout_wc_shipping_method_count_1_1557027400","1559619434","no"),
("3268","_transient_wc_shipping_method_count_1_1557027400","0","no"),
("3280","_transient_timeout_wc_low_stock_count","1559619923","no"),
("3281","_transient_wc_low_stock_count","0","no"),
("3282","_transient_timeout_wc_outofstock_count","1559619923","no"),
("3283","_transient_wc_outofstock_count","0","no"),
("3368","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("3371","woocommerce_allow_bulk_remove_personal_data","no","no"),
("3372","woocommerce_show_marketplace_suggestions","yes","no"),
("3373","woocommerce_version","3.6.2","yes"),
("3375","_transient_wc_attribute_taxonomies","a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:4:\"name\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:4:\"name\";s:16:\"attribute_public\";s:1:\"1\";}}","yes"),
("3382","_transient_timeout_wc_shipping_method_count_legacy","1559723944","no"),
("3383","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557027400\";s:5:\"value\";i:0;}","no"),
("3401","recovery_keys","a:0:{}","yes"),
("3415","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557938435;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("3416","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557938438;s:7:\"checked\";a:2:{s:8:\"babyshop\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("3443","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557938438;s:7:\"checked\";a:5:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:31:\"muahangnhanh/dinhhien_web79.php\";s:5:\"1.3.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:37:\"woocommerce-products-filter/index.php\";s:5:\"2.1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"woocommerce-products-filter/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-filter\";s:4:\"slug\";s:27:\"woocommerce-products-filter\";s:6:\"plugin\";s:37:\"woocommerce-products-filter/index.php\";s:11:\"new_version\";s:7:\"1.2.2.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-filter/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-128x128.png?rev=1208072\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=2071519\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("3490","_transient_timeout_wc_term_counts","1560261304","no"),
("3491","_transient_wc_term_counts","a:12:{i:21;s:1:\"9\";i:19;s:1:\"2\";i:18;s:2:\"10\";i:48;s:1:\"1\";i:49;s:1:\"4\";i:15;s:1:\"1\";i:23;s:1:\"1\";i:16;s:1:\"2\";i:45;s:1:\"3\";i:46;s:1:\"3\";i:47;s:1:\"1\";i:24;s:1:\"1\";}","no"),
("3492","_transient_timeout_wc_child_has_weight_156","1560261304","no"),
("3493","_transient_wc_child_has_weight_156","0","no"),
("3494","_transient_timeout_wc_child_has_dimensions_156","1560261304","no"),
("3495","_transient_wc_child_has_dimensions_156","0","no"),
("3510","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558322470","no"),
("3511","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("3512","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558322471","no"),
("3513","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("3518","_transient_product_query-transient-version","1557717672","yes"),
("3547","_site_transient_timeout_theme_roots","1557940237","no"),
("3548","_site_transient_theme_roots","a:2:{s:8:\"babyshop\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3038 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("3","2","_edit_lock","1527957205:1"),
("4","2","_edit_last","1"),
("20","13","_wp_attached_file","2018/06/logo.png"),
("21","13","_wp_attachment_metadata","a:5:{s:5:\"width\";i:157;s:6:\"height\";i:32;s:4:\"file\";s:16:\"2018/06/logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x32.png\";s:5:\"width\";i:100;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x32.png\";s:5:\"width\";i:150;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("22","14","_wp_attached_file","2018/06/123-01.png"),
("23","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:139;s:6:\"height\";i:139;s:4:\"file\";s:18:\"2018/06/123-01.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"123-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("24","15","_wp_attached_file","2018/06/cropped-123-01.png"),
("25","15","_wp_attachment_context","site-icon"),
("26","15","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2018/06/cropped-123-01.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-123-01-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-123-01-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("188","69","_edit_last","1"),
("189","69","_edit_lock","1527955367:1"),
("191","74","_wp_attached_file","2018/06/icon-phone.jpg"),
("192","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:15;s:6:\"height\";i:16;s:4:\"file\";s:22:\"2018/06/icon-phone.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("193","79","_wp_attached_file","2018/06/icon-map.jpg"),
("194","79","_wp_attachment_metadata","a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:20:\"2018/06/icon-map.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("195","87","_wp_attached_file","2018/06/icon-phone-1.jpg"),
("196","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:24:\"2018/06/icon-phone-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("197","90","_wp_attached_file","2018/06/icon-pay.jpg"),
("198","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:20:\"2018/06/icon-pay.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("224","2","_footer","normal"),
("226","108","_wp_attached_file","2018/06/slider2.jpg"),
("227","108","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:220;s:4:\"file\";s:19:\"2018/06/slider2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider2-598x220.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x141.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x188.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x110.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"slider2-598x220.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x110.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("228","109","_wp_attached_file","2018/06/slider3.jpg"),
("229","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:220;s:4:\"file\";s:19:\"2018/06/slider3.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider3-598x220.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x141.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x188.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x110.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"slider3-598x220.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x110.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("243","121","_wc_review_count","0"),
("244","121","_wc_rating_count","a:0:{}"),
("245","121","_wc_average_rating","0"),
("246","121","_edit_last","1"),
("247","121","_edit_lock","1527956352:1"),
("248","122","_wp_attached_file","2018/06/product1.jpg"),
("249","122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:206;s:6:\"height\";i:207;s:4:\"file\";s:20:\"2018/06/product1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("250","121","_thumbnail_id","122"),
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
("273","121","_product_image_gallery","122"),
("274","121","_download_limit","-1"),
("275","121","_download_expiry","-1"),
("276","121","_stock",""),
("277","121","_stock_status","instock"),
("278","121","_product_version","3.4.1"),
("279","121","_price","120000"),
("336","150","_wc_review_count","0"),
("337","150","_wc_rating_count","a:0:{}"),
("338","150","_wc_average_rating","0"),
("339","150","_edit_last","1"),
("340","150","_edit_lock","1527957199:1"),
("341","151","_wp_attached_file","2018/06/product2.jpg"),
("342","151","_wp_attachment_metadata","a:5:{s:5:\"width\";i:208;s:6:\"height\";i:209;s:4:\"file\";s:20:\"2018/06/product2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("343","150","_thumbnail_id","151"),
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
("366","150","_product_image_gallery","151"),
("367","150","_download_limit","-1"),
("368","150","_download_expiry","-1"),
("369","150","_stock",""),
("370","150","_stock_status","instock"),
("371","150","_product_version","3.4.1"),
("372","150","_price","250000");
INSERT INTO bz_postmeta VALUES
("373","152","_wc_review_count","0"),
("374","152","_wc_rating_count","a:0:{}"),
("375","152","_wc_average_rating","0"),
("376","152","_edit_last","1"),
("377","152","_edit_lock","1527957271:1"),
("378","153","_wp_attached_file","2018/06/product3.jpg"),
("379","153","_wp_attachment_metadata","a:5:{s:5:\"width\";i:204;s:6:\"height\";i:205;s:4:\"file\";s:20:\"2018/06/product3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("380","152","_thumbnail_id","153"),
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
("403","152","_product_image_gallery","153"),
("404","152","_download_limit","-1"),
("405","152","_download_expiry","-1"),
("406","152","_stock",""),
("407","152","_stock_status","instock"),
("408","152","_product_version","3.4.1"),
("409","152","_price","250000"),
("410","154","_wc_review_count","0"),
("411","154","_wc_rating_count","a:0:{}"),
("412","154","_wc_average_rating","0"),
("413","154","_edit_last","1"),
("414","154","_edit_lock","1528042059:1"),
("415","155","_wp_attached_file","2018/06/product5.jpg"),
("416","155","_wp_attachment_metadata","a:5:{s:5:\"width\";i:207;s:6:\"height\";i:207;s:4:\"file\";s:20:\"2018/06/product5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("417","154","_thumbnail_id","155"),
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
("440","154","_product_image_gallery","155"),
("441","154","_download_limit","-1"),
("442","154","_download_expiry","-1"),
("443","154","_stock",""),
("444","154","_stock_status","instock"),
("445","154","_product_version","3.4.1"),
("447","156","_wc_review_count","0"),
("448","156","_wc_rating_count","a:0:{}"),
("449","156","_wc_average_rating","0"),
("450","156","_edit_last","1"),
("451","156","_edit_lock","1543333616:1"),
("452","157","_wp_attached_file","2018/06/product6.jpg"),
("453","157","_wp_attachment_metadata","a:5:{s:5:\"width\";i:209;s:6:\"height\";i:209;s:4:\"file\";s:20:\"2018/06/product6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("454","156","_thumbnail_id","157"),
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
("473","156","_purchase_note","");
INSERT INTO bz_postmeta VALUES
("474","156","_default_attributes","a:0:{}"),
("475","156","_virtual","no"),
("476","156","_downloadable","no"),
("477","156","_product_image_gallery","157"),
("478","156","_download_limit","-1"),
("479","156","_download_expiry","-1"),
("480","156","_stock",""),
("481","156","_stock_status","instock"),
("482","156","_product_version","3.5.1"),
("484","2","_thumbnail_id",""),
("485","160","_wc_review_count","0"),
("486","160","_wc_rating_count","a:0:{}"),
("487","160","_wc_average_rating","0"),
("488","160","_edit_last","1"),
("489","160","_edit_lock","1528042316:1"),
("490","161","_wp_attached_file","2018/06/quandaido.jpg"),
("491","161","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2018/06/quandaido.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"quandaido-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"quandaido-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"quandaido-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"quandaido-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"quandaido-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"quandaido-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"quandaido-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"quandaido-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"quandaido-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("492","160","_thumbnail_id","161"),
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
("515","160","_product_image_gallery","161"),
("516","160","_download_limit","-1"),
("517","160","_download_expiry","-1"),
("518","160","_stock",""),
("519","160","_stock_status","instock"),
("520","160","_product_version","3.4.1"),
("532","167","_wc_review_count","0"),
("533","167","_wc_rating_count","a:0:{}"),
("534","167","_wc_average_rating","0"),
("535","167","_edit_last","1"),
("536","167","_edit_lock","1528042162:1"),
("537","168","_wp_attached_file","2018/06/AOTHUNTRUSOCDEN2.jpg"),
("538","168","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2018/06/AOTHUNTRUSOCDEN2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"AOTHUNTRUSOCDEN2-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("539","167","_thumbnail_id","168"),
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
("562","167","_product_image_gallery","168"),
("563","167","_download_limit","-1"),
("564","167","_download_expiry","-1"),
("565","167","_stock",""),
("566","167","_stock_status","instock"),
("567","167","_product_version","3.4.1"),
("569","169","_wc_review_count","0"),
("570","169","_wc_rating_count","a:0:{}"),
("571","169","_wc_average_rating","0"),
("572","169","_edit_last","1"),
("573","169","_edit_lock","1528042390:1"),
("574","170","_wp_attached_file","2018/06/SETMEOHONG.jpg"),
("575","170","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/06/SETMEOHONG.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"SETMEOHONG-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"SETMEOHONG-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"SETMEOHONG-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("576","169","_thumbnail_id","170"),
("577","169","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("578","169","_sku",""),
("579","169","_regular_price","250000"),
("580","169","_sale_price","150000"),
("581","169","_sale_price_dates_from",""),
("582","169","_sale_price_dates_to",""),
("583","169","total_sales","0"),
("584","169","_tax_status","taxable"),
("585","169","_tax_class",""),
("586","169","_manage_stock","no");
INSERT INTO bz_postmeta VALUES
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
("600","169","_download_limit","-1"),
("601","169","_download_expiry","-1"),
("602","169","_stock",""),
("603","169","_stock_status","instock"),
("604","169","_product_version","3.4.1"),
("606","177","_wp_attached_file","2018/06/bannerr1.jpg"),
("607","177","_wp_attachment_metadata","a:5:{s:5:\"width\";i:590;s:6:\"height\";i:165;s:4:\"file\";s:20:\"2018/06/bannerr1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bannerr1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bannerr1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"bannerr1-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"bannerr1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"bannerr1-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"bannerr1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("608","178","_wp_attached_file","2018/06/banner2.jpg"),
("609","178","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/06/banner2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner2-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("636","199","_wc_review_count","0"),
("637","199","_wc_rating_count","a:0:{}"),
("638","199","_wc_average_rating","0"),
("639","199","_edit_last","1"),
("640","199","_edit_lock","1528024950:1"),
("641","200","_wp_attached_file","2018/06/BOKATEBEOTANGDEN.jpg"),
("642","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:484;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2018/06/BOKATEBEOTANGDEN.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-484x598.jpg\";s:5:\"width\";i:484;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-242x300.jpg\";s:5:\"width\";i:242;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-484x598.jpg\";s:5:\"width\";i:484;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"BOKATEBEOTANGDEN-484x598.jpg\";s:5:\"width\";i:484;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("643","199","_thumbnail_id","304"),
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
("671","199","_product_version","3.4.1"),
("673","201","_wc_review_count","0"),
("674","201","_wc_rating_count","a:0:{}"),
("675","201","_wc_average_rating","0"),
("676","201","_edit_last","1"),
("677","201","_edit_lock","1528019675:1"),
("678","202","_wp_attached_file","2018/06/SETAOLINENBEODO.jpg"),
("679","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2018/06/SETAOLINENBEODO.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"SETAOLINENBEODO-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"SETAOLINENBEODO-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:27:\"SETAOLINENBEODO-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("680","201","_thumbnail_id","202"),
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
("703","201","_product_image_gallery","202"),
("704","201","_download_limit","-1"),
("705","201","_download_expiry","-1"),
("706","201","_stock",""),
("707","201","_stock_status","instock"),
("708","201","_product_version","3.4.1"),
("744","224","_edit_last","1"),
("745","224","_edit_lock","1527960058:1"),
("747","244","_wp_attached_file","2018/06/sp-dich-vu-vang.png"),
("748","244","_wp_attachment_metadata","a:5:{s:5:\"width\";i:148;s:6:\"height\";i:58;s:4:\"file\";s:27:\"2018/06/sp-dich-vu-vang.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"sp-dich-vu-vang-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"sp-dich-vu-vang-100x58.png\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("749","245","_wp_attached_file","2018/06/thong-bao-bo-cong-thuong.jpg"),
("750","245","_wp_attachment_metadata","a:5:{s:5:\"width\";i:148;s:6:\"height\";i:58;s:4:\"file\";s:36:\"2018/06/thong-bao-bo-cong-thuong.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"thong-bao-bo-cong-thuong-100x58.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"thong-bao-bo-cong-thuong-100x58.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:58;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("770","224","_thumbnail_id",""),
("781","265","_wp_attached_file","2018/06/banner4.jpg"),
("782","265","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/06/banner4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner4-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner4-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner4-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("783","267","_wp_attached_file","2018/06/banner5.jpg"),
("784","267","_wp_attachment_metadata","a:5:{s:5:\"width\";i:592;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2018/06/banner5.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner5-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner5-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner5-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("790","272","_edit_last","1"),
("791","272","_edit_lock","1528002525:1"),
("792","272","_thumbnail_id",""),
("823","303","_wp_attached_file","2018/06/back-22.png"),
("824","303","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:124;s:4:\"file\";s:19:\"2018/06/back-22.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"back-22-150x124.png\";s:5:\"width\";i:150;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"back-22-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"back-22-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("825","303","_edit_lock","1528003471:1"),
("828","304","_wp_attached_file","2018/06/New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640.jpg"),
("829","304","_wp_attachment_metadata","a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:122:\"2018/06/New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-598x598.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:598;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:122:\"New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("893","325","_purchase_note",""),
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
("960","327","_height","");
INSERT INTO bz_postmeta VALUES
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
("993","328","_length",""),
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
("1060","330","_backorders","no");
INSERT INTO bz_postmeta VALUES
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
("1093","331","_tax_class","parent"),
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
("1160","333","_sale_price_dates_to","");
INSERT INTO bz_postmeta VALUES
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
("1349","400","_sku",""),
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
("1416","401","_price","120000");
INSERT INTO bz_postmeta VALUES
("1417","401","_product_version","3.4.1"),
("1493","201","_price","120000"),
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
("1718","530","_sale_price","230000"),
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
("1793","532","_tax_class","parent");
INSERT INTO bz_postmeta VALUES
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
("1818","532","_price","230000"),
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
("1893","535","_sale_price","230000");
INSERT INTO bz_postmeta VALUES
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
("1918","535","_wc_rating_count","a:0:{}"),
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
("1993","537","_price","230000");
INSERT INTO bz_postmeta VALUES
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
("2018","538","_download_limit","-1"),
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
("2096","540","_stock_status","instock");
INSERT INTO bz_postmeta VALUES
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
("2121","541","_upsell_ids","a:0:{}"),
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
("2196","543","_downloadable","no");
INSERT INTO bz_postmeta VALUES
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
("2221","544","_sold_individually","no"),
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
("2299","546","_width","");
INSERT INTO bz_postmeta VALUES
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
("2324","547","_sale_price_dates_from",""),
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
("2402","549","_tax_status","taxable");
INSERT INTO bz_postmeta VALUES
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
("2427","549","attribute_pa_mau-sac","den"),
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
("2545","585","_wp_attached_file","2018/11/logo.png"),
("2546","585","_wp_attachment_metadata","a:5:{s:5:\"width\";i:481;s:6:\"height\";i:131;s:4:\"file\";s:16:\"2018/11/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x131.png\";s:5:\"width\";i:150;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2549","587","_wp_attached_file","2018/11/cropped-logo.png"),
("2550","587","_wp_attachment_context","site-icon"),
("2551","587","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/11/cropped-logo.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2580","601","_menu_item_type","post_type"),
("2581","601","_menu_item_menu_item_parent","0"),
("2582","601","_menu_item_object_id","43"),
("2583","601","_menu_item_object","page"),
("2584","601","_menu_item_target",""),
("2585","601","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2586","601","_menu_item_xfn",""),
("2587","601","_menu_item_url",""),
("2589","602","_menu_item_type","post_type"),
("2590","602","_menu_item_menu_item_parent","0"),
("2591","602","_menu_item_object_id","42"),
("2592","602","_menu_item_object","page"),
("2593","602","_menu_item_target",""),
("2594","602","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2595","602","_menu_item_xfn",""),
("2596","602","_menu_item_url",""),
("2598","603","_menu_item_type","post_type"),
("2599","603","_menu_item_menu_item_parent","0"),
("2600","603","_menu_item_object_id","41"),
("2601","603","_menu_item_object","page"),
("2602","603","_menu_item_target",""),
("2603","603","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2604","603","_menu_item_xfn",""),
("2605","603","_menu_item_url",""),
("2607","604","_menu_item_type","post_type"),
("2608","604","_menu_item_menu_item_parent","0"),
("2609","604","_menu_item_object_id","40"),
("2610","604","_menu_item_object","page"),
("2611","604","_menu_item_target",""),
("2612","604","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO bz_postmeta VALUES
("2613","604","_menu_item_xfn",""),
("2614","604","_menu_item_url",""),
("2666","630","_menu_item_type","custom"),
("2667","630","_menu_item_menu_item_parent","0"),
("2668","630","_menu_item_object_id","630"),
("2669","630","_menu_item_object","custom"),
("2670","630","_menu_item_target",""),
("2671","630","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2672","630","_menu_item_xfn",""),
("2673","630","_menu_item_url","/danh-muc/giay-dep-be-trai/"),
("2675","631","_menu_item_type","custom"),
("2676","631","_menu_item_menu_item_parent","0"),
("2677","631","_menu_item_object_id","631"),
("2678","631","_menu_item_object","custom"),
("2679","631","_menu_item_target",""),
("2680","631","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2681","631","_menu_item_xfn",""),
("2682","631","_menu_item_url","/danh-muc/giay-dep-be-gai/"),
("2684","632","_menu_item_type","custom"),
("2685","632","_menu_item_menu_item_parent","0"),
("2686","632","_menu_item_object_id","632"),
("2687","632","_menu_item_object","custom"),
("2688","632","_menu_item_target",""),
("2689","632","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2690","632","_menu_item_xfn",""),
("2691","632","_menu_item_url","#"),
("2693","633","_menu_item_type","custom"),
("2694","633","_menu_item_menu_item_parent","632"),
("2695","633","_menu_item_object_id","633"),
("2696","633","_menu_item_object","custom"),
("2697","633","_menu_item_target",""),
("2698","633","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2699","633","_menu_item_xfn",""),
("2700","633","_menu_item_url","/danh-muc/san-pham/bot-giay-co-cao-tre-em/"),
("2702","634","_menu_item_type","custom"),
("2703","634","_menu_item_menu_item_parent","632"),
("2704","634","_menu_item_object_id","634"),
("2705","634","_menu_item_object","custom"),
("2706","634","_menu_item_target",""),
("2707","634","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2708","634","_menu_item_xfn",""),
("2709","634","_menu_item_url","/danh-muc/san-pham/dep-sandal-be-gai/"),
("2711","635","_menu_item_type","custom"),
("2712","635","_menu_item_menu_item_parent","632"),
("2713","635","_menu_item_object_id","635"),
("2714","635","_menu_item_object","custom"),
("2715","635","_menu_item_target",""),
("2716","635","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2717","635","_menu_item_xfn",""),
("2718","635","_menu_item_url","/san-pham/giay-be-gai/"),
("2720","636","_menu_item_type","custom"),
("2721","636","_menu_item_menu_item_parent","632"),
("2722","636","_menu_item_object_id","636"),
("2723","636","_menu_item_object","custom"),
("2724","636","_menu_item_target",""),
("2725","636","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2726","636","_menu_item_xfn",""),
("2727","636","_menu_item_url","/danh-muc/san-pham/giay-be-trai/"),
("2729","637","_menu_item_type","custom"),
("2730","637","_menu_item_menu_item_parent","632"),
("2731","637","_menu_item_object_id","637"),
("2732","637","_menu_item_object","custom"),
("2733","637","_menu_item_target",""),
("2734","637","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2735","637","_menu_item_xfn",""),
("2736","637","_menu_item_url","/danh-muc/san-pham/giay-hoc-sinh/"),
("2738","638","_menu_item_type","custom"),
("2739","638","_menu_item_menu_item_parent","632"),
("2740","638","_menu_item_object_id","638"),
("2741","638","_menu_item_object","custom"),
("2742","638","_menu_item_target",""),
("2743","638","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2744","638","_menu_item_xfn",""),
("2745","638","_menu_item_url","/danh-muc/san-pham/giay-tap-di/"),
("2747","639","_menu_item_type","custom"),
("2748","639","_menu_item_menu_item_parent","632"),
("2749","639","_menu_item_object_id","639"),
("2750","639","_menu_item_object","custom"),
("2751","639","_menu_item_target",""),
("2752","639","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2753","639","_menu_item_xfn",""),
("2754","639","_menu_item_url","/danh-muc/san-pham/giay-the-thao-tre-em/"),
("2756","640","_menu_item_type","custom"),
("2757","640","_menu_item_menu_item_parent","632"),
("2758","640","_menu_item_object_id","640"),
("2759","640","_menu_item_object","custom"),
("2760","640","_menu_item_target",""),
("2761","640","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2762","640","_menu_item_xfn",""),
("2763","640","_menu_item_url","/danh-muc/san-pham/giay-trang-cho-be/"),
("2765","641","_menu_item_type","custom"),
("2766","641","_menu_item_menu_item_parent","632"),
("2767","641","_menu_item_object_id","641"),
("2768","641","_menu_item_object","custom"),
("2769","641","_menu_item_target",""),
("2770","641","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2771","641","_menu_item_xfn",""),
("2772","641","_menu_item_url","/danh-muc/san-pham/sandal-dep-di-bien-cho-be/"),
("2774","642","_menu_item_type","custom"),
("2775","642","_menu_item_menu_item_parent","632");
INSERT INTO bz_postmeta VALUES
("2776","642","_menu_item_object_id","642"),
("2777","642","_menu_item_object","custom"),
("2778","642","_menu_item_target",""),
("2779","642","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2780","642","_menu_item_xfn",""),
("2781","642","_menu_item_url","/danh-muc/san-pham/tat-vo-tre-em/"),
("2783","643","_menu_item_type","custom"),
("2784","643","_menu_item_menu_item_parent","0"),
("2785","643","_menu_item_object_id","643"),
("2786","643","_menu_item_object","custom"),
("2787","643","_menu_item_target",""),
("2788","643","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2789","643","_menu_item_xfn",""),
("2790","643","_menu_item_url","#"),
("2792","644","_menu_item_type","custom"),
("2793","644","_menu_item_menu_item_parent","0"),
("2794","644","_menu_item_object_id","644"),
("2795","644","_menu_item_object","custom"),
("2796","644","_menu_item_target",""),
("2797","644","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2798","644","_menu_item_xfn",""),
("2799","644","_menu_item_url","#"),
("2810","646","_menu_item_type","custom"),
("2811","646","_menu_item_menu_item_parent","0"),
("2812","646","_menu_item_object_id","646"),
("2813","646","_menu_item_object","custom"),
("2814","646","_menu_item_target",""),
("2815","646","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2816","646","_menu_item_xfn",""),
("2817","646","_menu_item_url","/"),
("2819","647","_edit_last","1"),
("2820","647","_footer","normal"),
("2821","647","_wp_page_template","page-right-sidebar.php"),
("2822","647","_edit_lock","1543336851:1"),
("2823","649","_menu_item_type","custom"),
("2824","649","_menu_item_menu_item_parent","0"),
("2825","649","_menu_item_object_id","649"),
("2826","649","_menu_item_object","custom"),
("2827","649","_menu_item_target",""),
("2828","649","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2829","649","_menu_item_xfn",""),
("2830","649","_menu_item_url","/gioi-thieu/"),
("2853","660","_wp_attached_file","2018/11/Untitled-1.png"),
("2854","660","_wp_attachment_metadata","a:5:{s:5:\"width\";i:481;s:6:\"height\";i:131;s:4:\"file\";s:22:\"2018/11/Untitled-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-1-150x131.png\";s:5:\"width\";i:150;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Untitled-1-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2857","663","_wp_attached_file","2018/11/sd.jpg"),
("2858","663","_wp_attachment_metadata","a:5:{s:5:\"width\";i:403;s:6:\"height\";i:255;s:4:\"file\";s:14:\"2018/11/sd.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"sd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"sd-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"sd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"sd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2869","671","_wp_attached_file","2018/11/BANNER2.jpg"),
("2870","671","_wp_attachment_metadata","a:5:{s:5:\"width\";i:403;s:6:\"height\";i:255;s:4:\"file\";s:19:\"2018/11/BANNER2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"BANNER2-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2871","673","_wp_attached_file","2018/11/BANNER3.jpg"),
("2872","673","_wp_attachment_metadata","a:5:{s:5:\"width\";i:403;s:6:\"height\";i:255;s:4:\"file\";s:19:\"2018/11/BANNER3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"BANNER3-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2877","156","_low_stock_amount",""),
("2888","698","_wp_attached_file","2018/11/email.jpg"),
("2889","698","_wp_attachment_metadata","a:5:{s:5:\"width\";i:108;s:6:\"height\";i:71;s:4:\"file\";s:17:\"2018/11/email.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"email-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"email-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2890","702","_form","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]"),
("2891","702","_mail","a:8:{s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:45:\"[your-name] <wordpress@babyshop2.webdemo.com>\";s:4:\"body\";s:235:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:9:\"recipient\";s:17:\"demoweb@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("2892","702","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:43:\"M&M Shoes <wordpress@babyshop2.webdemo.com>\";s:4:\"body\";s:160:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: demoweb@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("2893","702","_messages","a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";}"),
("2894","702","_additional_settings",""),
("2895","702","_locale","vi"),
("2896","703","_form","[email email-125 placeholder \"Địa chỉ email...\"]\n[submit \"Thõi dõi khuyến mại\"]"),
("2897","703","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:33:\"<wordpress@babyshop2.webdemo.com>\";s:9:\"recipient\";s:17:\"demoweb@gmail.com\";s:4:\"body\";s:235:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2898","703","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:43:\"M&M Shoes <wordpress@babyshop2.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:160:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:18:\"additional_headers\";s:27:\"Reply-To: demoweb@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2899","703","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("2900","703","_additional_settings",""),
("2901","703","_locale","vi"),
("2903","707","_wp_attached_file","2018/11/bst-deep-ocean-thoi-trang-tre-em-1-1.jpg"),
("2904","707","_wp_attachment_metadata","a:5:{s:5:\"width\";i:670;s:6:\"height\";i:342;s:4:\"file\";s:48:\"2018/11/bst-deep-ocean-thoi-trang-tre-em-1-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-300x153.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-598x342.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-600x306.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-598x342.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:342;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-600x306.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"bst-deep-ocean-thoi-trang-tre-em-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("2921","731","_wp_attached_file","2018/11/footer-bg-pattern.png"),
("2922","731","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:27;s:4:\"file\";s:29:\"2018/11/footer-bg-pattern.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"footer-bg-pattern-150x27.png\";s:5:\"width\";i:150;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"footer-bg-pattern-300x16.png\";s:5:\"width\";i:300;s:6:\"height\";i:16;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"footer-bg-pattern-100x27.png\";s:5:\"width\";i:100;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"footer-bg-pattern-100x27.png\";s:5:\"width\";i:100;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2923","731","_edit_lock","1543335399:1"),
("2960","755","_wp_attached_file","2018/11/icon-3.png"),
("2961","755","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2018/11/icon-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2962","755","_edit_lock","1543336089:1"),
("2963","756","_wp_attached_file","2018/11/phone-icon.png"),
("2964","756","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:22:\"2018/11/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2965","756","_edit_lock","1543336465:1"),
("2981","766","_edit_last","1"),
("2982","766","_edit_lock","1543336995:1"),
("2983","766","_footer","normal"),
("2984","766","_wp_page_template","default"),
("2990","772","_form","[text* text-813 placeholder \"Họ và tên...\"]\n[email email-560 placeholder \"Địa chỉ email...\"]\n[tel* tel-467 placeholder \"Số điện thoại...\"]\n[text text-8134 placeholder \"Địa chỉ của bạn...\"]\n[textarea textarea-754 placeholder \"Nội dung liên hệ...\"]\n[submit \"Gửi liên hệ\"]"),
("2991","772","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:45:\"[your-name] <wordpress@babyshop2.webdemo.com>\";s:9:\"recipient\";s:17:\"demoweb@gmail.com\";s:4:\"body\";s:305:\"Có người mới liên hệ mua hàng qua website:\n- Họ và tên [text-813]\n- Email: [email-560]\n- Điện thoại: [tel-467]\n- Địa chỉ: [text-8134]\n- Nội dung: [textarea-754]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2992","772","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"M&M Shoes \"[your-subject]\"\";s:6:\"sender\";s:43:\"M&M Shoes <wordpress@babyshop2.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:160:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\";s:18:\"additional_headers\";s:27:\"Reply-To: demoweb@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2993","772","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("2994","772","_additional_settings",""),
("2995","772","_locale","vi"),
("2996","772","_config_errors","a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:47:\"Cú pháp không hợp lệ trong mục %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}"),
("2997","773","_menu_item_type","post_type"),
("2998","773","_menu_item_menu_item_parent","0"),
("2999","773","_menu_item_object_id","766"),
("3000","773","_menu_item_object","page"),
("3001","773","_menu_item_target",""),
("3002","773","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3003","773","_menu_item_xfn",""),
("3004","773","_menu_item_url",""),
("3006","766","_thumbnail_id",""),
("3031","791","_wp_attached_file","woocommerce-placeholder.png"),
("3032","791","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3035","793","_edit_lock","1557132188:1"),
("3036","793","_wp_trash_meta_status","publish");
INSERT INTO bz_postmeta VALUES
("3037","793","_wp_trash_meta_time","1557132215");




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
) ENGINE=InnoDB AUTO_INCREMENT=795 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2018-06-02 14:36:34","2018-06-02 14:36:34","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2018-06-02 14:36:34","2018-06-02 14:36:34","","0","https://tppone.com/demo/babyshop2/?p=1","0","post","","1"),
("2","1","2018-06-02 14:36:34","2018-06-02 14:36:34","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-11-27 23:14:33","2018-11-27 16:14:33","","0","https://tppone.com/demo/babyshop2/?page_id=2","0","page","","0"),
("3","1","2018-06-02 14:36:34","2018-06-02 14:36:34","<h2>Who we are</h2><p>Our website address is: https://bizhostvn.com/w/babyshop2.</p><h2>What personal data we collect and why we collect it</h2><h3>Bình luận</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Thư viện</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>","Privacy Policy","","draft","closed","open","","privacy-policy","","","2018-06-02 14:36:34","2018-06-02 14:36:34","","0","https://tppone.com/demo/babyshop2/?page_id=3","0","page","","0"),
("13","1","2018-06-02 21:59:27","2018-06-02 14:59:27","","logo","","inherit","open","closed","","logo","","","2018-06-02 21:59:27","2018-06-02 14:59:27","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/logo.png","0","attachment","image/png","0"),
("14","1","2018-06-02 21:59:54","2018-06-02 14:59:54","","123-01","","inherit","open","closed","","123-01","","","2018-06-02 21:59:54","2018-06-02 14:59:54","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/123-01.png","0","attachment","image/png","0"),
("15","1","2018-06-02 21:59:56","2018-06-02 14:59:56","https://bizhostvn.com/w/babyshop2/wp-content/uploads/2018/06/cropped-123-01.png","cropped-123-01.png","","inherit","open","closed","","cropped-123-01-png","","","2018-06-02 21:59:56","2018-06-02 14:59:56","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/cropped-123-01.png","0","attachment","image/png","0"),
("40","1","2018-06-02 22:17:31","2018-06-02 15:17:31","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://tppone.com/demo/babyshop2/cua-hang/","0","page","","0"),
("41","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://tppone.com/demo/babyshop2/gio-hang/","0","page","","0"),
("42","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://tppone.com/demo/babyshop2/thanh-toan/","0","page","","0"),
("43","1","2018-06-02 22:17:31","2018-06-02 15:17:31","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2018-06-02 22:17:31","2018-06-02 15:17:31","","0","https://tppone.com/demo/babyshop2/tai-khoan/","0","page","","0"),
("69","1","2018-06-02 22:35:35","2018-06-02 15:35:35","[section label=\"after-header-main\" class=\"after-header-main\" bg_color=\"rgb(140, 204, 71)\" padding=\"4px\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"87\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\nHỗ trợ đặt hàng: <span style=\"color: #ed1c24;\"></span>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"79\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\nXem hàng tại: <span style=\"color: #ed1c24;\">Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</span>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"90\" img_width=\"20\" pos=\"left\"]\n\n[gap height=\"4px\"]\n\nHướng dẫn thanh toán\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]","After Header Main","","publish","closed","closed","","after-header-main","","","2018-06-02 22:45:47","2018-06-02 15:45:47","","0","https://tppone.com/demo/babyshop2/?post_type=blocks&#038;p=69","0","blocks","","0"),
("74","1","2018-06-02 22:38:19","2018-06-02 15:38:19","","icon-phone","","inherit","open","closed","","icon-phone","","","2018-06-02 22:38:19","2018-06-02 15:38:19","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/icon-phone.jpg","0","attachment","image/jpeg","0"),
("79","1","2018-06-02 22:40:34","2018-06-02 15:40:34","","icon-map","","inherit","open","closed","","icon-map","","","2018-06-02 22:40:34","2018-06-02 15:40:34","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/icon-map.jpg","0","attachment","image/jpeg","0"),
("87","1","2018-06-02 22:43:04","2018-06-02 15:43:04","","icon-phone","","inherit","open","closed","","icon-phone-2","","","2018-06-02 22:43:04","2018-06-02 15:43:04","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/icon-phone-1.jpg","0","attachment","image/jpeg","0"),
("90","1","2018-06-02 22:44:22","2018-06-02 15:44:22","","icon-pay","","inherit","open","closed","","icon-pay","","","2018-06-02 22:44:22","2018-06-02 15:44:22","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/icon-pay.jpg","0","attachment","image/jpeg","0"),
("108","1","2018-06-02 23:03:50","2018-06-02 16:03:50","","slider2","","inherit","open","closed","","slider2","","","2018-06-02 23:03:50","2018-06-02 16:03:50","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/slider2.jpg","0","attachment","image/jpeg","0"),
("109","1","2018-06-02 23:03:52","2018-06-02 16:03:52","","slider3","","inherit","open","closed","","slider3","","","2018-06-02 23:03:52","2018-06-02 16:03:52","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/slider3.jpg","0","attachment","image/jpeg","0"),
("121","1","2018-06-02 23:16:01","2018-06-02 16:16:01","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Đồ bơi liền quần cho bé trai hình Spiderman","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","do-boi-lien-quan-cho-be-trai-hinh-spiderman","","","2018-06-02 23:19:08","2018-06-02 16:19:08","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=121","0","product","","0"),
("122","1","2018-06-02 23:13:45","2018-06-02 16:13:45","","product1","","inherit","open","closed","","product1","","","2018-06-02 23:13:45","2018-06-02 16:13:45","","121","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/product1.jpg","0","attachment","image/jpeg","0"),
("150","1","2018-06-02 23:35:40","2018-06-02 16:35:40","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Bộ đồ bơi 2 dây liền váy cho bé gái","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","bo-do-boi-2-day-lien-vay-cho-be-gai","","","2018-06-02 23:35:41","2018-06-02 16:35:41","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=150","0","product","","0"),
("151","1","2018-06-02 23:35:29","2018-06-02 16:35:29","","product2","","inherit","open","closed","","product2","","","2018-06-02 23:35:29","2018-06-02 16:35:29","","150","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/product2.jpg","0","attachment","image/jpeg","0"),
("152","1","2018-06-02 23:36:52","2018-06-02 16:36:52","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Đồ bơi liền quần cho bé trai hình Spiderman","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","do-boi-lien-quan-cho-be-trai-hinh-spiderman-2","","","2018-06-02 23:36:52","2018-06-02 16:36:52","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=152","0","product","","0"),
("153","1","2018-06-02 23:36:43","2018-06-02 16:36:43","","product3","","inherit","open","closed","","product3","","","2018-06-02 23:36:43","2018-06-02 16:36:43","","152","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/product3.jpg","0","attachment","image/jpeg","0"),
("154","1","2018-06-02 23:37:58","2018-06-02 16:37:58","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Đầm voan hoa cổ yếm siêu dễ thương","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","dam-voan-hoa-co-yem-sieu-de-thuong","","","2018-06-03 23:09:13","2018-06-03 16:09:13","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=154","0","product","","0"),
("155","1","2018-06-02 23:37:51","2018-06-02 16:37:51","","product5","","inherit","open","closed","","product5","","","2018-06-02 23:37:51","2018-06-02 16:37:51","","154","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/product5.jpg","0","attachment","image/jpeg","0"),
("156","1","2018-06-02 23:39:22","2018-06-02 16:39:22","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","Bộ croptop siêu sành điệu cho bé gái giá tốt","Bố mẹ có ý định mua sắm quần áo về mùa hè, mùa đông thì hãy nhanh chóng ghé mua các mẫu đi nhé, số lượng có hạn nhưng chất liệu và mẫu mã thì rất là ok và được bố mẹ đánh giá tốt đấy nhé!","publish","open","closed","","bo-croptop-sieu-sanh-dieu-cho-be-gai-1-8-tuoi","","","2018-11-27 22:49:19","2018-11-27 15:49:19","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=156","0","product","","0"),
("157","1","2018-06-02 23:39:16","2018-06-02 16:39:16","","product6","","inherit","open","closed","","product6","","","2018-06-02 23:39:16","2018-06-02 16:39:16","","156","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/product6.jpg","0","attachment","image/jpeg","0"),
("160","1","2018-06-02 23:43:17","2018-06-02 16:43:17","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Quần dài chân bo in chữ Yes dễ thương bé trai","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai","","","2018-06-03 23:14:18","2018-06-03 16:14:18","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=160","0","product","","0"),
("161","1","2018-06-02 23:43:09","2018-06-02 16:43:09","","quandaido","","inherit","open","closed","","quandaido","","","2018-06-02 23:43:09","2018-06-02 16:43:09","","160","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/quandaido.jpg","0","attachment","image/jpeg","0"),
("167","1","2018-06-02 23:48:21","2018-06-02 16:48:21","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Quần jeans wash rách lưng thun dễ thương","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai","","","2018-06-03 23:11:39","2018-06-03 16:11:39","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=167","0","product","","0"),
("168","1","2018-06-02 23:48:13","2018-06-02 16:48:13","","AOTHUNTRUSOCDEN2","","inherit","open","closed","","aothuntrusocden2","","","2018-06-02 23:48:13","2018-06-02 16:48:13","","167","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/AOTHUNTRUSOCDEN2.jpg","0","attachment","image/jpeg","0"),
("169","1","2018-06-02 23:49:15","2018-06-02 16:49:15","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Áo thun mèo phối nơ quần jeans giả váy","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","ao-thun-meo-phoi-no-quan-jeans-gia-vay-de-thuong","","","2018-06-03 23:15:32","2018-06-03 16:15:32","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=169","0","product","","0"),
("170","1","2018-06-02 23:49:07","2018-06-02 16:49:07","","SETMEOHONG","","inherit","open","closed","","setmeohong","","","2018-06-02 23:49:07","2018-06-02 16:49:07","","169","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/SETMEOHONG.jpg","0","attachment","image/jpeg","0"),
("177","1","2018-06-02 23:51:52","2018-06-02 16:51:52","","bannerr1","","inherit","open","closed","","bannerr1","","","2018-06-02 23:51:52","2018-06-02 16:51:52","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/bannerr1.jpg","0","attachment","image/jpeg","0"),
("178","1","2018-06-02 23:51:53","2018-06-02 16:51:53","","banner2","","inherit","open","closed","","banner2","","","2018-06-02 23:51:53","2018-06-02 16:51:53","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/banner2.jpg","0","attachment","image/jpeg","0"),
("199","1","2018-06-03 00:02:18","2018-06-02 17:02:18","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Bộ kate hai dây bèo tầng quần bí dễ thương","Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.","publish","open","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai","","","2018-06-03 18:24:24","2018-06-03 11:24:24","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=199","0","product","","0"),
("200","1","2018-06-03 00:02:09","2018-06-02 17:02:09","","BOKATEBEOTANGDEN","","inherit","open","closed","","bokatebeotangden","","","2018-06-03 00:02:09","2018-06-02 17:02:09","","199","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/BOKATEBEOTANGDEN.jpg","0","attachment","image/jpeg","0"),
("201","1","2018-06-03 00:03:26","2018-06-02 17:03:26","- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.\n\n- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.\n\n- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.\n\n- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.\n\n- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.","Set áo linen bèo túi trước quần bí caro dễ thương cho bé gái","Set áo nhún bèo xoè may túi trước quần bí caro cực iu cho bé ngày hè. Áo chất vải linen mềm mát, thoáng thích hợp ngày hè, eo nhún bèo kèm túi kiểu cực iu, phía sau cột dây cổ. quần bí caro chất kate mềm mại, bo thun.","publish","open","closed","","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai","","","2018-06-03 16:56:57","2018-06-03 09:56:57","","0","https://tppone.com/demo/babyshop2/?post_type=product&#038;p=201","0","product","","0"),
("202","1","2018-06-03 00:03:19","2018-06-02 17:03:19","","SETAOLINENBEODO","","inherit","open","closed","","setaolinenbeodo","","","2018-06-03 00:03:19","2018-06-02 17:03:19","","201","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/SETAOLINENBEODO.jpg","0","attachment","image/jpeg","0"),
("224","1","2018-06-03 00:15:10","2018-06-02 17:15:10","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<p><strong><span style=\"font-size: 115%; color: #000000;\">M&amp;M Shoes (Thời trang giày dép cho bé)</span></strong></p>\n<ul>\n<li><span style=\"color: #282828; font-size: 95%;\">Địa chỉ: TM03, tầng 1, CT6, KĐT Văn Khê, Hà Đông </span></li>\n<li><span style=\"color: #282828; font-size: 95%;\">Điện thoại: 0329630512</span></li>\n<li><span style=\"color: #282828; font-size: 95%;\">Fanpage: https://fb.com/demo/</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">STK:  0021001114804</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">Chủ tài khoản: Nguyễn Thị Thu Thuỷ</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">Ngân hàng Vietcombank Chi nhánh Bà Triệu, Hà Nội</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n<div class=\"menu-footer\">\n<ul>\n<li><a href=\"#\" target=\"blank\">Giới thiệu</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-trai/\" target=\"blank\">Giày dép bé trai</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-gai/\" target=\"blank\">Giày dép bé gái</a></li>\n<li><a href=\"#\" target=\"blank\">Chính sách sỉ</a></li>\n<li><a href=\"#\" target=\"blank\">Liên hệ</a></li>\n</ul>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","publish","closed","closed","","footer-section","","","2018-11-27 23:36:44","2018-11-27 16:36:44","","0","https://tppone.com/demo/babyshop2/?post_type=blocks&#038;p=224","0","blocks","","0"),
("244","1","2018-06-03 00:21:33","2018-06-02 17:21:33","","sp-dich-vu-vang","","inherit","open","closed","","sp-dich-vu-vang","","","2018-06-03 00:21:33","2018-06-02 17:21:33","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/sp-dich-vu-vang.png","0","attachment","image/png","0"),
("245","1","2018-06-03 00:21:34","2018-06-02 17:21:34","","thong-bao-bo-cong-thuong","","inherit","open","closed","","thong-bao-bo-cong-thuong","","","2018-06-03 00:21:34","2018-06-02 17:21:34","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/thong-bao-bo-cong-thuong.jpg","0","attachment","image/jpeg","0"),
("265","1","2018-06-03 00:36:26","2018-06-02 17:36:26","","banner4","","inherit","open","closed","","banner4","","","2018-06-03 00:36:26","2018-06-02 17:36:26","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/banner4.jpg","0","attachment","image/jpeg","0"),
("267","1","2018-06-03 00:37:57","2018-06-02 17:37:57","","banner5","","inherit","open","closed","","banner5","","","2018-06-03 00:37:57","2018-06-02 17:37:57","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/banner5.jpg","0","attachment","image/jpeg","0"),
("272","1","2018-06-03 12:11:05","2018-06-03 05:11:05","[section class=\"row1\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n<p>[ux_product_breadcrumbs]</p>\n<pre data-initialized=\"true\" data-gclp-id=\"7\">[ux_product_title]</pre>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_product_gallery]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Custom Product Page","","publish","closed","closed","","custom-product-page","","","2018-06-03 12:17:55","2018-06-03 05:17:55","","0","https://tppone.com/demo/babyshop2/?post_type=blocks&#038;p=272","0","blocks","","0"),
("303","1","2018-06-03 12:26:26","2018-06-03 05:26:26","","back-22","","inherit","open","closed","","back-22","","","2018-06-03 12:26:26","2018-06-03 05:26:26","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/back-22.png","0","attachment","image/png","0"),
("304","1","2018-06-03 12:27:59","2018-06-03 05:27:59","","New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640","","inherit","open","closed","","new-baby-girl-dresses-color-brown-plaid-floral-print-princess-summer-dress-girls-dresses-baby-wear-jpg_640x640","","","2018-06-03 12:27:59","2018-06-03 05:27:59","","199","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/06/New-Baby-Girl-Dresses-Color-Brown-Plaid-Floral-Print-Princess-summer-dress-girls-dresses-Baby-Wear.jpg_640x640.jpg","0","attachment","image/jpeg","0"),
("325","1","2018-06-03 12:45:14","2018-06-03 05:45:14","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đen, Size: Size 1","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","1","product_variation","","0"),
("326","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đen, Size: Size 10","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-2","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","2","product_variation","","0"),
("327","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đen, Size: Size 11","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-3","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","3","product_variation","","0"),
("328","1","2018-06-03 12:45:16","2018-06-03 05:45:16","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đỏ, Size: Size 1","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-4","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","4","product_variation","","0"),
("329","1","2018-06-03 12:45:17","2018-06-03 05:45:17","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đỏ, Size: Size 10","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-5","","","2018-06-03 12:47:22","2018-06-03 05:47:22","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","5","product_variation","","0"),
("330","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Đỏ, Size: Size 11","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-6","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","6","product_variation","","0"),
("331","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Hồng, Size: Size 1","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-7","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","7","product_variation","","0"),
("332","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Hồng, Size: Size 10","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-8","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","8","product_variation","","0"),
("333","1","2018-06-03 12:45:19","2018-06-03 05:45:19","","Bộ kate hai dây bèo tầng quần bí dễ thương","Màu sắc: Hồng, Size: Size 11","publish","closed","closed","","bo-kate-hai-day-beo-tang-quan-bi-de-thuong-9","","","2018-06-03 12:47:21","2018-06-03 05:47:21","","199","https://tppone.com/demo/babyshop2/san-pham/bo-kate-hai-day-beo-tang-quan-bi-de-thuong-cho-be-gai/","9","product_variation","","0"),
("400","1","2018-06-03 16:56:09","2018-06-03 09:56:09","","Set áo linen bèo túi trước quần bí caro dễ thương cho bé gái","Màu sắc: Hồng, Size: Size 10","publish","closed","closed","","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai","","","2018-06-03 16:56:47","2018-06-03 09:56:47","","201","https://tppone.com/demo/babyshop2/san-pham/set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai/","2","product_variation","","0"),
("401","1","2018-06-03 16:56:09","2018-06-03 09:56:09","","Set áo linen bèo túi trước quần bí caro dễ thương cho bé gái","Màu sắc: Hồng, Size: Size 11","publish","closed","closed","","set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai-2","","","2018-06-03 16:56:47","2018-06-03 09:56:47","","201","https://tppone.com/demo/babyshop2/san-pham/set-ao-linen-beo-tui-truoc-quan-bi-caro-de-thuong-cho-be-gai/","3","product_variation","","0"),
("430","1","2018-06-03 17:32:15","2018-06-03 10:32:15","[row style=\"small\" class=\"lien-he-button\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Hotline: \" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" icon=\"icon-phone\" icon_pos=\"left\" link=\"tel:0972939830\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Chat Facebook\" letter_case=\"lowercase\" color=\"success\" radius=\"4\" expand=\"true\" icon=\"icon-facebook\" icon_pos=\"left\" link=\"https://messenger.com/t/demo\" target=\"_blank\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Bản đồ\" letter_case=\"lowercase\" color=\"alert\" radius=\"4\" expand=\"true\" icon=\"icon-map-pin-fill\" icon_pos=\"left\" link=\"https://messenger.com/t/demo\" target=\"_blank\"]\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2018-06-03 17:35:51","2018-06-03 10:35:51","","0","https://tppone.com/demo/babyshop2/?post_type=blocks&#038;p=430","0","blocks","","0"),
("503","1","2018-06-03 21:45:58","2018-06-03 14:45:58","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n<h3 style=\"text-align: center;\">Bé xinh shop - Shop quần áo trẻ em TPHCM</h3>\nCửa hàng quần áo trẻ em Bé xinh là một trong những kênh mua sắm thời trang trẻ em online đã và đang được rất nhiều ông bố, bà mẹ quan tâm, tin tưởng nhất hiện nay. Bởi khi mua sắm tại Bé xinh shop, quý khách không chỉ tiết kiệm được rất nhiều thời gian mà có thể  dễ dàng tìm thấy cho bé đủ các loại quần áo thời trang, phụ kiện chất lượng cao từ sơ sinh đến 15 tuổi dành cho cả bé trai lẫn bé gái.\n\n<strong>Bé xinh shop Cam kết</strong>:\n- Cung cấp các sản phẩm – dịch vụ chất lượng tốt nhất, giá cạnh tranh, dễ mua với dịch vụ chu đáo và thân thiện.\n- Được đổi, trả hàng trong vòng 3 ngày với bất kỳ lý do gì. (Xem chi tiết tại <u><strong>Chính sách đổi – trả hàng</strong></u>).\n- Đội ngũ nhân viên tư vấn nhiệt tình và thân thiện.\n<ul>\n 	<li><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</li>\n 	<li><strong>Điện thoại:</strong> 0972939840</li>\n 	<li><strong>Email:</strong> demoweb@gmail.com</li>\n 	<li><strong>Website:</strong> <a href=\"https://Webdemo.com\">www.Webdemo.com</a> | <a href=\"https://Webdemo.com\">www.demoweb.com</a></li>\n</ul>\n[/col]\n\n[/row]\n\n[/section]","Hướng dẫn thanh toán","","publish","closed","closed","","huong-dan-thanh-toan","","","2018-06-03 21:50:59","2018-06-03 14:50:59","","0","https://tppone.com/demo/babyshop2/?page_id=503","0","page","","0"),
("514","1","2018-06-03 21:51:19","2018-06-03 14:51:19","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n<h3 style=\"text-align: center;\">Bé xinh shop - Shop quần áo trẻ em TPHCM</h3>\nCửa hàng quần áo trẻ em Bé xinh là một trong những kênh mua sắm thời trang trẻ em online đã và đang được rất nhiều ông bố, bà mẹ quan tâm, tin tưởng nhất hiện nay. Bởi khi mua sắm tại Bé xinh shop, quý khách không chỉ tiết kiệm được rất nhiều thời gian mà có thể  dễ dàng tìm thấy cho bé đủ các loại quần áo thời trang, phụ kiện chất lượng cao từ sơ sinh đến 15 tuổi dành cho cả bé trai lẫn bé gái.\n\n<strong>Bé xinh shop Cam kết</strong>:\n- Cung cấp các sản phẩm – dịch vụ chất lượng tốt nhất, giá cạnh tranh, dễ mua với dịch vụ chu đáo và thân thiện.\n- Được đổi, trả hàng trong vòng 3 ngày với bất kỳ lý do gì. (Xem chi tiết tại <u><strong>Chính sách đổi – trả hàng</strong></u>).\n- Đội ngũ nhân viên tư vấn nhiệt tình và thân thiện.\n<ul>\n 	<li><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</li>\n 	<li><strong>Điện thoại:</strong> 0972939840</li>\n 	<li><strong>Email:</strong> demoweb@gmail.com</li>\n 	<li><strong>Website:</strong> <a href=\"https://Webdemo.com\">www.Webdemo.com</a> | <a href=\"https://Webdemo.com\">www.demoweb.com</a></li>\n</ul>\n[/col]\n\n[/row]\n\n[/section]","Phương thức vận chuyển","","publish","closed","closed","","phuong-thuc-van-chuyen","","","2018-06-03 21:51:19","2018-06-03 14:51:19","","0","https://tppone.com/demo/babyshop2/?page_id=514","0","page","","0"),
("516","1","2018-06-03 21:52:34","2018-06-03 14:52:34","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n\nXin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin\n\n[/col]\n\n[/row]\n\n[/section]","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2018-06-03 21:53:23","2018-06-03 14:53:23","","0","https://tppone.com/demo/babyshop2/?page_id=516","0","page","","0"),
("521","1","2018-06-03 21:54:04","2018-06-03 14:54:04","[section padding=\"0px\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" padding=\"10px 20px 10px 20px\"]\n\n[col span__sm=\"12\"]\n\nXin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin\n\n[/col]\n\n[/row]\n\n[/section]","Xuất xứ sản phẩm","","publish","closed","closed","","xuat-xu-san-pham","","","2018-06-03 21:54:23","2018-06-03 14:54:23","","0","https://tppone.com/demo/babyshop2/?page_id=521","0","page","","0"),
("530","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 10, Màu sắc: Đỏ","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","1","product_variation","","0"),
("531","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 10, Màu sắc: Hồng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-2","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","2","product_variation","","0"),
("532","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 10, Màu sắc: Trắng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-3","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","3","product_variation","","0"),
("533","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 12, Màu sắc: Đỏ","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-4","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","4","product_variation","","0"),
("534","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 12, Màu sắc: Hồng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-5","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","5","product_variation","","0"),
("535","1","2018-06-03 23:08:50","2018-06-03 16:08:50","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 12, Màu sắc: Trắng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-6","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","6","product_variation","","0"),
("536","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 13, Màu sắc: Đỏ","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-7","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","7","product_variation","","0"),
("537","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 13, Màu sắc: Hồng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-8","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","8","product_variation","","0"),
("538","1","2018-06-03 23:08:51","2018-06-03 16:08:51","","Đầm voan hoa cổ yếm siêu dễ thương","Size: Size 13, Màu sắc: Trắng","publish","closed","closed","","dam-voan-hoa-co-yem-sieu-de-thuong-9","","","2018-06-03 23:09:09","2018-06-03 16:09:09","","154","https://tppone.com/demo/babyshop2/san-pham/dam-voan-hoa-co-yem-sieu-de-thuong/","9","product_variation","","0"),
("539","1","2018-06-03 23:11:17","2018-06-03 16:11:17","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Đen, Size: Size 10","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","1","product_variation","","0"),
("540","1","2018-06-03 23:11:17","2018-06-03 16:11:17","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Đen, Size: Size 11","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-2","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","2","product_variation","","0"),
("541","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Đỏ, Size: Size 10","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-3","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","3","product_variation","","0"),
("542","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Đỏ, Size: Size 11","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-4","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","4","product_variation","","0"),
("543","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Hồng, Size: Size 10","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-5","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","5","product_variation","","0"),
("544","1","2018-06-03 23:11:18","2018-06-03 16:11:18","","Quần jeans wash rách lưng thun dễ thương","Màu sắc: Hồng, Size: Size 11","publish","closed","closed","","quan-jeans-wash-rach-lung-thun-de-thuong-6","","","2018-06-03 23:11:36","2018-06-03 16:11:36","","167","https://tppone.com/demo/babyshop2/san-pham/quan-jeans-wash-rach-lung-thun-de-thuong-cho-be-trai/","6","product_variation","","0"),
("545","1","2018-06-03 23:13:55","2018-06-03 16:13:55","","Quần dài chân bo in chữ Yes dễ thương bé trai","Màu sắc: Đỏ, Size: Size 11","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://tppone.com/demo/babyshop2/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","1","product_variation","","0"),
("546","1","2018-06-03 23:13:55","2018-06-03 16:13:55","","Quần dài chân bo in chữ Yes dễ thương bé trai","Màu sắc: Đỏ, Size: Size 12","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-2","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://tppone.com/demo/babyshop2/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","2","product_variation","","0"),
("547","1","2018-06-03 23:13:56","2018-06-03 16:13:56","","Quần dài chân bo in chữ Yes dễ thương bé trai","Màu sắc: Trắng, Size: Size 11","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-3","","","2018-06-03 23:14:14","2018-06-03 16:14:14","","160","https://tppone.com/demo/babyshop2/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","3","product_variation","","0"),
("548","1","2018-06-03 23:13:56","2018-06-03 16:13:56","","Quần dài chân bo in chữ Yes dễ thương bé trai","Màu sắc: Trắng, Size: Size 12","publish","closed","closed","","quan-dai-chan-bo-in-chu-yes-de-thuong-be-trai-4","","","2018-06-03 23:14:15","2018-06-03 16:14:15","","160","https://tppone.com/demo/babyshop2/san-pham/quan-dai-chan-bo-in-chu-yes-de-thuong-cho-be-trai/","4","product_variation","","0"),
("549","1","2018-06-03 23:14:53","2018-06-03 16:14:53","","Áo thun mèo phối nơ quần jeans giả váy","Màu sắc: Đen, Size: Size 13","publish","closed","closed","","ao-thun-meo-phoi-no-quan-jeans-gia-vay","","","2018-06-03 23:15:16","2018-06-03 16:15:16","","169","https://tppone.com/demo/babyshop2/san-pham/ao-thun-meo-phoi-no-quan-jeans-gia-vay-de-thuong/","1","product_variation","","0"),
("550","1","2018-06-03 23:16:11","2018-06-03 16:16:11","","Bộ croptop siêu sành điệu cho bé gái giá tốt","Size: Size 1, Màu sắc: Xám","publish","closed","closed","","bo-croptop-sieu-sanh-dieu-cho-be-gai","","","2018-06-03 23:16:28","2018-06-03 16:16:28","","156","https://tppone.com/demo/babyshop2/san-pham/bo-croptop-sieu-sanh-dieu-cho-be-gai-1-8-tuoi/","1","product_variation","","0"),
("585","1","2018-11-27 21:43:03","2018-11-27 14:43:03","","logo","","inherit","open","closed","","logo-2","","","2018-11-27 21:43:03","2018-11-27 14:43:03","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/logo.png","0","attachment","image/png","0"),
("587","1","2018-11-27 21:43:27","2018-11-27 14:43:27","https://bizhostvn.com/w/babyshop2/wp-content/uploads/2018/11/cropped-logo.png","cropped-logo.png","","inherit","open","closed","","cropped-logo-png","","","2018-11-27 21:43:27","2018-11-27 14:43:27","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/cropped-logo.png","0","attachment","image/png","0"),
("601","1","2018-11-27 21:55:29","2018-11-27 14:55:29"," ","","","publish","closed","closed","","601","","","2018-11-27 21:55:29","2018-11-27 14:55:29","","0","https://tppone.com/demo/babyshop2/?p=601","1","nav_menu_item","","0"),
("602","1","2018-11-27 21:55:29","2018-11-27 14:55:29"," ","","","publish","closed","closed","","602","","","2018-11-27 21:55:29","2018-11-27 14:55:29","","0","https://tppone.com/demo/babyshop2/?p=602","2","nav_menu_item","","0"),
("603","1","2018-11-27 21:55:29","2018-11-27 14:55:29"," ","","","publish","closed","closed","","603","","","2018-11-27 21:55:29","2018-11-27 14:55:29","","0","https://tppone.com/demo/babyshop2/?p=603","3","nav_menu_item","","0"),
("604","1","2018-11-27 21:55:29","2018-11-27 14:55:29"," ","","","publish","closed","closed","","604","","","2018-11-27 21:55:29","2018-11-27 14:55:29","","0","https://tppone.com/demo/babyshop2/?p=604","4","nav_menu_item","","0"),
("630","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày dép bé trai","","publish","closed","closed","","giay-dep-be-trai","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=630","3","nav_menu_item","","0"),
("631","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày dép bé gái","","publish","closed","closed","","giay-dep-be-gai","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=631","4","nav_menu_item","","0"),
("632","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Sản phẩm","","publish","closed","closed","","san-pham-2","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=632","5","nav_menu_item","","0"),
("633","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày cổ cao trẻ em","","publish","closed","closed","","giay-co-cao-tre-em","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=633","6","nav_menu_item","","0"),
("634","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Dép sandel bé gái","","publish","closed","closed","","dep-sandel-be-gai","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=634","7","nav_menu_item","","0"),
("635","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày bé gái","","publish","closed","closed","","giay-be-gai","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=635","8","nav_menu_item","","0"),
("636","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày bé trai","","publish","closed","closed","","giay-be-trai","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=636","9","nav_menu_item","","0"),
("637","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày học sinh","","publish","closed","closed","","giay-hoc-sinh","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=637","10","nav_menu_item","","0"),
("638","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày tập đi","","publish","closed","closed","","giay-tap-di","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=638","11","nav_menu_item","","0"),
("639","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày thể thao trẻ em","","publish","closed","closed","","giay-the-thao-tre-em","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=639","12","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("640","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Giày trắng cho bé","","publish","closed","closed","","giay-trang-cho-be","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=640","13","nav_menu_item","","0"),
("641","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Sandal - dép đi biển cho bé","","publish","closed","closed","","sandal-dep-di-bien-cho-be","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=641","14","nav_menu_item","","0"),
("642","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Tất vớ trẻ em","","publish","closed","closed","","tat-vo-tre-em","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=642","15","nav_menu_item","","0"),
("643","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Chính sách sỉ","","publish","closed","closed","","chinh-sach-si","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=643","16","nav_menu_item","","0"),
("644","1","2018-11-27 22:16:13","2018-11-27 15:16:13","","Vận chuyển","","publish","closed","closed","","van-chuyen","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=644","17","nav_menu_item","","0"),
("646","1","2018-11-27 22:16:35","2018-11-27 15:16:35","","Trang chủ","","publish","closed","closed","","trang-chu","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=646","1","nav_menu_item","","0"),
("647","1","2018-11-27 22:16:51","2018-11-27 15:16:51","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-11-27 23:43:13","2018-11-27 16:43:13","","0","https://tppone.com/demo/babyshop2/?page_id=647","0","page","","0"),
("648","1","2018-11-27 22:16:46","2018-11-27 15:16:46","","Giới thiệu","","inherit","closed","closed","","647-revision-v1","","","2018-11-27 22:16:46","2018-11-27 15:16:46","","647","https://tppone.com/demo/babyshop2/647-revision-v1/","0","revision","","0"),
("649","1","2018-11-27 22:17:11","2018-11-27 15:17:11","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=649","2","nav_menu_item","","0"),
("660","1","2018-11-27 22:25:13","2018-11-27 15:25:13","","Untitled-1","","inherit","open","closed","","untitled-1","","","2018-11-27 22:25:13","2018-11-27 15:25:13","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/Untitled-1.png","0","attachment","image/png","0"),
("662","1","2018-11-27 22:33:57","2018-11-27 15:33:57","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:33:57","2018-11-27 15:33:57","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("663","1","2018-11-27 22:34:09","2018-11-27 15:34:09","","sd","","inherit","open","closed","","sd","","","2018-11-27 22:34:09","2018-11-27 15:34:09","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/sd.jpg","0","attachment","image/jpeg","0"),
("664","1","2018-11-27 22:34:16","2018-11-27 15:34:16","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:34:16","2018-11-27 15:34:16","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("665","1","2018-11-27 22:34:28","2018-11-27 15:34:28","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:34:28","2018-11-27 15:34:28","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("671","1","2018-11-27 22:39:56","2018-11-27 15:39:56","","BANNER2","","inherit","open","closed","","banner2-2","","","2018-11-27 22:39:56","2018-11-27 15:39:56","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/BANNER2.jpg","0","attachment","image/jpeg","0"),
("672","1","2018-11-27 22:40:03","2018-11-27 15:40:03","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:40:03","2018-11-27 15:40:03","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("673","1","2018-11-27 22:43:54","2018-11-27 15:43:54","","BANNER3","","inherit","open","closed","","banner3","","","2018-11-27 22:43:54","2018-11-27 15:43:54","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/BANNER3.jpg","0","attachment","image/jpeg","0"),
("674","1","2018-11-27 22:44:01","2018-11-27 15:44:01","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:44:01","2018-11-27 15:44:01","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("675","1","2018-11-27 22:44:53","2018-11-27 15:44:53","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"20%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"20%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:44:53","2018-11-27 15:44:53","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("677","1","2018-11-27 22:47:59","2018-11-27 15:47:59","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"20%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"20%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" products=\"10\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:47:59","2018-11-27 15:47:59","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("678","1","2018-11-27 22:48:03","2018-11-27 15:48:03","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"20%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"20%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"10\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"6\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:48:03","2018-11-27 15:48:03","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("679","1","2018-11-27 22:48:24","2018-11-27 15:48:24","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"20%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"20%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:48:24","2018-11-27 15:48:24","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("684","1","2018-11-27 22:50:32","2018-11-27 15:50:32","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"20%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:50:32","2018-11-27 15:50:32","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("685","1","2018-11-27 22:50:47","2018-11-27 15:50:47","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:50:47","2018-11-27 15:50:47","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("686","1","2018-11-27 22:51:15","2018-11-27 15:51:15","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:51:15","2018-11-27 15:51:15","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("689","1","2018-11-27 22:52:06","2018-11-27 15:52:06","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[row class=\"banner-row\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:52:06","2018-11-27 15:52:06","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("690","1","2018-11-27 22:52:16","2018-11-27 15:52:16","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:52:16","2018-11-27 15:52:16","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("691","1","2018-11-27 22:52:38","2018-11-27 15:52:38","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"17px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:52:38","2018-11-27 15:52:38","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("692","1","2018-11-27 22:52:49","2018-11-27 15:52:49","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:52:49","2018-11-27 15:52:49","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("693","1","2018-11-27 22:53:14","2018-11-27 15:53:14","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:53:14","2018-11-27 15:53:14","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("694","1","2018-11-27 22:54:31","2018-11-27 15:54:31","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:54:31","2018-11-27 15:54:31","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("695","1","2018-11-27 22:54:44","2018-11-27 15:54:44","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:54:44","2018-11-27 15:54:44","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("696","1","2018-11-27 22:54:55","2018-11-27 15:54:55","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:54:55","2018-11-27 15:54:55","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("697","1","2018-11-27 22:55:00","2018-11-27 15:55:00","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:55:00","2018-11-27 15:55:00","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("698","1","2018-11-27 22:55:05","2018-11-27 15:55:05","","email","","inherit","open","closed","","email","","","2018-11-27 22:55:05","2018-11-27 15:55:05","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/email.jpg","0","attachment","image/jpeg","0"),
("699","1","2018-11-27 22:55:11","2018-11-27 15:55:11","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3>Lorem ipsum dolor sit amet</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:55:11","2018-11-27 15:55:11","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("700","1","2018-11-27 22:55:15","2018-11-27 15:55:15","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3>Lorem ipsum dolor sit amet</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:55:15","2018-11-27 15:55:15","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("701","1","2018-11-27 22:55:48","2018-11-27 15:55:48","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:55:48","2018-11-27 15:55:48","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("702","1","2018-11-27 22:57:08","2018-11-27 15:57:08","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]\nM&M Shoes \"[your-subject]\"\n[your-name] <wordpress@babyshop2.webdemo.com>\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\ndemoweb@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nM&M Shoes \"[your-subject]\"\nM&M Shoes <wordpress@babyshop2.webdemo.com>\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\n[your-email]\nReply-To: demoweb@gmail.com\n\n0\n0\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.","Form liên hệ 1","","publish","closed","closed","","form-lien-he-1","","","2018-11-27 22:57:08","2018-11-27 15:57:08","","0","https://tppone.com/demo/babyshop2/?post_type=wpcf7_contact_form&p=702","0","wpcf7_contact_form","","0"),
("703","1","2018-11-27 22:58:03","2018-11-27 15:58:03","[email email-125 placeholder \"Địa chỉ email...\"]\n[submit \"Thõi dõi khuyến mại\"]\n1\nM&M Shoes \"[your-subject]\"\n<wordpress@babyshop2.webdemo.com>\ndemoweb@gmail.com\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\n\n\n\n\n\nM&M Shoes \"[your-subject]\"\nM&M Shoes <wordpress@babyshop2.webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\nReply-To: demoweb@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Theo dõi tin khuyến mại","","publish","closed","closed","","theo-doi-tin-khuyen-mai","","","2018-11-27 22:58:12","2018-11-27 15:58:12","","0","https://tppone.com/demo/babyshop2/?post_type=wpcf7_contact_form&#038;p=703","0","wpcf7_contact_form","","0"),
("704","1","2018-11-27 22:58:31","2018-11-27 15:58:31","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:58:31","2018-11-27 15:58:31","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("705","1","2018-11-27 22:58:42","2018-11-27 15:58:42","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[contact-form-7 id=\"703\"]\n\n[gap height=\"11px\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:58:42","2018-11-27 15:58:42","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("706","1","2018-11-27 22:58:49","2018-11-27 15:58:49","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:58:49","2018-11-27 15:58:49","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("707","1","2018-11-27 22:59:21","2018-11-27 15:59:21","","bst-deep-ocean-thoi-trang-tre-em-1 (1)","","inherit","open","closed","","bst-deep-ocean-thoi-trang-tre-em-1-1","","","2018-11-27 22:59:21","2018-11-27 15:59:21","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/bst-deep-ocean-thoi-trang-tre-em-1-1.jpg","0","attachment","image/jpeg","0"),
("708","1","2018-11-27 22:59:46","2018-11-27 15:59:46","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box width=\"40\" width__sm=\"60\" position_x=\"90\" position_y=\"50\"]\n\n<h3 class=\"uppercase\">Change this to anything</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 22:59:46","2018-11-27 15:59:46","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("709","1","2018-11-27 23:00:00","2018-11-27 16:00:00","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"40\" width__sm=\"60\" position_x=\"90\" position_y=\"50\"]\n\n<h3 class=\"uppercase\">Change this to anything</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:00:00","2018-11-27 16:00:00","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("710","1","2018-11-27 23:00:08","2018-11-27 16:00:08","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 class=\"uppercase\">Change this to anything</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:00:08","2018-11-27 16:00:08","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("711","1","2018-11-27 23:00:21","2018-11-27 16:00:21","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:00:21","2018-11-27 16:00:21","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("712","1","2018-11-27 23:01:23","2018-11-27 16:01:23","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:01:23","2018-11-27 16:01:23","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("713","1","2018-11-27 23:01:51","2018-11-27 16:01:51","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:01:51","2018-11-27 16:01:51","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("714","1","2018-11-27 23:02:04","2018-11-27 16:02:04","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:02:04","2018-11-27 16:02:04","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("720","1","2018-11-27 23:07:57","2018-11-27 16:07:57","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #009dd1; font-size: 85%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><a href=\"https://Webdemo.com/about-us/\"><span style=\"font-size: 85%;\">Bạn Cần Biết</span></a></li>\n<li><a href=\"/huong-dan-thanh-toan/\"><span style=\"font-size: 85%;\">Phương thức thanh toán</span></a></li>\n<li><a href=\"/phuong-thuc-van-chuyen/\"><span style=\"font-size: 85%;\">Phương thức vận chuyển</span></a></li>\n<li><a href=\"/huong-dan-mua-hang/\"><span style=\"font-size: 85%;\"> Hướng dẫn mua hàng</span></a></li>\n<li><a href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Xuất xứ sản phẩm</span></a></li>\n<li><a href=\"/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Địa chỉ shop quần áo trẻ em Babi</span></a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:07:57","2018-11-27 16:07:57","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("721","1","2018-11-27 23:08:08","2018-11-27 16:08:08","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 85%;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #009dd1; font-size: 85%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><a href=\"https://Webdemo.com/about-us/\"><span style=\"font-size: 85%;\">Bạn Cần Biết</span></a></li>\n<li><a href=\"/huong-dan-thanh-toan/\"><span style=\"font-size: 85%;\">Phương thức thanh toán</span></a></li>\n<li><a href=\"/phuong-thuc-van-chuyen/\"><span style=\"font-size: 85%;\">Phương thức vận chuyển</span></a></li>\n<li><a href=\"/huong-dan-mua-hang/\"><span style=\"font-size: 85%;\"> Hướng dẫn mua hàng</span></a></li>\n<li><a href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Xuất xứ sản phẩm</span></a></li>\n<li><a href=\"/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Địa chỉ shop quần áo trẻ em Babi</span></a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:08:08","2018-11-27 16:08:08","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("722","1","2018-11-27 23:08:20","2018-11-27 16:08:20","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #009dd1; font-size: 85%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"color: #009dd1; font-size: 85%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><a href=\"https://Webdemo.com/about-us/\"><span style=\"font-size: 85%;\">Bạn Cần Biết</span></a></li>\n<li><a href=\"/huong-dan-thanh-toan/\"><span style=\"font-size: 85%;\">Phương thức thanh toán</span></a></li>\n<li><a href=\"/phuong-thuc-van-chuyen/\"><span style=\"font-size: 85%;\">Phương thức vận chuyển</span></a></li>\n<li><a href=\"/huong-dan-mua-hang/\"><span style=\"font-size: 85%;\"> Hướng dẫn mua hàng</span></a></li>\n<li><a href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Xuất xứ sản phẩm</span></a></li>\n<li><a href=\"/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Địa chỉ shop quần áo trẻ em Babi</span></a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:08:20","2018-11-27 16:08:20","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("723","1","2018-11-27 23:08:31","2018-11-27 16:08:31","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><a href=\"https://Webdemo.com/about-us/\"><span style=\"font-size: 85%;\">Bạn Cần Biết</span></a></li>\n<li><a href=\"/huong-dan-thanh-toan/\"><span style=\"font-size: 85%;\">Phương thức thanh toán</span></a></li>\n<li><a href=\"/phuong-thuc-van-chuyen/\"><span style=\"font-size: 85%;\">Phương thức vận chuyển</span></a></li>\n<li><a href=\"/huong-dan-mua-hang/\"><span style=\"font-size: 85%;\"> Hướng dẫn mua hàng</span></a></li>\n<li><a href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Xuất xứ sản phẩm</span></a></li>\n<li><a href=\"/xuat-xu-san-pham/\"><span style=\"font-size: 85%;\">Địa chỉ shop quần áo trẻ em Babi</span></a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:08:31","2018-11-27 16:08:31","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("724","1","2018-11-27 23:08:48","2018-11-27 16:08:48","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:08:48","2018-11-27 16:08:48","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("725","1","2018-11-27 23:09:06","2018-11-27 16:09:06","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"245\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:09:06","2018-11-27 16:09:06","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("726","1","2018-11-27 23:09:15","2018-11-27 16:09:15","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"244\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:09:15","2018-11-27 16:09:15","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("728","1","2018-11-27 23:10:38","2018-11-27 16:10:38","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:10:38","2018-11-27 16:10:38","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("729","1","2018-11-27 23:11:06","2018-11-27 16:11:06","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:11:06","2018-11-27 16:11:06","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("731","1","2018-11-27 23:12:21","2018-11-27 16:12:21","","footer-bg-pattern","","inherit","open","closed","","footer-bg-pattern","","","2018-11-27 23:12:21","2018-11-27 16:12:21","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/footer-bg-pattern.png","0","attachment","image/png","0"),
("735","1","2018-11-27 23:14:28","2018-11-27 16:14:28","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[gap]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:14:28","2018-11-27 16:14:28","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("736","1","2018-11-27 23:14:33","2018-11-27 16:14:33","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"18px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"3000\"]\n\n[ux_image id=\"109\" image_size=\"original\" height=\"27%\"]\n\n[ux_image id=\"108\" image_size=\"original\" height=\"27%\"]\n\n\n[/ux_slider]\n[gap height=\"7px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"663\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"671\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"673\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Hàng mới về\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Hàng mới về\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"178\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"177\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bao tay trẻ em\" class=\"bao-tay-tre-em\" padding=\"20px\"]\n\n[title text=\"Bao tay trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Mũ trẻ em\" class=\"mu-tre-em\" padding=\"20px\"]\n\n[title text=\"Mũ trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"265\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"267\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện trẻ em\" class=\"hang-moi-ve\" padding=\"20px\"]\n\n[title text=\"Phụ kiện trẻ em\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"circle\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"21\"]\n\n\n[/section]\n[section label=\"Đăng ký nhận tin\" class=\"dang-ky-nhan-tin\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[ux_banner height=\"46%\" bg=\"707\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"42\" width__sm=\"60\" position_x=\"95\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\">CHƯƠNG TRÌNH</h3>\n<h2 style=\"text-align: center;\">KHÁCH HÀNG THÂN THIẾT</h2>\n<p style=\"text-align: center;\">Cùng khám phá những khoảnh khắc đáng yêu của các bé tại đây</p>\n[button text=\"Click me\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\" class=\"cot4\"]\n\n[featured_box img=\"698\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">THEO DÕI NHỮNG THÔNG TIN MỚI NHẤT CỦA CHÚNG TÔI</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Theo dõi để cập nhật những bộ sưu tập và các chương trình khuyến mãi nhanh nhất</span></p>\n\n[/featured_box]\n[gap height=\"16px\"]\n\n[contact-form-7 id=\"703\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","2-revision-v1","","","2018-11-27 23:14:33","2018-11-27 16:14:33","","2","https://tppone.com/demo/babyshop2/2-revision-v1/","0","revision","","0"),
("741","1","2018-11-27 23:18:19","2018-11-27 16:18:19","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:18:19","2018-11-27 16:18:19","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("742","1","2018-11-27 23:21:06","2018-11-27 16:21:06","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p>&lt;div class=\"menu-footer\"&gt;</p>\n<p>&lt;ul&gt;</p>\n<p>&lt;li&gt;&lt;a href=\"#\" target=\"blank\"&gt;Giới thiệu&lt;/a&gt;&lt;/li&gt;</p>\n<p>&lt;li&gt;&lt;a href=\"/danh-muc/giay-dep-be-trai/\" target=\"blank\"&gt;Giày dép bé trai&lt;/a&gt;&lt;/li&gt;</p>\n<p>&lt;li&gt;&lt;a href=\"/danh-muc/giay-dep-be-gai/\" target=\"blank\"&gt;Giày dép bé gái&lt;/a&gt;&lt;/li&gt;</p>\n<p>&lt;li&gt;&lt;a href=\"#\" target=\"blank\"&gt;Chính sách sỉ&lt;/a&gt;&lt;/li&gt;</p>\n<p>&lt;li&gt;&lt;a href=\"#\" target=\"blank\"&gt;Liên hệ&lt;/a&gt;&lt;/li&gt;</p>\n<p>&lt;/ul&gt;</p>\n<p>&lt;/div&gt;</p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:21:06","2018-11-27 16:21:06","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("743","1","2018-11-27 23:21:59","2018-11-27 16:21:59","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<div class=\"menu-footer\">\n\n<ul>\n\n<li><a href=\"#\" target=\"blank\">Giới thiệu</a></li>\n\n<li><a href=\"/danh-muc/giay-dep-be-trai/\" target=\"blank\">Giày dép bé trai</a></li>\n\n<li><a href=\"/danh-muc/giay-dep-be-gai/\" target=\"blank\">Giày dép bé gái</a></li>\n\n<li><a href=\"#\" target=\"blank\">Chính sách sỉ</a></li>\n\n<li><a href=\"#\" target=\"blank\">Liên hệ</a></li>\n\n</ul>\n\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:21:59","2018-11-27 16:21:59","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("751","1","2018-11-27 23:27:03","2018-11-27 16:27:03","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">380/9B Nam Kỳ Khởi Nghĩa, P.8, Q.3, TpHCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: 0932.064.588</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">124 Trường Chinh, P.12, Q.Tân Bình, TP.HCM</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">ĐT: (028) 3620.5066</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Giờ mở cửa: T2 - T7: 9h00 - 20h30; CN: 8h30 - 17h30</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 95%; color: #333333;\">Hotline: 1900 54 54 77</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n<div class=\"menu-footer\">\n<ul>\n<li><a href=\"#\" target=\"blank\">Giới thiệu</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-trai/\" target=\"blank\">Giày dép bé trai</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-gai/\" target=\"blank\">Giày dép bé gái</a></li>\n<li><a href=\"#\" target=\"blank\">Chính sách sỉ</a></li>\n<li><a href=\"#\" target=\"blank\">Liên hệ</a></li>\n</ul>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:27:03","2018-11-27 16:27:03","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("755","1","2018-11-27 23:30:11","2018-11-27 16:30:11","","icon (3)","","inherit","open","closed","","icon-3","","","2018-11-27 23:30:11","2018-11-27 16:30:11","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/icon-3.png","0","attachment","image/png","0"),
("756","1","2018-11-27 23:30:35","2018-11-27 16:30:35","","phone-icon","","inherit","open","closed","","phone-icon","","","2018-11-27 23:30:35","2018-11-27 16:30:35","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2018/11/phone-icon.png","0","attachment","image/png","0"),
("757","1","2018-11-27 23:36:44","2018-11-27 16:36:44","[section class=\"footer-section\" bg_color=\"rgb(180, 240, 255)\" padding=\"50px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" align=\"left\" color=\"light\"]\n\n<p><strong><span style=\"font-size: 115%; color: #000000;\">M&amp;M Shoes (Thời trang giày dép cho bé)</span></strong></p>\n<ul>\n<li><span style=\"color: #282828; font-size: 95%;\">Địa chỉ: TM03, tầng 1, CT6, KĐT Văn Khê, Hà Đông </span></li>\n<li><span style=\"color: #282828; font-size: 95%;\">Điện thoại: 0329630512</span></li>\n<li><span style=\"color: #282828; font-size: 95%;\">Fanpage: https://fb.com/demo/</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">STK:  0021001114804</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">Chủ tài khoản: Nguyễn Thị Thu Thuỷ</span></li>\n<li><span style=\"color: #000000; font-size: 95%;\">Ngân hàng Vietcombank Chi nhánh Bà Triệu, Hà Nội</span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Babi.vn chuyên bán quần áo trẻ em online với hàng ngàn mẫu mã để quý khách lựa chọn cho bé yêu của bạn.</span></p>\n<p><span style=\"font-size: 95%;\">Hãy đặt hàng online để được hưởng nhiều ưu đãi hơn tại siêu thị mẹ và bé Babi.</span></p>\n<p><span style=\"font-size: 95%;\">Chọn mua ngay các mẫu quần áo thời trang trẻ em mới nhất 2017, hàng đẹp giá cực tốt.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">CHÍNH SÁCH BÁN HÀNG</span></h4>\n<ul>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://Webdemo.com/about-us/\">Bạn Cần Biết</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-thanh-toan/\">Phương thức thanh toán</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/phuong-thuc-van-chuyen/\">Phương thức vận chuyển</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/huong-dan-mua-hang/\"> Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"https://bizhostvn.com/w/babyshop2/xuat-xu-san-pham/\">Xuất xứ sản phẩm</a></span></li>\n<li><span style=\"color: #333333; font-size: 95%;\"><a style=\"color: #333333;\" href=\"/xuat-xu-san-pham/\">Địa chỉ shop quần áo trẻ em Babi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h4><span style=\"font-size: 95%; color: #333333;\">TÀI KHOẢN</span></h4>\n<ul>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/tai-khoan/\">Tài khoản của tôi</a></span></li>\n<li><span style=\"font-size: 95%; color: #333333;\"><a style=\"color: #333333;\" href=\"/cua-hang/\">Cửa hàng</a></span></li>\n</ul>\n[ux_image id=\"244\" image_size=\"original\" width=\"52\"]\n\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n<div class=\"menu-footer\">\n<ul>\n<li><a href=\"#\" target=\"blank\">Giới thiệu</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-trai/\" target=\"blank\">Giày dép bé trai</a></li>\n<li><a href=\"/danh-muc/giay-dep-be-gai/\" target=\"blank\">Giày dép bé gái</a></li>\n<li><a href=\"#\" target=\"blank\">Chính sách sỉ</a></li>\n<li><a href=\"#\" target=\"blank\">Liên hệ</a></li>\n</ul>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","Footer section","","inherit","closed","closed","","224-revision-v1","","","2018-11-27 23:36:44","2018-11-27 16:36:44","","224","https://tppone.com/demo/babyshop2/224-revision-v1/","0","revision","","0"),
("765","1","2018-11-27 23:43:13","2018-11-27 16:43:13","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","inherit","closed","closed","","647-revision-v1","","","2018-11-27 23:43:13","2018-11-27 16:43:13","","647","https://tppone.com/demo/babyshop2/647-revision-v1/","0","revision","","0"),
("766","1","2018-11-27 23:43:54","2018-11-27 16:43:54","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>\n<p><span style=\"color: #00ccff;\"><strong>M&amp;M Shoes (Thời trang giày dép cho bé)</strong></span></p>\n</li>\n<li>\n<p>Địa chỉ: TM03, tầng 1, CT6, KĐT Văn Khê, Hà Đông </p>\n</li>\n<li>Điện thoại: 0329630512</li>\n<li>Fanpage: https://fb.com/demo/</li>\n<li>STK:  0021001114804</li>\n<li>Chủ tài khoản: Nguyễn Thị Thu Thuỷ</li>\n<li>Ngân hàng Vietcombank Chi nhánh Bà Triệu, Hà Nội</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"772\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2018-11-27 23:49:13","2018-11-27 16:49:13","","0","https://tppone.com/demo/babyshop2/?page_id=766","0","page","","0"),
("767","1","2018-11-27 23:43:54","2018-11-27 16:43:54","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"65\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n<h2>Thông tin liên hệ:</h2>\n<ul>\n 	<li>Liên hệ: DEMO</li>\n 	<li>Phone: 0972939830</li>\n 	<li>Email: demoweb@gmail.com</li>\n 	<li>Website: www.Webdemo.com</li>\n 	<li>Flickr: www.flickr.com/photos/demo@N07/albums</li>\n 	<li>Behance: https://www.behance.net/demo</li>\n 	<li>Intesest: https://www.pinterest.com/demo/pins/</li>\n 	<li>Chi nhánh Hà Nội</li>\n 	<li>Địa chỉ: Số 19 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</li>\n 	<li>Điện thoại: 0972939830 - 01324.567.890</li>\n 	<li>Email: demoweb@gmail.com</li>\n</ul>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"678\"]\n\n[/col]\n[col span__sm=\"12\"]\n\n<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:43:54","2018-11-27 16:43:54","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("768","1","2018-11-27 23:44:51","2018-11-27 16:44:51","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>Liên hệ: DEMO</li>\n<li>Phone: 0972939830</li>\n<li>Email: demoweb@gmail.com</li>\n<li>Website: www.Webdemo.com</li>\n<li>Flickr: www.flickr.com/photos/demo@N07/albums</li>\n<li>Behance: https://www.behance.net/demo</li>\n<li>Intesest: https://www.pinterest.com/demo/pins/</li>\n<li>Chi nhánh Hà Nội</li>\n<li>Địa chỉ: Số 19 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</li>\n<li>Điện thoại: 0972939830 - 01324.567.890</li>\n<li>Email: demoweb@gmail.com</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"678\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:44:51","2018-11-27 16:44:51","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("771","1","2018-11-27 23:45:37","2018-11-27 16:45:37","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n<h2>Thông tin liên hệ:</h2>\n<ul>\n 	<li>Liên hệ: DEMO</li>\n 	<li>Phone: 0972939830</li>\n 	<li>Email: demoweb@gmail.com</li>\n 	<li>Website: www.Webdemo.com</li>\n 	<li>Flickr: www.flickr.com/photos/demo@N07/albums</li>\n 	<li>Behance: https://www.behance.net/demo</li>\n 	<li>Intesest: https://www.pinterest.com/demo/pins/</li>\n 	<li>Chi nhánh Hà Nội</li>\n 	<li>Địa chỉ: Số 19 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</li>\n 	<li>Điện thoại: 0972939830 - 01324.567.890</li>\n 	<li>Email: demoweb@gmail.com</li>\n</ul>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"678\"]\n\n[/col]\n[col span__sm=\"12\"]\n\n<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:45:37","2018-11-27 16:45:37","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("772","1","2018-11-27 23:47:43","2018-11-27 16:47:43","[text* text-813 placeholder \"Họ và tên...\"]\n[email email-560 placeholder \"Địa chỉ email...\"]\n[tel* tel-467 placeholder \"Số điện thoại...\"]\n[text text-8134 placeholder \"Địa chỉ của bạn...\"]\n[textarea textarea-754 placeholder \"Nội dung liên hệ...\"]\n[submit \"Gửi liên hệ\"]\n1\nM&M Shoes \"[your-subject]\"\n[your-name] <wordpress@babyshop2.webdemo.com>\ndemoweb@gmail.com\nCó người mới liên hệ mua hàng qua website:\n- Họ và tên [text-813]\n- Email: [email-560]\n- Điện thoại: [tel-467]\n- Địa chỉ: [text-8134]\n- Nội dung: [textarea-754]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\nReply-To: [your-email]\n\n\n\n\nM&M Shoes \"[your-subject]\"\nM&M Shoes <wordpress@babyshop2.webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website M&M Shoes (https://bizhostvn.com/w/babyshop2)\nReply-To: demoweb@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Liên hệ mua hàng","","publish","closed","closed","","lien-he-mua-hang","","","2018-11-27 23:47:43","2018-11-27 16:47:43","","0","https://tppone.com/demo/babyshop2/?post_type=wpcf7_contact_form&p=772","0","wpcf7_contact_form","","0"),
("773","1","2018-11-27 23:47:59","2018-11-27 16:47:59"," ","","","publish","closed","closed","","773","","","2018-11-27 23:48:04","2018-11-27 16:48:04","","0","https://tppone.com/demo/babyshop2/?p=773","18","nav_menu_item","","0"),
("774","1","2018-11-27 23:48:20","2018-11-27 16:48:20","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>Liên hệ: DEMO</li>\n<li>Phone: 0972939830</li>\n<li>Email: demoweb@gmail.com</li>\n<li>Website: www.Webdemo.com</li>\n<li>Flickr: www.flickr.com/photos/demo@N07/albums</li>\n<li>Behance: https://www.behance.net/demo</li>\n<li>Intesest: https://www.pinterest.com/demo/pins/</li>\n<li>Chi nhánh Hà Nội</li>\n<li>Địa chỉ: Số 19 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</li>\n<li>Điện thoại: 0972939830 - 01324.567.890</li>\n<li>Email: demoweb@gmail.com</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"772\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:48:20","2018-11-27 16:48:20","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("775","1","2018-11-27 23:49:01","2018-11-27 16:49:01","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>\n<p><span style=\"color: #00ccff;\"><strong>M&amp;M Shoes (Thời trang giày dép cho bé)</strong></span></p>\n</li>\n<li>\n<p>Địa chỉ: TM03, tầng 1, CT6, KĐT Văn Khê, Hà Đông </p>\n</li>\n<li>Điện thoại: 0329630512</li>\n<li>Fanpage: https://fb.com/demo/</li>\n<li>STK:  0021001114804</li>\n<li>Chủ tài khoản: Nguyễn Thị Thu Thuỷ</li>\n<li>Ngân hàng Vietcombank Chi nhánh Bà Triệu, Hà Nội</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"772\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:49:01","2018-11-27 16:49:01","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("776","1","2018-11-27 23:49:13","2018-11-27 16:49:13","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"108\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>Thông tin liên hệ:</h2>\n<ul>\n<li>\n<p><span style=\"color: #00ccff;\"><strong>M&amp;M Shoes (Thời trang giày dép cho bé)</strong></span></p>\n</li>\n<li>\n<p>Địa chỉ: TM03, tầng 1, CT6, KĐT Văn Khê, Hà Đông </p>\n</li>\n<li>Điện thoại: 0329630512</li>\n<li>Fanpage: https://fb.com/demo/</li>\n<li>STK:  0021001114804</li>\n<li>Chủ tài khoản: Nguyễn Thị Thu Thuỷ</li>\n<li>Ngân hàng Vietcombank Chi nhánh Bà Triệu, Hà Nội</li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"772\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2130170374944!2d105.79226011521641!3d20.984096594676814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acc6066cb537%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1543057941688\" width=\"100%\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\n\n[/col]\n\n[/row]","Liên hệ","","inherit","closed","closed","","766-revision-v1","","","2018-11-27 23:49:13","2018-11-27 16:49:13","","766","https://tppone.com/demo/babyshop2/766-revision-v1/","0","revision","","0"),
("791","1","2019-05-06 15:38:59","2019-05-06 08:38:59","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-06 15:38:59","2019-05-06 08:38:59","","0","https://tppone.com/demo/babyshop2/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("793","1","2019-05-06 15:43:35","2019-05-06 08:43:35","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 08:43:04\"\n    }\n}","","","trash","closed","closed","","54b482d6-50c3-4570-a0c9-e6f88233594f","","","2019-05-06 15:43:35","2019-05-06 08:43:35","","0","https://tppone.com/demo/babyshop2/?p=793","0","customize_changeset","","0"),
("794","1","2019-05-13 10:21:12","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-13 10:21:12","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/babyshop2/?p=794","0","post","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
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
("154","4","0"),
("154","18","0"),
("154","21","0"),
("154","25","0"),
("154","27","0"),
("154","28","0"),
("154","40","0"),
("154","42","0"),
("154","43","0"),
("154","46","0"),
("154","47","0"),
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
("160","48","0"),
("160","49","0"),
("167","4","0"),
("167","18","0"),
("167","21","0"),
("167","26","0"),
("167","27","0"),
("167","28","0"),
("167","40","0"),
("167","41","0"),
("167","46","0"),
("167","49","0"),
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
("601","50","0"),
("602","50","0"),
("603","50","0"),
("604","50","0"),
("630","22","0"),
("631","22","0"),
("632","22","0"),
("633","22","0"),
("634","22","0"),
("635","22","0"),
("636","22","0"),
("637","22","0"),
("638","22","0"),
("639","22","0"),
("640","22","0"),
("641","22","0"),
("642","22","0"),
("643","22","0"),
("644","22","0"),
("646","22","0"),
("649","22","0");
INSERT INTO bz_term_relationships VALUES
("773","22","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","1"),
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
("16","16","product_cat","","18","2"),
("17","17","product_cat","","18","1"),
("18","18","product_cat","","0","5"),
("19","19","product_cat","","0","2"),
("20","20","product_cat","","0","0"),
("21","21","product_cat","","18","9"),
("22","22","nav_menu","","0","18"),
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
("45","45","product_tag","","0","3"),
("46","46","product_tag","","0","3"),
("47","47","product_tag","","0","1"),
("48","48","product_tag","","0","1"),
("49","49","product_tag","","0","4"),
("50","50","nav_menu","","0","4"),
("51","51","product_cat","","18","0"),
("52","52","product_cat","","18","0"),
("53","53","product_cat","","18","0"),
("54","54","product_cat","","18","0"),
("55","55","product_cat","","18","0"),
("56","56","product_cat","","18","0"),
("57","57","product_cat","","18","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("25","18","product_count_product_cat","10"),
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
("50","45","product_count_product_tag","3"),
("51","46","product_count_product_tag","3"),
("52","47","product_count_product_tag","1"),
("53","48","product_count_product_tag","1"),
("54","49","product_count_product_tag","4"),
("55","21","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("56","17","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("57","16","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("58","19","cat_meta",""),
("59","51","order","0"),
("60","51","display_type",""),
("61","51","thumbnail_id","0"),
("62","52","order","0"),
("63","52","display_type",""),
("64","52","thumbnail_id","0"),
("65","53","order","0"),
("66","53","display_type",""),
("67","53","thumbnail_id","0"),
("68","54","order","0"),
("69","54","display_type",""),
("70","54","thumbnail_id","0"),
("71","55","order","0"),
("72","55","display_type",""),
("73","55","thumbnail_id","0"),
("74","56","order","0"),
("75","56","display_type",""),
("76","56","thumbnail_id","0"),
("77","57","order","0"),
("78","57","display_type",""),
("79","57","thumbnail_id","0");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("15","Giày dép bé trai","giay-dep-be-trai","0"),
("16","Giày bé gái","giay-be-gai","0"),
("17","Dép Sandal bé gái","dep-sandal-be-gai","0"),
("18","Sản phẩm","san-pham","0"),
("19","Giày dép bé gái","giay-dep-be-gai","0"),
("20","Phụ kiện trẻ em","phu-kien-tre-em","0"),
("21","Giày tập đi","giay-tap-di","0"),
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
("50","Topbar menu","topbar-menu","0"),
("51","Giày bé trai","giay-be-trai","0"),
("52","Giày học sinh","giay-hoc-sinh","0"),
("53","Bốt - giày cổ cao trẻ em","bot-giay-co-cao-tre-em","0"),
("54","Sandal - Dép đi biển cho bé","sandal-dep-di-bien-cho-be","0"),
("55","Giày trắng cho bé","giay-trang-cho-be","0"),
("56","Giày thể thao trẻ em","giay-the-thao-tre-em","0"),
("57","Tất vớ trẻ em","tat-vo-tre-em","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,plugin_editor_notice,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:1:{s:64:\"14688f5669344e75b7f1f5f80471ca656de51143fb86aaa7d9acdc1f4376c713\";a:4:{s:10:\"expiration\";i:1557890467;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557717667;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","794"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1557446809"),
("22","1","dismissed_no_secure_connection_notice","1"),
("23","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("24","1","wc_last_active","1557705600"),
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
("42","1","dismissed_store_notice_setting_moved_notice","1"),
("53","1","_woocommerce_tracks_anon_id","woo:xirxw7D879D4qQBDF1oXXLR4");




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
("1","admin","$P$BNS/9lJkdXEXEMWRIOv26qxKRq7zK0.","admin","demobz@gmail.com","","2018-06-02 14:36:34","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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