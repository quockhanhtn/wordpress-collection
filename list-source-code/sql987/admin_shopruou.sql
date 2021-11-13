SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w25`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_commentmeta VALUES
("1","2","rating","5"),
("2","2","verified","0"),
("3","3","rating","5"),
("4","3","verified","0"),
("5","4","rating","4"),
("6","4","verified","0"),
("7","5","rating","5"),
("8","5","verified","0"),
("9","6","rating","5"),
("10","6","verified","0"),
("11","7","rating","5"),
("12","7","verified","0"),
("13","8","rating","4"),
("14","8","verified","0"),
("15","9","rating","5"),
("16","9","verified","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-02-25 10:28:00","2019-02-25 10:28:00","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","189","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:24:25","2019-02-26 15:24:25","good!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("3","187","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:25:09","2019-02-26 15:25:09","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("4","185","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:25:24","2019-02-26 15:25:24","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("5","183","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:25:34","2019-02-26 15:25:34","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("6","181","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:25:50","2019-02-26 15:25:50","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("7","179","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:26:02","2019-02-26 15:26:02","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("8","177","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:26:12","2019-02-26 15:26:12","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("9","215","webdemo.com","webdemo@gmail.com","","118.70.41.227","2019-02-26 22:46:17","2019-02-26 15:46:17","good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/shopruou\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1551414862,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960680,\"initial_activation_timestamp\":1551414873,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557026037,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=2142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/shopruou","yes"),
("2","home","https://bizhostvn.com/w/shopruou","yes"),
("3","blogname","shopruou","yes"),
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
("22","posts_per_page","20","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:240:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:6:\"mua/?$\";s:27:\"index.php?post_type=product\";s:36:\"mua/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:31:\"mua/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:23:\"mua/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:50:\"thuong-hieu/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pwb-brand=$matches[1]&feed=$matches[2]\";s:45:\"thuong-hieu/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pwb-brand=$matches[1]&feed=$matches[2]\";s:26:\"thuong-hieu/(.+?)/embed/?$\";s:42:\"index.php?pwb-brand=$matches[1]&embed=true\";s:38:\"thuong-hieu/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?pwb-brand=$matches[1]&paged=$matches[2]\";s:45:\"thuong-hieu/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?pwb-brand=$matches[1]&cpage=$matches[2]\";s:35:\"thuong-hieu/(.+?)/wc-api(/(.*))?/?$\";s:50:\"index.php?pwb-brand=$matches[1]&wc-api=$matches[3]\";s:20:\"thuong-hieu/(.+?)/?$\";s:31:\"index.php?pwb-brand=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:41:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wpdiscuz_form/([^/]+)/embed/?$\";s:46:\"index.php?wpdiscuz_form=$matches[1]&embed=true\";s:34:\"wpdiscuz_form/([^/]+)/trackback/?$\";s:40:\"index.php?wpdiscuz_form=$matches[1]&tb=1\";s:42:\"wpdiscuz_form/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&paged=$matches[2]\";s:49:\"wpdiscuz_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?wpdiscuz_form=$matches[1]&cpage=$matches[2]\";s:39:\"wpdiscuz_form/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?wpdiscuz_form=$matches[1]&wc-api=$matches[3]\";s:45:\"wpdiscuz_form/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"wpdiscuz_form/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"wpdiscuz_form/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?wpdiscuz_form=$matches[1]&page=$matches[2]\";s:30:\"wpdiscuz_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"wpdiscuz_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"wpdiscuz_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wpdiscuz_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"wpdiscuz_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"danh-muc-san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:50:\"dong-chai/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dong-chai=$matches[1]&feed=$matches[2]\";s:45:\"dong-chai/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dong-chai=$matches[1]&feed=$matches[2]\";s:26:\"dong-chai/([^/]+)/embed/?$\";s:45:\"index.php?pa_dong-chai=$matches[1]&embed=true\";s:38:\"dong-chai/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_dong-chai=$matches[1]&paged=$matches[2]\";s:20:\"dong-chai/([^/]+)/?$\";s:34:\"index.php?pa_dong-chai=$matches[1]\";s:50:\"dung-tich/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dung-tich=$matches[1]&feed=$matches[2]\";s:45:\"dung-tich/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dung-tich=$matches[1]&feed=$matches[2]\";s:26:\"dung-tich/([^/]+)/embed/?$\";s:45:\"index.php?pa_dung-tich=$matches[1]&embed=true\";s:38:\"dung-tich/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_dung-tich=$matches[1]&paged=$matches[2]\";s:20:\"dung-tich/([^/]+)/?$\";s:34:\"index.php?pa_dung-tich=$matches[1]\";s:50:\"giong-nho/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_giong-nho=$matches[1]&feed=$matches[2]\";s:45:\"giong-nho/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_giong-nho=$matches[1]&feed=$matches[2]\";s:26:\"giong-nho/([^/]+)/embed/?$\";s:45:\"index.php?pa_giong-nho=$matches[1]&embed=true\";s:38:\"giong-nho/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_giong-nho=$matches[1]&paged=$matches[2]\";s:20:\"giong-nho/([^/]+)/?$\";s:34:\"index.php?pa_giong-nho=$matches[1]\";s:50:\"loai-vang/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_loai-vang=$matches[1]&feed=$matches[2]\";s:45:\"loai-vang/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_loai-vang=$matches[1]&feed=$matches[2]\";s:26:\"loai-vang/([^/]+)/embed/?$\";s:45:\"index.php?pa_loai-vang=$matches[1]&embed=true\";s:38:\"loai-vang/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_loai-vang=$matches[1]&paged=$matches[2]\";s:20:\"loai-vang/([^/]+)/?$\";s:34:\"index.php?pa_loai-vang=$matches[1]\";s:48:\"nien-vu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_nien-vu=$matches[1]&feed=$matches[2]\";s:43:\"nien-vu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_nien-vu=$matches[1]&feed=$matches[2]\";s:24:\"nien-vu/([^/]+)/embed/?$\";s:43:\"index.php?pa_nien-vu=$matches[1]&embed=true\";s:36:\"nien-vu/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_nien-vu=$matches[1]&paged=$matches[2]\";s:18:\"nien-vu/([^/]+)/?$\";s:32:\"index.php?pa_nien-vu=$matches[1]\";s:48:\"nong-do/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_nong-do=$matches[1]&feed=$matches[2]\";s:43:\"nong-do/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_nong-do=$matches[1]&feed=$matches[2]\";s:24:\"nong-do/([^/]+)/embed/?$\";s:43:\"index.php?pa_nong-do=$matches[1]&embed=true\";s:36:\"nong-do/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_nong-do=$matches[1]&paged=$matches[2]\";s:18:\"nong-do/([^/]+)/?$\";s:32:\"index.php?pa_nong-do=$matches[1]\";s:52:\"thoi-gian-u/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?pa_thoi-gian-u=$matches[1]&feed=$matches[2]\";s:47:\"thoi-gian-u/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?pa_thoi-gian-u=$matches[1]&feed=$matches[2]\";s:28:\"thoi-gian-u/([^/]+)/embed/?$\";s:47:\"index.php?pa_thoi-gian-u=$matches[1]&embed=true\";s:40:\"thoi-gian-u/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?pa_thoi-gian-u=$matches[1]&paged=$matches[2]\";s:22:\"thoi-gian-u/([^/]+)/?$\";s:36:\"index.php?pa_thoi-gian-u=$matches[1]\";s:48:\"xuat-xu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_xuat-xu=$matches[1]&feed=$matches[2]\";s:43:\"xuat-xu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_xuat-xu=$matches[1]&feed=$matches[2]\";s:24:\"xuat-xu/([^/]+)/embed/?$\";s:43:\"index.php?pa_xuat-xu=$matches[1]&embed=true\";s:36:\"xuat-xu/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_xuat-xu=$matches[1]&paged=$matches[2]\";s:18:\"xuat-xu/([^/]+)/?$\";s:32:\"index.php?pa_xuat-xu=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:8:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:4;s:25:\"menu-icons/menu-icons.php\";i:5;s:35:\"perfect-woocommerce-brands/main.php\";i:6;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:7;s:37:\"woocommerce-products-filter/index.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:10;s:31:\"wpdiscuz/class.WpdiscuzCore.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:99:\"/home/tppone/domains/tppone.com/public_html/demo/shopruou/wp-content/themes/shop-ruou/functions.php\";i:2;s:95:\"/home/tppone/domains/tppone.com/public_html/demo/shopruou/wp-content/themes/shop-ruou/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","shop-ruou","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:22:\"Danh mục bài viết\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:5:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:234:\"<div class=\"product-helpfull-info\">\n<h2 class=\"product-helpfull-info--title\">Hỗ trợ khách hàng</h2>\n<div class=\"product-helpfull-info--content\">Liên hệ <a href=\"tel:0908671457\"> 0908 671 457</a> (Miss Liễu)</div>\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:405:\"<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:599:\"<div class=\"textwidget thong-tin-cua-hang\">\n<h3>Sản phẩm sẵn hàng tại:</h3>\n\n<strong>Showroom Hà Nội</strong>\n\n– Địa chỉ: Số 106 ngõ 72 Nguyễn Trãi, Thanh Xuân, HN\n\n– ĐT: 0965962586 – 0948225879\n\n<strong>Showroom TP.HCM</strong>\n\n– Địa chỉ: Số 30/10 Dương Quảng Hàm, P5, Gò Vấp, Tp. HCM\n\n– ĐT: 0941299699 – 0941628000\n\n<strong>Showroom Hải Dương</strong>\n\n<span style=\"font-size: 90%;\">– Địa chỉ: Số 170 Bùi Thị Xuân, TP. Hải Dương</span>\n\n<span style=\"font-size: 90%;\">– ĐT: 0868801805</span>\n\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:0:{}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","29","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:126:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:18:\"read_wpdiscuz_form\";b:1;s:19:\"read_wpdiscuz_forms\";b:1;s:18:\"edit_wpdiscuz_form\";b:1;s:19:\"edit_wpdiscuz_forms\";b:1;s:26:\"edit_others_wpdiscuz_forms\";b:1;s:29:\"edit_published_wpdiscuz_forms\";b:1;s:22:\"publish_wpdiscuz_forms\";b:1;s:20:\"delete_wpdiscuz_form\";b:1;s:21:\"delete_wpdiscuz_forms\";b:1;s:28:\"delete_others_wpdiscuz_forms\";b:1;s:29:\"delete_private_wpdiscuz_forms\";b:1;s:31:\"delete_published_wpdiscuz_forms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:12:\"categories-2\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:6:\"text-3\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-4\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:16:{i:1558058456;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558058803;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558060080;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558061262;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558064941;a:1:{s:28:\"wpdiscuz_gravatars_cache_add\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:27:\"wpdiscuz_cache_add_every_3h\";s:4:\"args\";a:0:{}s:8:\"interval\";i:10800;}}}i:1558069246;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558080046;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558082784;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558088880;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558088885;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558089010;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558112400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558144846;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558172941;a:1:{s:31:\"wpdiscuz_gravatars_cache_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:31:\"wpdiscuz_cache_delete_every_48h\";s:4:\"args\";a:0:{}s:8:\"interval\";i:172800;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("143","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960720;}","no"),
("145","new_admin_email","webdemo@gmail.com","yes"),
("150","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557028183;s:30:\"db-prefix-change/db_prefix.php\";i:1557026719;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557026043;}","yes"),
("153","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551090512;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("154","current_theme","Shop rượu","yes"),
("155","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:28:33 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551090526;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("156","theme_switched","","yes"),
("157","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:30:\"Bài viết mới cập nhật\";s:6:\"number\";i:8;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("158","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("160","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("161","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("162","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("163","flatsome_wup_buyer","trannguyen886","yes"),
("164","allowedthemes","a:1:{s:9:\"shop-ruou\";b:1;}","no"),
("165","fl_has_child_theme","shop-ruou","yes"),
("167","theme_mods_shop-ruou","a:160:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"contact\";i:1;s:7:\"nav-top\";i:2;s:7:\"account\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:2:{i:0;s:8:\"button-1\";i:1;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:1:{i:0;s:3:\"nav\";}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:1:{i:0;s:3:\"nav\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:28:48 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:12430:\".block-after-header-bottom .tieu-de,.header-button a,.row-san-pham .product-small .price span,.row-san-pham .product-small .product-title a{font-family:oswald,sans-serif}#logo:before{position:absolute;content:\'\';background-image:url(/wp-content/uploads/2019/02/header-bg.png);background-repeat:no-repeat;background-position:center;width:500px;height:215px;left:280px;top:-112px;z-index:-1}.header-top{background-color:#44608400}.header-nav li a{font-weight:400;padding-left:15px;padding-right:15px}#header-contact li a span{text-transform:none}.searchform-wrapper input:focus{box-shadow:0 0 0 gray;background:#5f0724}placeholder{color:red}.searchform-wrapper input{height:45px;border-top-left-radius:4px;border-bottom-left-radius:4px;box-shadow:0 0 12px #0002b;background:#5f0724;border:0}.searchform .button.icon{box-shadow:2px 2px 10px #26000d;height:45px;width:45px;border-top-right-radius:4px;border-bottom-right-radius:4px;background:#26000d;color:#b7a054}.header-button a{border-radius:4px;background:#b39851}.header-nav li a:hover{background:#fff;color:#000!important}.header-nav li{margin:0}.block-after-header-bottom .tieu-de{font-size:13px;font-weight:400;text-transform:uppercase;color:#5d5d5d;margin-bottom:-5px}.block-after-header-bottom .icon-box-text{padding-left:5px!important}.block-after-header-bottom .mo-ta{font-size:10px;color:#5d5d5d}.section-title b{height:1px;opacity:1;background-color:#b39851}.section-title-container{margin-bottom:0}.de-xuat .banner .text-box .text-inner span{font-size:15px;color:#562345;background:#fff;padding:20px 30px}.section-title-center span{text-align:center;font-weight:400;letter-spacing:3px}.block-after-header-bottom{padding-left:5px}.thong-tin-bo-sung{padding-top:30px;background:#fcfcfc;border-bottom:67px solid #cecece}.product-footer{margin-top:-84px}.row-san-pham .product-small .price span{color:#960000;font-size:17px;font-weight:400}.row-san-pham .product-small .product-title a{height:40px;font-size:15px;color:#562345!important;margin-bottom:10px;letter-spacing:1px}.row-san-pham .product-small .product-title a:hover{color:#ff7010!important}.image-tools a{border:1px solid #b39851!important;background-color:#fff}.icon-expand:before{color:#b39851}.thong-bao .col{padding-bottom:0}.thong-bao .col p{margin-bottom:3px}.thong-bao{border-bottom:4px solid #dec279}.de-xuat .large-12,.row-san-pham .large-12{padding-bottom:0!important}.footer-wrapper ul li,.footer-wrapper ul li a{color:#bd8eab;font-weight:400;font-size:14px}.copyright-footer{font-size:12px;color:#b39851}.footer-section .col{padding-bottom:0}.footer-wrapper ul li{list-style:none;margin-bottom:5px;margin-left:0}.footer-wrapper h3{font-size:16px;font-weight:400;color:#b39851}.single-product .product-info .product-title{padding-bottom:0;border-bottom:0 dashed #e8e8e8;color:#390023;margin-bottom:0}.product-info{padding-top:0}.single-product .nong-do-dung-tich{display:block;margin-top:5px;margin-bottom:10px;padding-bottom:10px;border-bottom:1px dashed #efece3;font-family:oswald;font-weight:400;color:#8f8f8f}.breadcrumbs,.breadcrumbs a,.page-title-inner{color:#fff}.social-icons a{border:1px solid #b39851}.footer-wrapper .social-icons a.button{background:gray;border:0;color:#fff}.single-product .product-main .content-row{background:#fff!important}.product-gallery,.product-thumbnails .col{padding-bottom:15px!important;padding-top:15px}.single-product .product-main{padding-top:30px!important;background:#eaeaea}.footer-section .medium-3{border-left:1px solid #530033;border-right:1px solid #200013}.footer-section .medium-3:first-child{border-left:0}.footer-section .cot-cuoi{border-right:0!important}.page-title-inner{position:relative;padding-top:0;min-height:37px;font-size:13px;font-family:oswald,sans-serif}.woocommerce-product-gallery figure{border-radius:4px;border:1px solid #e8e8e8}.single-product .page-title{background:#390023}.woocommerce-product-rating{visibility:visible;position:relative;display:block;border-bottom:1px dashed #e8e8e8;padding-bottom:10px}.product-small .pwb-brands-in-loop a{margin-bottom:5px;color:#b39851}#commentform,.single-product .cart{margin-bottom:0}.single-product .product-info .product-short-description,.widget .is-divider{display:none}.product-helpfull-info{background:#efece3;padding:15px;font-family:Oswald,Roboto,arial,sans-serif;text-transform:uppercase;position:relative;color:#999}.devvn-popup-title,.popup-customer-info-group .devvn-order-btn{background:#390023!important}.product-helpfull-info i{position:absolute;top:50%;left:10px;font-size:30px;margin-top:-15px}.product-helpfull-info--title{font-size:1.125em;color:#960000}.product-helpfull-info--content a{color:#b39851}.icm-telephone:before{content:\"\"}.devvn-popup-title span{font-family:oswald;font-size:19px}.popup-customer-info-group .devvn-order-btn,.single-product .price span{font-family:oswald,sans-serif;font-weight:400}.single-product .product-info{border-right:0;padding:15px}.single-product #product-sidebar{padding-left:0;padding-top:15px;padding-bottom:15px}.single-product .product-info .price-wrapper .price{display:block;background:#f4f0e4;padding:22px 15px;color:#fff;text-align:center}.single-product .price span{white-space:nowrap;color:#960000;font-size:29px}.product_meta>span{display:block;border-top:1px dashed #e9e9e9;padding:10px 0;font-size:14px}.single_add_to_cart_button,a.devvn_buy_now_style{font-family:oswald,sans-serif;font-size:16px}.single_add_to_cart_button{margin-right:0;font-weight:400;width:67%}.commentlist li .avatar{border-radius:100%;background:gray;width:60px;height:60px;border:2px solid #b39851}.star-rating{margin:0}.form-submit input[type=submit]{font-family:oswald,sans-serif;font-weight:400;margin:0}.review-form-inner{border:1px solid #b39851;padding:15px 20px}#tab-pwb_tab-content img{border:1px solid #eaeaea}.pwb-single-product-brands a{font-family:oswald,sans-serif;color:#b39851;font-weight:400;margin-bottom:5px;display:block}a.devvn_buy_now_style strong{font-weight:400}a.devvn_buy_now_style{border-radius:0;background:#5f0724!important;margin-bottom:10px}.single-product .price{margin:0 0 15px;border-bottom:1px dashed #e8e8e8}.nav-tabs+.tab-panels{padding-left:0;padding-right:0;border-left:0;border-right:0;border-bottom:0}.tabbed-content .nav-tabs>li{margin:0 3px;margin-bottom:-1px!important}.nav-tabs>li>a{border-left:0;border-right:0;border-top:4px solid #cecece;background:#cecece;padding-left:45px;padding-right:45px;font-size:19px!important;font-weight:400;color:#5e5e5e}.nav-tabs>li.active>a{border-top-color:#b6b6b6;color:#ff7010;border-left:0;border-right:0}.custom-form-1{display:inline-block;width:100%}#wpcomm .wpdiscuz-form-bottom-bar,#wpcomm .wpdiscuz-form-top-bar,#wpcomm .wpdiscuz-front-actions,.blog-archive .large-9 .badge,.woof_edit_view{display:none}.custom-form-1 .left{width:50%;padding-right:20px;float:left}.custom-form-1 .right{width:50%;padding-left:20px;float:right;text-align:left}.custom-form-1 h3,.heading-center,.tieu-de-mo-ta{text-align:center}.custom-form-1 p{font-family:Arial,sans-serif;font-size:14px;margin-bottom:8px}.custom-form-1 .clearboth{clear:both}.custom-form-1 h3{color:#591b04;text-transform:uppercase;border-bottom:1px solid #f4f0e4;padding-bottom:10px}.custom-form-1 ul li{list-style:none;padding-bottom:6px;border-bottom:1px dashed #e1e1e1;margin-bottom:5px}.luu-y{border:1px dashed #5f0724;background:#f4f0e4;padding:15px;color:#333;font-family:aria,sans-serif;font-size:15px;margin-bottom:40px}.luu-y p{margin-bottom:9px}.luu-y h3{color:#5f0724}.custom-form-1 ul li .gia-tri{float:right}.custom-form-1 ul{font-size:14px;font-family:Arial,sans-serif}.nav-dropdown-default,.recent-blog-posts a,.related .product-small .product-title a,.thong-tin-cua-hang,.widget-title span,.widget_categories ul li{font-family:oswald,sans-serif}.heading-title.product-detail-title{font-size:1.5em;letter-spacing:1px}.tieu-de-mo-ta{font-size:20px;color:#591b04;padding-top:10px;text-transform:uppercase}.single-product .entry-content p{margin-bottom:10px}.single-product .entry-content{font-size:15px}.devvn_readmore_flatsome a{color:#ff7010!important;text-align:left!important}.devvn_readmore_flatsome a:after{border-top:6px solid #ff7010!important}.related h3{font-size:19px;color:#ff7010}.related .product-small .box-text{padding:0}.single-product .related .price{border-bottom:0}.single-product .related .price span{font-size:17px}.related .product-small .product-title a{overflow:hidden;font-weight:400;height:40px;font-size:15px;color:#562345!important;margin-bottom:10px;letter-spacing:1px}.product-footer .woocommerce-tabs{padding-bottom:0;border-top:none}.woof_sid_auto_shortcode .woof_container{width:25%;padding-left:15px;padding-right:15px}.chosen-container-single .chosen-single{border:1px solid #e6e6e6!important;border-radius:4px!important;background:#fff!important;box-shadow:0 0 0;height:38px!important}.chosen-container-single .chosen-single span{line-height:33px;font-size:14px}.woof_container{padding-bottom:0;margin-bottom:0}.woof_sid_auto_shortcode.woof{padding:10px 0}.archive .breadcrumbs{font-weight:400}.archive .page-title{background:#390023}.woof_sid_auto_shortcode .woof_container_inner h4{color:gray;font-weight:400;text-transform:uppercase;font-size:15px}.woof_sid_auto_shortcode{padding-bottom:0!important;border:1px solid #e6e6e6;margin-bottom:30px;border-radius:4px}.comments-area{width:auto;background:#edeef2;border-radius:5px;padding:20px;margin-bottom:50px}#wc-comment-header,#wpcomm{max-width:100%}#wpcomm{padding:0;border-top:0;margin:0}#wpcomm .wc-form-wrapper{background:0 0}#wpcomm .wc-form-footer{padding-bottom:5px;margin-bottom:0;border:0}#wpcomm .wpdiscuz-textarea-wrap{border:0;border-radius:5px}#wpcomm .avatar{box-shadow:0 0 0 grey;border-radius:99%}#wpcomm .wc-field-textarea .wpdiscuz-textarea-wrap textarea{border-radius:4px;font-size:15px!important}#wpcomm .wc-thread-wrapper{padding:10px 0 10px 2px;margin-bottom:0;margin-top:0}#wpcomm .wc-comment .wc-comment-right{background:#FEFEFE;border-radius:5px}#wpcomm .wc-comment-header{border-top:none;margin-bottom:0}.widget-title span{letter-spacing:0;font-weight:400;font-size:18px;color:#5f0724}.widget .current-cat>a{color:#ff7d37;font-weight:400}.page-right-sidebar .large-9{border-right:0}.nav-dropdown.nav-dropdown-default>li>a:hover{color:#5f0724}.widget_shopping_cart_content p{padding:10px}.nav-dropdown>li.nav-dropdown-col{min-width:200px}.nav-dropdown-default li.menu-cha a{font-size:15px!important;color:#390023!important}.nav-dropdown-default .nav-column li>a{text-transform:uppercase;color:gray;font-weight:400;letter-spacing:1px;font-size:12px;border-bottom:0}.nav-dropdown.nav-dropdown-default>li>a{font-size:15px;font-weight:400;color:#390023}.nav-dropdown-default{padding:0;font-size:14px;font-weight:400}.page-right-sidebar .page-inner{font-size:14px}.blog-archive .post-sidebar,.blog-single .post-sidebar,.page-right-sidebar .large-3{padding-left:0}#wpcomm .wc-comment-right .wc-comment-text,#wpcomm .wc-comment-right .wc-comment-text *{font-size:15px}#wpcomm .wc-blog-post_author>.wc-comment-right .wc-comment-author{color:#000;font-weight:700}.page-number{background:#f4f4f4;border:0!important}.blog-archive .post-item .box-text .post-title:hover{color:#ff7d37}.blog-archive .post-item .box-text .post-title{margin-bottom:10px;font-size:19px}.blog-archive .post-item .box-text{padding-left:15px;padding-right:0;padding-top:0}.blog-archive .large-12{padding-bottom:20px}.blog-archive .taxonomy-description p{font-size:14px;text-align:left;margin-bottom:8px}.blog-archive h1{text-align:left;background:#fff!important}.recent-blog-posts .badge-inner{border-radius:99%}.recent-blog-posts a{font-size:15px;font-weight:400}.the-tim-kiem a:hover{background:#b39851;color:#fff}.the-tim-kiem a{background:#f4f4f4;padding:3px 10px;color:#717171}.danh-muc{display:block;margin-bottom:6px}.is-divider,.widget .post_comments{display:none}.blog-single .entry-title{margin-top:11px}.blog-single .entry-meta{font-size:13px;letter-spacing:0;color:gray;text-transform:none}.entry-content{padding-top:0;padding-bottom:0;font-size:15px}.recent-blog-posts a:hover{color:#f80!important}.thong-tin-cua-hang p{margin-bottom:10px}.thong-tin-cua-hang strong{font-weight:500;color:#ff7d00}.thong-tin-cua-hang h3{color:#960000}.thong-tin-cua-hang{background:#efece3;padding:10px;font-size:14px}.widget{background:#f4f4f4;padding:20px 10px}#product-sidebar .widget{background:#fff;padding:0}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1305:\"#top-bar,.banner-dau-trang .cot2{display:none}.off-canvas-center .nav-sidebar.nav-vertical>li>a{font-family:Oswald,sans-serif;font-weight:400;padding:9px}.de-xuat .banner .text-box .text-inner span{line-height:39px}.block-html-after-header .row .col{height:67px;padding:0}.block-html-after-header .row .col .icon-box{padding-top:15px}.block-after-header-bottom .tieu-de{margin-bottom:1px;font-size:11px}a.devvn_buy_now_style{max-width:100%}.single_add_to_cart_button{width:71%}.custom-form-1 .left,.custom-form-1 .right{width:100%;padding-right:0;padding-left:0}.tabbed-content .nav-tabs>li{width:33.33%;float:left}.nav-tabs>li.active>a,.nav-tabs>li>a{padding:10px;text-align:center;font-size:14px!important}.product-footer{margin-top:-76px}.page-title-inner{padding-top:5px}.woof_sid_auto_shortcode .woof_container{padding-left:5px;padding-right:5px;width:50%;clear:none;float:left;display:inline-block}.woof_sid_auto_shortcode .woof_container_inner{padding-left:0}.blog-archive .post-item .box-text{padding-left:0;padding-right:0;padding-top:10px}.comments-area{border-radius:5px;padding:10px;margin-bottom:0}.blog-single .entry-category{line-height:18px;font-weight:400}.blog-archive .post-sidebar,.blog-single .post-sidebar,.page-right-sidebar .large-3{padding-left:15px}.entry-content{font-size:14px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:38:\"Bạn đang tìm sản phẩm nào?...\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:12:\"fl_portfolio\";s:1:\"0\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Oswald\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Oswald\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.0\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:9:\"404_block\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1100\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"221\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"103\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:7:\"#390023\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"51\";s:15:\"nav_position_bg\";s:7:\"#b39851\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:6:\"medium\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:9:\"site_logo\";s:72:\"https://bizhostvn.com/w/shopruou/wp-content/uploads/2019/05/shopruou.png\";s:9:\"type_size\";s:3:\"100\";s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_email\";s:17:\"demoweb@gmail.com\";s:19:\"contact_email_label\";s:17:\"demoweb@gmail.com\";s:13:\"contact_hours\";s:0:\"\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:17:\"nav_height_bottom\";s:2:\"16\";s:19:\"header_search_width\";s:2:\"96\";s:15:\"header_button_1\";s:12:\"Xem cataloge\";s:20:\"header_button_1_link\";s:19:\"https://Webdemo.com\";s:27:\"header_button_1_link_target\";s:6:\"_blank\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:15:\"cart_icon_style\";s:10:\"fill-round\";s:17:\"header_cart_total\";b:0;s:9:\"cart_icon\";s:3:\"bag\";s:11:\"color_texts\";s:7:\"#262626\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:17:\"html_after_header\";s:36:\"[block id=\"row-after-header-bottom\"]\";s:13:\"color_primary\";s:7:\"#b39851\";s:15:\"color_secondary\";s:7:\"#b39851\";s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:1:\"6\";s:13:\"header_sticky\";b:0;s:16:\"category_sidebar\";s:4:\"none\";s:27:\"category_force_image_height\";b:0;s:21:\"category_image_height\";s:3:\"100\";s:16:\"products_pr_page\";s:2:\"50\";s:18:\"category_row_count\";s:1:\"5\";s:9:\"cat_style\";s:6:\"normal\";s:10:\"grid_style\";s:5:\"grid2\";s:21:\"category_shadow_hover\";s:1:\"0\";s:20:\"product_box_category\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:12:\"footer_block\";s:12:\"footer-block\";s:19:\"footer_bottom_align\";s:6:\"center\";s:16:\"footer_left_text\";s:272:\"THƯỞNG THỨC CÓ TRÁCH NHIỆM</br>\nCác sản phẩm rượu không dành cho người dưới 18 tuổi và phụ nữ đang mang thai.</br>\nBản quyền © 2019 SÀNH RƯỢU Hiện thân của sự cống hiến không ngừng để đạt tới sự hoàn hảo\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_color\";s:7:\"#250016\";s:14:\"product_header\";s:3:\"top\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_style\";s:6:\"normal\";s:21:\"product_title_divider\";b:0;s:19:\"product_sticky_cart\";b:0;s:25:\"product_info_review_count\";b:1;s:19:\"product_image_width\";s:1:\"5\";s:31:\"product_info_review_count_style\";s:6:\"inline\";s:18:\"product_info_align\";s:4:\"left\";s:18:\"product_tabs_align\";s:6:\"center\";s:15:\"product_display\";s:11:\"tabs_normal\";s:23:\"related_products_pr_row\";s:1:\"5\";s:23:\"header_shop_bg_featured\";b:0;s:15:\"breadcrumb_size\";s:6:\"medium\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"logo_padding\";s:1:\"3\";s:14:\"mobile_overlay\";s:6:\"center\";s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#3d0027\";}","yes"),
("169","envato_setup_complete","1551090535","yes"),
("180","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("190","woocommerce_store_address","Luong Ngoc Quyen, Ha Dong","yes"),
("191","woocommerce_store_address_2","","yes"),
("192","woocommerce_store_city","Ha Noi","yes"),
("193","woocommerce_default_country","VN","yes"),
("194","woocommerce_store_postcode","100000","yes"),
("195","woocommerce_allowed_countries","all","yes"),
("196","woocommerce_all_except_countries","a:0:{}","yes"),
("197","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("198","woocommerce_ship_to_countries","","yes"),
("199","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("200","woocommerce_default_customer_address","geolocation","yes"),
("201","woocommerce_calc_taxes","no","yes"),
("202","woocommerce_enable_coupons","yes","yes"),
("203","woocommerce_calc_discounts_sequentially","no","no"),
("204","woocommerce_currency","VND","yes"),
("205","woocommerce_currency_pos","right","yes"),
("206","woocommerce_price_thousand_sep",".","yes"),
("207","woocommerce_price_decimal_sep",".","yes"),
("208","woocommerce_price_num_decimals","0","yes"),
("209","woocommerce_shop_page_id","45","yes"),
("210","woocommerce_cart_redirect_after_add","no","yes"),
("211","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("212","woocommerce_placeholder_image","653","yes"),
("213","woocommerce_weight_unit","kg","yes"),
("214","woocommerce_dimension_unit","cm","yes"),
("215","woocommerce_enable_reviews","yes","yes"),
("216","woocommerce_review_rating_verification_label","yes","no"),
("217","woocommerce_review_rating_verification_required","no","no"),
("218","woocommerce_enable_review_rating","yes","yes"),
("219","woocommerce_review_rating_required","yes","no"),
("220","woocommerce_manage_stock","yes","yes"),
("221","woocommerce_hold_stock_minutes","60","no"),
("222","woocommerce_notify_low_stock","yes","no"),
("223","woocommerce_notify_no_stock","yes","no"),
("224","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("225","woocommerce_notify_low_stock_amount","2","no"),
("226","woocommerce_notify_no_stock_amount","0","yes"),
("227","woocommerce_hide_out_of_stock_items","no","yes"),
("228","woocommerce_stock_format","","yes"),
("229","woocommerce_file_download_method","force","no"),
("230","woocommerce_downloads_require_login","no","no"),
("231","woocommerce_downloads_grant_access_after_payment","yes","no"),
("232","woocommerce_prices_include_tax","no","yes"),
("233","woocommerce_tax_based_on","shipping","yes"),
("234","woocommerce_shipping_tax_class","inherit","yes"),
("235","woocommerce_tax_round_at_subtotal","no","yes"),
("236","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("237","woocommerce_tax_display_shop","excl","yes"),
("238","woocommerce_tax_display_cart","excl","yes"),
("239","woocommerce_price_display_suffix","","yes"),
("240","woocommerce_tax_total_display","itemized","no"),
("241","woocommerce_enable_shipping_calc","yes","no"),
("242","woocommerce_shipping_cost_requires_address","no","yes"),
("243","woocommerce_ship_to_destination","billing","no"),
("244","woocommerce_shipping_debug_mode","no","yes"),
("245","woocommerce_enable_guest_checkout","yes","no"),
("246","woocommerce_enable_checkout_login_reminder","no","no"),
("247","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("248","woocommerce_enable_myaccount_registration","no","no"),
("249","woocommerce_registration_generate_username","yes","no"),
("250","woocommerce_registration_generate_password","yes","no"),
("251","woocommerce_erasure_request_removes_order_data","no","no"),
("252","woocommerce_erasure_request_removes_download_data","no","no"),
("253","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("254","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("255","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("256","woocommerce_trash_pending_orders","","no"),
("257","woocommerce_trash_failed_orders","","no"),
("258","woocommerce_trash_cancelled_orders","","no"),
("259","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no");
INSERT INTO bz_options VALUES
("260","woocommerce_email_from_name","Mẫu web bán rượu &#8211; Webdemo","no"),
("261","woocommerce_email_from_address","webdemo@gmail.com","no"),
("262","woocommerce_email_header_image","","no"),
("263","woocommerce_email_footer_text","{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("264","woocommerce_email_base_color","#96588a","no"),
("265","woocommerce_email_background_color","#f7f7f7","no"),
("266","woocommerce_email_body_background_color","#ffffff","no"),
("267","woocommerce_email_text_color","#3c3c3c","no"),
("268","woocommerce_cart_page_id","46","yes"),
("269","woocommerce_checkout_page_id","47","yes"),
("270","woocommerce_myaccount_page_id","48","yes"),
("271","woocommerce_terms_page_id","","no"),
("272","woocommerce_force_ssl_checkout","no","yes"),
("273","woocommerce_unforce_ssl_checkout","no","yes"),
("274","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("275","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("276","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("277","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("278","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("279","woocommerce_myaccount_orders_endpoint","orders","yes"),
("280","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("281","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("282","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("283","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("284","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("285","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("286","woocommerce_logout_endpoint","customer-logout","yes"),
("287","woocommerce_api_enabled","no","yes"),
("288","woocommerce_single_image_width","600","yes"),
("289","woocommerce_thumbnail_image_width","300","yes"),
("290","woocommerce_checkout_highlight_required_fields","yes","yes"),
("291","woocommerce_demo_store","no","no"),
("292","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("293","current_theme_supports_woocommerce","yes","yes"),
("294","woocommerce_queue_flush_rewrite_rules","no","yes"),
("297","default_product_cat","17","yes"),
("301","woocommerce_db_version","3.5.5","yes"),
("302","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("304","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("306","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("311","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("312","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("313","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("315","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("316","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("321","woocommerce_meta_box_errors","a:0:{}","yes"),
("327","woocommerce_product_type","physical","yes"),
("328","woocommerce_sell_in_person","1","yes"),
("329","woocommerce_allow_tracking","no","yes"),
("330","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("331","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("332","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("366","product_cat_children","a:0:{}","yes"),
("370","woocommerce_maybe_regenerate_images_hash","7769330881cf28e1cfacdc5c08213d78","yes"),
("707","acf_version","5.7.7","yes"),
("719","wc_pwb_admin_tab_brand_single_position","after_title","yes"),
("720","pwb_activate_on","1551368637","yes"),
("721","old_wc_pwb_admin_tab_slug","thuong-hieu","yes"),
("722","widget_pwb_list_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("723","widget_pwb_dropdown_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("724","widget_pwb_filter_by_brand_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("728","pwb-brand_children","a:0:{}","yes"),
("795","wc_pwb_admin_tab_slug","thuong-hieu","yes"),
("796","wc_pwb_admin_tab_brand_desc","no","yes"),
("797","wc_pwb_admin_tab_brand_banner","no","yes"),
("798","wc_pwb_admin_tab_brand_single_product_tab","yes","yes"),
("799","wc_pwb_admin_tab_brands_in_loop","brand_link","yes"),
("800","wc_pwb_admin_tab_brands_in_single","brand_link","yes"),
("801","wc_pwb_admin_tab_brand_logo_size","thumbnail","yes"),
("802","wc_pwb_admin_tab_brands_page_id","-","yes"),
("817","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:18:\"Đặt hàng nhanh\";s:12:\"button_text2\";s:0:\"\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"Đặt mua %s\";s:10:\"popup_mess\";s:143:\"Bạn vui lòng nhập đúng số điện thoại để chúng tôi sẽ gọi xác nhận đơn hàng trước khi giao hàng. Xin cảm ơn!\";s:12:\"popup_sucess\";s:641:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">Đặt hàng thành công!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">Mã đơn hàng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">Webdemo sẽ liên hệ với bạn trong 12h tới. Cám ơn bạn đã cho chúng tôi cơ hội được phục vụ.\n<strong>Hotline:</strong> 0972939830</p>\n<p class=\"clearfix\"><strong>Ghi chú: </strong>Đơn hàng chỉ có hiệu lực trong vòng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"Đặt hàng thất bại. Vui lòng đặt hàng lại. Xin cảm ơn!\";s:17:\"out_of_stock_mess\";s:12:\"Hết hàng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("960","woocommerce_thumbnail_cropping","uncropped","yes"),
("1089","widget_yith-woo-ajax-navigation","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1090","widget_yith-woo-ajax-reset-navigation","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1091","widget_yith-woo-ajax-navigation-sort-by","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1092","widget_yith-woo-ajax-navigation-stock-on-sale","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1093","widget_yith-woo-ajax-navigation-list-price-filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1094","yit_wcan_options","a:28:{s:29:\"yith_wcan_ajax_shop_container\";s:9:\".products\";s:30:\"yith_wcan_ajax_shop_pagination\";s:26:\"nav.woocommerce-pagination\";s:36:\"yith_wcan_ajax_shop_result_container\";s:25:\".woocommerce-result-count\";s:31:\"yith_wcan_ajax_scroll_top_class\";s:19:\".yit-wcan-container\";s:31:\"yith_wcan_ajax_shop_terms_order\";s:12:\"alphabetical\";s:25:\"yith_wcan_scroll_top_mode\";s:6:\"mobile\";s:33:\"yith_wcan_ajax_widget_title_class\";s:15:\"h3.widget-title\";s:35:\"yith_wcan_ajax_widget_wrapper_class\";s:7:\".widget\";s:32:\"yith_wcan_ajax_shop_filter_style\";s:8:\"standard\";s:22:\"yith_wcan_custom_style\";s:0:\"\";s:21:\"yith_wcan_ajax_loader\";s:126:\"https://bizhostvn.com/w/shopruou/wp-content/plugins/yith-woocommerce-ajax-product-filter-premium/assets/images/ajax-loader.gif\";s:34:\"yith_wcan_enable_ajax_price_filter\";s:2:\"no\";s:41:\"yith_wcan_enable_ajax_price_filter_slider\";s:3:\"yes\";s:31:\"yith_wcan_enable_slider_in_ajax\";s:2:\"no\";s:38:\"yith_wcan_enable_dropdown_price_filter\";s:2:\"no\";s:24:\"yith_wcan_dropdown_style\";s:4:\"open\";s:37:\"yith_wcan_enable_ajax_shop_pagination\";s:2:\"no\";s:43:\"yith_wcan_ajax_shop_pagination_anchor_class\";s:14:\"a.page-numbers\";s:38:\"yith_wcan_show_current_categories_link\";s:2:\"no\";s:40:\"yith_wcan_enable_see_all_categories_link\";s:2:\"no\";s:45:\"yith_wcan_enable_see_all_categories_link_text\";s:18:\"See all categories\";s:34:\"yith_wcan_enable_see_all_tags_link\";s:2:\"no\";s:39:\"yith_wcan_enable_see_all_tags_link_text\";s:12:\"See all tags\";s:39:\"yith_wcan_enable_hierarchical_tags_link\";s:2:\"no\";s:20:\"yith_wcan_enable_seo\";s:2:\"no\";s:19:\"yith_wcan_seo_value\";s:14:\"noindex-follow\";s:26:\"yith_wcan_seo_rel_nofollow\";s:2:\"no\";s:28:\"yith_wcan_change_browser_url\";s:3:\"yes\";}","yes"),
("1170","wp_installer_settings","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","yes"),
("1171","widget_woof_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1172","woof_first_init","1","yes"),
("1173","woof_set_automatically","1","yes"),
("1174","woof_autosubmit","1","yes"),
("1175","woof_show_count","1","yes"),
("1176","woof_show_count_dynamic","0","yes"),
("1177","woof_hide_dynamic_empty_pos","0","yes"),
("1178","woof_try_ajax","0","yes"),
("1179","woof_checkboxes_slide","1","yes"),
("1180","woof_hide_red_top_panel","0","yes"),
("1181","woof_sort_terms_checked","0","yes"),
("1182","woof_filter_btn_txt","Lọc tìm sản phẩm","yes"),
("1183","woof_reset_btn_txt","Lọc lại","yes"),
("1184","woof_settings","a:45:{s:11:\"items_order\";s:161:\"by_price,product_cat,pwb-brand,pa_loai-vang,pa_giong-nho,pa_xuat-xu,pa_nien-vu,pa_thoi-gian-u,pa_dong-chai,pa_dung-tich,pa_nong-do,product_visibility,product_tag\";s:8:\"by_price\";a:6:{s:4:\"show\";s:1:\"0\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:0:\"\";s:6:\"ranges\";s:0:\"\";s:17:\"first_option_text\";s:0:\"\";s:15:\"ion_slider_step\";s:1:\"1\";}s:8:\"tax_type\";a:12:{s:11:\"product_cat\";s:6:\"select\";s:9:\"pwb-brand\";s:6:\"select\";s:12:\"pa_loai-vang\";s:6:\"select\";s:12:\"pa_giong-nho\";s:6:\"select\";s:10:\"pa_xuat-xu\";s:6:\"select\";s:10:\"pa_nien-vu\";s:6:\"select\";s:14:\"pa_thoi-gian-u\";s:6:\"select\";s:12:\"pa_dong-chai\";s:6:\"select\";s:12:\"pa_dung-tich\";s:6:\"select\";s:10:\"pa_nong-do\";s:6:\"select\";s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";}s:14:\"excluded_terms\";a:12:{s:11:\"product_cat\";s:0:\"\";s:9:\"pwb-brand\";s:0:\"\";s:12:\"pa_loai-vang\";s:0:\"\";s:12:\"pa_giong-nho\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:10:\"pa_nien-vu\";s:0:\"\";s:14:\"pa_thoi-gian-u\";s:0:\"\";s:12:\"pa_dong-chai\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:10:\"pa_nong-do\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:16:\"tax_block_height\";a:12:{s:11:\"product_cat\";s:1:\"0\";s:9:\"pwb-brand\";s:1:\"0\";s:12:\"pa_loai-vang\";s:1:\"0\";s:12:\"pa_giong-nho\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";s:10:\"pa_nien-vu\";s:1:\"0\";s:14:\"pa_thoi-gian-u\";s:1:\"0\";s:12:\"pa_dong-chai\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:10:\"pa_nong-do\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:16:\"show_title_label\";a:12:{s:11:\"product_cat\";s:1:\"1\";s:9:\"pwb-brand\";s:1:\"1\";s:12:\"pa_loai-vang\";s:1:\"1\";s:12:\"pa_giong-nho\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";s:10:\"pa_nien-vu\";s:1:\"1\";s:14:\"pa_thoi-gian-u\";s:1:\"1\";s:12:\"pa_dong-chai\";s:1:\"1\";s:12:\"pa_dung-tich\";s:1:\"1\";s:10:\"pa_nong-do\";s:1:\"1\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:18:\"show_toggle_button\";a:12:{s:11:\"product_cat\";s:1:\"0\";s:9:\"pwb-brand\";s:1:\"0\";s:12:\"pa_loai-vang\";s:1:\"0\";s:12:\"pa_giong-nho\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";s:10:\"pa_nien-vu\";s:1:\"0\";s:14:\"pa_thoi-gian-u\";s:1:\"0\";s:12:\"pa_dong-chai\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:10:\"pa_nong-do\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:13:\"dispay_in_row\";a:12:{s:11:\"product_cat\";s:1:\"0\";s:9:\"pwb-brand\";s:1:\"0\";s:12:\"pa_loai-vang\";s:1:\"0\";s:12:\"pa_giong-nho\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";s:10:\"pa_nien-vu\";s:1:\"0\";s:14:\"pa_thoi-gian-u\";s:1:\"0\";s:12:\"pa_dong-chai\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:10:\"pa_nong-do\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:16:\"custom_tax_label\";a:12:{s:11:\"product_cat\";s:23:\"Danh mục sản phẩm\";s:9:\"pwb-brand\";s:15:\"Thương hiệu\";s:12:\"pa_loai-vang\";s:11:\"Loại vang\";s:12:\"pa_giong-nho\";s:11:\"Giống nho\";s:10:\"pa_xuat-xu\";s:11:\"Xuất xứ\";s:10:\"pa_nien-vu\";s:10:\"Niên vụ\";s:14:\"pa_thoi-gian-u\";s:15:\"Thời gian ủ\";s:12:\"pa_dong-chai\";s:11:\"Đóng chai\";s:12:\"pa_dung-tich\";s:10:\"Dung tích\";s:10:\"pa_nong-do\";s:12:\"Nồng độ\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:12:{s:11:\"product_cat\";s:0:\"\";s:9:\"pwb-brand\";s:0:\"\";s:12:\"pa_loai-vang\";s:0:\"\";s:12:\"pa_giong-nho\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";s:10:\"pa_nien-vu\";s:0:\"\";s:14:\"pa_thoi-gian-u\";s:0:\"\";s:12:\"pa_dong-chai\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:10:\"pa_nong-do\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:3:\"tax\";a:10:{s:11:\"product_cat\";s:1:\"1\";s:9:\"pwb-brand\";s:1:\"1\";s:12:\"pa_loai-vang\";s:1:\"1\";s:12:\"pa_giong-nho\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";s:10:\"pa_nien-vu\";s:1:\"1\";s:14:\"pa_thoi-gian-u\";s:1:\"1\";s:12:\"pa_dong-chai\";s:1:\"1\";s:12:\"pa_dung-tich\";s:1:\"1\";s:10:\"pa_nong-do\";s:1:\"1\";}s:11:\"icheck_skin\";s:9:\"flat_grey\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:21:\"woof_auto_hide_button\";s:1:\"0\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:12:\"init_only_on\";s:0:\"\";s:17:\"swoof_search_slug\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:14:\"non_latin_mode\";s:1:\"1\";s:17:\"optimize_js_files\";s:1:\"0\";s:20:\"hide_terms_count_txt\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:20:\"activated_extensions\";s:0:\"\";}","yes"),
("1185","woof_version","2.1.7","yes");
INSERT INTO bz_options VALUES
("1186","woof_woocs_alert","a:1:{s:29:\"woocommerce-currency-switcher\";i:1;}","no"),
("1258","installer_repositories_with_theme","a:1:{i:0;s:7:\"toolset\";}","yes"),
("1261","wc_hash_key","e398b206460f361540b85f983a6b07f0","no"),
("1262","wc_options","s:4429:\"s:4419:\"s:4409:\"s:4399:\"s:4389:\"s:4379:\"s:4369:\"s:4359:\"s:4349:\"s:4339:\"s:4329:\"s:4319:\"s:4309:\"s:4299:\"s:4289:\"s:4279:\"s:4269:\"s:4259:\"s:4249:\"s:4239:\"s:4229:\"s:4219:\"s:4209:\"s:4199:\"s:4189:\"s:4179:\"s:4169:\"s:4159:\"s:4149:\"s:4139:\"s:4129:\"s:4119:\"s:4109:\"s:4099:\"s:4089:\"s:4079:\"s:4069:\"s:4059:\"s:4049:\"s:4039:\"s:4029:\"s:4019:\"s:4009:\"s:3999:\"s:3989:\"s:3979:\"s:3969:\"s:3959:\"s:3949:\"s:3939:\"a:100:{s:14:\"isEnableOnHome\";i:0;s:13:\"wc_quick_tags\";i:0;s:27:\"wc_comment_list_update_type\";s:1:\"0\";s:28:\"wc_comment_list_update_timer\";s:3:\"600\";s:21:\"wc_live_update_guests\";s:1:\"1\";s:24:\"wc_comment_editable_time\";s:1:\"0\";s:22:\"wpdiscuz_redirect_page\";s:1:\"0\";s:20:\"wc_is_guest_can_vote\";s:1:\"1\";s:24:\"isLoadOnlyParentComments\";s:1:\"1\";s:19:\"commentListLoadType\";s:1:\"2\";s:27:\"wc_voting_buttons_show_hide\";i:0;s:18:\"votingButtonsStyle\";s:1:\"0\";s:17:\"votingButtonsIcon\";s:27:\"fa-thumbs-up|fa-thumbs-down\";s:24:\"wc_header_text_show_hide\";i:0;s:18:\"storeCommenterData\";s:2:\"-1\";s:30:\"wc_show_hide_loggedin_username\";i:0;s:22:\"hideLoginLinkForGuests\";s:1:\"1\";s:22:\"hideUserSettingsButton\";s:1:\"1\";s:18:\"hideDiscussionStat\";s:1:\"1\";s:17:\"hideRecentAuthors\";s:1:\"1\";s:19:\"displayAntispamNote\";i:0;s:26:\"wc_author_titles_show_hide\";s:1:\"1\";s:22:\"wc_simple_comment_date\";s:1:\"1\";s:16:\"subscriptionType\";s:1:\"1\";s:27:\"wc_show_hide_reply_checkbox\";s:1:\"1\";s:21:\"isReplyDefaultChecked\";i:0;s:20:\"show_sorting_buttons\";i:0;s:18:\"mostVotedByDefault\";s:1:\"1\";s:41:\"wc_use_postmatic_for_comment_notification\";i:0;s:20:\"wc_comment_text_size\";s:4:\"15px\";s:16:\"wc_form_bg_color\";s:7:\"#F9F9F9\";s:19:\"wc_comment_bg_color\";s:7:\"#FEFEFE\";s:17:\"wc_reply_bg_color\";s:7:\"#F8F8F8\";s:25:\"wc_comment_username_color\";s:7:\"#C9B034\";s:29:\"wc_comment_rating_hover_color\";s:7:\"#FFED85\";s:31:\"wc_comment_rating_inactiv_color\";s:7:\"#DDDDDD\";s:29:\"wc_comment_rating_activ_color\";s:7:\"#FFD700\";s:13:\"wc_blog_roles\";a:7:{s:13:\"administrator\";s:7:\"#00B38F\";s:6:\"editor\";s:7:\"#00B38F\";s:6:\"author\";s:7:\"#00B38F\";s:11:\"contributor\";s:7:\"#00B38F\";s:10:\"subscriber\";s:7:\"#00B38F\";s:11:\"post_author\";s:7:\"#00B38F\";s:5:\"guest\";s:7:\"#00B38F\";}s:20:\"wc_link_button_color\";a:6:{s:20:\"primary_button_color\";s:7:\"#FFFFFF\";s:17:\"primary_button_bg\";s:7:\"#555555\";s:22:\"secondary_button_color\";s:7:\"#777777\";s:23:\"secondary_button_border\";s:7:\"#dddddd\";s:18:\"vote_up_link_color\";s:7:\"#999999\";s:20:\"vote_down_link_color\";s:7:\"#999999\";}s:21:\"wc_input_border_color\";s:7:\"#D9D9D9\";s:30:\"wc_new_loaded_comment_bg_color\";s:7:\"#FFFAD6\";s:18:\"disableFontAwesome\";i:0;s:11:\"disableTips\";i:0;s:18:\"disableProfileURLs\";s:1:\"1\";s:19:\"displayRatingOnPost\";a:1:{i:0;s:5:\"after\";}s:23:\"ratingCssOnNoneSingular\";i:0;s:13:\"wc_custom_css\";s:27:\".comments-area{width:auto;}\";s:25:\"wc_show_plugin_powerid_by\";i:0;s:15:\"wc_is_use_po_mo\";s:1:\"1\";s:25:\"wc_disable_member_confirm\";s:1:\"1\";s:20:\"disableGuestsConfirm\";s:1:\"1\";s:26:\"wc_comment_text_min_length\";i:1;s:26:\"wc_comment_text_max_length\";s:0:\"\";s:17:\"commentWordsLimit\";i:100;s:19:\"showHideCommentLink\";s:1:\"1\";s:15:\"hideCommentDate\";s:1:\"1\";s:21:\"enableImageConversion\";i:0;s:17:\"commentLinkFilter\";i:1;s:18:\"isCaptchaInSession\";s:1:\"1\";s:13:\"isUserByEmail\";s:1:\"1\";s:22:\"commenterNameMinLength\";s:1:\"3\";s:22:\"commenterNameMaxLength\";s:2:\"50\";s:24:\"isNotifyOnCommentApprove\";s:1:\"1\";s:22:\"isGravatarCacheEnabled\";s:1:\"1\";s:19:\"gravatarCacheMethod\";s:7:\"cronjob\";s:20:\"gravatarCacheTimeout\";s:2:\"10\";s:5:\"theme\";s:11:\"wpd-default\";s:15:\"reverseChildren\";i:0;s:11:\"antispamKey\";s:0:\"\";s:28:\"socialLoginAgreementCheckbox\";i:0;s:26:\"socialLoginInSecondaryForm\";i:0;s:13:\"enableFbLogin\";i:0;s:13:\"enableFbShare\";i:0;s:7:\"fbAppID\";s:0:\"\";s:11:\"fbAppSecret\";s:0:\"\";s:11:\"fbUseOAuth2\";i:0;s:18:\"enableTwitterLogin\";i:0;s:18:\"enableTwitterShare\";i:0;s:12:\"twitterAppID\";s:0:\"\";s:16:\"twitterAppSecret\";s:0:\"\";s:17:\"enableGoogleLogin\";i:0;s:17:\"enableGoogleShare\";i:0;s:11:\"googleAppID\";s:0:\"\";s:13:\"enableOkLogin\";i:0;s:13:\"enableOkShare\";i:0;s:7:\"okAppID\";s:0:\"\";s:8:\"okAppKey\";s:0:\"\";s:11:\"okAppSecret\";s:0:\"\";s:13:\"enableVkLogin\";i:0;s:13:\"enableVkShare\";i:0;s:7:\"vkAppID\";s:0:\"\";s:11:\"vkAppSecret\";s:0:\"\";s:14:\"isFollowActive\";i:1;s:28:\"disableFollowConfirmForUsers\";i:1;s:17:\"enableStickButton\";i:0;s:17:\"enableCloseButton\";i:0;s:19:\"enableDropAnimation\";i:0;s:19:\"isNativeAjaxEnabled\";i:1;s:21:\"enableLastVisitCookie\";i:1;s:21:\"isLoadScriptsInFooter\";i:1;}\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";\";","yes"),
("1263","wpdiscuz_form_content_type_rel","a:3:{s:4:\"post\";a:1:{s:2:\"vi\";i:505;}s:10:\"attachment\";a:1:{s:2:\"vi\";i:505;}s:4:\"page\";a:1:{s:2:\"vi\";i:505;}}","yes"),
("1264","wc_plugin_version","5.3.2","yes"),
("1306","category_children","a:0:{}","yes"),
("1334","menu_icons_install","1551411579","yes"),
("1338","menu-icons","a:2:{s:6:\"global\";a:1:{s:10:\"icon_types\";a:1:{i:0;s:5:\"image\";}}s:6:\"menu_3\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}}","yes"),
("1558","duplicator_pro_package_active","{\"Created\":\"2019-03-01 04:36:42\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.9\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.33\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190301_mauwebbanruouninhbinhweb\",\"Hash\":\"3f3c557f176dab1b9209_20190301043642\",\"NameHash\":\"20190301_mauwebbanruouninhbinhweb_3f3c557f176dab1b9209_20190301043642\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/shopruou\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190301_mauwebbanruouninhbinhweb_3f3c557f176dab1b9209_20190301043642_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\",\"Size\":120657895,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/shopruou\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_general_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web61\",\"tablesBaseCount\":36,\"tablesFinalCount\":36,\"tablesRowCount\":1680,\"tablesSizeOnDisk\":4325376,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1563","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1596","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:9;s:3:\"all\";i:9;s:8:\"approved\";s:1:\"9\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1597","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"9\";s:14:\"total_comments\";i:9;s:3:\"all\";i:9;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1598","themeisle_sdk_active_notification","a:2:{s:3:\"key\";s:30:\"menu_iconsThemeIsle_SDK_Logger\";s:4:\"time\";i:1556963598;}","yes"),
("1722","db_upgraded","","yes"),
("1737","can_compress_scripts","0","no"),
("1744","dbprefix_old_dbprefix","sr_","yes"),
("1745","dbprefix_new","bz_","yes"),
("1791","_transient_timeout_wc_low_stock_count","1559620670","no"),
("1792","_transient_wc_low_stock_count","0","no"),
("1793","_transient_timeout_wc_outofstock_count","1559620670","no"),
("1794","_transient_wc_outofstock_count","0","no"),
("1825","_transient_timeout_wc_term_counts","1560137465","no"),
("1826","_transient_wc_term_counts","a:12:{i:17;s:1:\"8\";i:19;s:0:\"\";i:21;s:0:\"\";i:23;s:0:\"\";i:22;s:0:\"\";i:20;s:0:\"\";i:18;s:0:\"\";i:28;s:1:\"1\";i:25;s:1:\"4\";i:26;s:1:\"3\";i:27;s:1:\"3\";i:24;s:1:\"1\";}","no"),
("1864","_transient_shipping-transient-version","1557133637","yes"),
("1869","_transient_timeout_wc_shipping_method_count_1_1557133637","1559730410","no"),
("1870","_transient_wc_shipping_method_count_1_1557133637","0","no"),
("1891","recovery_keys","a:0:{}","yes"),
("1992","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1995","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1996","woocommerce_show_marketplace_suggestions","yes","no"),
("1997","woocommerce_version","3.6.2","yes"),
("1999","_transient_wc_attribute_taxonomies","a:8:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"8\";s:14:\"attribute_name\";s:9:\"dong-chai\";s:15:\"attribute_label\";s:11:\"Đóng chai\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:9:\"dung-tich\";s:15:\"attribute_label\";s:10:\"Dung tích\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"5\";s:14:\"attribute_name\";s:9:\"giong-nho\";s:15:\"attribute_label\";s:11:\"Giống nho\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:9:\"loai-vang\";s:15:\"attribute_label\";s:11:\"Loại vang\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:4;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"6\";s:14:\"attribute_name\";s:7:\"nien-vu\";s:15:\"attribute_label\";s:10:\"Niên vụ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:5;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:7:\"nong-do\";s:15:\"attribute_label\";s:12:\"Nồng độ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:6;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"7\";s:14:\"attribute_name\";s:11:\"thoi-gian-u\";s:15:\"attribute_label\";s:15:\"Thời gian ủ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:7;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:7:\"xuat-xu\";s:15:\"attribute_label\";s:11:\"Xuất xứ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}","yes"),
("2004","_transient_timeout_wc_shipping_method_count_legacy","1560046467","no"),
("2005","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557133637\";s:5:\"value\";i:0;}","no"),
("2099","_transient_timeout_acf_plugin_updates","1558064446","no"),
("2100","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("2104","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558049774;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("2105","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558049778;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:9:\"shop-ruou\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("2120","_site_transient_timeout_theme_roots","1558051577","no"),
("2121","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:9:\"shop-ruou\";s:7:\"/themes\";}","no"),
("2122","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558049779;s:7:\"checked\";a:8:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:25:\"menu-icons/menu-icons.php\";s:6:\"0.11.4\";s:35:\"perfect-woocommerce-brands/main.php\";s:5:\"1.7.6\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:37:\"woocommerce-products-filter/index.php\";s:5:\"2.1.7\";s:31:\"wpdiscuz/class.WpdiscuzCore.php\";s:5:\"5.3.2\";}s:8:\"response\";a:2:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:25:\"menu-icons/menu-icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-icons\";s:4:\"slug\";s:10:\"menu-icons\";s:6:\"plugin\";s:25:\"menu-icons/menu-icons.php\";s:11:\"new_version\";s:6:\"0.11.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-icons/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/menu-icons.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/menu-icons/assets/icon-128x128.png?rev=1797515\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/menu-icons/assets/banner-772x250.png?rev=1797515\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"perfect-woocommerce-brands/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/perfect-woocommerce-brands\";s:4:\"slug\";s:26:\"perfect-woocommerce-brands\";s:6:\"plugin\";s:35:\"perfect-woocommerce-brands/main.php\";s:11:\"new_version\";s:5:\"1.7.6\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/perfect-woocommerce-brands/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/perfect-woocommerce-brands.1.7.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/perfect-woocommerce-brands/assets/icon-128x128.png?rev=1838232\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/perfect-woocommerce-brands/assets/banner-772x250.png?rev=2029384\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"woocommerce-products-filter/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-filter\";s:4:\"slug\";s:27:\"woocommerce-products-filter\";s:6:\"plugin\";s:37:\"woocommerce-products-filter/index.php\";s:11:\"new_version\";s:7:\"1.2.2.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-filter/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-128x128.png?rev=1208072\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=2071519\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wpdiscuz/class.WpdiscuzCore.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/wpdiscuz\";s:4:\"slug\";s:8:\"wpdiscuz\";s:6:\"plugin\";s:31:\"wpdiscuz/class.WpdiscuzCore.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wpdiscuz/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wpdiscuz.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wpdiscuz/assets/icon-256x256.png?rev=1076265\";s:2:\"1x\";s:61:\"https://ps.w.org/wpdiscuz/assets/icon-128x128.png?rev=1076265\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wpdiscuz/assets/banner-1544x500.png?rev=1767022\";s:2:\"1x\";s:63:\"https://ps.w.org/wpdiscuz/assets/banner-772x250.png?rev=1767022\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2130","_transient_timeout_wc_related_185","1558143539","no"),
("2131","_transient_wc_related_185","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=185\";a:7:{i:0;s:3:\"177\";i:1;s:3:\"179\";i:2;s:3:\"181\";i:3;s:3:\"183\";i:4;s:3:\"187\";i:5;s:3:\"189\";i:6;s:3:\"215\";}}","no"),
("2138","_transient_timeout_wc_related_215","1558145176","no"),
("2139","_transient_wc_related_215","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=215\";a:7:{i:0;s:3:\"177\";i:1;s:3:\"179\";i:2;s:3:\"181\";i:3;s:3:\"183\";i:4;s:3:\"185\";i:5;s:3:\"187\";i:6;s:3:\"189\";}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("22","13","_wp_attached_file","2019/02/logo-giuseart.png"),
("23","13","_wp_attachment_metadata","a:5:{s:5:\"width\";i:242;s:6:\"height\";i:71;s:4:\"file\";s:25:\"2019/02/logo-giuseart.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-100x71.png\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x71.png\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("24","14","_wp_attached_file","2019/02/cropped-logo-giuseart.png"),
("25","14","_wp_attachment_context","site-icon"),
("26","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2019/02/cropped-logo-giuseart.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo-giuseart-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("34","19","_wp_attached_file","2019/02/bg-header.png"),
("35","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:215;s:4:\"file\";s:21:\"2019/02/bg-header.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"bg-header-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-header-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-header-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bg-header-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("36","19","_edit_lock","1551176673:1"),
("47","24","_wp_attached_file","2019/02/header-bg.png"),
("48","24","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:215;s:4:\"file\";s:21:\"2019/02/header-bg.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"header-bg-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"header-bg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"header-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"header-bg-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("49","24","_edit_lock","1551176754:1"),
("59","29","_edit_last","1"),
("60","29","_footer","normal"),
("61","29","_wp_page_template","page-blank.php"),
("62","29","_edit_lock","1551177015:1"),
("63","31","_edit_last","1"),
("64","31","_footer","normal"),
("65","31","_wp_page_template","page-right-sidebar.php"),
("66","31","_edit_lock","1551410957:1"),
("67","33","_edit_last","1"),
("68","33","_footer","normal"),
("69","33","_wp_page_template","page-right-sidebar.php"),
("70","33","_edit_lock","1551411081:1"),
("71","35","_edit_last","1"),
("72","35","_footer","normal"),
("73","35","_wp_page_template","page-right-sidebar.php"),
("74","35","_edit_lock","1551411274:1"),
("75","37","_edit_last","1"),
("76","37","_footer","normal"),
("77","37","_wp_page_template","page-right-sidebar.php"),
("78","37","_edit_lock","1551411235:1"),
("79","39","_menu_item_type","post_type"),
("80","39","_menu_item_menu_item_parent","0"),
("81","39","_menu_item_object_id","33"),
("82","39","_menu_item_object","page"),
("83","39","_menu_item_target",""),
("84","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("85","39","_menu_item_xfn",""),
("86","39","_menu_item_url",""),
("88","40","_menu_item_type","post_type"),
("89","40","_menu_item_menu_item_parent","0"),
("90","40","_menu_item_object_id","31"),
("91","40","_menu_item_object","page"),
("92","40","_menu_item_target",""),
("93","40","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("94","40","_menu_item_xfn",""),
("95","40","_menu_item_url",""),
("97","41","_menu_item_type","custom"),
("98","41","_menu_item_menu_item_parent","0"),
("99","41","_menu_item_object_id","41"),
("100","41","_menu_item_object","custom"),
("101","41","_menu_item_target",""),
("102","41","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("103","41","_menu_item_xfn",""),
("104","41","_menu_item_url","#"),
("106","42","_menu_item_type","post_type"),
("107","42","_menu_item_menu_item_parent","41"),
("108","42","_menu_item_object_id","37"),
("109","42","_menu_item_object","page"),
("110","42","_menu_item_target",""),
("111","42","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("112","42","_menu_item_xfn",""),
("113","42","_menu_item_url",""),
("115","43","_menu_item_type","post_type"),
("116","43","_menu_item_menu_item_parent","41"),
("117","43","_menu_item_object_id","35"),
("118","43","_menu_item_object","page"),
("119","43","_menu_item_target",""),
("120","43","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("121","43","_menu_item_xfn",""),
("122","43","_menu_item_url",""),
("124","44","_menu_item_type","post_type"),
("125","44","_menu_item_menu_item_parent","0"),
("126","44","_menu_item_object_id","29"),
("127","44","_menu_item_object","page"),
("128","44","_menu_item_target",""),
("129","44","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("130","44","_menu_item_xfn",""),
("131","44","_menu_item_url",""),
("133","49","_menu_item_type","taxonomy"),
("134","49","_menu_item_menu_item_parent","0"),
("135","49","_menu_item_object_id","17"),
("136","49","_menu_item_object","product_cat"),
("137","49","_menu_item_target",""),
("138","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("139","49","_menu_item_xfn",""),
("140","49","_menu_item_url",""),
("142","50","_menu_item_type","taxonomy"),
("143","50","_menu_item_menu_item_parent","0"),
("144","50","_menu_item_object_id","19"),
("145","50","_menu_item_object","product_cat"),
("146","50","_menu_item_target",""),
("147","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("148","50","_menu_item_xfn",""),
("149","50","_menu_item_url",""),
("151","51","_menu_item_type","taxonomy"),
("152","51","_menu_item_menu_item_parent","0"),
("153","51","_menu_item_object_id","21");
INSERT INTO bz_postmeta VALUES
("154","51","_menu_item_object","product_cat"),
("155","51","_menu_item_target",""),
("156","51","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("157","51","_menu_item_xfn",""),
("158","51","_menu_item_url",""),
("160","52","_menu_item_type","taxonomy"),
("161","52","_menu_item_menu_item_parent","0"),
("162","52","_menu_item_object_id","23"),
("163","52","_menu_item_object","product_cat"),
("164","52","_menu_item_target",""),
("165","52","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("166","52","_menu_item_xfn",""),
("167","52","_menu_item_url",""),
("169","53","_menu_item_type","taxonomy"),
("170","53","_menu_item_menu_item_parent","0"),
("171","53","_menu_item_object_id","22"),
("172","53","_menu_item_object","product_cat"),
("173","53","_menu_item_target",""),
("174","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("175","53","_menu_item_xfn",""),
("176","53","_menu_item_url",""),
("178","54","_menu_item_type","taxonomy"),
("179","54","_menu_item_menu_item_parent","0"),
("180","54","_menu_item_object_id","20"),
("181","54","_menu_item_object","product_cat"),
("182","54","_menu_item_target",""),
("183","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("184","54","_menu_item_xfn",""),
("185","54","_menu_item_url",""),
("187","55","_menu_item_type","taxonomy"),
("188","55","_menu_item_menu_item_parent","0"),
("189","55","_menu_item_object_id","18"),
("190","55","_menu_item_object","product_cat"),
("191","55","_menu_item_target",""),
("192","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("193","55","_menu_item_xfn",""),
("194","55","_menu_item_url",""),
("273","92","_edit_last","1"),
("274","92","_edit_lock","1551189536:1"),
("276","96","_wp_attached_file","2019/02/icon1.jpg"),
("277","96","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:27;s:4:\"file\";s:17:\"2019/02/icon1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("278","97","_wp_attached_file","2019/02/icon2.jpg"),
("279","97","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:27;s:4:\"file\";s:17:\"2019/02/icon2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("280","98","_wp_attached_file","2019/02/icon3.jpg"),
("281","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:27;s:4:\"file\";s:17:\"2019/02/icon3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("282","99","_wp_attached_file","2019/02/icon4.jpg"),
("283","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:27;s:4:\"file\";s:17:\"2019/02/icon4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("286","92","_thumbnail_id",""),
("306","29","_thumbnail_id",""),
("307","126","_wp_attached_file","2019/02/banner2.jpg"),
("308","126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:471;s:6:\"height\";i:226;s:4:\"file\";s:19:\"2019/02/banner2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner2-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner2-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("309","127","_wp_attached_file","2019/02/banner1.jpg"),
("310","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:472;s:6:\"height\";i:471;s:4:\"file\";s:19:\"2019/02/banner1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner1-300x299.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:299;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner1-300x299.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:299;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("311","128","_wp_attached_file","2019/02/banner3.jpg"),
("312","128","_wp_attachment_metadata","a:5:{s:5:\"width\";i:471;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/02/banner3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner3-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner3-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner3-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("321","148","_wp_attached_file","2019/02/0000129.png"),
("322","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:520;s:6:\"height\";i:243;s:4:\"file\";s:19:\"2019/02/0000129.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"0000129-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"0000129-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"0000129-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"0000129-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"0000129-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"0000129-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("328","157","_wp_attached_file","2019/02/0000124.png"),
("329","157","_wp_attachment_metadata","a:5:{s:5:\"width\";i:520;s:6:\"height\";i:243;s:4:\"file\";s:19:\"2019/02/0000124.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"0000124-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"0000124-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"0000124-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"0000124-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"0000124-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"0000124-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("330","162","_wp_attached_file","2019/02/ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43.jpg"),
("331","162","_wp_attachment_metadata","a:5:{s:5:\"width\";i:540;s:6:\"height\";i:405;s:4:\"file\";s:67:\"2019/02/ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:67:\"ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("332","165","_wp_attached_file","2019/02/ruou-mui.jpg"),
("333","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2019/02/ruou-mui.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"ruou-mui-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-mui-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-mui-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-mui-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("334","167","_wp_attached_file","2019/02/RUOU-GIN.jpg"),
("335","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2019/02/RUOU-GIN.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"RUOU-GIN-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"RUOU-GIN-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"RUOU-GIN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"RUOU-GIN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("336","170","_wp_attached_file","2019/02/ruou-fum.jpg"),
("337","170","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:282;s:4:\"file\";s:20:\"2019/02/ruou-fum.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-fum-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ruou-fum-300x282.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"ruou-fum-300x282.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-fum-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"ruou-fum-300x282.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"ruou-fum-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("347","177","_wc_review_count","1"),
("348","177","_wc_rating_count","a:1:{i:4;i:1;}"),
("349","177","_wc_average_rating","4.00"),
("350","177","_edit_last","1"),
("351","177","_edit_lock","1551369745:1"),
("352","178","_wp_attached_file","2019/02/sp1.jpg"),
("353","178","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:602;s:4:\"file\";s:15:\"2019/02/sp1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp1-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp1-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp1-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("354","177","_thumbnail_id","214"),
("355","177","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("356","177","_sku",""),
("357","177","_regular_price","780000"),
("358","177","_sale_price",""),
("359","177","_sale_price_dates_from",""),
("360","177","_sale_price_dates_to",""),
("361","177","total_sales","0"),
("362","177","_tax_status","taxable"),
("363","177","_tax_class",""),
("364","177","_manage_stock","no"),
("365","177","_backorders","no"),
("366","177","_low_stock_amount",""),
("367","177","_sold_individually","no"),
("368","177","_weight",""),
("369","177","_length",""),
("370","177","_width",""),
("371","177","_height",""),
("372","177","_upsell_ids","a:0:{}"),
("373","177","_crosssell_ids","a:0:{}"),
("374","177","_purchase_note",""),
("375","177","_default_attributes","a:0:{}"),
("376","177","_virtual","no"),
("377","177","_downloadable","no"),
("378","177","_product_image_gallery",""),
("379","177","_download_limit","-1");
INSERT INTO bz_postmeta VALUES
("380","177","_download_expiry","-1"),
("381","177","_stock",""),
("382","177","_stock_status","instock"),
("383","177","_product_version","3.5.5"),
("384","177","_price","780000"),
("385","179","_wc_review_count","1"),
("386","179","_wc_rating_count","a:1:{i:5;i:1;}"),
("387","179","_wc_average_rating","5.00"),
("388","179","_edit_last","1"),
("389","179","_edit_lock","1551372614:1"),
("390","180","_wp_attached_file","2019/02/sp2.jpg"),
("391","180","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:601;s:4:\"file\";s:15:\"2019/02/sp2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp2-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp2-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("392","179","_thumbnail_id","213"),
("393","179","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("394","179","_sku",""),
("395","179","_regular_price","330000"),
("396","179","_sale_price",""),
("397","179","_sale_price_dates_from",""),
("398","179","_sale_price_dates_to",""),
("399","179","total_sales","0"),
("400","179","_tax_status","taxable"),
("401","179","_tax_class",""),
("402","179","_manage_stock","no"),
("403","179","_backorders","no"),
("404","179","_low_stock_amount",""),
("405","179","_sold_individually","no"),
("406","179","_weight",""),
("407","179","_length",""),
("408","179","_width",""),
("409","179","_height",""),
("410","179","_upsell_ids","a:0:{}"),
("411","179","_crosssell_ids","a:0:{}"),
("412","179","_purchase_note",""),
("413","179","_default_attributes","a:0:{}"),
("414","179","_virtual","no"),
("415","179","_downloadable","no"),
("416","179","_product_image_gallery",""),
("417","179","_download_limit","-1"),
("418","179","_download_expiry","-1"),
("419","179","_stock",""),
("420","179","_stock_status","instock"),
("421","179","_product_version","3.5.5"),
("422","179","_price","330000"),
("423","181","_wc_review_count","1"),
("424","181","_wc_rating_count","a:1:{i:5;i:1;}"),
("425","181","_wc_average_rating","5.00"),
("426","181","_edit_last","1"),
("427","181","_edit_lock","1551381918:1"),
("428","182","_wp_attached_file","2019/02/sp3.jpg"),
("429","182","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:602;s:4:\"file\";s:15:\"2019/02/sp3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp3-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp3-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp3-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("430","181","_thumbnail_id","212"),
("431","181","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("432","181","_sku",""),
("433","181","_regular_price","370000"),
("434","181","_sale_price",""),
("435","181","_sale_price_dates_from",""),
("436","181","_sale_price_dates_to",""),
("437","181","total_sales","0"),
("438","181","_tax_status","taxable"),
("439","181","_tax_class",""),
("440","181","_manage_stock","no"),
("441","181","_backorders","no"),
("442","181","_low_stock_amount",""),
("443","181","_sold_individually","no"),
("444","181","_weight",""),
("445","181","_length",""),
("446","181","_width",""),
("447","181","_height",""),
("448","181","_upsell_ids","a:0:{}"),
("449","181","_crosssell_ids","a:0:{}"),
("450","181","_purchase_note",""),
("451","181","_default_attributes","a:0:{}"),
("452","181","_virtual","no"),
("453","181","_downloadable","no"),
("454","181","_product_image_gallery",""),
("455","181","_download_limit","-1"),
("456","181","_download_expiry","-1"),
("457","181","_stock",""),
("458","181","_stock_status","instock"),
("459","181","_product_version","3.5.5"),
("460","181","_price","370000"),
("461","183","_wc_review_count","1"),
("462","183","_wc_rating_count","a:1:{i:5;i:1;}"),
("463","183","_wc_average_rating","5.00"),
("464","183","_edit_last","1"),
("465","183","_edit_lock","1551369495:1"),
("466","184","_wp_attached_file","2019/02/sp4.jpg"),
("467","184","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:602;s:4:\"file\";s:15:\"2019/02/sp4.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp4-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp4-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp4-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("468","183","_thumbnail_id","211"),
("469","183","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("470","183","_sku",""),
("471","183","_regular_price","1200000"),
("472","183","_sale_price",""),
("473","183","_sale_price_dates_from",""),
("474","183","_sale_price_dates_to",""),
("475","183","total_sales","0"),
("476","183","_tax_status","taxable"),
("477","183","_tax_class",""),
("478","183","_manage_stock","no"),
("479","183","_backorders","no");
INSERT INTO bz_postmeta VALUES
("480","183","_low_stock_amount",""),
("481","183","_sold_individually","no"),
("482","183","_weight",""),
("483","183","_length",""),
("484","183","_width",""),
("485","183","_height",""),
("486","183","_upsell_ids","a:0:{}"),
("487","183","_crosssell_ids","a:0:{}"),
("488","183","_purchase_note",""),
("489","183","_default_attributes","a:0:{}"),
("490","183","_virtual","no"),
("491","183","_downloadable","no"),
("492","183","_product_image_gallery",""),
("493","183","_download_limit","-1"),
("494","183","_download_expiry","-1"),
("495","183","_stock",""),
("496","183","_stock_status","instock"),
("497","183","_product_version","3.5.5"),
("498","183","_price","1200000"),
("499","185","_wc_review_count","1"),
("500","185","_wc_rating_count","a:1:{i:4;i:1;}"),
("501","185","_wc_average_rating","4.00"),
("502","185","_edit_last","1"),
("503","185","_edit_lock","1551379335:1"),
("504","186","_wp_attached_file","2019/02/sp5.jpg"),
("505","186","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:602;s:4:\"file\";s:15:\"2019/02/sp5.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp5-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp5-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp5-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("506","185","_thumbnail_id","209"),
("507","185","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("508","185","_sku",""),
("509","185","_regular_price","530000"),
("510","185","_sale_price",""),
("511","185","_sale_price_dates_from",""),
("512","185","_sale_price_dates_to",""),
("513","185","total_sales","0"),
("514","185","_tax_status","taxable"),
("515","185","_tax_class",""),
("516","185","_manage_stock","no"),
("517","185","_backorders","no"),
("518","185","_low_stock_amount",""),
("519","185","_sold_individually","no"),
("520","185","_weight",""),
("521","185","_length",""),
("522","185","_width",""),
("523","185","_height",""),
("524","185","_upsell_ids","a:0:{}"),
("525","185","_crosssell_ids","a:0:{}"),
("526","185","_purchase_note",""),
("527","185","_default_attributes","a:0:{}"),
("528","185","_virtual","no"),
("529","185","_downloadable","no"),
("530","185","_product_image_gallery",""),
("531","185","_download_limit","-1"),
("532","185","_download_expiry","-1"),
("533","185","_stock",""),
("534","185","_stock_status","instock"),
("535","185","_product_version","3.5.5"),
("536","185","_price","530000"),
("537","187","_wc_review_count","1"),
("538","187","_wc_rating_count","a:1:{i:5;i:1;}"),
("539","187","_wc_average_rating","5.00"),
("540","187","_edit_last","1"),
("541","187","_edit_lock","1551369330:1"),
("545","187","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("546","187","_sku",""),
("547","187","_regular_price","1600000"),
("548","187","_sale_price",""),
("549","187","_sale_price_dates_from",""),
("550","187","_sale_price_dates_to",""),
("551","187","total_sales","0"),
("552","187","_tax_status","taxable"),
("553","187","_tax_class",""),
("554","187","_manage_stock","no"),
("555","187","_backorders","no"),
("556","187","_low_stock_amount",""),
("557","187","_sold_individually","no"),
("558","187","_weight",""),
("559","187","_length",""),
("560","187","_width",""),
("561","187","_height",""),
("562","187","_upsell_ids","a:0:{}"),
("563","187","_crosssell_ids","a:0:{}"),
("564","187","_purchase_note",""),
("565","187","_default_attributes","a:0:{}"),
("566","187","_virtual","no"),
("567","187","_downloadable","no"),
("568","187","_product_image_gallery",""),
("569","187","_download_limit","-1"),
("570","187","_download_expiry","-1"),
("571","187","_stock",""),
("572","187","_stock_status","instock"),
("573","187","_product_version","3.5.5"),
("574","187","_price","1600000"),
("575","189","_wc_review_count","1"),
("576","189","_wc_rating_count","a:1:{i:5;i:1;}"),
("577","189","_wc_average_rating","5.00"),
("578","189","_edit_last","1"),
("579","189","_edit_lock","1551381874:1"),
("583","189","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("584","189","_sku",""),
("585","189","_regular_price","260000");
INSERT INTO bz_postmeta VALUES
("586","189","_sale_price",""),
("587","189","_sale_price_dates_from",""),
("588","189","_sale_price_dates_to",""),
("589","189","total_sales","0"),
("590","189","_tax_status","taxable"),
("591","189","_tax_class",""),
("592","189","_manage_stock","no"),
("593","189","_backorders","no"),
("594","189","_low_stock_amount",""),
("595","189","_sold_individually","no"),
("596","189","_weight",""),
("597","189","_length",""),
("598","189","_width",""),
("599","189","_height",""),
("600","189","_upsell_ids","a:0:{}"),
("601","189","_crosssell_ids","a:0:{}"),
("602","189","_purchase_note",""),
("603","189","_default_attributes","a:0:{}"),
("604","189","_virtual","no"),
("605","189","_downloadable","no"),
("606","189","_product_image_gallery",""),
("607","189","_download_limit","-1"),
("608","189","_download_expiry","-1"),
("609","189","_stock",""),
("610","189","_stock_status","instock"),
("611","189","_product_version","3.5.5"),
("612","189","_price","260000"),
("632","207","_wp_attached_file","2019/02/sp8-1.jpg"),
("633","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:598;s:4:\"file\";s:17:\"2019/02/sp8-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp8-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp8-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp8-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp8-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp8-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp8-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp8-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("634","189","_thumbnail_id","207"),
("635","208","_wp_attached_file","2019/02/sp6-1.jpg"),
("636","208","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:598;s:4:\"file\";s:17:\"2019/02/sp6-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp6-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp6-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp6-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp6-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp6-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp6-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("637","187","_thumbnail_id","208"),
("638","209","_wp_attached_file","2019/02/sp5-1.jpg"),
("639","209","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2019/02/sp5-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp5-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp5-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp5-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp5-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("640","211","_wp_attached_file","2019/02/sp4-1.jpg"),
("641","211","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2019/02/sp4-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp4-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp4-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp4-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp4-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("642","212","_wp_attached_file","2019/02/sp3-1.jpg"),
("643","212","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2019/02/sp3-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp3-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp3-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp3-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp3-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("644","213","_wp_attached_file","2019/02/sp2-1.jpg"),
("645","213","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2019/02/sp2-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp2-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp2-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp2-1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp2-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("646","214","_wp_attached_file","2019/02/sp1-1.jpg"),
("647","214","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2019/02/sp1-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"sp1-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sp1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sp1-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"sp1-1-300x401.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"sp1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:17:\"sp1-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("648","215","_wc_review_count","1"),
("649","215","_wc_rating_count","a:1:{i:5;i:1;}"),
("650","215","_wc_average_rating","5.00"),
("651","215","_edit_last","1"),
("652","215","_edit_lock","1551381774:1"),
("653","216","_wp_attached_file","2019/02/23.jpg"),
("654","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:601;s:4:\"file\";s:14:\"2019/02/23.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"23-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"23-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"23-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"23-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"23-300x402.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"23-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:14:\"23-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("655","215","_thumbnail_id","216"),
("656","215","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("657","215","_sku",""),
("658","215","_regular_price","1550000"),
("659","215","_sale_price",""),
("660","215","_sale_price_dates_from",""),
("661","215","_sale_price_dates_to",""),
("662","215","total_sales","0"),
("663","215","_tax_status","taxable"),
("664","215","_tax_class",""),
("665","215","_manage_stock","no"),
("666","215","_backorders","no"),
("667","215","_low_stock_amount",""),
("668","215","_sold_individually","no"),
("669","215","_weight",""),
("670","215","_length",""),
("671","215","_width",""),
("672","215","_height",""),
("673","215","_upsell_ids","a:0:{}"),
("674","215","_crosssell_ids","a:0:{}"),
("675","215","_purchase_note",""),
("676","215","_default_attributes","a:0:{}"),
("677","215","_virtual","no"),
("678","215","_downloadable","no"),
("679","215","_product_image_gallery",""),
("680","215","_download_limit","-1"),
("681","215","_download_expiry","-1"),
("682","215","_stock",""),
("683","215","_stock_status","instock"),
("684","215","_product_version","3.5.5"),
("685","215","_price","1550000"),
("686","225","_wp_attached_file","2019/02/bg2.jpg"),
("687","225","_wp_attachment_metadata","a:5:{s:5:\"width\";i:609;s:6:\"height\";i:283;s:4:\"file\";s:15:\"2019/02/bg2.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"bg2-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg2-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x279.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"bg2-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x279.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("688","226","_wp_attached_file","2019/02/bg3.jpg"),
("689","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:609;s:6:\"height\";i:283;s:4:\"file\";s:15:\"2019/02/bg3.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"bg3-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg3-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"bg3-600x279.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"bg3-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"bg3-600x279.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("714","250","_edit_last","1"),
("715","250","_edit_lock","1551197040:1"),
("745","250","_thumbnail_id",""),
("768","294","_wp_attached_file","2019/02/ELDERTON.jpg"),
("769","294","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:20:\"2019/02/ELDERTON.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"ELDERTON-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"ELDERTON-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("770","295","_wp_attached_file","2019/02/GEORGE-WYNDHAM.jpg"),
("771","295","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:26:\"2019/02/GEORGE-WYNDHAM.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"GEORGE-WYNDHAM-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"GEORGE-WYNDHAM-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("772","296","_edit_last","1"),
("773","296","_edit_lock","1551381366:1"),
("774","187","loai_vang","Champagne"),
("775","187","_loai_vang","field_5c78028269373"),
("776","187","xuat_xu","Pháp"),
("777","187","_xuat_xu","field_5c7802a669374"),
("778","187","nien_vu","2014"),
("779","187","_nien_vu","field_5c7802ce69375");
INSERT INTO bz_postmeta VALUES
("780","187","dong_chai","Nút bần"),
("781","187","_dong_chai","field_5c7802f069376"),
("782","187","dung_tich","750ml"),
("783","187","_dung_tich","field_5c78030969377"),
("784","187","nong_do","12%"),
("785","187","_nong_do","field_5c78032369378"),
("786","187","giong_nho","Nho Mỹ"),
("787","187","_giong_nho","field_5c78035369379"),
("788","187","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang.Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở:  15 phút trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Phối cùng với thức ăn thịt bò, cừu nướng.</p>"),
("789","187","_thuong_thuc","field_5c7803846937b"),
("790","187","luu_y","<p class=\"fr-tag\"><strong>Rượu Vang Úc George Wyndham Bin 888 </strong>được phối trộn từ 2 giống nho đó là Cabernet Sauvignon với Merlot có màu đỏ đậm ánh sắc tím với hương thơm của các loại quả tươi như mâm xôi, quả mận và hương vani của gỗ sồi.</p>\n<p class=\"fr-tag\">Hương vị của dòng vang này là sự kết hợp nhuần nhuyễn của chất chát đậm của giống nho Cabernet Sauvignon với hương thơm của việt quất cùng vị chát mịn và hương thơm của mận tây nho Merlot. Đây là dòng vang mạnh mẽ, đậm đà và phức hợp từ hai giống nho cổ điển.</p>\n<p class=\"fr-tag\">Rượu vang Úc Bin 888 được ủ 12 tháng trong thùng gỗ sồi Pháp.</p>\n<p class=\"fr-tag\">Tham khảo thêm: http://www.georgewyndham.com</p>"),
("791","187","_luu_y","field_5c7803c76937c"),
("792","187","thoi_gian_u","90 năm"),
("793","187","_thoi_gian_u","field_5c780471769bb"),
("794","215","loai_vang","Vang đỏ"),
("795","215","_loai_vang","field_5c78028269373"),
("796","215","xuat_xu","Mỹ"),
("797","215","_xuat_xu","field_5c7802a669374"),
("798","215","nien_vu","2016"),
("799","215","_nien_vu","field_5c7802ce69375"),
("800","215","dong_chai","Nút bần"),
("801","215","_dong_chai","field_5c7802f069376"),
("802","215","dung_tich","1500ml"),
("803","215","_dung_tich","field_5c78030969377"),
("804","215","nong_do","25%"),
("805","215","_nong_do","field_5c78032369378"),
("806","215","giong_nho","Nho Ninh Thuận"),
("807","215","_giong_nho","field_5c78035369379"),
("808","215","thoi_gian_u","20 năm"),
("809","215","_thoi_gian_u","field_5c780471769bb"),
("810","215","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Các món thịt như bò, cừu, sườn heo, vịt, gà, phô mai...</p>"),
("811","215","_thuong_thuc","field_5c7803846937b"),
("812","215","luu_y","<p class=\"fr-tag\"><strong>Rượu Vang Úc </strong><strong>George Wyndham Bin</strong><strong>Bin 989 Shiraz Cabernet, </strong>được phối từ giống nho nổi tiếng nước Úc Shiraz với Cabernet Sauvignon.</p>\n<p class=\"fr-tag\">Từ khi Goerge Wyndham trồng vườn nho Shiraz thương phẩm đầu tiên của Úc năm 1830, chúng tôi đã tận tâm chế biến những loại rượu vang mạnh. Những loại rượu vang làm phấn chấn người thưởng thức bằng cách kích thích các giác quan và làm dậy lên mùi hương tươi mát.</p>"),
("813","215","_luu_y","field_5c7803c76937c"),
("814","189","loai_vang","Vang đỏ"),
("815","189","_loai_vang","field_5c78028269373"),
("816","189","xuat_xu","Hà Lan"),
("817","189","_xuat_xu","field_5c7802a669374"),
("818","189","nien_vu","2005"),
("819","189","_nien_vu","field_5c7802ce69375"),
("820","189","dong_chai","Nút bần"),
("821","189","_dong_chai","field_5c7802f069376"),
("822","189","dung_tich","1000ml"),
("823","189","_dung_tich","field_5c78030969377"),
("824","189","nong_do","15%"),
("825","189","_nong_do","field_5c78032369378"),
("826","189","giong_nho","Nho Mỹ"),
("827","189","_giong_nho","field_5c78035369379"),
("828","189","thoi_gian_u","90 năm"),
("829","189","_thoi_gian_u","field_5c780471769bb"),
("830","189","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Các món thịt như bò, cừu, sườn heo, vịt, gà, phô mai...</p>"),
("831","189","_thuong_thuc","field_5c7803846937b"),
("832","189","luu_y","Bảo quản rượu ở nhiệt độ ~37độC. Không dùng cho trẻ em và phụ nữ có thai hoặc đang cho con bú."),
("833","189","_luu_y","field_5c7803c76937c"),
("834","183","loai_vang","Vang đỏ"),
("835","183","_loai_vang","field_5c78028269373"),
("836","183","xuat_xu","Hà Lan"),
("837","183","_xuat_xu","field_5c7802a669374"),
("838","183","nien_vu","2016"),
("839","183","_nien_vu","field_5c7802ce69375"),
("840","183","dong_chai","Nút bần"),
("841","183","_dong_chai","field_5c7802f069376"),
("842","183","dung_tich","1500ml"),
("843","183","_dung_tich","field_5c78030969377"),
("844","183","nong_do","25%"),
("845","183","_nong_do","field_5c78032369378"),
("846","183","giong_nho","Nho Ninh Thuận"),
("847","183","_giong_nho","field_5c78035369379"),
("848","183","thoi_gian_u","20 năm"),
("849","183","_thoi_gian_u","field_5c780471769bb"),
("850","183","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Các món thịt như bò, cừu, sườn heo, vịt, gà, phô mai...</p>"),
("851","183","_thuong_thuc","field_5c7803846937b"),
("852","183","luu_y",""),
("853","183","_luu_y","field_5c7803c76937c"),
("854","181","loai_vang","Champagne"),
("855","181","_loai_vang","field_5c78028269373"),
("856","181","xuat_xu","Pháp"),
("857","181","_xuat_xu","field_5c7802a669374"),
("858","181","nien_vu","2005"),
("859","181","_nien_vu","field_5c7802ce69375"),
("860","181","dong_chai","Nút bần"),
("861","181","_dong_chai","field_5c7802f069376"),
("862","181","dung_tich","1500ml"),
("863","181","_dung_tich","field_5c78030969377"),
("864","181","nong_do","12%"),
("865","181","_nong_do","field_5c78032369378"),
("866","181","giong_nho","Nho Ninh Thuận"),
("867","181","_giong_nho","field_5c78035369379"),
("868","181","thoi_gian_u","20 năm"),
("869","181","_thoi_gian_u","field_5c780471769bb"),
("870","181","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Các món thịt như bò, cừu, sườn heo, vịt, gà, phô mai...</p>"),
("871","181","_thuong_thuc","field_5c7803846937b"),
("872","181","luu_y","<p class=\"fr-tag\"><strong>Rượu Vang Úc </strong><strong>George Wyndham Bin</strong><strong>Bin 989 Shiraz Cabernet, </strong>được phối từ giống nho nổi tiếng nước Úc Shiraz với Cabernet Sauvignon.</p>\n<p class=\"fr-tag\">Từ khi Goerge Wyndham trồng vườn nho Shiraz thương phẩm đầu tiên của Úc năm 1830, chúng tôi đã tận tâm chế biến những loại rượu vang mạnh. Những loại rượu vang làm phấn chấn người thưởng thức bằng cách kích thích các giác quan và làm dậy lên mùi hương tươi mát.</p>"),
("873","181","_luu_y","field_5c7803c76937c"),
("874","177","loai_vang","Vang đỏ"),
("875","177","_loai_vang","field_5c78028269373"),
("876","177","xuat_xu","Hà Lan"),
("877","177","_xuat_xu","field_5c7802a669374"),
("878","177","nien_vu","2005"),
("879","177","_nien_vu","field_5c7802ce69375");
INSERT INTO bz_postmeta VALUES
("880","177","dong_chai","Nút bần"),
("881","177","_dong_chai","field_5c7802f069376"),
("882","177","dung_tich","750ml"),
("883","177","_dung_tich","field_5c78030969377"),
("884","177","nong_do","25%"),
("885","177","_nong_do","field_5c78032369378"),
("886","177","giong_nho","Nho Mỹ"),
("887","177","_giong_nho","field_5c78035369379"),
("888","177","thoi_gian_u","90 năm"),
("889","177","_thoi_gian_u","field_5c780471769bb"),
("890","177","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Các món thịt như bò, cừu, sườn heo, vịt, gà, phô mai...</p>"),
("891","177","_thuong_thuc","field_5c7803846937b"),
("892","177","luu_y",""),
("893","177","_luu_y","field_5c7803c76937c"),
("988","179","loai_vang",""),
("989","179","_loai_vang","field_5c78028269373"),
("990","179","xuat_xu",""),
("991","179","_xuat_xu","field_5c7802a669374"),
("992","179","nien_vu",""),
("993","179","_nien_vu","field_5c7802ce69375"),
("994","179","dong_chai",""),
("995","179","_dong_chai","field_5c7802f069376"),
("996","179","dung_tich",""),
("997","179","_dung_tich","field_5c78030969377"),
("998","179","nong_do",""),
("999","179","_nong_do","field_5c78032369378"),
("1000","179","giong_nho",""),
("1001","179","_giong_nho","field_5c78035369379"),
("1002","179","thoi_gian_u",""),
("1003","179","_thoi_gian_u","field_5c780471769bb"),
("1004","179","thuong_thuc",""),
("1005","179","_thuong_thuc","field_5c7803846937b"),
("1006","179","luu_y",""),
("1007","179","_luu_y","field_5c7803c76937c"),
("1225","185","loai_vang","Vang đỏ"),
("1226","185","_loai_vang","field_5c78028269373"),
("1227","185","xuat_xu","Hà Lan"),
("1228","185","_xuat_xu","field_5c7802a669374"),
("1229","185","nien_vu","2005"),
("1230","185","_nien_vu","field_5c7802ce69375"),
("1231","185","dong_chai","Nút bần"),
("1232","185","_dong_chai","field_5c7802f069376"),
("1233","185","dung_tich","1500ml"),
("1234","185","_dung_tich","field_5c78030969377"),
("1235","185","nong_do","25%"),
("1236","185","_nong_do","field_5c78032369378"),
("1237","185","giong_nho","Nho Ninh Thuận"),
("1238","185","_giong_nho","field_5c78035369379"),
("1239","185","thoi_gian_u","90 năm"),
("1240","185","_thoi_gian_u","field_5c780471769bb"),
("1241","185","thuong_thuc","<p style=\"font-weight: 400;\">Nhiệt độ phục vụ phù hợp sẽ mang lại sự cân bằng trong cấu trúc, hương và vị tuyệt vời cho ly rượu vang. Tại VN, tốt nhất nên làm mát chai rượu vang của bạn trước khi thưởng thức.</p>\n<p style=\"font-weight: 400;\">Nhiệt độ: 15-18<sup>0</sup>C ướp trong xô đá khoảng 10-15 phút, 30 phút trong ngăn mát tủ lạnh.</p>\n<p style=\"font-weight: 400;\">Kiểu ly: Bordeaux Style. Lắc rượu trước khi uống là động tác cần thiết.</p>\n<p style=\"font-weight: 400;\">Decanter/ vang thở: 15 phút trước khi thưởng thức</p>\n<p style=\"font-weight: 400;\">Phối với thức ăn: Gà om, thịt vịt nguội, gà tây hoặc bò cay, thịt cừu non, thịt bê, món hầm, thịt nướng barbecue, thịt hầm tỏi,...</p>"),
("1242","185","_thuong_thuc","field_5c7803846937b"),
("1243","185","luu_y","Rượu vang đỏ Bin 999, nho sau khi thu hoạch (khoảng tháng 3 hàng năm) mang về nhà máy nghiền thành dịch và tiếng hành lên men trong các thùng Inox. Nhiệt độ lên men kiểm soát ở 28<sup>0</sup>C sau đó hạ xuống 19-22<sup>0</sup>C cho hương vị và màu sắc tốt nhất. Sau quá trình lên men rượu được ủ trong thùng gỗ sồi Pháp và Mỹ (6-8 tháng), sau đó đem trộn với nhau và đi đóng chai."),
("1244","185","_luu_y","field_5c7803c76937c"),
("1295","215","_product_attributes","a:4:{s:12:\"pa_dong-chai\";a:6:{s:4:\"name\";s:12:\"pa_dong-chai\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_giong-nho\";a:6:{s:4:\"name\";s:12:\"pa_giong-nho\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_nong-do\";a:6:{s:4:\"name\";s:10:\"pa_nong-do\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("1296","189","_product_attributes","a:6:{s:12:\"pa_dong-chai\";a:6:{s:4:\"name\";s:12:\"pa_dong-chai\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_giong-nho\";a:6:{s:4:\"name\";s:12:\"pa_giong-nho\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_nien-vu\";a:6:{s:4:\"name\";s:10:\"pa_nien-vu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thoi-gian-u\";a:6:{s:4:\"name\";s:14:\"pa_thoi-gian-u\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_loai-vang\";a:6:{s:4:\"name\";s:12:\"pa_loai-vang\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("1297","181","_product_attributes","a:4:{s:14:\"pa_thoi-gian-u\";a:6:{s:4:\"name\";s:14:\"pa_thoi-gian-u\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_giong-nho\";a:6:{s:4:\"name\";s:12:\"pa_giong-nho\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dong-chai\";a:6:{s:4:\"name\";s:12:\"pa_dong-chai\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("1364","505","wpd_form_custom_css",""),
("1365","505","wpdiscuz_form_general_options","a:8:{s:4:\"lang\";s:2:\"vi\";s:20:\"roles_cannot_comment\";a:0:{}s:17:\"guest_can_comment\";i:1;s:21:\"show_subscription_bar\";i:1;s:11:\"header_text\";s:13:\"Leave a Reply\";s:24:\"wpdiscuz_form_post_types\";a:3:{s:4:\"post\";s:4:\"post\";s:10:\"attachment\";s:10:\"attachment\";s:4:\"page\";s:4:\"page\";}s:6:\"postid\";s:0:\"\";s:12:\"postidsArray\";a:0:{}}"),
("1366","505","wpdiscuz_form_structure","a:1:{s:19:\"wpd_form_row_wrap_0\";a:5:{s:11:\"column_type\";s:3:\"two\";s:9:\"row_order\";s:1:\"0\";s:7:\"default\";s:1:\"1\";s:4:\"left\";a:3:{s:7:\"wc_name\";a:5:{s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";s:1:\"1\";}s:8:\"wc_email\";a:5:{s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";s:1:\"1\";}s:10:\"wc_website\";a:5:{s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";s:1:\"1\";}}s:5:\"right\";a:2:{s:10:\"wc_captcha\";a:5:{s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";s:4:\"name\";s:4:\"Code\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";}s:6:\"submit\";a:2:{s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";s:4:\"name\";s:12:\"Post Comment\";}}}}"),
("1367","505","wpdiscuz_form_fields","a:5:{s:7:\"wc_name\";a:5:{s:4:\"type\";s:35:\"wpdFormAttr\\Field\\DefaultField\\Name\";s:4:\"name\";s:4:\"Name\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-user\";s:8:\"required\";s:1:\"1\";}s:8:\"wc_email\";a:5:{s:4:\"type\";s:36:\"wpdFormAttr\\Field\\DefaultField\\Email\";s:4:\"name\";s:5:\"Email\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:9:\"fas fa-at\";s:8:\"required\";s:1:\"1\";}s:10:\"wc_website\";a:5:{s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Website\";s:4:\"name\";s:7:\"Website\";s:4:\"desc\";s:0:\"\";s:4:\"icon\";s:11:\"fas fa-link\";s:6:\"enable\";s:1:\"1\";}s:10:\"wc_captcha\";a:5:{s:4:\"type\";s:38:\"wpdFormAttr\\Field\\DefaultField\\Captcha\";s:4:\"name\";s:4:\"Code\";s:4:\"desc\";s:0:\"\";s:15:\"show_for_guests\";s:1:\"0\";s:14:\"show_for_users\";s:1:\"0\";}s:6:\"submit\";a:2:{s:4:\"type\";s:37:\"wpdFormAttr\\Field\\DefaultField\\Submit\";s:4:\"name\";s:12:\"Post Comment\";}}"),
("1388","1","_edit_lock","1551409112:1"),
("1389","515","_wp_attached_file","2019/02/ruou-6155-1422328295.jpg"),
("1390","515","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:404;s:4:\"file\";s:32:\"2019/02/ruou-6155-1422328295.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"ruou-6155-1422328295-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"ruou-6155-1422328295-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"ruou-6155-1422328295-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"ruou-6155-1422328295-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"ruou-6155-1422328295-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"ruou-6155-1422328295-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1391","1","_edit_last","1"),
("1392","1","_thumbnail_id","515"),
("1395","517","_edit_last","1"),
("1396","517","_edit_lock","1551409154:1"),
("1397","518","_wp_attached_file","2019/03/ruou-vang-sauvignon-blane.jpg"),
("1398","518","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:37:\"2019/03/ruou-vang-sauvignon-blane.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"ruou-vang-sauvignon-blane-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:37:\"©Thomas Skovsende +44 (0)7810 648451\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1399","517","_thumbnail_id","518"),
("1402","520","_edit_last","1"),
("1403","520","_edit_lock","1551410082:1"),
("1404","521","_wp_attached_file","2019/03/138_grande.jpg"),
("1405","521","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:402;s:4:\"file\";s:22:\"2019/03/138_grande.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"138_grande-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"138_grande-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"138_grande-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"138_grande-600x402.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"138_grande-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"138_grande-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"138_grande-600x402.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"138_grande-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1406","520","_thumbnail_id","521"),
("1514","574","_menu_item_type","custom"),
("1515","574","_menu_item_menu_item_parent","49"),
("1516","574","_menu_item_object_id","574"),
("1517","574","_menu_item_object","custom"),
("1518","574","_menu_item_target",""),
("1519","574","_menu_item_classes","a:1:{i:0;s:8:\"menu-cha\";}"),
("1520","574","_menu_item_xfn",""),
("1521","574","_menu_item_url","#"),
("1523","575","_menu_item_type","custom"),
("1524","575","_menu_item_menu_item_parent","574"),
("1525","575","_menu_item_object_id","575"),
("1526","575","_menu_item_object","custom"),
("1527","575","_menu_item_target",""),
("1528","575","_menu_item_classes","a:1:{i:0;s:8:\"menu-cha\";}"),
("1529","575","_menu_item_xfn",""),
("1530","575","_menu_item_url","#"),
("1532","576","_menu_item_type","custom"),
("1533","576","_menu_item_menu_item_parent","574"),
("1534","576","_menu_item_object_id","576"),
("1535","576","_menu_item_object","custom"),
("1536","576","_menu_item_target",""),
("1537","576","_menu_item_classes","a:1:{i:0;s:8:\"menu-cha\";}"),
("1538","576","_menu_item_xfn",""),
("1539","576","_menu_item_url","#");
INSERT INTO bz_postmeta VALUES
("1541","577","_menu_item_type","custom"),
("1542","577","_menu_item_menu_item_parent","574"),
("1543","577","_menu_item_object_id","577"),
("1544","577","_menu_item_object","custom"),
("1545","577","_menu_item_target",""),
("1546","577","_menu_item_classes","a:1:{i:0;s:8:\"menu-cha\";}"),
("1547","577","_menu_item_xfn",""),
("1548","577","_menu_item_url","#"),
("1550","578","_menu_item_type","custom"),
("1551","578","_menu_item_menu_item_parent","574"),
("1552","578","_menu_item_object_id","578"),
("1553","578","_menu_item_object","custom"),
("1554","578","_menu_item_target",""),
("1555","578","_menu_item_classes","a:1:{i:0;s:8:\"menu-cha\";}"),
("1556","578","_menu_item_xfn",""),
("1557","578","_menu_item_url","#"),
("1559","579","_wp_attached_file","2019/03/icon5.jpg"),
("1560","579","_wp_attachment_metadata","a:5:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:17:\"2019/03/icon5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1561","580","_wp_attached_file","2019/03/icon1.jpg"),
("1562","580","_wp_attachment_metadata","a:5:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:17:\"2019/03/icon1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1563","581","_wp_attached_file","2019/03/icon2.jpg"),
("1564","581","_wp_attachment_metadata","a:5:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:17:\"2019/03/icon2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1565","582","_wp_attached_file","2019/03/icon3.jpg"),
("1566","582","_wp_attachment_metadata","a:5:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:17:\"2019/03/icon3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1567","583","_wp_attached_file","2019/03/icon4.jpg"),
("1568","583","_wp_attachment_metadata","a:5:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:17:\"2019/03/icon4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1569","574","menu-icons","a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:3:\"580\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("1570","575","menu-icons","a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:3:\"581\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("1571","576","menu-icons","a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:3:\"582\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("1572","577","menu-icons","a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:3:\"583\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("1573","578","menu-icons","a:8:{s:4:\"type\";s:5:\"image\";s:4:\"icon\";s:3:\"579\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("1574","584","_menu_item_type","custom"),
("1575","584","_menu_item_menu_item_parent","49"),
("1576","584","_menu_item_object_id","584"),
("1577","584","_menu_item_object","custom"),
("1578","584","_menu_item_target",""),
("1579","584","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1580","584","_menu_item_xfn",""),
("1581","584","_menu_item_url","#"),
("1583","585","_menu_item_type","custom"),
("1584","585","_menu_item_menu_item_parent","49"),
("1585","585","_menu_item_object_id","585"),
("1586","585","_menu_item_object","custom"),
("1587","585","_menu_item_target",""),
("1588","585","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1589","585","_menu_item_xfn",""),
("1590","585","_menu_item_url","#"),
("1592","586","_menu_item_type","custom"),
("1593","586","_menu_item_menu_item_parent","49"),
("1594","586","_menu_item_object_id","586"),
("1595","586","_menu_item_object","custom"),
("1596","586","_menu_item_target",""),
("1597","586","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1598","586","_menu_item_xfn",""),
("1599","586","_menu_item_url","#"),
("1601","587","_menu_item_type","custom"),
("1602","587","_menu_item_menu_item_parent","584"),
("1603","587","_menu_item_object_id","587"),
("1604","587","_menu_item_object","custom"),
("1605","587","_menu_item_target",""),
("1606","587","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1607","587","_menu_item_xfn",""),
("1608","587","_menu_item_url","#"),
("1610","588","_menu_item_type","custom"),
("1611","588","_menu_item_menu_item_parent","584"),
("1612","588","_menu_item_object_id","588"),
("1613","588","_menu_item_object","custom"),
("1614","588","_menu_item_target",""),
("1615","588","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1616","588","_menu_item_xfn",""),
("1617","588","_menu_item_url","#"),
("1619","589","_menu_item_type","custom"),
("1620","589","_menu_item_menu_item_parent","584"),
("1621","589","_menu_item_object_id","589"),
("1622","589","_menu_item_object","custom"),
("1623","589","_menu_item_target",""),
("1624","589","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1625","589","_menu_item_xfn",""),
("1626","589","_menu_item_url","#"),
("1628","590","_menu_item_type","custom"),
("1629","590","_menu_item_menu_item_parent","585"),
("1630","590","_menu_item_object_id","590"),
("1631","590","_menu_item_object","custom"),
("1632","590","_menu_item_target",""),
("1633","590","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1634","590","_menu_item_xfn",""),
("1635","590","_menu_item_url","#"),
("1637","591","_menu_item_type","custom"),
("1638","591","_menu_item_menu_item_parent","585"),
("1639","591","_menu_item_object_id","591"),
("1640","591","_menu_item_object","custom"),
("1641","591","_menu_item_target",""),
("1642","591","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1643","591","_menu_item_xfn",""),
("1644","591","_menu_item_url","#"),
("1646","592","_menu_item_type","custom"),
("1647","592","_menu_item_menu_item_parent","585"),
("1648","592","_menu_item_object_id","592"),
("1649","592","_menu_item_object","custom"),
("1650","592","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("1651","592","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1652","592","_menu_item_xfn",""),
("1653","592","_menu_item_url","#"),
("1655","593","_menu_item_type","custom"),
("1656","593","_menu_item_menu_item_parent","586"),
("1657","593","_menu_item_object_id","593"),
("1658","593","_menu_item_object","custom"),
("1659","593","_menu_item_target",""),
("1660","593","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1661","593","_menu_item_xfn",""),
("1662","593","_menu_item_url","#"),
("1664","594","_menu_item_type","custom"),
("1665","594","_menu_item_menu_item_parent","586"),
("1666","594","_menu_item_object_id","594"),
("1667","594","_menu_item_object","custom"),
("1668","594","_menu_item_target",""),
("1669","594","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1670","594","_menu_item_xfn",""),
("1671","594","_menu_item_url","#"),
("1765","639","_menu_item_type","taxonomy"),
("1766","639","_menu_item_menu_item_parent","0"),
("1767","639","_menu_item_object_id","1"),
("1768","639","_menu_item_object","category"),
("1769","639","_menu_item_target",""),
("1770","639","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1771","639","_menu_item_xfn",""),
("1772","639","_menu_item_url",""),
("1793","650","_wp_trash_meta_status","publish"),
("1794","650","_wp_trash_meta_time","1557133874"),
("1795","651","_wp_attached_file","2019/05/shopruou.png"),
("1796","651","_wp_attachment_metadata","a:5:{s:5:\"width\";i:242;s:6:\"height\";i:71;s:4:\"file\";s:20:\"2019/05/shopruou.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"shopruou-150x71.png\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"shopruou-100x71.png\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"shopruou-100x71.png\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1797","652","_wp_trash_meta_status","publish"),
("1798","652","_wp_trash_meta_time","1557138469"),
("1799","653","_wp_attached_file","woocommerce-placeholder.png"),
("1800","653","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-02-25 10:28:00","2019-02-25 10:28:00","<p class=\"Normal\">Rượu vang được xem như \"giai nhân\" của các món ăn Âu khi khiến từng món trở nên đậm đà, tinh tế hơn nó vốn có. Mỗi loại vang lại có cách kết hợp riêng cần phải cân nhắc, nghiên cứu kỹ càng để có được hương vị đạt chuẩn và ăn ý nhất. Ngay cả cách cầm, rót, bảo quản từng chai rượu, vốn là tinh hoa ẩm thực, cũng phải tuân theo những quy tắc nhất định. Phục vụ rượu vang không đúng có thể làm hương vị bị sai lệch và thậm chí làm hỏng cả một bữa tiệc sang trọng.</p>\n<p class=\"Normal\"><em>Trước khi uống:</em></p>\n<p class=\"Normal\">- Với vang trắng và vang hồng: vào mùa hè, nên ngâm lạnh trước khi sử dụng bởi nhiệt độ chuẩn để thưởng thức 2 loại rượu này là khoảng 10 đến 12 độ C. Rót xong lại ngâm vào xô đá.</p>\n<p class=\"Normal\">- Với vang đỏ: nhiệt độ chuẩn cao hơn một chút nên chỉ cần ngâm đá vừa đủ. Nếu để quá lâu có thể làm mùi vị bị hỏng. Ngoài ra, trước khi sử dụng vang đỏ, bạn cần mở chai khoảng 15-30 phút để rượu được \"thở\", nghĩa là tác dụng với oxy, cho bay bớt cồn. Việc này khiến mùi vị của vang đỏ đậm hơn, nồng và chát hơn.</p>\n<p class=\"Normal\"><em>Loại ly sử dụng:</em></p>\n<p class=\"Normal\">Loại ly thích hợp nhất để uống rượu vang là loại ly bầu, có tay cầm và chân cao. Khác với ly champagne là loại cao, thon dài.</p>","Cách sử dụng rượu vang đúng điệu","","publish","open","open","","chao-moi-nguoi","","","2019-03-01 10:00:32","2019-03-01 03:00:32","","0","https://tppone.com/demo/shopruou/?p=1","0","post","","1"),
("2","1","2019-02-25 10:28:00","2019-02-25 10:28:00","Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"https://bizhostvn.com/w/shopruou/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2019-02-25 10:28:00","2019-02-25 10:28:00","","0","https://tppone.com/demo/shopruou/?page_id=2","0","page","","0"),
("3","1","2019-02-25 10:28:00","2019-02-25 10:28:00","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/shopruou.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-02-25 10:28:00","2019-02-25 10:28:00","","0","https://tppone.com/demo/shopruou/?page_id=3","0","page","","0"),
("13","1","2019-02-26 17:20:46","2019-02-26 10:20:46","","logo-giuseart","","inherit","open","closed","","logo-giuseart","","","2019-02-26 17:20:46","2019-02-26 10:20:46","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/logo-giuseart.png","0","attachment","image/png","0"),
("14","1","2019-02-26 17:21:00","2019-02-26 10:21:00","https://bizhostvn.com/w/shopruou/wp-content/uploads/2019/02/cropped-logo-giuseart.png","cropped-logo-giuseart.png","","inherit","open","closed","","cropped-logo-giuseart-png","","","2019-02-26 17:21:00","2019-02-26 10:21:00","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/cropped-logo-giuseart.png","0","attachment","image/png","0"),
("19","1","2019-02-26 17:22:34","2019-02-26 10:22:34","","bg-header","","inherit","open","closed","","bg-header","","","2019-02-26 17:22:34","2019-02-26 10:22:34","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/bg-header.png","0","attachment","image/png","0"),
("24","1","2019-02-26 17:27:01","2019-02-26 10:27:01","","header-bg","","inherit","open","closed","","header-bg","","","2019-02-26 17:27:01","2019-02-26 10:27:01","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/header-bg.png","0","attachment","image/png","0"),
("29","1","2019-02-26 17:30:15","2019-02-26 10:30:15","[section label=\"Banner\" padding=\"20px\" class=\"banner-dau-trang\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"127\" image_size=\"original\" height=\"99.5%\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot2\"]\n\n[ux_image id=\"126\" image_size=\"original\" link=\"#\"]\n\n[ux_image id=\"128\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đề xuất\" padding=\"0px\" class=\"de-xuat\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Đề xuất của chúng tôi\" color=\"rgb(179, 152, 81)\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%; color: #808080;\"><em>Ngoài 2 chuyên mục lớn Vang và Whisky, Quý vị sẽ khám phá nhanh thế giới đồ uống khác tại chuyên mục này chỉ bằng một cú Click.</em></span></p>\n[ux_banner_grid height=\"429\"]\n\n[col_grid span=\"6\" height=\"1-2\"]\n\n[ux_banner bg=\"148\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">RƯỢU COGNAC</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"6\" height=\"1-2\"]\n\n[ux_banner bg=\"157\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">RƯỢU VODKA</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_banner bg=\"162\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">TEQUILA</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_banner bg=\"165\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">RƯỢU MÙI</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_banner bg=\"167\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">RƯỢU GIN</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_banner bg=\"170\" bg_size=\"original\" link=\"#\"]\n\n[text_box text_color=\"dark\" width=\"100\" padding=\"5px 30px 10px 30px\" position_x=\"50\" position_y=\"90\" bg=\"rgba(255, 255, 255, 0)\"]\n\n<p class=\"uppercase\" style=\"text-align: center;\"><span style=\"font-size: 140%; color: #562345;\">RƯỢU RUM</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm nổi bật\" padding=\"0px\" class=\"row-san-pham\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm nổi bật\" color=\"rgb(179, 152, 81)\"]\n\n[gap]\n\n[ux_products style=\"normal\" type=\"row\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Feature\" padding=\"0px\" class=\"de-xuat\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"FEATURE\" color=\"rgb(179, 152, 81)\"]\n\n<p style=\"text-align: center;\"><em><span style=\"font-size: 95%;\">Trải nghiệm thêm những gì chúng tôi sẽ mang lại cho quý vị.</span></em></p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner bg=\"225\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 150%;\">VANG HỮU CƠ, ORGANIC</span></p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"226\" image_size=\"original\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sản phẩm mới nhất\" padding=\"0px\" class=\"row-san-pham\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(179, 152, 81)\"]\n\n[gap]\n\n[ux_products style=\"normal\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" orderby=\"date\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Thông báo\" bg_color=\"rgb(179, 152, 81)\" padding=\"5px\" class=\"thong-bao\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Tại Việt Nam, website chưa có chức năng kinh doanh online và các sản phẩm rượu mạnh quý vị vui lòng gọi điện thoại trực tiếp cho chúng tôi.</span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2019-03-01 11:09:35","2019-03-01 04:09:35","","0","https://tppone.com/demo/shopruou/?page_id=29","0","page","","0"),
("31","1","2019-02-26 17:30:22","2019-02-26 10:30:22","Xin chào bạn – độc giả của Webdemo.com,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\nWebdemo.com được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những bài viết kiến thức hoặc những sản phẩm sáng tạo trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ Thiết kế đồ họa và Thiết kế Website chuyên nghiệp từ đầu năm 2017. Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-03-01 10:31:40","2019-03-01 03:31:40","","0","https://tppone.com/demo/shopruou/?page_id=31","0","page","","0"),
("33","1","2019-02-26 17:30:26","2019-02-26 10:30:26","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Liên hệ","","publish","closed","closed","","lien-he","","","2019-03-01 10:33:43","2019-03-01 03:33:43","","0","https://tppone.com/demo/shopruou/?page_id=33","0","page","","0"),
("35","1","2019-02-26 17:31:02","2019-02-26 10:31:02","<h3><strong>Chính sách bảo mật</strong></h3>\nChính sách bảo mật cho bạn biết chúng tôi sử dụng thông tin cá nhân của bạn thu thập được tại trang web này như thế nào. Xin vui lòng đọc chính sách bảo mật trước khi sử dụng trang web hoặc gửi bất kỳ thông tin cá nhân nào.\n\nKhi sử dụng trang web, bạn đang chấp nhận những điều được mô tả trong chính sách bảo mật. Những điều này có thể thay đổi, nhưng bất kỳ thay đổi nào cũng đều sẽ được đăng lên và thay đổi sẽ chỉ áp dụng cho các hoạt động và thông tin trên cơ sở tịnh tiến, chứ không phải hồi tố. Bạn nên xem lại chính sách bảo mật bất cứ khi nào bạn truy cập trang web để đảm bảo rằng mình hiểu các thông tin cá nhân mà bạn cung cấp sẽ được sử dụng như thế nào. Chính sách của chúng tôi là giữ kín thông tin cá nhân nhận được từ trang web hoàn toàn bí mật và chỉ dùng cho mục đích nội bộ. Chúng tôi sẽ không chia sẻ thông tin cá nhân của bạn với bất kỳ bên nào khác. Hãy yên tâm rằng chúng tôi tôn trọng sự riêng tư của bạn và xử lý dữ liệu cá nhân của bạn với sự cẩn trọng tối đa.\n<h3><strong>Thu thập thông tin cá nhân</strong></h3>\nChúng tôi thu thập các thông tin định danh cá nhân như tên, địa chỉ bưu điện, địa chỉ email, số điện thoại, v.v… khi khách truy cập tự nguyện gửi cho chúng tôi. Thông tin này chỉ được sử dụng để đáp ứng yêu cầu cụ thể của bạn, trừ khi bạn cho phép sử dụng nó theo cách khác, ví dụ thêm bạn vào danh sách gửi email của chúng tôi. Thông tin chúng tôi thu thập có thể bao gồm tên, chức danh, tên công ty hay tổ chức, e-mail, điện thoại và ngày sinh nhật của bạn. Chúng tôi có thể thu thập một số thông tin nhất định về chuyến thăm của bạn, chẳng hạn như loại trình duyệt bạn sử dụng; ngày và thời gian bạn truy cập vào trang web; các trang bạn truy cập khi mở trang web và địa chỉ trang web mà từ đó bạn kết nối trực tiếp đến trang web của chúng tôi. Thông tin này được sử dụng để giúp cải thiện và quản lý trang web.\n<h3><strong>Cookie/ Công nghệ theo dõi</strong></h3>\nTrang web có thể sử dụng cookie và công nghệ theo dõi tùy thuộc vào các tính năng được cung cấp. Cookie và công nghệ theo dõi rất hữu ích cho việc thu thập thông tin như loại trình duyệt và hệ điều hành, theo dõi số lượng khách truy cập vào trang web, và hiểu biết khách truy cập sử dụng trang web như thế nào. Cookie cũng có thể giúp tùy chỉnh trang web cho khách. Không thể thu thập được thông tin cá nhân thông qua cookie và công nghệ theo dõi khác, tuy nhiên, nếu trước đó bạn đã cung cấp thông tin cá nhân định danh, cookie có thể gắn với các thông tin đó. Cookie và thông tin theo dõi thu thập được có thể được chia sẻ với bên thứ ba. Chúng tôi cũng sử dụng mã tái tiếp thị đăng nhập khi khách truy cập xem các trang cụ thể, cho phép chúng tôi đưa ra các quảng cáo mục tiêu trong tương lai.\n<h3><strong>Phân phối thông tin</strong></h3>\nChúng tôi xử lý tất cả dữ liệu khách hàng phù hợp với Pháp lệnh dữ liệu cá nhân (Riêng tư) ở Việt Nam. Chúng tôi sẽ không bao giờ bán, chia sẻ hoặc sử dụng bất kỳ thông tin cá nhân nào bạn cung cấp cho chúng tôi vì bất kỳ mục đích nào khác hơn là trao đổi với bạn về các sản phẩm, việc đặt chỗ hoặc thư mời đến các sự kiện của chúng tôi. Chúng tôi có thể chia sẻ thông tin với các cơ quan chính phủ hoặc các công ty khác hỗ trợ chúng tôi trong việc phòng chống gian lận hoặc điều tra.\n\n<strong>Chúng tôi có thể làm như vậy khi:</strong> (1) được pháp luật cho phép hoặc theo yêu cầu của pháp luật; (2) cố gắng để bảo vệ hoặc ngăn chặn gian lận thực tế hoặc tiềm năng hoặc giao dịch trái phép; (3) điều tra gian lận đó đã xảy ra. Các thông tin không được cung cấp cho các công ty này vì mục đích tiếp thị.\n\nThông tin cá nhân của bạn được lưu giữ an toàn. Chỉ các nhân viên, các đại lý và nhà thầu được ủy quyền (người đã đồng ý giữ thông tin an toàn và bảo mật) có quyền tiếp cận các thông tin này. Tất cả email và bản tin từ trang web này cho phép bạn chọn không tiếp tục nhận thư.\n<h3><strong>Câu hỏi</strong></h3>\nNếu bạn có bất kỳ câu hỏi, mối quan tâm, hoặc ý kiến gì về chính sách bảo mật của chúng tôi, xin vui lòng liên hệ với chúng tôi qua form<a href=\"https://Webdemo.com/contact-us\"> Liên hệ</a> với chúng tôi.\n\nChúng tôi giữ quyền thực hiện các thay đổi trong chính sách này. Tất cả thay đổi sẽ được phản ánh trên trang web này.\n<h3><strong>Thời gian áp dụng</strong></h3>\nChính sách này được áp dụng xuyên suốt thời gian trang web này hoạt động.","Chính sách bảo mật","","publish","closed","closed","","chinh-sach-bao-mat-2","","","2019-03-01 10:36:56","2019-03-01 03:36:56","","0","https://tppone.com/demo/shopruou/?page_id=35","0","page","","0"),
("37","1","2019-02-26 17:31:09","2019-02-26 10:31:09","<h2>Các điều khoản sử dụng website</h2>\n<div class=\"InnerContent\">\n<div class=\"Body\">\n\nTrang web này thuộc quyền sỡ hữu và được vận hành bởi cá nhân DEMO. Bạn hãy xem kỹ các thuật ngữ và các điều khoản một cách cẩn thận, các điều khoản này được biên soạn bởi tư cách cá nhân tôi và được áp dụng khi bạn sử dụng trang web.\n<h3>1. Nghĩa vụ của người dùng</h3>\nViệc sử dụng trang web này bao gồm việc bạn chấp nhận những thuật ngữ và các điều khoản của trang web, có hiệu lực từ này đầu tiên bạn truy cập trang web. Nếu bạn truy xuất, sử dụng hoặc tải về những tài liều từ trang web này, bạn phải tuân theo những điều khoản được quy định dưới đây. Tôi có quyền thay đổi các điều khoản này bất cứ lúc nào bằng cách cập nhật nội dung của trang web hiện tại và trách nhiệm của bạn là phải tham khảo đến khi truy cập trang web. Nếu bạn tiếp tục sử dụng trang web này sau khi các thay đổi đã được đăng có nghĩa là bạn đã chấp nhận những điều khoản mới được thay đổi.\n\nNếu bạn không đồng ý với những điều khoản này, bạn không có quyền truy cập nội dung của trang web này và do đó bạn nêu rời khỏi trang web này ngay lập tức.\n\nNếu có bất cứ những mẫu thuẫn trong các điều khoản này thì những điều khoản nào được đề cập sau sẽ có hiệu lực.\n<h3>2. Bản quyền và sở hữu trí tuệ</h3>\nTất cả những tài liệu và nội dung được cung cấp là sản phẩm sưu tầm từ nhiều nguồn có phí hoặc miễn phí. Khi bạn truy xuất trang web, bạn đồng ý rằng bạn thực hiện với mục đích cá nhân và phi lợi nhuận. Bạn không được phép bán lại file đã tải về hoặc sử dụng với mục đích kinh doanh khi chưa xin phép tôi.\n<h3>3. Đăng thông tin</h3>\nBất cứ thông tin hay dữ liệu nào bạn đăng tải trên trang web này phải là thông tin công khai (không phải thông tin mật) và sẽ thuộc quyền sở hữu của chủ sở hữu website.\n<h3>4. Điều khoản sử dụng</h3>\nMục đích sử dụng trang web nào phải hợp pháp và không vi phạm các quyền hạn/ràng buộc của các hãng thứ ba.\n<h3>5. Thông tin thêm</h3>\nĐể biết thêm thông tin chi tiết, <a href=\"https://Webdemo.com/contact-us\">hãy liên lạc với chúng tôi</a>.\n\n</div>\n</div>","Điều khoản sử dụng","","publish","closed","closed","","dieu-khoan-su-dung","","","2019-03-01 10:36:18","2019-03-01 03:36:18","","0","https://tppone.com/demo/shopruou/?page_id=37","0","page","","0"),
("39","1","2019-02-26 17:31:31","2019-02-26 10:31:31"," ","","","publish","closed","closed","","39","","","2019-02-26 17:31:31","2019-02-26 10:31:31","","0","https://tppone.com/demo/shopruou/?p=39","5","nav_menu_item","","0"),
("40","1","2019-02-26 17:31:31","2019-02-26 10:31:31"," ","","","publish","closed","closed","","40","","","2019-02-26 17:31:31","2019-02-26 10:31:31","","0","https://tppone.com/demo/shopruou/?p=40","1","nav_menu_item","","0"),
("41","1","2019-02-26 17:31:31","2019-02-26 10:31:31","","Hỗ trợ KH","","publish","closed","closed","","ho-tro-kh","","","2019-02-26 17:31:31","2019-02-26 10:31:31","","0","https://tppone.com/demo/shopruou/?p=41","2","nav_menu_item","","0"),
("42","1","2019-02-26 17:31:31","2019-02-26 10:31:31"," ","","","publish","closed","closed","","42","","","2019-02-26 17:31:31","2019-02-26 10:31:31","","0","https://tppone.com/demo/shopruou/?p=42","3","nav_menu_item","","0"),
("43","1","2019-02-26 17:31:31","2019-02-26 10:31:31"," ","","","publish","closed","closed","","43","","","2019-02-26 17:31:31","2019-02-26 10:31:31","","0","https://tppone.com/demo/shopruou/?p=43","4","nav_menu_item","","0"),
("44","1","2019-02-26 17:31:44","2019-02-26 10:31:44"," ","","","publish","closed","closed","","44","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=44","1","nav_menu_item","","0"),
("45","1","2019-02-26 17:33:58","2019-02-26 10:33:58","","Cửa hàng","","publish","closed","closed","","mua","","","2019-02-26 17:33:58","2019-02-26 10:33:58","","0","https://tppone.com/demo/shopruou/mua/","0","page","","0"),
("46","1","2019-02-26 17:33:58","2019-02-26 10:33:58","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2019-02-26 17:33:58","2019-02-26 10:33:58","","0","https://tppone.com/demo/shopruou/gio-hang/","0","page","","0"),
("47","1","2019-02-26 17:33:58","2019-02-26 10:33:58","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2019-02-26 17:33:58","2019-02-26 10:33:58","","0","https://tppone.com/demo/shopruou/thanh-toan/","0","page","","0"),
("48","1","2019-02-26 17:33:58","2019-02-26 10:33:58","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2019-02-26 17:33:58","2019-02-26 10:33:58","","0","https://tppone.com/demo/shopruou/tai-khoan/","0","page","","0"),
("49","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","49","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=49","2","nav_menu_item","","0"),
("50","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","50","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=50","19","nav_menu_item","","0"),
("51","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","51","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=51","20","nav_menu_item","","0"),
("52","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","52","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=52","24","nav_menu_item","","0"),
("53","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","53","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=53","21","nav_menu_item","","0"),
("54","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","54","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=54","22","nav_menu_item","","0"),
("55","1","2019-02-26 17:35:50","2019-02-26 10:35:50"," ","","","publish","closed","closed","","55","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=55","23","nav_menu_item","","0"),
("92","1","2019-02-26 20:49:31","2019-02-26 13:49:31","[section label=\"After header bottom\" bg_color=\"rgb(206, 206, 206)\" padding=\"5px\" class=\"block-after-header-bottom\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"99\" img_width=\"48\" pos=\"left\"]\n\n<p class=\"tieu-de\">Hộp quà tết</p>\n<p class=\"mo-ta\">Các sản phẩm hộp quà tết </p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"98\" img_width=\"48\" pos=\"left\"]\n\n<p class=\"tieu-de\">KÝ GỬI VÀ TRAO ĐỔI</p>\n<p class=\"mo-ta\">Macallan, Chivas </p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"97\" img_width=\"48\" pos=\"left\"]\n\n<p class=\"tieu-de\">Giao hàng & Đổi trả</p>\n<p class=\"mo-ta\">giao hàng toàn quốc </p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"96\" img_width=\"48\" pos=\"left\"]\n\n<p class=\"tieu-de\">TUYỆT ĐỐI KHÔNG UỐNG RƯỢU</p>\n<p class=\"mo-ta\">đối với phụ nữ mang thai và trẻ em</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]","Row after Header bottom","","publish","closed","closed","","row-after-header-bottom","","","2019-02-26 21:10:06","2019-02-26 14:10:06","","0","https://tppone.com/demo/shopruou/?post_type=blocks&#038;p=92","0","blocks","","0"),
("96","1","2019-02-26 20:52:13","2019-02-26 13:52:13","","icon1","","inherit","open","closed","","icon1","","","2019-02-26 20:52:13","2019-02-26 13:52:13","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/icon1.jpg","0","attachment","image/jpeg","0"),
("97","1","2019-02-26 20:52:13","2019-02-26 13:52:13","","icon2","","inherit","open","closed","","icon2","","","2019-02-26 20:52:13","2019-02-26 13:52:13","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/icon2.jpg","0","attachment","image/jpeg","0"),
("98","1","2019-02-26 20:52:13","2019-02-26 13:52:13","","icon3","","inherit","open","closed","","icon3","","","2019-02-26 20:52:13","2019-02-26 13:52:13","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/icon3.jpg","0","attachment","image/jpeg","0"),
("99","1","2019-02-26 20:52:14","2019-02-26 13:52:14","","icon4","","inherit","open","closed","","icon4","","","2019-02-26 20:52:14","2019-02-26 13:52:14","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/icon4.jpg","0","attachment","image/jpeg","0"),
("126","1","2019-02-26 21:23:46","2019-02-26 14:23:46","","banner2","","inherit","open","closed","","banner2","","","2019-02-26 21:23:46","2019-02-26 14:23:46","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/banner2.jpg","0","attachment","image/jpeg","0"),
("127","1","2019-02-26 21:24:00","2019-02-26 14:24:00","","banner1","","inherit","open","closed","","banner1","","","2019-02-26 21:24:00","2019-02-26 14:24:00","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/banner1.jpg","0","attachment","image/jpeg","0"),
("128","1","2019-02-26 21:24:01","2019-02-26 14:24:01","","banner3","","inherit","open","closed","","banner3","","","2019-02-26 21:24:01","2019-02-26 14:24:01","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/banner3.jpg","0","attachment","image/jpeg","0"),
("148","1","2019-02-26 21:32:43","2019-02-26 14:32:43","","0000129","","inherit","open","closed","","0000129","","","2019-02-26 21:32:43","2019-02-26 14:32:43","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/0000129.png","0","attachment","image/png","0"),
("157","1","2019-02-26 21:41:49","2019-02-26 14:41:49","","0000124","","inherit","open","closed","","0000124","","","2019-02-26 21:41:49","2019-02-26 14:41:49","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/0000124.png","0","attachment","image/png","0"),
("162","1","2019-02-26 21:44:12","2019-02-26 14:44:12","","ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43","","inherit","open","closed","","ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43","","","2019-02-26 21:44:12","2019-02-26 14:44:12","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/ruou-ngam-hoa-qua-co-tot-ruou-trai-cay-tong-hop-thumb43.jpg","0","attachment","image/jpeg","0"),
("165","1","2019-02-26 21:45:47","2019-02-26 14:45:47","","ruou-mui","","inherit","open","closed","","ruou-mui","","","2019-02-26 21:45:47","2019-02-26 14:45:47","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/ruou-mui.jpg","0","attachment","image/jpeg","0"),
("167","1","2019-02-26 21:46:58","2019-02-26 14:46:58","","RUOU-GIN","","inherit","open","closed","","ruou-gin","","","2019-02-26 21:46:58","2019-02-26 14:46:58","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/RUOU-GIN.jpg","0","attachment","image/jpeg","0"),
("170","1","2019-02-26 21:48:28","2019-02-26 14:48:28","","ruou-fum","","inherit","open","closed","","ruou-fum","","","2019-02-26 21:48:28","2019-02-26 14:48:28","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/ruou-fum.jpg","0","attachment","image/jpeg","0"),
("177","1","2019-02-26 22:05:24","2019-02-26 15:05:24","Rượu vang Úc Elderton Estate Shiraz, Barossa, Nam nước Úc. Rượu vang đỏ Elderton Estate Shiraz được làm từ những vườn nho từ 21 -122 năm tuổi của nhà Elderton tại Barossa, Úc.\n\nVintage: 2014, rượu được ủ 24 tháng trong thùng gỗ sồi Mỹ và Pháp và có thể lưu trữ 10-15 năm.","RƯỢU VANG ELDERTON ESTATE SHIRAZ","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:<a title=\"Vang đỏ\" href=\"http://sanhruou.com/vang-champagne/vang-do.html\">Vang đỏ</a></li>\n 	<li class=\"meta\">Vùng:Barossa Valley</li>\n 	<li class=\"meta\">Xuất xứ:Úc</li>\n 	<li class=\"meta\">Giống nho:Shiraz/Syrah</li>\n 	<li class=\"meta\">Niên vụ:2014</li>\n 	<li class=\"meta\">Thời gian ủ:24 tháng</li>\n 	<li class=\"meta\">Đóng chai:Nắp vặn</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:14.5%</li>\n</ul>","publish","open","closed","","ruou-vang-elderton-estate-shiraz","","","2019-02-28 23:03:47","2019-02-28 16:03:47","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=177","0","product","","1"),
("178","1","2019-02-26 22:05:15","2019-02-26 15:05:15","","sp1","","inherit","open","closed","","sp1","","","2019-02-26 22:05:15","2019-02-26 15:05:15","","177","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp1.jpg","0","attachment","image/jpeg","0"),
("179","1","2019-02-26 22:07:59","2019-02-26 15:07:59","<strong>Rượu vang</strong><strong> </strong>Úc George Wyndham<strong> Bin 555 Shiraz</strong> là loại vang nổi tiếng của Úc. Rất được ưa chuộng trên thế giới. Không chỉ vì màu sắc rượu mà còn mùi vị ngon êm dịu sẽ lưu lại khoảnh khắc này.\n\nBIN 555 Shiraz là loại rượu vang đỏ làm từ giống nho nổi tiếng Shiraz (Syrah), Úc. Giống nho Shiraz như được thăng hoa khi trồng tại Úc và cho ra đời những chai rượu vang Shiraz hàng đầu thế giới.\n<p class=\"fr-tag\">Mỗi nước sản xuất vang đều có vài dòng vang “rất thân thiện” với thị giác, khứu giác, vị giác và cả túi tiền của người tiêu dùng, cho nên khi nói đến vang Úc, giới sành điệu nhớ ngay đến các nhãn vang làm với giống nho Shiraz. Và BIN 555 Shiraz là nhãn vang khó quên.</p>\n<p class=\"fr-tag\">Điều đặc biệt là tuy được trình làng cách nay 36 năm nhưng nhãn vang này vẫn không chỉ là loại vang nổi tiếng nhất của nhà Wyndham Estate mà còn được công nhận là loại vang Úc bán chạy nhất. Năm này qua năm nọ, rất nhiều nhà phê bình vang trên thế giới luôn dành cho nó điểm bốn ly vang (năm ly vang là điểm tối đa).</p>\n<p class=\"fr-tag\">Từ khi Goerge Wyndham trồng vườn nho Shiraz thương phẩm đầu tiên của Úc năm 1830, chúng tôi đã tận tâm chế biến những loại rượu vang mạnh. Những loại rượu vang làm phấn chấn người thưởng thức bằng cách kích thích các giác quan và làm dậy lên mùi hương tươi mát.</p>\n<p class=\"fr-tag\">Goerge Wyndham trở thành cha đẻ của Shiraz Úc khi ông trồng vườn nho để chế biến rượu Shiraz thương mại đầu tiên của Úc vào năm 1830. Chính tại nơi này, trong vườn nho và căn nhà của ông, bây giờ là kho báu uy tín Quốc gia nằm trong danh sách di sản, ông đã cống hiến cả đời mình để tạo ra các loại rượu vang có hương vị trọn vẹn. Di sản đáng tự hào về sự đổi mới và cống hiến tồn tại của vùng Wyndham, vùng đất được mỗi thế hệ của những người sản xuất rượu vang tích lũy kiến thức và kinh nghiệm. Ngày nay có nhiều dòng rượu vang có hương vị đặc trưng hơn. Mặc dù vậy, Shiraz vẫn là sản phẩm đặc trưng của vùng đất Wyndham – nơi sinh ra Shiraz Úc.</p>","RƯỢU VANG BIN 555","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:Vang đỏ</li>\n 	<li class=\"meta\">Xuất xứ:Úc</li>\n 	<li class=\"meta\">Giống nho:Shiraz/Syrah</li>\n 	<li class=\"meta\">Niên vụ:2015</li>\n 	<li class=\"meta\">Thời gian ủ:12 tháng</li>\n 	<li class=\"meta\">Đóng chai:Nắp vặn</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:14.5%</li>\n</ul>","publish","open","closed","","ruou-vang-bin-555","","","2019-02-28 23:52:34","2019-02-28 16:52:34","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=179","0","product","","1"),
("180","1","2019-02-26 22:07:52","2019-02-26 15:07:52","","sp2","","inherit","open","closed","","sp2","","","2019-02-26 22:07:52","2019-02-26 15:07:52","","179","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp2.jpg","0","attachment","image/jpeg","0"),
("181","1","2019-02-26 22:09:17","2019-02-26 15:09:17","<p class=\"fr-tag\"><strong>Rượu Vang đỏ </strong><strong>Úc George Wyndham</strong><strong> Bin 999 Merlot</strong>, mang màu đỏ đậm pha tím, với hương thơm của mận chín, gia vị và các loại trái cây và chút hương gỗ sồi mùi vani.</p>\n<p class=\"fr-tag\"><img title=\"Vang Úc Bin 999 hộp quà tết\" src=\"http://sanhruou.com/media/Uploaded/Vang/Bin-999-hop-qua-2019.jpg\" /></p>\n<p class=\"fr-tag\">Vang đỏ Úc Bin 999 hộp quà + 80.000vnd</p>\n<p class=\"fr-tag\">Loại vang này mang phong cách êm nhẹ, thanh thoát nơi vòm miệng với tính phức hợp tạo nên những cảm xúc thưởng thức đa dạng, tròn đầy nơi đầu lưỡi và kết thúc với vị chát nhẹ.</p>\n<p class=\"fr-tag\">Rượu vang đỏ Bin 999, nho sau khi thu hoạch (khoảng tháng 3 hàng năm) mang về nhà máy nghiền thành dịch và tiếng hành lên men trong các thùng Inox. Nhiệt độ lên men kiểm soát ở 28<sup>0</sup>C sau đó hạ xuống 19-22<sup>0</sup>C cho hương vị và màu sắc tốt nhất. Sau quá trình lên men rượu được ủ trong thùng gỗ sồi Pháp và Mỹ (6-8 tháng), sau đó đem trộn với nhau và đi đóng chai.</p>\n<p class=\"fr-tag\">Tháng 6/2018 đã có niên vụ (vintage) 2017 về kho Sành rượu.</p>","RƯỢU VANG BIN 999","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:<a title=\"Vang đỏ\" href=\"http://sanhruou.com/vang-champagne/vang-do.html\">Vang đỏ</a></li>\n 	<li class=\"meta\">Xuất xứ:<a title=\"Úc\" href=\"http://sanhruou.com/vang-champagne/vang-uc.html\">Úc</a></li>\n 	<li class=\"meta\">Giống nho:<a title=\"Merlot\" href=\"http://sanhruou.com/vang-champagne/merlot.html\">Merlot</a></li>\n 	<li class=\"meta\">Niên vụ:2017</li>\n 	<li class=\"meta\">Thời gian ủ:6 tháng</li>\n 	<li class=\"meta\">Đóng chai:Nắp vặn</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:14%</li>\n</ul>","publish","open","closed","","ruou-vang-bin-999","","","2019-03-01 02:27:34","2019-02-28 19:27:34","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=181","0","product","","1"),
("182","1","2019-02-26 22:09:11","2019-02-26 15:09:11","","sp3","","inherit","open","closed","","sp3","","","2019-02-26 22:09:11","2019-02-26 15:09:11","","181","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp3.jpg","0","attachment","image/jpeg","0"),
("183","1","2019-02-26 22:10:40","2019-02-26 15:10:40","<p class=\"fr-tag\"><strong>Rượu vang đỏ Ý F Negro Amaro hộp + túi giấy:</strong></p>\n<p class=\"fr-tag\"><img title=\"vang đỏ Ý F negro amaro\" src=\"http://sanhruou.com/media/Uploaded/Vang/f-negro-amaro-tui-va-hop.jpg\" /><strong>\n</strong></p>\n<p class=\"fr-tag\"><strong>Rượu Vang Ý F Negroamaro</strong>, màu tím rất đầy đủ và sâu sắc, phong phú và phức hợp về hương thơm với các ghi chú tannin khá mềm, xốp và cho ra hương vị vani, mùi mận chín, sim tím, mứt quả đen. Rượu khá dày tràn đầy trong khoang miệng, tròn vị, mềm mại và hài hòa, giàu tannin, béo ngậy với hương bơ, kem khá tinh tế, xen lẫn mùi thơm của cacao nồng nàn, mùi tuyết tùng quyến rũ. Rượu lan tỏa trong khoang miệng và mượt mà dễ chịu với một kết thúc ngọt ngào và tinh tế.</p>\n<p class=\"fr-tag\">Nho được hái bằng tay, được hái vào sáng sớm, lựa chọn những chùm nho tốt nhất. Ở nhà máy sẽ lựa chọn một lần nữa để chọn ra những trái nho tốt nhất để làm ra chai vang F.</p>\n<p class=\"fr-tag\">Rượu được lên men ở nhiệt độ 24 - 26°C trong thời gian 25 ngày sau đó rựou được chuyển sang lên men malolactic trong thùng gỗ sồi mới của Pháp. Để tăng thêm độ đặc biệt rượu được chuyển tiếp sang thùng gỗ sồi Pháp và Caucasian 12 tháng. Đây là bước đột phá trong quy trình làm rượu khi sử dụng gỗ sồi Caucasian của Nga, Cây sồi Nga trồng ở vùng Siberi do điều kiện khí hậu khắc nghiệt có thời gian tăng trưởng kéo dài từ 100 - 200 năm, các thớ gỗ khá mịn, vì vậy rượu vang được ủ từ loại thùng này sẽ cho ra một chai vang với hương vị đặc biệt. Rượu sau đó đem đi đóng chai và để ổn định trong hầm 6 - 12 tháng trước khi bán ra thị trường.</p>\n<p class=\"fr-tag\"><img title=\"Thử rượu vang Ý F, Vang F\" src=\"http://sanhruou.com/media/Uploaded/Vang/F-Negro-Amaro-tasting.jpg\" /></p>\n<p class=\"fr-tag\"><img title=\"Tiệc giới thiệu vang F, Vang ý\" src=\"http://sanhruou.com/media/Uploaded/Vang/F-Negro-Amaro-thu-ruou.jpg\" /></p>\n<p class=\"fr-tag\">Hình ảnh Sành Rượu tasting chai vang F Negro Amaro tại tiệc của nhà nhập khẩu và đại diện hãng sản xuất tổ chức.</p>\n<p class=\"fr-tag\">Vang F Negroamaro còn các vintage: 2014 và 2015 số lượng tồn ít, quý vị vui lòng alo để check kho.</p>","RƯỢU VANG F NEGROAMARO","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:<a title=\"Vang đỏ\" href=\"http://sanhruou.com/vang-champagne/vang-do.html\">Vang đỏ</a></li>\n 	<li class=\"meta\">Vùng:<a title=\"Puglia\" href=\"http://sanhruou.com/vang-champagne/puglia.html\">Puglia</a></li>\n 	<li class=\"meta\">Xuất xứ:<a title=\"Ý\" href=\"http://sanhruou.com/vang-champagne/vang-y.html\">Ý</a></li>\n 	<li class=\"meta\">Phân hạng:IGP</li>\n 	<li class=\"meta\">Giống nho:<a title=\"Negroamaro\" href=\"http://sanhruou.com/vang-champagne/negroamaro.html\">Negroamaro</a></li>\n 	<li class=\"meta\">Niên vụ:2016</li>\n 	<li class=\"meta\">Thời gian ủ:12 tháng</li>\n 	<li class=\"meta\">Đóng chai:Nút bần</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:15%</li>\n</ul>","publish","open","closed","","ruou-vang-f-negroamaro","","","2019-02-28 23:00:35","2019-02-28 16:00:35","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=183","0","product","","1"),
("184","1","2019-02-26 22:10:34","2019-02-26 15:10:34","","sp4","","inherit","open","closed","","sp4","","","2019-02-26 22:10:34","2019-02-26 15:10:34","","183","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp4.jpg","0","attachment","image/jpeg","0"),
("185","1","2019-02-26 22:11:50","2019-02-26 15:11:50","<p class=\"fr-tag\">Rượu vang <strong>Novas Gran Reserva Cabernet Sauvignon</strong>, nhà Emiliana, tọa lạc bên bờ Nam của sông Maipo, Chile. Vang Novas là dòng vang sinh thái (hữu cơ) thân thiện với môi trường, trồng trọt bền vững, không thuốc trừ sâu và thuốc diệt cỏ.</p>\n<p class=\"fr-tag\">Rượu vang Novas Gran Reserva Cabernet Sauvignon với màu đỏ đậm và cho hương thơm mạnh mẽ của các loại trái cây như quả anh đào, dâu tây, nấm truffle và chocolate. Độ mượt của rượu trung bình, cấu trúc dày, hương trái cây đậm và rõ rệt. Rượu cho vị chát mịn, độ chua mạnh mẽ nhưng khá cân bằng, hậu vị kép dài.</p>\n<p class=\"fr-tag\">Niên vụ 2014: 98% Cabernet Sauvignon và 2% Merlot, các vườn nho được canh tác theo tiêu chuẩn hữu cơ (organic), được chứng nhận bở IMO, Thụy Sĩ. Nho hoạch bằng thủ công, các khâu trong quá trình chế biến đều được kiểm soát nhiệt độ thích hợp để cho rượu ngon nhất. Rượu được ủ 12 tháng, 35% thùng gỗ sồi Pháp, 35% thùng gỗ sồi Mỹ còn lại 30% ủ trong thùng inox. Sau quá trình ủ kết thúc rượu được đóng chai và cho ổn định dưới hầm chứa 6 tháng trước khi xuất ra thị trường.</p>\n<p class=\"fr-tag\"><img title=\"Mô hình vườn nho sinh thái organic Novas\" src=\"http://sanhruou.com/media/Uploaded/Vang/Novas-vuon-nho-organic.jpg\" /></p>\n<p class=\"fr-tag\"><em>Mô hình vườn nho và phương pháp canh tác của nhà Emiliana</em></p>\n<p class=\"fr-tag\"><img title=\"Hộp quà vang Novas\" src=\"http://sanhruou.com/media/Uploaded/Vang/Novas-hop-qua.jpg\" /><em>\n</em></p>\n<p class=\"fr-tag\"><em>Niên vụ 2014 được JamesSuckling đánh giá và cho 91 điểm</em></p>","RƯỢU VANG NOVAS GRAN RESERVA CABERNET SAUVIGNON","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:<a title=\"Vang đỏ\" href=\"http://sanhruou.com/vang-champagne/vang-do.html\">Vang đỏ</a></li>\n 	<li class=\"meta\">Vùng:<a title=\"Maipo Valley\" href=\"http://sanhruou.com/vang-champagne/maipo-valley.html\">Maipo Valley</a></li>\n 	<li class=\"meta\">Xuất xứ:<a title=\"Chile\" href=\"http://sanhruou.com/vang-champagne/vang-chile.html\">Chile</a></li>\n 	<li class=\"meta\">Phân hạng:Gran Reserva</li>\n 	<li class=\"meta\">Giống nho:<a title=\"Cabernet Sauvignon\" href=\"http://sanhruou.com/vang-champagne/cabernet-sauvignon.html\">Cabernet Sauvignon</a></li>\n 	<li class=\"meta\">Niên vụ:2014</li>\n 	<li class=\"meta\">Thời gian ủ:12 tháng</li>\n 	<li class=\"meta\">Đóng chai:Nút bần</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:14.2%</li>\n</ul>","publish","open","closed","","ruou-vang-novas-gran-reserva-cabernet-sauvignon","","","2019-03-01 01:44:37","2019-02-28 18:44:37","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=185","0","product","","1"),
("186","1","2019-02-26 22:11:46","2019-02-26 15:11:46","","sp5","","inherit","open","closed","","sp5","","","2019-02-26 22:11:46","2019-02-26 15:11:46","","185","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp5.jpg","0","attachment","image/jpeg","0"),
("187","1","2019-02-26 22:13:23","2019-02-26 15:13:23","<strong>Rượu Champagne Pháp Veuve Clicquot Vàng (Brut - Champagne trắng)</strong> - Champagne Veuve Clicquot Brut Yellow Label là một trong những champagne phổ biến nhất và dễ nhận biết nhất trên toàn thế giới. Với nhãn màu vàng đặc biệt của nó, Rượu Champagne Veuve Clicquot Brut Yellow Label là sự kính trọng lâu dài đối với các đại Madame Barbe - Nicole Clicquot.\n\n<img title=\"Rượu Champagne Veuve Clicqout\" src=\"http://sanhruou.com/media/Uploaded/Vang/Veuve-Clicquot-Vang-Brut-rose.jpg\" />\n<p class=\"fr-tag\">Rượu Champagne Veuve Clicquot Brut Yellow Label có hương thơm dễ chịu, đầu tiên chúng ta cảm nhận được là mùi hương gợi nhắc trái cây màu trắng và nho khô, kế đến là hương vani và sau đó là mùi thơm của bánh mì nướng. Rượu Champagne Veuve Clicquot Brut Yellow Label này có sự cân bằng tinh tế giữa hương trái cây đến từ các loại nho khác nhau và hương mùi nướng khi được ủ trong chai. Đây là thành viên đích thực của gia đình Brut mạnh mẽ, kết cấu tuyệt vời, xứng đáng được ngưỡng mộ. Là loại rượu khai vị lý tưởng, và là một loại champage hoàn hảo dễ dùng chung với các món cá hoặc hải sản.</p>\n<p class=\"fr-tag\">Rượu Champagne Veuve Clicquot Brut Yellow Label là một trong những champagne nổi tiếng nhất trên thế giới. Từ khi thành lập vào năm 1772, Clicquot đã không chỉ được báo trước cho rượu vang của mình, mà còn cho sự dũng cảm và sáng tạo của Madame Clicquot người được coi như là những doanh nhân đầu tiên của kỷ nguyên hiện đại. Sự nổi tiếng \" Rượu Champagne Veuve Clicquot Brut Yellow Label \" đã trở nên chất lượng.</p>\n<p class=\"fr-tag\">Champagne Veuve Clicquot Brut Yellow được làm từ 50-55% Pinot Noir, 15-20% Meunier và 28-33% Chadonay.</p>","RƯỢU CHAMPAGNE VEUVE CLICQUOT BRUT YELLOW - VÀNG","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Loại vang:<a title=\"Champagne\" href=\"http://sanhruou.com/vang-champagne/champagne-vang-no.html\">Champagne</a></li>\n 	<li class=\"meta\">Vùng:<a title=\"Champagne\" href=\"http://sanhruou.com/vang-champagne/champagne-vang-no.html\">Champagne</a></li>\n 	<li class=\"meta\">Xuất xứ:<a title=\"Pháp\" href=\"http://sanhruou.com/vang-champagne/vang-phap.html\">Pháp</a></li>\n 	<li class=\"meta\">Đóng chai:Nút bần</li>\n 	<li class=\"meta\">Dung tích:750ml</li>\n 	<li class=\"meta\">Nồng độ:12%</li>\n 	<li class=\"meta\">Thời gian ủ:36 tháng</li>\n</ul>","publish","open","closed","","ruou-champagne-veuve-clicquot-brut-yellow-vang","","","2019-02-28 22:57:52","2019-02-28 15:57:52","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=187","0","product","","1"),
("189","1","2019-02-26 22:14:30","2019-02-26 15:14:30","<p class=\"fr-tag\">Rượu vang Ý 3 sao Luccarelli Negroamaro Puglia, Ý. Vintage: 2017</p>\n<p class=\"fr-tag\">Rượu vang Luccarelli Negroamaro (Rượu vang 3 sao Luccarelli) sở hữu hương vị đặc trưng của trái cây chín, quả mâm xôi, dâu đen. Rượu có mùi thơm đặc trưng, khi uống sẽ cảm nhận được vị chát nhẹ nhàng, thanh tao nhưng vẫn đọng lại 1 ít vị ngọt dịu. Đây là loại vang phù hợp dùng để uống hàng ngày vì giá thành rất mềm.</p>\n<p class=\"fr-tag\">Rượu Luccarelli Negroamaro có màu đỏ tím sâu sắc. Nó phản xạ màu tím đen đầy bí ẩn. Nó có mùi hương mãnh liệt và dai dẳng, có nho đen và mùi hương trái cây hoang dã, cay với thơm và ghi chú bởi vani. Hậu vị rượu mềm mại và cân bằng.</p>\n<p class=\"fr-tag\">Rượu được ủ tron thùng inox 6 tháng, trong thùng gỗ sồi Mỹ và Pháp 4-5 tháng.</p>\n<p class=\"fr-tag\">Rượu vang Ý 3 sao Luccarelli Negroamaro Puglia, Ý. Vintage: 2017</p>\n<p class=\"fr-tag\">Rượu vang Luccarelli Negroamaro (Rượu vang 3 sao Luccarelli) sở hữu hương vị đặc trưng của trái cây chín, quả mâm xôi, dâu đen. Rượu có mùi thơm đặc trưng, khi uống sẽ cảm nhận được vị chát nhẹ nhàng, thanh tao nhưng vẫn đọng lại 1 ít vị ngọt dịu. Đây là loại vang phù hợp dùng để uống hàng ngày vì giá thành rất mềm.</p>\n<p class=\"fr-tag\">Rượu Luccarelli Negroamaro có màu đỏ tím sâu sắc. Nó phản xạ màu tím đen đầy bí ẩn. Nó có mùi hương mãnh liệt và dai dẳng, có nho đen và mùi hương trái cây hoang dã, cay với thơm và ghi chú bởi vani. Hậu vị rượu mềm mại và cân bằng.</p>\n<p class=\"fr-tag\">Rượu được ủ tron thùng inox 6 tháng, trong thùng gỗ sồi Mỹ và Pháp 4-5 tháng.</p>","RƯỢU VANG LUCCARELLI NEGROAMARO","","publish","open","closed","","ruou-vang-luccarelli-negroamaro","","","2019-03-01 02:26:55","2019-02-28 19:26:55","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=189","0","product","","1"),
("207","1","2019-02-26 22:35:59","2019-02-26 15:35:59","","sp8","","inherit","open","closed","","sp8-2","","","2019-02-26 22:35:59","2019-02-26 15:35:59","","189","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp8-1.jpg","0","attachment","image/jpeg","0"),
("208","1","2019-02-26 22:36:47","2019-02-26 15:36:47","","sp6","","inherit","open","closed","","sp6-2","","","2019-02-26 22:36:47","2019-02-26 15:36:47","","187","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp6-1.jpg","0","attachment","image/jpeg","0"),
("209","1","2019-02-26 22:37:24","2019-02-26 15:37:24","","sp5","","inherit","open","closed","","sp5-2","","","2019-02-26 22:37:24","2019-02-26 15:37:24","","185","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp5-1.jpg","0","attachment","image/jpeg","0"),
("211","1","2019-02-26 22:37:59","2019-02-26 15:37:59","","sp4","","inherit","open","closed","","sp4-2","","","2019-02-26 22:37:59","2019-02-26 15:37:59","","183","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp4-1.jpg","0","attachment","image/jpeg","0"),
("212","1","2019-02-26 22:38:40","2019-02-26 15:38:40","","sp3","","inherit","open","closed","","sp3-2","","","2019-02-26 22:38:40","2019-02-26 15:38:40","","181","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp3-1.jpg","0","attachment","image/jpeg","0"),
("213","1","2019-02-26 22:40:08","2019-02-26 15:40:08","","sp2","","inherit","open","closed","","sp2-2","","","2019-02-26 22:40:08","2019-02-26 15:40:08","","179","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp2-1.jpg","0","attachment","image/jpeg","0"),
("214","1","2019-02-26 22:41:35","2019-02-26 15:41:35","","sp1-(1)","","inherit","open","closed","","sp1-1","","","2019-02-26 22:41:35","2019-02-26 15:41:35","","177","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/sp1-1.jpg","0","attachment","image/jpeg","0"),
("215","1","2019-02-26 22:45:52","2019-02-26 15:45:52","Rượu Macallan Quest trong bộ sưu tập mới của hãng, The Macallan Quest Collection, không để tuổi rượu (NAS) phát hành cho kênh bán lẻ toàn cầu gồm: Macallan Quest, Lumina, Terra và Enigma.\n\n<img title=\"Rượu Macallan 1 lít Quest\" src=\"http://sanhruou.com/media/Uploaded/Whisky/Quest-bo-suu-tap.jpg\" />\n<p class=\"fr-tag\">Bộ sưu tập này sẽ thay thế cho bộ sưu tập hiện tại là: The Macallan 1824 Collection gồm: <a href=\"http://sanhruou.com/whisky/ruou-macallan-select-oak-1l.html\" target=\"_blank\" rel=\"noopener\">Select Oak</a> (hay còn gọi Macallan Xanh 1L), Whisky Maker’s Edition và Estate Reserve từ tháng 1/2018.</p>\n<p class=\"fr-tag\">Rượu Macallan Quest được phối trộn từ 4 loại thùng gỗ sồi gồm: European &amp; American Sherry-seasoned oak, American ex-Bourbon &amp; hogshead casks. Trong một nổ lực không mệt mỏi của nhà Macallan trong hành trình vạn dặm tìm kiếm gỗ sồi cho quá trình ủ rượu.</p>\n<p class=\"fr-tag\">Rượu Macallan Quest lấy cảm hứng thiết kế từ bầu trời xanh thẳm với những áng mây trắng bồng bền.</p>","RƯỢU MACALLAN QUEST","<ul class=\"product-specs__list\">\n 	<li class=\"meta\">Dung tích:1000ml</li>\n 	<li class=\"meta\">Nồng độ:40%</li>\n 	<li class=\"meta\">Tuổi rượu:NAS (No Age Statement)</li>\n 	<li class=\"meta\">Phân Loại:<a title=\"Single Malt Scotch Whisky\" href=\"http://sanhruou.com/whisky/single-malt-scotch-whisky.html\">Single Malt Scotch Whisky</a></li>\n 	<li class=\"meta\">Vùng:<a title=\"Speyside\" href=\"http://sanhruou.com/whisky/speyside.html\">Speyside</a></li>\n 	<li class=\"meta\">Xuất Xứ:<a title=\"Scotland\" href=\"http://sanhruou.com/whisky/single-malt-scotch-whisky.html\">Scotland</a></li>\n</ul>","publish","open","closed","","ruou-macallan-quest","","","2019-03-01 02:25:16","2019-02-28 19:25:16","","0","https://tppone.com/demo/shopruou/?post_type=product&#038;p=215","0","product","","1"),
("216","1","2019-02-26 22:45:47","2019-02-26 15:45:47","","23","","inherit","open","closed","","23","","","2019-02-26 22:45:47","2019-02-26 15:45:47","","215","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/23.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-02-26 22:50:25","2019-02-26 15:50:25","","bg2","","inherit","open","closed","","bg2","","","2019-02-26 22:50:25","2019-02-26 15:50:25","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/bg2.jpg","0","attachment","image/jpeg","0"),
("226","1","2019-02-26 22:50:26","2019-02-26 15:50:26","","bg3","","inherit","open","closed","","bg3","","","2019-02-26 22:50:26","2019-02-26 15:50:26","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/bg3.jpg","0","attachment","image/jpeg","0"),
("250","1","2019-02-26 22:59:40","2019-02-26 15:59:40","[section label=\"Footer section\" bg_color=\"rgb(57, 0, 35)\" class=\"footer-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[follow align=\"center\" scale=\"118\" facebook=\"#\" twitter=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\" youtube=\"#\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>LIÊN KẾT NHANH</h3>\n<ul>\n<li><a href=\"https://Webdemo.com\">Thương hiệu</a></li>\n<li><a href=\"https://Webdemo.com\">Sản phẩm mới</a></li>\n<li><a href=\"https://Webdemo.com\">Sản phẩm đã xem</a></li>\n<li><a href=\"https://Webdemo.com\">So sánh sản phẩm</a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>HIỂU VỀ RƯỢU</h3>\n<ul>\n<li><a href=\"https://Webdemo.com\">Blogs</a></li>\n<li><a href=\"https://Webdemo.com\">Hướng dẫn sử dụng</a></li>\n<li><a href=\"https://Webdemo.com\">Hướng dẫn bảo quản</a></li>\n<li><a href=\"https://Webdemo.com\">Phân biệt thật - giả</a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>VỀ CHÚNG TÔI</h3>\n<ul>\n<li><a href=\"https://Webdemo.com\">Giới thiệu</a></li>\n<li><a href=\"https://Webdemo.com\">Giao hàng &amp; Đổi trả</a></li>\n<li><a href=\"https://Webdemo.com\">Bảo mật thông tin</a></li>\n<li><a href=\"https://Webdemo.com\">Điều khoản sử dụng</a></li>\n<li><a href=\"https://Webdemo.com\">Ký gửi &amp; trao đổi</a></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\" class=\"cot-cuoi\"]\n\n<h3>THÔNG TIN LIÊN HỆ</h3>\n<ul>\n<li>Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, HN</li>\n<li>Điện thoại: </li>\n<li>Email: demoweb@gmail.com</li>\n<li>Website: www.Webdemo.com, webdemo.com</li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Block","","publish","closed","closed","","footer-block","","","2019-02-26 23:18:22","2019-02-26 16:18:22","","0","https://tppone.com/demo/shopruou/?post_type=blocks&#038;p=250","0","blocks","","0"),
("294","1","2019-02-28 22:45:10","2019-02-28 15:45:10","","ELDERTON","","inherit","open","closed","","elderton","","","2019-02-28 22:45:10","2019-02-28 15:45:10","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/ELDERTON.jpg","0","attachment","image/jpeg","0"),
("295","1","2019-02-28 22:46:15","2019-02-28 15:46:15","","GEORGE-WYNDHAM","","inherit","open","closed","","george-wyndham","","","2019-02-28 22:46:15","2019-02-28 15:46:15","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/GEORGE-WYNDHAM.jpg","0","attachment","image/jpeg","0"),
("296","1","2019-02-28 22:47:10","2019-02-28 15:47:10","a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Thông tin rượu","thong-tin-ruou","publish","closed","closed","","group_5c780278df31c","","","2019-02-28 22:56:53","2019-02-28 15:56:53","","0","https://tppone.com/demo/shopruou/?post_type=acf-field-group&#038;p=296","0","acf-field-group","","0"),
("297","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:45:\"Nhập tên loại vang. Ví dụ: Vang đỏ\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"Nhập tên loại vang\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Loại vang","loai_vang","publish","closed","closed","","field_5c78028269373","","","2019-02-28 22:52:54","2019-02-28 15:52:54","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&p=297","0","acf-field","","0"),
("298","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Nhập xuất xứ của sản phẩm. Ví dụ: Úc\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:40:\"Nhập xuất xứ của sản phẩm...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Xuất xứ","xuat_xu","publish","closed","closed","","field_5c7802a669374","","","2019-02-28 22:52:54","2019-02-28 15:52:54","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&p=298","1","acf-field","","0"),
("299","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Nhập niên vụ. Ví dụ: 2014\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:39:\"Nhập niên vụ của sản phẩm...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Niên vụ","nien_vu","publish","closed","closed","","field_5c7802ce69375","","","2019-02-28 22:52:54","2019-02-28 15:52:54","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&p=299","2","acf-field","","0"),
("300","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Nhập quy cách đóng chai sản phẩm. Ví dụ: nút bần\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:24:\"Quy cách đóng chai...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Đóng chai","dong_chai","publish","closed","closed","","field_5c7802f069376","","","2019-02-28 22:52:54","2019-02-28 15:52:54","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&p=300","3","acf-field","","0"),
("301","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Nhập dung tích của rượu\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:20:\"Nhập dung tích...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Dung tích","dung_tich","publish","closed","closed","","field_5c78030969377","","","2019-02-28 22:56:53","2019-02-28 15:56:53","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=301","4","acf-field","","0"),
("302","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Nhập nồng độ cồn của sản phẩm. Ví dụ: 25%\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"Nhập nồng độ cồn...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Nồng độ","nong_do","publish","closed","closed","","field_5c78032369378","","","2019-02-28 22:56:53","2019-02-28 15:56:53","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=302","5","acf-field","","0"),
("303","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Nhập tên giống nho. Ví dụ: cabernet-sauvignon\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Tên giống nho...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Giống nho","giong_nho","publish","closed","closed","","field_5c78035369379","","","2019-02-28 22:56:53","2019-02-28 15:56:53","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=303","6","acf-field","","0"),
("304","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:48:\"Quy cách thưởng thức của sản phẩm...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}","Thưởng thức","thuong_thuc","publish","closed","closed","","field_5c7803846937b","","","2019-02-28 22:55:57","2019-02-28 15:55:57","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=304","8","acf-field","","0"),
("305","1","2019-02-28 22:52:54","2019-02-28 15:52:54","a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}","Lưu ý khi sử dụng","luu_y","publish","closed","closed","","field_5c7803c76937c","","","2019-02-28 22:55:57","2019-02-28 15:55:57","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=305","9","acf-field","","0"),
("306","1","2019-02-28 22:55:57","2019-02-28 15:55:57","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:24:\"Thời gian ủ rượu.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:30:\"Nhập thời gian ủ rượu\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Thời gian ủ","thoi_gian_u","publish","closed","closed","","field_5c780471769bb","","","2019-02-28 22:56:53","2019-02-28 15:56:53","","296","https://tppone.com/demo/shopruou/?post_type=acf-field&#038;p=306","7","acf-field","","0"),
("505","1","2019-03-01 09:49:01","2019-03-01 02:49:01","","Default Form","","publish","closed","closed","","default-form","","","2019-03-01 09:49:01","2019-03-01 02:49:01","","0","https://tppone.com/demo/shopruou/default-form/","0","wpdiscuz_form","","0"),
("515","1","2019-03-01 10:00:24","2019-03-01 03:00:24","","ruou-6155-1422328295","","inherit","open","closed","","ruou-6155-1422328295","","","2019-03-01 10:00:24","2019-03-01 03:00:24","","1","https://tppone.com/demo/shopruou/wp-content/uploads/2019/02/ruou-6155-1422328295.jpg","0","attachment","image/jpeg","0"),
("517","1","2019-03-01 10:01:27","2019-03-01 03:01:27","<h2><span id=\"diem-danh-nhung-loai-ruou-vang-noi-tieng-the-gioi\"><strong>Điểm danh những loại rượu vang nổi tiếng thế giới</strong></span></h2>\n<h3><span id=\"sauvignon-blanc\"><strong>Sauvignon Blanc</strong></span></h3>\nSauvignon Blanc là loại rượu vang trắng nổi tiếng được tạo nên bởi loại nho cùng tên có da xanh, xuất phát từ vùng Bordeaux của Pháp. Đặc biệt, hương vị của rượu sẽ có vị rất gắt, nếu không biết thưởng thức nhiều người sẽ nghĩ đó là thứ rượu hỏng. Tuy nhiên, đây lại chính là điểm khác biệt nhất và tạo nên sự nổi tiếng cho rượu vang Sauvignon Blanc.\n\n<img class=\"aligncenter wp-image-9070 size-full\" src=\"https://www.cet.edu.vn/wp-content/uploads/2018/03/ruou-vang-sauvignon-blane.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://www.cet.edu.vn/wp-content/uploads/2018/03/ruou-vang-sauvignon-blane.jpg 600w, https://www.cet.edu.vn/wp-content/uploads/2018/03/ruou-vang-sauvignon-blane-400x267.jpg 400w\" alt=\"Rượu vang Sauvignon Blanc\" width=\"600\" height=\"400\" />\n\n<em>Rượu vang Sauvignon Blanc có vị rất gắt của nho xanh.\n(Ảnh: Internet)</em>\n<h3><span id=\"pinot-noir\"><strong>Pinot Noir</strong></span></h3>\nĐây là một loại rượu vang đỏ của Pháp mang hương vị sự tinh tế và phức tạp riêng biệt. Rượu vang Pinot Noirs là sự kết hợp của nhiều hương vị như anh đào, mận, nấm, tuyết tùng, sô cô la và xì gà.\n<h3><span id=\"merlot\"><strong>Merlot</strong></span></h3>\nMerlot là một loại nho có màu xanh đậm, dùng để sản xuất vang đỏ. Đây là một trong những dòng rượu vang đỏ được ưa chuộng nhất với hương vị thảo mộc. Đặc biệt là hương vị Cabernet Sauvignon nhẹ nhàng và mềm mại bao gồm vị mâm xôi, anh đào, mận, sô cô la, và mocha.\n<h3><span id=\"chardonnay\"><strong>Chardonnay</strong></span></h3>\nMột dòng rượu vang trắng nổi tiếng khác từ miền Đông nước Pháp. Rượu vang Chardonnay là sản phẩm rất đắt tiền bởi chúng được ủ trong những thùng gỗ sồi cực quý. Còn đối với loại Chardonnay rẻ tiền hơn thì được ngâm với gỗ sồi hoặc pha chế thêm tinh dầu gỗ sồi.","Uống rượu vang đúng cách cần lưu ý những gì?","","publish","open","open","","uong-ruou-vang-dung-cach-can-luu-y-nhung-gi","","","2019-03-01 10:01:27","2019-03-01 03:01:27","","0","https://tppone.com/demo/shopruou/?p=517","0","post","","0"),
("518","1","2019-03-01 10:01:23","2019-03-01 03:01:23","","ruou-vang-sauvignon-blane","","inherit","open","closed","","ruou-vang-sauvignon-blane","","","2019-03-01 10:01:23","2019-03-01 03:01:23","","517","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/ruou-vang-sauvignon-blane.jpg","0","attachment","image/jpeg","0"),
("520","1","2019-03-01 10:02:21","2019-03-01 03:02:21","Uống một chai rượu vang ngon là một điều tuyệt vời mà ai cũng mong muốn – đặc biệt là với những người mới thử thưởng thức rượu vang, tuy nhiên vấn đề chính là làm như thế nào để chọn được một chai vang ngon giữa một biển nhãn hiệu ngày nay? Cách tốt nhất đó là tự trang bị cho mình kiến thức về rượu vang để không còn bị mờ mắt bởi những chiêu marketing để rồi phung phí tiền của vào những chai vang vừa đắt vừa tệ. Wineplaza xin giới thiệu: 7 điều người mới thưởng thức rượu vang phải biết” để giúp các bạn tiết kiệm thời gian tìm hiểu.\n\nTrước hết, bạn cần xác định tinh thần rằng rượu vang đắt chưa chắc đã là vang ngon – tất cả đều phụ thuộc vào khẩu vị của bạn. Chúng ta đang sống trong một kỉ nguyên của quảng cáo, chính bởi điều đó đôi khi làm những giá trị thật sự của một chai vang trở nên quá khó để biết được cho tới khi chính bạn trực tiếp thưởng thức. Trên thực tế, ngay cả các chuyên gia cũng không dám khẳng định một chai có giá gấp đôi sẽ ngon gấp đôi chai còn lại.\n\nVậy nên hãy luôn tạc ghi trong đầu điều trên để không cảm thấy tự ti khi mua những chai vang rẻ hoặc xấu hổ khi uống những chai đắt tiền không thấy ngon. Làm được điều đó cũng chính là thể hiện được đẳng cấp và sự tinh tế của bạn.","7 điều người mới uống rượu vang phải biết","","publish","open","open","","7-dieu-nguoi-moi-uong-ruou-vang-phai-biet","","","2019-03-01 10:16:56","2019-03-01 03:16:56","","0","https://tppone.com/demo/shopruou/?p=520","0","post","","0"),
("521","1","2019-03-01 10:02:18","2019-03-01 03:02:18","","138_grande","","inherit","open","closed","","138_grande","","","2019-03-01 10:02:18","2019-03-01 03:02:18","","520","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/138_grande.jpg","0","attachment","image/jpeg","0"),
("574","1","2019-03-01 10:39:03","2019-03-01 03:39:03","","Vang","","publish","closed","closed","","vang","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=574","3","nav_menu_item","","0"),
("575","1","2019-03-01 10:39:03","2019-03-01 03:39:03","","Champain","","publish","closed","closed","","champain","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=575","4","nav_menu_item","","0"),
("576","1","2019-03-01 10:39:03","2019-03-01 03:39:03","","Hộp quà tết","","publish","closed","closed","","hop-qua-tet","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=576","5","nav_menu_item","","0"),
("577","1","2019-03-01 10:39:03","2019-03-01 03:39:03","","Vang Organic","","publish","closed","closed","","vang-organic","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=577","6","nav_menu_item","","0"),
("578","1","2019-03-01 10:39:03","2019-03-01 03:39:03","","Vang bịch","","publish","closed","closed","","vang-bich","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=578","7","nav_menu_item","","0"),
("579","1","2019-03-01 10:43:51","2019-03-01 03:43:51","","icon5","","inherit","open","closed","","icon5","","","2019-03-01 10:43:51","2019-03-01 03:43:51","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/icon5.jpg","0","attachment","image/jpeg","0"),
("580","1","2019-03-01 10:43:52","2019-03-01 03:43:52","","icon1","","inherit","open","closed","","icon1-2","","","2019-03-01 10:43:52","2019-03-01 03:43:52","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/icon1.jpg","0","attachment","image/jpeg","0"),
("581","1","2019-03-01 10:43:54","2019-03-01 03:43:54","","icon2","","inherit","open","closed","","icon2-2","","","2019-03-01 10:43:54","2019-03-01 03:43:54","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/icon2.jpg","0","attachment","image/jpeg","0"),
("582","1","2019-03-01 10:43:55","2019-03-01 03:43:55","","icon3","","inherit","open","closed","","icon3-2","","","2019-03-01 10:43:55","2019-03-01 03:43:55","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/icon3.jpg","0","attachment","image/jpeg","0"),
("583","1","2019-03-01 10:43:56","2019-03-01 03:43:56","","icon4","","inherit","open","closed","","icon4-2","","","2019-03-01 10:43:56","2019-03-01 03:43:56","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/03/icon4.jpg","0","attachment","image/jpeg","0"),
("584","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Loại vang","","publish","closed","closed","","loai-vang","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=584","8","nav_menu_item","","0"),
("585","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Xuất xứ","","publish","closed","closed","","xuat-xu","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=585","12","nav_menu_item","","0"),
("586","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Vùng làm vang","","publish","closed","closed","","vung-lam-vang","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=586","16","nav_menu_item","","0"),
("587","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 1","","publish","closed","closed","","sub-menu-1","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=587","9","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("588","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 2","","publish","closed","closed","","sub-menu-2","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=588","10","nav_menu_item","","0"),
("589","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 3","","publish","closed","closed","","sub-menu-3","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=589","11","nav_menu_item","","0"),
("590","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 1","","publish","closed","closed","","sub-menu-1-2","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=590","13","nav_menu_item","","0"),
("591","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 2","","publish","closed","closed","","sub-menu-2-2","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=591","14","nav_menu_item","","0"),
("592","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu 3","","publish","closed","closed","","sub-menu-3-2","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=592","15","nav_menu_item","","0"),
("593","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu1","","publish","closed","closed","","sub-menu1","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=593","17","nav_menu_item","","0"),
("594","1","2019-03-01 10:46:33","2019-03-01 03:46:33","","Sub-menu2","","publish","closed","closed","","sub-menu2","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=594","18","nav_menu_item","","0"),
("639","1","2019-03-01 11:22:46","2019-03-01 04:22:46"," ","","","publish","closed","closed","","639","","","2019-03-01 11:22:46","2019-03-01 04:22:46","","0","https://tppone.com/demo/shopruou/?p=639","25","nav_menu_item","","0"),
("650","1","2019-05-06 16:11:14","2019-05-06 09:11:14","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:11:14\"\n    }\n}","","","trash","closed","closed","","1eea2cc7-759f-4eee-b0be-1a375324d1e6","","","2019-05-06 16:11:14","2019-05-06 09:11:14","","0","https://tppone.com/demo/shopruou/1eea2cc7-759f-4eee-b0be-1a375324d1e6/","0","customize_changeset","","0"),
("651","1","2019-05-06 17:27:37","2019-05-06 10:27:37","","shopruou","","inherit","open","closed","","shopruou","","","2019-05-06 17:27:37","2019-05-06 10:27:37","","0","https://tppone.com/demo/shopruou/wp-content/uploads/2019/05/shopruou.png","0","attachment","image/png","0"),
("652","1","2019-05-06 17:27:49","2019-05-06 10:27:49","{\n    \"shop-ruou::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/shopruou/wp-content/uploads/2019/05/shopruou.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:27:49\"\n    }\n}","","","trash","closed","closed","","b8a430e8-c804-4c28-95dc-50ccb64c65a7","","","2019-05-06 17:27:49","2019-05-06 10:27:49","","0","https://tppone.com/demo/shopruou/b8a430e8-c804-4c28-95dc-50ccb64c65a7/","0","customize_changeset","","0"),
("653","1","2019-05-10 09:00:46","2019-05-10 02:00:46","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-10 09:00:46","2019-05-10 02:00:46","","0","https://bizhostvn.com/w/shopruou/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("39","2","0"),
("40","2","0"),
("41","2","0"),
("42","2","0"),
("43","2","0"),
("44","3","0"),
("49","3","0"),
("50","3","0"),
("51","3","0"),
("52","3","0"),
("53","3","0"),
("54","3","0"),
("55","3","0"),
("177","4","0"),
("177","15","0"),
("177","17","0"),
("177","24","0"),
("177","25","0"),
("177","30","0"),
("179","4","0"),
("179","16","0"),
("179","17","0"),
("179","26","0"),
("179","29","0"),
("181","4","0"),
("181","16","0"),
("181","17","0"),
("181","26","0"),
("181","27","0"),
("181","29","0"),
("181","43","0"),
("181","49","0"),
("181","51","0"),
("181","57","0"),
("183","4","0"),
("183","16","0"),
("183","17","0"),
("183","25","0"),
("183","26","0"),
("183","28","0"),
("183","30","0"),
("185","4","0"),
("185","15","0"),
("185","17","0"),
("185","25","0"),
("185","27","0"),
("185","30","0"),
("187","4","0"),
("187","16","0"),
("187","17","0"),
("187","25","0"),
("187","29","0"),
("189","4","0"),
("189","16","0"),
("189","17","0"),
("189","27","0"),
("189","30","0"),
("189","40","0"),
("189","47","0"),
("189","49","0"),
("189","52","0"),
("189","53","0"),
("189","60","0"),
("215","4","0"),
("215","16","0"),
("215","17","0"),
("215","30","0"),
("215","33","0"),
("215","35","0"),
("215","50","0"),
("215","51","0"),
("517","1","0"),
("520","1","0"),
("520","64","0"),
("520","65","0"),
("520","66","0"),
("520","67","0"),
("520","68","0"),
("520","69","0"),
("520","70","0"),
("574","3","0"),
("575","3","0"),
("576","3","0"),
("577","3","0"),
("578","3","0"),
("584","3","0"),
("585","3","0"),
("586","3","0"),
("587","3","0"),
("588","3","0"),
("589","3","0"),
("590","3","0"),
("591","3","0"),
("592","3","0"),
("593","3","0"),
("594","3","0"),
("639","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","3"),
("2","2","nav_menu","","0","5"),
("3","3","nav_menu","","0","25"),
("4","4","product_type","","0","8"),
("5","5","product_type","","0","0"),
("6","6","product_type","","0","0"),
("7","7","product_type","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","2"),
("16","16","product_visibility","","0","6"),
("17","17","product_cat","","0","8"),
("18","18","product_cat","","0","0"),
("19","19","product_cat","","0","0"),
("20","20","product_cat","","0","0"),
("21","21","product_cat","","0","0"),
("22","22","product_cat","","0","0"),
("23","23","product_cat","","0","0"),
("24","24","product_tag","","0","1"),
("25","25","product_tag","","0","4"),
("26","26","product_tag","","0","3"),
("27","27","product_tag","","0","3"),
("28","28","product_tag","","0","1"),
("29","29","pwb-brand","","0","3"),
("30","30","pwb-brand","","0","5"),
("31","31","pa_dung-tich","","0","0"),
("32","32","pa_dung-tich","","0","0"),
("33","33","pa_dung-tich","","0","1"),
("34","34","pa_nong-do","","0","0"),
("35","35","pa_nong-do","","0","1"),
("36","36","pa_nong-do","","0","0"),
("37","37","pa_nong-do","","0","0"),
("38","38","pa_nong-do","","0","0"),
("39","39","pa_nong-do","","0","0"),
("40","40","pa_loai-vang","","0","1"),
("41","41","pa_loai-vang","","0","0"),
("42","42","pa_loai-vang","","0","0"),
("43","43","pa_xuat-xu","","0","1"),
("44","44","pa_xuat-xu","","0","0"),
("45","45","pa_xuat-xu","","0","0"),
("46","46","pa_xuat-xu","","0","0"),
("47","47","pa_xuat-xu","","0","1"),
("48","48","pa_giong-nho","","0","0"),
("49","49","pa_giong-nho","","0","2"),
("50","50","pa_giong-nho","","0","1"),
("51","51","pa_dong-chai","","0","2"),
("52","52","pa_dong-chai","","0","1"),
("53","53","pa_thoi-gian-u","","0","1"),
("54","54","pa_thoi-gian-u","","0","0"),
("55","55","pa_thoi-gian-u","","0","0"),
("56","56","pa_thoi-gian-u","","0","0"),
("57","57","pa_thoi-gian-u","","0","1"),
("58","58","pa_nien-vu","","0","0"),
("59","59","pa_nien-vu","","0","0"),
("60","60","pa_nien-vu","","0","1"),
("61","61","pa_nien-vu","","0","0"),
("62","62","pa_nien-vu","","0","0"),
("63","63","pa_nien-vu","","0","0"),
("64","64","category","","0","1"),
("65","65","category","Rượu Vang Úc Cape Mentelle Shiraz , một trong những xưởng vang đầu tiên ở vùng sông Margaret, Úc với khí hậu ôn hòa mát mẻ mang lại kết cấu lý tưởng và chất lượng ổn định cho rượu vang.\n\nRượu vang Cape Mentelle Shiraz lấy cảm hứng từ các kỹ thuật và các loại rượu vang của Thung lũng Rhône miền Bắc nước Pháp. Quả được làm lạnh và phương pháp lên men truyền thống. Được  tạo thành trong thùng gỗ sồi lớn và sau đó là các thùng nhỏ nhằm mục đích giữ được mùi hương, vị hoa quả cũng như vị cay của giống nho này.\n\nRượu Vang Cape Mentelle Shiraz hương nồng nàn của quả mâm xôi và mận, cân bằng cùng hương đại hồi và tiêu đen, vị trái cây tương đậm đà kết thúc với vị sồi cay tuyệt vời với các tamin, hậu vì kéo dài.","0","1"),
("66","66","category","","0","1"),
("67","67","category","","0","1"),
("68","68","category","","0","1"),
("69","69","post_tag","","0","1"),
("70","70","post_tag","","0","1");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","17","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","17","display_type",""),
("3","17","thumbnail_id","0"),
("4","18","order","0"),
("5","18","display_type",""),
("6","18","thumbnail_id","0"),
("7","19","order","0"),
("8","19","display_type",""),
("9","19","thumbnail_id","0"),
("10","20","order","0"),
("11","20","display_type",""),
("12","20","thumbnail_id","0"),
("13","21","order","0"),
("14","21","display_type",""),
("15","21","thumbnail_id","0"),
("16","22","order","0"),
("17","22","display_type",""),
("18","22","thumbnail_id","0"),
("19","23","order","0"),
("20","23","display_type",""),
("21","23","thumbnail_id","0"),
("22","17","product_count_product_cat","8"),
("23","24","product_count_product_tag","1"),
("24","25","product_count_product_tag","4"),
("25","26","product_count_product_tag","3"),
("26","27","product_count_product_tag","3"),
("27","28","product_count_product_tag","1"),
("28","29","pwb_brand_image","294"),
("29","30","pwb_brand_image","295"),
("30","31","order_pa_dung-tich","0"),
("31","32","order_pa_dung-tich","0"),
("32","33","order_pa_dung-tich","0"),
("33","34","order_pa_nong-do","0"),
("34","35","order_pa_nong-do","0"),
("35","36","order_pa_nong-do","0"),
("36","37","order_pa_nong-do","0"),
("37","38","order_pa_nong-do","0"),
("38","39","order_pa_nong-do","0"),
("39","40","order_pa_loai-vang","0"),
("40","41","order_pa_loai-vang","0"),
("41","42","order_pa_loai-vang","0"),
("42","43","order_pa_xuat-xu","0"),
("43","44","order_pa_xuat-xu","0"),
("44","45","order_pa_xuat-xu","0"),
("45","46","order_pa_xuat-xu","0"),
("46","47","order_pa_xuat-xu","0"),
("47","48","order_pa_giong-nho","0"),
("48","49","order_pa_giong-nho","0"),
("49","50","order_pa_giong-nho","0"),
("50","51","order_pa_dong-chai","0"),
("51","52","order_pa_dong-chai","0"),
("52","53","order_pa_thoi-gian-u","0"),
("53","54","order_pa_thoi-gian-u","0"),
("54","55","order_pa_thoi-gian-u","0"),
("55","56","order_pa_thoi-gian-u","0"),
("56","57","order_pa_thoi-gian-u","0"),
("57","58","order_pa_nien-vu","0"),
("58","59","order_pa_nien-vu","0"),
("59","60","order_pa_nien-vu","0"),
("60","61","order_pa_nien-vu","0"),
("61","62","order_pa_nien-vu","0"),
("62","63","order_pa_nien-vu","0");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Blogs","blogs","0"),
("2","Topbar menu","topbar-menu","0"),
("3","Main-menu","main-menu","0"),
("4","simple","simple","0"),
("5","grouped","grouped","0"),
("6","variable","variable","0"),
("7","external","external","0"),
("8","exclude-from-search","exclude-from-search","0"),
("9","exclude-from-catalog","exclude-from-catalog","0"),
("10","featured","featured","0"),
("11","outofstock","outofstock","0"),
("12","rated-1","rated-1","0"),
("13","rated-2","rated-2","0"),
("14","rated-3","rated-3","0"),
("15","rated-4","rated-4","0"),
("16","rated-5","rated-5","0"),
("17","Vang, Champain","vang-champain","0"),
("18","Whisky","whisky","0"),
("19","Cognac","cognac","0"),
("20","Vodka","vodka","0"),
("21","Liqueur, Tequila, Bia","liqueur-tequila-bia","0"),
("22","Rượu mini","ruou-mini","0"),
("23","Phụ kiện","phu-kien","0"),
("24","shira","shira","0"),
("25","Rượu vang đỏ Úc","ruou-vang-do-uc","0"),
("26","vang ưa chuộng","vang-ua-chuong","0"),
("27","vang đỏ úc","vang-do-uc","0"),
("28","rượu biếu tết","ruou-bieu-tet","0"),
("29","ELDERTON","elderton","0"),
("30","GEORGE WYNDHAM","george-wyndham","0"),
("31","750ml","750ml","0"),
("32","1000ml","1000ml","0"),
("33","1500ml","1500ml","0"),
("34","12%","12","0"),
("35","12.5%","12-5","0"),
("36","13%","13","0"),
("37","13.5%","13-5","0"),
("38","14%","14","0"),
("39","11%","11","0"),
("40","Vang đỏ","vang-do","0"),
("41","Vang trắng","vang-trang","0"),
("42","Sparkling","sparkling","0"),
("43","Mỹ","my","0"),
("44","Úc","uc","0"),
("45","Đức","duc","0"),
("46","Anh","anh","0"),
("47","Pháp","phap","0"),
("48","Chardonnay","chardonnay","0"),
("49","Merlot","merlot","0"),
("50","Blend","blend","0"),
("51","Nắp vặn","nap-van","0"),
("52","Nút bần","nut-ban","0"),
("53","6 tháng","6-thang","0"),
("54","12 tháng","12-thang","0"),
("55","24 tháng","24-thang","0"),
("56","18 tháng","18-thang","0"),
("57","36 tháng","36-thang","0"),
("58","2012","2012","0"),
("59","2013","2013","0"),
("60","2014","2014","0"),
("61","2015","2015","0"),
("62","2016","2016","0"),
("63","2017","2017","0"),
("64","Vùng trồng nho","vung-trong-nho","0"),
("65","Các giống nho","cac-giong-nho","0"),
("66","Nghệ thuật thưởng thức","nghe-thuat-thuong-thuc","0"),
("67","Kể chuyện rượu vang","ke-chuyen-ruou-vang","0"),
("68","Giới thiệu rượu vang","gioi-thieu-ruou-vang","0"),
("69","nghệ thuật trồng nho","nghe-thuat-trong-nho","0"),
("70","hướng dẫn sử dụng vang nho","huong-dan-su-dung-vang-nho","0");




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
("14","1","dismissed_wp_pointers","wp496_privacy,text_widget_custom_html,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:7:{s:64:\"8f6ac15149c513210aa47b9e3a46a4a8af07f0b57be30cb8704573c858579693\";a:4:{s:10:\"expiration\";i:1557485937;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557313137;}s:64:\"a479930c26d0ba69927c99f1c522c8168bef134fa5371778bfee926f3e94b796\";a:4:{s:10:\"expiration\";i:1557616630;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443830;}s:64:\"3e9ae8308bff91434a03e9f220e117a929f6f61d30ae9130d67c7f457dfa74a1\";a:4:{s:10:\"expiration\";i:1557625831;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453031;}s:64:\"ac2229262ea384c193acd236745c5beaeecf95899784ee877aeae8db55aabc86\";a:4:{s:10:\"expiration\";i:1557628387;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455587;}s:64:\"634dae7961f5fc208dd9a6c2c919be7d8a1e8f8e9925c53924d0ccbde43111ba\";a:4:{s:10:\"expiration\";i:1557628797;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455997;}s:64:\"47e88d6f7426881f6d109324accbd7a530d2c68c002bd5ff6f551ca8c0f59e09\";a:4:{s:10:\"expiration\";i:1557638163;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557465363;}s:64:\"7b6ce7545e40e2188fa3525ab6a27168f73521b90ac936c31f5c5e60a6fb0ed0\";a:4:{s:10:\"expiration\";i:1557658483;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557485683;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","649"),
("18","1","show_try_gutenberg_panel","0"),
("19","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557453031"),
("23","1","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("25","1","nav_menu_recently_edited","3"),
("26","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("27","1","wc_last_active","1557446400"),
("28","1","dismissed_no_shipping_methods_notice","1"),
("29","1","dismissed_no_secure_connection_notice","1"),
("31","1","duplicator_pro_created_format","1"),
("44","1","_woocommerce_tracks_anon_id","woo:HygRe4JGLEA4r3Y1s1XK/IW1"),
("46","1","_woocommerce_load_saved_cart_after_login","1");




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
("1","admin","$P$Btm1tZWmvmPyY3K5DNIhwdkK/7NnyD0","admin","demobz@gmail.com","","2019-02-25 10:28:00","","0","admin");




CREATE TABLE `bz_wc_avatars_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `maketime` int(11) NOT NULL DEFAULT '0',
  `cached` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`),
  KEY `user_id` (`user_id`),
  KEY `url` (`url`),
  KEY `hash` (`hash`),
  KEY `maketime` (`maketime`),
  KEY `cached` (`cached`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_wc_comments_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribtion_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `subscribtion_type` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `confirm` tinyint(4) DEFAULT '0',
  `subscription_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribe_unique_index` (`subscribtion_id`,`email`,`post_id`),
  KEY `subscribtion_id` (`subscribtion_id`),
  KEY `post_id` (`post_id`),
  KEY `confirm` (`confirm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






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






