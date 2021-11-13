SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w102`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2018-04-25 05:22:25","2018-04-25 05:22:25","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":true,\"package_mysqldump_path\":\"\",\"package_phpdump_qrylimit\":100,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"http:\\/\\/bizhostvn.com\\/w\\/bienchucdanh\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":1,\"license_expiration_time\":1530504775,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1529279361,\"initial_activation_timestamp\":1524736119,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":false,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":0,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":0,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=2065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/bienchucdanh","yes"),
("2","home","https://bizhostvn.com/w/bienchucdanh","yes"),
("3","blogname","bienchucdanh","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","doivodesign@gmail.com","yes"),
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
("21","default_pingback_flag","0","yes"),
("22","posts_per_page","30","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:203:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:63:\"index.php?taxonomy=block_categories&term=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?taxonomy=block_categories&term=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:52:\"index.php?taxonomy=block_categories&term=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:42:\"contentprotector/smartcontentprotector.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:27:\"woosidebars/woosidebars.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:4:{i:0;s:94:\"/home/admin/web/bizhostvn.com/public_html/w/bienchucdanh/wp-content/themes/flatsome/footer.php\";i:2;s:93:\"/home/admin/web/bizhostvn.com/public_html/w/bienchucdanh/wp-content/themes/flatsome/style.css\";i:3;s:99:\"/home/admin/web/bizhostvn.com/public_html/w/bienchucdanh/wp-content/themes/bien-chuc-danh/style.css\";i:4;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","bien-chuc-danh","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:25:\"Hỗ trợ trực tuyến\";s:4:\"text\";s:355:\"[featured_box img=\"66\" img_width=\"27\" pos=\"left\"]\n\nKinh doanh 1: Mr Hùng\n<b>0945 655 622</b>\n\n[/featured_box]\n[featured_box img=\"66\" img_width=\"27\" pos=\"left\"]\n\nKinh doanh 1: Mr Trường\n<b>0965 558 728</b>\n\n[/featured_box]\n\n[featured_box img=\"66\" img_width=\"27\" pos=\"left\"]\n\nKinh doanh 1: Mr Kiên\n<b>0989 555 365</b>\n\n[/featured_box]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:22:\"Thiết kế/ Designer\";s:4:\"text\";s:115:\"[featured_box img=\"66\" img_width=\"27\" pos=\"left\"]\n\nMs Lan Anh\n<b><red> 0916 728 343</red></b>\n\n[/featured_box]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","31","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes"),
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Khách hàng\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:22:\"Quản lý cửa hàng\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","WPLANG","vi","yes"),
("95","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","sidebars_widgets","a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"designer\";a:1:{i:0;s:6:\"text-3\";}s:17:\"ho-tro-truc-tuyen\";a:1:{i:0;s:6:\"text-2\";}s:17:\"danh-muc-san-pham\";a:1:{i:0;s:10:\"nav_menu-2\";}s:12:\"sidebar-main\";a:4:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:12:\"categories-2\";i:3;s:22:\"woocommerce_products-3\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:3:{i:0;s:10:\"nav_menu-3\";i:1;s:22:\"woocommerce_products-2\";i:2;s:23:\"flatsome_recent_posts-2\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO bz_options VALUES
("101","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_nav_menu","a:3:{i:2;a:2:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:8:\"nav_menu\";i:4;}i:3;a:2:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:8:\"nav_menu\";i:4;}s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","cron","a:14:{i:1558011503;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558012289;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558015096;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558019424;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558027346;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558070561;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558076343;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558084224;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558084234;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558084633;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558095024;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("139","new_admin_email","webdesign@gmail.com","yes"),
("144","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524633788;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("145","current_theme","Biển chức danh","yes"),
("146","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 25 Apr 2018 05:23:09 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524633816;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("147","theme_switched","","yes"),
("148","widget_flatsome_recent_posts","a:2:{i:2;a:3:{s:5:\"title\";s:23:\"Bài viết - tin tức\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";}s:12:\"_multiwidget\";i:1;}","yes"),
("149","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("151","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("152","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("153","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("154","flatsome_wup_buyer","trannguyen886","yes"),
("155","allowedthemes","a:1:{s:14:\"bien-chuc-danh\";b:1;}","no"),
("156","fl_has_child_theme","bien-chuc-danh","yes"),
("158","theme_mods_bien-chuc-danh","a:139:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:3:{i:0;s:3:\"nav\";i:1;s:4:\"cart\";i:2;s:11:\"search-form\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";s:6:\"custom\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:2;s:11:\"top_bar_nav\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 25 Apr 2018 05:23:38 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:19:\"flatsome_db_version\";s:5:\"3.6.2\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1260\";s:13:\"color_primary\";s:7:\"#163645\";s:15:\"color_secondary\";s:7:\"#ff8100\";s:11:\"color_texts\";s:7:\"#262626\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#191919\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:9:\"type_size\";s:2:\"97\";s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:6:{s:11:\"font-family\";s:7:\"Pattaya\";s:11:\"font-backup\";s:0:\"\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:11:\"topbar_left\";s:59:\"<span\">Chào mừng bạn đến với Webdesign.com</span>\";s:13:\"header_height\";s:2:\"80\";s:17:\"box_shadow_header\";b:0;s:14:\"header_divider\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:6:\"medium\";s:11:\"nav_spacing\";s:5:\"large\";s:13:\"nav_uppercase\";b:0;s:8:\"nav_push\";s:1:\"0\";s:14:\"type_nav_color\";s:7:\"#ffffff\";s:20:\"type_nav_color_hover\";s:7:\"#ffa800\";s:25:\"header_height_transparent\";s:3:\"265\";s:10:\"logo_width\";s:3:\"246\";s:9:\"site_logo\";s:85:\"https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/06/bizhost-logo-demo.png\";s:15:\"html_custom_css\";s:6134:\".header-search-form input[type=\'search\']{border-top-left-radius:3px; border-bottom-left-radius:3px; height:35px; box-shadow: 0px 0px 0px gray}\n.header-search-form .button.secondary:not(.is-outline){border-top-right-radius:3px; border-bottom-right-radius:3px; height: 35px; width: 35px}\n.slider-section .row .cot1 .col-inner{background: white;\n    border-radius: 3px;\n    border: 1px solid #dddddd;}\n.header-nav.nav > li > a{font-size:15px}.slider-section .row .cot3 .icon-box{margin-top: 10px; margin-bottom: 10px;\n    border-bottom: 1px dashed #ececec;\n    padding-left: 15px;}\n.slider-section .row .cot1 .col-inner .sidebar-wrapper li, .slider-section .row .cot3 .col-inner .sidebar-wrapper li{margin-left:0}span.widget-title{display:block; line-height:19px}\n.slider-section .row .cot1 .col-inner .sidebar-wrapper li h2, .slider-section .row .cot3 .col-inner .sidebar-wrapper li h2, .widgettitle{background: #163645;\n    padding: 10px;\n    font-size: 15px;\n    color: white;\n    font-weight: normal;\n    text-transform: uppercase;\n    text-align: center;\n    border-top-right-radius: 3px;\n    border-top-left-radius: 3px; margin-bottom:0\n}\n#menu-danh-muc-san-pham li a{display: block; padding-left: 15px;\n    font-size: 15px;\n    margin-left: 10px;\n    background: url(/wp-content/uploads/2018/04/icon-menu-cat2.png) left center;\n    background-repeat: no-repeat;}\n#menu-danh-muc-san-pham li:hover {color: white; background: #ff8100}\n#menu-danh-muc-san-pham li:hover>#menu-danh-muc-san-pham li a{color: white}\n.slider-section .row .cot3 .col-inner .sidebar-wrapper{background: white; border-radius:3px; margin-bottom:20px}\n.slider-section .row .cot3 .icon-box p{font-size:15px}\n.slider-section .col{padding-bottom:0}\n.box-bounce .box-text{background:white}\n.box-category .box-text h5{font-weight: normal;\n    letter-spacing: 0;\n    text-transform: none;\n    padding-bottom: 5px;\n    font-size: 15px;\n    color: #ffffff;}\n.box-category .box-text {padding-bottom:8px;background: #163645;\n    color: #47a5d2;}\n.section-title-container{margin-bottom:10px}\n.sp-noi-bat .tabbed-content ul li a{font-size:15px; padding: 5px 12px; line-height:26px; font-weight:normal; border-radius:4px}\n.sp-noi-bat .tabbed-content .product-small .add-to-cart-button a {    font-weight: normal;\n    text-transform: none;\n    font-size: 13px;\n    border-radius: 3px;\n     min-height: 20px !important;\n    line-height: 25px;\n}.tin-tuc .col{padding-bottom:0px}\n.sp-noi-bat .tabbed-content .box{margin-bottom:20px; border: 1px solid #d8d8d8;\n    padding-left: 8px; padding-right:8px; padding-top:8px;\n    border-radius: 4px;}\n.sp-noi-bat .tabbed-content .box:hover{border:1px solid orange}\n.bon-tinh-nang .col, .sp-noi-bat .col, .sp-dac-trung .col{padding-bottom:0}\n.sp-noi-bat .product-small .box-text .price-wrapper, .sp-noi-bat .badge-container{display:none}\n.sp-dac-trung .product_list_widget li{margin-bottom:0; margin-left:10px}\n.product_list_widget del span.amount, .product_list_widget del{color: #a5a5a5}\n.product_list_widget ins span.amount{color: #ff8100;\n    font-weight: normal;\n    font-size: 17px;\n}\n.sp-dac-trung .product_list_widget{margin-bottom:0}\n.tin-tuc .post-item .box-text .post-title{font-weight:normal; font-size: 16px}\n.ban-do .form-lien-he{    position: absolute;\n    margin-top: -360px;\n    background: white;\n    box-shadow: 2px 2px 10px grey;\n    font-size: 15px;\n}\n.ban-do .form-lien-he .form-main{padding-left:8px; padding-right:8px}\n.ban-do .form-lien-he .form-main input[type=\'submit\']:not(.is-form){text-transform:none; font-weight:normal; line-height:22px; border-radius: 4px; font-size:14px}\n.ban-do .form-lien-he p{padding-left:8px; padding-right:8px; font-size:14px; padding-top:5px; padding-bottom:5px}\n.footer-block .col, .footer-block .col p{padding-bottom:0; margin-bottom:0}\n.demo_store{background-color: #112f3e;; font-size:14px}\n.ban-do .col, .ban-do .col p{padding-bottom:0; margin-bottom:0}\n.page-right-sidebar{background: #e0e0e0; padding-top:10px}\n.absolute-footer.dark{display:none}\n.page-right-sidebar .row{background: white; padding-top:15px;border-radius:4px}\n.page-right-sidebar .large-9{padding-right:15px}\n.page-right-sidebar .large-3{padding-left:15px; font-size:15px}\n.page-right-sidebar  #content{font-size:15px}\n.category-page-row .product-small .col-inner{background: white; border:1px solid #d2d2d2; padding:8px; border-radius:3px}.archive #main {background: #d2d2d2}.category-page-row .large-3{padding-right:5px}.category-page-row #shop-sidebar{background: white; border-radius:3px; padding:8px; }.widget .is-divider{display:none}\n.category-page-row .product-small .badge-container{display:none}\n.category-page-row .product-small .box-text{padding-top:3px; padding-bottom:5px}\n.category-page-row .product-small .box-text .product-title{padding-bottom:5px}\n.category-page-row .product-small .box-text .price-wrapper ins span{color: #ff8100; font-weight:normal; font-size:16px}\n.category-page-row .product-small .box-text .add-to-cart-button a{font-weight:normal; text-transform:none; border-radius:3px; font-size:13px}.page-title {\n    position: relative;\n    background: #efefef;\n	padding-bottom: 10px;}\n.page-title-inner{padding-top:10px}\nspan.widget-title {\n    display: block;\n    line-height: 19px;\n    background: #163645;\n    padding: 10px;\n    color: white;\n    font-weight: normal;\n    font-size: 15px;\n    letter-spacing: 0;\n    text-align: center;\n}\n.chi-tiet-sp .row1{background: white}\n.chi-tiet-sp .col{padding-bottom:0}\n.chi-tiet-sp hr{margin-top:0}\n.chi-tiet-sp .product-title{font-weight:normal}\n.custom-product-page .chi-tiet-sp .row1 {padding-bottom:15px}\n.blog-archive .row.row-large, .blog-single .row.row-large{background: white; padding-top:20px}\n.blog-single{background: #e4e4e4}\n.blog-archive .large-9, .blog-single .large-9{padding-right:10px}.blog-single .entry-title{font-weight:normal}.blog-single .entry-image {display:none}.blog-single .article-inner, .blog-single .post-sidebar {font-size:15px}.blog-single .entry-content{padding-top:0} .blog-single .is-divider{max-width:100%; height:1px}\n.blog-archive .post-sidebar, .blog-single .post-sidebar{padding-left:10px}\";s:18:\"search_placeholder\";s:27:\"Tìm kiếm sản phẩm...\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:17:\"header_cart_title\";b:0;s:16:\"type_size_mobile\";s:3:\"100\";s:10:\"nav_height\";s:2:\"16\";s:15:\"cart_icon_style\";s:4:\"fill\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:7:\"#163645\";s:9:\"topbar_bg\";s:7:\"#112f3e\";s:17:\"header_top_height\";s:2:\"30\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:0:\"\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"1\";s:13:\"search_result\";s:1:\"1\";s:13:\"search_by_sku\";s:1:\"0\";s:15:\"flatsome_studio\";s:1:\"1\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"0\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"0\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:15:\"disable_reviews\";s:1:\"0\";s:27:\"product_gallery_woocommerce\";s:1:\"1\";s:14:\"html_shop_page\";s:0:\"\";s:9:\"tab_title\";s:0:\"\";s:11:\"tab_content\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:1:\" \";s:22:\"html_after_add_to_cart\";s:0:\"\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"1\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"0\";s:27:\"infinite_scroll_loader_type\";s:7:\"spinner\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:12:\"fl_portfolio\";s:1:\"1\";s:27:\"category_force_image_height\";b:1;s:16:\"products_pr_page\";s:2:\"40\";s:18:\"category_row_count\";s:1:\"4\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:6:\"normal\";s:10:\"grid_style\";s:5:\"grid2\";s:15:\"category_shadow\";s:1:\"0\";s:13:\"product_hover\";s:4:\"none\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:17:\"add_to_cart_style\";s:4:\"flat\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:25:\"short_description_in_grid\";b:0;s:18:\"disable_quick_view\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:12:\"footer_block\";s:12:\"footer-block\";s:19:\"footer_bottom_align\";s:0:\"\";s:19:\"footer_bottom_color\";s:7:\"#163645\";s:16:\"footer_left_text\";s:160:\"Thiết kế đồ họa và website chuyên nghiệp\n0909.009.009 - webdesign@gmail.com - www.webdemo.com\nThiết kế và duy trì bởi Webdesign | WEBDESIGN\";s:17:\"footer_right_text\";s:116:\"Webdesign rất hoan nghênh độc giả gửi thông tin và góp ý cho chúng tôi!\nEmail: webdesign@gmail.com\n\n\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:0;s:18:\"blog_style_archive\";s:5:\"3-col\";s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:21:\"category_image_height\";s:3:\"100\";s:23:\"header_shop_bg_featured\";b:0;s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"4\";s:16:\"related_products\";s:4:\"grid\";s:21:\"product_custom_layout\";s:19:\"custom-product-page\";}","yes"),
("160","envato_setup_complete","1524633841","yes"),
("163","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1557997761;}","yes"),
("170","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("179","woocommerce_store_address","Số 29 ngõ 18 Lương Ngọc Quyến","yes"),
("180","woocommerce_store_address_2","Hà Đông","yes"),
("181","woocommerce_store_city","Hà Nội","yes"),
("182","woocommerce_default_country","VN","yes"),
("183","woocommerce_store_postcode","100000","yes"),
("184","woocommerce_allowed_countries","all","yes"),
("185","woocommerce_all_except_countries","a:0:{}","yes"),
("186","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("187","woocommerce_ship_to_countries","","yes"),
("188","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("189","woocommerce_default_customer_address","geolocation","yes"),
("190","woocommerce_calc_taxes","no","yes"),
("191","woocommerce_currency","VND","yes"),
("192","woocommerce_currency_pos","right","yes"),
("193","woocommerce_price_thousand_sep",".","yes"),
("194","woocommerce_price_decimal_sep",".","yes"),
("195","woocommerce_price_num_decimals","0","yes"),
("196","woocommerce_shop_page_id","48","yes"),
("197","woocommerce_cart_redirect_after_add","no","yes"),
("198","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("199","woocommerce_weight_unit","kg","yes"),
("200","woocommerce_dimension_unit","cm","yes"),
("201","woocommerce_enable_reviews","yes","yes"),
("202","woocommerce_review_rating_verification_label","yes","no"),
("203","woocommerce_review_rating_verification_required","no","no"),
("204","woocommerce_enable_review_rating","yes","yes"),
("205","woocommerce_review_rating_required","yes","no"),
("206","woocommerce_manage_stock","yes","yes"),
("207","woocommerce_hold_stock_minutes","60","no"),
("208","woocommerce_notify_low_stock","yes","no"),
("209","woocommerce_notify_no_stock","yes","no"),
("210","woocommerce_stock_email_recipient","webdesign@gmail.com","no"),
("211","woocommerce_notify_low_stock_amount","2","no"),
("212","woocommerce_notify_no_stock_amount","0","yes"),
("213","woocommerce_hide_out_of_stock_items","no","yes"),
("214","woocommerce_stock_format","","yes"),
("215","woocommerce_file_download_method","force","no"),
("216","woocommerce_downloads_require_login","no","no"),
("217","woocommerce_downloads_grant_access_after_payment","yes","no"),
("218","woocommerce_prices_include_tax","no","yes"),
("219","woocommerce_tax_based_on","shipping","yes"),
("220","woocommerce_shipping_tax_class","inherit","yes"),
("221","woocommerce_tax_round_at_subtotal","no","yes"),
("222","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("223","woocommerce_tax_display_shop","excl","yes"),
("224","woocommerce_tax_display_cart","excl","no"),
("225","woocommerce_price_display_suffix","","yes"),
("226","woocommerce_tax_total_display","itemized","no"),
("227","woocommerce_enable_shipping_calc","yes","no"),
("228","woocommerce_shipping_cost_requires_address","no","no"),
("229","woocommerce_ship_to_destination","billing","no"),
("230","woocommerce_shipping_debug_mode","no","no"),
("231","woocommerce_enable_coupons","yes","yes"),
("232","woocommerce_calc_discounts_sequentially","no","no"),
("233","woocommerce_enable_guest_checkout","yes","no"),
("234","woocommerce_force_ssl_checkout","no","yes"),
("235","woocommerce_unforce_ssl_checkout","no","yes"),
("236","woocommerce_cart_page_id","49","yes"),
("237","woocommerce_checkout_page_id","50","yes"),
("238","woocommerce_terms_page_id","","no"),
("239","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("240","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("241","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("242","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("243","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("244","woocommerce_myaccount_page_id","51","yes"),
("245","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("246","woocommerce_enable_myaccount_registration","no","no"),
("247","woocommerce_enable_checkout_login_reminder","yes","no"),
("248","woocommerce_registration_generate_username","yes","no"),
("249","woocommerce_registration_generate_password","no","no"),
("250","woocommerce_myaccount_orders_endpoint","orders","yes"),
("251","woocommerce_myaccount_view_order_endpoint","view-order","yes");
INSERT INTO bz_options VALUES
("252","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("253","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("254","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("255","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("256","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("257","woocommerce_logout_endpoint","customer-logout","yes"),
("258","woocommerce_email_from_name","Mẫu web biển chức danh &#8211; Webdesign","no"),
("259","woocommerce_email_from_address","webdesign@gmail.com","no"),
("260","woocommerce_email_header_image","","no"),
("261","woocommerce_email_footer_text","{site_title}","no"),
("262","woocommerce_email_base_color","#96588a","no"),
("263","woocommerce_email_background_color","#f7f7f7","no"),
("264","woocommerce_email_body_background_color","#ffffff","no"),
("265","woocommerce_email_text_color","#3c3c3c","no"),
("266","woocommerce_api_enabled","yes","yes"),
("267","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:8:\"san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("268","current_theme_supports_woocommerce","yes","yes"),
("269","woocommerce_queue_flush_rewrite_rules","no","yes"),
("272","default_product_cat","18","yes"),
("276","woocommerce_db_version","3.3.5","yes"),
("277","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("279","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("280","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("281","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("282","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("283","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("284","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("285","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("286","widget_woocommerce_products","a:3:{i:2;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:3;a:7:{s:5:\"title\";s:18:\"Sản phẩm mới\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("287","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("288","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("289","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("290","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("291","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("294","woocommerce_meta_box_errors","a:0:{}","yes"),
("297","woocommerce_product_type","physical","yes"),
("298","woocommerce_sell_in_person","1","yes"),
("299","woocommerce_allow_tracking","no","yes"),
("300","woocommerce_ppec_paypal_settings","a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}","yes"),
("301","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("302","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("303","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("329","woosidebars-version","1.4.3","yes"),
("332","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("365","product_cat_children","a:0:{}","yes"),
("376","woocommerce_demo_store","yes","yes"),
("377","woocommerce_demo_store_notice","Chào mừng bạn đến với Mẫu web bán Biển chức danh của Webdesign","yes"),
("439","category_children","a:0:{}","yes"),
("458","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1524738353;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("480","smart_content_protector_a","1","yes"),
("481","smart_content_protector_c","2","yes"),
("482","smart_content_protector_x","3","yes"),
("483","smart_content_protector_v","4","yes"),
("484","smart_content_protector_s","5","yes"),
("485","smart_content_protector_u","6","yes"),
("486","smart_content_protector_p","7","yes"),
("487","smart_content_protector_i","8","yes"),
("488","smart_content_protector_mac_a","1","yes"),
("489","smart_content_protector_mac_c","2","yes"),
("490","smart_content_protector_mac_x","3","yes"),
("491","smart_content_protector_mac_v","4","yes"),
("492","smart_content_protector_mac_s","5","yes"),
("493","smart_content_protector_mac_u","6","yes"),
("494","smart_content_protector_mac_p","7","yes"),
("495","smart_content_protector_mac_cmdshift4","7","yes"),
("496","smart_content_protector_mac_cmdshift3","7","yes"),
("497","smart_content_protector_mac_cmdctrlshift3","7","yes"),
("498","smart_content_protector_mac_cmdshift4spacebar","7","yes"),
("499","smart_content_protector_mac_i","8","yes"),
("500","smart_content_protector_member","3","yes"),
("501","smart_content_protector_non_member","2","yes"),
("502","smart_content_protector_homepage","2","yes"),
("503","smart_content_protector_viewoption","53","yes"),
("504","smart_content_print_screen_message","Print Screen is Disabled","yes"),
("505","smart_content_protector_selecting_text_msg","Content is Copy Protected","yes"),
("506","smart_content_protector_alert_message","Right Mouse Click is Disabled","yes"),
("507","smart_content_protector_page_include_exclude","1","yes"),
("508","smart_content_protector_add_empty_lines","100","yes"),
("509","smart_content_protector_post_include_exclude","1","yes"),
("510","smart_content_protector_textarea_message","This Post was Protected by Smart Content Protector © Copyright 2013, All Rights Reserved","yes"),
("511","smart_content_enable_js_disable_error","1","yes"),
("512","smart_content_js_disable_error_msg","Please Enable JavaScript in your Browser to visit this site","yes"),
("513","smart_content_protector_post_post","","yes"),
("514","smart_content_protector_post_page","page","yes"),
("515","smart_content_protector_post_custom_css","custom_css","yes"),
("516","smart_content_protector_post_customize_changeset","customize_changeset","yes"),
("517","smart_content_protector_post_oembed_cache","oembed_cache","yes"),
("518","smart_content_protector_post_blocks","blocks","yes"),
("519","smart_content_protector_post_product","product","yes"),
("520","smart_content_protector_post_wpcf7_contact_form","wpcf7_contact_form","yes"),
("521","smart_content_protector_post_featured_item","featured_item","yes"),
("522","smart_content_protector_post_sidebar","sidebar","yes"),
("523","smart_content_protector_image_watermark_position","top-left","yes"),
("524","updated_db_version","1.5","yes"),
("525","smart_content_protector_image_protection","1","yes"),
("526","smart_content_protector_image_drag","7","yes"),
("527","smart_content_protector_default_image_watermark","7","yes"),
("528","smart_content_protector_name_size_image_watermark","9","yes"),
("529","smart_content_protector_page_include_custom_water_exclude","2","yes"),
("530","smart_content_protector_position_normal","1","yes");
INSERT INTO bz_options VALUES
("531","smart_content_protector_disable","","yes"),
("532","smart_content_protector_alert","1","yes"),
("533","smart_content_protector_cutompa_id","","yes"),
("534","smart_content_protector_page_include_cutom_exclude","","yes"),
("535","smart_content_protector_category_id","","yes"),
("536","smart_content_protector_page_id","","yes"),
("537","smart_content_protector_post_id","","yes"),
("538","smart_content_protector_textarea","1","yes"),
("539","smart_content_enable_right_click_link1","51","yes"),
("540","smart_content_enable_right_click_link2","52","yes"),
("541","smart_content_enable_right_click_image_link","55","yes"),
("542","plagiarism_prevent_user_highlight","1","yes"),
("543","plagiarism_prevent_user_rightclick_disable","60","yes"),
("544","smart_content_protector_administrator","","yes"),
("545","smart_content_protector_editor","editor","yes"),
("546","smart_content_protector_author","author","yes"),
("547","smart_content_protector_contributor","contributor","yes"),
("548","smart_content_protector_subscriber","subscriber","yes"),
("549","smart_content_protector_customer","customer","yes"),
("550","smart_content_protector_shop_manager","shop_manager","yes"),
("551","smart_content_enable_view_source","1","yes"),
("552","smart_content_protector_selecting_text","15","yes"),
("553","smart_content_enable_js_disable_reload","reload","yes"),
("554","smart_content_js_disable_error_reload","","yes"),
("555","smart_content_protector_rssfeed","16","yes"),
("556","protect_rss_title","","yes"),
("557","smart_content_protector_ip","17","yes"),
("558","smart_content_protector_ip_when_pd","18","yes"),
("866","duplicator_pro_package_active","{\"Created\":\"2018-04-26 09:48:47\",\"Version\":\"3.5.7.1\",\"VersionWP\":\"4.9.5\",\"VersionDB\":\"10.1.31\",\"VersionPHP\":\"7.1.15\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20180426_mauwebbienchucdanhninhbin\",\"Hash\":\"4f0680279e01a4d93119_20180426094847\",\"NameHash\":\"20180426_mauwebbienchucdanhninhbin_4f0680279e01a4d93119_20180426094847\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"http:\\/\\/bizhostvn.com\\/w\\/bienchucdanh\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20180426_mauwebbienchucdanhninhbin_4f0680279e01a4d93119_20180426094847_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/backups-dup-pro\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/updraft\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/.htaccess\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\",\"Size\":84391709,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-snapshots\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/updraft\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"bao-\\u0111\\u1ef1ng-th\\u1ebb-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bao-\\u0111\\u1ef1ng-th\\u1ebb-100x100.jpg\"},{\"name\":\"th\\u1ebb-nh\\u00e2n-vi\\u00ean-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-nh\\u00e2n-vi\\u00ean-300x253.jpg\"},{\"name\":\"th\\u1ebb-sinh-vi\\u00ean-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-sinh-vi\\u00ean-300x253.jpg\"},{\"name\":\"th\\u1ebb-vip.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-vip.jpg\"},{\"name\":\"bao-\\u0111\\u1ef1ng-th\\u1ebb-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bao-\\u0111\\u1ef1ng-th\\u1ebb-300x253.jpg\"},{\"name\":\"th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-100x100.jpg\"},{\"name\":\"th\\u1ebb-sinh-vi\\u00ean-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-sinh-vi\\u00ean-100x100.jpg\"},{\"name\":\"huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-150x150.jpg\"},{\"name\":\"th\\u1ebb-vip-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-vip-100x100.jpg\"},{\"name\":\"bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-100x100.jpg\"},{\"name\":\"bi\\u1ec3n-ch\\u1ec9-d\\u1eabn.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bi\\u1ec3n-ch\\u1ec9-d\\u1eabn.jpg\"},{\"name\":\"th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-300x190.jpg\"},{\"name\":\"th\\u1ebb-vip-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-vip-150x150.jpg\"},{\"name\":\"th\\u1ebb-nh\\u00e2n-vi\\u00ean-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-nh\\u00e2n-vi\\u00ean-150x150.jpg\"},{\"name\":\"th\\u1ebb-nh\\u00e2n-vi\\u00ean.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-nh\\u00e2n-vi\\u00ean.jpg\"},{\"name\":\"th\\u1ebb-vip-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-vip-300x190.jpg\"},{\"name\":\"bao-\\u0111\\u1ef1ng-th\\u1ebb-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bao-\\u0111\\u1ef1ng-th\\u1ebb-150x150.jpg\"},{\"name\":\"bao-\\u0111\\u1ef1ng-th\\u1ebb.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bao-\\u0111\\u1ef1ng-th\\u1ebb.jpg\"},{\"name\":\"bao-\\u0111\\u1ef1ng-th\\u1ebb-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bao-\\u0111\\u1ef1ng-th\\u1ebb-300x190.jpg\"},{\"name\":\"bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-150x150.jpg\"},{\"name\":\"th\\u1ebb-vip-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-vip-300x253.jpg\"},{\"name\":\"huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c.jpg\"},{\"name\":\"th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean.jpg\"},{\"name\":\"huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-300x190.jpg\"},{\"name\":\"th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-150x150.jpg\"},{\"name\":\"bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-300x253.jpg\"},{\"name\":\"th\\u1ebb-nh\\u00e2n-vi\\u00ean-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-nh\\u00e2n-vi\\u00ean-300x190.jpg\"},{\"name\":\"th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-thay-t\\u00ean-nh\\u00e2n-vi\\u00ean-300x253.jpg\"},{\"name\":\"th\\u1ebb-sinh-vi\\u00ean.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-sinh-vi\\u00ean.jpg\"},{\"name\":\"huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-100x100.jpg\"},{\"name\":\"th\\u1ebb-sinh-vi\\u00ean-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-sinh-vi\\u00ean-300x190.jpg\"},{\"name\":\"th\\u1ebb-sinh-vi\\u00ean-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-sinh-vi\\u00ean-150x150.jpg\"},{\"name\":\"bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-300x190.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/bi\\u1ec3n-ch\\u1ec9-d\\u1eabn-300x190.jpg\"},{\"name\":\"huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-300x253.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/huy-hi\\u1ec7u-nh\\u00e3n-m\\u00e1c-300x253.jpg\"},{\"name\":\"th\\u1ebb-nh\\u00e2n-vi\\u00ean-100x100.jpg\",\"dir\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\",\"path\":\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-content\\/uploads\\/2018\\/04\\/th\\u1ebb-nh\\u00e2n-vi\\u00ean-100x100.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/.htaccess\",\"\\/home\\/admin\\/web\\/bizhostvn.com\\/public_html\\/w\\/bienchucdanh\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u921877374_web71\",\"tablesBaseCount\":31,\"tablesFinalCount\":31,\"tablesRowCount\":1539,\"tablesSizeOnDisk\":3899392,\"varLowerCaseTables\":\"0\",\"version\":\"10.1.31\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\"},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("870","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("883","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("896","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531279620;}","no"),
("911","dbprefix_old_dbprefix","ed_","yes"),
("912","dbprefix_new","bz_","yes"),
("983","_transient_shipping-transient-version","1529405262","yes"),
("1863","_transient_timeout_wc_term_counts","1559899036","no"),
("1864","_transient_wc_term_counts","a:8:{i:18;s:1:\"1\";i:23;s:1:\"2\";i:25;s:1:\"1\";i:22;s:1:\"1\";i:24;s:1:\"1\";i:20;s:2:\"10\";i:19;s:1:\"1\";i:21;s:1:\"1\";}","no"),
("1872","recovery_keys","a:0:{}","yes"),
("1918","_transient_timeout_external_ip_address_103.131.71.72","1558210834","no"),
("1919","_transient_external_ip_address_103.131.71.72","103.74.117.155","no"),
("1927","_transient_timeout_external_ip_address_103.131.71.79","1558257891","no"),
("1928","_transient_external_ip_address_103.131.71.79","103.74.117.155","no"),
("1930","_transient_timeout_external_ip_address_103.131.71.73","1558273244","no"),
("1931","_transient_external_ip_address_103.131.71.73","103.74.117.155","no"),
("1969","wp_page_for_privacy_policy","0","yes"),
("1970","show_comments_cookies_opt_in","1","yes"),
("1971","db_upgraded","","yes"),
("1980","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558602463","no"),
("1981","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1982","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558602464","no"),
("1983","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("1984","_transient_timeout_wc_report_sales_by_date","1558084064","no"),
("1985","_transient_wc_report_sales_by_date","a:8:{s:32:\"83cd072403385eeb517bc2966eef8cb2\";a:0:{}s:32:\"d3cd6d0376d74903bc2541b0e9baeb0c\";a:0:{}s:32:\"88bf8029a97ac06ca7cecb466bb2680d\";a:0:{}s:32:\"16b057c485a28ca8f663bd4445a8ea2c\";N;s:32:\"34cd8f65a43bf0b1203c4abffbec0409\";a:0:{}s:32:\"ff58018947312a0e9195231ec27c48be\";a:0:{}s:32:\"487dfdb423f00e57c62eef18351a14ca\";a:0:{}s:32:\"2feea3e31b9833794ffa07459a417bee\";a:0:{}}","no"),
("1986","_transient_timeout_wc_admin_report","1558084064","no"),
("1987","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("1988","_transient_timeout_wc_low_stock_count","1560589664","no"),
("1989","_transient_wc_low_stock_count","0","no"),
("1990","_transient_timeout_wc_outofstock_count","1560589664","no"),
("1991","_transient_wc_outofstock_count","0","no"),
("1992","can_compress_scripts","0","no"),
("1993","_transient_timeout__woocommerce_helper_subscriptions","1557998567","no"),
("1994","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("1995","_site_transient_timeout_theme_roots","1557999467","no"),
("1996","_site_transient_theme_roots","a:2:{s:14:\"bien-chuc-danh\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("1997","_transient_timeout__woocommerce_helper_updates","1558040867","no"),
("1998","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1557997667;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("1999","_transient_timeout_plugin_slugs","1558084161","no"),
("2000","_transient_plugin_slugs","a:6:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:3;s:42:\"contentprotector/smartcontentprotector.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:27:\"woosidebars/woosidebars.php\";}","no"),
("2001","_transient_timeout_wc_upgrade_notice_3.6.2","1558084071","no"),
("2002","_transient_wc_upgrade_notice_3.6.2","","no"),
("2009","_transient_timeout_external_ip_address_113.173.5.101","1558602623","no"),
("2010","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("2011","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("2014","woocommerce_placeholder_image","480","yes"),
("2015","woocommerce_erasure_request_removes_order_data","no","no"),
("2016","woocommerce_erasure_request_removes_download_data","no","no"),
("2017","woocommerce_allow_bulk_remove_personal_data","no","no"),
("2018","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("2019","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("2020","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("2021","woocommerce_trash_pending_orders","","no"),
("2022","woocommerce_trash_failed_orders","","no"),
("2023","woocommerce_trash_cancelled_orders","","no"),
("2024","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("2025","woocommerce_show_marketplace_suggestions","yes","no"),
("2026","woocommerce_single_image_width","600","yes"),
("2027","woocommerce_thumbnail_image_width","300","yes"),
("2028","woocommerce_checkout_highlight_required_fields","yes","yes"),
("2035","woocommerce_version","3.6.2","yes"),
("2037","_transient_timeout_external_ip_address_103.74.117.155","1558602626","no"),
("2038","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("2039","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("2042","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557997830;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("2043","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557997830;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2044","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557997832;s:7:\"checked\";a:2:{s:14:\"bien-chuc-danh\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("11","2","_edit_lock","1524643059:1"),
("12","2","_edit_last","1"),
("13","2","_footer","normal"),
("14","10","_menu_item_type","post_type"),
("15","10","_menu_item_menu_item_parent","0"),
("16","10","_menu_item_object_id","2"),
("17","10","_menu_item_object","page"),
("18","10","_menu_item_target",""),
("19","10","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("20","10","_menu_item_xfn",""),
("21","10","_menu_item_url",""),
("113","28","_wp_attached_file","2018/04/logo.png"),
("114","28","_wp_attachment_metadata","a:5:{s:5:\"width\";i:376;s:6:\"height\";i:102;s:4:\"file\";s:16:\"2018/04/logo.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x102.png\";s:5:\"width\";i:150;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x81.png\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("121","31","_wp_attached_file","2018/04/cropped-logo.png"),
("122","31","_wp_attachment_context","site-icon"),
("123","31","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/04/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("142","2","_thumbnail_id",""),
("143","46","_wp_attached_file","2018/04/slider1.jpg"),
("144","46","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:417;s:4:\"file\";s:19:\"2018/04/slider1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider1-600x357.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:357;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x179.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("145","52","_menu_item_type","taxonomy"),
("146","52","_menu_item_menu_item_parent","0"),
("147","52","_menu_item_object_id","18"),
("148","52","_menu_item_object","product_cat"),
("149","52","_menu_item_target",""),
("150","52","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("151","52","_menu_item_xfn",""),
("152","52","_menu_item_url",""),
("154","53","_menu_item_type","taxonomy"),
("155","53","_menu_item_menu_item_parent","0"),
("156","53","_menu_item_object_id","23"),
("157","53","_menu_item_object","product_cat"),
("158","53","_menu_item_target",""),
("159","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("160","53","_menu_item_xfn",""),
("161","53","_menu_item_url",""),
("163","54","_menu_item_type","taxonomy"),
("164","54","_menu_item_menu_item_parent","0"),
("165","54","_menu_item_object_id","25"),
("166","54","_menu_item_object","product_cat"),
("167","54","_menu_item_target",""),
("168","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("169","54","_menu_item_xfn",""),
("170","54","_menu_item_url",""),
("172","55","_menu_item_type","taxonomy"),
("173","55","_menu_item_menu_item_parent","0"),
("174","55","_menu_item_object_id","22"),
("175","55","_menu_item_object","product_cat"),
("176","55","_menu_item_target",""),
("177","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("178","55","_menu_item_xfn",""),
("179","55","_menu_item_url",""),
("181","56","_menu_item_type","taxonomy"),
("182","56","_menu_item_menu_item_parent","0"),
("183","56","_menu_item_object_id","24"),
("184","56","_menu_item_object","product_cat"),
("185","56","_menu_item_target",""),
("186","56","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("187","56","_menu_item_xfn",""),
("188","56","_menu_item_url",""),
("190","57","_menu_item_type","taxonomy"),
("191","57","_menu_item_menu_item_parent","0"),
("192","57","_menu_item_object_id","20"),
("193","57","_menu_item_object","product_cat"),
("194","57","_menu_item_target",""),
("195","57","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("196","57","_menu_item_xfn",""),
("197","57","_menu_item_url",""),
("199","58","_menu_item_type","taxonomy"),
("200","58","_menu_item_menu_item_parent","0"),
("201","58","_menu_item_object_id","19"),
("202","58","_menu_item_object","product_cat"),
("203","58","_menu_item_target",""),
("204","58","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("205","58","_menu_item_xfn",""),
("206","58","_menu_item_url",""),
("208","59","_menu_item_type","taxonomy"),
("209","59","_menu_item_menu_item_parent","0"),
("210","59","_menu_item_object_id","21"),
("211","59","_menu_item_object","product_cat"),
("212","59","_menu_item_target",""),
("213","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("214","59","_menu_item_xfn",""),
("215","59","_menu_item_url",""),
("217","60","_edit_last","1"),
("218","60","_sidebar_to_replace","sidebar-main"),
("219","60","_edit_lock","1524640904:1"),
("224","66","_wp_attached_file","2018/04/icon-chat.png"),
("225","66","_wp_attachment_metadata","a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2018/04/icon-chat.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"icon-chat-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"icon-chat-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"icon-chat-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("258","101","_wp_attached_file","2018/04/icon-menu-cat2.png"),
("259","101","_wp_attachment_metadata","a:5:{s:5:\"width\";i:5;s:6:\"height\";i:5;s:4:\"file\";s:26:\"2018/04/icon-menu-cat2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("260","101","_edit_lock","1524642076:1"),
("315","128","_edit_last","1"),
("316","128","_sidebar_to_replace","sidebar-main"),
("317","128","_edit_lock","1524643097:1"),
("337","140","_edit_last","1"),
("338","140","_sidebar_to_replace","sidebar-main"),
("339","140","_edit_lock","1524643604:1"),
("362","163","_wc_review_count","0"),
("363","163","_wc_rating_count","a:0:{}");
INSERT INTO bz_postmeta VALUES
("364","163","_wc_average_rating","0"),
("365","163","_edit_last","1"),
("366","163","_edit_lock","1524711164:1"),
("367","164","_wp_attached_file","2018/04/1.jpg"),
("368","164","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:291;s:4:\"file\";s:13:\"2018/04/1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"1-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("369","163","_thumbnail_id","164"),
("370","163","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("371","163","_sku",""),
("372","163","_regular_price","150000"),
("373","163","_sale_price","120000"),
("374","163","_sale_price_dates_from",""),
("375","163","_sale_price_dates_to",""),
("376","163","total_sales","0"),
("377","163","_tax_status","taxable"),
("378","163","_tax_class",""),
("379","163","_manage_stock","no"),
("380","163","_backorders","no"),
("381","163","_sold_individually","no"),
("382","163","_weight",""),
("383","163","_length",""),
("384","163","_width",""),
("385","163","_height",""),
("386","163","_upsell_ids","a:0:{}"),
("387","163","_crosssell_ids","a:0:{}"),
("388","163","_purchase_note",""),
("389","163","_default_attributes","a:0:{}"),
("390","163","_virtual","no"),
("391","163","_downloadable","no"),
("392","163","_product_image_gallery",""),
("393","163","_download_limit","-1"),
("394","163","_download_expiry","-1"),
("395","163","_stock",""),
("396","163","_stock_status","instock"),
("397","163","_product_version","3.3.5"),
("398","163","_price","120000"),
("399","165","_wp_attached_file","2018/04/bien-ten-nhan-vien.jpg"),
("400","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:30:\"2018/04/bien-ten-nhan-vien.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"bien-ten-nhan-vien-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("401","166","_wp_attached_file","2018/04/biển-chỉ-dẫn.jpg"),
("402","166","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:30:\"2018/04/biển-chỉ-dẫn.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"biển-chỉ-dẫn-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("403","167","_wp_attached_file","2018/04/bao-đựng-thẻ.jpg"),
("404","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:29:\"2018/04/bao-đựng-thẻ.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bao-đựng-thẻ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bao-đựng-thẻ-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"bao-đựng-thẻ-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"bao-đựng-thẻ-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"bao-đựng-thẻ-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"bao-đựng-thẻ-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("405","168","_wp_attached_file","2018/04/huy-hiệu-nhãn-mác.jpg"),
("406","168","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:33:\"2018/04/huy-hiệu-nhãn-mác.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"huy-hiệu-nhãn-mác-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("407","169","_wp_attached_file","2018/04/thẻ-sinh-viên.jpg"),
("408","169","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:28:\"2018/04/thẻ-sinh-viên.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"thẻ-sinh-viên-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"thẻ-sinh-viên-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"thẻ-sinh-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"thẻ-sinh-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"thẻ-sinh-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"thẻ-sinh-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("409","170","_wp_attached_file","2018/04/thẻ-nhân-viên.jpg"),
("410","170","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:29:\"2018/04/thẻ-nhân-viên.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"thẻ-nhân-viên-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"thẻ-nhân-viên-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"thẻ-nhân-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"thẻ-nhân-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"thẻ-nhân-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"thẻ-nhân-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("411","171","_wp_attached_file","2018/04/thẻ-thay-tên-nhân-viên.jpg"),
("412","171","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:39:\"2018/04/thẻ-thay-tên-nhân-viên.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"thẻ-thay-tên-nhân-viên-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","172","_wp_attached_file","2018/04/17191022_107922253072997_4056539791370356577_n.jpg"),
("414","172","_wp_attachment_metadata","a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:58:\"2018/04/17191022_107922253072997_4056539791370356577_n.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"17191022_107922253072997_4056539791370356577_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("415","173","_wp_attached_file","2018/04/thẻ-vip.jpg"),
("416","173","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:21:\"2018/04/thẻ-vip.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thẻ-vip-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thẻ-vip-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thẻ-vip-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thẻ-vip-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thẻ-vip-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thẻ-vip-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("417","182","_wp_attached_file","2018/04/bg-news1.jpg"),
("418","182","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:486;s:4:\"file\";s:20:\"2018/04/bg-news1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-news1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-news1-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bg-news1-768x249.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bg-news1-1024x332.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"bg-news1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"bg-news1-600x194.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-news1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"bg-news1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"bg-news1-600x194.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-news1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","186","_wp_attached_file","2018/04/hi.jpg"),
("422","186","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:253;s:4:\"file\";s:14:\"2018/04/hi.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"hi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"hi-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"hi-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"hi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"hi-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"hi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("432","199","_wp_attached_file","2018/04/LOGO-NINHBINHWEB-01-1.png"),
("433","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:380;s:6:\"height\";i:95;s:4:\"file\";s:33:\"2018/04/LOGO-NINHBINHWEB-01-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-150x95.png\";s:5:\"width\";i:150;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-100x95.png\";s:5:\"width\";i:100;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"LOGO-NINHBINHWEB-01-1-100x95.png\";s:5:\"width\";i:100;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("449","209","_wc_review_count","0"),
("450","209","_wc_rating_count","a:0:{}"),
("451","209","_wc_average_rating","0"),
("452","209","_edit_last","1"),
("453","209","_edit_lock","1524711637:1"),
("454","210","_wp_attached_file","2018/04/hi-250x250-1.jpg"),
("455","210","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:24:\"2018/04/hi-250x250-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"hi-250x250-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"hi-250x250-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"hi-250x250-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("456","209","_thumbnail_id","210"),
("457","209","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("458","209","_sku",""),
("459","209","_regular_price","90000"),
("460","209","_sale_price","50000"),
("461","209","_sale_price_dates_from",""),
("462","209","_sale_price_dates_to",""),
("463","209","total_sales","0"),
("464","209","_tax_status","taxable"),
("465","209","_tax_class",""),
("466","209","_manage_stock","no"),
("467","209","_backorders","no"),
("468","209","_sold_individually","no"),
("469","209","_weight",""),
("470","209","_length",""),
("471","209","_width",""),
("472","209","_height",""),
("473","209","_upsell_ids","a:0:{}"),
("474","209","_crosssell_ids","a:0:{}"),
("475","209","_purchase_note",""),
("476","209","_default_attributes","a:0:{}"),
("477","209","_virtual","no"),
("478","209","_downloadable","no"),
("479","209","_product_image_gallery",""),
("480","209","_download_limit","-1"),
("481","209","_download_expiry","-1"),
("482","209","_stock",""),
("483","209","_stock_status","instock"),
("484","209","_product_version","3.3.5"),
("485","209","_price","50000"),
("486","211","_wc_review_count","0"),
("487","211","_wc_rating_count","a:0:{}"),
("488","211","_wc_average_rating","0"),
("489","211","_edit_last","1");
INSERT INTO bz_postmeta VALUES
("490","211","_edit_lock","1524711657:1"),
("491","212","_wp_attached_file","2018/04/thenhanvien13-600x600.jpg"),
("492","212","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2018/04/thenhanvien13-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"thenhanvien13-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"thenhanvien13-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("493","211","_thumbnail_id","212"),
("494","211","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("495","211","_sku",""),
("496","211","_regular_price","100000"),
("497","211","_sale_price","86000"),
("498","211","_sale_price_dates_from",""),
("499","211","_sale_price_dates_to",""),
("500","211","total_sales","0"),
("501","211","_tax_status","taxable"),
("502","211","_tax_class",""),
("503","211","_manage_stock","no"),
("504","211","_backorders","no"),
("505","211","_sold_individually","no"),
("506","211","_weight",""),
("507","211","_length",""),
("508","211","_width",""),
("509","211","_height",""),
("510","211","_upsell_ids","a:0:{}"),
("511","211","_crosssell_ids","a:0:{}"),
("512","211","_purchase_note",""),
("513","211","_default_attributes","a:0:{}"),
("514","211","_virtual","no"),
("515","211","_downloadable","no"),
("516","211","_product_image_gallery",""),
("517","211","_download_limit","-1"),
("518","211","_download_expiry","-1"),
("519","211","_stock",""),
("520","211","_stock_status","instock"),
("521","211","_product_version","3.3.5"),
("522","211","_price","86000"),
("523","213","_wc_review_count","0"),
("524","213","_wc_rating_count","a:0:{}"),
("525","213","_wc_average_rating","0"),
("526","213","_edit_last","1"),
("527","213","_edit_lock","1524711675:1"),
("528","214","_wp_attached_file","2018/04/thenhanvienpsd10-600x600.jpg"),
("529","214","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2018/04/thenhanvienpsd10-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd10-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("530","213","_thumbnail_id","214"),
("531","213","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("532","213","_sku",""),
("533","213","_regular_price","85000"),
("534","213","_sale_price","65000"),
("535","213","_sale_price_dates_from",""),
("536","213","_sale_price_dates_to",""),
("537","213","total_sales","0"),
("538","213","_tax_status","taxable"),
("539","213","_tax_class",""),
("540","213","_manage_stock","no"),
("541","213","_backorders","no"),
("542","213","_sold_individually","no"),
("543","213","_weight",""),
("544","213","_length",""),
("545","213","_width",""),
("546","213","_height",""),
("547","213","_upsell_ids","a:0:{}"),
("548","213","_crosssell_ids","a:0:{}"),
("549","213","_purchase_note",""),
("550","213","_default_attributes","a:0:{}"),
("551","213","_virtual","no"),
("552","213","_downloadable","no"),
("553","213","_product_image_gallery",""),
("554","213","_download_limit","-1"),
("555","213","_download_expiry","-1"),
("556","213","_stock",""),
("557","213","_stock_status","instock"),
("558","213","_product_version","3.3.5"),
("559","213","_price","65000"),
("560","215","_wc_review_count","0"),
("561","215","_wc_rating_count","a:0:{}"),
("562","215","_wc_average_rating","0"),
("563","216","_wp_attached_file","2018/04/18b-600x600.jpg"),
("564","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2018/04/18b-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"18b-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"18b-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"18b-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"18b-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"18b-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"18b-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"18b-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"18b-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("565","215","_edit_last","1"),
("566","215","_thumbnail_id","216"),
("567","215","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("568","215","_sku",""),
("569","215","_regular_price","320000"),
("570","215","_sale_price","150000"),
("571","215","_sale_price_dates_from",""),
("572","215","_sale_price_dates_to",""),
("573","215","total_sales","0"),
("574","215","_tax_status","taxable"),
("575","215","_tax_class",""),
("576","215","_manage_stock","no"),
("577","215","_backorders","no"),
("578","215","_sold_individually","no"),
("579","215","_weight",""),
("580","215","_length",""),
("581","215","_width",""),
("582","215","_height",""),
("583","215","_upsell_ids","a:0:{}"),
("584","215","_crosssell_ids","a:0:{}"),
("585","215","_purchase_note",""),
("586","215","_default_attributes","a:0:{}"),
("587","215","_virtual","no"),
("588","215","_downloadable","no"),
("589","215","_product_image_gallery","");
INSERT INTO bz_postmeta VALUES
("590","215","_download_limit","-1"),
("591","215","_download_expiry","-1"),
("592","215","_stock",""),
("593","215","_stock_status","instock"),
("594","215","_product_version","3.3.5"),
("595","215","_price","150000"),
("596","215","_edit_lock","1524711958:1"),
("597","217","_wc_review_count","0"),
("598","217","_wc_rating_count","a:0:{}"),
("599","217","_wc_average_rating","0"),
("600","218","_wp_attached_file","2018/04/thenhanvienpsd03-600x600.jpg"),
("601","218","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2018/04/thenhanvienpsd03-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd03-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("602","217","_edit_last","1"),
("603","217","_thumbnail_id","218"),
("604","217","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("605","217","_sku",""),
("606","217","_regular_price","200000"),
("607","217","_sale_price","120000"),
("608","217","_sale_price_dates_from",""),
("609","217","_sale_price_dates_to",""),
("610","217","total_sales","0"),
("611","217","_tax_status","taxable"),
("612","217","_tax_class",""),
("613","217","_manage_stock","no"),
("614","217","_backorders","no"),
("615","217","_sold_individually","no"),
("616","217","_weight",""),
("617","217","_length",""),
("618","217","_width",""),
("619","217","_height",""),
("620","217","_upsell_ids","a:0:{}"),
("621","217","_crosssell_ids","a:0:{}"),
("622","217","_purchase_note",""),
("623","217","_default_attributes","a:0:{}"),
("624","217","_virtual","no"),
("625","217","_downloadable","no"),
("626","217","_product_image_gallery",""),
("627","217","_download_limit","-1"),
("628","217","_download_expiry","-1"),
("629","217","_stock",""),
("630","217","_stock_status","instock"),
("631","217","_product_version","3.3.5"),
("632","217","_price","120000"),
("633","217","_edit_lock","1524711978:1"),
("634","219","_wc_review_count","0"),
("635","219","_wc_rating_count","a:0:{}"),
("636","219","_wc_average_rating","0"),
("637","219","_edit_last","1"),
("638","219","_edit_lock","1524716587:1"),
("639","220","_wp_attached_file","2018/04/thenahnvienpsd-600x600.jpg"),
("640","220","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:34:\"2018/04/thenahnvienpsd-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"thenahnvienpsd-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("641","219","_thumbnail_id","220"),
("642","219","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("643","219","_sku",""),
("644","219","_regular_price","60000"),
("645","219","_sale_price","50000"),
("646","219","_sale_price_dates_from",""),
("647","219","_sale_price_dates_to",""),
("648","219","total_sales","0"),
("649","219","_tax_status","taxable"),
("650","219","_tax_class",""),
("651","219","_manage_stock","no"),
("652","219","_backorders","no"),
("653","219","_sold_individually","no"),
("654","219","_weight",""),
("655","219","_length",""),
("656","219","_width",""),
("657","219","_height",""),
("658","219","_upsell_ids","a:0:{}"),
("659","219","_crosssell_ids","a:0:{}"),
("660","219","_purchase_note",""),
("661","219","_default_attributes","a:0:{}"),
("662","219","_virtual","no"),
("663","219","_downloadable","no"),
("664","219","_product_image_gallery",""),
("665","219","_download_limit","-1"),
("666","219","_download_expiry","-1"),
("667","219","_stock",""),
("668","219","_stock_status","instock"),
("669","219","_product_version","3.3.5"),
("670","219","_price","50000"),
("671","221","_wc_review_count","0"),
("672","221","_wc_rating_count","a:0:{}"),
("673","221","_wc_average_rating","0"),
("674","222","_wp_attached_file","2018/04/thenhanvienpsd07-600x600.jpg"),
("675","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2018/04/thenhanvienpsd07-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"thenhanvienpsd07-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("676","221","_edit_last","1"),
("677","221","_thumbnail_id","222"),
("678","221","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("679","221","_sku",""),
("680","221","_regular_price","35000"),
("681","221","_sale_price","12000"),
("682","221","_sale_price_dates_from",""),
("683","221","_sale_price_dates_to",""),
("684","221","total_sales","0"),
("685","221","_tax_status","taxable"),
("686","221","_tax_class",""),
("687","221","_manage_stock","no"),
("688","221","_backorders","no"),
("689","221","_sold_individually","no");
INSERT INTO bz_postmeta VALUES
("690","221","_weight",""),
("691","221","_length",""),
("692","221","_width",""),
("693","221","_height",""),
("694","221","_upsell_ids","a:0:{}"),
("695","221","_crosssell_ids","a:0:{}"),
("696","221","_purchase_note",""),
("697","221","_default_attributes","a:0:{}"),
("698","221","_virtual","no"),
("699","221","_downloadable","no"),
("700","221","_product_image_gallery",""),
("701","221","_download_limit","-1"),
("702","221","_download_expiry","-1"),
("703","221","_stock",""),
("704","221","_stock_status","instock"),
("705","221","_product_version","3.3.5"),
("706","221","_price","12000"),
("707","221","_edit_lock","1524711993:1"),
("748","265","_wc_review_count","0"),
("749","265","_wc_rating_count","a:0:{}"),
("750","265","_wc_average_rating","0"),
("751","265","_edit_last","1"),
("752","265","_edit_lock","1524718414:1"),
("753","266","_wp_attached_file","2018/04/22-600x600.jpg"),
("754","266","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/04/22-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"22-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"22-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"22-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"22-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"22-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"22-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"22-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"22-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("755","265","_thumbnail_id","266"),
("756","265","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("757","265","_sku",""),
("758","265","_regular_price","45000"),
("759","265","_sale_price","40000"),
("760","265","_sale_price_dates_from",""),
("761","265","_sale_price_dates_to",""),
("762","265","total_sales","0"),
("763","265","_tax_status","taxable"),
("764","265","_tax_class",""),
("765","265","_manage_stock","no"),
("766","265","_backorders","no"),
("767","265","_sold_individually","no"),
("768","265","_weight",""),
("769","265","_length",""),
("770","265","_width",""),
("771","265","_height",""),
("772","265","_upsell_ids","a:0:{}"),
("773","265","_crosssell_ids","a:0:{}"),
("774","265","_purchase_note",""),
("775","265","_default_attributes","a:0:{}"),
("776","265","_virtual","no"),
("777","265","_downloadable","no"),
("778","265","_product_image_gallery","266"),
("779","265","_download_limit","-1"),
("780","265","_download_expiry","-1"),
("781","265","_stock",""),
("782","265","_stock_status","instock"),
("783","265","_product_version","3.3.5"),
("784","265","_price","40000"),
("785","267","_wc_review_count","0"),
("786","267","_wc_rating_count","a:0:{}"),
("787","267","_wc_average_rating","0"),
("788","267","_edit_last","1"),
("789","267","_edit_lock","1524711943:1"),
("790","268","_wp_attached_file","2018/04/14-600x600.jpg"),
("791","268","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2018/04/14-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"14-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"14-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"14-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"14-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"14-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"14-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"14-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"14-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("792","267","_thumbnail_id","268"),
("793","267","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("794","267","_sku",""),
("795","267","_regular_price","150000"),
("796","267","_sale_price","120000"),
("797","267","_sale_price_dates_from",""),
("798","267","_sale_price_dates_to",""),
("799","267","total_sales","0"),
("800","267","_tax_status","taxable"),
("801","267","_tax_class",""),
("802","267","_manage_stock","no"),
("803","267","_backorders","no"),
("804","267","_sold_individually","no"),
("805","267","_weight",""),
("806","267","_length",""),
("807","267","_width",""),
("808","267","_height",""),
("809","267","_upsell_ids","a:0:{}"),
("810","267","_crosssell_ids","a:0:{}"),
("811","267","_purchase_note",""),
("812","267","_default_attributes","a:0:{}"),
("813","267","_virtual","no"),
("814","267","_downloadable","no"),
("815","267","_product_image_gallery",""),
("816","267","_download_limit","-1"),
("817","267","_download_expiry","-1"),
("818","267","_stock",""),
("819","267","_stock_status","instock"),
("820","267","_product_version","3.3.5"),
("821","267","_price","120000"),
("822","269","_wc_review_count","0"),
("823","269","_wc_rating_count","a:0:{}"),
("824","269","_wc_average_rating","0"),
("825","269","_edit_last","1"),
("826","269","_edit_lock","1524711924:1"),
("827","270","_wp_attached_file","2018/04/5-600x600.jpg"),
("828","270","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2018/04/5-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"5-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"5-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"5-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"5-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"5-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"5-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("829","269","_thumbnail_id","270");
INSERT INTO bz_postmeta VALUES
("830","269","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("831","269","_sku",""),
("832","269","_regular_price","95000"),
("833","269","_sale_price","90000"),
("834","269","_sale_price_dates_from",""),
("835","269","_sale_price_dates_to",""),
("836","269","total_sales","0"),
("837","269","_tax_status","taxable"),
("838","269","_tax_class",""),
("839","269","_manage_stock","no"),
("840","269","_backorders","no"),
("841","269","_sold_individually","no"),
("842","269","_weight",""),
("843","269","_length",""),
("844","269","_width",""),
("845","269","_height",""),
("846","269","_upsell_ids","a:0:{}"),
("847","269","_crosssell_ids","a:0:{}"),
("848","269","_purchase_note",""),
("849","269","_default_attributes","a:0:{}"),
("850","269","_virtual","no"),
("851","269","_downloadable","no"),
("852","269","_product_image_gallery",""),
("853","269","_download_limit","-1"),
("854","269","_download_expiry","-1"),
("855","269","_stock",""),
("856","269","_stock_status","instock"),
("857","269","_product_version","3.3.5"),
("858","269","_price","90000"),
("859","276","_wp_attached_file","2018/04/ICON-1.png"),
("860","276","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/04/ICON-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("861","284","_wp_attached_file","2018/04/ICON-3.png"),
("862","284","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/04/ICON-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("863","285","_wp_attached_file","2018/04/ICON-4.png"),
("864","285","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/04/ICON-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("865","286","_wp_attached_file","2018/04/ICON-2.png"),
("866","286","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/04/ICON-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("904","1","_edit_lock","1524712512:1"),
("905","1","_edit_last","1"),
("906","1","_thumbnail_id","170"),
("910","338","_edit_last","1"),
("911","338","_edit_lock","1524712396:1"),
("912","338","_thumbnail_id","172"),
("916","342","_edit_last","1"),
("917","342","_edit_lock","1524712624:1"),
("918","342","_thumbnail_id","168"),
("920","344","_edit_last","1"),
("921","344","_edit_lock","1524712665:1"),
("922","344","_thumbnail_id","266"),
("932","352","_form","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]"),
("933","352","_mail","a:8:{s:7:\"subject\";s:57:\"Mẫu web biển chức danh - Webdesign \"[your-subject]\"\";s:6:\"sender\";s:48:\"[your-name] <wordpress@bienchucdanh.webdemo.com>\";s:4:\"body\";s:269:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\";s:9:\"recipient\";s:19:\"webdesign@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("934","352","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:57:\"Mẫu web biển chức danh - Webdesign \"[your-subject]\"\";s:6:\"sender\";s:77:\"Mẫu web biển chức danh - Webdesign <wordpress@bienchucdanh.webdemo.com>\";s:4:\"body\";s:194:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: webdesign@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("935","352","_messages","a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";}"),
("936","352","_additional_settings",""),
("937","352","_locale","vi"),
("938","353","_form","<div class=\"form-lien-he\">\n<h3 class=\"widgettitle\">Liên hệ đặt hàng</h3>\n<span class=\"mo-ta\"> Mọi thắc mắc, góp ý và yêu cầu đặt hàng quý khách vui lòng gửi lại thông tin cho chúng tôi tại đây.</span>\n<div class=\"form-main\">\n[text* text-57 placeholder \"Họ tên của bạn...\"]\n[tel* tel-666 placeholder \"Số điện thoại...\"]\n[email* email-843 placeholder \"Địa chỉ email...\"]\n[submit \"Gửi liên hệ\"]\n</div>\n</div>"),
("939","353","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:40:\"Mẫu web biển chức danh - Webdesign\";s:6:\"sender\";s:36:\"<wordpress@bienchucdanh.webdemo.com>\";s:9:\"recipient\";s:19:\"webdesign@gmail.com\";s:4:\"body\";s:296:\"Có người liên hệ qua website, thông tin như sau:\n\nHọ tên: [text-57]\nSố điện thoại: [tel-666]\nĐịa chỉ email: [email-843]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("940","353","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:57:\"Mẫu web biển chức danh - Webdesign \"[your-subject]\"\";s:6:\"sender\";s:77:\"Mẫu web biển chức danh - Webdesign <wordpress@bienchucdanh.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:194:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\";s:18:\"additional_headers\";s:29:\"Reply-To: webdesign@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("941","353","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("942","353","_additional_settings",""),
("943","353","_locale","vi"),
("978","375","_edit_last","1"),
("979","375","_edit_lock","1524714272:1"),
("981","379","_edit_last","1"),
("982","379","_edit_lock","1524717492:1"),
("988","375","_thumbnail_id",""),
("1002","399","_edit_last","1"),
("1003","399","_edit_lock","1524715210:1"),
("1004","399","_footer","normal"),
("1005","399","_wp_page_template","page-right-sidebar.php"),
("1025","411","_menu_item_type","post_type"),
("1026","411","_menu_item_menu_item_parent","0"),
("1027","411","_menu_item_object_id","399"),
("1028","411","_menu_item_object","page"),
("1029","411","_menu_item_target",""),
("1030","411","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1031","411","_menu_item_xfn",""),
("1032","411","_menu_item_url",""),
("1034","412","_edit_last","1"),
("1035","412","_footer","normal"),
("1036","412","_wp_page_template","page-right-sidebar.php"),
("1037","412","_edit_lock","1524715632:1"),
("1039","415","_menu_item_type","post_type"),
("1040","415","_menu_item_menu_item_parent","0"),
("1041","415","_menu_item_object_id","412"),
("1042","415","_menu_item_object","page"),
("1043","415","_menu_item_target",""),
("1044","415","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1045","415","_menu_item_xfn",""),
("1046","415","_menu_item_url",""),
("1048","416","_menu_item_type","post_type"),
("1049","416","_menu_item_menu_item_parent","0"),
("1050","416","_menu_item_object_id","48"),
("1051","416","_menu_item_object","page"),
("1052","416","_menu_item_target",""),
("1053","416","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1054","416","_menu_item_xfn",""),
("1055","416","_menu_item_url",""),
("1057","417","_menu_item_type","taxonomy"),
("1058","417","_menu_item_menu_item_parent","0");
INSERT INTO bz_postmeta VALUES
("1059","417","_menu_item_object_id","26"),
("1060","417","_menu_item_object","category"),
("1061","417","_menu_item_target",""),
("1062","417","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1063","417","_menu_item_xfn",""),
("1064","417","_menu_item_url",""),
("1066","418","_edit_last","1"),
("1067","418","_edit_lock","1524715681:1"),
("1068","418","_footer","normal"),
("1069","418","_wp_page_template","page-right-sidebar.php"),
("1070","420","_menu_item_type","post_type"),
("1071","420","_menu_item_menu_item_parent","0"),
("1072","420","_menu_item_object_id","418"),
("1073","420","_menu_item_object","page"),
("1074","420","_menu_item_target",""),
("1075","420","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1076","420","_menu_item_xfn",""),
("1077","420","_menu_item_url",""),
("1079","421","_menu_item_type","post_type"),
("1080","421","_menu_item_menu_item_parent","0"),
("1081","421","_menu_item_object_id","50"),
("1082","421","_menu_item_object","page"),
("1083","421","_menu_item_target",""),
("1084","421","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1085","421","_menu_item_xfn",""),
("1086","421","_menu_item_url",""),
("1088","422","_menu_item_type","post_type"),
("1089","422","_menu_item_menu_item_parent","0"),
("1090","422","_menu_item_object_id","418"),
("1091","422","_menu_item_object","page"),
("1092","422","_menu_item_target",""),
("1093","422","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1094","422","_menu_item_xfn",""),
("1095","422","_menu_item_url",""),
("1097","423","_menu_item_type","custom"),
("1098","423","_menu_item_menu_item_parent","0"),
("1099","423","_menu_item_object_id","423"),
("1100","423","_menu_item_object","custom"),
("1101","423","_menu_item_target",""),
("1102","423","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1103","423","_menu_item_xfn",""),
("1104","423","_menu_item_url",""),
("1188","462","_wp_attached_file","2018/04/slider1-1.jpg"),
("1189","462","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2018/04/slider1-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"slider1-1-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider1-1-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider1-1-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slider1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"slider1-1-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"slider1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"slider1-1-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1190","462","_edit_lock","1524717148:1"),
("1201","379","_thumbnail_id",""),
("1204","473","_wp_attached_file","2018/04/map-1.png"),
("1205","473","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2018/04/map-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1206","475","_wp_attached_file","2018/04/Local-seo-1.png"),
("1207","475","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:23:\"2018/04/Local-seo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1208","477","_wp_attached_file","2018/04/pair-ads-1.png"),
("1209","477","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2018/04/pair-ads-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1210","479","_wp_attached_file","2018/06/bizhost-logo-demo.png"),
("1211","479","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:29:\"2018/06/bizhost-logo-demo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"bizhost-logo-demo-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"bizhost-logo-demo-100x75.png\";s:5:\"width\";i:100;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"bizhost-logo-demo-100x75.png\";s:5:\"width\";i:100;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1212","480","_wp_attached_file","woocommerce-placeholder.png"),
("1213","480","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2018-04-25 05:22:25","2018-04-25 05:22:25","<h4>Bảng tên nhân viên cài áo bằng nam châm.</h4>\n<h4>Nhiều người vẫn chưa nắm rõ bảng tên nhân viên có những loại cài nam châm nào. Sau đây quý Công Ty Đại Dương xin giới thiệu tới quý vị những loại nam châm được sử dụng cho bảng tên nhân viên như sau</h4>\n<figure id=\"attachment_2083\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/bangtennhanvien/htb1m1gpnfxxxxxsxpxxq6xxfxxxm/\" rel=\"attachment wp-att-2083\"><img class=\"size-large wp-image-2083\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-400x400.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-400x400.jpg 400w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm-600x600.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/HTB1m1GPNFXXXXXSXpXXq6xXFXXXm.jpg 750w\" alt=\"\" width=\"400\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">Các loại nam châm được dùng trong nghành làm bảng tên nhân viên.</figcaption></figure>\n<h4>Trên thị trường giờ có rất nhiều loại nam châm dùng để cài bảng tên nhân viên, nhưng khách hàng không biết lên dùng loại nam châm nào cho hợp lý.</h4>\n<h4>Nam châm 3 viên, nam châm 2 viên, nam châm 1 viên.</h4>\n<h4>Tùy vào mục đính sử dụng và kích thước bảng tên nhân viên mà chúng ta sẽ lựa chọn cho mình được loại nam châm cài bảng tên nhân viên.</h4>\n<h4>Dòng loại nam châm 3 viên thường được dùng cho các loại bảng tên nhân viên bằng kim loại nặng có kích thước tối thiểu là 55x20mm trở lên, với loại nam châm 3 viên thì đảm bảo lực hút của chúng rất mạnh, có thể hút chắc chắn qua một lớp áo phao</h4>\n<h4>Dòng nam châm 2 viên thường được dùng cho các loại bảng tên nhân viên bằng mica, nhôm mạ đồng hoặc bạc.</h4>\n<h4>Dòng nam châm 1 viên thường được dùng cho các sản phẩm huy hiệu cài áo</h4>\n<h4>Vì thế khi quý khách hàng muốn đặt sản phẩm cho đơn vị mình mà chưa biết lên dùng loại nào cho hợp lý thì bài viết trên phần nào đã giúp quý khách hiểu rõ hơn về bảng tên nhân viên cài áo của đơn vị mình thì lên dùng loại nam châm nào cho hợp lý</h4>\n<h4>Mọi chi tiết xin vui lòng liên hệ:</h4>","Giới thiệu tới mọi người các loại biển tên nhân viên cài áo đẹp","","publish","open","open","","chao-moi-nguoi","","","2018-04-26 10:17:29","2018-04-26 03:17:29","","0","https://bizhostvn.com/w/bienchucdanh/?p=1","0","post","","1"),
("2","1","2018-04-25 05:22:25","2018-04-25 05:22:25","[section label=\"Slider\" class=\"slider-section\" bg_color=\"rgb(210, 210, 210)\" padding=\"0px\"]\n\n[gap height=\"20px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"12\" class=\"cot1\"]\n\n[ux_sidebar id=\"danh-muc-san-pham\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot2\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"4000\"]\n\n[ux_image id=\"46\" image_size=\"original\" height=\"56.6%\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" class=\"cot3\"]\n\n[ux_sidebar id=\"ho-tro-truc-tuyen\"]\n\n[ux_sidebar id=\"designer\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm chính\" class=\"sp-chinh\" bg=\"182\" padding=\"20px\"]\n\n[title style=\"center\" text=\"Sản phẩm chính\" color=\"rgb(0, 21, 40)\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" depth=\"1\" depth_hover=\"3\" number=\"8\" image_height=\"65%\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/section]\n[section label=\"Sản phẩm nổi bật\" class=\"sp-noi-bat\" bg_color=\"rgb(255, 255, 255)\" border=\"1 0px 0px 0px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm nổi bật\" color=\"rgb(0, 25, 49)\"]\n\n[tabgroup style=\"pills\" nav_style=\"normal\" align=\"center\"]\n\n[tab title=\"Thẻ nhân viên\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" products=\"10\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n[tab title=\"Biển tên nhân viên\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" orderby=\"rand\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n[tab title=\"Dây đeo, bao đựng thẻ\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" products=\"9\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n[tab title=\"Biển phòng, biển chỉ dẫn\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" products=\"10\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n[tab title=\"Biển phòng, biển chỉ dẫn\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" orderby=\"sales\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n[tab title=\"Biển phòng, biển chỉ dẫn\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"20\" products=\"10\" order=\"asc\" image_height=\"100%\" image_size=\"original\"]\n\n\n[/tab]\n\n[/tabgroup]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"4 tính năng\" class=\"bon-tinh-nang\" bg_color=\"rgb(22, 54, 69)\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[featured_box img=\"276\" pos=\"left\"]\n\n[gap height=\"9px\"]\n\n<p>Giao hàng miễn phí<br /><span style=\"font-size: 80%;\">nội thành Hà Nội</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[featured_box img=\"286\" pos=\"left\"]\n\n[gap height=\"9px\"]\n\n<p>Thiết kế miễn phí<br /><span style=\"font-size: 80%;\">hoàn toàn free và nhanh chóng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[featured_box img=\"284\" pos=\"left\"]\n\n[gap height=\"9px\"]\n\n<p>Làm sp mẫu miễn phí<br /><span style=\"font-size: 80%;\">trực quan hơn, dễ duyệt hơn</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[featured_box img=\"285\" pos=\"left\"]\n\n[gap height=\"9px\"]\n\n<p>Phục vụ 24/7<br /><span style=\"font-size: 80%;\">sẵn sàng phục vụ kể cả ngày lễ</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm đặc trưng\" class=\"sp-dac-trung\" bg_color=\"rgb(210, 210, 210)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3 class=\"widgettitle\">Sản phẩm đặc trưng</h3>\n[ux_products_list products=\"4\" orderby=\"sales\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3 class=\"widgettitle\">Sản phẩm mới</h3>\n[ux_products_list products=\"4\" orderby=\"title\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3 class=\"widgettitle\">Sản phẩm xem nhiều</h3>\n[ux_products_list products=\"4\" orderby=\"date\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3 class=\"widgettitle\">Sản phẩm bán chạy</h3>\n[ux_products_list products=\"4\" orderby=\"sales\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin tức - Bài viết\" color=\"rgb(0, 18, 38)\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns__md=\"1\" posts=\"4\" show_date=\"text\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Bản đồ\" class=\"ban-do\" padding=\"0px\"]\n\n<p><center><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14900.931775031808!2d105.79967699999999!3d20.9832975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1524713024878\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></center></p>\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[contact-form-7 id=\"353\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-04-26 10:55:18","2018-04-26 03:55:18","","0","https://bizhostvn.com/w/bienchucdanh/?page_id=2","0","page","","0"),
("10","1","2018-04-25 14:00:36","2018-04-25 07:00:36"," ","","","publish","closed","closed","","10","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=10","1","nav_menu_item","","0"),
("28","1","2018-04-25 14:09:34","2018-04-25 07:09:34","","logo","","inherit","open","closed","","logo","","","2018-04-25 14:09:34","2018-04-25 07:09:34","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/logo.png","0","attachment","image/png","0"),
("31","1","2018-04-25 14:10:02","2018-04-25 07:10:02","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/cropped-logo.png","cropped-logo.png","","inherit","open","closed","","cropped-logo-png","","","2018-04-25 14:10:02","2018-04-25 07:10:02","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/cropped-logo.png","0","attachment","image/png","0"),
("46","1","2018-04-25 14:18:53","2018-04-25 07:18:53","","slider1","","inherit","open","closed","","slider1","","","2018-04-25 14:18:53","2018-04-25 07:18:53","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/slider1.jpg","0","attachment","image/jpeg","0"),
("48","1","2018-04-25 14:21:46","2018-04-25 07:21:46","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2018-04-25 14:21:46","2018-04-25 07:21:46","","0","https://bizhostvn.com/w/bienchucdanh/cua-hang/","0","page","","0"),
("49","1","2018-04-25 14:21:46","2018-04-25 07:21:46","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2018-04-25 14:21:46","2018-04-25 07:21:46","","0","https://bizhostvn.com/w/bienchucdanh/gio-hang/","0","page","","0"),
("50","1","2018-04-25 14:21:46","2018-04-25 07:21:46","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2018-04-25 14:21:46","2018-04-25 07:21:46","","0","https://bizhostvn.com/w/bienchucdanh/thanh-toan/","0","page","","0"),
("51","1","2018-04-25 14:21:46","2018-04-25 07:21:46","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2018-04-25 14:21:46","2018-04-25 07:21:46","","0","https://bizhostvn.com/w/bienchucdanh/tai-khoan/","0","page","","0"),
("52","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","52","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=52","1","nav_menu_item","","0"),
("53","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","53","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=53","2","nav_menu_item","","0"),
("54","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","54","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=54","3","nav_menu_item","","0"),
("55","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","55","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=55","4","nav_menu_item","","0"),
("56","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","56","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=56","5","nav_menu_item","","0"),
("57","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","57","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=57","6","nav_menu_item","","0"),
("58","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","58","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=58","7","nav_menu_item","","0"),
("59","1","2018-04-25 14:23:32","2018-04-25 07:23:32"," ","","","publish","closed","closed","","59","","","2018-04-25 14:23:32","2018-04-25 07:23:32","","0","https://bizhostvn.com/w/bienchucdanh/?p=59","8","nav_menu_item","","0"),
("60","1","2018-04-25 14:24:06","2018-04-25 07:24:06","","Danh mục sản phẩm","","publish","closed","closed","","danh-muc-san-pham","","","2018-04-25 14:24:06","2018-04-25 07:24:06","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=sidebar&#038;p=60","0","sidebar","","0"),
("66","1","2018-04-25 14:29:06","2018-04-25 07:29:06","","icon-chat","","inherit","open","closed","","icon-chat","","","2018-04-25 14:29:06","2018-04-25 07:29:06","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/icon-chat.png","0","attachment","image/png","0"),
("101","1","2018-04-25 14:43:35","2018-04-25 07:43:35","","icon-menu-cat2","","inherit","open","closed","","icon-menu-cat2","","","2018-04-25 14:43:35","2018-04-25 07:43:35","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/icon-menu-cat2.png","0","attachment","image/png","0"),
("128","1","2018-04-25 15:00:38","2018-04-25 08:00:38","","Hỗ trợ trực tuyến","","publish","closed","closed","","ho-tro-truc-tuyen","","","2018-04-25 15:00:38","2018-04-25 08:00:38","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=sidebar&#038;p=128","0","sidebar","","0"),
("140","1","2018-04-25 15:09:05","2018-04-25 08:09:05","","Designer","","publish","closed","closed","","designer","","","2018-04-25 15:09:05","2018-04-25 08:09:05","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=sidebar&#038;p=140","0","sidebar","","0"),
("163","1","2018-04-26 08:29:58","2018-04-26 01:29:58","Mẫu mác, tem kim loại\n\nĐa dạng mọi kích thước\n\nChất liệu đồng ăn mòn, kim loại ăn mòn, inox ăn mòn\n\nGọi ngay 0965.558.728 để được tư vấn","Tem Mác Kim Loại 04","Mẫu mác, tem kim loại\n\nĐa dạng mọi kích thước\n\nChất liệu đồng ăn mòn, kim loại ăn mòn, inox ăn mòn\n\nGọi ngay 0965.558.728 để được tư vấn","publish","open","closed","","tem-mac-kim-loai-04","","","2018-04-26 09:55:06","2018-04-26 02:55:06","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=163","0","product","","0"),
("164","1","2018-04-26 08:29:52","2018-04-26 01:29:52","","1","","inherit","open","closed","","1","","","2018-04-26 08:29:52","2018-04-26 01:29:52","","163","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/1.jpg","0","attachment","image/jpeg","0"),
("165","1","2018-04-26 08:31:30","2018-04-26 01:31:30","","bien-ten-nhan-vien","","inherit","open","closed","","bien-ten-nhan-vien","","","2018-04-26 08:31:30","2018-04-26 01:31:30","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/bien-ten-nhan-vien.jpg","0","attachment","image/jpeg","0"),
("166","1","2018-04-26 08:34:35","2018-04-26 01:34:35","","biển-chỉ-dẫn","","inherit","open","closed","","bien-chi-dan","","","2018-04-26 08:34:35","2018-04-26 01:34:35","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/biển-chỉ-dẫn.jpg","0","attachment","image/jpeg","0"),
("167","1","2018-04-26 08:35:30","2018-04-26 01:35:30","","bao-đựng-thẻ","","inherit","open","closed","","bao-dung-the","","","2018-04-26 08:35:30","2018-04-26 01:35:30","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/bao-đựng-thẻ.jpg","0","attachment","image/jpeg","0"),
("168","1","2018-04-26 08:36:10","2018-04-26 01:36:10","","huy-hiệu-nhãn-mác","","inherit","open","closed","","huy-hieu-nhan-mac","","","2018-04-26 08:36:10","2018-04-26 01:36:10","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/huy-hiệu-nhãn-mác.jpg","0","attachment","image/jpeg","0"),
("169","1","2018-04-26 08:37:18","2018-04-26 01:37:18","","thẻ-sinh-viên","","inherit","open","closed","","the-sinh-vien","","","2018-04-26 08:37:18","2018-04-26 01:37:18","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thẻ-sinh-viên.jpg","0","attachment","image/jpeg","0"),
("170","1","2018-04-26 08:38:16","2018-04-26 01:38:16","","thẻ-nhân-viên","","inherit","open","closed","","the-nhan-vien","","","2018-04-26 08:38:16","2018-04-26 01:38:16","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thẻ-nhân-viên.jpg","0","attachment","image/jpeg","0"),
("171","1","2018-04-26 08:39:06","2018-04-26 01:39:06","","thẻ-thay-tên-nhân-viên","","inherit","open","closed","","the-thay-ten-nhan-vien","","","2018-04-26 08:39:06","2018-04-26 01:39:06","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thẻ-thay-tên-nhân-viên.jpg","0","attachment","image/jpeg","0"),
("172","1","2018-04-26 08:39:41","2018-04-26 01:39:41","","17191022_107922253072997_4056539791370356577_n","","inherit","open","closed","","17191022_107922253072997_4056539791370356577_n","","","2018-04-26 08:39:41","2018-04-26 01:39:41","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/17191022_107922253072997_4056539791370356577_n.jpg","0","attachment","image/jpeg","0"),
("173","1","2018-04-26 08:40:12","2018-04-26 01:40:12","","thẻ-vip","","inherit","open","closed","","the-vip","","","2018-04-26 08:40:12","2018-04-26 01:40:12","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thẻ-vip.jpg","0","attachment","image/jpeg","0"),
("182","1","2018-04-26 08:45:43","2018-04-26 01:45:43","","bg-news1","","inherit","open","closed","","bg-news1","","","2018-04-26 08:45:43","2018-04-26 01:45:43","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/bg-news1.jpg","0","attachment","image/jpeg","0"),
("186","1","2018-04-26 08:48:42","2018-04-26 01:48:42","","hi","","inherit","open","closed","","hi","","","2018-04-26 08:48:42","2018-04-26 01:48:42","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/hi.jpg","0","attachment","image/jpeg","0"),
("199","1","2018-04-26 08:54:45","2018-04-26 01:54:45","","LOGO-NINHBINHWEB-01-1","","inherit","open","closed","","logo-ninhbinhweb-01-1","","","2018-04-26 08:54:45","2018-04-26 01:54:45","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/LOGO-NINHBINHWEB-01-1.png","0","attachment","image/png","0"),
("209","1","2018-04-26 09:01:20","2018-04-26 02:01:20","Mẫu mác, tem kim loại\n\nĐa dạng mọi kích thước\n\nChất liệu đồng ăn mòn, kim loại ăn mòn, inox ăn mòn\n\nGọi ngay 0965.558.728 để được tư vấn","Tem Mác Kim Loại 04","Mẫu mác, tem kim loại\n\nĐa dạng mọi kích thước\n\nChất liệu đồng ăn mòn, kim loại ăn mòn, inox ăn mòn\n\nGọi ngay 0965.558.728 để được tư vấn","publish","open","closed","","tem-mac-kim-loai-04-2","","","2018-04-26 10:03:00","2018-04-26 03:03:00","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=209","0","product","","0"),
("210","1","2018-04-26 09:00:50","2018-04-26 02:00:50","","hi-250x250-1","","inherit","open","closed","","hi-250x250-1","","","2018-04-26 09:00:50","2018-04-26 02:00:50","","209","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/hi-250x250-1.jpg","0","attachment","image/jpeg","0"),
("211","1","2018-04-26 09:02:49","2018-04-26 02:02:49","In thẻ nhân viên – Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh chuyên in thẻ nhựa, in thẻ nhân viên, thẻ học sinh, thẻ sinh viên và các loại biển tên nhân viên, thẻ thay tên nhân viên\n\n1. Thẻ nhân viên là gì và vì sao lên in thẻ nhân viên\nThẻ nhân viên là tấm thẻ được các công ty và doanh nghiệp phát cho nhân viên của mình. Ngoài công dụng là để các thành viên trong công ty nhanh chóng xác định được tên, chức vụ và phòng ban của đồng nghiệp… thì thẻ nhân viên còn là cách để công ty hay doanh nghiệp quảng cáo được thương hiệu, đặc trưng, tính chuyên nghiệp của mình đến khách hàng nói riêng và tất cả mọi người nói chung khi nhìn họ thấy chúng.\n\nĐeo thẻ nhân viên còn giúp nhân viên cảm thấy tự tin, thể hiện được sự tôn trọng, nghiêm túc của họ với công ty.\n\nthẻ nhựa\nthẻ nhựa\n2. Mô tả thẻ nhân viên, cách thức in thẻ nhân viên\nTùy vào đặc điểm công ty hay đặc thù công việc mà mỗi công ty hay doanh nghiệp sẽ có yêu cầu khác nhau về kích thước hay chất liệu của thẻ nhân viên. Và chất liệu được chọn nhiều nhất vẫn là PVC. Kích thước 86x54mm là kích thước tiêu chuẩn của châu âu\n\nThẻ nhân viên được in trực tiếp trên bề mặt nhựa pvc, ép 4 lớp cao tầng. Có thể in ảnh, tên, chức vụ, phòng ban, thông tin về cơ quan, công ty hay doanh nghiệp là những phần cơ bản nhất trên một tấm thẻ nhân viên. Bề mặt thẻ được phủ một lớp bìa nhựa bóng tạo cho người đeo tấm thẻ sự chuyên nghiệp, năng động,\n\nMọi thông tin về thẻ nhân viên xin vui lòng liên hệ\n\nMr Trường\nMobile: 0965.558.728\n\nEmail: bienchucdanh01@gmail.com\n\nWebsite 1: bienchucdanh.vn\n\nWebsite 2: thenhanvien-thevip.com\n\nCông ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh\n\nĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà\n\nNội\n\nVP: Số 1 ngách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội\n\nMST: 0106665244\n\nTK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long","Thẻ Nhân Viên 07","Thông tin về thẻ nhân viên\n– Chất liệu: nhựa pvc\n– Công nghệ in: in thẻ nhân viên trực tiếp trên nhựa pvc ép 4 lớp cao tầng\n– Kích thước: 86×54 (mm)","publish","open","closed","","the-nhan-vien-07","","","2018-04-26 10:03:19","2018-04-26 03:03:19","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=211","0","product","","0"),
("212","1","2018-04-26 09:02:40","2018-04-26 02:02:40","","thenhanvien13-600x600","","inherit","open","closed","","thenhanvien13-600x600","","","2018-04-26 09:02:40","2018-04-26 02:02:40","","211","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thenhanvien13-600x600.jpg","0","attachment","image/jpeg","0"),
("213","1","2018-04-26 09:03:43","2018-04-26 02:03:43","<h4>Công Đại Dương Xanh chuyên in ấn, làm thẻ nhân viên đẹp, thiết kế thẻ nhân viên đẹp, cung cấp các mẫu thẻ nhân viên đẹp cho các đơn vị tại hà nội. Ngoài ra chúng tôi còn cung cấp thẻ nhân viên đẹp trên toàn quốc.</h4>\n<h4>1. Thẻ nhân viên là gì, tại sao cần mẫu thiết kế thẻ nhân viên đẹp ?</h4>\n<h4>Thẻ nhân viên là tấm thẻ được các công ty và doanh nghiệp phát cho nhân viên của</h4>\n<h4>mình. Ngoài công dụng là để các thành viên trong công ty nhanh chóng xác định được</h4>\n<h4>tên, chức vụ và phòng ban của đồng nghiệp… thì thiết kế một mẫu thẻ nhân viên đẹp, phù hợp với môi trường doanh nghiệp còn là cách để công ty hay doanh nghiệp quảng cáo được thương hiệu, đặc trưng, tính chuyên nghiệp của mình đến khách hàng nói riêng và tất cả mọi người nói chung khi nhìn họ thấy một mẫu thẻ nhân viên đẹp, phù hợp với doanh nghiệp bạn</h4>\n<h4> Một mẫu thẻ nhân viên đẹp còn giúp nhân viên cảm thấy tự tin, thể hiện được sự tôn trọng, nghiêm túc của họ với công ty.</h4>\n<figure id=\"attachment_2296\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/the-nhan-vien-dep/in-the-nhan-vien-3/\" rel=\"attachment wp-att-2296\"><img class=\"size-large wp-image-2296\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/in-the-nhan-vien-1-247x400.jpg\" sizes=\"(max-width: 247px) 100vw, 247px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/in-the-nhan-vien-1-247x400.jpg 247w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/in-the-nhan-vien-1-154x250.jpg 154w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/in-the-nhan-vien-1-768x1244.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/in-the-nhan-vien-1.jpg 800w\" alt=\"Mẫu thẻ nhân viên đẹp\" width=\"247\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">Mẫu thẻ nhân viên đẹp</figcaption></figure>\n<h4>2. Chất liệu làm thẻ nhân viên để có được sản phẩm thẻ nhân viên đẹp</h4>\n<h4>Ngày trước, khi công nghệ chưa phát triển được bây giờ thì thẻ nhân viên được làm từ chất liệu rất đơn giản như giấy bìa cứng, thậm chí ở một số công ty hay doanh nghiệp, nhân viên còn tự viết tên, chức vụ của mình lên một mẩu giấy. Tuy nhiên, với sự hiện đại và tiên tiến của khoa học – kĩ thuật, đòi hỏi cần một mẫu thẻ nhân viên đẹp, chất lượng thì người ta đã chế tạo ra rất nhiều loại chất dẻo, trong đó có PVC, một loại nhựa có nhiều tính chất quý như: bền thời tiết, bền oxy hóa, dễ gia công, … và sản phẩm làm từ loại nhựa này cũng rất đa dạng, trong đó có thẻ nhân viên để phục vụ những mẫu mã thẻ nhân viên đẹp và chất lượng tới tay khách hàng hơn</h4>\n<h4>3. Mô tả thẻ nhân viên</h4>\n<h4>Tùy vào đặc điểm công ty hay đặc thù công việc mà mỗi công ty hay doanh nghiệp sẽ có yêu cầu khác nhau về kích thước, thiết kế hay chất liệu của thẻ nhân viên. Và chất liệu được chọn nhiều nhất để tạo lên thẻ nhân viên đẹp, bền vẫn là nhựa PVC. Kích thước 86x54mm là kích thước phổ biến được các doanh nghiệp hay công ty yêu cầu khi muốn làm thẻ nhân viên cho nhân viên của họ.</h4>\n<h4>Ảnh, tên, chức vụ, phòng ban, thông tin về cơ quan, công ty hay doanh nghiệp là những phần cơ bản nhất trên một tấm thẻ nhân viên đẹp. Bề mặt thẻ được phủ một lớp bìa nhựa bóng tạo cho người đeo tấm thẻ sự chuyên nghiệp, năng động</h4>\n<h4>Ngoài những yếu tố cần thiết để tạo ra chiếc thẻ nhân viên đẹp ra thì các doanh nghiệp hay công ty có thể in nhiều màu, in hai mặt, in mã vạch hoặc mã QR lên thẻ nhân viên để thể hiện sự chuyên nghiệp nhất mà một chiếc thẻ nhân viên đẹp cần có</h4>\n<h4>Mọi thông tin xin vui lòng liên hệ</h4>\n<h4></h4>\n<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh\nĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà Nội\nVP: Số 1 nghách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội\nMST: 0106665244\nTK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long</h4>","Thẻ Nhân Viên 04","<h3>Thông tin về thẻ nhân viên</h3>\n<h3>– Chất liệu: nhựa pvc</h3>\n<h3>– Công nghệ in: in trực tiếp trên nhựa pvc ép 4 lớp cao tầng</h3>\n<h3>– Kích thước: 86×54 (mm)</h3>","publish","open","closed","","the-nhan-vien-04","","","2018-04-26 10:03:37","2018-04-26 03:03:37","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=213","0","product","","0"),
("214","1","2018-04-26 09:03:34","2018-04-26 02:03:34","","thenhanvienpsd10-600x600","","inherit","open","closed","","thenhanvienpsd10-600x600","","","2018-04-26 09:03:34","2018-04-26 02:03:34","","213","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thenhanvienpsd10-600x600.jpg","0","attachment","image/jpeg","0"),
("215","1","2018-04-26 09:04:38","2018-04-26 02:04:38","<h4>Công ty TNHH Thương mại và Dịch vụ Đại Dương Xanh rất hoan nghênh bạn đã truy cập vào bienchucdanh.vn</h4>\n<h4>Đại Dương Xanh là công ty chuyên in ấn, thiết kế bộ nhận diện thương hiệu. Chúng tôi trực tiếp sản xuất thẻ nhân viên, thẻ học sinh, thẻ sinh viên…vv. Tận dụng những lợi thế sẵn có về công nghệ in hàng đầu hiện nay và đội ngũ designer chuyên nghiệp, chúng tôi cam kết sẽ mang tới cho quý khách những mẫu thiết kế đẹp nhất, chất lượng tốt nhất, kiểu dáng phù hợp nhất cho đơn vị mình</h4>\n<figure id=\"attachment_2338\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/mau-the-sinh-vien-06/01-1-533x400/\" rel=\"attachment wp-att-2338\"><img class=\"size-large wp-image-2338\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/01-1-533x400-1-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/01-1-533x400-1.jpg 533w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/01-1-533x400-1-333x250.jpg 333w\" alt=\"thẻ sinh viên\" width=\"533\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">Thẻ sinh viên</figcaption></figure>\n<h4>Mô tả thẻ sinh viên :</h4>\n<h4>Được in trực tiếp trên giấy nhựa pvc\nBề mặt phủ lớp bìa nhựa bóng\nKích thước 86×54 (mm)\nCó thể in hai mặt\nChất liệu phôi thẻ sinh viên :</h4>\n<h4>Phôi nhựa pvc\nĐặc điểm nổi bật thẻ sinh viên :</h4>\n<h4>Có thể in nhiều màu\nCó thể in mã vạch\nĐộ bền cao\nGiúp đơn vị diện dễ dàng quản lý sinh viên\nVới đội ngũ thiết kế chuyên nghiệp và dày dặn kinh nghiệm làm việc, Đại Dương</h4>\n<h4>Xanh tự hào là đơn vị sản xuất và phân phối thẻ sinh viên hàng đầu cả nước</h4>\n<h4>Chúng tôi cam kết sẽ mang tới cho quý đơn vị những mẫu thiết kế đẹp nhất, kiểu dáng</h4>\n<h4>phù hợp nhất cho đơn vị mình.</h4>\n<h4>Mọi chị tiết về sản phẩm xin vui lòng liên hệ :</h4>\n<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh</h4>\n<h4></h4>\n<h4>ĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà</h4>\n<h4>Nội</h4>\n<h4>VP: Số 1 ngách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội</h4>\n<h4>MST: 0106665244</h4>\n<h4>TK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long</h4>","Thẻ Sinh Viên 06","<h4>Thông tin về thẻ sinh viên</h4>\n<h4>– Chất liệu: nhựa pvc</h4>\n<h4>– Công nghệ in: in ép nhiệt cao tầng.</h4>\n<h4>– Kích thước: 86×54 mm</h4>\n<h4>Mọi chị tiết về sản phẩm xin vui lòng liên hệ :</h4>","publish","open","closed","","the-sinh-vien-06","","","2018-04-26 10:08:21","2018-04-26 03:08:21","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=215","0","product","","0"),
("216","1","2018-04-26 09:04:34","2018-04-26 02:04:34","","18b-600x600","","inherit","open","closed","","18b-600x600","","","2018-04-26 09:04:34","2018-04-26 02:04:34","","215","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/18b-600x600.jpg","0","attachment","image/jpeg","0"),
("217","1","2018-04-26 09:05:27","2018-04-26 02:05:27","<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh là công ty chuyên về lĩnh vực</h4>\n<h4>in thẻ nhựa, thẻ nhân viên, thẻ thay tên nhân viên, thẻ VIP, thẻ nhân viên bằng nhựa, thẻ</h4>\n<h4>sinh viên, thẻ hội viên, thẻ khách hàng, thẻ ra vào,biển tên nhân viên …</h4>\n<h4>-Thẻ sinh viên, thẻ học sinh nhựa PVC, mẫu thẻ sinh viên, học sinh được sản xuất công nghệ ép</h4>\n<h4>cao tần,</h4>\n<h4>-Thiết kế thẻ sinh viên, học sinh phù hợp với môi trường giáo dục, giúp nhà trường có thể nhận diện sinh viên, học sinh trường mình một cách dễ dàng hơn</h4>\n<h4>-Chúng tôi luôn cung cấp cho nhà trường những chiếc thẻ sinh viên, học sinh những chiếc thẻ tinh xảo và</h4>\n<h4>ấn tượng nhất. Không chỉ là một chiếc thẻ sinh viên, học sinh đơn thuần mà còn là một nghệ thuật</h4>\n<h4>riêng biệt cho quý nhà trường, là sự tâm huyết và tỉ mỉ trong từng sản phẩm. Sản phẩm được sản xuất đồng</h4>\n<h4>bộ với thiết kế hoàn mỹ nhất sẽ góp phần làm nên bộ mặt của nhà trường</h4>\n<figure id=\"attachment_2334\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/the-sinh-vien-05/the-nhua/\" rel=\"attachment wp-att-2334\"><img class=\"size-large wp-image-2334\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/the-nhua-247x400.jpg\" sizes=\"(max-width: 247px) 100vw, 247px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/the-nhua.jpg 247w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/the-nhua-154x250.jpg 154w\" alt=\"thẻ nhựa\" width=\"247\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">thẻ nhựa</figcaption></figure>\n<h4></h4>\n<h4>Giới thiệu về trường Cao Đẳng Nghề Cơ Khí Nông Nghiệp</h4>\n<h4>– Với truyền thống gần 50 năm xây dựng và phát triển, Trường đã xây dựng được đội ngũ giáo viên đoàn kết một lòng, có kiến thức, có tay nghề cao, luôn luôn đổi mới và tâm huyết với nghề. Đã đào tạo được nhiều thế hệ HSSV với những kiến thức và kỹ năng cần thiết để khẳng định được mình. Xây dựng được thương hiệu của Trường và luôn có vị thế xứng đáng trong ngành Nông nghiệp &amp; PTNT, tỉnh Vĩnh Phúc và khu vực.</h4>\n<h4>Trường đã tạo lập được không gian văn hóa riêng đảm bảo điều kiện tốt nhất để cán bộ giáo viên phát huy hết nội lực và cống hiến cho sự nghiệp chung của trường</h4>\n<h4>Mọi chị tiết về sản phẩm xin vui lòng liên hệ :</h4>\n<h4>Mr Trường</h4>\n<h4>Mobile: 0965.558.728</h4>\n<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh</h4>\n<h4>ĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà Nội</h4>\n<h4>VP: Số 1 nghách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội</h4>\n<h4>MST: 0106665244</h4>\n<h4>TK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long</h4>","Thẻ Sinh Viên 05","<h3>Thông tin về thẻ sinh viên</h3>\n<h3>– Chất liệu: nhựa pvc</h3>\n<h3>– Công nghệ in: in trực tiếp trên nhựa pvc ép 4 lớp cao tầng</h3>\n<h3>– Kích thước: 86×54 (mm)</h3>","publish","open","closed","","the-sinh-vien-05","","","2018-04-26 10:08:39","2018-04-26 03:08:39","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=217","0","product","","0"),
("218","1","2018-04-26 09:05:21","2018-04-26 02:05:21","","thenhanvienpsd03-600x600","","inherit","open","closed","","thenhanvienpsd03-600x600","","","2018-04-26 09:05:21","2018-04-26 02:05:21","","217","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thenhanvienpsd03-600x600.jpg","0","attachment","image/jpeg","0"),
("219","1","2018-04-26 09:06:12","2018-04-26 02:06:12","<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh chuyên làm thẻ nhân viên tại hà nội và làm thẻ nhân viên cho các đơn vị có nhu cầu trên cả nước.</h4>\n<h4>Đại Dương Xanh nhận làm thẻ nhân viên trên nhựa và kim loại…</h4>\n<h4>Chúng tôi trực tiếp sản xuất, làm thẻ nhân viên và chuyển tới tận tay khách hàng, đảm bảo tiến độ, thời gian và tính thẩm mỹ của sản phẩm theo yêu cầu, góp phần tạo nên tính chuyên nghiệp cho khách hàng khi ra thị trường. Thêm vào đó, nếu khách hàng muốn làm thẻ nhân viên và có thêm dây đeo và bao đựng cho thẻ nhân viên thì công ty chúng tôi sẽ cung cấp với giá cả hợp lý nhất, chắc chắn sẽ làm hài lòng túi tiền và yêu cầu của bạn.</h4>\n<figure id=\"attachment_2297\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/lam-the-nhan-vien-2/lam-the-nhan-vien-3/\" rel=\"attachment wp-att-2297\"><img class=\"size-large wp-image-2297\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/lam-the-nhan-vien-247x400.jpg\" sizes=\"(max-width: 247px) 100vw, 247px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/lam-the-nhan-vien-247x400.jpg 247w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/lam-the-nhan-vien-154x250.jpg 154w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/lam-the-nhan-vien-768x1244.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/lam-the-nhan-vien.jpg 800w\" alt=\"Thẻ nhân viên\" width=\"247\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">Thẻ nhân viên</figcaption></figure>\n<h4>1. Thẻ nhân viên là gì và tại sao cần làm thẻ nhân viên</h4>\n<h4>Thẻ nhân viên là tấm thẻ được các công ty và doanh nghiệp phát cho nhân viên của mình. Ngoài công dụng là để các thành viên trong công ty nhanh chóng xác định được tên, chức vụ và phòng ban của đồng nghiệp… Khi quý đơn vị làm thẻ nhân viên cho đơn vị mình là cách để công ty hay doanh nghiệp quảng cáo được thương hiệu, đặc trưng, tính chuyên nghiệp của mình đến khách hàng nói riêng và tất cả mọi người nói chung khi nhìn họ thấy chúng. Đeo thẻ nhân viên còn giúp nhân viên cảm thấy tự tin, nghiêm túc của họ với công ty.</h4>\n<h4>2. Chất liệu làm thẻ nhân viên</h4>\n<h4>Ngày trước, khi công nghệ chưa phát triển được bây giờ thì  cách thức làm thẻ nhân viên được làm từ những chất liệu rất đơn giản như giấy bìa cứng, thậm chí ở một số công ty hay doanh nghiêp, nhân viên còn làm thẻ nhân viên bằng cách tự viết tên, chức vụ của mình lên một mẩu giấy.</h4>\n<h4>Tuy nhiên, với sự hiện đại và tiên tiến của khoa học – kĩ thuật thì nghành làm thẻ nhân viên cũng được phát triển, người ta đã chế tạo ra rất nhiều loại chất dẻo, trong đó có PVC là một loại nhựa được chúng tôi đưa vào ứng dụng làm thẻ nhân viên chủ chốt, bởi những ưu điểm bền, đẹp…</h4>\n<h4>3. Mô tả quy trình làm thẻ nhân viên</h4>\n<h4>Thẻ nhân viên được in trên giấy nhựa pvc bằng loại mực không phai, sau đó được sấy khô ( nhằm mục đích làm tăng độ bám của mực vào nhựa ). Tiếp theo là được cán trên bề mặt lớp bìa bóng giúp chống bay màu và được ép dưới nhiệt độ 125 độ trong vòng 25 phút.</h4>\n<h4>Qúy khách có nhu cầu làm thẻ nhân viên cho đơn vị mình, xin vui lòng liên hệ</h4>\n\n<hr />\n\n<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh\nĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà Nội\nVP: Số 1 nghách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội\nMST: 0106665244\nTK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long</h4>","Thẻ Nhân Viên 05","<h3>Thông tin về thẻ nhân viên</h3>\n<h3>– Chất liệu: nhựa pvc</h3>\n<h3>– Công nghệ in: in trực tiếp trên nhựa pvc ép 4 lớp cao tầng</h3>\n<h3>– Kích thước: 86×54 (mm)</h3>\n<h3>Mọi chị tiết về sản phẩm xin vui lòng liên hệ :</h3>","publish","open","closed","","the-nhan-vien-05","","","2018-04-26 11:25:29","2018-04-26 04:25:29","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=219","0","product","","0"),
("220","1","2018-04-26 09:06:01","2018-04-26 02:06:01","","thenahnvienpsd-600x600","","inherit","open","closed","","thenahnvienpsd-600x600","","","2018-04-26 09:06:01","2018-04-26 02:06:01","","219","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thenahnvienpsd-600x600.jpg","0","attachment","image/jpeg","0"),
("221","1","2018-04-26 09:06:52","2018-04-26 02:06:52","<h4>1. Thẻ nhân viên là gì và tác dụng của thẻ nhân viên</h4>\n<h4>Thẻ nhân viên là tấm thẻ được các công ty và doanh nghiệp phát cho nhân viên của</h4>\n<h4>mình. Ngoài công dụng là để các thành viên trong công ty nhanh chóng xác định được</h4>\n<h4>tên, chức vụ và phòng ban của đồng nghiệp… thì thẻ nhân viên còn là cách để công ty</h4>\n<h4>hay doanh nghiệp quảng cáo được thương hiệu, đặc trưng, tính chuyên nghiệp của mình</h4>\n<h4>đến khách hàng nói riêng và tất cả mọi người nói chung khi nhìn họ thấy chúng.</h4>\n<h4>Đeo thẻ nhân viên còn giúp nhân viên cảm thấy tự tin, thể hiện được sự tôn trọng,</h4>\n<h4>nghiêm túc của họ với công ty.</h4>\n<h4>2. Chất liệu làm thẻ nhân viên</h4>\n<h4>Ngày trước, khi công nghệ chưa phát triển được bây giờ thì thẻ nhân viên được làm từ</h4>\n<h4>chất liệu rất đơn giản như giấy bìa cứng, thậm chí ở một số công ty hay doanh nghiêp,</h4>\n<h4>nhân viên còn tự viết tên, chức vụ của mình lên một mẩu giấy.</h4>\n<h4>Tuy nhiên, với sự hiện đại và tiên tiến của khoa học – kĩ thật thì người ta đã chế tạo ra</h4>\n<h4>rất nhiều loại chất dẻo, trong đó có PVC, một loại nhựa có nhiều tính chất quý như: bền</h4>\n<h4>thời tiết, bền oxy hóa, dễ gia công, … và sản phẩm làm từ loại nhựa này cũng rất đa dạng,</h4>\n<h4>trong đó có thẻ nhân viên.</h4>\n<figure id=\"attachment_1953\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/nhan-vien-06/07-2/\" rel=\"attachment wp-att-1953\"><img class=\"wp-image-1953 size-large\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/07-1-247x400.jpg\" sizes=\"(max-width: 247px) 100vw, 247px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/05/07-1-247x400.jpg 247w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/07-1-154x250.jpg 154w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/07-1-768x1244.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/05/07-1.jpg 800w\" alt=\"\" width=\"247\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">Thẻ nhân viên</figcaption></figure>\n<h4>Với đội ngũ thiết kế chuyên nghiệp và dày dặn kinh nghiệm làm việc, Đại Dương</h4>\n<h4>Xanh tự hào là đơn vị sản xuất và phân phối thẻ nhân viên đáng tin cậy của các đối tác</h4>\n<h4>lớn như Tập đoàn Viễn thông Quân đội Viettel, Tập đoàn Thang máy Thăng Long, …</h4>\n<h4>Chúng tôi cam kết sẽ mang tới cho quý khách những mẫu thiết kế đẹp nhất, kiểu dáng</h4>\n<h4>phù hợp nhất cho đơn vị mình.</h4>\n<h4>Mọi chị tiết về sản phẩm xin vui lòng liên hệ :</h4>\n<h4>Mr Trường</h4>\n<h4>Mobile: 0965.558.728</h4>\n<h4>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh</h4>\n<h4>ĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà</h4>\n<h4>Nội</h4>\n<h4>VP: Số 1 nghách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội</h4>\n<h4>MST: 0106665244</h4>\n<h4>TK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long</h4>","Thẻ Nhân Viên 06","<h3>Thông tin về thẻ nhân viên</h3>\n<h3>– Chất liệu: nhựa pvc</h3>\n<h3>– Công nghệ in: in trực tiếp trên nhựa pvc ép 4 lớp cao tầng</h3>\n<h3>– Kích thước: 86×54 (mm)</h3>","publish","open","closed","","the-nhan-vien-06","","","2018-04-26 10:08:56","2018-04-26 03:08:56","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=221","0","product","","0"),
("222","1","2018-04-26 09:06:45","2018-04-26 02:06:45","","thenhanvienpsd07-600x600","","inherit","open","closed","","thenhanvienpsd07-600x600","","","2018-04-26 09:06:45","2018-04-26 02:06:45","","221","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/thenhanvienpsd07-600x600.jpg","0","attachment","image/jpeg","0"),
("265","1","2018-04-26 09:32:03","2018-04-26 02:32:03","Biển tên nhân viên cài áo, kích thước 70×25 (mm). Có thẻ thay được tên nhân viên\n\nBề mặt biển tên nhân viên thay được tên nhân viên được in bằng giấy sần mạ vàng, phủ lớp thủy tinh hữu cơ nhằm tăng độ thẩm mỹ của biển tên.\n\nMặt sau có thể cài nam châm hoặc kim băng\n<p id=\"attachment_2290\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/san-pham/bien-ten-nhan-vien-cai-ao/z829014104792_1f58a3633b6933b5cbebdc52d471e693-2/\" rel=\"attachment wp-att-2290\"><img class=\"size-large wp-image-2290\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/11/z829014104792_1f58a3633b6933b5cbebdc52d471e693-1-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/11/z829014104792_1f58a3633b6933b5cbebdc52d471e693-1-533x400.jpg 533w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/z829014104792_1f58a3633b6933b5cbebdc52d471e693-1-333x250.jpg 333w, http://www.bienchucdanh.vn/wp-content/uploads/2017/11/z829014104792_1f58a3633b6933b5cbebdc52d471e693-1-768x576.jpg 768w\" alt=\"biển tên nhân viên\" width=\"533\" height=\"400\" /></a>biển tên nhân viên</p>\n&nbsp;\n\nChúng tôi xin giới thiệu tới quý khách hàng mẫu biển tên nhân viên cài áo được in bằng giấy decal sần mạ vàng, nhằm đáp ứng yêu cầu của thị trường. ngày nay chúng tôi mang tới cho quý vị mẫu biển tên nhân viên cài áo có tính thẩm mỹ cao, chất lượng cao\n\nNgoài làm biển tên nhân viên nhân viên chúng tôi còn làm biển chức danh để bàn, thẻ nhân viên bằng nhựa pvc, biển công ty, tem, nhãn mác kim loại, in dây đeo…vv\n\nMọi chị tiết về sản phẩm xin vui lòng liên hệ :\n\n<hr />\n\nCông ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh\n\nĐC: số 14 ngách 83/51/27, ngõ 83, đường Tân Triều, xã Tân Triều, huyện Thanh Trì, TP. Hà Nội\n\nVP: Số 1 nghách 2 ngõ 277 Vũ Tông Phan, Khương Đình, Thanh Xuân, Hà Nội\n\nMST: 0106665244\n\nTK: 0741100430002 – Tại ngân hàng TMCP Quân đội – CN Thăng Long","Biển thay tên nhân viên 12","<h4>Mobile: Mr Trường 0965.558.728</h4>\n<h4>Email: <a href=\"mailto:bienchucdanh01@gmail.com\">bienchucdanh01@gmail.com</a></h4>\n<h4>Website 1: <a href=\"http://www.bienchucdanh.vn/\">bienchucdanh.vn</a></h4>\n<h4>Website 2: <a href=\"http://thenhanvien-thevip.com/trang-chu.htm\">thenhanvien-thevip.com</a></h4>","publish","open","closed","","bien-thay-ten-nhan-vien-12","","","2018-04-26 11:55:15","2018-04-26 04:55:15","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=265","0","product","","0"),
("266","1","2018-04-26 09:31:54","2018-04-26 02:31:54","","22-600x600","","inherit","open","closed","","22-600x600","","","2018-04-26 09:31:54","2018-04-26 02:31:54","","265","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/22-600x600.jpg","0","attachment","image/jpeg","0"),
("267","1","2018-04-26 09:32:38","2018-04-26 02:32:38","","Thẻ Thay Tên Nhân Viên 11","","publish","open","closed","","the-thay-ten-nhan-vien-11","","","2018-04-26 10:08:04","2018-04-26 03:08:04","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=267","0","product","","0"),
("268","1","2018-04-26 09:32:31","2018-04-26 02:32:31","","14-600x600","","inherit","open","closed","","14-600x600","","","2018-04-26 09:32:31","2018-04-26 02:32:31","","267","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/14-600x600.jpg","0","attachment","image/jpeg","0"),
("269","1","2018-04-26 09:33:40","2018-04-26 02:33:40","Kính chào quý khách đã đến với Cty Đại Dương Xanh, chuyên in ấn các loại biển tên nhân viên, thẻ tên nhân viên cài áo, thẻ nhân viên bằng nhựa, biển chức danh…vv\n\nTại đây chúng tôi xin giới thiệu tới quý khách biển tên nhân viên cài áo đặc biệt. Tại sao lại đặc biệt ?, nó khác những loại biển tên nhân viên bình thường như thế nào ?\n<ul id=\"photobox-gallery-2\" class=\"thumbnails photobox-gallery gallery gallery-columns-3\">\n 	<li><a class=\"thumbnail\" href=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/08/z718946150447_08bb749c8ba86279c0c4e19ac5451f3c-1.jpg\"><img class=\"attachment-thumbnail size-thumbnail\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/08/z718946150447_08bb749c8ba86279c0c4e19ac5451f3c-1-270x180.jpg\" alt=\"\" width=\"270\" height=\"180\" /></a></li>\n</ul>\nBiển tên nhân viên thông thường là loại biển tên nhân viên cố định, chỉ in 1 lần. Khi có sự thay đổi nhân viên mới và cũ trong đơn vị, chúng ta phải làm một chiếc biển tên nhân viên mới cho nhân viên mới\n\nThấu hiểu được sự việc đó, chúng tôi là những người có kinh nhiệm nâu năm trong lĩnh vực in biển tên nhân viên, chúng tôi đã cho ra sản phẩn biển tên nhân viên có thể thay đổi được tên nhân viên, nhằm giúp quý đơn vị giảm chi phí in ấn.\n\nBiển tên nhân viên thay được tên nhân viên có cấu tạo 4 phần chính như sau:\n\n1 – Phôi Kim Loại\n\n2 – giấy in\n\n3 – Lớp thủy tinh hữu cơ\n\n4 – Nam châm hoặc kim băng\n<div class=\"reviews-content\">\n<p class=\"star\"></p>\n\n</div>","Thẻ Thay Tên Nhân Viên 12","","publish","open","closed","","the-thay-ten-nhan-vien-12","","","2018-04-26 10:07:46","2018-04-26 03:07:46","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=product&#038;p=269","0","product","","0"),
("270","1","2018-04-26 09:33:34","2018-04-26 02:33:34","","5-600x600","","inherit","open","closed","","5-600x600","","","2018-04-26 09:33:34","2018-04-26 02:33:34","","269","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/5-600x600.jpg","0","attachment","image/jpeg","0"),
("276","1","2018-04-26 09:40:31","2018-04-26 02:40:31","","ICON-1","","inherit","open","closed","","icon-1","","","2018-04-26 09:40:31","2018-04-26 02:40:31","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/ICON-1.png","0","attachment","image/png","0"),
("284","1","2018-04-26 09:46:06","2018-04-26 02:46:06","","ICON-3","","inherit","open","closed","","icon-3","","","2018-04-26 09:46:06","2018-04-26 02:46:06","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/ICON-3.png","0","attachment","image/png","0"),
("285","1","2018-04-26 09:46:07","2018-04-26 02:46:07","","ICON-4","","inherit","open","closed","","icon-4","","","2018-04-26 09:46:07","2018-04-26 02:46:07","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/ICON-4.png","0","attachment","image/png","0"),
("286","1","2018-04-26 09:46:14","2018-04-26 02:46:14","","ICON-2","","inherit","open","closed","","icon-2","","","2018-04-26 09:46:14","2018-04-26 02:46:14","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/ICON-2.png","0","attachment","image/png","0"),
("338","1","2018-04-26 10:15:37","2018-04-26 03:15:37","<h4>Trên thị trường hiện nay có những loại bảng tên nhân viên cài áo nào?</h4>\n<h4>Mình mong sẽ giúp mọi người nắm bắt rõ hơn về các mẫu mã bảng tên nhân viên đang có mặt trên thị trường, giúp các bạn chọn mẫu phù hợp với đơn vị mình.</h4>\n<h4>Trong thời đại công nghệ phát triển không ngừng theo năm tháng, các nghành nghề phát triển không ngừng trong xu hướng công nghiêp hóa, riêng nghành in ấn thì không có mấy sự đột biến trong</h4>\n<h3>Chất liệu của bảng tên nhân viên có 2 loại chính</h3>\n<ol>\n 	<li>\n<h4>Kim loại bao gồm  sắt, đồng, nhôm, inox</h4>\n</li>\n 	<li>\n<h4>Nhựa mica</h4>\n</li>\n</ol>\n<h2>Phân loại làm 2 loại chính</h2>\n<h4>1. Biển tên nhân viên thay được tên nhân viên</h4>\n<h4>Loại này có 2 loại bằng kim loại và nhựa mica. Loại này thường được sử dụng cho các đơn vị có sự luôn chuyển nhân viên, vì thế khi có sự thay đổi nhân viên thì nhân viên đó chỉ việc in lại tên và chức vị của mình, sau đó đặt vào vị trí thay tên của bảng tên</h4>\n<h5>+ Bằng kim loại nhôm:</h5>\n<a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/ex-2/\" rel=\"attachment wp-att-2286\"><img class=\"aligncenter  wp-image-2286\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/eX-1-533x400.jpg\" alt=\"\" width=\"499\" height=\"374\" /></a>\n\n<a href=\"http://www.bienchucdanh.vn/san-pham/22the-thay-ten-nhan-vien-html/cacphoithethaytentoanphan/\" rel=\"attachment wp-att-1963\"><img class=\"aligncenter size-full wp-image-1963\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/04/cacphoithethaytentoanphan.jpg\" sizes=\"(max-width: 505px) 100vw, 505px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/04/cacphoithethaytentoanphan.jpg 505w, http://www.bienchucdanh.vn/wp-content/uploads/2017/04/cacphoithethaytentoanphan-370x250.jpg 370w\" alt=\"\" width=\"505\" height=\"342\" /></a>\n<figure id=\"attachment_2174\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/pin-label-holder-frame-badge-pin-id-card-logo-mark-worker-staff-personnel-employee-name-label/\" rel=\"attachment wp-att-2174\"><img class=\" wp-image-2174\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PIN-label-holder-frame-badge-PIN-ID-card-logo-mark-worker-staff-personnel-employee-name-label.jpg\" sizes=\"(max-width: 515px) 100vw, 515px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PIN-label-holder-frame-badge-PIN-ID-card-logo-mark-worker-staff-personnel-employee-name-label.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PIN-label-holder-frame-badge-PIN-ID-card-logo-mark-worker-staff-personnel-employee-name-label-270x180.jpg 270w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PIN-label-holder-frame-badge-PIN-ID-card-logo-mark-worker-staff-personnel-employee-name-label-370x247.jpg 370w\" alt=\"bảng tên\" width=\"515\" height=\"343\" /></a><figcaption class=\"caption wp-caption-text\">bảng tên</figcaption></figure>\n<a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name/\" rel=\"attachment wp-att-2175\"><img class=\"aligncenter size-large wp-image-2175\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-400x400.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-400x400.jpg 400w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-768x768.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name-600x600.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/10pcs-lot-70-26mm-safety-pins-name-tags-metal-reusable-font-b-staff-b-font-name.jpg 800w\" alt=\"\" width=\"400\" height=\"400\" /></a>\n<h4>+ Bằng nhựa mica</h4>\n<figure id=\"attachment_2178\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/tb1nzgkhfxxxxayxxxxxxxxxxxx_0-item_pic/\" rel=\"attachment wp-att-2178\"><img class=\"size-large wp-image-2178\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-400x400.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-400x400.jpg 400w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-768x768.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic-600x600.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/TB1NZgKHFXXXXayXXXXXXXXXXXX_0-item_pic.jpg 800w\" alt=\"bảng tên mica\" width=\"400\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">bảng tên mica</figcaption></figure>\n<a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards-jpg_640x640/\" rel=\"attachment wp-att-2179\"><img class=\"aligncenter size-large wp-image-2179\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-400x400.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-400x400.jpg 400w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640-600x600.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/75-37mm-customized-office-name-tag-holders-pc-abs-material-cheap-price-various-magnetic-chest-cards.jpg_640x640.jpg 640w\" alt=\"\" width=\"400\" height=\"400\" /></a>\n<h3>2. Biển tên nhân viên</h3>\n<h4>Loại này in cố định ( không thay được tên nhân viên ) loại này cũng được chia làm 2 loại.</h4>\n<h4>1.Loại kim loại in chuyển nhiệt thường</h4>\n<figure id=\"attachment_2189\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/premiumbadge_white/\" rel=\"attachment wp-att-2189\"><img class=\"size-large wp-image-2189\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PremiumBadge_White-416x400.jpg\" sizes=\"(max-width: 416px) 100vw, 416px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PremiumBadge_White.jpg 416w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/PremiumBadge_White-260x250.jpg 260w\" alt=\"bảng tên kim loại\" width=\"416\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">bảng tên kim loại</figcaption></figure>\n<figure id=\"attachment_2183\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/51_1459268447_0/\" rel=\"attachment wp-att-2183\"><img class=\"size-large wp-image-2183\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-400x400.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-400x400.jpg 400w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-768x768.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/51_1459268447_0-600x600.jpg 600w\" alt=\"bảng tên kim loại\" width=\"400\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">bảng tên kim loại</figcaption></figure>\n<a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/b0061/\" rel=\"attachment wp-att-2184\"><img class=\"aligncenter size-large wp-image-2184\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/B0061-410x400.jpg\" sizes=\"(max-width: 410px) 100vw, 410px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/B0061-410x400.jpg 410w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/B0061-256x250.jpg 256w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/B0061.jpg 683w\" alt=\"\" width=\"410\" height=\"400\" /></a><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/bang-ten-nhan-vien-02_1/\" rel=\"attachment wp-att-2185\"><img class=\"aligncenter size-large wp-image-2185\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-401x400.jpg\" sizes=\"(max-width: 401px) 100vw, 401px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-401x400.jpg 401w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-250x250.jpg 250w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-112x112.jpg 112w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-300x300.jpg 300w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1-600x600.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bang-ten-nhan-vien-02_1.jpg 640w\" alt=\"\" width=\"401\" height=\"400\" /></a><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/lam-bang-ten-nhan-vien-ten-co-dinh/\" rel=\"attachment wp-att-2186\"><img class=\"aligncenter size-full wp-image-2186\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/lam-bang-ten-nhan-vien-ten-co-dinh.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/lam-bang-ten-nhan-vien-ten-co-dinh.jpg 500w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/lam-bang-ten-nhan-vien-ten-co-dinh-370x164.jpg 370w\" alt=\"\" width=\"500\" height=\"222\" /></a>\n<h4>2. Kim loại ăn mòn</h4>\n<figure id=\"attachment_2188\" class=\"thumbnail wp-caption aligncenter\"><a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/bien-ten-kim-loai/\" rel=\"attachment wp-att-2188\"><img class=\"size-large wp-image-2188\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bi%E1%BB%83n-t%C3%AAn-kim-lo%E1%BA%A1i-475x400.jpg\" sizes=\"(max-width: 475px) 100vw, 475px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/biển-tên-kim-loại-475x400.jpg 475w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/biển-tên-kim-loại-297x250.jpg 297w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/biển-tên-kim-loại.jpg 668w\" alt=\"bảng tên kim loại ăn mòn\" width=\"475\" height=\"400\" /></a><figcaption class=\"caption wp-caption-text\">bảng tên kim loại ăn mòn</figcaption></figure>\n<a href=\"http://www.bienchucdanh.vn/tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao/bt-dong-an-mon/\" rel=\"attachment wp-att-2190\"><img class=\"aligncenter wp-image-2190 size-large\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bt-dong-an-mon-600x252.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bt-dong-an-mon-600x252.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bt-dong-an-mon-370x156.jpg 370w, http://www.bienchucdanh.vn/wp-content/uploads/2017/12/bt-dong-an-mon.jpg 680w\" alt=\"\" width=\"600\" height=\"252\" /></a>\n<h4>Với loại in cố định như thế này thì kích thước có thể tùy chỉnh. Bạn có thể tùy ý yêu cầu kích thước cho hợp với đơn vị mình nhất.</h4>\n<h4>Nếu quý khách muốn đặt làm cho đơn vị mình chiếc biển tên nhân viên thì hãy liên hệ với chúng tôi để có những sản phẩm chất lượng cao, đẹp rà rẻ nhất thị trường</h4>\n<h3><strong>Chúng tôi luôn có dịch vụ tốt nhất cho khách hàng:</strong></h3>\n+ Miễn phí thiết kế\n\n+ Miễn phí giao hàng\n\n+ Miễn phí làm sản phẩm mẫu\n\n+ Thời gian sản xuất nhanh nhất\n<h3><strong>Rất hân hạnh được phục vụ Quý khách!</strong></h3>\n<h3><strong>Thông tin liên hệ:</strong></h3>\n<h3><em>Mr Trường – 0965 558 728</em></h3>\n<h3><em>Email: bienchucdanh01@gmail.com</em></h3>\n<h3><em>VP: Số 1 ngách 2 ngõ 277 Vũ Tông Phan – Thanh Xuân – Hà Nội</em></h3>\n&nbsp;","Tổng Hợp Các Loại Bảng Tên Nhân Viên Cài Áo","","publish","open","open","","tong-hop-cac-loai-bang-ten-nhan-vien-cai-ao","","","2018-04-26 10:15:37","2018-04-26 03:15:37","","0","https://bizhostvn.com/w/bienchucdanh/?p=338","0","post","","0"),
("342","1","2018-04-26 10:19:22","2018-04-26 03:19:22","<h4>Biển chức danh đã chở thành biển quảng cáo không thể thiếu trong xã hội hiên nay  .</h4>\n<h4>Trên địa bàn Hà Nội có rất nhiều công ty cung cấp dịch vụ quảng cáo . Nhưng để bạn và doanh nghiệp có thể lựa chọn những tấm<strong> biển chức danh đẹp</strong> với thiết kết chuyên nghiệp co chiều sâu là điều không hề dễ bienchucdanh.vn Là một đơn vị có thâm liên trong ngành sản xuất các tẩm biển đẹp … chắc chắn sẽ làm bạn hài lòng .<span id=\"more-1565\"></span></h4>\n<h3>Dưới đây là một số mấu biển chức danh của công ty :</h3>\n&nbsp;\n\n&nbsp;\n\n<a href=\"http://hoangkimadv.com/wp-content/uploads/2016/12/bien-phong-ban-chuc-danh.jpg\"><img class=\"wp-image-336 aligncenter\" src=\"http://hoangkimadv.com/wp-content/uploads/2016/12/bien-phong-ban-chuc-danh.jpg\" sizes=\"(max-width: 639px) 100vw, 639px\" srcset=\"http://hoangkimadv.com/wp-content/uploads/2016/12/bien-phong-ban-chuc-danh.jpg 800w, http://hoangkimadv.com/wp-content/uploads/2016/12/bien-phong-ban-chuc-danh-300x219.jpg 300w, http://hoangkimadv.com/wp-content/uploads/2016/12/bien-phong-ban-chuc-danh-768x561.jpg 768w\" alt=\"\" width=\"639\" height=\"467\" /></a>\n<h4>Một số thông tin về sản phẩm biển tên này  :</h4>\n<h4>Kích thước sản phẩm 15×35 cm .</h4>\n<h4>Chất liệu : Mặt biển được cắt bằng inox , chân bằng gỗ</h4>\n<ul>\n 	<li>\n<h4>Toàn bộ sản phẩm đã được xử lý để chống cong vênh, mối mọt</h4>\n</li>\n 	<li>\n<h4>Mỗi sản phẩm đều được thiết kế riêng và chuyên nghiệp</h4>\n</li>\n 	<li>\n<h4>Các mẫu thiết kế, chất liệu, kích thước được lựa chọn tùy vào yêu cầu của khách hàng</h4>\n</li>\n</ul>\n<a href=\"http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE.jpg\"><img class=\" wp-image-1160 aligncenter\" src=\"http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE.jpg\" sizes=\"(max-width: 587px) 100vw, 587px\" srcset=\"http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE.jpg 2912w, http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE-300x180.jpg 300w, http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE-768x462.jpg 768w, http://hoangkimadv.com/wp-content/uploads/2017/02/MAKET-BIEN-CHUC-DANH-GIA-RE-1024x615.jpg 1024w\" alt=\"\" width=\"587\" height=\"352\" /></a>\n<h4>Để tạo ra những tấm Biển Chức Danh, có điểm nhấn cho công việc cũng như thu hút khách hàng về phía doanh nghiệp chúng ta cần có sự đầu tư đúng mức. Công ty<strong> Đại Dương Xanh </strong>luôn là đơn vị uy tín được rất nhiều các cá nhân cũng như doanh nghiệp tin tưởng đặt hàng. Biển chức dnah có thể được làm từ rất nhiều chất liệu khác nhau. Ngoài các sản phẩm biển chức danh sang trọng như biển biển đồng hoặc biển inox bạn hoàn toàn có thể tin vào các sản phẩm biển với giá thành thấp hơn. Nhưng lại rất dễ kết hợp không gian làm việc và có nhiều mùa sắc để lựa chọn thì mời bạn hãy lựa chọn sản phẩm biển chức danh với chất liệu mica của chúng tôi</h4>","Giới thiệu một số mẫu biển chức danh đẹp cho văn phòng","","publish","open","open","","gioi-thieu-mot-so-mau-bien-chuc-danh-dep-cho-van-phong","","","2018-04-26 10:19:22","2018-04-26 03:19:22","","0","https://bizhostvn.com/w/bienchucdanh/?p=342","0","post","","0"),
("344","1","2018-04-26 10:20:05","2018-04-26 03:20:05","<strong>Công ty Đại Dương xin giới thiệu tới khách hàng một số mẫu thẻ Vip được công ty chúng tôi thiết kế và in thẻ cho khách hàng trong năm vừa qua, đây là một số mẫu trong hàng trăm mẫu thẻ Vip được chọn gửi đến quý khách hàng tham khảo.</strong><span id=\"more-296\"></span>\n\n<a href=\"http://www.bienchucdanh.vn/sunt-culpa-qui-officia/19-2/\" rel=\"attachment wp-att-1689\"><img class=\"aligncenter size-large wp-image-1689\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/19-1-529x400.jpg\" sizes=\"(max-width: 529px) 100vw, 529px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/19-1-529x400.jpg 529w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/19-1-330x250.jpg 330w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/19-1-768x581.jpg 768w\" alt=\"\" width=\"529\" height=\"400\" /></a>\n\n<strong>Với việc sử dụng thẻ Vip cho các chương trình khuyến mại, tri ân khách hàng thân thiết, khách hàng sẽ có được một công cụ Marketing tuyệt vời khi có thể truyền đi thông điệp và hình ảnh về công ty một cách chuyên nghiệp trên những chiếc thẻ nhựa có kích thước tiêu chuẩn bằng với một thẻ ATM.<a href=\"http://www.bienchucdanh.vn/sunt-culpa-qui-officia/gui-mail-tos_the-vip_11/\" rel=\"attachment wp-att-1686\"><img class=\"aligncenter size-large wp-image-1686\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-TOS_Th%E1%BA%BB-VIP_11-600x244.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-TOS_Thẻ-VIP_11-600x244.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-TOS_Thẻ-VIP_11-370x151.jpg 370w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-TOS_Thẻ-VIP_11-768x313.jpg 768w\" alt=\"\" width=\"600\" height=\"244\" /></a></strong>\n\n<strong>Đặc biệt công ty sẽ quản lý thông tin khách hàng một cách nhanh gọn và tiện lợi hơn nhờ vào giải pháp thẻ thông minh do công ty chúng tôi phát triển. Thông tin của khách hàng, những dịch vụ đã sử dụng, ngày cuối cùng khách đến sử dụng dịch vụ, mức ưu đãi cho từng khách hàng sẽ được cập nhật và lưu trên phần mềm máy tính.</strong>\n\n<a href=\"http://www.bienchucdanh.vn/sunt-culpa-qui-officia/12-2/\" rel=\"attachment wp-att-1688\"><img class=\"aligncenter size-large wp-image-1688\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/12-1-600x358.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/12-1-600x358.jpg 600w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/12-1-370x221.jpg 370w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/12-1-768x458.jpg 768w\" alt=\"\" width=\"600\" height=\"358\" /></a>\n\n<strong>Không chỉ dừng lại ở các tính năng kể trên, đội ngũ kỹ sư phần mềm của chúng tôi vẫn liên tục phát triển và đưa ra các giải pháp mới đáp ứng tốt nhất những yêu cầu từ phía người tiêu dùng, từ đó sẽ giúp các đơn vị phát hành thẻ có thêm những phương án chăm sóc khách hàng của mình một cách tốt nhất<a href=\"http://www.bienchucdanh.vn/sunt-culpa-qui-officia/gui-mail-nha-hang-tien-ong/\" rel=\"attachment wp-att-1687\"><img class=\"aligncenter size-large wp-image-1687\" src=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-Nha-hang-Tien-Ong-550x400.jpg\" sizes=\"(max-width: 550px) 100vw, 550px\" srcset=\"http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-Nha-hang-Tien-Ong-550x400.jpg 550w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-Nha-hang-Tien-Ong-344x250.jpg 344w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-Nha-hang-Tien-Ong-768x558.jpg 768w, http://www.bienchucdanh.vn/wp-content/uploads/2016/03/Gui-mail-Nha-hang-Tien-Ong.jpg 1574w\" alt=\"\" width=\"550\" height=\"400\" /></a></strong>\n<h3><strong>Xem nhiều mẫu khác <a href=\"http://www.bienchucdanh.vn/danh-muc/the-vip/\">tại đây….</a></strong></h3>\n<strong>Thẻ vip – Thẻ giảm giá  với các chương trình khuyến mại/ưu đãi là phương thức hữu hiệu để kích thích nhu cầu sử dụng dịch vụ. Là công cụ rất tốt cho việc phát triển mối quan hệ giữa khách hàng, từ đó giúp các bạn giữ chân khách hàng tốt hơn.</strong>\n\n&nbsp;\n\n<strong>Với đội ngũ thiết kế chuyên nghiệp, chúng tôi cung cấp dịch vụ thiết kế thẻ miễn phí cho khách hàng đặt in thẻ tại công ty chúng tôi.</strong>\n<h4><strong>Liên hệ với chúng tôi để có giá tốt nhất</strong></h4>\n<h4><strong>Trung Kiên</strong></h4>\n<h4><strong>Hotline: 0989.555.365</strong></h4>\n<h4><strong>Email: thenhanvien6868@gmail.com</strong></h4>\n<h4><strong>Website: bienchucdanh.vn</strong></h4>\n<h4><strong>Công ty TNHH Đầu tư và Dịch vụ Đại Dương Xanh</strong></h4>\n<h4><strong>Địa chỉ: Số 1 Ngách 2 Ngõ 277 Vũ Tông Phan – Thanh Xuân – Hà Nội</strong></h4>","Một số mẫu thẻ VIP được ưa chuộng nhất năm 2017","","publish","open","open","","mot-so-mau-the-vip-duoc-ua-chuong-nhat-nam-2017","","","2018-04-26 10:20:05","2018-04-26 03:20:05","","0","https://bizhostvn.com/w/bienchucdanh/?p=344","0","post","","0"),
("352","1","2018-04-26 10:25:53","2018-04-26 03:25:53","<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]\nMẫu web biển chức danh - Webdesign \"[your-subject]\"\n[your-name] <wordpress@bienchucdanh.webdemo.com>\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\nwebdesign@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nMẫu web biển chức danh - Webdesign \"[your-subject]\"\nMẫu web biển chức danh - Webdesign <wordpress@bienchucdanh.webdemo.com>\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\n[your-email]\nReply-To: webdesign@gmail.com\n\n0\n0\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.","Form liên hệ 1","","publish","closed","closed","","form-lien-he-1","","","2018-04-26 10:25:53","2018-04-26 03:25:53","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=wpcf7_contact_form&p=352","0","wpcf7_contact_form","","0"),
("353","1","2018-04-26 10:27:37","2018-04-26 03:27:37","<div class=\"form-lien-he\">\n<h3 class=\"widgettitle\">Liên hệ đặt hàng</h3>\n<span class=\"mo-ta\"> Mọi thắc mắc, góp ý và yêu cầu đặt hàng quý khách vui lòng gửi lại thông tin cho chúng tôi tại đây.</span>\n<div class=\"form-main\">\n[text* text-57 placeholder \"Họ tên của bạn...\"]\n[tel* tel-666 placeholder \"Số điện thoại...\"]\n[email* email-843 placeholder \"Địa chỉ email...\"]\n[submit \"Gửi liên hệ\"]\n</div>\n</div>\n1\nMẫu web biển chức danh - Webdesign\n<wordpress@bienchucdanh.webdemo.com>\nwebdesign@gmail.com\nCó người liên hệ qua website, thông tin như sau:\n\nHọ tên: [text-57]\nSố điện thoại: [tel-666]\nĐịa chỉ email: [email-843]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\n\n\n\n\n\nMẫu web biển chức danh - Webdesign \"[your-subject]\"\nMẫu web biển chức danh - Webdesign <wordpress@bienchucdanh.webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web biển chức danh - Webdesign (https://bizhostvn.com/w/bienchucdanh)\nReply-To: webdesign@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Form liên hệ","","publish","closed","closed","","form-lien-he","","","2018-04-26 10:33:38","2018-04-26 03:33:38","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=wpcf7_contact_form&#038;p=353","0","wpcf7_contact_form","","0"),
("375","1","2018-04-26 10:42:48","2018-04-26 03:42:48","[section label=\"Footer-top\" class=\"footer-block\" bg=\"1596\" bg_color=\"rgb(242, 242, 242)\" padding=\"20px\" border=\"1 0px 0px 0px\" border_color=\"rgb(219, 219, 219)\"]\n\n[row style=\"small\"]\n\n[col span=\"9\" span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 90%; color: #163645;\"><a style=\"color: #163645;\" href=\"http://items.webdemo.com\"><strong>TRANG CHỦ</strong></a></span></p>\n<p><span style=\"font-size: 90%;\">Webdesign là đơn vị chuyên thiết kế website Wordpress. Với điểm mạnh là khả năng design tốt, chúng tôi đảm bảo sẽ cung cấp cho khách hàng những mẫu thiết kế đẹp, tối ưu và tốc độ nhất!</span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"https://www.facebook.com/webdemo\" email=\"webdesign@gmail.com\" phone=\"0972939830\" googleplus=\"#\"]\n\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 90%; color: #163645;\"><strong>MẪU WEBSITE</strong></span></p>\n<ul>\n<li class=\"bullet-arrow\"><a href=\"https://webdesign.com/thiet-ke-website-gioi-thieu-san-pham-chuan-seo-uy-tin-nhat-viet-nam/\"><span style=\"font-size: 90%;\"><span style=\"line-height: 19.44px;\">Web bán hàng</span></span></a></li>\n<li class=\"bullet-arrow\"><a href=\"https://webdesign.com/thiet-ke-website-tin-tuc-chuan-seo-uy-tin-tai-viet-nam/\"><span style=\"font-size: 90%;\">Web tin tức</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"https://webdesign.com/thiet-ke-website-gioi-thieu-dich-vu-cong-ty-doanh-nghiep/\"><span style=\"font-size: 90%;\">Web giới thiệu công ty</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"https://webdesign.com/thiet-ke-website-gioi-thieu-san-pham-chuan-seo-uy-tin-nhat-viet-nam/\"><span style=\"font-size: 90%;\">Web giới thiệu sản phẩm</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"https://webdesign.com/thiet-ke-website-ban-hang-chuan-seo/\"><span style=\"font-size: 90%;\">Web giới thiệu dịch vụ</span></a></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 90%; color: #163645;\"><strong><a style=\"color: #163645;\" href=\"#\">MẪU WEB BÁN CHẠY</a></strong></span></p>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"color: #000000;\"><a style=\"color: #000000;\" href=\"http://ifix.webdemo.com\"><span style=\"font-size: 90%;\"><span style=\"color: #808080;\"><span style=\"line-height: 19.44px;\">Web Landing Page Iphone</span></span></span></a></span></li>\n<li class=\"bullet-arrow\"><a href=\"http://spa2.webdemo.com\"><span style=\"font-size: 90%; color: #000000;\">Web Thẩm mỹ viện/ Spa</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"http://fashion.webdemo.com\"><span style=\"font-size: 90%; color: #000000;\">Web shop thời trang nam</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"http://mypham.webdemo.com\"><span style=\"font-size: 90%; color: #000000;\">Web shop bán mỹ phẩm</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"http://funiture.webdemo.com\"><span style=\"font-size: 90%; color: #000000;\">Web C.ty Kiến trúc - Nội thất</span></a></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 90%;\"><a href=\"#\"><strong><span style=\"color: #163645;\">GUIDER</span> <span style=\"color: #c0c0c0;\">/ HƯỚNG DẪN</span></strong></a></span></p>\n<ul>\n<li class=\"bullet-arrow\"><a href=\"#\"><span style=\"font-size: 90%;\">Tư vấn chọn mẫu</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"#\"><span style=\"font-size: 90%;\">Hướng dẫn thanh toán</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"#\"><span style=\"font-size: 90%;\">Thỏa thuận - bảo hành</span></a></li>\n<li class=\"bullet-arrow\"><a href=\"#\">Đề nghị hợp tác</a></li>\n</ul>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n<p><span style=\"font-size: 90%; color: #163645;\"><a style=\"color: #163645;\" href=\"#\"><strong>LIÊN HỆ</strong></a></span></p>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\">Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội.</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\">0909.009.009 - 0909.009.009</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\">webdesign@gmail.com</span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\">www.webdemo.com</span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Footer-top\" class=\"footer-block\" bg_color=\"rgb(22, 54, 69)\" padding=\"15px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"199\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n<p><span style=\"color: #ffffff;\">Thiết kế đồ họa và website chuyên nghiệp</span><br /> <span style=\"font-size: 90%; color: #999999;\"> 0909.009.009 - webdesign@gmail.com - www.webdemo.com<br /> Thiết kế và duy trì bởi <a style=\"color: #999999;\" href=\"http://webdemo.com\">Webdesign</a> | <a style=\"color: #999999;\" href=\"https://webdesign.com\">WEBDESIGN</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #ffffff;\">Webdesign rất hoan nghênh độc giả gửi thông tin và góp ý cho chúng tôi!</span><br />\n<span style=\"font-size: 90%; color: #ffffff;\"> <strong>Email: </strong>webdesign@gmail.com</span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer-block","","publish","closed","closed","","footer-block","","","2018-04-26 10:56:38","2018-04-26 03:56:38","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=blocks&#038;p=375","0","blocks","","0"),
("379","1","2018-04-26 10:44:23","2018-04-26 03:44:23","[section label=\"Trang chi tiết sản phẩm\" class=\"chi-tiet-sp\" bg=\"462\" bg_size=\"original\" bg_overlay=\"rgba(0, 88, 107, 0.88)\"]\n\n[row col_bg=\"rgb(255, 255, 255)\" class=\"row1\"]\n\n[col span=\"5\" span__sm=\"12\" padding=\"10px 10px 0px 10px\" bg_color=\"rgb(255, 255, 255)\"]\n\n<p>[ux_product_title size=\"small\" divider=\"0\" uppercase=\"0\"]</p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"right\" bg_color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n<p>[ux_product_breadcrumbs size=\"smaller\"]</p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" class=\"cot3\"]\n\n[button text=\"Hotline: 0906.531.886\" letter_case=\"lowercase\" expand=\"true\" icon=\"icon-phone\" icon_pos=\"left\" link=\"tel:+84906531886\" target=\"_blank\"]\n\n\n[/col]\n[col span__sm=\"12\" padding=\"0 0px 0px 0px\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"anh-san-pham\"]\n\n<p>[ux_product_gallery style=\"full-width\"]</p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\" class=\"thong-tin-co-ban\"]\n\n<p>[ux_product_excerpt]</p>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>[ux_product_price size=\"larger\"]</p>\n<p>[ux_product_add_to_cart]</p>\n<p>Giao hàng miễn phí tại nội thành Hà Nội. Ship ngoại thành chỉ từ 30K. Hotline (Zalo, Viber): <span style=\"color: #ff0000;\"><strong>0967.230.111/ 0906.531.886</strong></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n<p>Địa điểm mua hàng:</p>\n[featured_box img=\"473\" img_width=\"31\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\">Showroom Hà Nội</span><br />\n<span style=\"font-size: 85%;\">Số 89 ngõ Thịnh Liệt, Hoàng Mai, Hà Nội</span></p>\n\n[/featured_box]\n[gap height=\"12px\"]\n\n[featured_box img=\"475\" img_width=\"31\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\">Showroom Đà Nẵng</span><br />\n<span style=\"font-size: 85%;\">160 Tiểu La, Hải Châu, Tp. Đà Nẵng</span></p>\n\n[/featured_box]\n[gap height=\"12px\"]\n\n[featured_box img=\"477\" img_width=\"31\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\">Showroom Hồ Chí Minh</span><br />\n<span style=\"font-size: 85%;\">115 đường Hiệp Bình, Tp, HCM</span></p>\n\n[/featured_box]\n[gap height=\"15px\"]\n\n[button text=\"Chat Facebook\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" icon=\"icon-facebook\" icon_pos=\"left\" link=\"https://messenger.com/t/duchanhit/\" target=\"_blank\"]\n\n[gap height=\"15px\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[row style=\"small\" class=\"row2\"]\n\n[col span=\"9\" span__sm=\"12\" padding=\"11px 10px 10px 10px\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3>Thông tin chi tiết</h3>\n<p>[ux_product_tabs]</p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" padding=\"10px 10px 10px 10px\" bg_color=\"rgb(255, 255, 255)\"]\n\n<h3>Thông tin cơ bản:</h3>\n<div class=\"product-meta-block\">[ux_product_meta]</div>\n<div>[ux_product_add_to_cart]</div>\n<h3>Sản phẩm mới</h3>\n[ux_products_list products=\"6\"]\n\n[ux_sidebar id=\"widget-sp-custom\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Sản phẩm liên quan\" class=\"sp-lien-quan\" bg_color=\"rgb(255, 255, 255)\" border=\"1 0px 0px 0px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h3>Sản phẩm cùng danh mục:</h3>\n[ux_products width=\"full-width\" columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Custom Product Page","","publish","closed","closed","","custom-product-page","","","2018-04-26 11:58:52","2018-04-26 04:58:52","","0","https://bizhostvn.com/w/bienchucdanh/?post_type=blocks&#038;p=379","0","blocks","","0"),
("399","1","2018-04-26 11:02:18","2018-04-26 04:02:18","Xin chào bạn – độc giả của <a href=\"https://webdesign.com/\">Webdesign.com</a>,\n\nLời đầu tiên, cho phép WEBDESIGN được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://webdesign.com/\">Webdesign.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, WEBDESIGN đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, WEBDESIGN chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho WEBDESIGN trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-04-26 11:02:32","2018-04-26 04:02:32","","0","https://bizhostvn.com/w/bienchucdanh/?page_id=399","0","page","","0"),
("411","1","2018-04-26 11:07:39","2018-04-26 04:07:39"," ","","","publish","closed","closed","","411","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=411","2","nav_menu_item","","0"),
("412","1","2018-04-26 11:08:41","2018-04-26 04:08:41","[ux_gallery ids=\"268,266,222,220,218,270,212,214,216,173,171,169,170,186,167,166,168,165,46\" col_spacing=\"small\" image_height=\"100%\" image_size=\"original\" image_hover=\"zoom\"]","Hình ảnh","","publish","closed","closed","","hinh-anh","","","2018-04-26 11:09:34","2018-04-26 04:09:34","","0","https://bizhostvn.com/w/bienchucdanh/?page_id=412","0","page","","0"),
("415","1","2018-04-26 11:10:09","2018-04-26 04:10:09"," ","","","publish","closed","closed","","415","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=415","3","nav_menu_item","","0"),
("416","1","2018-04-26 11:10:09","2018-04-26 04:10:09","","Sản phẩm","","publish","closed","closed","","416","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=416","4","nav_menu_item","","0"),
("417","1","2018-04-26 11:10:09","2018-04-26 04:10:09"," ","","","publish","closed","closed","","417","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=417","5","nav_menu_item","","0"),
("418","1","2018-04-26 11:10:24","2018-04-26 04:10:24","Xin chào bạn – độc giả của <a href=\"https://webdesign.com/\">Webdesign.com</a>,\n\nLời đầu tiên, cho phép WEBDESIGN được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://webdesign.com/\">Webdesign.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, WEBDESIGN đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, WEBDESIGN chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho WEBDESIGN trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Liên hệ","","publish","closed","closed","","lien-he","","","2018-04-26 11:10:24","2018-04-26 04:10:24","","0","https://bizhostvn.com/w/bienchucdanh/?page_id=418","0","page","","0"),
("420","1","2018-04-26 11:10:38","2018-04-26 04:10:38"," ","","","publish","closed","closed","","420","","","2018-04-26 11:26:11","2018-04-26 04:26:11","","0","https://bizhostvn.com/w/bienchucdanh/?p=420","6","nav_menu_item","","0"),
("421","1","2018-04-26 11:10:52","2018-04-26 04:10:52"," ","","","publish","closed","closed","","421","","","2018-04-26 11:11:27","2018-04-26 04:11:27","","0","https://bizhostvn.com/w/bienchucdanh/?p=421","1","nav_menu_item","","0"),
("422","1","2018-04-26 11:11:06","2018-04-26 04:11:06","","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2018-04-26 11:11:27","2018-04-26 04:11:27","","0","https://bizhostvn.com/w/bienchucdanh/?p=422","2","nav_menu_item","","0"),
("423","1","2018-04-26 11:11:27","2018-04-26 04:11:27","","Hotline: 0909.009.009","","publish","closed","closed","","hotline-0972-939-830","","","2018-04-26 11:11:27","2018-04-26 04:11:27","","0","https://bizhostvn.com/w/bienchucdanh/?p=423","3","nav_menu_item","","0"),
("462","1","2018-04-26 11:34:36","2018-04-26 04:34:36","","slider1","","inherit","open","closed","","slider1-2","","","2018-04-26 11:34:36","2018-04-26 04:34:36","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/slider1-1.jpg","0","attachment","image/jpeg","0"),
("473","1","2018-04-26 11:42:21","2018-04-26 04:42:21","","map-1","","inherit","open","closed","","map-1","","","2018-04-26 11:42:21","2018-04-26 04:42:21","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/map-1.png","0","attachment","image/png","0"),
("475","1","2018-04-26 11:42:34","2018-04-26 04:42:34","","Local-seo-1","","inherit","open","closed","","local-seo-1","","","2018-04-26 11:42:34","2018-04-26 04:42:34","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/Local-seo-1.png","0","attachment","image/png","0"),
("477","1","2018-04-26 11:42:49","2018-04-26 04:42:49","","pair-ads-1","","inherit","open","closed","","pair-ads-1","","","2018-04-26 11:42:49","2018-04-26 04:42:49","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/04/pair-ads-1.png","0","attachment","image/png","0"),
("479","1","2018-06-19 17:51:22","2018-06-19 10:51:22","","bizhost-logo-demo","","inherit","open","closed","","bizhost-logo-demo","","","2018-06-19 17:51:22","2018-06-19 10:51:22","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2018/06/bizhost-logo-demo.png","0","attachment","image/png","0"),
("480","1","2019-05-16 16:10:23","2019-05-16 09:10:23","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 16:10:23","2019-05-16 09:10:23","","0","https://bizhostvn.com/w/bienchucdanh/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","26","0"),
("10","2","0"),
("52","4","0"),
("53","4","0"),
("54","4","0"),
("55","4","0"),
("56","4","0"),
("57","4","0"),
("58","4","0"),
("59","4","0"),
("163","5","0"),
("163","18","0"),
("163","19","0"),
("163","20","0"),
("163","21","0"),
("163","22","0"),
("163","23","0"),
("163","24","0"),
("163","25","0"),
("209","5","0"),
("209","23","0"),
("211","5","0"),
("211","20","0"),
("213","5","0"),
("213","20","0"),
("215","5","0"),
("215","20","0"),
("217","5","0"),
("217","20","0"),
("219","5","0"),
("219","20","0"),
("221","5","0"),
("221","20","0"),
("265","5","0"),
("265","20","0"),
("267","5","0"),
("267","20","0"),
("269","5","0"),
("269","20","0"),
("338","26","0"),
("342","26","0"),
("344","26","0"),
("411","2","0"),
("415","2","0"),
("416","2","0"),
("417","2","0"),
("420","2","0"),
("421","3","0"),
("422","3","0"),
("423","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","0"),
("2","2","nav_menu","","0","6"),
("3","3","nav_menu","","0","3"),
("4","4","nav_menu","","0","8"),
("5","5","product_type","","0","11"),
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
("18","18","product_cat","","0","1"),
("19","19","product_cat","","0","1"),
("20","20","product_cat","","0","10"),
("21","21","product_cat","","0","1"),
("22","22","product_cat","","0","1"),
("23","23","product_cat","","0","2"),
("24","24","product_cat","","0","1"),
("25","25","product_cat","","0","1"),
("26","26","category","","0","4");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","18","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","18","display_type",""),
("3","18","thumbnail_id","165"),
("4","19","order","0"),
("5","19","display_type",""),
("6","19","thumbnail_id","171"),
("7","20","order","0"),
("8","20","display_type",""),
("9","20","thumbnail_id","170"),
("10","21","order","0"),
("11","21","display_type",""),
("12","21","thumbnail_id","173"),
("13","22","order","0"),
("14","22","display_type",""),
("15","22","thumbnail_id","168"),
("16","23","order","0"),
("17","23","display_type",""),
("18","23","thumbnail_id","166"),
("19","24","order","0"),
("20","24","display_type",""),
("21","24","thumbnail_id","169"),
("22","25","order","0"),
("23","25","display_type",""),
("24","25","thumbnail_id","167"),
("25","18","product_count_product_cat","1"),
("26","23","product_count_product_cat","2"),
("27","25","product_count_product_cat","1"),
("28","22","product_count_product_cat","1"),
("29","24","product_count_product_cat","1"),
("30","20","product_count_product_cat","10"),
("31","19","product_count_product_cat","1"),
("32","21","product_count_product_cat","1"),
("33","23","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("34","25","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("35","22","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("36","24","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("37","20","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("38","19","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("39","21","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("2","Mai-menu","mai-menu","0"),
("3","Top-menu","top-menu","0"),
("4","Danh mục sản phẩm","danh-muc-san-pham","0"),
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
("18","Biển tên nhân viên","bien-ten-nhan-vien","0"),
("19","Thẻ thay tên nhân viên","the-thay-ten-nhan-vien","0"),
("20","Thẻ nhân viên","the-nhan-vien","0"),
("21","Thẻ VIP, thẻ khách hàng","the-vip-the-khach-hang","0"),
("22","Huy hiệu, nhãn mác","huy-hieu-nhan-mac","0"),
("23","Biển phòng, biển chỉ dẫn","bien-phong-bien-chi-dan","0"),
("24","Thẻ học sinh, sinh viên","the-hoc-sinh-sinh-vien","0"),
("25","Dây đeo, bao đựng thẻ","day-deo-bao-dung-the","0"),
("26","Tin tức","tin-tuc","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","text_widget_custom_html,theme_editor_notice,wp496_privacy"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:2:{s:64:\"870a94d3f6f6e6a198628370c830ba919cde834cae24dbe71f0c8d886b40a79f\";a:4:{s:10:\"expiration\";i:1558169944;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557997144;}s:64:\"d49dac31a94b40fb95d773392499dd6adbc409f7cb96d41138a68d8a55101064\";a:4:{s:10:\"expiration\";i:1558170460;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557997660;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","481"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("21","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:27:\"add-post-type-featured_item\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:26:\"add-featured_item_category\";i:6;s:21:\"add-featured_item_tag\";}"),
("22","1","nav_menu_recently_edited","2"),
("23","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("24","1","bz_user-settings-time","1557997659"),
("25","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("26","1","dismissed_no_shipping_methods_notice","1"),
("28","1","duplicator_pro_created_format","1"),
("29","1","_woocommerce_tracks_anon_id","woo:3oTnoNntfzSttr3GNlUlY+UK");




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
("1","admin","$P$Bdn7MJwbIkrZi2eXpbR79thVqcArdZ.","admin","demobz@gmail.com","","2018-04-25 05:22:25","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("1","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558170460");




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






CREATE TABLE `wp_smartiplog` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whichpage` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO wp_smartiplog VALUES
("1","April 26, 2018, 6:47 am","118.68.55.53","Guest","http://bizhostvn.com/w/bienchucdanh/"),
("2","April 26, 2018, 6:48 am","118.68.55.53","Guest","http://bizhostvn.com/w/bienchucdanh/san-pham/the-thay-ten-nhan-vien-12/"),
("3","April 26, 2018, 7:04 am","123.24.202.108","Guest","http://bizhostvn.com/w/bienchucdanh/san-pham/tem-mac-kim-loai-04/"),
("4","April 26, 2018, 7:19 am","123.24.202.108","Guest","http://bizhostvn.com/w/bienchucdanh/san-pham/bien-thay-ten-nhan-vien-12/"),
("5","June 19, 2018, 10:23 am","113.173.56.75","Guest","http://bizhostvn.com/w/bienchucdanh/"),
("6","July 25, 2018, 12:20 pm","14.175.222.90","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("7","July 25, 2018, 11:59 pm","14.174.38.40","Guest","https://bizhostvn.com/w/bienchucdanh/san-pham/the-thay-ten-nhan-vien-11/"),
("8","July 26, 2018, 12:00 am","14.174.38.40","Guest","https://bizhostvn.com/w/bienchucdanh/san-pham/the-thay-ten-nhan-vien-12/"),
("9","July 27, 2018, 3:32 am","123.19.7.217","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("10","July 31, 2018, 3:20 am","113.189.72.71","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("11","August 3, 2018, 4:13 am","113.176.133.224","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("12","August 14, 2018, 6:43 am","123.22.177.114","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("13","August 15, 2018, 1:48 am","171.251.254.179","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("14","August 22, 2018, 3:56 pm","27.79.130.125","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("15","September 4, 2018, 9:35 am","1.55.216.194","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("16","September 4, 2018, 5:38 pm","14.231.179.191","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("17","September 13, 2018, 3:51 pm","116.109.19.42","Guest","http://khogiaodien.hvsc.vn/w/bienchucdanh/"),
("18","September 13, 2018, 3:52 pm","116.109.19.42","Guest","http://khogiaodien.hvsc.vn/w/bienchucdanh/san-pham/bien-thay-ten-nhan-vien-12/"),
("19","September 19, 2018, 8:05 am","14.232.208.37","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("20","September 19, 2018, 8:29 am","123.24.223.96","Guest","https://bizhostvn.com/w/bienchucdanh/gioi-thieu/"),
("21","September 19, 2018, 8:29 am","123.24.223.96","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("22","September 19, 2018, 9:33 am","14.162.145.75","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("23","September 21, 2018, 7:28 am","123.24.223.96","Guest","https://bizhostvn.com/w/bienchucdanh/san-pham/the-thay-ten-nhan-vien-12/"),
("24","September 23, 2018, 7:23 am","116.102.84.156","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("25","September 25, 2018, 10:05 am","27.70.129.250","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("26","September 28, 2018, 4:27 am","113.190.234.115","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("27","September 30, 2018, 2:38 am","118.68.203.253","Guest","http://giathai.vn/w/bienchucdanh/"),
("28","September 30, 2018, 9:04 am","27.70.186.162","Guest","https://bizhostvn.com/w/bienchucdanh/"),
("29","September 30, 2018, 5:33 pm","58.187.175.79","Guest","https://bizhostvn.com/w/bienchucdanh/san-pham/tem-mac-kim-loai-04-2/"),
("30","October 15, 2018, 12:36 pm","14.233.4.152","Guest","https://bizhostvn.com/w/bienchucdanh/");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;