CREATE TABLE `bz_wc_follow_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_email` varchar(125) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `follower_id` int(11) NOT NULL DEFAULT '0',
  `follower_email` varchar(125) NOT NULL,
  `follower_name` varchar(255) NOT NULL,
  `activation_key` varchar(32) NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT '0',
  `follow_timestamp` int(11) NOT NULL,
  `follow_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `follow_unique_key` (`user_email`,`follower_email`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `user_email` (`user_email`),
  KEY `follower_id` (`follower_id`),
  KEY `follower_email` (`follower_email`),
  KEY `confirm` (`confirm`),
  KEY `follow_timestamp` (`follow_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_wc_phrases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_key` varchar(255) NOT NULL,
  `phrase_value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phrase_key` (`phrase_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






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






CREATE TABLE `bz_wc_users_voted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `vote_type` int(11) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  KEY `vote_type` (`vote_type`),
  KEY `is_guest` (`is_guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_attribute_taxonomies VALUES
("1","dung-tich","Dung tích","select","menu_order","1"),
("2","nong-do","Nồng độ","select","menu_order","1"),
("3","loai-vang","Loại vang","select","menu_order","1"),
("4","xuat-xu","Xuất xứ","select","menu_order","1"),
("5","giong-nho","Giống nho","select","menu_order","1"),
("6","nien-vu","Niên vụ","select","menu_order","1"),
("7","thoi-gian-u","Thời gian ủ","select","menu_order","1"),
("8","dong-chai","Đóng chai","select","menu_order","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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