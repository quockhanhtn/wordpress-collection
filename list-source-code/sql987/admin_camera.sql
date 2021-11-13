SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w47`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_commentmeta VALUES
("1","2","rating","5"),
("2","2","verified","0"),
("3","3","rating","4"),
("4","3","verified","0"),
("5","4","rating","5"),
("6","4","verified","0"),
("7","5","rating","5"),
("8","5","verified","0"),
("9","6","rating","5"),
("10","6","verified","0"),
("11","7","rating","5"),
("12","7","verified","0"),
("13","8","rating","5"),
("14","8","verified","0"),
("15","9","rating","4"),
("16","9","verified","0"),
("17","10","rating","5"),
("18","10","verified","0"),
("19","11","rating","5"),
("20","11","verified","0"),
("21","12","rating","5"),
("22","12","verified","0"),
("23","13","rating","5"),
("24","13","verified","0"),
("25","14","rating","5"),
("26","14","verified","0"),
("27","15","rating","5"),
("28","15","verified","0"),
("29","16","rating","5"),
("30","16","verified","0"),
("31","17","rating","5"),
("32","17","verified","0"),
("33","18","rating","4"),
("34","18","verified","0"),
("35","19","rating","5"),
("36","19","verified","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-03-09 05:27:45","2019-03-09 05:27:45","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","173","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:08:44","2019-03-09 17:08:44","Sản phẩm tốt!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("3","170","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:10:13","2019-03-09 17:10:13","Sản phẩm tốt trong tầm giá!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("4","168","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:10:53","2019-03-09 17:10:53","Sản phẩm hay quá!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("5","166","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:11:17","2019-03-09 17:11:17","Sản phẩm tuyệt vời~","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("6","204","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:26","2019-03-09 17:13:26","Sản phẩm tốt!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("7","202","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:39","2019-03-09 17:13:39","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("8","200","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:48","2019-03-09 17:13:48","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("9","198","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:59","2019-03-09 17:13:59","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("10","196","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:10","2019-03-09 17:14:10","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("11","194","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:20","2019-03-09 17:14:20","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("12","192","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:30","2019-03-09 17:14:30","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("13","190","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:41","2019-03-09 17:14:41","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("14","206","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:18:30","2019-03-09 17:18:30","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("15","218","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:18:42","2019-03-09 17:18:42","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("16","216","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:02","2019-03-09 17:19:02","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("17","214","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:25","2019-03-09 17:19:25","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("18","210","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:35","2019-03-09 17:19:35","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("19","208","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:54","2019-03-09 17:19:54","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("20","538","WooCommerce","woocommerce@camera.Webdemo.com","","","2019-03-10 23:10:23","2019-03-10 16:10:23","Chờ thanh toán chuyển khoản Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Tạm giữ.","0","1","WooCommerce","order_note","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/camera\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1552640500,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960274,\"initial_activation_timestamp\":1552640510,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025864,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=1844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/camera","yes"),
("2","home","https://bizhostvn.com/w/camera","yes"),
("3","blogname","camera","yes"),
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
("21","default_pingback_flag","0","yes"),
("22","posts_per_page","10","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:150:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:6:\"mua/?$\";s:27:\"index.php?post_type=product\";s:36:\"mua/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:31:\"mua/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:23:\"mua/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:49:\"chuyen-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"chuyen-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"chuyen-muc/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"chuyen-muc/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:19:\"chuyen-muc/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","/chuyen-muc","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:94:\"/home/tppone/domains/tppone.com/public_html/demo/camera/wp-content/themes/camera/functions.php\";i:2;s:90:\"/home/tppone/domains/tppone.com/public_html/demo/camera/wp-content/themes/camera/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","camera","yes"),
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
("54","tag_base","/tag","yes"),
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
("78","widget_categories","a:2:{i:4;a:4:{s:5:\"title\";s:22:\"Danh mục bài viết\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:28:\"Cam kết của chúng tôi:\";s:4:\"text\";s:192:\"Chúng tôi chỉ bán hàng chính hãng và đúng giá, vui lòng tham khảo kỹ trước khi đặt mua.\nMọi nhu cầu cần giải đáp, vui lòng liên hệ trực tiếp hotline: \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:27:\"Cam kết của chúng tôi\";s:4:\"text\";s:192:\"Chúng tôi chỉ bán hàng chính hãng và đúng giá, vui lòng tham khảo kỹ trước khi đặt mua.\nMọi nhu cầu cần giải đáp, vui lòng liên hệ trực tiếp hotline: \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("94","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:2:{i:0;s:12:\"categories-4\";i:1;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:6:\"text-3\";}s:15:\"product-sidebar\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:6:\"text-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:13:{i:1557983400;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557984086;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557984466;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557984533;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557986881;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557996717;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558018229;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558048886;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558048896;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059686;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("113","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552142224;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("130","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1552473179;}","no"),
("149","new_admin_email","webdemo@gmail.com","yes"),
("156","recently_activated","a:3:{s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025865;s:30:\"db-prefix-change/db_prefix.php\";i:1557012181;s:23:\"wp-rocket/wp-rocket.php\";i:1557012125;}","yes"),
("162","current_theme","Camera","yes"),
("163","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 09 Mar 2019 14:37:05 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552142258;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("164","theme_switched","","yes"),
("165","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"Bài viết mới nhất\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("166","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("168","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("169","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("170","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("171","flatsome_wup_buyer","trannguyen886","yes"),
("172","allowedthemes","a:1:{s:6:\"camera\";b:1;}","no"),
("173","fl_has_child_theme","camera","yes"),
("175","theme_mods_camera","a:173:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:7:\"block-1\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:9:\"divider_5\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:1:{i:0;s:11:\"search-form\";}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";s:12:\"left-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 09 Mar 2019 14:37:40 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:11012:\".header-bottom-nav li{margin:0}\n.header-bottom-nav li a{padding-left:15px; padding-right:15px; line-height:30px; font-size:17px; }\n.nav-dropdown-default {\n    padding: 10px;\n}\n.success-color {\n    color: white;\n    background: #9ec55a;\n    padding: 10px;\n    border-radius: 4px;\n    font-size: 15px;\n\n}.cart_totals  span.amountt{color:red}\n.address-field{width:100% !important}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{    margin-bottom: 0; font-size:15px; box-shadow:none; border-radius:4px}\n.blog-single .entry-meta .danh-muc{display: block;\n    margin-bottom: 6px;}\n.blog-single .the-tim-kiem a{background: #e4e4e4;\n    padding: 5px;\n    color: #6e6e6e;\n    margin-bottom: 5px;\n}\n.blog-single .the-tim-kiem a:hover{background: #1e73be; color:white}\n.blog-single .col{padding-bottom:0}\n.blog-single{padding-bottom:0}\n.blog-single .article-inner .entry-meta{font-size:15px}\n.blog-single .entry-content{padding:0}\n.blog-single .post-sidebar{padding-left:0}\n.blog-archive h1.page-title{font-size:22px; color:#1e73be}\n.blog-archive .post-item .box-text .post-title:hover{color:#1e73be !important}\n.blog-archive .post-item{padding-bottom:0 !important}\n.blog-archive .large-9 .badge {display:none}\n.recent-blog-posts-li .badge-inner{border-radius:99%}\n.recent-blog-posts-li a{font-size:15px}\n.blog-archive .post-sidebar{padding-right:0}\n.row-lien-he .cot1 input[type=\'tel\']{margin-bottom:0; border-radius:4px}\n.wpcf7-submit{font-size:15px !important; font-weight:normal !important; border-radius:3px !important; text-transform:none !important}\n.row-lien-he input[type=\'tel\'], .row-lien-he input[type=\'text\'], .row-lien-he textarea {margin-bottom:10px}\n.woocommerce .is-well{padding:20px; font-size:15px}\n.woocommerce-order-details h2, .woocommerce-customer-details h2{font-size:18px}\n#order_review button{border-radius:4px; font-weight:normal; text-transform:none}\n.has-border {\n    border: 2px solid #446084;\n    padding: 15px 20px 11px;\n}\n.woocommerce-billing-fields__field-wrapper  .form-row label{font-family: \"barlow\", sans-serif;\n    color: #1e73be;}\n.cart_totals .button{    font-weight: normal;\n    text-transform: none; border-radius:4px}\n.continue-shopping a, .continue-shopping button{    font-weight: normal;\n    text-transform: none;}\n.shop_table thead th, .shop_table .order-total td, .shop_table .order-total th{    text-transform: none;\n    font-family: \"barlow\", sans-serif;\n    font-size: 18px;\n    letter-spacing: 0;\n    color: #1e73be;}\nul.product_list_widget li a:not(.remove){font-size: 13px;\n    color: #1e73be;}\n.widget_shopping_cart .button{text-transform:none; font-weight:normal; font-size:15px}\n.header-block{padding-top:3px !important}\n.header-bottom-nav li a:hover, .header-bottom-nav >li.active>a, .header-bottom-nav .current-menu-item a{background:#004e92; color:white}\n.header-button a{line-height:20px}\nli.html input{height:40px; box-shadow: none;\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 3px;}.searchform .button.icon {height:40px !important;\n    border-top-right-radius: 4px;\n    border-bottom-right-radius: 4px;\n    background: #004e92;\n    height: 35px;\n    width: 57px;\n}\n.header-cart-icon img{max-width:40px}\n.account-link .image-icon img {    max-width: 40px;\n    border: 2px solid #1e73be;\n}\n.row-tieu-chi{margin-top:17px !important\n}\n.row-tieu-chi .icon-box .icon-box-text p{padding-top:3px; color:#1e72ba}\n.section-title b{    background-color: #1e73be;}\n.footer-secondary{padding:0}\n.footer-section {border-top:1px solid #ececec}\n.danh-muc-sp-section .product-category .box-image .image-cover{border-radius:10px}\n.danh-muc-sp-section .col, .tin-tuc .col{padding-bottom:0}\n.danh-muc-sp-section .product-category .box-text{    padding: 10px;\n    border-bottom-left-radius: 10px;\n    border-bottom-right-radius: 10px;\n    background-image: linear-gradient(#0087ff00, #000000);\n    padding-top: 50px;}\n.danh-muc-sp-section .product-category .image-cover{\n    border: 3px solid white;}\n.danh-muc-sp-section .product-category .col-innerr:hover {border-bottom:2px solid gray}\n.row-tieu-chi .icon-box{line-height:20px}\n.nav>li.header-divider{margin:0}\n.header-cart-title, .header-account-title{font-size: 15px;\n    text-transform: none;\n    font-weight: normal;\n    letter-spacing: 0;\n    color: black;}\n.category-section .badge-container .badge-inner{background:#1e73be; border-radius:99%; font-weight:normal}\n.category-section .badge-container{margin:10px}\n.section-title-container {\n    margin-bottom: 10px;\n}\n.tin-tuc{padding-top:10px; padding-bottom:0 !important}\n.category-section .col{padding-bottom:0 !important}\n.section-title a:hover{color:red}\n.star-rating span:before, .star-rating:before, .woocommerce-page .star-rating:before {\n	color: #ffac00;}\n.category-section .product-small .box-text .price ins span, .single-product .product-info .price ins span{font-size:22px; font-weight:bold; color:red; font-family: \"barlow\", sans-serif;}\n.single-product .product-info .cart{margin-bottom:0}\n.single-product .product-info .price del span{color:gray; font-size:14px}\n\n.category-section .product-small .box-text .product-title {margin-bottom:10px}\n.flickity-prev-next-button svg, .flickity-prev-next-button .arrow{border-color: currentColor;\n    fill: #1e73be;\n    transition: all 0.3s;\n    background: white;\n    border-radius: 99%;}\n.archive .product-small.box .product-title a:hover{color:#1e73be !important}\n.archive .product-small.box .product-title a {color:black !important;}\n.category-section .product-small .box-text .product-title a, .tin-tuc .post-item .post-title{color:black}\n.tin-tuc .post-item .post-title{font-size:19px}\n.related .product-small.box .box-text, .archive .product-small.box .box-text{padding: 10px 0}\n.related .product-small.box .price ins span, .archive .product-small.box .price ins span{color:red; font-family:\"barlow\", sans-serif; font-size:19px}\n.related .product-small.box, .archive .product-small.box{    border: 1px solid #eaeaea;\n    padding: 10px;\n    border-radius: 4px;}.tin-tuc .post-item .post-title:hover{color:#1e73be}\n.tin-tuc .post-item .box-image .image-cover{border-radius:10px}\n.banner-section img{border-radius:10px}\n.category-section .product-small .box-text{padding:0; padding-bottom:10px}\n.category-section .product-small.box { margin-bottom: 18px;   border: 1px solid #ececec;\n    padding: 10px;\n    border-radius: 4px;}\n.section-title a{font-size:15px; font-weight:normal}\n.header-block .icon-box .icon-box-text{    padding-left: 5px;\n    font-size: 15px;\n    line-height: 19px;\n    padding-top: 4px;}\n.product-main {\n    padding: 20px 0;\n}\n.thong-tin-ban-hang .clearboth{clear:both}\n.thong-tin-ban-hang .right{width:50%; float:left; padding-left:10px; display:inline-block}\n.thong-tin-ban-hang ul li{margin-bottom: 3px;\n    background: url(https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/check@2x.png);\n    background-repeat: no-repeat;\n    list-style: none;\n    padding-left: 24px;\n    background: url(/wp-content/uploads/2019/03/check@2x.png);\n    background-repeat: no-repeat;\n    background-size: 13px;\n    background-position-y: 7px;\n    margin-left: 0;}\n.thong-tin-ban-hang ul li .label{    font-weight: bold;\n    color: #004e92;}\n.thong-tin-ban-hang h3{color:red}\n.thong-tin-ban-hang ul{margin-bottom:0; margin-left:0px}\n.thong-tin-ban-hang .left{width:50%; float:left; padding-right:10px; display:inline-block}\n.thong-tin-ban-hang{    font-family: \"barlow\", sans-serif;\n    width: 100%; font-size:17px;\n    display: inline-block;\n    background: #fcfcfc;\n    padding: 20px;\n    margin-bottom: 40px;\n    border: 1px dashed #dedede;}\n\n.single-product .product-short-description p{margin-bottom:5px}\n.dark .breadcrumbs {\n    color: #40e8ffe6;\n    font-weight: normal;\n}\n.woocommerce-ordering select{font-size:15px}\n.single-product .product-short-description{height:80px; overflow:hidden; font-size: 14px;\n    background: #f8f8f8;\n    padding: 10px; margin-bottom:20px;\n    color: #414141;}\n.single-product .zoom-button{border: 1px solid currentColor !important;}\n.section-title-normal span{border-bottom: 2px solid rgb(30, 115, 190);}\n.single-product #product-sidebar{padding-bottom:0; border-right:0; padding-right:10px}\n.widget .current-cat>a{color:#1e73be; font-weight:normal}\n.widget_product_categories li a{color:black}\n.widget_product_categories li{font-size:16px}\n.widget_product_categories{border: 1px solid #eaeaea;\n    padding: 10px;}\n.single-product .product-info .product-title{font-size: 22px;\n    color: #0d3d73;}\n.single-product .product-info{padding-top:0; padding-bottom:0}\n.single-product #review_form_wrapper{margin-bottom:20px}\n.single-proudct .comment-form .submit{    font-weight: normal;\n    text-transform: none}\n.single-product .comment-form{margin-bottom:0 !important}\n.single-product .review-form-inner{    padding: 15px 30px 0px;}\n.single-product #reviews .large-12{padding-bottom:0px}\n.single-product #reviews h3{color:#1e73be}\n.single-product .share-icons a{border: 1px solid silver;}\n.single-product .product-section-title{    margin: 0;\n    letter-spacing: 0;\n    text-transform: none;\n    font-size: 22px;\n    color: #1e73be;}\n.product_meta>span {\n    display: block;\n font-size: 15px;\n}\n.widget .is-divider{display:none}\nspan.widget-title {display: block;\n    padding-bottom: 10px;\n    border-bottom: 1px solid #eaeaea;\n    font-size: 20px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-weight: bold;\n    font-family: \"barlow\", sans-serif;\n    color: #1e73be;\n}\n.textwidget{font-size:15px; margin-top:10px}\n.widget{border: 1px solid #eaeaea;\n    padding: 10px;}\n.single-product .product-tabs li.active>a{font-size:22px; color: rgb(30, 115, 190);}\n.product-footer .woocommerce-tabs {border-bottom: 1px solid #eaeaea;\n    padding: 0;\n    border-top: none;\n}\n.nav-line-bottom>li>a:before, .nav-line-grow>li>a:before, .nav-line>li>a:before{height:0}\n.single-product .product-tabs{font-size:22px; border-bottom:1px solid #eaeaea}\nspan.devvn_title{font-family:\"barlow\", sans-serif}\n.devvn-popup-title, .popup-customer-info-group .devvn-order-btn{background:#1e73be !important; font-family:\"barlow\", sans-serif}\na.devvn_buy_now_style span {\n    display: block;\n	font-size: 12px;}\na.devvn_buy_now_style strong{font-size:22px; font-weight:normal; font-family:\"barlow\", sans-serif}\na.devvn_buy_now_style{    max-width: 300px; margin-bottom:5px}\n.single-product .badge{width:40px; height:40px}\n.single-product .badge-container .badge-inner, .archive .badge-container .badge-inner{border-radius:99%; font-weight:normal; font-size: 14px; background:red}\n.devvn_readmore_taxonomy_flatsome a{text-align:left}\n.devvn_readmore_flatsome a {\n\n    text-align: left;\n    margin-bottom: 10px;\n}\n.single-product .badge-container, .archive .badge-container{margin:10px;}\n.product-gallery-slider img{    border: 1px solid #eaeaea;}\n.single_add_to_cart_button{    background-color: #004a8b;\n    text-transform: none;\n    font-weight: normal;\n    border-radius: 4px;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:801:\".off-canvas-left.dark .mfp-content{background: #1e73be}\n.icon-box-left .icon-box-img+.icon-box-text {\n    padding-left: 5px;\n    font-size: 13px;\n    line-height: 15px;\n}\n.danh-muc-sp-section .gap-element{display:none !important}\n.danh-muc-sp-section .product-category {flex-basis:50%; max-width:50%;    padding: 0 2.8px 0px; margin-bottom:3px}\n.section{    padding-top: 10px !important;\n    padding-bottom: 10px !important;}\na.devvn_buy_now_style{max-width:100% !important}\n.thong-tin-ban-hang .left, .thong-tin-ban-hang .right{width:100%; padding-right:0; padding-left:0}\n.featured-title .page-title-inner {\n    padding-bottom: 0px; padding-top:15px;\n}\n.blog-archive .post-item .post-title{font-size:16px}\n.blog-single .post-sidebar{padding-left:15px}\n.blog-archive .post-sidebar{padding-right:15px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:39:\"Tìm kiếm sản phẩm, danh mục...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:9:\"site_logo\";s:68:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/05/camera.jpg\";s:10:\"logo_width\";s:3:\"244\";s:12:\"logo_padding\";s:1:\"1\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#f2f2f2\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"95\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#1e73be\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:6:\"medium\";s:20:\"nav_uppercase_bottom\";b:0;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:24:\"header_search_categories\";b:0;s:19:\"header_search_width\";s:2:\"84\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:14:\"header-block-1\";s:6:\"header\";s:11:\"topbar_left\";s:55:\"Chào mừng bạn đến với mẫu web của Webdemo\";s:9:\"type_size\";s:3:\"100\";s:15:\"header_button_1\";s:20:\"Liên hệ báo giá\";s:20:\"header_button_1_link\";s:19:\"https://Webdemo.com\";s:27:\"header_button_1_link_target\";s:6:\"_blank\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:21:\"header_button_1_color\";s:7:\"primary\";s:15:\"cart_icon_style\";s:5:\"plain\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:16:\"custom_cart_icon\";s:74:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cart-icon-01.jpg\";s:18:\"account_icon_style\";s:5:\"image\";s:23:\"header_account_username\";b:0;s:23:\"header_account_register\";b:1;s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"11\";s:13:\"header_sticky\";b:0;s:27:\"category_force_image_height\";b:1;s:16:\"products_pr_page\";s:2:\"40\";s:18:\"category_row_count\";s:1:\"4\";s:20:\"category_title_style\";s:8:\"featured\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:19:\"category_show_title\";b:1;s:23:\"header_shop_bg_featured\";b:0;s:20:\"header_shop_bg_image\";s:69:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/slider2.jpg\";s:20:\"header_shop_bg_color\";s:7:\"#0d3d73\";s:20:\"category_filter_text\";s:25:\"Phân loại sản phẩm\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:5:\"shade\";s:13:\"product_hover\";s:4:\"zoom\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:7:\"disable\";s:20:\"product_box_category\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:16:\"footer_left_text\";s:154:\"Copyright [ux_current_year] © <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thiết kế bởi <a href=\"https://Webdemo.com\">Webdemo</a>\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_color\";s:7:\"#1e73be\";s:17:\"footer_right_text\";s:25:\"Hỗ trợ kỹ thuật: \";s:14:\"product_header\";s:8:\"featured\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"4\";s:21:\"product_title_divider\";b:0;s:25:\"product_info_review_count\";b:1;s:18:\"product_tabs_align\";s:4:\"left\";s:9:\"tab_title\";s:0:\"\";s:11:\"tab_content\";s:0:\"\";s:23:\"related_products_pr_row\";s:1:\"5\";s:21:\"category_image_height\";s:3:\"100\";s:13:\"color_primary\";s:7:\"#1e73be\";s:15:\"color_secondary\";s:7:\"#004a8b\";s:11:\"color_texts\";s:7:\"#2d2d2d\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#1e73be\";s:17:\"color_links_hover\";s:7:\"#004a8b\";s:18:\"color_widget_links\";s:7:\"#1e73be\";s:24:\"color_widget_links_hover\";s:7:\"#004a8b\";s:15:\"product_display\";s:4:\"tabs\";s:17:\"product_info_meta\";b:1;s:18:\"product_info_share\";b:0;s:11:\"blog_layout\";s:12:\"left-sidebar\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:16:\"blog_post_layout\";s:13:\"right-sidebar\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#1e73be\";}","yes"),
("177","envato_setup_complete","1552142267","yes"),
("182","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("191","woocommerce_store_address","Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán","yes"),
("192","woocommerce_store_address_2","Hà Đông","yes"),
("193","woocommerce_store_city","Hà Nội","yes"),
("194","woocommerce_default_country","VN","yes"),
("195","woocommerce_store_postcode","150000","yes"),
("196","woocommerce_allowed_countries","specific","yes"),
("197","woocommerce_all_except_countries","a:0:{}","yes"),
("198","woocommerce_specific_allowed_countries","a:1:{i:0;s:2:\"VN\";}","yes"),
("199","woocommerce_ship_to_countries","","yes"),
("200","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("201","woocommerce_default_customer_address","","yes"),
("202","woocommerce_calc_taxes","no","yes"),
("203","woocommerce_enable_coupons","yes","yes"),
("204","woocommerce_calc_discounts_sequentially","no","no"),
("205","woocommerce_currency","VND","yes"),
("206","woocommerce_currency_pos","right","yes"),
("207","woocommerce_price_thousand_sep",".","yes"),
("208","woocommerce_price_decimal_sep",".","yes"),
("209","woocommerce_price_num_decimals","0","yes"),
("210","woocommerce_shop_page_id","513","yes"),
("211","woocommerce_cart_redirect_after_add","no","yes"),
("212","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("213","woocommerce_placeholder_image","620","yes"),
("214","woocommerce_weight_unit","kg","yes"),
("215","woocommerce_dimension_unit","cm","yes"),
("216","woocommerce_enable_reviews","yes","yes"),
("217","woocommerce_review_rating_verification_label","yes","no"),
("218","woocommerce_review_rating_verification_required","no","no"),
("219","woocommerce_enable_review_rating","yes","yes"),
("220","woocommerce_review_rating_required","yes","no"),
("221","woocommerce_manage_stock","yes","yes"),
("222","woocommerce_hold_stock_minutes","60","no"),
("223","woocommerce_notify_low_stock","yes","no"),
("224","woocommerce_notify_no_stock","yes","no"),
("225","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("226","woocommerce_notify_low_stock_amount","2","no"),
("227","woocommerce_notify_no_stock_amount","0","yes"),
("228","woocommerce_hide_out_of_stock_items","no","yes"),
("229","woocommerce_stock_format","","yes"),
("230","woocommerce_file_download_method","force","no"),
("231","woocommerce_downloads_require_login","no","no"),
("232","woocommerce_downloads_grant_access_after_payment","yes","no"),
("233","woocommerce_prices_include_tax","no","yes"),
("234","woocommerce_tax_based_on","shipping","yes"),
("235","woocommerce_shipping_tax_class","inherit","yes"),
("236","woocommerce_tax_round_at_subtotal","no","yes"),
("237","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("238","woocommerce_tax_display_shop","excl","yes"),
("239","woocommerce_tax_display_cart","excl","yes"),
("240","woocommerce_price_display_suffix","","yes"),
("241","woocommerce_tax_total_display","itemized","no"),
("242","woocommerce_enable_shipping_calc","yes","no"),
("243","woocommerce_shipping_cost_requires_address","no","yes"),
("244","woocommerce_ship_to_destination","billing","no"),
("245","woocommerce_shipping_debug_mode","no","yes"),
("246","woocommerce_enable_guest_checkout","yes","no"),
("247","woocommerce_enable_checkout_login_reminder","no","no"),
("248","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("249","woocommerce_enable_myaccount_registration","no","no"),
("250","woocommerce_registration_generate_username","yes","no"),
("251","woocommerce_registration_generate_password","yes","no"),
("252","woocommerce_erasure_request_removes_order_data","no","no"),
("253","woocommerce_erasure_request_removes_download_data","no","no"),
("254","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("255","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("256","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("257","woocommerce_trash_pending_orders","","no"),
("258","woocommerce_trash_failed_orders","","no"),
("259","woocommerce_trash_cancelled_orders","","no"),
("260","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no");
INSERT INTO bz_options VALUES
("261","woocommerce_email_from_name","Mẫu website bán Camera &#8211; Thiết kế website Webdemo.com","no"),
("262","woocommerce_email_from_address","webdemo@gmail.com","no"),
("263","woocommerce_email_header_image","","no"),
("264","woocommerce_email_footer_text","{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("265","woocommerce_email_base_color","#96588a","no"),
("266","woocommerce_email_background_color","#f7f7f7","no"),
("267","woocommerce_email_body_background_color","#ffffff","no"),
("268","woocommerce_email_text_color","#3c3c3c","no"),
("269","woocommerce_cart_page_id","514","yes"),
("270","woocommerce_checkout_page_id","515","yes"),
("271","woocommerce_myaccount_page_id","516","yes"),
("272","woocommerce_terms_page_id","","no"),
("273","woocommerce_force_ssl_checkout","no","yes"),
("274","woocommerce_unforce_ssl_checkout","no","yes"),
("275","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("276","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("277","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("278","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("279","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("280","woocommerce_myaccount_orders_endpoint","orders","yes"),
("281","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("282","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("283","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("284","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("285","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("286","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("287","woocommerce_logout_endpoint","customer-logout","yes"),
("288","woocommerce_api_enabled","no","yes"),
("289","woocommerce_single_image_width","600","yes"),
("290","woocommerce_thumbnail_image_width","300","yes"),
("291","woocommerce_checkout_highlight_required_fields","yes","yes"),
("292","woocommerce_demo_store","yes","yes"),
("293","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("294","current_theme_supports_woocommerce","yes","yes"),
("295","woocommerce_queue_flush_rewrite_rules","no","yes"),
("298","default_product_cat","17","yes"),
("302","woocommerce_db_version","3.5.6","yes"),
("303","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("307","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("311","widget_woocommerce_product_categories","a:3:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}i:3;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("312","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("313","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("315","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("316","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("317","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("318","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("319","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("331","woocommerce_meta_box_errors","a:0:{}","yes"),
("333","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("598","woocommerce_demo_store_notice","Đây là mẫu web của Webdemo, không phải website bán hàng chính thức!","yes"),
("767","category_children","a:0:{}","yes"),
("866","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:8:\"Mua ngay\";s:12:\"button_text2\";s:51:\"Gọi điện xác nhận và giao hàng tận nơi\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"Đặt mua %s\";s:10:\"popup_mess\";s:143:\"Bạn vui lòng nhập đúng số điện thoại để chúng tôi sẽ gọi xác nhận đơn hàng trước khi giao hàng. Xin cảm ơn!\";s:12:\"popup_sucess\";s:632:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">Đặt hàng thành công!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">Mã đơn hàng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">GIUSEART sẽ liên hệ với bạn trong 12h tới. Cám ơn bạn đã cho chúng tôi cơ hội được phục vụ.\n<strong>Hotline:</strong> </p>\n<p class=\"clearfix\"><strong>Ghi chú: </strong>Đơn hàng chỉ có hiệu lực trong vòng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"Đặt hàng thất bại. Vui lòng đặt hàng lại. Xin cảm ơn!\";s:17:\"out_of_stock_mess\";s:12:\"Hết hàng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("941","acf_version","5.7.7","yes"),
("1083","product_cat_children","a:0:{}","yes"),
("1112","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1552258112;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("1123","woocommerce_cheque_settings","a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:22:\"Kiểm tra thanh toán\";s:11:\"description\";s:187:\"Vui lòng gửi chi phiếu của bạn đến Tên cửa hàng, Đường của cửa hàng, Thị trấn của cửa hàng, Bang / Hạt của cửa hàng, Mã bưu điện cửa hàng.\";s:12:\"instructions\";s:0:\"\";}","yes"),
("1124","woocommerce_bacs_settings","a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}","yes"),
("1125","woocommerce_cod_settings","a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:35:\"Trả tiền mặt khi nhận hàng\";s:11:\"description\";s:33:\"Trả tiền mặt khi giao hàng\";s:12:\"instructions\";s:33:\"Trả tiền mặt khi giao hàng\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}","yes"),
("1127","woocommerce_gateway_order","a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}","yes"),
("1426","duplicator_pro_package_active","{\"Created\":\"2019-03-15 09:03:30\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.10\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190315_mauwebsitebancamerathietke\",\"Hash\":\"511d48040dfd9c2a7168_20190315090330\",\"NameHash\":\"20190315_mauwebsitebancamerathietke_511d48040dfd9c2a7168_20190315090330\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/camera\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190315_mauwebsitebancamerathietke_511d48040dfd9c2a7168_20190315090330_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\",\"Size\":102529818,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"camera-quan-s\\u00e1t.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t.jpg\"},{\"name\":\"camera-quan-s\\u00e1t-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t-150x150.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera-150x150.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-100x100.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera-100x100.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh-100x100.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh-150x150.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-150x150.jpg\"},{\"name\":\"camera-quan-s\\u00e1t-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t-100x100.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web01\",\"tablesBaseCount\":30,\"tablesFinalCount\":30,\"tablesRowCount\":2094,\"tablesSizeOnDisk\":3588096,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1428","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1456","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:19;s:3:\"all\";i:19;s:8:\"approved\";s:2:\"19\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1457","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:2:\"19\";s:14:\"total_comments\";i:19;s:3:\"all\";i:19;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1487","db_upgraded","","yes"),
("1502","_transient_timeout_wc_low_stock_count","1559604032","no"),
("1503","_transient_wc_low_stock_count","0","no"),
("1504","_transient_timeout_wc_outofstock_count","1559604032","no"),
("1505","_transient_wc_outofstock_count","0","no"),
("1507","can_compress_scripts","0","no"),
("1527","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1530","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1531","woocommerce_allow_tracking","no","no"),
("1532","woocommerce_show_marketplace_suggestions","yes","no"),
("1533","woocommerce_version","3.6.2","yes"),
("1534","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("1547","dbprefix_old_dbprefix","cmr_","yes"),
("1548","dbprefix_new","bz_","yes"),
("1607","_transient_timeout_wc_term_counts","1560441351","no"),
("1608","_transient_wc_term_counts","a:6:{i:18;s:1:\"4\";i:19;s:1:\"8\";i:20;s:1:\"6\";i:17;s:1:\"4\";i:21;s:2:\"10\";i:22;s:1:\"3\";}","no"),
("1649","_transient_shipping-transient-version","1557133416","yes"),
("1650","_transient_timeout_wc_shipping_method_count_legacy","1559725416","no"),
("1651","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557133416\";s:5:\"value\";i:0;}","no"),
("1662","recovery_keys","a:0:{}","yes"),
("1813","_transient_timeout_wc_related_204","1557935751","no"),
("1814","_transient_wc_related_204","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=204\";a:13:{i:0;s:3:\"190\";i:1;s:3:\"192\";i:2;s:3:\"194\";i:3;s:3:\"196\";i:4;s:3:\"198\";i:5;s:3:\"200\";i:6;s:3:\"202\";i:7;s:3:\"166\";i:8;s:3:\"168\";i:9;s:3:\"170\";i:10;s:3:\"173\";i:11;s:3:\"208\";i:12;s:3:\"210\";}}","no"),
("1832","_transient_timeout_acf_plugin_updates","1558069685","no"),
("1833","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("1834","_site_transient_timeout_theme_roots","1557985086","no"),
("1835","_site_transient_theme_roots","a:2:{s:6:\"camera\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("1837","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557983294;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1838","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557983295;s:7:\"checked\";a:2:{s:6:\"camera\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.8.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1839","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557983296;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("3","2","_edit_lock","1552146047:1"),
("4","2","_edit_last","1"),
("15","11","_wp_attached_file","2019/03/cropped-logo-ninh-binh-web.jpg"),
("16","11","_wp_attachment_context","site-icon"),
("17","11","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:38:\"2019/03/cropped-logo-ninh-binh-web.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:36:\"cropped-logo-ninh-binh-web-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("54","30","_edit_last","1"),
("55","30","_footer","normal"),
("56","30","_wp_page_template","page-blank.php"),
("57","30","_edit_lock","1552235528:1"),
("58","32","_edit_last","1"),
("59","32","_footer","normal"),
("60","32","_wp_page_template","page-blank.php"),
("61","32","_edit_lock","1552234547:1"),
("62","34","_menu_item_type","post_type"),
("63","34","_menu_item_menu_item_parent","0"),
("64","34","_menu_item_object_id","32"),
("65","34","_menu_item_object","page"),
("66","34","_menu_item_target",""),
("67","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("68","34","_menu_item_xfn",""),
("69","34","_menu_item_url",""),
("71","35","_menu_item_type","post_type"),
("72","35","_menu_item_menu_item_parent","0"),
("73","35","_menu_item_object_id","30"),
("74","35","_menu_item_object","page"),
("75","35","_menu_item_target",""),
("76","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("77","35","_menu_item_xfn",""),
("78","35","_menu_item_url",""),
("161","52","_edit_last","1"),
("162","52","_edit_lock","1552143961:1"),
("170","52","_thumbnail_id",""),
("277","122","_wp_attached_file","2019/03/logo-ninh-binh-web-1.jpg"),
("278","122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:282;s:6:\"height\";i:76;s:4:\"file\";s:32:\"2019/03/logo-ninh-binh-web-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("279","123","_wp_attached_file","2019/03/cropped-logo-ninh-binh-web-1.jpg"),
("280","123","_wp_attachment_context","site-icon"),
("281","123","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:40:\"2019/03/cropped-logo-ninh-binh-web-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("288","127","_wp_attached_file","2019/03/cart-icon-01.jpg"),
("289","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:42;s:6:\"height\";i:40;s:4:\"file\";s:24:\"2019/03/cart-icon-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("292","129","_wp_attached_file","2019/03/icon-people.jpg"),
("293","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:42;s:6:\"height\";i:40;s:4:\"file\";s:23:\"2019/03/icon-people.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("294","2","_footer","normal"),
("296","133","_wp_attached_file","2019/03/slider01.jpg"),
("297","133","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/03/slider01.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider01-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider01-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider01-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slider01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slider01-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slider01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slider01-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("298","2","_thumbnail_id",""),
("299","136","_wp_attached_file","2019/03/slider2.jpg"),
("300","136","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/03/slider2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("301","138","_wp_attached_file","2019/03/slider3.jpg"),
("302","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/03/slider3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("303","143","_wp_attached_file","2019/03/icon-02.jpg"),
("304","143","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("305","144","_wp_attached_file","2019/03/icon-03.jpg"),
("306","144","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("307","145","_wp_attached_file","2019/03/icon-04.jpg"),
("308","145","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-04.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("309","146","_wp_attached_file","2019/03/icon-5.jpg"),
("310","146","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:18:\"2019/03/icon-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("329","162","_wp_attached_file","2019/03/Thiết-bị-dẫn-đường.jpg"),
("330","162","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:40:\"2019/03/Thiết-bị-dẫn-đường.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Thiết-bị-dẫn-đường-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Thiết-bị-dẫn-đường-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Thiết-bị-dẫn-đường-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("331","163","_wp_attached_file","2019/03/camera-hành-trình.jpg"),
("332","163","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:31:\"2019/03/camera-hành-trình.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-hành-trình-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-hành-trình-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-hành-trình-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("333","164","_wp_attached_file","2019/03/camera-quan-sát.jpg"),
("334","164","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:28:\"2019/03/camera-quan-sát.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-sát-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-sát-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-sát-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("335","165","_wp_attached_file","2019/03/phụ-kiện-camera.jpg"),
("336","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:31:\"2019/03/phụ-kiện-camera.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"phụ-kiện-camera-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"phụ-kiện-camera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"phụ-kiện-camera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("337","166","_wc_review_count","1"),
("338","166","_wc_rating_count","a:1:{i:5;i:1;}"),
("339","166","_wc_average_rating","5.00"),
("340","166","_edit_last","1"),
("341","166","_edit_lock","1552231446:1"),
("342","167","_wp_attached_file","2019/03/camera-hanh-trinh-2-1.jpg"),
("343","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2019/03/camera-hanh-trinh-2-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("344","166","_thumbnail_id","167"),
("345","166","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("346","166","_sku",""),
("347","166","_regular_price","5490000"),
("348","166","_sale_price","4500000"),
("349","166","_sale_price_dates_from",""),
("350","166","_sale_price_dates_to",""),
("351","166","total_sales","0"),
("352","166","_tax_status","taxable"),
("353","166","_tax_class",""),
("354","166","_manage_stock","no"),
("355","166","_backorders","no"),
("356","166","_low_stock_amount",""),
("357","166","_sold_individually","no"),
("358","166","_weight",""),
("359","166","_length",""),
("360","166","_width",""),
("361","166","_height",""),
("362","166","_upsell_ids","a:0:{}"),
("363","166","_crosssell_ids","a:0:{}"),
("364","166","_purchase_note",""),
("365","166","_default_attributes","a:0:{}"),
("366","166","_virtual","no"),
("367","166","_downloadable","no"),
("368","166","_product_image_gallery","201,199,197,195"),
("369","166","_download_limit","-1");
INSERT INTO bz_postmeta VALUES
("370","166","_download_expiry","-1"),
("371","166","_stock",""),
("372","166","_stock_status","instock"),
("373","166","_product_version","3.5.6"),
("374","166","_price","4500000"),
("375","168","_wc_review_count","1"),
("376","168","_wc_rating_count","a:1:{i:5;i:1;}"),
("377","168","_wc_average_rating","5.00"),
("378","168","_edit_last","1"),
("379","168","_edit_lock","1552231395:1"),
("380","169","_wp_attached_file","2019/03/camera-hanh-trinh-2-1-1.jpg"),
("381","169","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2019/03/camera-hanh-trinh-2-1-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("382","168","_thumbnail_id","169"),
("383","168","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("384","168","_sku",""),
("385","168","_regular_price","632000"),
("386","168","_sale_price","620000"),
("387","168","_sale_price_dates_from",""),
("388","168","_sale_price_dates_to",""),
("389","168","total_sales","0"),
("390","168","_tax_status","taxable"),
("391","168","_tax_class",""),
("392","168","_manage_stock","no"),
("393","168","_backorders","no"),
("394","168","_low_stock_amount",""),
("395","168","_sold_individually","no"),
("396","168","_weight",""),
("397","168","_length",""),
("398","168","_width",""),
("399","168","_height",""),
("400","168","_upsell_ids","a:0:{}"),
("401","168","_crosssell_ids","a:0:{}"),
("402","168","_purchase_note",""),
("403","168","_default_attributes","a:0:{}"),
("404","168","_virtual","no"),
("405","168","_downloadable","no"),
("406","168","_product_image_gallery","224,222,221,215"),
("407","168","_download_limit","-1"),
("408","168","_download_expiry","-1"),
("409","168","_stock",""),
("410","168","_stock_status","instock"),
("411","168","_product_version","3.5.6"),
("412","168","_price","620000"),
("413","170","_wc_review_count","1"),
("414","170","_wc_rating_count","a:1:{i:4;i:1;}"),
("415","170","_wc_average_rating","4.00"),
("416","170","_edit_last","1"),
("417","170","_edit_lock","1552231810:1"),
("420","172","_wp_attached_file","2019/03/product1.jpg"),
("421","172","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:20:\"2019/03/product1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("422","170","_thumbnail_id","172"),
("423","170","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("424","170","_sku",""),
("425","170","_regular_price","3600000"),
("426","170","_sale_price","3200000"),
("427","170","_sale_price_dates_from",""),
("428","170","_sale_price_dates_to",""),
("429","170","total_sales","0"),
("430","170","_tax_status","taxable"),
("431","170","_tax_class",""),
("432","170","_manage_stock","no"),
("433","170","_backorders","no"),
("434","170","_low_stock_amount",""),
("435","170","_sold_individually","no"),
("436","170","_weight",""),
("437","170","_length",""),
("438","170","_width",""),
("439","170","_height",""),
("440","170","_upsell_ids","a:0:{}"),
("441","170","_crosssell_ids","a:0:{}"),
("442","170","_purchase_note",""),
("443","170","_default_attributes","a:0:{}"),
("444","170","_virtual","no"),
("445","170","_downloadable","no"),
("446","170","_product_image_gallery","224,222,221"),
("447","170","_download_limit","-1"),
("448","170","_download_expiry","-1"),
("449","170","_stock",""),
("450","170","_stock_status","instock"),
("451","170","_product_version","3.5.6"),
("452","170","_price","3200000"),
("453","173","_wc_review_count","1"),
("454","173","_wc_rating_count","a:1:{i:5;i:1;}"),
("455","173","_wc_average_rating","5.00"),
("456","174","_wp_attached_file","2019/03/camera-hanh-trinh-gia-re.jpg"),
("457","174","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2019/03/camera-hanh-trinh-gia-re.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("458","173","_edit_last","1"),
("459","173","_thumbnail_id","174"),
("460","173","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("461","173","_sku",""),
("462","173","_regular_price","8600000"),
("463","173","_sale_price","4500000"),
("464","173","_sale_price_dates_from",""),
("465","173","_sale_price_dates_to",""),
("466","173","total_sales","6"),
("467","173","_tax_status","taxable"),
("468","173","_tax_class",""),
("469","173","_manage_stock","no"),
("470","173","_backorders","no"),
("471","173","_low_stock_amount","");
INSERT INTO bz_postmeta VALUES
("472","173","_sold_individually","no"),
("473","173","_weight",""),
("474","173","_length",""),
("475","173","_width",""),
("476","173","_height",""),
("477","173","_upsell_ids","a:0:{}"),
("478","173","_crosssell_ids","a:0:{}"),
("479","173","_purchase_note",""),
("480","173","_default_attributes","a:0:{}"),
("481","173","_virtual","no"),
("482","173","_downloadable","no"),
("483","173","_product_image_gallery","222,221,224,226"),
("484","173","_download_limit","-1"),
("485","173","_download_expiry","-1"),
("486","173","_stock",""),
("487","173","_stock_status","instock"),
("488","173","_product_version","3.5.6"),
("489","173","_price","4500000"),
("490","173","_edit_lock","1552231293:1"),
("507","190","_wc_review_count","1"),
("508","190","_wc_rating_count","a:1:{i:5;i:1;}"),
("509","190","_wc_average_rating","5.00"),
("510","191","_wp_attached_file","2019/03/Webvision-S633Y-i9.jpg"),
("511","191","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/Webvision-S633Y-i9.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("512","190","_edit_last","1"),
("513","190","_thumbnail_id","191"),
("514","190","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("515","190","_sku",""),
("516","190","_regular_price","560000"),
("517","190","_sale_price","450000"),
("518","190","_sale_price_dates_from",""),
("519","190","_sale_price_dates_to",""),
("520","190","total_sales","0"),
("521","190","_tax_status","taxable"),
("522","190","_tax_class",""),
("523","190","_manage_stock","no"),
("524","190","_backorders","no"),
("525","190","_low_stock_amount",""),
("526","190","_sold_individually","no"),
("527","190","_weight",""),
("528","190","_length",""),
("529","190","_width",""),
("530","190","_height",""),
("531","190","_upsell_ids","a:0:{}"),
("532","190","_crosssell_ids","a:0:{}"),
("533","190","_purchase_note",""),
("534","190","_default_attributes","a:0:{}"),
("535","190","_virtual","no"),
("536","190","_downloadable","no"),
("537","190","_product_image_gallery","197,201,199"),
("538","190","_download_limit","-1"),
("539","190","_download_expiry","-1"),
("540","190","_stock",""),
("541","190","_stock_status","instock"),
("542","190","_product_version","3.5.6"),
("543","190","_price","450000"),
("544","190","_edit_lock","1552231683:1"),
("545","192","_wc_review_count","1"),
("546","192","_wc_rating_count","a:1:{i:5;i:1;}"),
("547","192","_wc_average_rating","5.00"),
("548","192","_edit_last","1"),
("549","192","_edit_lock","1552231658:1"),
("550","193","_wp_attached_file","2019/03/Webvision-T7202W.jpg"),
("551","193","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:28:\"2019/03/Webvision-T7202W.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("552","192","_thumbnail_id","193"),
("553","192","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("554","192","_sku",""),
("555","192","_regular_price","650000"),
("556","192","_sale_price","450000"),
("557","192","_sale_price_dates_from",""),
("558","192","_sale_price_dates_to",""),
("559","192","total_sales","0"),
("560","192","_tax_status","taxable"),
("561","192","_tax_class",""),
("562","192","_manage_stock","no"),
("563","192","_backorders","no"),
("564","192","_low_stock_amount",""),
("565","192","_sold_individually","no"),
("566","192","_weight",""),
("567","192","_length",""),
("568","192","_width",""),
("569","192","_height",""),
("570","192","_upsell_ids","a:0:{}"),
("571","192","_crosssell_ids","a:0:{}"),
("572","192","_purchase_note",""),
("573","192","_default_attributes","a:0:{}"),
("574","192","_virtual","no"),
("575","192","_downloadable","no"),
("576","192","_product_image_gallery","191,195,193,197"),
("577","192","_download_limit","-1"),
("578","192","_download_expiry","-1"),
("579","192","_stock",""),
("580","192","_stock_status","instock"),
("581","192","_product_version","3.5.6"),
("582","192","_price","450000"),
("583","194","_wc_review_count","1"),
("584","194","_wc_rating_count","a:1:{i:5;i:1;}"),
("585","194","_wc_average_rating","5.00"),
("586","194","_edit_last","1"),
("587","194","_edit_lock","1552231623:1");
INSERT INTO bz_postmeta VALUES
("588","195","_wp_attached_file","2019/03/6206w.jpg"),
("589","195","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6206w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("590","194","_thumbnail_id","195"),
("591","194","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("592","194","_sku",""),
("593","194","_regular_price","780000"),
("594","194","_sale_price","590000"),
("595","194","_sale_price_dates_from",""),
("596","194","_sale_price_dates_to",""),
("597","194","total_sales","0"),
("598","194","_tax_status","taxable"),
("599","194","_tax_class",""),
("600","194","_manage_stock","no"),
("601","194","_backorders","no"),
("602","194","_low_stock_amount",""),
("603","194","_sold_individually","no"),
("604","194","_weight",""),
("605","194","_length",""),
("606","194","_width",""),
("607","194","_height",""),
("608","194","_upsell_ids","a:0:{}"),
("609","194","_crosssell_ids","a:0:{}"),
("610","194","_purchase_note",""),
("611","194","_default_attributes","a:0:{}"),
("612","194","_virtual","no"),
("613","194","_downloadable","no"),
("614","194","_product_image_gallery","162,165,164,163"),
("615","194","_download_limit","-1"),
("616","194","_download_expiry","-1"),
("617","194","_stock",""),
("618","194","_stock_status","instock"),
("619","194","_product_version","3.5.6"),
("620","194","_price","590000"),
("621","196","_wc_review_count","1"),
("622","196","_wc_rating_count","a:1:{i:5;i:1;}"),
("623","196","_wc_average_rating","5.00"),
("624","196","_edit_last","1"),
("625","196","_edit_lock","1552231596:1"),
("626","197","_wp_attached_file","2019/03/Webvision-T6100WIP.jpg"),
("627","197","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/Webvision-T6100WIP.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("628","196","_thumbnail_id","197"),
("629","196","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("630","196","_sku",""),
("631","196","_regular_price","690000"),
("632","196","_sale_price","650000"),
("633","196","_sale_price_dates_from",""),
("634","196","_sale_price_dates_to",""),
("635","196","total_sales","0"),
("636","196","_tax_status","taxable"),
("637","196","_tax_class",""),
("638","196","_manage_stock","no"),
("639","196","_backorders","no"),
("640","196","_low_stock_amount",""),
("641","196","_sold_individually","no"),
("642","196","_weight",""),
("643","196","_length",""),
("644","196","_width",""),
("645","196","_height",""),
("646","196","_upsell_ids","a:0:{}"),
("647","196","_crosssell_ids","a:0:{}"),
("648","196","_purchase_note",""),
("649","196","_default_attributes","a:0:{}"),
("650","196","_virtual","no"),
("651","196","_downloadable","no"),
("652","196","_product_image_gallery","167,165,164,163"),
("653","196","_download_limit","-1"),
("654","196","_download_expiry","-1"),
("655","196","_stock",""),
("656","196","_stock_status","instock"),
("657","196","_product_version","3.5.6"),
("658","196","_price","650000"),
("659","198","_wc_review_count","1"),
("660","198","_wc_rating_count","a:1:{i:4;i:1;}"),
("661","198","_wc_average_rating","4.00"),
("662","198","_edit_last","1"),
("663","198","_edit_lock","1552231566:1"),
("664","199","_wp_attached_file","2019/03/6204w.jpg"),
("665","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6204w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("666","198","_thumbnail_id","199"),
("667","198","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("668","198","_sku",""),
("669","198","_regular_price","450000"),
("670","198","_sale_price","430000"),
("671","198","_sale_price_dates_from",""),
("672","198","_sale_price_dates_to",""),
("673","198","total_sales","0"),
("674","198","_tax_status","taxable"),
("675","198","_tax_class",""),
("676","198","_manage_stock","no"),
("677","198","_backorders","no"),
("678","198","_low_stock_amount",""),
("679","198","_sold_individually","no"),
("680","198","_weight",""),
("681","198","_length",""),
("682","198","_width",""),
("683","198","_height",""),
("684","198","_upsell_ids","a:0:{}"),
("685","198","_crosssell_ids","a:0:{}"),
("686","198","_purchase_note",""),
("687","198","_default_attributes","a:0:{}");
INSERT INTO bz_postmeta VALUES
("688","198","_virtual","no"),
("689","198","_downloadable","no"),
("690","198","_product_image_gallery","195,193,191,174"),
("691","198","_download_limit","-1"),
("692","198","_download_expiry","-1"),
("693","198","_stock",""),
("694","198","_stock_status","instock"),
("695","198","_product_version","3.5.6"),
("696","198","_price","430000"),
("697","200","_wc_review_count","1"),
("698","200","_wc_rating_count","a:1:{i:5;i:1;}"),
("699","200","_wc_average_rating","5.00"),
("700","201","_wp_attached_file","2019/03/T6836W.jpg"),
("701","201","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/03/T6836W.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("702","200","_edit_last","1"),
("703","200","_thumbnail_id","201"),
("704","200","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("705","200","_sku",""),
("706","200","_regular_price","650000"),
("707","200","_sale_price","320000"),
("708","200","_sale_price_dates_from",""),
("709","200","_sale_price_dates_to",""),
("710","200","total_sales","0"),
("711","200","_tax_status","taxable"),
("712","200","_tax_class",""),
("713","200","_manage_stock","no"),
("714","200","_backorders","no"),
("715","200","_low_stock_amount",""),
("716","200","_sold_individually","no"),
("717","200","_weight",""),
("718","200","_length",""),
("719","200","_width",""),
("720","200","_height",""),
("721","200","_upsell_ids","a:0:{}"),
("722","200","_crosssell_ids","a:0:{}"),
("723","200","_purchase_note",""),
("724","200","_default_attributes","a:0:{}"),
("725","200","_virtual","no"),
("726","200","_downloadable","no"),
("727","200","_product_image_gallery","167,172,169"),
("728","200","_download_limit","-1"),
("729","200","_download_expiry","-1"),
("730","200","_stock",""),
("731","200","_stock_status","instock"),
("732","200","_product_version","3.5.6"),
("733","200","_price","320000"),
("734","200","_edit_lock","1552231541:1"),
("735","202","_wc_review_count","1"),
("736","202","_wc_rating_count","a:1:{i:5;i:1;}"),
("737","202","_wc_average_rating","5.00"),
("738","202","_edit_last","1"),
("739","202","_edit_lock","1552231515:1"),
("740","203","_wp_attached_file","2019/03/WebvisionS6263Y-HD.jpg"),
("741","203","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/WebvisionS6263Y-HD.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("742","202","_thumbnail_id","203"),
("743","202","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("744","202","_sku",""),
("745","202","_regular_price","850000"),
("746","202","_sale_price","150000"),
("747","202","_sale_price_dates_from",""),
("748","202","_sale_price_dates_to",""),
("749","202","total_sales","0"),
("750","202","_tax_status","taxable"),
("751","202","_tax_class",""),
("752","202","_manage_stock","no"),
("753","202","_backorders","no"),
("754","202","_low_stock_amount",""),
("755","202","_sold_individually","no"),
("756","202","_weight",""),
("757","202","_length",""),
("758","202","_width",""),
("759","202","_height",""),
("760","202","_upsell_ids","a:0:{}"),
("761","202","_crosssell_ids","a:0:{}"),
("762","202","_purchase_note",""),
("763","202","_default_attributes","a:0:{}"),
("764","202","_virtual","no"),
("765","202","_downloadable","no"),
("766","202","_product_image_gallery","203,201,199,197"),
("767","202","_download_limit","-1"),
("768","202","_download_expiry","-1"),
("769","202","_stock",""),
("770","202","_stock_status","instock"),
("771","202","_product_version","3.5.6"),
("772","202","_price","150000"),
("773","204","_wc_review_count","1"),
("774","204","_wc_rating_count","a:1:{i:5;i:1;}"),
("775","204","_wc_average_rating","5.00"),
("776","204","_edit_last","1"),
("777","204","_edit_lock","1552231489:1"),
("778","205","_wp_attached_file","2019/03/6203w.jpg"),
("779","205","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6203w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("780","204","_thumbnail_id","205"),
("781","204","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("782","204","_sku",""),
("783","204","_regular_price","5600000"),
("784","204","_sale_price","4500000"),
("785","204","_sale_price_dates_from",""),
("786","204","_sale_price_dates_to",""),
("787","204","total_sales","0");
INSERT INTO bz_postmeta VALUES
("788","204","_tax_status","taxable"),
("789","204","_tax_class",""),
("790","204","_manage_stock","no"),
("791","204","_backorders","no"),
("792","204","_low_stock_amount",""),
("793","204","_sold_individually","no"),
("794","204","_weight",""),
("795","204","_length",""),
("796","204","_width",""),
("797","204","_height",""),
("798","204","_upsell_ids","a:0:{}"),
("799","204","_crosssell_ids","a:0:{}"),
("800","204","_purchase_note",""),
("801","204","_default_attributes","a:0:{}"),
("802","204","_virtual","no"),
("803","204","_downloadable","no"),
("804","204","_product_image_gallery","195,193,191,174"),
("805","204","_download_limit","-1"),
("806","204","_download_expiry","-1"),
("807","204","_stock",""),
("808","204","_stock_status","instock"),
("809","204","_product_version","3.5.6"),
("810","204","_price","4500000"),
("811","206","_wc_review_count","1"),
("812","206","_wc_rating_count","a:1:{i:5;i:1;}"),
("813","206","_wc_average_rating","5.00"),
("814","206","_edit_last","1"),
("815","206","_edit_lock","1552151874:1"),
("816","207","_wp_attached_file","2019/03/bom-dien-12v-michelin-12260.jpg"),
("817","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:340;s:6:\"height\";i:340;s:4:\"file\";s:39:\"2019/03/bom-dien-12v-michelin-12260.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("818","206","_thumbnail_id","207"),
("819","206","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("820","206","_sku",""),
("821","206","_regular_price","450000"),
("822","206","_sale_price","400000"),
("823","206","_sale_price_dates_from",""),
("824","206","_sale_price_dates_to",""),
("825","206","total_sales","0"),
("826","206","_tax_status","taxable"),
("827","206","_tax_class",""),
("828","206","_manage_stock","no"),
("829","206","_backorders","no"),
("830","206","_low_stock_amount",""),
("831","206","_sold_individually","no"),
("832","206","_weight",""),
("833","206","_length",""),
("834","206","_width",""),
("835","206","_height",""),
("836","206","_upsell_ids","a:0:{}"),
("837","206","_crosssell_ids","a:0:{}"),
("838","206","_purchase_note",""),
("839","206","_default_attributes","a:0:{}"),
("840","206","_virtual","no"),
("841","206","_downloadable","no"),
("842","206","_product_image_gallery",""),
("843","206","_download_limit","-1"),
("844","206","_download_expiry","-1"),
("845","206","_stock",""),
("846","206","_stock_status","instock"),
("847","206","_product_version","3.5.6"),
("848","206","_price","400000"),
("849","208","_wc_review_count","1"),
("850","208","_wc_rating_count","a:1:{i:5;i:1;}"),
("851","208","_wc_average_rating","5.00"),
("852","208","_edit_last","1"),
("853","208","_edit_lock","1552151845:1"),
("854","209","_wp_attached_file","2019/03/samsung-64gb-class10.jpg"),
("855","209","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2019/03/samsung-64gb-class10.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("856","208","_thumbnail_id","209"),
("857","208","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("858","208","_sku",""),
("859","208","_regular_price","360000"),
("860","208","_sale_price","150000"),
("861","208","_sale_price_dates_from",""),
("862","208","_sale_price_dates_to",""),
("863","208","total_sales","0"),
("864","208","_tax_status","taxable"),
("865","208","_tax_class",""),
("866","208","_manage_stock","no"),
("867","208","_backorders","no"),
("868","208","_low_stock_amount",""),
("869","208","_sold_individually","no"),
("870","208","_weight",""),
("871","208","_length",""),
("872","208","_width",""),
("873","208","_height",""),
("874","208","_upsell_ids","a:0:{}"),
("875","208","_crosssell_ids","a:0:{}"),
("876","208","_purchase_note",""),
("877","208","_default_attributes","a:0:{}"),
("878","208","_virtual","no"),
("879","208","_downloadable","no"),
("880","208","_product_image_gallery",""),
("881","208","_download_limit","-1"),
("882","208","_download_expiry","-1"),
("883","208","_stock",""),
("884","208","_stock_status","instock"),
("885","208","_product_version","3.5.6"),
("886","208","_price","150000"),
("887","210","_wc_review_count","1");
INSERT INTO bz_postmeta VALUES
("888","210","_wc_rating_count","a:1:{i:4;i:1;}"),
("889","210","_wc_average_rating","4.00"),
("890","210","_edit_last","1"),
("891","210","_edit_lock","1552231791:1"),
("892","211","_wp_attached_file","2019/03/Nguon-s8.jpg"),
("893","211","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2019/03/Nguon-s8.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("894","210","_thumbnail_id","211"),
("895","210","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("896","210","_sku",""),
("897","210","_regular_price","960000"),
("898","210","_sale_price","580000"),
("899","210","_sale_price_dates_from",""),
("900","210","_sale_price_dates_to",""),
("901","210","total_sales","0"),
("902","210","_tax_status","taxable"),
("903","210","_tax_class",""),
("904","210","_manage_stock","no"),
("905","210","_backorders","no"),
("906","210","_low_stock_amount",""),
("907","210","_sold_individually","no"),
("908","210","_weight",""),
("909","210","_length",""),
("910","210","_width",""),
("911","210","_height",""),
("912","210","_upsell_ids","a:0:{}"),
("913","210","_crosssell_ids","a:0:{}"),
("914","210","_purchase_note",""),
("915","210","_default_attributes","a:0:{}"),
("916","210","_virtual","no"),
("917","210","_downloadable","no"),
("918","210","_product_image_gallery","191,195,193"),
("919","210","_download_limit","-1"),
("920","210","_download_expiry","-1"),
("921","210","_stock",""),
("922","210","_stock_status","instock"),
("923","210","_product_version","3.5.6"),
("924","210","_price","580000"),
("925","212","_wc_review_count","0"),
("926","212","_wc_rating_count","a:0:{}"),
("927","212","_wc_average_rating","0"),
("928","212","_edit_last","1"),
("929","212","_edit_lock","1552149245:1"),
("930","213","_wp_attached_file","2019/03/Bom-tu-va.jpg"),
("931","213","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2019/03/Bom-tu-va.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("932","212","_thumbnail_id","213"),
("933","212","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("934","212","_sku",""),
("935","212","_regular_price","780000"),
("936","212","_sale_price","250000"),
("937","212","_sale_price_dates_from",""),
("938","212","_sale_price_dates_to",""),
("939","212","total_sales","0"),
("940","212","_tax_status","taxable"),
("941","212","_tax_class",""),
("942","212","_manage_stock","no"),
("943","212","_backorders","no"),
("944","212","_low_stock_amount",""),
("945","212","_sold_individually","no"),
("946","212","_weight",""),
("947","212","_length",""),
("948","212","_width",""),
("949","212","_height",""),
("950","212","_upsell_ids","a:0:{}"),
("951","212","_crosssell_ids","a:0:{}"),
("952","212","_purchase_note",""),
("953","212","_default_attributes","a:0:{}"),
("954","212","_virtual","no"),
("955","212","_downloadable","no"),
("956","212","_product_image_gallery",""),
("957","212","_download_limit","-1"),
("958","212","_download_expiry","-1"),
("959","212","_stock",""),
("960","212","_stock_status","instock"),
("961","212","_product_version","3.5.6"),
("962","212","_price","250000"),
("963","214","_wc_review_count","1"),
("964","214","_wc_rating_count","a:1:{i:5;i:1;}"),
("965","214","_wc_average_rating","5.00"),
("966","214","_edit_last","1"),
("967","214","_edit_lock","1552231765:1"),
("968","215","_wp_attached_file","2019/03/bom-dien-michelin-12266-3.jpg"),
("969","215","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2019/03/bom-dien-michelin-12266-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("970","214","_thumbnail_id","215"),
("971","214","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("972","214","_sku",""),
("973","214","_regular_price","620000"),
("974","214","_sale_price","460000"),
("975","214","_sale_price_dates_from",""),
("976","214","_sale_price_dates_to",""),
("977","214","total_sales","0"),
("978","214","_tax_status","taxable"),
("979","214","_tax_class",""),
("980","214","_manage_stock","no"),
("981","214","_backorders","no"),
("982","214","_low_stock_amount",""),
("983","214","_sold_individually","no"),
("984","214","_weight",""),
("985","214","_length",""),
("986","214","_width",""),
("987","214","_height","");
INSERT INTO bz_postmeta VALUES
("988","214","_upsell_ids","a:0:{}"),
("989","214","_crosssell_ids","a:0:{}"),
("990","214","_purchase_note",""),
("991","214","_default_attributes","a:0:{}"),
("992","214","_virtual","no"),
("993","214","_downloadable","no"),
("994","214","_product_image_gallery","193,197,195"),
("995","214","_download_limit","-1"),
("996","214","_download_expiry","-1"),
("997","214","_stock",""),
("998","214","_stock_status","instock"),
("999","214","_product_version","3.5.6"),
("1000","214","_price","460000"),
("1001","216","_wc_review_count","1"),
("1002","216","_wc_rating_count","a:1:{i:5;i:1;}"),
("1003","216","_wc_average_rating","5.00"),
("1004","216","_edit_last","1"),
("1005","216","_edit_lock","1552231740:1"),
("1006","217","_wp_attached_file","2019/03/bom-dien-michelin-12264-2.jpg"),
("1007","217","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2019/03/bom-dien-michelin-12264-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1008","216","_thumbnail_id","217"),
("1009","216","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1010","216","_sku",""),
("1011","216","_regular_price","560000"),
("1012","216","_sale_price","550000"),
("1013","216","_sale_price_dates_from",""),
("1014","216","_sale_price_dates_to",""),
("1015","216","total_sales","0"),
("1016","216","_tax_status","taxable"),
("1017","216","_tax_class",""),
("1018","216","_manage_stock","no"),
("1019","216","_backorders","no"),
("1020","216","_low_stock_amount",""),
("1021","216","_sold_individually","no"),
("1022","216","_weight",""),
("1023","216","_length",""),
("1024","216","_width",""),
("1025","216","_height",""),
("1026","216","_upsell_ids","a:0:{}"),
("1027","216","_crosssell_ids","a:0:{}"),
("1028","216","_purchase_note",""),
("1029","216","_default_attributes","a:0:{}"),
("1030","216","_virtual","no"),
("1031","216","_downloadable","no"),
("1032","216","_product_image_gallery","199,203,201"),
("1033","216","_download_limit","-1"),
("1034","216","_download_expiry","-1"),
("1035","216","_stock",""),
("1036","216","_stock_status","instock"),
("1037","216","_product_version","3.5.6"),
("1038","216","_price","550000"),
("1039","218","_wc_review_count","1"),
("1040","218","_wc_rating_count","a:1:{i:5;i:1;}"),
("1041","218","_wc_average_rating","5.00"),
("1042","218","_edit_last","1"),
("1043","218","_edit_lock","1552231713:1"),
("1044","219","_wp_attached_file","2019/03/c1-3-in-1car-charger-white.jpg"),
("1045","219","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:38:\"2019/03/c1-3-in-1car-charger-white.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1046","218","_thumbnail_id","219"),
("1047","218","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1048","218","_sku",""),
("1049","218","_regular_price","560000"),
("1050","218","_sale_price","150000"),
("1051","218","_sale_price_dates_from",""),
("1052","218","_sale_price_dates_to",""),
("1053","218","total_sales","0"),
("1054","218","_tax_status","taxable"),
("1055","218","_tax_class",""),
("1056","218","_manage_stock","no"),
("1057","218","_backorders","no"),
("1058","218","_low_stock_amount",""),
("1059","218","_sold_individually","no"),
("1060","218","_weight",""),
("1061","218","_length",""),
("1062","218","_width",""),
("1063","218","_height",""),
("1064","218","_upsell_ids","a:0:{}"),
("1065","218","_crosssell_ids","a:0:{}"),
("1066","218","_purchase_note",""),
("1067","218","_default_attributes","a:0:{}"),
("1068","218","_virtual","no"),
("1069","218","_downloadable","no"),
("1070","218","_product_image_gallery","191,195,193"),
("1071","218","_download_limit","-1"),
("1072","218","_download_expiry","-1"),
("1073","218","_stock",""),
("1074","218","_stock_status","instock"),
("1075","218","_product_version","3.5.6"),
("1076","218","_price","150000"),
("1077","220","_wc_review_count","0"),
("1078","220","_wc_rating_count","a:0:{}"),
("1079","220","_wc_average_rating","0"),
("1080","220","_edit_last","1"),
("1081","220","_edit_lock","1552149501:1"),
("1082","221","_wp_attached_file","2019/03/N93X-1-600x600.png"),
("1083","221","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2019/03/N93X-1-600x600.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1084","222","_wp_attached_file","2019/03/thiet-bi-dan-duong.jpg"),
("1085","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:30:\"2019/03/thiet-bi-dan-duong.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1086","220","_thumbnail_id","222"),
("1087","220","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}");
INSERT INTO bz_postmeta VALUES
("1088","220","_sku",""),
("1089","220","_regular_price","5600000"),
("1090","220","_sale_price","4500000"),
("1091","220","_sale_price_dates_from",""),
("1092","220","_sale_price_dates_to",""),
("1093","220","total_sales","0"),
("1094","220","_tax_status","taxable"),
("1095","220","_tax_class",""),
("1096","220","_manage_stock","no"),
("1097","220","_backorders","no"),
("1098","220","_low_stock_amount",""),
("1099","220","_sold_individually","no"),
("1100","220","_weight",""),
("1101","220","_length",""),
("1102","220","_width",""),
("1103","220","_height",""),
("1104","220","_upsell_ids","a:0:{}"),
("1105","220","_crosssell_ids","a:0:{}"),
("1106","220","_purchase_note",""),
("1107","220","_default_attributes","a:0:{}"),
("1108","220","_virtual","no"),
("1109","220","_downloadable","no"),
("1110","220","_product_image_gallery",""),
("1111","220","_download_limit","-1"),
("1112","220","_download_expiry","-1"),
("1113","220","_stock",""),
("1114","220","_stock_status","instock"),
("1115","220","_product_version","3.5.6"),
("1116","220","_price","4500000"),
("1117","223","_wc_review_count","0"),
("1118","223","_wc_rating_count","a:0:{}"),
("1119","223","_wc_average_rating","0"),
("1120","224","_wp_attached_file","2019/03/thiet-bi-dan-duong-2.jpg"),
("1121","224","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:32:\"2019/03/thiet-bi-dan-duong-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1122","223","_edit_last","1"),
("1123","223","_thumbnail_id","224"),
("1124","223","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1125","223","_sku",""),
("1126","223","_regular_price","6300000"),
("1127","223","_sale_price","6200000"),
("1128","223","_sale_price_dates_from",""),
("1129","223","_sale_price_dates_to",""),
("1130","223","total_sales","0"),
("1131","223","_tax_status","taxable"),
("1132","223","_tax_class",""),
("1133","223","_manage_stock","no"),
("1134","223","_backorders","no"),
("1135","223","_low_stock_amount",""),
("1136","223","_sold_individually","no"),
("1137","223","_weight",""),
("1138","223","_length",""),
("1139","223","_width",""),
("1140","223","_height",""),
("1141","223","_upsell_ids","a:0:{}"),
("1142","223","_crosssell_ids","a:0:{}"),
("1143","223","_purchase_note",""),
("1144","223","_default_attributes","a:0:{}"),
("1145","223","_virtual","no"),
("1146","223","_downloadable","no"),
("1147","223","_product_image_gallery",""),
("1148","223","_download_limit","-1"),
("1149","223","_download_expiry","-1"),
("1150","223","_stock",""),
("1151","223","_stock_status","instock"),
("1152","223","_product_version","3.5.6"),
("1153","223","_price","6200000"),
("1154","223","_edit_lock","1552149555:1"),
("1155","225","_wc_review_count","0"),
("1156","225","_wc_rating_count","a:0:{}"),
("1157","225","_wc_average_rating","0"),
("1158","225","_edit_last","1"),
("1159","225","_edit_lock","1552149613:1"),
("1160","226","_wp_attached_file","2019/03/camera-hanh-trinh-n93.jpg"),
("1161","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2019/03/camera-hanh-trinh-n93.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1162","225","_thumbnail_id","226"),
("1163","225","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1164","225","_sku",""),
("1165","225","_regular_price","5200000"),
("1166","225","_sale_price","5000000"),
("1167","225","_sale_price_dates_from",""),
("1168","225","_sale_price_dates_to",""),
("1169","225","total_sales","0"),
("1170","225","_tax_status","taxable"),
("1171","225","_tax_class",""),
("1172","225","_manage_stock","no"),
("1173","225","_backorders","no"),
("1174","225","_low_stock_amount",""),
("1175","225","_sold_individually","no"),
("1176","225","_weight",""),
("1177","225","_length",""),
("1178","225","_width",""),
("1179","225","_height",""),
("1180","225","_upsell_ids","a:0:{}"),
("1181","225","_crosssell_ids","a:0:{}"),
("1182","225","_purchase_note",""),
("1183","225","_default_attributes","a:0:{}"),
("1184","225","_virtual","no"),
("1185","225","_downloadable","no"),
("1186","225","_product_image_gallery",""),
("1187","225","_download_limit","-1");
INSERT INTO bz_postmeta VALUES
("1188","225","_download_expiry","-1"),
("1189","225","_stock",""),
("1190","225","_stock_status","instock"),
("1191","225","_product_version","3.5.6"),
("1192","225","_price","5000000"),
("1270","282","_wp_attached_file","2019/03/banner-01.jpg"),
("1271","282","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-01.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-01-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-01-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-01-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1272","283","_wp_attached_file","2019/03/banner-02.jpg"),
("1273","283","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-02.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-02-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-02-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-02-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1274","284","_wp_attached_file","2019/03/banner-03.jpg"),
("1275","284","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-03.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-03-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-03-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-03-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1282","291","_wp_attached_file","2019/03/bg2.jpg"),
("1283","291","_wp_attachment_metadata","a:5:{s:5:\"width\";i:917;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2019/03/bg2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg2-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg2-768x188.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"bg2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x147.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"bg2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x147.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1284","294","_edit_last","1"),
("1285","294","_edit_lock","1552152948:1"),
("1286","295","_wp_attached_file","2019/03/1-534x400.jpg"),
("1287","295","_wp_attachment_metadata","a:5:{s:5:\"width\";i:534;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2019/03/1-534x400.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"1-534x400-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"1-534x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"1-534x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1288","296","_wp_attached_file","2019/03/post1.jpg"),
("1289","296","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1290","294","_thumbnail_id","296"),
("1292","299","_wp_attached_file","2019/03/post2.jpg"),
("1293","299","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1294","298","_edit_last","1"),
("1295","298","_thumbnail_id","299"),
("1297","298","_edit_lock","1552153006:1"),
("1299","301","_edit_last","1"),
("1300","301","_edit_lock","1552153293:1"),
("1301","302","_wp_attached_file","2019/03/post3.jpg"),
("1302","302","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1303","301","_thumbnail_id","302"),
("1305","304","_edit_last","1"),
("1306","304","_edit_lock","1552153107:1"),
("1307","305","_wp_attached_file","2019/03/post4.jpg"),
("1308","305","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1309","304","_thumbnail_id","305"),
("1325","318","_edit_last","1"),
("1326","318","_edit_lock","1552153933:1"),
("1335","318","_thumbnail_id",""),
("1551","443","_edit_last","1"),
("1552","443","_edit_lock","1552232304:1"),
("1553","173","chinh_sach","Dùng thử 7 ngày miễn phí và đổi trả"),
("1554","173","_chinh_sach","field_5c8523b2d9b2d"),
("1555","173","bao_hanh","36"),
("1556","173","_bao_hanh","field_5c8523cbd9b2e"),
("1557","173","thanh_toan","Thanh toán khi nhận hàng"),
("1558","173","_thanh_toan","field_5c8523f4d9b2f"),
("1559","173","van_chuyen","Miễn phí toàn quốc"),
("1560","173","_van_chuyen","field_5c852411d9b30"),
("1561","173","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1562","173","_lap_dat","field_5c852478d9b31"),
("1563","173","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1564","173","_qua_tang_1","field_5c8524a0d9b32"),
("1565","173","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1566","173","_qua_tang_2","field_5c8524bcd9b33"),
("1567","173","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1568","173","_qua_tang_3","field_5c8524d5d9b34"),
("1569","173","qua_tang_4",""),
("1570","173","_qua_tang_4","field_5c8524eed9b35"),
("1599","470","_wp_attached_file","2019/03/check@2x.png"),
("1600","470","_wp_attachment_metadata","a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:20:\"2019/03/check@2x.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1601","470","_edit_lock","1552231134:1"),
("1620","173","qua_tang_5",""),
("1621","173","_qua_tang_5","field_5c85280fcdbc5"),
("1622","170","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1623","170","_chinh_sach","field_5c8523b2d9b2d"),
("1624","170","bao_hanh","36"),
("1625","170","_bao_hanh","field_5c8523cbd9b2e"),
("1626","170","thanh_toan","Thanh toán khi nhận hàng"),
("1627","170","_thanh_toan","field_5c8523f4d9b2f"),
("1628","170","van_chuyen","Miễn phí toàn quốc"),
("1629","170","_van_chuyen","field_5c852411d9b30"),
("1630","170","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1631","170","_lap_dat","field_5c852478d9b31"),
("1632","170","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1633","170","_qua_tang_1","field_5c8524a0d9b32"),
("1634","170","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1635","170","_qua_tang_2","field_5c8524bcd9b33"),
("1636","170","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1637","170","_qua_tang_3","field_5c8524d5d9b34"),
("1638","170","qua_tang_4","01 voucher mua hàng trị giá 100K"),
("1639","170","_qua_tang_4","field_5c8524eed9b35"),
("1640","170","qua_tang_5",""),
("1641","170","_qua_tang_5","field_5c85280fcdbc5"),
("1642","168","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1643","168","_chinh_sach","field_5c8523b2d9b2d"),
("1644","168","bao_hanh","24"),
("1645","168","_bao_hanh","field_5c8523cbd9b2e"),
("1646","168","thanh_toan","Thanh toán khi nhận hàng"),
("1647","168","_thanh_toan","field_5c8523f4d9b2f"),
("1648","168","van_chuyen","Miễn phí toàn quốc"),
("1649","168","_van_chuyen","field_5c852411d9b30"),
("1650","168","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1651","168","_lap_dat","field_5c852478d9b31"),
("1652","168","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1653","168","_qua_tang_1","field_5c8524a0d9b32"),
("1654","168","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1655","168","_qua_tang_2","field_5c8524bcd9b33"),
("1656","168","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1657","168","_qua_tang_3","field_5c8524d5d9b34"),
("1658","168","qua_tang_4","");
INSERT INTO bz_postmeta VALUES
("1659","168","_qua_tang_4","field_5c8524eed9b35"),
("1660","168","qua_tang_5",""),
("1661","168","_qua_tang_5","field_5c85280fcdbc5"),
("1662","166","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1663","166","_chinh_sach","field_5c8523b2d9b2d"),
("1664","166","bao_hanh","23"),
("1665","166","_bao_hanh","field_5c8523cbd9b2e"),
("1666","166","thanh_toan","Thanh toán khi nhận hàng"),
("1667","166","_thanh_toan","field_5c8523f4d9b2f"),
("1668","166","van_chuyen","Miễn phí toàn quốc"),
("1669","166","_van_chuyen","field_5c852411d9b30"),
("1670","166","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1671","166","_lap_dat","field_5c852478d9b31"),
("1672","166","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1673","166","_qua_tang_1","field_5c8524a0d9b32"),
("1674","166","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1675","166","_qua_tang_2","field_5c8524bcd9b33"),
("1676","166","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1677","166","_qua_tang_3","field_5c8524d5d9b34"),
("1678","166","qua_tang_4","Tặng 01 voucher tại Thu Cúc Hospital"),
("1679","166","_qua_tang_4","field_5c8524eed9b35"),
("1680","166","qua_tang_5",""),
("1681","166","_qua_tang_5","field_5c85280fcdbc5"),
("1682","204","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1683","204","_chinh_sach","field_5c8523b2d9b2d"),
("1684","204","bao_hanh","24"),
("1685","204","_bao_hanh","field_5c8523cbd9b2e"),
("1686","204","thanh_toan","Thanh toán khi nhận hàng"),
("1687","204","_thanh_toan","field_5c8523f4d9b2f"),
("1688","204","van_chuyen","Miễn phí toàn quốc"),
("1689","204","_van_chuyen","field_5c852411d9b30"),
("1690","204","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1691","204","_lap_dat","field_5c852478d9b31"),
("1692","204","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1693","204","_qua_tang_1","field_5c8524a0d9b32"),
("1694","204","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1695","204","_qua_tang_2","field_5c8524bcd9b33"),
("1696","204","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1697","204","_qua_tang_3","field_5c8524d5d9b34"),
("1698","204","qua_tang_4","Tặng 01 voucher mua hàng trị giá 100k"),
("1699","204","_qua_tang_4","field_5c8524eed9b35"),
("1700","204","qua_tang_5",""),
("1701","204","_qua_tang_5","field_5c85280fcdbc5"),
("1702","202","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1703","202","_chinh_sach","field_5c8523b2d9b2d"),
("1704","202","bao_hanh","24"),
("1705","202","_bao_hanh","field_5c8523cbd9b2e"),
("1706","202","thanh_toan","Thanh toán khi nhận hàng"),
("1707","202","_thanh_toan","field_5c8523f4d9b2f"),
("1708","202","van_chuyen","Miễn phí toàn quốc"),
("1709","202","_van_chuyen","field_5c852411d9b30"),
("1710","202","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1711","202","_lap_dat","field_5c852478d9b31"),
("1712","202","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1713","202","_qua_tang_1","field_5c8524a0d9b32"),
("1714","202","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1715","202","_qua_tang_2","field_5c8524bcd9b33"),
("1716","202","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1717","202","_qua_tang_3","field_5c8524d5d9b34"),
("1718","202","qua_tang_4",""),
("1719","202","_qua_tang_4","field_5c8524eed9b35"),
("1720","202","qua_tang_5",""),
("1721","202","_qua_tang_5","field_5c85280fcdbc5"),
("1722","200","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1723","200","_chinh_sach","field_5c8523b2d9b2d"),
("1724","200","bao_hanh","20"),
("1725","200","_bao_hanh","field_5c8523cbd9b2e"),
("1726","200","thanh_toan","Thanh toán khi nhận hàng"),
("1727","200","_thanh_toan","field_5c8523f4d9b2f"),
("1728","200","van_chuyen","Miễn phí toàn quốc"),
("1729","200","_van_chuyen","field_5c852411d9b30"),
("1730","200","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1731","200","_lap_dat","field_5c852478d9b31"),
("1732","200","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1733","200","_qua_tang_1","field_5c8524a0d9b32"),
("1734","200","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1735","200","_qua_tang_2","field_5c8524bcd9b33"),
("1736","200","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1737","200","_qua_tang_3","field_5c8524d5d9b34"),
("1738","200","qua_tang_4",""),
("1739","200","_qua_tang_4","field_5c8524eed9b35"),
("1740","200","qua_tang_5",""),
("1741","200","_qua_tang_5","field_5c85280fcdbc5"),
("1742","198","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1743","198","_chinh_sach","field_5c8523b2d9b2d"),
("1744","198","bao_hanh","30"),
("1745","198","_bao_hanh","field_5c8523cbd9b2e"),
("1746","198","thanh_toan","Thanh toán khi nhận hàng"),
("1747","198","_thanh_toan","field_5c8523f4d9b2f"),
("1748","198","van_chuyen","Miễn phí toàn quốc"),
("1749","198","_van_chuyen","field_5c852411d9b30"),
("1750","198","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1751","198","_lap_dat","field_5c852478d9b31"),
("1752","198","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1753","198","_qua_tang_1","field_5c8524a0d9b32"),
("1754","198","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1755","198","_qua_tang_2","field_5c8524bcd9b33"),
("1756","198","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1757","198","_qua_tang_3","field_5c8524d5d9b34"),
("1758","198","qua_tang_4","");
INSERT INTO bz_postmeta VALUES
("1759","198","_qua_tang_4","field_5c8524eed9b35"),
("1760","198","qua_tang_5",""),
("1761","198","_qua_tang_5","field_5c85280fcdbc5"),
("1762","196","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1763","196","_chinh_sach","field_5c8523b2d9b2d"),
("1764","196","bao_hanh","20"),
("1765","196","_bao_hanh","field_5c8523cbd9b2e"),
("1766","196","thanh_toan","Thanh toán khi nhận hàng"),
("1767","196","_thanh_toan","field_5c8523f4d9b2f"),
("1768","196","van_chuyen","Miễn phí toàn quốc"),
("1769","196","_van_chuyen","field_5c852411d9b30"),
("1770","196","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1771","196","_lap_dat","field_5c852478d9b31"),
("1772","196","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1773","196","_qua_tang_1","field_5c8524a0d9b32"),
("1774","196","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1775","196","_qua_tang_2","field_5c8524bcd9b33"),
("1776","196","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1777","196","_qua_tang_3","field_5c8524d5d9b34"),
("1778","196","qua_tang_4",""),
("1779","196","_qua_tang_4","field_5c8524eed9b35"),
("1780","196","qua_tang_5",""),
("1781","196","_qua_tang_5","field_5c85280fcdbc5"),
("1782","194","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1783","194","_chinh_sach","field_5c8523b2d9b2d"),
("1784","194","bao_hanh","12"),
("1785","194","_bao_hanh","field_5c8523cbd9b2e"),
("1786","194","thanh_toan","Thanh toán khi nhận hàng"),
("1787","194","_thanh_toan","field_5c8523f4d9b2f"),
("1788","194","van_chuyen","Miễn phí toàn quốc"),
("1789","194","_van_chuyen","field_5c852411d9b30"),
("1790","194","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1791","194","_lap_dat","field_5c852478d9b31"),
("1792","194","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1793","194","_qua_tang_1","field_5c8524a0d9b32"),
("1794","194","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1795","194","_qua_tang_2","field_5c8524bcd9b33"),
("1796","194","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1797","194","_qua_tang_3","field_5c8524d5d9b34"),
("1798","194","qua_tang_4",""),
("1799","194","_qua_tang_4","field_5c8524eed9b35"),
("1800","194","qua_tang_5",""),
("1801","194","_qua_tang_5","field_5c85280fcdbc5"),
("1802","192","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1803","192","_chinh_sach","field_5c8523b2d9b2d"),
("1804","192","bao_hanh","20"),
("1805","192","_bao_hanh","field_5c8523cbd9b2e"),
("1806","192","thanh_toan","Thanh toán khi nhận hàng"),
("1807","192","_thanh_toan","field_5c8523f4d9b2f"),
("1808","192","van_chuyen","Miễn phí toàn quốc"),
("1809","192","_van_chuyen","field_5c852411d9b30"),
("1810","192","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1811","192","_lap_dat","field_5c852478d9b31"),
("1812","192","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1813","192","_qua_tang_1","field_5c8524a0d9b32"),
("1814","192","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1815","192","_qua_tang_2","field_5c8524bcd9b33"),
("1816","192","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1817","192","_qua_tang_3","field_5c8524d5d9b34"),
("1818","192","qua_tang_4","Tặng quà khủng trị giá 200.000đ"),
("1819","192","_qua_tang_4","field_5c8524eed9b35"),
("1820","192","qua_tang_5",""),
("1821","192","_qua_tang_5","field_5c85280fcdbc5"),
("1822","190","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1823","190","_chinh_sach","field_5c8523b2d9b2d"),
("1824","190","bao_hanh","30"),
("1825","190","_bao_hanh","field_5c8523cbd9b2e"),
("1826","190","thanh_toan","Thanh toán khi nhận hàng"),
("1827","190","_thanh_toan","field_5c8523f4d9b2f"),
("1828","190","van_chuyen","Miễn phí toàn quốc"),
("1829","190","_van_chuyen","field_5c852411d9b30"),
("1830","190","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1831","190","_lap_dat","field_5c852478d9b31"),
("1832","190","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1833","190","_qua_tang_1","field_5c8524a0d9b32"),
("1834","190","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1835","190","_qua_tang_2","field_5c8524bcd9b33"),
("1836","190","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1837","190","_qua_tang_3","field_5c8524d5d9b34"),
("1838","190","qua_tang_4",""),
("1839","190","_qua_tang_4","field_5c8524eed9b35"),
("1840","190","qua_tang_5",""),
("1841","190","_qua_tang_5","field_5c85280fcdbc5"),
("1842","218","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1843","218","_chinh_sach","field_5c8523b2d9b2d"),
("1844","218","bao_hanh","3"),
("1845","218","_bao_hanh","field_5c8523cbd9b2e"),
("1846","218","thanh_toan","Thanh toán khi nhận hàng"),
("1847","218","_thanh_toan","field_5c8523f4d9b2f"),
("1848","218","van_chuyen","Miễn phí toàn quốc"),
("1849","218","_van_chuyen","field_5c852411d9b30"),
("1850","218","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1851","218","_lap_dat","field_5c852478d9b31"),
("1852","218","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1853","218","_qua_tang_1","field_5c8524a0d9b32"),
("1854","218","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1855","218","_qua_tang_2","field_5c8524bcd9b33"),
("1856","218","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1857","218","_qua_tang_3","field_5c8524d5d9b34"),
("1858","218","qua_tang_4","");
INSERT INTO bz_postmeta VALUES
("1859","218","_qua_tang_4","field_5c8524eed9b35"),
("1860","218","qua_tang_5",""),
("1861","218","_qua_tang_5","field_5c85280fcdbc5"),
("1862","216","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1863","216","_chinh_sach","field_5c8523b2d9b2d"),
("1864","216","bao_hanh","6"),
("1865","216","_bao_hanh","field_5c8523cbd9b2e"),
("1866","216","thanh_toan","Thanh toán khi nhận hàng"),
("1867","216","_thanh_toan","field_5c8523f4d9b2f"),
("1868","216","van_chuyen","Miễn phí toàn quốc"),
("1869","216","_van_chuyen","field_5c852411d9b30"),
("1870","216","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1871","216","_lap_dat","field_5c852478d9b31"),
("1872","216","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1873","216","_qua_tang_1","field_5c8524a0d9b32"),
("1874","216","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1875","216","_qua_tang_2","field_5c8524bcd9b33"),
("1876","216","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1877","216","_qua_tang_3","field_5c8524d5d9b34"),
("1878","216","qua_tang_4",""),
("1879","216","_qua_tang_4","field_5c8524eed9b35"),
("1880","216","qua_tang_5",""),
("1881","216","_qua_tang_5","field_5c85280fcdbc5"),
("1882","214","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1883","214","_chinh_sach","field_5c8523b2d9b2d"),
("1884","214","bao_hanh","12"),
("1885","214","_bao_hanh","field_5c8523cbd9b2e"),
("1886","214","thanh_toan","Thanh toán khi nhận hàng"),
("1887","214","_thanh_toan","field_5c8523f4d9b2f"),
("1888","214","van_chuyen","Miễn phí toàn quốc"),
("1889","214","_van_chuyen","field_5c852411d9b30"),
("1890","214","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1891","214","_lap_dat","field_5c852478d9b31"),
("1892","214","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1893","214","_qua_tang_1","field_5c8524a0d9b32"),
("1894","214","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1895","214","_qua_tang_2","field_5c8524bcd9b33"),
("1896","214","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1897","214","_qua_tang_3","field_5c8524d5d9b34"),
("1898","214","qua_tang_4",""),
("1899","214","_qua_tang_4","field_5c8524eed9b35"),
("1900","214","qua_tang_5",""),
("1901","214","_qua_tang_5","field_5c85280fcdbc5"),
("1902","210","chinh_sach","Dùng thử 7 ngày miễn phí"),
("1903","210","_chinh_sach","field_5c8523b2d9b2d"),
("1904","210","bao_hanh","12"),
("1905","210","_bao_hanh","field_5c8523cbd9b2e"),
("1906","210","thanh_toan","Thanh toán khi nhận hàng"),
("1907","210","_thanh_toan","field_5c8523f4d9b2f"),
("1908","210","van_chuyen","Miễn phí toàn quốc"),
("1909","210","_van_chuyen","field_5c852411d9b30"),
("1910","210","lap_dat","Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc"),
("1911","210","_lap_dat","field_5c852478d9b31"),
("1912","210","qua_tang_1","1 Thẻ nhớ 16 GB Class 10"),
("1913","210","_qua_tang_1","field_5c8524a0d9b32"),
("1914","210","qua_tang_2","1 Đầu đọc thẻ nhớ"),
("1915","210","_qua_tang_2","field_5c8524bcd9b33"),
("1916","210","qua_tang_3","1 Móc tìm chìa khóa Key Finder "),
("1917","210","_qua_tang_3","field_5c8524d5d9b34"),
("1918","210","qua_tang_4",""),
("1919","210","_qua_tang_4","field_5c8524eed9b35"),
("1920","210","qua_tang_5",""),
("1921","210","_qua_tang_5","field_5c85280fcdbc5"),
("1958","497","_menu_item_type","post_type"),
("1959","497","_menu_item_menu_item_parent","0"),
("1960","497","_menu_item_object_id","32"),
("1961","497","_menu_item_object","page"),
("1962","497","_menu_item_target",""),
("1963","497","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1964","497","_menu_item_xfn",""),
("1965","497","_menu_item_url",""),
("1967","498","_menu_item_type","post_type"),
("1968","498","_menu_item_menu_item_parent","0"),
("1969","498","_menu_item_object_id","30"),
("1970","498","_menu_item_object","page"),
("1971","498","_menu_item_target",""),
("1972","498","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1973","498","_menu_item_xfn",""),
("1974","498","_menu_item_url",""),
("1976","499","_menu_item_type","post_type"),
("1977","499","_menu_item_menu_item_parent","0"),
("1978","499","_menu_item_object_id","2"),
("1979","499","_menu_item_object","page"),
("1980","499","_menu_item_target",""),
("1981","499","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1982","499","_menu_item_xfn",""),
("1983","499","_menu_item_url",""),
("1994","501","_menu_item_type","taxonomy"),
("1995","501","_menu_item_menu_item_parent","0"),
("1996","501","_menu_item_object_id","18"),
("1997","501","_menu_item_object","product_cat"),
("1998","501","_menu_item_target",""),
("1999","501","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2000","501","_menu_item_xfn",""),
("2001","501","_menu_item_url",""),
("2003","502","_menu_item_type","taxonomy"),
("2004","502","_menu_item_menu_item_parent","0"),
("2005","502","_menu_item_object_id","19"),
("2006","502","_menu_item_object","product_cat"),
("2007","502","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("2008","502","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2009","502","_menu_item_xfn",""),
("2010","502","_menu_item_url",""),
("2012","503","_menu_item_type","taxonomy"),
("2013","503","_menu_item_menu_item_parent","0"),
("2014","503","_menu_item_object_id","20"),
("2015","503","_menu_item_object","product_cat"),
("2016","503","_menu_item_target",""),
("2017","503","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2018","503","_menu_item_xfn",""),
("2019","503","_menu_item_url",""),
("2021","504","_menu_item_type","taxonomy"),
("2022","504","_menu_item_menu_item_parent","0"),
("2023","504","_menu_item_object_id","1"),
("2024","504","_menu_item_object","category"),
("2025","504","_menu_item_target",""),
("2026","504","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2027","504","_menu_item_xfn",""),
("2028","504","_menu_item_url",""),
("2036","508","_form","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[tel* tel-343 placeholder \"Số điện thoại...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký tư vấn\"]\n    </div>\n    </div>"),
("2037","508","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:77:\"Mẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"Mẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:249:\"Có một số điện thoại vừa đăng ký:\n- Số điện thoại: [tel-343]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2038","508","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"Mẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"Mẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:208:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2039","508","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("2040","508","_additional_settings",""),
("2041","508","_locale","vi"),
("2101","538","_order_key","wc_order_gkjKMjbkfyP0o"),
("2102","538","_customer_user","1"),
("2103","538","_payment_method","bacs"),
("2104","538","_payment_method_title","Chuyển khoản ngân hàng"),
("2105","538","_transaction_id",""),
("2106","538","_customer_ip_address","58.187.29.76"),
("2107","538","_customer_user_agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"),
("2108","538","_created_via","checkout"),
("2109","538","_date_completed",""),
("2110","538","_completed_date",""),
("2111","538","_date_paid",""),
("2112","538","_paid_date",""),
("2113","538","_cart_hash","78a4cc2f0b3fb3d2d87b3da43d979af6"),
("2114","538","_billing_first_name",""),
("2115","538","_billing_last_name","admin"),
("2116","538","_billing_company",""),
("2117","538","_billing_address_1","Luong Ngoc Quyen"),
("2118","538","_billing_address_2",""),
("2119","538","_billing_city",""),
("2120","538","_billing_state",""),
("2121","538","_billing_postcode",""),
("2122","538","_billing_country",""),
("2123","538","_billing_email","webdemo@gmail.com"),
("2124","538","_billing_phone","972939830"),
("2125","538","_shipping_first_name",""),
("2126","538","_shipping_last_name",""),
("2127","538","_shipping_company",""),
("2128","538","_shipping_address_1",""),
("2129","538","_shipping_address_2",""),
("2130","538","_shipping_city",""),
("2131","538","_shipping_state",""),
("2132","538","_shipping_postcode",""),
("2133","538","_shipping_country",""),
("2134","538","_order_currency","VND"),
("2135","538","_cart_discount","0"),
("2136","538","_cart_discount_tax","0"),
("2137","538","_order_shipping","0"),
("2138","538","_order_shipping_tax","0"),
("2139","538","_order_tax","0"),
("2140","538","_order_total","27000000"),
("2141","538","_order_version","3.5.6"),
("2142","538","_prices_include_tax","no"),
("2143","538","_billing_address_index"," admin  Luong Ngoc Quyen      webdemo@gmail.com 972939830"),
("2144","538","_shipping_address_index","        "),
("2145","538","_recorded_sales","yes"),
("2146","538","_recorded_coupon_usage_counts","yes"),
("2147","538","_order_stock_reduced","yes"),
("2156","542","_form","[text* text-653 placeholder \"Tên của bạn...\"]\n[tel* tel-711 placeholder \"Số điện thoại...\"]\n[textarea textarea-261 placeholder \"Nội dung liên hệ\"]\n[submit \"Gửi liên hệ\"]"),
("2157","542","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:77:\"Mẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"Mẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:302:\"Có người mới liên hệ trên website:\n- Họ và tên: [text-653]\n- Số điện thoại: [tel-711]\n- Nội dung: [textarea-261]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2158","542","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"Mẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"Mẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:208:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2159","542","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("2160","542","_additional_settings",""),
("2161","542","_locale","vi"),
("2165","32","_thumbnail_id",""),
("2188","1","_edit_lock","1552234779:1"),
("2189","1","_edit_last","1"),
("2190","1","_thumbnail_id","162"),
("2285","620","_wp_attached_file","woocommerce-placeholder.png"),
("2286","620","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2287","621","_wp_trash_meta_status","publish"),
("2288","621","_wp_trash_meta_time","1557133468"),
("2289","622","_wp_attached_file","2019/05/camera.jpg"),
("2290","622","_wp_attachment_metadata","a:5:{s:5:\"width\";i:282;s:6:\"height\";i:76;s:4:\"file\";s:18:\"2019/05/camera.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2291","623","_wp_trash_meta_status","publish"),
("2292","623","_wp_trash_meta_time","1557137444");




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
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-03-09 05:27:45","2019-03-09 05:27:45","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2019-03-10 23:22:01","2019-03-10 16:22:01","","0","https://tppone.com/demo/camera/?p=1","0","post","","1"),
("2","1","2019-03-09 05:27:45","2019-03-09 05:27:45","[section label=\"Slider PC\" padding=\"0px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullets=\"false\" bullet_style=\"simple\"]\n\n[ux_image id=\"133\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"136\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"138\" image_size=\"original\" height=\"28%\"]\n\n\n[/ux_slider]\n\n[/section]\n[row label=\"Tiêu chí\" style=\"small\" class=\"row-tieu-chi\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"143\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Sản phẩm chất lượng</span><br /><span style=\"font-size: 95%; color: #000000;\">thương hiệu uy tín</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"144\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Tư vấn chính xác</span><br /><span style=\"font-size: 95%; color: #000000;\">tác phong chuyên nghiệp</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"145\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Giá thành tốt nhất</span><br /><span style=\"font-size: 95%; color: #000000;\">Bảo hành uy tín</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"146\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Thanh toán tại nhà</span><br /><span style=\"font-size: 95%; color: #000000;\">an toàn 100%</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[section label=\"Danh mục SP - PC\" bg_color=\"rgb(250, 250, 250)\" padding=\"40px\" class=\"danh-muc-sp-section\" visibility=\"hide-for-small\"]\n\n[row class=\"row-danh-muc\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Danh mục sản phẩm\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\"]\n\n[gap height=\"10px\"]\n\n[ux_product_categories style=\"overlay\" columns=\"3\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" ids=\"18,17,19,20\" image_height=\"65%\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Danh mục SP - Mobile\" bg_color=\"rgb(250, 250, 250)\" padding=\"10px\" class=\"danh-muc-sp-section\" visibility=\"show-for-small\"]\n\n[row class=\"row-danh-muc\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Danh mục sản phẩm\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\"]\n\n[gap height=\"10px\"]\n\n[ux_product_categories style=\"overlay\" type=\"row\" columns=\"2\" ids=\"18,17,19,20\" image_height=\"65%\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Camera hành trình\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Camera hành trình\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem tất cả\" link=\"/danh-muc-san-pham/camera-hanh-trinh/\"]\n\n[ux_products style=\"normal\" type=\"row\" cat=\"18\" products=\"4\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"IP Camera\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"IP Camera\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem tất cả\" link=\"/danh-muc-san-pham/camera-quan-sat/\"]\n\n[ux_products style=\"normal\" type=\"row\" cat=\"19\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Banner\" padding=\"0px\" class=\"banner-section\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"282\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.23)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"283\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.25)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"284\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.25)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phụ kiện\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Phụ kiện HOT\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem tất cả\" link=\"/danh-muc-san-pham/phu-kien-camera/\"]\n\n[ux_products style=\"normal\" columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"20\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(250, 250, 250)\" padding=\"40px\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Tin tức\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem tất cả\" link=\"/chuyen-muc/tin-tuc/\"]\n\n[gap height=\"10px\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"1\" posts=\"4\" show_date=\"false\" excerpt_length=\"34\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.26)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-03-10 23:37:54","2019-03-10 16:37:54","","0","https://tppone.com/demo/camera/?page_id=2","0","page","","0"),
("3","1","2019-03-09 05:27:45","2019-03-09 05:27:45","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/camera.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-09 05:27:45","2019-03-09 05:27:45","","0","https://tppone.com/demo/camera/?page_id=3","0","page","","0"),
("11","1","2019-03-09 21:45:01","2019-03-09 14:45:01","https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web.jpg","cropped-logo-ninh-binh-web.jpg","","inherit","open","closed","","cropped-logo-ninh-binh-web-jpg","","","2019-03-09 21:45:01","2019-03-09 14:45:01","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web.jpg","0","attachment","image/jpeg","0"),
("30","1","2019-03-09 21:50:35","2019-03-09 14:50:35","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"138\" image_size=\"original\"]\n\n[title style=\"center\" text=\"Về chúng tôi\"]\n\n<p><span style=\"font-size: 95%; color: #282828;\">Xin chào bạn – độc giả của <a style=\"color: #282828;\" href=\"https://Webdemo.com/\">Webdemo.com</a>,</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Lời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\"><a style=\"color: #282828;\" href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Sau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Tự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Xin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Trân trọng./.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Admin</span></p>\n\n[/col]\n\n[/row]","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-03-10 23:34:30","2019-03-10 16:34:30","","0","https://tppone.com/demo/camera/?page_id=30","0","page","","0"),
("32","1","2019-03-09 21:50:39","2019-03-09 14:50:39","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"133\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot1\"]\n\n<h3><span style=\"font-size: 95%;\">ĐẲNG CẤP CAMERA HÀ NỘI</span></h3>\n<p><span style=\"font-size: 95%;\">Địa chỉ: Số 33, ngõ 121 Thái Hà, Q. Đống Đa, TP. Hà Nội. </span><br /><span style=\"font-size: 95%;\">Điện thoại:      <a href=\"tel:02422667788\"><strong>(024) 22 66 77 88</strong></a><strong> - <a href=\"tel:02462555553\">(024) 62 555 553</a></strong></span></p>\n[contact-form-7 id=\"508\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h3>LIÊN HỆ</h3>\n<p><span style=\"font-size: 95%; color: #282828;\">Bạn vui lòng điền đầy đủ thông tin và nội dung đề xuất của bạn vào biểu mẫu dưới đây, sau đó gửi cho chúng tôi, chúng tôi sẽ liên hệ với bạn ngay sau khi nhận được thông tin của bạn.</span></p>\n[contact-form-7 id=\"542\"]\n\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2019-03-10 23:21:05","2019-03-10 16:21:05","","0","https://tppone.com/demo/camera/?page_id=32","0","page","","0"),
("34","1","2019-03-09 21:51:37","2019-03-09 14:51:37"," ","","","publish","closed","closed","","34","","","2019-03-09 21:51:37","2019-03-09 14:51:37","","0","https://tppone.com/demo/camera/?p=34","2","nav_menu_item","","0"),
("35","1","2019-03-09 21:51:37","2019-03-09 14:51:37"," ","","","publish","closed","closed","","35","","","2019-03-09 21:51:37","2019-03-09 14:51:37","","0","https://tppone.com/demo/camera/?p=35","1","nav_menu_item","","0"),
("52","1","2019-03-09 21:57:37","2019-03-09 14:57:37","[row class=\"header-block\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n<p class=\"shop-phone\" style=\"text-align: left;\"><i class=\"fa fa-phone fa-6\" aria-hidden=\"true\"></i><span style=\"font-size: 120%; color: #1e73be;\"><strong>HOTLINE: 1900 0388 - 0834 666 666</strong></span></p>\n<p class=\"shop-phone\" style=\"text-align: left;\"><span style=\"color: #000000; font-size: 90%;\">HN: Số 33, ngõ 121 Thái Hà, Q. Đống Đa, TP. Hà Nội</span><br /><span style=\"color: #000000; font-size: 90%;\">Thái Nguyên: Số 11, Đường Phan Đình Phùng, TP. Thái Nguyên</span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[gap height=\"21px\"]\n\n[featured_box img=\"129\" img_width=\"40\" pos=\"left\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n<p><span style=\"font-size: 90%; color: #000000;\">Hỗ trợ khách hàng<br />tổng đài miễn phí</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]","Header","","publish","closed","closed","","header","","","2019-03-09 22:40:48","2019-03-09 15:40:48","","0","https://tppone.com/demo/camera/?post_type=blocks&#038;p=52","0","blocks","","0"),
("122","1","2019-03-09 22:37:58","2019-03-09 15:37:58","","logo-ninh-binh-web","","inherit","open","closed","","logo-ninh-binh-web-2","","","2019-03-09 22:37:58","2019-03-09 15:37:58","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/logo-ninh-binh-web-1.jpg","0","attachment","image/jpeg","0"),
("123","1","2019-03-09 22:38:16","2019-03-09 15:38:16","https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web-1.jpg","cropped-logo-ninh-binh-web-1.jpg","","inherit","open","closed","","cropped-logo-ninh-binh-web-1-jpg","","","2019-03-09 22:38:16","2019-03-09 15:38:16","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web-1.jpg","0","attachment","image/jpeg","0"),
("127","1","2019-03-09 22:40:07","2019-03-09 15:40:07","","cart icon 01","","inherit","open","closed","","cart-icon-01","","","2019-03-09 22:40:07","2019-03-09 15:40:07","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cart-icon-01.jpg","0","attachment","image/jpeg","0"),
("129","1","2019-03-09 22:40:21","2019-03-09 15:40:21","","icon-people","","inherit","open","closed","","icon-people","","","2019-03-09 22:40:21","2019-03-09 15:40:21","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-people.jpg","0","attachment","image/jpeg","0"),
("133","1","2019-03-09 22:42:50","2019-03-09 15:42:50","","slider01","","inherit","open","closed","","slider01","","","2019-03-09 22:42:50","2019-03-09 15:42:50","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider01.jpg","0","attachment","image/jpeg","0"),
("136","1","2019-03-09 22:44:30","2019-03-09 15:44:30","","slider2","","inherit","open","closed","","slider2","","","2019-03-09 22:44:30","2019-03-09 15:44:30","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider2.jpg","0","attachment","image/jpeg","0"),
("138","1","2019-03-09 22:48:37","2019-03-09 15:48:37","","slider3","","inherit","open","closed","","slider3","","","2019-03-09 22:48:37","2019-03-09 15:48:37","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider3.jpg","0","attachment","image/jpeg","0"),
("143","1","2019-03-09 22:54:31","2019-03-09 15:54:31","","icon-02","","inherit","open","closed","","icon-02","","","2019-03-09 22:54:31","2019-03-09 15:54:31","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-02.jpg","0","attachment","image/jpeg","0"),
("144","1","2019-03-09 22:54:31","2019-03-09 15:54:31","","icon-03","","inherit","open","closed","","icon-03","","","2019-03-09 22:54:31","2019-03-09 15:54:31","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-03.jpg","0","attachment","image/jpeg","0"),
("145","1","2019-03-09 22:54:32","2019-03-09 15:54:32","","icon-04","","inherit","open","closed","","icon-04","","","2019-03-09 22:54:32","2019-03-09 15:54:32","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-04.jpg","0","attachment","image/jpeg","0"),
("146","1","2019-03-09 22:54:32","2019-03-09 15:54:32","","icon-5","","inherit","open","closed","","icon-5","","","2019-03-09 22:54:32","2019-03-09 15:54:32","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-5.jpg","0","attachment","image/jpeg","0"),
("162","1","2019-03-09 23:08:30","2019-03-09 16:08:30","","Thiết-bị-dẫn-đường","","inherit","open","closed","","thiet-bi-dan-duong","","","2019-03-09 23:08:30","2019-03-09 16:08:30","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Thiết-bị-dẫn-đường.jpg","0","attachment","image/jpeg","0"),
("163","1","2019-03-09 23:09:47","2019-03-09 16:09:47","","camera-hành-trình","","inherit","open","closed","","camera-hanh-trinh","","","2019-03-09 23:09:47","2019-03-09 16:09:47","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hành-trình.jpg","0","attachment","image/jpeg","0"),
("164","1","2019-03-09 23:11:35","2019-03-09 16:11:35","","camera-quan-sát","","inherit","open","closed","","camera-quan-sat","","","2019-03-09 23:11:35","2019-03-09 16:11:35","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-quan-sát.jpg","0","attachment","image/jpeg","0"),
("165","1","2019-03-09 23:14:16","2019-03-09 16:14:16","","phụ-kiện-camera","","inherit","open","closed","","phu-kien-camera","","","2019-03-09 23:14:16","2019-03-09 16:14:16","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/phụ-kiện-camera.jpg","0","attachment","image/jpeg","0"),
("166","1","2019-03-09 23:17:36","2019-03-09 16:17:36","<h3><b>WEBVISION M39 4G: CAMERA KÉP – THIẾT BỊ DẪN ĐƯỜNG – ĐỊNH VỊ – QUAN SÁT XE TỪ XA – PHÁT WIFI – GƯƠNG CHIẾU HẬU</b></h3>\n<strong>Camera hành trình</strong> Webvision M39 được đánh giá là một trong những siêu phẩm camera hiện nay tích hợp 16 tính năng hữu ích như: công nghệ 4G, khả năng điều khiển từ xa, dẫn đường, quay video chất lượng Full HD, hỗ trợ lái xe an toàn nhờ hệ thống cảnh báo thông minh….\n\n<em>Cận cảnh đập hộp Webvision M39</em>\n\nĐây là sản phẩm độc quyền từ Webvision Việt Nam và hiện đang được phân phối chính hãng bởi đơn vị Đẳng cấp Camera – đơn vị chuyên cung cấp camera hành trình, camera giám sát, camera hành động hàng đầu Việt Nam.\n<h2><b>Những tính năng vượt trội của siêu camera hành trình hot nhất hiện nay:</b></h2>\nWebvision M39 là chiếc camera hành trình thông minh nhất hiện nay với cực nhiều tính năng mà khó có một sản phẩm camera hành trình nào có được, hỗ trợ tối đa an toàn cho lái xe trong mọi cuộc hành trình. Không chỉ vậy, nó còn sử dụng giao diện và hỗ trợ hoàn toàn bằng tiếng Việt giúp những lái xe dễ dàng làm quen và sử dụng.\n\n<b>Camera kép quay phim Full HD độ nét cao hỗ trợ hồng ngoại, chế độ ghi hình vòng lặp</b>\n<figure id=\"attachment_6765\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-6765 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-t.png\" alt=\"\" width=\"710\" height=\"370\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-t.png\" /><figcaption class=\"wp-caption-text\"><em>Hình ảnh ghi lại được từ Camera hành trình Webvision M39 vào ban ngày</em></figcaption></figure>\nVới góc quay rộng lên đến 140 độ cùng chế độ quay Full HD 1080P, Webvision M39 có khả năng ghi hình toàn cảnh một cách <strong>rõ nét</strong> ngay cả khi khi bạn di chuyển vào ban đêm bị lóa bởi đèn xe hay thậm chí là khi di chuyển trong điều kiện gặp thời tiết xấu.\n\n<i>Video hình ảnh được Webvision M39 quay lại vào ban ngày</i>\n\nKhi bộ nhớ bộ đầy, chiếc camera này cũng tự động <strong>ghi đè</strong> lên các phần video đã quay trước đó tránh bỏ lỡ những hình ảnh quan trọng.\n\n<b>Tích hợp Camera lùi</b>\n\nViệc dừng, đỗ ngày càng trở nên khó khăn khi mà số lượng ô tô ngày một tăng trong khi diện tích dành cho các bãi đậu xe ở Việt Nam vẫn còn rất hạn chế. Đã có rất nhiều vụ va chạm xảy ra xuất phát từ nguyên nhân lái xe không quan sát được những vật thể phía sau do hạn chế tầm nhìn.\n\n<img class=\"aligncenter wp-image-6801 size-full lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg\" sizes=\"(max-width: 768px) 100vw, 768px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui-463x400.jpg 463w\" alt=\"\" width=\"768\" height=\"663\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui-463x400.jpg 463w\" />\n\nChính vì lẽ đó mà, Webvision M39 được trang bị camera lùi giúp tài xế dễ dàng quan sát được mọi hoạt động, vật cản phía sau giúp việc dừng, đỗ trở nên dễ dàng, thuận tiện.\n\nKhi bạn về số R, màn hình camera sẽ tự động hiển thị hình ảnh được ghi lại từ camera sau.\n\n<b>Công nghệ 4G LTE hiện đại</b>\n\nSử dụng một chiếc Sim 4G cho chiếc camera này, bạn có thể ngay lập tức giải trí trực tuyến nhờ tính năng tích hợp công nghệ 4G LTE hiện đại.\n\nTha hồ trải nghiệm các ứng dụng online, lướt web, nghe nhạc, xem phim,… với mạng 4G cực nhanh.\n\n<em>Nghe nhạc trực tuyến trên thiết bị với mạng 4G LTE</em>\n\nChiếc camera này còn có thể tự động phát Wifi, hỗ trợ giám sát xe mọi lúc mọi nơi. Bạn cũng có thể đồng bộ hóa và chia sẻ dữ liệu của chiếc camera này với chiếc smartphone của bạn, thưởng thức âm nhạc, chơi game, giải trí trực tuyến… trên chính thiết bị này.\n\n<b>Phát Wifi</b>\n\nKhi lắp thẻ sim 4G vào camera, Webvision M39 ngay lập tức trở thành một điểm phát di động sử dụng chính mạng 4G của để phát ra Wifi cho các thiết bị khác cùng sử dụng.\n\n<img class=\"aligncenter wp-image-6775 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg 587w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-768x523.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy.jpg 900w\" alt=\"\" width=\"700\" height=\"477\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg 587w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-768x523.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy.jpg 900w\" />\n\nTất cả mọi người trong xe đều có thể trải nghiệm các ứng dụng online mà không gặp bất kì trở ngại nào.\n\n<strong>Định vị, giám sát từ xa thông minh với ứng dụng Car Assist trên điện thoại</strong>\n\nNếu như các thiết bị định vị hiện nay chỉ có thể hiển thị được vị trí chiếc ô tô của bạn trên bản đồ thì hệ thống định vị của Camera hành trình Webvision M39 lại có những tính năng nổi bật hơn hẳn.\n\nDù bạn đang ở nhà hay bất cứ nơi đâu chỉ cần mở ứng dụng Car Assist được cài đặt trên điện thoại là bạn đã có thể biết được chiếc xe của bạn đang ở trên cung đường nào, đang di chuyển ra sao và thậm chí là có thể xem được hoạt động phía trước của xe được ghi lại qua camera hành trình.\n\n<img class=\"aligncenter wp-image-7323 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg 445w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-768x690.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-891x800.jpg 891w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1.jpg 1000w\" alt=\"\" width=\"700\" height=\"629\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg 445w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-768x690.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-891x800.jpg 891w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1.jpg 1000w\" />\n\nMột điểm đặc biệt nữa của thiết bị này là bạn còn có thể nói chuyện trực tiếp với lái xe thông qua ứng dụng này.\n\nKhi chiếc xe xảy ra tình trạng trộm cắp phá hoại, chiếc camera này sẽ tự động chụp lại hình ảnh rồi gửi đến điện thoại của bạn để cảnh báo.\n\n<b>GPS định vị, dẫn đường với bản đồ Navitel thông minh, chính xác </b>\n\nCamera hành trình Webvision M39 được trang bị công nghệ ADAS hỗ trợ lái xe rất nhiều trong quá trình di chuyển. Thiết bị thông minh này có thể nhận diện tốc độ theo cung đường nhờ chức năng bắt tọa độ GPS. Chính vì vậy mà khi lái xe đi quá tốc độ cho phép , thiết bị này sẽ nhanh chóng lên tiếng cảnh báo và cung cấp cho tài xế những thông tin chính xác về tọa độ, tốc độ lái xe cho phép hỗ trợ tốt nhất cho những tài xế đường xa hoặc không thông thạo đường.\n<figure id=\"attachment_6776\" class=\"wp-caption aligncenter\"><img class=\"wp-image-6776 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11.jpg 1000w\" alt=\"\" width=\"700\" height=\"467\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11.jpg 1000w\" /><figcaption class=\"wp-caption-text\"><em>Dẫn chỉ đường thông minh với bản đồ Navitel</em></figcaption></figure>\nWebvision M39 sử dụng ứng dụng dẫn chỉ đường bộ Navitel – dữ liệu đường bộ chính xác nhất hiện nay với bản đồ 63 tỉnh thành trên cả nước\n\n<b>Công nghệ Bluetooth 4.0: Hỗ trợ đàm thoại rảnh tay, an toàn khi lái xe</b>\n\nVới công nghệ Bluetoooth 4.0, bạn có thể kết nối thiết bị với chiếc smartphone của mình để giúp việc nghe gọi khi đang lái xe trở nên dễ dàng hơn.\n<figure id=\"attachment_6774\" class=\"wp-caption aligncenter\"><img class=\"wp-image-6774 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19.jpg 1000w\" alt=\"\" width=\"700\" height=\"467\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19.jpg 1000w\" /><figcaption class=\"wp-caption-text\"><em>Đàm thoại rảnh tay thông qua camera hành trình Webvision M39</em></figcaption></figure>\nLái xe có thể nghe, gọi, từ chối, đàm thoại rảnh tay trên chính chiếc camera hành trình này. Điều này góp phần đảm bảo an toàn khi di chuyển, đem lại sự tiện lợi đáng kể cho các lái xe.\n\nĐây là một trong những công nghệ hiện đại nhất hiện nay và không phải chiếc camera hành trình nào cũng có thể sở hữu\n\n<b>Công nghệ FM</b>\n\nCông nghệ FM giúp truyền âm thanh không dây từ chiếc camera hành trình của bạn xuống dàn âm thanh của xe hơi đem lại trải nghiệm mở ấn tượng trên chính chiếc xe của bạn.\n\n<em>Video về công nghệ FM</em>\n\n<b>Cảnh báo tốc độ và cảnh báo lấn làn</b>\n\nCamera hành trình Webvision M39 có chức năng nổi trội trong việc cảnh báo giới hạn tốc độ bằng giọng nói bằng tiếng Việt giúp lái xe tránh được việc chạy quá tốc độ cho phép. Đây là một trong những tính năng được nhiều người yêu thích nhờ sự thông minh và hữu ích của nó giúp lái xe tiết kiệm một khoản chi phí khá lớn.\n\n<em>Video về cảnh báo lấn làn, cảnh báo tốc độ</em>\n\nChiếc camera này được xây dựng trên hệ thống ADAS bao gồm hệ thống cảnh báo phía trước, cảnh báo khởi hành, cảnh báo khi di chuyển trong môi trường thiếu sáng.\n\n<img class=\"aligncenter wp-image-6779 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-7.jpg\" alt=\"\" width=\"700\" height=\"355\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-7.jpg\" />\n\nChiếc camera này cũng lên tiếng nhắc nhở khi bạn di chuyển sai làn đường và chỉ dừng cảnh báo khi bạn trở về làn đường quy định.","WEBVISION M39 – Camera hành trình gương giám sát từ xa","Camera hành trình Webvision M39 có chức năng nổi trội trong việc cảnh báo giới hạn tốc độ bằng giọng nói bằng tiếng Việt giúp lái xe tránh được việc chạy quá tốc độ cho phép. Đây là một trong những tính năng được nhiều người yêu thích nhờ sự thông minh và hữu ích của nó giúp lái xe tiết kiệm một khoản chi phí khá lớn.","publish","open","closed","","webvision-m39-camera-hanh-trinh-guong-giam-sat-tu-xa","","","2019-03-10 22:26:28","2019-03-10 15:26:28","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=166","0","product","","1"),
("167","1","2019-03-09 23:16:53","2019-03-09 16:16:53","","camera-hanh-trinh-2 (1)","","inherit","open","closed","","camera-hanh-trinh-2-1","","","2019-03-09 23:16:53","2019-03-09 16:16:53","","166","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-2-1.jpg","0","attachment","image/jpeg","0"),
("168","1","2019-03-09 23:18:37","2019-03-09 16:18:37","Webvision là hãng <strong>Camera hành trình</strong> hàng đầu Việt Nam được sản xuất liên doanh giữa Nga, Hồng Kông và Việt Nam với chất lượng tốt nhất, được tích hợp công nghệ tiên tiến nhất nhằm giúp tài xế lái xe an toàn trên mọi hành trình.\n<h2><b>Camera Hành Trình Webvision N93 – Trợ Lý đắc lực Của Lái Xe Việt</b></h2>\n<strong>Webvision N93</strong> là mẫu camera hành trình ô tô đang được thu hút sự chú ý của lái xe với việc tích hợp nhiều tính năng thông minh hỗ trợ người lái bằng ngôn ngữ tiếng Việt. Ngoài ghi hình với chất lượng Full HD, chiếc camera Webvision N93 còn được trang bị GPS với dữ liệu bản đồ 63 tỉnh thành, có thể đưa ra những cảnh báo dựa trên tình hình vận hành thực tế của chiếc xe và đáp ứng được mọi yêu cầu của một lái xe cần.\n\nMời các bạn xem video <strong>Đập hộp Camera hành trình Webvision N93 – Trợ Lý đắc lực Của Lái Xe Việt Nam</strong>\n\nXem thêm:  Chuyên gia Webvision Việt Nam đánh giá về Camera hành trình Webvision N93\n<h2><strong>Thông tin chi tiết phụ kiện sản phẩm</strong></h2>\nWebvision N93 gồm phần thân và 6 phụ kiện đi kèm với những chức năng khác nhau, cụ thể là:\n\n– Bộ sạc: Dùng để dẫn điện từ ô tô vào Camera.\n– Cáp nối Camera phía sau: Dùng để nối thân máy với Camera sau.\n– Camera sau: Thực hiện chức năng ghi phía sau xe.\n– Thiết bị định vị GPS: Thực hiện chức năng dẫn đường cho ô tô.\n– Sách hướng dẫn: Hướng dẫn sử dụng Camera hành trình Webvision N93.\n– Miếng dán 3M: Dùng để cố định Camera với táp lô xe.","WEBVISION N93 – Thiết bị dẫn đường, camera hành trình kép","<strong>Webvision N93</strong> là mẫu camera hành trình ô tô đang được thu hút sự chú ý của lái xe với việc tích hợp nhiều tính năng thông minh hỗ trợ người lái bằng ngôn ngữ tiếng Việt. Ngoài ghi hình với chất lượng Full HD, chiếc camera Webvision N93 còn được trang bị GPS với dữ liệu bản đồ 63 tỉnh thành, có thể đưa ra những cảnh báo dựa trên tình hình vận hành thực tế của chiếc xe và đáp ứng được mọi yêu cầu của một lái xe cần.","publish","open","closed","","webvision-n93-thiet-bi-dan-duong-camera-hanh-trinh-kep","","","2019-03-10 22:25:37","2019-03-10 15:25:37","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=168","0","product","","1"),
("169","1","2019-03-09 23:18:25","2019-03-09 16:18:25","","camera-hanh-trinh-2 (1)","","inherit","open","closed","","camera-hanh-trinh-2-1-2","","","2019-03-09 23:18:25","2019-03-09 16:18:25","","168","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-2-1-1.jpg","0","attachment","image/jpeg","0"),
("170","1","2019-03-09 23:19:58","2019-03-09 16:19:58","<h2 class=\"p1\"><b>Camera hành trình Webvision S5 – Sự lựa chọn hoàn hảo của bạn</b></h2>\nCamera hành trình Webvision S5 được đông đảo người dùng đánh giá cao với những tính năng tiện ích cao, phù hợp với nhu cầu của người dùng.\n\n<strong>Thiết kế hiện đại, thân thiện người dùng</strong>\n\nChiếc camera hành trình Webvision S5 thiết kế phù hợp với chức năng vận hành với màn hình 4 inch, chip cao cấp mạnh mẽ NOVATEK 96655 giúp người dùng thu được hình ảnh rõ nét và đẹp nhất.\n\nGóc quay đến 170 độ cho tầm quan sát cực rộng có thể ghi lại tất cả những tình huống diễn ra xung quang xe, bảo đảm độ an toàn, tránh trộm cắp.\n\nCamera ghi hình phía trước độ phân giải Full HD 1080P tạo hình ảnh rõ nét, ghi lại những tình huống lái xe trên đường chân thực nhất. Camera ghi hình phía sau xe hỗ trợ việc lùi xe chính xác, tránh va chạm phía sau xe.\n\n<strong>Tích hợp camera lùi</strong>\n\nWebvision S5 có chức năng nổi bật là tích hợp camera lùi tự động nên khi cài số R cam lùi sẽ tự kích hoạt cho hình ảnh phía sau xe trên màn hình sắc nét IPS 4.0 inch. Đặc biết Webvision S5 có chế độ tự động thông minh khi tắt máy camera sẽ tự tắt, khi mở máy thì ngược lại camera sẽ tự bật.\n\n<strong>Ghi hình thông minh</strong>\n\n<strong>Camera hành trình giá rẻ</strong> Webvision S5 có chức năng tự động ghi hình khi có vật chuyển động đây là một tính năng rất ưu việt của dòng sản phẩm camera hành trình này giúp phát hiện trộm cắp hay những hành động xấu của kẻ gian với xe, bảo vệ tối đa cho chiếc xe của quý khách.\n<figure id=\"attachment_1381\" class=\"wp-caption aligncenter\">a<figcaption class=\"wp-caption-text\"><em>Chức năng ghi hình thông mình, hình ảnh rõ nét</em></figcaption></figure>\nWebvision S5 tích hợp thẻ nhớ lên tới 32 GB giúp bạn thoải mái ghi lại toàn bộ cuộc hành trình. File ghi hình sẽ ghi đè vòng lặp, bảo vệ file khi có va chạm xảy ra, người dùng có thể dùng làm bằng chứng xác thực nhất cho xe. Ghi âm tùy chọn có thể tắt/bật tiện dụng, thuận lợi.\n<figure id=\"attachment_1354\" class=\"wp-caption aligncenter\"><img class=\"wp-image-1354 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg 1200w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-768x512.jpg 768w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg 1200w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-768x512.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Webvision S5 – Cùng bạn trên mọi hành trình</em></figcaption></figure>\nCamera hành trình Webvision S5 với thiết kế đẹp, nhỏ gọn, màn hình hiển thị sắc nét, ngôn ngữ Việt hóa, thân thiện dễ sử dụng, tính năng vô cùng hữu ích chắc chắn sẽ là thiết bị mà tài xế khó có thể bỏ qua.\n\n<strong>Video trải nghiệm thực tế của Webvision S5</strong>","WEBVISION S5 – Camera hành trình ghi hình trước sau","Webvision S5 có chức năng nổi bật là tích hợp camera lùi tự động nên khi cài số R cam lùi sẽ tự kích hoạt cho hình ảnh phía sau xe trên màn hình sắc nét IPS 4.0 inch. Đặc biết Webvision S5 có chế độ tự động thông minh khi tắt máy camera sẽ tự tắt, khi mở máy thì ngược lại camera sẽ tự bật.","publish","open","closed","","webvision-s5-camera-hanh-trinh-ghi-hinh-truoc-sau","","","2019-03-10 22:24:48","2019-03-10 15:24:48","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=170","0","product","","1"),
("172","1","2019-03-09 23:19:48","2019-03-09 16:19:48","","product1","","inherit","open","closed","","product1","","","2019-03-09 23:19:48","2019-03-09 16:19:48","","170","https://tppone.com/demo/camera/wp-content/uploads/2019/03/product1.jpg","0","attachment","image/jpeg","0"),
("173","1","2019-03-09 23:20:52","2019-03-09 16:20:52","Webvision là hãng <strong>Camera hành trình ô tô</strong> hàng đầu Việt Nam được sản xuất liên doanh giữa Nga, Hồng Kông và Việt Nam với chất lượng tốt nhất, được tích hợp công nghệ tiên tiến nhất nhằm giúp tài xế lái xe an toàn trên mọi hành trình.\n<h2><strong>Tính năng nổi bật chỉ có ở</strong> <strong>Camera hành trình WEBVISION S8</strong></h2>\nCamera hành trình Webvision S8 là một trong những sản phẩm công nghệ thông minh được ra mắt thị trường gần đây. Đây được đánh giá là một trong những camera hành trình thông minh nhất với tính năng nổi trội vượt bậc mà tất cả các camera hành trình trước đó không có được. Đặc biệt là tất cả các lái xe Việt Nam đều có thể dễ dàng sử dụng bởi tất cả các tính năng này đều được chuyển hóa sang tiếng Việt, giúp người dùng hạn chế những bất lợi về ngôn ngữ.\n\n<em>Trải nghiệm tính năng vượt trội của Camera hành trình Webvision S8</em>\n<h2><strong>Sử dụng dữ liệu chỉ dẫn đường bộ Navitel </strong></h2>\nCamera hành trình Webvision S8 hỗ trợ lái xe tân tiến bằng ADAS thông báo cho người dùng biết việc vi phạm tốc độ theo cung đường. Sở dĩ thiết bị này nhận diện tốc độ theo cung đường nhờ chức năng bắt tọa độ GPS để báo tốc độ phù hợp cho tuyến đường đó là bao nhiêu giúp cảnh bảo chính xác đến tài xế về thông tin cung đường, tọa độ, tốc độ cho phép lái xe, rất tiện lợi cho những tài xế đi đường xa, không thông thạo đường. Chức năng này được áp dụng cho toàn quốc gồm 63 tỉnh thành với bản quyền công nghệ từ NAVITEL được cập nhật 3 tháng 1 lần. Tính tới thời điểm hiện tại thì đây là dữ liệu đường bộ hiện đại nhất hiện nay.\n<h2><strong>Sử dụng chip khủng Ambarella A7LA50D quay và ghi hình 2K rõ nét ngày và đêm</strong></h2>\nVới cấu hình chip khủng Ambarella A7LA50D, camera hành trình Webvision S8 ghi hình và quay video 2K rõ nét ngày và đêm, dù thời tiết xấu như thế nào. Chip Ambarella A7LA50D là loại chip cao cấp nhất mà không một camera hành trình nào có được. Camera thông thường chỉ sử dụng chip Novatek.\n\n<img class=\"alignnone size-medium wp-image-10148 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png 800w, https://webvision.vn/wp-content/uploads/2017/08/5-768x384.png 768w, https://webvision.vn/wp-content/uploads/2017/08/5.png 1051w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png 800w, https://webvision.vn/wp-content/uploads/2017/08/5-768x384.png 768w, https://webvision.vn/wp-content/uploads/2017/08/5.png 1051w\" />\n\n<i>Webvision ghi hình rõ nét ngày và đêm</i>\n<h2><strong>Thấu kính cảm biến ma trận OV4689</strong></h2>\nCamera hành trình Webvision S8 với thấu kính ma trận OV4689 quay hình rõ nét trong mọi hoàn cảnh, có thể lấy nét tất cả các hình ảnh phía trước, ngay cả biển số xe của xe ô tô đi trước.\n<h2><strong>Cảnh báo xe chạy quá tốc độ </strong></h2>\nĐây là tính năng hoàn toàn mới đối với một chiếc camera hành trình ô tô. Khi dùng Camera hành trình Webvision S8, lái xe sẽ được cảnh báo khi vượt quá tốc độ cho phép và đặc biệt chức năng này được thể hiện bằng giọng nói tiếng Việt. Khi phát hiện vượt quá tốc độ cho phép, lập tức chiếc Camera giám sát hành trình Webvision S8 sẽ phát ra tín hiệu và thông báo tốc độ cho phép.\n\n<em>Chức năng cảnh báo chạy quá tốc độ bằng tiếng Việt rất tiện dùng cho người dùng</em>\n<h2><strong>Cảnh báo lấn làn bằng giọng nói Tiếng Việt</strong></h2>\nCamera hành trình Webvision S8 có chức năng cảnh báo lấn làn, chệch làn khi xe đang lưu thông trên đường vô cùng thông minh. Với tính năng này, khi lái xe đang lưu thông trên đường mà lấn sang làn khác, Webvision S8 sẽ cảnh báo để lái xe điều chỉnh lại.  Với tính năng này thì Camera hành trình<a href=\"https://webvision.vn/\" target=\"_blank\" rel=\"noopener\"> Webvision S8</a> đã trợ giúp tài xế lái xe an toàn cũng như tránh tình huống vi phạm giao thông.\n<h2><strong>Nhắc bật đèn pha khi trời tối</strong></h2>\nKhi trời tối không đạt yêu cầu để tài xế có thể lái xe an toàn, camera hành trình WebvisionS8 sẽ tự động nhắc nhở tái xế bật đèn pha để đảm bảo độ sáng an toàn. Tính năng này vô cùng thông minh giúp rất nhiều cho các tài xế có tính hay quên.\n<h2><strong>Cảnh báo giao nhau với đường cho người đi bộ</strong></h2>\nĐây là một trong những chức năng vô cùng hữa ích đối với lái xe. Bởi khu đường giao nhau với người đi bộ là một trong những đoạn đường dễ xảy ra tai nạn nhất. Chính vì vậy, chức năng cảnh báo giao nhau với người đi bộ của camera hành trình Webvision S8 đã giúp lái xe tránh được rất nhiều vụ tai nạn đáng tiếc.\n<h2><strong>Cảnh báo sắp qua hầm</strong></h2>\nCamera hành trình Webvision S8 có tính năng nhắc nhở xe sắp qua hầm vô cùng thông minh. Khi tài xế lái xe sắp đến đường hầm, Webvision S8 sẽ cảnh báo cho lái xe biết để điều chỉnh tốc độ cũng như chú ý lái xe để đảm bảo an toàn.\n<h2><strong>Cảnh báo nhắc nhở mệt mỏi</strong></h2>\nCamera hành trình Webvision S8 còn có thể cài được chế độ thông minh chống buồn ngủ cho lái xe khi lưu thông trên đường dài, Webvision S8 nhắc nhở khi lái xe mệt mỏi bằng giọng nói tiếng Việt và hình ảnh. Thời gian nhắc nhở tùy thuộc vào bạn cài đặt. Tính năng này giúp tài xế nghỉ ngơi để có thể tập trung lái xe một cách cao độ nhất, đảm bảo an toàn cho cuộc hành trình.\n\nNgoài ra, camera hành trình Webvision S8 còn có chức năng tự động ghi hình khi có vật chuyển động, đây là một tính năng rất nổi trội của dòng sản phẩm camera hành trình giúp phát hiện trộm cắp hay những hành động xấu của kẻ gian với xe. Bảo vệ tối đa cho chiếc xe của bạn và khi tắt máy camera sẽ tự động tắt, khi mở máy thì ngược lại camera sẽ tự động bật.\n\nWebvision S8 cũng có thể ghi âm thanh hoặc tắt ghi âm nhanh bằng các phím tắt trên thiết bị và lưu giữ các file ghi hình quan trọng bằng phím bấm để đoạn video đó không bị ghi đè.","WEBVISION S8 – Camera hành trình 2K ADAS cảnh báo tốc độ","Webvision là hãng <strong>Camera hành trình ô tô</strong> hàng đầu Việt Nam được sản xuất liên doanh giữa Nga, Hồng Kông và Việt Nam với chất lượng tốt nhất, được tích hợp công nghệ tiên tiến nhất nhằm giúp tài xế lái xe an toàn trên mọi hành trình.","publish","open","closed","","webvision-s8-camera-hanh-trinh-2k-adas-canh-bao-toc-do","","","2019-03-10 22:23:56","2019-03-10 15:23:56","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=173","0","product","","1"),
("174","1","2019-03-09 23:20:37","2019-03-09 16:20:37","","camera-hanh-trinh-gia-re","","inherit","open","closed","","camera-hanh-trinh-gia-re","","","2019-03-09 23:20:37","2019-03-09 16:20:37","","173","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-gia-re.jpg","0","attachment","image/jpeg","0"),
("190","1","2019-03-09 23:29:29","2019-03-09 16:29:29","Camera 360 độ IP Wifi Webvision S633Y-i9 Panoramic HD 960P với thiết kế góc mở toàn cảnh Panoramic 360 độ là xu hướng giám sát mới nhất hiện nay được nhà sản xuất hàng đầu WEBVISION đã đưa ra và nâng cao chất lượng trong năm nay.\n\nVới thiết kế dạng vòm góc quay 360 độ , camera IP Webvision S633Y-i9 Panoramic HD 960P thực sự là công cụ giám sát hiệu quả cho những không gian rộng.\n\nCamera giám sát toàn cảnh là một chủng loại mới trong ngành camera an ninh và đang trở thành lựa chọn phổ biến của người tiêu dùng hiện nay. So với camera giám sát thông thường, camera toàn cảnh có lẽ là sự lựa chọn tốt nhất khi cần theo dõi giám sát trong không gian 360 độ. Thay vì phải cài đặt nhiều camera giám sát, bạn chỉ cần sử dụng một camera toàn cảnh duy nhất để có thể theo dõi toàn bộ khu vực xung quanh, đồng thời giúp giảm bớt gánh nặng ngân sách đầu tư thiết bị, lắp đặt và bảo trì.","WEBVISION S633Y-i9","Camera 360 độ IP Wifi Webvision S633Y-i9 Panoramic HD 960P với thiết kế góc mở toàn cảnh Panoramic 360 độ là xu hướng giám sát mới nhất hiện nay được nhà sản xuất hàng đầu WEBVISION đã đưa ra và nâng cao chất lượng trong năm nay.","publish","open","closed","","webvision-s633y-i9","","","2019-03-10 22:30:25","2019-03-10 15:30:25","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=190","0","product","","1"),
("191","1","2019-03-09 23:29:26","2019-03-09 16:29:26","","Webvision-S633Y-i9","","inherit","open","closed","","webvision-s633y-i9","","","2019-03-09 23:29:26","2019-03-09 16:29:26","","190","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-S633Y-i9.jpg","0","attachment","image/jpeg","0"),
("192","1","2019-03-09 23:30:06","2019-03-09 16:30:06","Dòng camera camera ip wifi Webvision phát triển trên nền tảng công nghệ điện toán đám mây tiên tiến không còn xa lạ với nhiều khách hàng. Tuy nhiên, hầu hết các dòng sản phẩm thường thích hợp với việc sử dụng trong nhà. Để lựa chọn sản phẩm vừa có độ sắc nét cao, vừa đáp ứng được sự khắc nghiệt của thời tiết ngoài trời, T7202W là sự lựa chọn tối ưu nhất.\n\nDòng camera camera ip wifi Webvision phát triển trên nền tảng công nghệ điện toán đám mây tiên tiến không còn xa lạ với nhiều khách hàng. Tuy nhiên, hầu hết các dòng sản phẩm thường thích hợp với việc sử dụng trong nhà. Để lựa chọn sản phẩm vừa có độ sắc nét cao, vừa đáp ứng được sự khắc nghiệt của thời tiết ngoài trời, T7202W là sự lựa chọn tối ưu nhất.","WEBVISION T7202W","Dòng camera camera ip wifi Webvision phát triển trên nền tảng công nghệ điện toán đám mây tiên tiến không còn xa lạ với nhiều khách hàng. Tuy nhiên, hầu hết các dòng sản phẩm thường thích hợp với việc sử dụng trong nhà. Để lựa chọn sản phẩm vừa có độ sắc nét cao, vừa đáp ứng được sự khắc nghiệt của thời tiết ngoài trời, T7202W là sự lựa chọn tối ưu nhất.","publish","open","closed","","webvision-t7202w","","","2019-03-10 22:30:00","2019-03-10 15:30:00","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=192","0","product","","1"),
("193","1","2019-03-09 23:29:57","2019-03-09 16:29:57","","Webvision-T7202W","","inherit","open","closed","","webvision-t7202w","","","2019-03-09 23:29:57","2019-03-09 16:29:57","","192","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-T7202W.jpg","0","attachment","image/jpeg","0"),
("194","1","2019-03-09 23:30:34","2019-03-09 16:30:34","Tiêu chí để bạn tìm kiếm một chiếc Camera giám sát là gì?\n\nDễ lắp đặt, không có dây dựa loằng ngoằng?\n\nDễ sử dụng cho cả những người không am hiểu về công nghệ?\n\nChất lượng hình ảnh rõ nét?\n\nCó thể sử dụng trên tất cả các thiết bị máy tính, điện thoại di động?","WEBVISION 6206HDW","Tiêu chí để bạn tìm kiếm một chiếc Camera giám sát là gì?\n\nDễ lắp đặt, không có dây dựa loằng ngoằng?","publish","open","closed","","webvision-6206hdw","","","2019-03-10 22:29:24","2019-03-10 15:29:24","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=194","0","product","","1"),
("195","1","2019-03-09 23:30:31","2019-03-09 16:30:31","","6206w","","inherit","open","closed","","6206w","","","2019-03-09 23:30:31","2019-03-09 16:30:31","","194","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6206w.jpg","0","attachment","image/jpeg","0"),
("196","1","2019-03-09 23:31:11","2019-03-09 16:31:11","Có 2 vấn đề then chốt chúng tôi luôn khuyên khách hàng khi đặt mua camera đó là:\n\nXác định đúng nhu cầu của bạn ( tức quan sát cái gì?)\nXác định khu vực muốn quan sát, theo dõi và khoảng cách tới đối tượng\n\nSản phẩm T6100WIP thích hợp với những khách hàng sau:\n\nNgười đi công tác ở nước ngoài muốn theo dõi công việc đang diễn ra tại công ty.\nNgười ở văn phòng muốn giám sát công việc đang diễn ra ở xưởng sản xuất\nNgười ở văn phòng đại diện muốn giới thiệu với các đối tác về xưởng sản xuất của mình ở các tỉnh\nNgười đi làm xa và muốn theo dõi con cái đang làm gì ở nhà.\nNgười ở nhà và muốn quan sát nhân viên đang bán hàng tại các cửa hàng…\nNgười ở văn phòng muốn trông chừng người già , trẻ con , osin ….ở nhà","WEBVISION T6100IP","Người đi công tác ở nước ngoài muốn theo dõi công việc đang diễn ra tại công ty.\nNgười ở văn phòng muốn giám sát công việc đang diễn ra ở xưởng sản xuất\nNgười ở văn phòng đại diện muốn giới thiệu với các đối tác về xưởng sản xuất của mình ở các tỉnh","publish","open","closed","","webvision-t6100ip","","","2019-03-10 22:28:58","2019-03-10 15:28:58","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=196","0","product","","1"),
("197","1","2019-03-09 23:30:58","2019-03-09 16:30:58","","Webvision-T6100WIP","","inherit","open","closed","","webvision-t6100wip","","","2019-03-09 23:30:58","2019-03-09 16:30:58","","196","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-T6100WIP.jpg","0","attachment","image/jpeg","0"),
("198","1","2019-03-09 23:31:43","2019-03-09 16:31:43","Sự sắc nét là khao khát lớn nhất của người tìm mua camera. Bên cạnh đó, đại đa số khách hàng cũng mong muốn nhiều tính năng tiện ích như: quan sát được ban đêm, có khả năng xoay, quét góc lớn hay đơn giản là sự gọn gàng, thẩm mỹ, không cài đặt, không cần chuyên môn.","WEBVISION 6204W","Sự sắc nét là khao khát lớn nhất của người tìm mua camera. Bên cạnh đó, đại đa số khách hàng cũng mong muốn nhiều tính năng tiện ích như: quan sát được ban đêm, có khả năng xoay, quét góc lớn hay đơn giản là sự gọn gàng, thẩm mỹ, không cài đặt, không cần chuyên môn.","publish","open","closed","","webvision-6204w","","","2019-03-10 22:28:29","2019-03-10 15:28:29","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=198","0","product","","1"),
("199","1","2019-03-09 23:31:39","2019-03-09 16:31:39","","6204w","","inherit","open","closed","","6204w","","","2019-03-09 23:31:39","2019-03-09 16:31:39","","198","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6204w.jpg","0","attachment","image/jpeg","0"),
("200","1","2019-03-09 23:32:16","2019-03-09 16:32:16","Camera wifi – camera không dây, xu hướng mới của camera IP thời hiện đại, giải pháp an ninh cho căn nhà của bạn. Mua camera IP Webvision T6836W – cho hình ảnh H264, camera quan sát trực tiếp và từ xa bằng điện thoại di động.\n\nCamera wifi – camera không dây, xu hướng mới của camera IP thời hiện đại, giải pháp an ninh cho căn nhà của bạn. Mua camera IP Webvision T6836W – cho hình ảnh H264, camera quan sát trực tiếp và từ xa bằng điện thoại di động.\n\nCamera wifi – camera không dây, xu hướng mới của camera IP thời hiện đại, giải pháp an ninh cho căn nhà của bạn. Mua camera IP Webvision T6836W – cho hình ảnh H264, camera quan sát trực tiếp và từ xa bằng điện thoại di động.","WEBVISION T6836W","Camera wifi – camera không dây, xu hướng mới của camera IP thời hiện đại, giải pháp an ninh cho căn nhà của bạn. Mua camera IP Webvision T6836W – cho hình ảnh H264, camera quan sát trực tiếp và từ xa bằng điện thoại di động.","publish","open","closed","","webvision-t6836w","","","2019-03-10 22:28:04","2019-03-10 15:28:04","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=200","0","product","","1"),
("201","1","2019-03-09 23:32:13","2019-03-09 16:32:13","","T6836W","","inherit","open","closed","","t6836w","","","2019-03-09 23:32:13","2019-03-09 16:32:13","","200","https://tppone.com/demo/camera/wp-content/uploads/2019/03/T6836W.jpg","0","attachment","image/jpeg","0"),
("202","1","2019-03-09 23:32:45","2019-03-09 16:32:45","– Được thiết kế với vỏ bảo vệ tiêu chuẩn chống nước, với độ bền cao camera ip webvision S6263Y thách thức mọi điều kiện của khắc nghiệt của thời tiết.\n– Tích hợp ghi hình cả ngày lẫn đêm rõ nét. Bao gồm 30 đèn led cung cấp khả năng quan sát khi ánh sáng = 0, độ xa tối đa 25 mét.\n\n– Dễ dàng lắp đặt và sử dụng","WEBVISION S6263YHD","Được thiết kế với vỏ bảo vệ tiêu chuẩn chống nước, với độ bền cao camera ip webvision S6263Y thách thức mọi điều kiện của khắc nghiệt của thời tiết.\n– Tích hợp ghi hình cả ngày lẫn đêm rõ nét. Bao gồm 30 đèn led cung cấp khả năng quan sát khi ánh sáng = 0, độ xa tối đa 25 mét.","publish","open","closed","","webvision-s6263yhd","","","2019-03-10 22:27:38","2019-03-10 15:27:38","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=202","0","product","","1"),
("203","1","2019-03-09 23:32:41","2019-03-09 16:32:41","","WebvisionS6263Y-HD","","inherit","open","closed","","webvisions6263y-hd","","","2019-03-09 23:32:41","2019-03-09 16:32:41","","202","https://tppone.com/demo/camera/wp-content/uploads/2019/03/WebvisionS6263Y-HD.jpg","0","attachment","image/jpeg","0"),
("204","1","2019-03-09 23:33:23","2019-03-09 16:33:23","<div><em><strong>Khi có nhu cầu mua một chiếc camera quan sát, người tiêu dùng thường quan tâm tới các ưu điểm vượt trội, nhiều tính năng hiện đại của sản phẩm. <a href=\"https://webvision.vn/san-pham/webvision-6203w/\" target=\"_blank\" rel=\"noopener\">Camera IP Webvision 6203W l</a>à một trong những sản phẩm đáp ứng tiêu chuẩn đó của khách hành hiện nay.</strong></em></div>\n<div>Với giá thành rất hợp lý chỉ với 2 triệu đồng, kèm theo những tính năng hiện đại “độc nhất vô nhị”, công nghệ cao cấp không thua kém gì những siêu phẩm ra đời trước đó. Camera IP Webvision 6203W<em> </em>là camera quan sát được người dùng lựa chọn số 1 hiện nay.</div>\n<div><img class=\"aligncenter wp-image-1702 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-300x300.jpg 300w\" alt=\"\" width=\"600\" height=\"600\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-300x300.jpg 300w\" /></div>\n<h2><strong>Cài đặt dễ dàng</strong></h2>\n<div>Đầu tiên phải nói về sự tiện ích trong việc cái đặt của dòng Camera WebVision 6203W này. Có thể nói, chưa bao giờ người dùng có thể dễ dàng sử dụng đến vậy. Ngay cả một người không có kiến thức về kĩ thuật, thậm chí ngay cả chị em phụ nữ cũng có thể nhanh chóng lắp đặt được chiếc camera này.</div>\n<div>\n\nKhông cần các thao tác cài đặt phức tạp, không cần cấu hình, không cần mua tên miền, không cần mua hosting…Bạn chỉ cần cắm là chiếc camera sẽ tự động chạy và ngay lập tức, bạn có thể xem ngay trên chiếc điện thoại của mình ở bất kì nơi đâu trên thế giới.\n<h2><strong>Kiểm soát từ xa qua smartphone</strong></h2>\nVới khả năng chia sẻ hình ảnh của camera qua màn hình smartphone, những chiếc Camera IP đang trở thành lựa chọn của nhiều người tiêu dùng. Nhờ nó, bạn hoàn toàn có thể kiểm soát được toàn bộ ngôi nhà của mình dù bạn đang ở bất kỳ đâu. Đây cũng chính là một trong những tiện ích của ngôi nhà thông minh mà một chiếc camera có thể mang lại.\n<h2><strong>Mắt thần xoay 360 kèm gật gù siêu giám sát</strong></h2>\nCamera WebVision 6203W có khả năng xoay 360 độ, gật gù lên xuống 120 độ khiến cho khả năng đeo bám và theo dõi trên cả hài lòng. Không còn khái niệm góc chết nữa. Các bạn có tin được không, chức năng này có thể thao tác 100% trên điện thoại hay máy tính bảng chứ không chỉ trên máy tính như một số dòng camera khác. Dễ hơn ăn bánh là cảm nhận của toàn bộ các khách hàng đã sử dụng, tất cả chỉ là vuốt ngón tay trên màn hình.\n<h2><strong>Tự động phát hiện trộm thông báo ngay lập tức qua email</strong></h2>\nCamera IP Wifi WebVision 6203W dựa vào công nghệ phát hiện chuyển động bất thường, ghi hình khi có chuyển động. Điều này có nghĩa bạn có thể thiết lập chế độ chỉ ghi hình khi có chuyển động. Hãy hình dung bạn đi làm về, chỉ cần liếc qua xem lại camera xem có điều gì bất thường không. Không như các loại camera khác, bạn không biết lúc nào cần xem lại và gần như toàn bộ đều không biết đến hay bỏ sót những khoảnh khắc đáng ngờ\n\nHiện nay trên thị trường có rất nhiều sản phẩm Camera không dây của nhiều hãng khác nhau, giá cả có khi chênh nhau cả triệu đồng. Tuy nhiên rủi ro tiềm ẩn không hề nhỏ, chưa nói đến những tổn thất không thể đo đếm bằng vật chất như mục đích theo dõi con nhỏ ở nhà với oshin.\n\n</div>","WEBVISION 6203W","Hiện nay trên thị trường có rất nhiều sản phẩm Camera không dây của nhiều hãng khác nhau, giá cả có khi chênh nhau cả triệu đồng. Tuy nhiên rủi ro tiềm ẩn không hề nhỏ, chưa nói đến những tổn thất không thể đo đếm bằng vật chất như mục đích theo dõi con nhỏ ở nhà với oshin.","publish","open","closed","","webvision-6203w","","","2019-03-10 22:27:11","2019-03-10 15:27:11","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=204","0","product","","1"),
("205","1","2019-03-09 23:33:20","2019-03-09 16:33:20","","6203w","","inherit","open","closed","","6203w","","","2019-03-09 23:33:20","2019-03-09 16:33:20","","204","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6203w.jpg","0","attachment","image/jpeg","0"),
("206","1","2019-03-09 23:34:06","2019-03-09 16:34:06","Michelin là một thương hiệu hàng đầu trên thế gới về lốp xe và phụ kiện cho xe hơi. Tất cả các sản phẩm từ thương hiệu này luôn có chất lượng tốt, mẫu mã đa dạng và giá thành hợp lý. Bơm điện ô tô 12V Michelin model 12260 là một trong những sản phẩm được sản xuất trên dây truyền công nghệ tiên tiến từ Michelin, nó được coi như người bạn đồng hành của mỗi lái xe khi di chuyển trên đường, với chiếc bơm điện này luôn giúp những chiếc lốp xe căng hơi, hoạt động ổn định trước những sự cố trên đường.\n\n<img class=\"aligncenter wp-image-5401 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg 340w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg 340w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-300x300.jpg 300w\" />\n\nBơm điện ô tô Michelin 12260 có thiết kế nhỏ gọn, bạn có thể để trong cốp xe, mang theo để sử dụng mà không gặp bất cứ sự bất tiện nào. Sở hữu bơm điện 12260 giúp bạn có thể yên tâm luôn luôn kiểm tra và điều chỉnh áp suất bánh xe ngay tại chỗ, trên mọi hành trình ngay cả trường hợp không may cán pải đinh hay những vật nhọn.\n\nBơm điện ô tô Michelin 12260 được trang bị đồng hồ đo áp suất lốp điện sẽ giúp bạn bơm hơi cho lốp xe khi non hơi, hay khi bạn cán phải đinh trên đường bạn sẽ bơm tạm để xe có thể di chuyển và chạy về gara để sửa.\n\n<img class=\"aligncenter wp-image-5402 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg 640w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1-533x400.jpg 533w\" alt=\"\" width=\"500\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg 640w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1-533x400.jpg 533w\" />\n\nƯu điểm vượt trội của Michelin 12260:\n\n– Bơm có thiết kế hình trụ rất gọn nhẹ, thao tác sử dụng đơn giản chỉ bằng 1 nút bấm, tất cả mọi người ai cũng sử dụng được, kể cả phụ nữ.\n\n– Thân máy bơm được bằng nhôm cao cấp và giải nhiệt cực nhanh nhờ phân bố đồng đều theo hình tròn.\n\n– Tích hợp thêm đồng hồ đo áp suất có thể tháo rời để kiểm tra từng bánh xe mà không cần mang cả bơm, vừa tiết kiệm công sức và vô cùng tiện lợi.\n\n– Màn hình hiển thị đèn LED trên đồng hồ đo, thân máy 2 đèn LED chiếu sáng dễ dàng sử dụng trong tối.\n\n– Dây điện nguồn 3m , Dây bơm 60cm và kèm các valve bơm phụ theo máy (bơm bóng, nệm hơi, bơm xe máy…) Cầu chì dự bị 15A.\n\n– Bơm hoạt động bằng nguồn 12V lấy trực tiếp từ ổ tẩu thuốc, rất tiện lợi khi sử dụng.\n\n– Motor bơm sản xuất theo công nghệ mới nhất cho phép giảm tiếng ồn tối đa, đã được chứng nhận độ ồn dưới 86 dB.\n\n– Áp suất tối đa: 7 bar tương đương 99,9 psi\n\n– Công suất bơm từ 0 đến 30 psi trong khoảng 3 phút, bơm căng bánh xe trong vòng 4 phút.\n\n<strong>Bộ sản phẩm bao gồm:</strong>\n– 1 x Bơm điện ô tô 12 V Michelin\n\n– 1x đồng hồ đo áp suất\n\n– Ổ cắm tới tẩu thuốc lá trên ô tô DC 12v (soket lighter)\n\n– Bộ chuyển đổi konektor pompa\n\nSử dụng bơm điện Michelin là sự lựa chọn thông minh hoàn hảo và tiết kiệm tiền bạc nhất giúp bạn có thể yên tâm di chuyển an toàn khi tham gia giao thông bằng xe hơi.\n\nHiện tại, Bơm điện ô tô 12V Michelin Model 12260 được ĐẲNG CẤP CAMERA – ĐẠI LÝ MICHELIN TẠI VIỆT NAM phân phối. Để biết thêm thông tin chi tiết và đặt mua sản phẩm hãy liên hệ với chúng tôi qua số điện thoại sau:\n\nHotline đặt hàng:\n\n01234.000.000 0934.000.000 01234.666.666\n\nHotline hỗ trợ:\n\n0969.9999.19 0969.9999.29 0969.9999.69\n\nSHOWROOM TRƯNG BÀY SẢN PHẨM TẠI ĐẲNG CẤP CAMERA\n\nMIỀN BẮC:\n\nSố 33/121 Thái hà, Phường Trung Liệt, Quận Đống Đa, Thành phố Hà Nội. Điện thoại: (04).22.66.77.88 – (04).62.555.553\nSố 11 Phan Đình Phùng, Phường Đồng Quang, Thành phố Thái Nguyên. Điện thoại: 0969.9999.69\nMIỀN NAM: Số 232/17 Cao Thắng, Phường 12, Quận 10, Thành phố Hồ Chí Minh. Điện thoại: (08).22.44.66.88 – (08).22.444.666 – (08).22.444.888","Bơm điện 12V Michelin 12260","","publish","open","closed","","bom-dien-12v-michelin-12260","","","2019-03-10 00:20:16","2019-03-09 17:20:16","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=206","0","product","","1"),
("207","1","2019-03-09 23:34:02","2019-03-09 16:34:02","","bom-dien-12v-michelin-12260","","inherit","open","closed","","bom-dien-12v-michelin-12260","","","2019-03-09 23:34:02","2019-03-09 16:34:02","","206","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-12v-michelin-12260.jpg","0","attachment","image/jpeg","0"),
("208","1","2019-03-09 23:35:01","2019-03-09 16:35:01","Thẻ nhớ Samsung Evo 64Gb Class 10","Thẻ nhớ Samsung Evo 64Gb BH 12 tháng","","publish","open","closed","","the-nho-samsung-evo-64gb","","","2019-03-10 00:19:47","2019-03-09 17:19:47","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=208","0","product","","1"),
("209","1","2019-03-09 23:34:56","2019-03-09 16:34:56","","samsung-64gb-class10","","inherit","open","closed","","samsung-64gb-class10","","","2019-03-09 23:34:56","2019-03-09 16:34:56","","208","https://tppone.com/demo/camera/wp-content/uploads/2019/03/samsung-64gb-class10.jpg","0","attachment","image/jpeg","0"),
("210","1","2019-03-09 23:35:35","2019-03-09 16:35:35","Dây cấp nguồn cho Camera S8,","Nguồn các mẫu camera hành trình Webvision","Dây cấp nguồn cho Camera S8,","publish","open","closed","","nguon-cac-mau-camera-hanh-trinh-webvision","","","2019-03-10 22:32:13","2019-03-10 15:32:13","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=210","0","product","","1"),
("211","1","2019-03-09 23:35:32","2019-03-09 16:35:32","","Nguon-s8","","inherit","open","closed","","nguon-s8","","","2019-03-09 23:35:32","2019-03-09 16:35:32","","210","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Nguon-s8.jpg","0","attachment","image/jpeg","0"),
("212","1","2019-03-09 23:36:23","2019-03-09 16:36:23","Bạn đang di chuyển trên đường nhưng vì một sự cố nào đó mà chiếc lốp xe bị xì hơi hoặc nổ lốp, giữa đường quốc lộ vắng vẻ, không người qua lại, bạn không mang theo lốp dự phòng, gọi cữu trợ thì mãi không thấy, lúc này bạn sẽ làm gì? Bạn không cần phải lo lắng, tất cả vấn đề trên chỉ cần 1 thiết bị duy nhất có thể giải quyết dễ dàng đó chính là Bơm ô tô tự vá thông minh PFERD 4T-5S.\n\n<img class=\"aligncenter wp-image-5404 size-full lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-300x300.jpg 300w\" />\n\nBơm ô tô tự vá thông minh PFERD 4T-5S có chức năng tự vá, tự bơm, tự đo áp lực và tự chiếu sáng với khả năng cực nhanh, cực khỏe, cực nhỏ, cực bền và cực tiết kiệm cho người sử dụng. Bơm có thể tự động khôi phục hoàn toàn lốp xe trong 5 phút, rút ngắn thời gian nguy hiểm bên đường, không cần thiết phải đợi xe cứu hộ hoặc dùng kích để nâng xe thay lốp… Chiếc bơm tự vá thông minh PFERD 4T-5S này giống như một vị cứu tinh khi bạn gặp khó khăn và sẽ trở thành một người thợ sửa xe chuyên nghiệp sẵn sàng đồng hành cùng xế hộp trên mỗi cung đường.\n\nPFERD 4T-5S có thiết kế siêu nhỏ gọn, được đóng trong túi hộp nhỏ tiện dụng, bạn có thể mang theo trong cốp xe sử dụng bất cứ khi nào cần.\n\n<img class=\"aligncenter wp-image-5406 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg 800w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-768x576.jpg 768w\" alt=\"\" width=\"500\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg 800w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-768x576.jpg 768w\" />\n<h2><strong>Ưu điểm của PFERD 4T-5S </strong></h2>\nBơm ô tô tự vá thông minh ra đời xuất phát từ nhu cầu sửa chữa lốp xe bị hỏng trực tiếp tại vị trí xảy ra sự cố. Chính vì vậy, nó được thích hợp nhiều tính năng vô cùng tiên lợi.\n\n+ Thiết kế bơm ô tô chỉ mất thời gian từ 3 – 5 phút, sử dụng nguồn điện 12V trên xe tiết kiệm thời gian.\n\n+ Với công nghệ sản xuất keo tự vá hiện đại từ Anh, thành phần cao su tự nhiên, an toàn, dễ sử dụng và khả năng tự vá thông minh đem lại hiệu quả nhanh chóng mà không gây ô nhiễm môi trường.\n\n+ Bơm ô tô có tích hợp đèn chiếu sáng ban đêm, lớp vỏ chống va đập bền bỉ, kích thước nhỏ gọn, có túi xách mang theo tiện lợi, đơn giản.\n\n+ Bơm ô tô tự vá thông minh phù hợp với các loại xe tải nhỏ, taxi, xe 9 chỗ hạng B2.\n\n+ Keo tự vá không gây oxy hóa với cao su, nhựa, kim loại, ở trạng thái dung dịch dễ dàng tan trong nước, không ảnh hưởng tới da, không có tác dụng độc phụ, an toàn không cháy.\n\n+ Dễ dàng rửa sạch bằng nước.\n\n+ Keo tự vá Pferd có thể nhanh chóng vá vết đinh đâm thẳng hoặc đâm xiên, có thể kịp thời vá vết thủng lên tới đường kính 6.35mm, tránh việc xuống hơi dẫn đến mất an toàn cho xe.\n\n+ Keo tự vá Pferd sau khi bơm vào lốp sẽ giữ trạng thái lỏng kể cả dưới -40C~ + 80C có thể đảm bảo hiệu quả vá kín khi bị đâm thủng nhiều lần.","Bơm tự vá PFERD 4T-5S","","publish","open","closed","","bom-tu-va-pferd-4t-5s","","","2019-03-09 23:36:23","2019-03-09 16:36:23","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=212","0","product","","0"),
("213","1","2019-03-09 23:36:08","2019-03-09 16:36:08","","Bom-tu-va","","inherit","open","closed","","bom-tu-va","","","2019-03-09 23:36:08","2019-03-09 16:36:08","","212","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Bom-tu-va.jpg","0","attachment","image/jpeg","0"),
("214","1","2019-03-09 23:37:21","2019-03-09 16:37:21","Với bất cứ phương tiện nào thì lốp xe là một phụ kiện rất quan trọng, chịu toàn bộ trọng tải của xe, chính vì vậy nó cần được quan tâm đặc biệt và phải luôn đảm bảo đầy hơi khi di chuyển. <strong><em>Bơm điện 12V Michelin</em></strong><strong><em> 12266</em></strong> là một phụ kiện thông minh giúp bạn đảm bảo an toàn khi di chuyển, giải quyết tình trạng lốp non hơi, dính phải đinh.\n\nBơm điện Michelin luôn đảm bảo an toàn với nhiều tính năng thông dụng cho phép bạn cài đặt áp suất lốp tích hợp phù hợp và thông số hơi tự động ngắt. Ngoài ra máy bơm Michelin còn tích hợp đèn LED chiếu sáng và đèn LED màu đỏ nhấp nháy để cảnh báo an toàn khi bạn bơm trong đêm tối, môi trường thiếu ánh sáng.\n\n<img class=\"aligncenter wp-image-5371 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg\" sizes=\"(max-width: 650px) 100vw, 650px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg 800w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-711x400.jpg 711w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-768x432.jpg 768w\" alt=\"\" width=\"650\" height=\"366\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg 800w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-711x400.jpg 711w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-768x432.jpg 768w\" />\nMáy bơm điện 12V Michelin có thiết kế nhỏ gọn, tiện dụng thuận tiện cho bạn khi di chuyển và khi cất, bạn có thể để trong cốp xe để sử dụng bất cứ khi nào cần thiết. Ngoài ra, máy còn có kèm theo nhiều loại van bơm khác nhau: van bơm bóng, bơm xe máy, xe đạp, xuồng, phao, đệm… và máy còn trang bị thêm 1 ổ chia mồi thuốc 12V,1 ổ chia USB rất thuận tiện cho việc dùng nhiều thiết bị cùng một lúc.\n\n&nbsp;\n\n<img class=\"aligncenter wp-image-5374 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg 300w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-180x180.jpg 180w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg 300w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-180x180.jpg 180w\" />\n\nSản phẩm được trang bị động cơ mạnh mẽ cho áp suất tối đa 150psi ~ 10kg/cm2, có thể thổi phồng một lốp xe từ căn hộ đến 30 psi trong khoảng 3 phút trong khi tạo cho bạn thời gian rảnh để có thể làm việc khác. Màn hình LCD hiển thị kỹ thuật số màu trắng rất dễ đọc và có thể chuyển giữa PSI.\n\nHiện tại, Bơm điện ô tô 12V Michelin 12266 được ĐẲNG CẤP CAMERA – ĐẠI LÝ MICHELIN TẠI VIỆT NAM phân phối. Để biết thêm thông tin chi tiết và đặt mua sản phẩm hãy liên hệ với chúng tôi qua số điện thoại sau:\n\nHotline đặt hàng:\n\n01234.000.000 0934.000.000 01234.666.666\n\nHotline hỗ trợ:\n\n0969.9999.19 0969.9999.29 0969.9999.69\n\nSHOWROOM TRƯNG BÀY SẢN PHẨM TẠI ĐẲNG CẤP CAMERA\n\nMIỀN BẮC:\n\nSố 33/121 Thái hà, Phường Trung Liệt, Quận Đống Đa, Thành phố Hà Nội. Điện thoại: (04).22.66.77.88 – (04).62.555.553\nSố 11 Phan Đình Phùng, Phường Đồng Quang, Thành phố Thái Nguyên. Điện thoại: 0969.9999.69\nMIỀN NAM: Số 232/17 Cao Thắng, Phường 12, Quận 10, Thành phố Hồ Chí Minh. Điện thoại: (08).22.44.66.88 – (08).22.444.666 – (08).22.444.888","Bơm điện MICHELIN 12266 BH 24 tháng","Sản phẩm được trang bị động cơ mạnh mẽ cho áp suất tối đa 150psi ~ 10kg/cm2, có thể thổi phồng một lốp xe từ căn hộ đến 30 psi trong khoảng 3 phút trong khi tạo cho bạn thời gian rảnh để có thể làm việc khác. Màn hình LCD hiển thị kỹ thuật số màu trắng rất dễ đọc và có thể chuyển giữa PSI.","publish","open","closed","","bom-dien-michelin-12266","","","2019-03-10 22:31:48","2019-03-10 15:31:48","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=214","0","product","","1"),
("215","1","2019-03-09 23:37:13","2019-03-09 16:37:13","","bom-dien-michelin-12266-3","","inherit","open","closed","","bom-dien-michelin-12266-3","","","2019-03-09 23:37:13","2019-03-09 16:37:13","","214","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-michelin-12266-3.jpg","0","attachment","image/jpeg","0"),
("216","1","2019-03-09 23:38:15","2019-03-09 16:38:15","Bạn đang có nhu cầu muốn mua một chiếc máy bơm lốp ô tô mini để dùng cho chiếc xe thân yêu của bạn? Bạn đang phân vân không biết nên mua loại nào cho tốt, hãng nào cho tốt, cụ thể là nên mua cái nào? Rồi thì mua ở đâu để có giá tốt, bảo hành chu đáo?\n\nMichelin 12264 là bơm điện ô tô sử dụng công nghệ động cơ máy nén mới nhất hiện có trên thị trường hiện nay. Nó có thể được sử dụng để bơm lốp xe như xe hơi, xe máy, xe đạp. Nó cũng phục vụ như là một nguồn điện kỹ thuật số (DPS).\n\n<img class=\"aligncenter wp-image-5410 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg 430w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg 430w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-300x300.jpg 300w\" />\n\nBơm Michelin 12264 được thiết kế để bơm tất các các loại lốp xe không đủ áp suất hơi mọi lúc mọi nơi. Chiếc bơm Michelin 12264 này vô cùng nhỏ gọn này được trang bị đồng hồ đo áp suất để xác định chính xác áp suất theo đúng yêu cầu. Ngoài ra, nó cũng được trang bị một nút xả trong trường hợp lốp xe bị quá áp suất yêu cầu hoặc trong trường hợp lốp vô tình bị bơm quá áp suất yêu cầu.\n<h2><strong>Ưu điểm từ Michelin 12264</strong></h2>\n– Thương hiệu uy tín\n– Thiết kế vô cùng nhỏ gọn, tin mình đi bạn sẽ phải bất ngờ về độ nhỏ của nó đấy!\n– Dây dẫn điện dài (hơn 3 m tý)\n– Báo áp suất lốp bằng màn hình LCD\n– Máy trang bị nút xả, để giúp bạn xả bớt hơi trong trường hợp bơm quá căng so với quy định\n– Hỗ trợ nhiều van bơm, giúp bạn bơm được nhiều loại hơn như: Bóng, phao bơi, nệm hơi, xe máy, xe đạp…\n– Máy hoạt động rất êm ái, ổn định, tốc độ bơm khá nhanh\n– Máy cũng hỗ trợ thêm một cổng sạc USB để bạn có thể chia nguồn\n– Bảo hành chính hãng 12 tháng","Bơm điện MICHELIN 12264 nhập Hàn","Bơm Michelin 12264 được thiết kế để bơm tất các các loại lốp xe không đủ áp suất hơi mọi lúc mọi nơi. Chiếc bơm Michelin 12264 này vô cùng nhỏ gọn này được trang bị đồng hồ đo áp suất để xác định chính xác áp suất theo đúng yêu cầu. Ngoài ra, nó cũng được trang bị một nút xả trong trường hợp lốp xe bị quá áp suất yêu cầu hoặc trong trường hợp lốp vô tình bị bơm quá áp suất yêu cầu.","publish","open","closed","","bom-dien-michelin-12264","","","2019-03-10 22:31:23","2019-03-10 15:31:23","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=216","0","product","","1"),
("217","1","2019-03-09 23:38:05","2019-03-09 16:38:05","","bom-dien-michelin-12264-2","","inherit","open","closed","","bom-dien-michelin-12264-2","","","2019-03-09 23:38:05","2019-03-09 16:38:05","","216","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-michelin-12264-2.jpg","0","attachment","image/jpeg","0"),
("218","1","2019-03-09 23:39:12","2019-03-09 16:39:12","<b>ĐẶT HÀNG NGAY</b>\n<div>\n\nCác bạn <strong>đặt hàng </strong>theo 1 trong các cách sau:\n\n– Cách 1: <strong>Comment Số điện thoại + Họ Tên + Địa Chỉ</strong>\n\n– Cách 2: <strong>Đặt hàng nhanh/ Đặt hàng</strong>\n\n– Cách 3: <strong>Đặt hàng qua số hotline</strong> (hỗ trợ 24/7)\n\n– Cách 4: <strong>Chat trực tiếp qua Facebook</strong>\n\n– Cách 5: <strong>Đến trực tiếp các cửa hàng của Webvision</strong>\n<div>\n<p class=\"p1\"><strong><span class=\"s1\"><img class=\"emoji lazy-load-active\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/11/svg/260e.svg\" alt=\"☎️\" data-src=\"https://s.w.org/images/core/emoji/11/svg/260e.svg\" />  Tổng đài <a href=\"tel:19000388\">1900 0388</a> – 081 667 667 – 0971 133 133 – <a href=\"tel:0934000000\">0934 000 000</a> – <a href=\"tel:0969999929\">0969 9999 29</a> –<a href=\"tel:01234666666\">0834 666 666 – 0379 555222</a></span></strong></p>\n\n</div>\n<div>Chat facebook: <strong>Webvision.vn</strong></div>\n<div></div>\n</div>\n<strong>HỆ THỐNG SHOWROOM VÀ ĐẠI LÝ TRÊN TOÀN QUỐC</strong>\n\n<b>◊ Hà Nội</b>\n\nĐịa chỉ: Số 33, Ngõ 121 Thái Hà, Trung Liệt, Đống Đa, Hà Nội.\n\n<b>◊ Thái Nguyên</b>\n\nĐịa chỉ: Số 579 Phan Đình Phùng (Đối diện Đông Á Plaza Hotel), Thành phố Thái Nguyên\n\n<b>◊ Thành phố Hồ Chí Minh</b>\n\nĐịa chỉ: Số 232/17 Cao Thắng, Phường 12, Quận 10, Thành phố Hồ Chí Minh.\n\n<strong><b>◊ </b>Hệ thống đại lý trên toàn quốc: </strong>https://webvision.vn/danh-sach-dai-ly/","Bộ tẩu chia 3 ô tô Hoco C1 chính hãng","Địa chỉ: Số 579 Phan Đình Phùng (Đối diện Đông Á Plaza Hotel), Thành phố Thái Nguyên","publish","open","closed","","bo-tau-chia-3-o-to-hoco-c1-chinh-hang","","","2019-03-10 22:30:56","2019-03-10 15:30:56","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=218","0","product","","1"),
("219","1","2019-03-09 23:38:55","2019-03-09 16:38:55","","c1-3-in-1car-charger-white","","inherit","open","closed","","c1-3-in-1car-charger-white","","","2019-03-09 23:38:55","2019-03-09 16:38:55","","218","https://tppone.com/demo/camera/wp-content/uploads/2019/03/c1-3-in-1car-charger-white.jpg","0","attachment","image/jpeg","0"),
("220","1","2019-03-09 23:40:38","2019-03-09 16:40:38","Nhắc tới đơn vị hàng đầu cung cấp những dòng camera hành trình “chất như nước cất” người ta không thể không kể đến thương hiệu <strong>WEBVISION</strong>. Với sự ra đời của hàng loạt camera hành trình gây được tiếng vang lớn trong thị trường Camera hành trình trong nước, bởi không chỉ thiết kế sang trọng, tinh tế, ăn ý trong mọi nội thất cuả đa dạng các dòng xe khác nhau, Webvision còn chiếm được cảm tình của khách hàng khi liên tục đổi mới, liên tục cập nhật những tính năng thông minh, hút khách, dẫn đầu xu thế.\n\nMới đây, sự ra mắt của camera hành trình N93 Plus với những điểm khác biệt nổi trội từ giao diện cho đến tính năng, đã làm điên đảo thị trường camera hành trình, nhận được phản hồi tích cực của mọi khách hàng. Chính sự thành công này như tiếp thêm động lực, tới đây Webvision sắp tung ra thị trường sản phẩm mới – phiên bản nâng cấp của Camera hành trình Webvision N93 Plus – Webvision N93X. Liệu rằng sự ra đời của siêu phẩm này có 1 lần nữa đem lại những bất ngờ thú vị, chinh phục được những khách hàng “cứng” trong làng xe Việt hay không? Hãy dành 1 vài phút đọc hết bài viết này để cùng tìm hiểu những điều kỳ diệu mà Webvision N93X mang lại nhé!\n\n<img class=\"alignnone size-medium wp-image-9346 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg\" sizes=\"(max-width: 764px) 100vw, 764px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/1-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/1-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/1.jpg 1500w\" alt=\"\" width=\"764\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/1-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/1-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/1.jpg 1500w\" />\n\n<strong>DIỆN MẠO MỚI – PHONG THÁI MỚI\n</strong>\n\nĐội ngũ thiết kế của Webvision đã cực kỳ tinh tế trong cách cải tiến sản phẩm của mình ngay từ vẻ bề ngoài. Xuất hiện trong “bộ cánh” khác những phiên bản trước, Webvision N93X mang sắc đen sang trọng, lịch lãm. Màu đen đem lại năng lượng của sự bền vững và sự ổn định. Đen là sắc màu phong thuỷ của sự bí ẩn, và tinh tế. Sở hữu vẻ bề ngoài hấp dẫn, cực phẩm này chắc chắn sẽ thu hút mọi tín đồ xế hộp ngay từ cái nhìn đầu tiên. Ngôn ngữ thiết kế của N93X được định hướng theo phong cách tối giản, chuyên nghiệp và thoáng mắt.\n\n<img class=\"alignnone size-medium wp-image-9347 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg\" sizes=\"(max-width: 761px) 100vw, 761px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg 761w, https://webvision.vn/wp-content/uploads/2018/09/2-768x403.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/2-1400x735.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/2.jpg 1500w\" alt=\"\" width=\"761\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg 761w, https://webvision.vn/wp-content/uploads/2018/09/2-768x403.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/2-1400x735.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/2.jpg 1500w\" />\n\nPhát huy điểm mạnh của phiên bản hút khách trước đó, Webvision N93X mang đến giao diện hot nhất hiện nay, và màn hình cảm ứng chuyển động mượt mà, hơn hẳn các camera hành trình khác trên thị trường. Giao diện màn hình của camera hành trình trông khá giống với giao diện trên các máy điện thoại chạy hệ điều hành Windows Phone hay Windows 10. Chất lượng màn hình sáng và trong hơn, góc nhìn cũng được cải thiện rõ rệt.\n\n<strong>ĐIỂM KHÁC BIỆT CỦA WEBVISION N93X</strong>\n\nSắp tới đây, Webvision sẽ mang đến cho người dùng một dòng sản phẩm mới nhất, hiện đại nhất, chưa từng xuất hiện trên thị trường camera hành trình, với những điểm khác biệt rõ rệt:\n<ul>\n 	<li>Nếu như đời trước Webvision N93 Plus bề ngoài kết hợp 2 màu đen và xám, thì tới phiên bản mới đây, thiết bị N93X sẽ được thiết kế bởi 1 tông màu duy nhất: Màu đen của sự sang trọng, huyền bí.</li>\n 	<li>Về giao diện, N93X vẫn sử dụng giao diện màn hình chính với các mục quen thuộc: Ngày tháng, định vị GPS, Video lái xe, Bluetooth, Đài FM, Nghe nhạc và Ứng dụng. Khác biệt duy nhất đó chính là, N93X đã thay thế mục Cửa hàng ứng dụng bằng mục CarAssit với biểu tượng rõ ràng, mục đích giúp người sử dụng có thể dễ dàng thao tác với ứng dụng này hơn.</li>\n 	<li>Màn hình của N93X là điều làm nên sự nổi bật hơn cả. Webvision thay thế màn hình cảm ứng đa điểm TFT LCD của N93 Plus bằng màn hình được xem là màn hình chuẩn nhất hiện nay. Với việc sử dụng màn hình IPS, N93X loại bỏ hoàn toàn hiện tượng phản sáng, nhoè hình, màu sắc được tăng cường về độ sáng và độ chân thực, góc nhìn cũng được mở rộng hơn</li>\n</ul>\n<img class=\"wp-image-9348 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg\" sizes=\"(max-width: 660px) 100vw, 660px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/3-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/3-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/3.jpg 1500w\" alt=\"\" width=\"660\" height=\"346\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/3-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/3-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/3.jpg 1500w\" />\n<ul>\n 	<li>Điểm khác biệt nữa đó chính là chất lượng ghi hình, vẫn giữ phong độ ở chế độ quay camera trước Full HD 1080P. Tuy nhiên, điều tạo nên đẳng cấp mới cho thiết bị này đó chính là: nâng cấp độ phân giải của camera sau N93X lên đến HD 720P cho chất lượng ghi hình cực rõ nét. Tất cả hình ảnh nhờ đó đều được thể hiện chân thực, sống động bất kể ban ngày, ban đêm, thời tiết mưa nắng,..</li>\n 	<li>Bộ nhớ RAM của Webvision N93X cũng được nâng cấp lên 2GB – gấp đôi dung lượng lưu trữ so với sản phẩm đời trước, giúp cho hệ thống vận hành mượt mà, trơn tru hơn, người dùng có thể sử dụng tab ứng dụng khác nhau cùng 1 lúc mà không lo bị đơ, bị giật.</li>\n</ul>\n<strong>NHỮNG TÍNH NĂNG NỔI TRỘI LÀM NÊN SIÊU PHẨM CÓ 1 – 0 – 2</strong>\n\nKhông chỉ sở hữu thiết kế mới lạ, độc đáo, Webvision N93X mang đến cho người dùng cảm giác mới lạ khi sử dụng những tính năng của sản phẩm này.\n\n<strong><em>Ghi hình hai chiều cùng lúc với độ phân giải cao</em></strong>\n\nCamera hành trình được thiết kế thấu kính dạng mắt cá nên tầm nhìn cực rộng. Góc quay l40 độ, hỗ trợ chế độ quay camera trước Full HD 1080P. Phiên bản mới nâng cấp cho phép camera sau ghi hình ở chế độ HD 720P. Tất cả các hình ảnh được ghi lại một cách chân thực, rõ nét giúp người dùng có thêm thông tin khi xảy ra va chạm kể cả trong ban đêm, hay trong bất kỳ điều kiện khắc nghiệt nào của thời tiết.\n\n<img class=\"alignnone size-medium wp-image-9349 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/4-768x360.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/4-1400x656.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/4.jpg 1500w\" alt=\"\" width=\"800\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/4-768x360.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/4-1400x656.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/4.jpg 1500w\" />\n\n<strong><em>Tích hợp Camera lùi</em></strong>\n\nĐây là tính năng mà hầu hết người dùng đều cảm thấy tiện dụng, đặc biệt đối với nữ giới hoặc những nguời mới tập lái, tay lái yếu. Sử dụng tính năng này khi chuyển về chế độ lùi, người lái có thể dễ dàng di chuyển lùi, đỗ xe theo đúng ý mình mà không xảy ra những tai nạn không đáng có.\n\n<strong><em>Tích hợp công nghệ 4G hiện đại</em></strong>\n\nCông nghệ này là một trong những công nghệ mới nhất hiện nay, và không phải camera hành trình nào cũng có được. Chỉ với 1 thẻ sim 4G, bạn có thể tha hồ lướt web, xem phim, nghe nhạc và trải nghiệm nhữug ứng dụng hữu ích trên Google Play miễn phí, với tốc độ siêu nhanh. Áp dụng công nghệ này, Webvision N93X không khác gì thiết bị giải trí, với màn hình lớn 6.86 inch như một chiếc máy tính bảng, bạn sẽ được tận hưởng không gian thư giãn, yêu thích của mình ngay trên ô tô hết sức tiện lợi.\n\n<img class=\"alignnone size-medium wp-image-9350 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg\" sizes=\"(max-width: 714px) 100vw, 714px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg 714w, https://webvision.vn/wp-content/uploads/2018/09/5-768x430.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/5-1400x784.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/5.jpg 1500w\" alt=\"\" width=\"714\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg 714w, https://webvision.vn/wp-content/uploads/2018/09/5-768x430.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/5-1400x784.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/5.jpg 1500w\" /><strong><em>Phát wifi và kết nối Bluetooth 4.0</em></strong>\n\nLà 1 trong những dòng sản phẩm camera hành trình hiếm hoi sử dụng hệ điều hành Android 5.1, Webvision N93X cho phép bạn có thể tuỳ chỉnh nhiều thiết lập trong múc Cài đặt ở ngoài màn hình chính, như: cài đặt âm lượng, độ sáng màn hình, các cài đặt liên quan đến hình ảnh và âm thanh trên thiết bị. Ấn tượng nhất, thiết bị còn hỗ trợ thu, phát wifi. Khi cắm thẻ sim 4G vào camera, bạn có thể bật/tắt 4G, và phát wifi cho các thiết bị khác cùng sử dụng.\n\n<strong><em>Giám sát, định vị xe ô tô thông qua ứng dụng Car Assit được cài đặt trên điện thoại</em></strong>\n\nKhông chỉ đơn thuần định vị được vị trí trên bản đồ, Webvision N93X còn cho người dùng biết được chiếc xe đang ở cung đường nào, di chuyển ra sao và thậm chí là có thể xem được hoạt động phía trước của xe được ghi lại qua camera hành trình. Nhờ ứng dụng thông minh này, bạn sẽ không còn lo lắng khi cho người khác mượn xe, hay đỗ xe tại nơi không quen thuộc nữa. Khi xe của bạn có dấu hiệu lạ, bị phá hoại, hay trộm cắp, camera này sẽ tự động chụp lại màn hình rồi gửi đến điện thoại của bạn. Sở hữu Webvision N93X, bạn như có 1 vệ sĩ bên cạnh, sẽ bảo vệ bạn trong mọi tình huống!\n\n<img class=\"alignnone size-medium wp-image-9351 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/6-768x327.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/6-1400x596.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/6.jpg 1500w\" alt=\"\" width=\"800\" height=\"341\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/6-768x327.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/6-1400x596.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/6.jpg 1500w\" />\n\n<strong><em>GPS định vị, dẫn đường thông minh với bản đồ Navitel</em></strong>\n\nBản đồ Navitel được cài đặt trên camera hành trình là 1 dữ liệu bản đồ tiên tiến nhất và chính xác hiện nay, tích hợp bản đồ 63 tỉnh thành trên cả nước, được cập nhật liên tục 3 tháng/ 1 lần. Sử dụng Navitel, nỗi lo lạc đường sẽ không còn là vấn đề ám ảnh bạn nữa. Khi phải đi xa, qua các tỉnh thành không quen thộc, thiết bị sẽ định vị vị trí của bạn và nhanh chóng chỉ dẫn bạn đi đến chính xác địa điểm bạn muốn tới.\n\nĐịnh vị GPS của Webvision N93X còn hỗ trợ cảnh báo làn đường, đường giao nhau và sử dụng các mũi tên màu sáng cho biết làn đường phù hợp để giúp bạn điều hướng chính xác nhất.\n\nNgoài ra,  được trang bị hệ thống cảnh báo ADAS, thiết bị còn có khả năng đo khoảng cách với xe phía trước, để cảnh báo an toàn, cảnh báo giới hạn tốc độ, cảnh báo va chạm, bằng giọng nói 100% Việt dễ nghe.\n\n<img class=\"alignnone size-medium wp-image-9352 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg\" sizes=\"(max-width: 764px) 100vw, 764px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/7-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/7-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/7.jpg 1500w\" alt=\"\" width=\"764\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/7-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/7-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/7.jpg 1500w\" />\n\n<strong><em>Công nghệ Bluetooth 4.0: Hỗ trợ đàm thoại rảnh tay, an toàn khi lái xe</em></strong>\n\nVới công nghệ hiện đại này, bạn có thể dễ dàng nghe gọi khi đang lái xe chỉ qua thao tác kết nối với smart-phone của mình cực đơn giản.\n\nTài xế cũng có thể nghe, gọi, từ chối, đàm thoại rảnh tay trên chính thiết bị thông minh này. Điều này góp phẩn đảm bảo an toàn tuyệt đối khi lái xe.\n\n<strong><em>Cấu hình khủng</em></strong>\n\nWebvision N93X được trang bị cấu hình với chip xử lý MediaTek 6735 lõi tứ tốc độ 1,5Ghz, có hiệu năng xử lý cực tốt. Nhờ đó, mà hoàn toàn không có hiện tượng giật hay mất đoạn trong quá trình quay hình. Trong điều kiện quay cả bên ngày hay ban đêm, camera hành trình cũng xử lý rất tốt khi bị ánh đèn đường, không bị loá kể cả đèn khi chiếu thắng về phía xe.\n\nĐáng chú ý nhất là, tại phiên bản này, bộ nhớ RAM gấp đôi khả năng lưu trữ của các thiết bị thế hệ trước. Thiết bị  được cài sẵn hệ điều hành Android 5.1 và bộ nhớ RAM 2GB + bộ nhớ trong 16GB nên nó không còn là chiếc camera hành trình thông thường, mà bạn có thể sử dụng như một chiếc máy tính bảng giá rẻ lướt web, xem phim hoặc chơi game trong những lúc không cần ghi hình.\n\nĐó là những tính năng tuyệt vời mà không phải đơn vị nào cũng trang bị được cho camera hành trình. Để tung ra sản phẩm được công nhận là sản phẩm dẫn dầu xu thế, Webvision chúng tôi luôn nỗ lực nghiên cứu, nắm bắt thời cơ và thị hiếu khách hàng, mục đích cuối cùng là phục vụ được tối đa những nhu cầu khắt khe của khách hàng.\n\nCùng chờ đợi sự ra đời và tận hưởng những trải nghiệm bất ngờ mà đứa con đẻ của Webvision-  camera hành trình Webvision N93X này mang lại các bạn nhé! Tuyệt đối sẽ không làm các bạn thất vọng đâu!","WEBVISION N93X – Màn hình Android đa năng thông minh","","publish","open","closed","","webvision-n93x-man-hinh-android-da-nang-thong-minh","","","2019-03-09 23:40:38","2019-03-09 16:40:38","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=220","0","product","","0"),
("221","1","2019-03-09 23:40:04","2019-03-09 16:40:04","","N93X-1-600x600","","inherit","open","closed","","n93x-1-600x600","","","2019-03-09 23:40:04","2019-03-09 16:40:04","","220","https://tppone.com/demo/camera/wp-content/uploads/2019/03/N93X-1-600x600.png","0","attachment","image/png","0"),
("222","1","2019-03-09 23:40:32","2019-03-09 16:40:32","","thiet-bi-dan-duong","","inherit","open","closed","","thiet-bi-dan-duong-2","","","2019-03-09 23:40:32","2019-03-09 16:40:32","","220","https://tppone.com/demo/camera/wp-content/uploads/2019/03/thiet-bi-dan-duong.jpg","0","attachment","image/jpeg","0"),
("223","1","2019-03-09 23:41:31","2019-03-09 16:41:31","Camera hành trình vốn đã không còn xa lạ với tài xế Việt tuy nhiên với thiết kế mới mẻ của những dòng xe đang xuất hiện trên thị trường đòi hỏi một loại camera không những đảm bảo về mặt tính năng mà còn đáp ứng được yêu cầu về vị trí lắp đặt. Vì vậy Webvision đã cho ra đời dòng sản phẩm camera hành trình Webvision A69 với vị trí lắp đặt linh hoạt nhưng vẫn đảm bảo đem lại cho khách hàng những tính năng vượt trội.\n<figure id=\"attachment_9642\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9642 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/1-2-768x300.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/1-2-1400x547.jpg 1400w\" alt=\"\" width=\"800\" height=\"312\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/1-2-768x300.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/1-2-1400x547.jpg 1400w\" /><figcaption class=\"wp-caption-text\"><em>Cuốn hút ngay từ ánh nhìn đầu tiên với thiết kế sang trọng, trẻ trung thích hợp với mọi nhu cầu của người dùng cũng như thiết kế của từng loại xe ở nhiều phân khúc khác nhau.</em></figcaption></figure>\n<figure id=\"attachment_9685\" class=\"wp-caption alignnone\"><img class=\"wp-image-9685 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1-768x384.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1.jpg 1400w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1-768x384.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1.jpg 1400w\" /><figcaption class=\"wp-caption-text\"><em>Thông thường camera cho ô tô thường được lắp đặt hit lên mặt kính chắn gió hoặc đặt trên mặt taplo của xe. Đối với những dòng xe của Mazda hay Mercedes mặt taplo không được bẳng phẳng rất khó để đặt camera lên trên trong thời gian dài. Vì vậy Webvision đã cho ra đời dòng camera hành trình với vị trí lắp đặt linh hoạt giúp tài xế dễ dàng thay đổi vị trí thiết bị theo nhu cầu hoặc sở thích.</em></figcaption></figure>\n<strong>Tính năng nổi bật</strong>\n\n<hr />\n\n<strong>Ghi hình trước sau cùng lúc</strong>\n\nWebvision A69 thiết kế hai mắt ghi hình trước và sau xe giúp tài xế có tầm nhìn bao quát nhất xung quanh chiếc xe của mình. Ghi hình ở chế độ Full HD 1080P với góc quay 140 độ rộng hơn so với phiên bản trước, tất cả các hình ảnh đều được camera thu lại một cách rõ nét, chân thực ngay cả trong điều kiện khắc nghiệt như thời tiết xấu, thiếu hoặc lốp sáng.\n\n<img class=\"alignnone size-medium wp-image-9686 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/e4-768x318.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/e4.jpg 1369w\" alt=\"\" width=\"800\" height=\"331\" data-src=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/e4-768x318.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/e4.jpg 1369w\" />\n\n<strong>Hình ảnh chân thực</strong>\n\nNâng cấp mắt sau với chế độ ghi hình Full HD 720p, chip xử lý MT6735 cao cấp nhất thị trường camera hành trình ô tô. Xử lý hình ảnh cực nét cả trước và sau, cả ngày lẫn đêm.","WEBVISION A69 – Màn hình Android đa năng thông minh","","publish","open","closed","","webvision-a69-man-hinh-android-da-nang-thong-minh","","","2019-03-09 23:41:31","2019-03-09 16:41:31","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=223","0","product","","0"),
("224","1","2019-03-09 23:41:26","2019-03-09 16:41:26","","thiet-bi-dan-duong-2","","inherit","open","closed","","thiet-bi-dan-duong-2-2","","","2019-03-09 23:41:26","2019-03-09 16:41:26","","223","https://tppone.com/demo/camera/wp-content/uploads/2019/03/thiet-bi-dan-duong-2.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-03-09 23:42:06","2019-03-09 16:42:06","Tiếp nối xu thế camera hành trình<b> </b>thông minh, đa chức năng, <a href=\"https://webvision.vn/\">Webvision.vn</a> đã nghiên cứu và cho ra đời sản phẩm camera hành trình thông minh hơn, tiện ích hơn đáp ứng nhu cầu ngày càng cao của người sử dụng, Webvision đã cho ra mắt model Webvision N93 Plus<b>.</b>\n\n<img class=\"wp-image-9528 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png\" sizes=\"(max-width: 576px) 100vw, 576px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png 660w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-768x465.png 768w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-1320x800.png 1320w\" alt=\"\" width=\"576\" height=\"349\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png 660w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-768x465.png 768w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-1320x800.png 1320w\" />\n\nVới việc tích hợp 12 tính năng thông minh chỉ trong một thiết bị camera gọn nhẹ, Webvision N93 Plus đã thay thế được rất nhiều phụ kiện khác trên xe như: camera quay hành trình trước sau, camera lùi, bộ phát wifi, thiết bị dẫn chỉ đường bộ,…\n<h1><img class=\"wp-image-9529 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/Huye%CC%82%CC%80n-1-699x400.jpg\" sizes=\"(max-width: 718px) 100vw, 718px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-699x400.jpg 699w, https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-768x439.jpg 768w, https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-1400x800.jpg 1400w\" alt=\"\" width=\"718\" height=\"411\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-699x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-699x400.jpg 699w, https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-768x439.jpg 768w, https://webvision.vn/wp-content/uploads/2018/03/Huyền-1-1400x800.jpg 1400w\" /></h1>\n——————————————————————————\n\n<b>Lợi ích chi phí của Webvision N93 Plus</b>\n\nHiện taị bạn phải bỏ ra một khoản tiền không hề nhỏ  để trang bị cho xế yêu của mình một số phụ kiện như: Camera lùi, màn hình DVD, thiết bị định vị, bản đồ chỉ đường… Chúng ta cùng làm một bài toán chi phí cho những phụ kiện cần thiết trên xe như sau:\n\n<img class=\"size-full wp-image-9563 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/%E1%BA%A2nh-gi%C3%A1.jpg\" alt=\"\" width=\"661\" height=\"368\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/Ảnh-giá.jpg\" />\n\nTổng chi phí bạn phải chi trả cho tất cả những thiết bị trên với giá thấp nhất trên thị trường hiện nay là khoảng 10.950.000 đ . Đây là một chi phí không hề nhỏ, chưa kể đến việc đặt nhiều thiết bị trên cùng 1 chiếc xe sẽ khiến không gian lái xe không những không thoải mái mà còn mất tính thẩm mỹ.\n\nVậy bạn nghĩ sao nếu camera hành trình Webvision N93 Plus chỉ với một nửa chi phí trên nhưng có thể thay thế được tất cả những phụ kiện đó. Được tích hợp lên tới 12 tính năng thông minh, cùng xem Webvision N93 Plus mang đến cho bạn lợi ích thế nào? Cùng tìm hiểu một cách trực quan nhất những tính năng vượt trội của camera hành trình Webvision N93 Plus qua clip dưới đây:\n\n<i>Hướng dẫn sử dụng và các tính năng Webvision N93 Plus: </i><b><i>https://webvision.vn/webvision-n93-plus/</i></b>\n\nBạn có biết những tính năng được yêu thích nhất trên Webvision N93 Plus? Hôm nay, Webvision sẽ review cho các bác về những tính năng “NỔI BẬT NHẤT” của model Webvision N93 Plus nhé.\n\n<b>1. Cảnh báo tốc độ</b>\n\nVới lỗi chạy quá tốc độ của ô tô, bạn có thể bị xử phạt từ 2.000.000 đến 6.000.000 đ (Theo Nghị định 46/2016/NĐ-CP quy định về xử phạt hành chính trong lĩnh vực giao thông đường bộ và đường sắt.)\n\nTuy nhiên, bạn sẽ không còn lo lắng khi Webvision N93 Plus được tích hợp hệ thống cảnh báo tốc độ tiên tiến nhất. Trên mỗi tuyến đường, thiết bị sẽ thông báo cho bạn về tốc độ giới hạn cho phép trên tuyến đường đó. Thông báo sẽ được chuyển hóa thành giọng nói tiếng Việt giúp tài xế dễ dàng tiếp nhận thông tin. Chức năng này vốn chỉ có ở một số chiếc xe cao cấp của Huyndai và những chiếc xe hạng sang thì nay đã được tích hợp ngay trong thiết bị camera.  Để hiểu sâu hơn về nguyên lý và cách vận hành tính năng cảnh báo tốc độ mời các bác tham khảo video dưới đây:\n\n<b>2. Tính năng thay thế đầu DVD</b>\n\nMàn hình DVD thông thường chỉ có chức năng hiển thị hình ảnh nhưng không ghi lại được Video. Với Webvision N93 Plus, không chỉ hiển thị được hình ảnh từ hai mắt camera qua màn hình cảm ứng rộng 6,68 inch mà còn thu, phát wifi qua sim 4G cho bạn trải nghiệm lướt web, xem phim, nghe nhạc trực tuyến thay thế hoàn toàn 1 chiếc đầu DVD đắt tiền, tiết kiệm 1 khoản khá lớn cho các tài xế Việt.\n\n<b>3. Cảnh báo lấn làn, va chạm sớm</b>\n\nVi phạm các lỗi về làn đường sẽ bị phạt tiền từ 800.000 đồng đến 1.200.000 đồng. Tuy nhiên, nỗi lo về việc vi phạm làn đường sẽ được giải quyết nhờ Webvision N93 Plus.\n\nWebvision N93 Plus sẽ lên tiếng nhắc nhở khi bạn di chuyển sai làn đường cho phép, chỉ khi bạn di chuyển về đúng làn đường quy định cảnh báo mới được dừng lại. Ngoài ra, khi chiếc xe của bạn đi vào vùng khoảng cách không an toàn với xe phía trước, thiết bị cũng nhắc nhở về khả năng va chạm với xe phía trước để đảm bảo an toàn cho bạn và người thân.\n\n<b>4. Định vị và theo dõi xe từ xa bằng video trực tiếp trên điện thoại</b>\n\nDù bạn đang ở nhà hay bất cứ nơi đâu chỉ cần mở ứng dụng Car Assist được cài đặt trên điện thoại là bạn có thể biết được chiếc xe của bạn đang ở đâu, trên cung đường nào, đang di chuyển ra sao. Thậm chí bạn có thể xem được hoạt động phía trước và sau của xe được ghi lại qua camera hành trình và gửi hình ảnh về di động của bạn.\n\n<strong>5. </strong><b>Phát Wifi thay thế hoàn toàn bộ phát</b>\n\nWebvision N93 Plus có chức năng phát wifi giúp bạn thoải mái trải nghiệm những ứng dụng online đầy hấp dẫn. Những người thân, bạn bè và khách hàng trên xe của bạn có thể thoải mái sử dụng wifi tốc độ cao.","WEBVISION N93 PLUS – Camera hành trình thông minh truyền hình trực tiếp","","publish","open","closed","","webvision-n93-plus-camera-hanh-trinh-thong-minh-truyen-hinh-truc-tiep","","","2019-03-09 23:42:35","2019-03-09 16:42:35","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=225","0","product","","0"),
("226","1","2019-03-09 23:42:02","2019-03-09 16:42:02","","camera-hanh-trinh-n93","","inherit","open","closed","","camera-hanh-trinh-n93","","","2019-03-09 23:42:02","2019-03-09 16:42:02","","225","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-n93.jpg","0","attachment","image/jpeg","0"),
("282","1","2019-03-10 00:29:47","2019-03-09 17:29:47","","banner-01","","inherit","open","closed","","banner-01","","","2019-03-10 00:29:47","2019-03-09 17:29:47","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-01.jpg","0","attachment","image/jpeg","0"),
("283","1","2019-03-10 00:29:49","2019-03-09 17:29:49","","banner-02","","inherit","open","closed","","banner-02","","","2019-03-10 00:29:49","2019-03-09 17:29:49","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-02.jpg","0","attachment","image/jpeg","0"),
("284","1","2019-03-10 00:29:49","2019-03-09 17:29:49","","banner-03","","inherit","open","closed","","banner-03","","","2019-03-10 00:29:49","2019-03-09 17:29:49","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-03.jpg","0","attachment","image/jpeg","0"),
("291","1","2019-03-10 00:35:36","2019-03-09 17:35:36","","bg2","","inherit","open","closed","","bg2","","","2019-03-10 00:35:36","2019-03-09 17:35:36","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bg2.jpg","0","attachment","image/jpeg","0"),
("294","1","2019-03-10 00:38:03","2019-03-09 17:38:03","<b>Theo Bộ Sinh học Pháp, có 42.000 người chết sớm hàng năm vì hít phải hạt mịn và những người có nghề lái xe như taxi, người vận chuyển, tái xế xe buýt, bị đe dọa mắc bệnh và chết sớm cao hơn gấp 100 lần.</b>\n\nTất cả chúng ta đều nghĩ rằng ngồi trong xe ô tô là nơi trú ngụ lý tưởng để cách ly với khói bụi, ô nhiễm không khí từ bên ngoài. Đa phần chúng ta đều cảm thấy an toàn vì được bảo vệ sau cảnh cửa bị đóng kín nhưng bạn đã hoàn toàn sai lầm…\n\nBạn có biết, mức độ ô nhiễm không khí trong ô tô lớn tới mức nào không? Giáo sư Stephen Holgate, chuyên gia về bệnh suyễn tại Đại học Southampton cảnh báo ô nhiễm không khí trong ôtô cao gấp 9-12 lần so với bên ngoài. Kết quả một nghiên cứu tại Pháp do ASEF (Hội Sức khỏe Môi trường Pháp) được thực hiện trong ba thành phố lớn (Paris, Marseille và Grenoble), cho thấy rằng không gian trong xe là một ổ đầy độc tố nguy hiểm đe dọa sức khỏe. Ông Patrice Halimi, tổng thư ký ASEF, bác sỹ phẫu thuật khoa nhi, và là chủ nhiệm của cuộc nghiên cứu này cho biết: “Khi nào đi xe ô tô, khi đó bạn hít một liều thuốc độc hại”. Đó chính là nguyên do khiên nguy cơ mắc ung thư phổi của các cánh tài xế ngày một tăng cao.\n\n<b>CÁC NGUỒN GÂY Ô NHIỄM TRONG XE</b>\n\n<b><i>Thứ nhất là từ nguồn không khí ô nhiễm bên ngoài:</i></b>\n\nChúng ta đều biết ô nhiễm môi trường ở Việt Nam hiện nay đang ở mức báo động và nhất là giờ cao điểm, các phương tiên lưu thông dày đặc trên đường thì mức độ ô nhiễm ngoài không khí cực kì nghiêm trọng. Những không khí ô nhiễm này được hút vào trong ôtô theo hệ thống điều hòa, theo lối thông gió và cửa vào.\n<figure id=\"attachment_9994\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9994 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/0-72a63-710x400.jpg\" alt=\"\" width=\"553\" height=\"312\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/0-72a63-710x400.jpg\" /><figcaption class=\"wp-caption-text\"><strong><em>Tắc đường là thời điểm không khí ô nhiễm cực kì nghiêm trọng</em></strong></figcaption></figure>\n&nbsp;\n\n<b><i>Thứ hai là từ nội thất của xe:</i></b>\n\nTheo Phòng thí nghiệm Vệ sinh của thành phố Paris, ô nhiễm đến từ các đồ nhựa, tay vịn, véc-ni, da giả, sơn, keo của xe ô-tô. Đặc biệt khi mới được sản xuất, xe ô-tô phát ra hóa chất nhiều hơn. Phòng thí nhiệm đã đo rằng trong 41% xe hơi, nồng độ VOC (chất hữu cơ bay hơi) đã vượt qua ngưỡng an toàn và trong đó 23% xe có tỷ lệ pho-man-đê-hit đã qua mức độ cho phép.\n<figure id=\"attachment_9995\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9995 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg\" sizes=\"(max-width: 534px) 100vw, 534px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg 534w, https://webvision.vn/wp-content/uploads/2018/11/1-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/11/1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/11/1.jpg 1130w\" alt=\"\" width=\"534\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg 534w, https://webvision.vn/wp-content/uploads/2018/11/1-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/11/1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/11/1.jpg 1130w\" /><figcaption class=\"wp-caption-text\"><em><strong>Nội thất từ xe ô tô là một nguồn ô nhiễm chính</strong></em></figcaption></figure>\n&nbsp;\n\n<b><i>Thứ ba là từ chính người trong xe:</i></b>\n\nKhi hút thuốc lá, khói thuốc lá không chỉ ảnh hưởng trực tiếp ngay đến người trong xe mà còn bám vào đồ nhựa, da, vải và nó tiếp tục gây ô nhiễm nhiều tuần thậm chí nhiều tháng sau đó. Các loại hóa chất chúng ta đưa vào xe như nước hoa, các chất vệ sinh nội thất ô tô, động vật vào xe để lại lông vương vãi trên xe, các thức ăn rơi trên xe tạo ra các vi khuẩn, nấm mốc cũng là một trong những nguyên nhân gây ra ô nhiễm trong xe.\n<figure id=\"attachment_9996\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9996 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22.jpg 650w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22.jpg 650w\" /><figcaption class=\"wp-caption-text\"><strong><em>Hút thuốc trên xe ô tô là tác nhân nghiêm trọng dẫn đến ô nhiễm</em></strong></figcaption></figure>\n&nbsp;\n\n<b><i>Thứ 4 là từ các thiết bị điện tử phát sóng:</i></b>\n\nÔ nhiễm cũng có thể đến từ các thiết bị điện tử phát sóng: GPS, wifi, điện thọai di động. Hiện tượng hộp Faraday cản sóng ra khỏi không gian của xe ảnh hưởng rất mạnh đến người trong xe. Thêm nữa là điện từ trường. Khi xe chạy ở tốc độ cao, bánh xe phát từ trường rất cao. Chúng ta thường biết đến sóng điện từ có thế gây ra một số chứng bệnh như đau đầu, ảnh hưởng đến não bộ, đến nhịp tim, đến khả năng sinh sản. Tuy nhiên còn một điều mà ít người biết đến, việc tiếp xúc với bức xạ điện từ làm tăng nguy cơ phát triển ung thư, làm suy yếu các cơ quan trong đó có phổi. Cộng thêm việc hằng ngày phải hít rất nhiều chất ô nhiễm khác thì dẫn đến việc mắc ung thư phổi là một điều không thể tránh khỏi.\n<figure id=\"attachment_9997\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9997 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi.jpg 636w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi.jpg 636w\" /><figcaption class=\"wp-caption-text\"><strong><em>Thiết bị phát WIFI trên xe gây ra ô nhiễm</em></strong></figcaption></figure>\n&nbsp;\n\n<b>Không gian ô tô kín nhiều nội thất và ngóc ngách chính là môi trường lý tưởng để các tác nhân gây bệnh tích tụ với nồng độ ngày càng dày đặc. Và một trong số bệnh hay gặp nhất ở tài xế đó chính là bệnh về hô hấp như ho, đau họng và nặng hơn là viêm phổi, ung thư phổi. Đối với trẻ em, thì ảnh hưởng còn nghiêm trọng hơn, thậm chí gây tổn thương phổi vĩnh viễn.  </b>\n\n<b>VÀ ĐÂU LÀ GIẢI PHÁP?</b>\n\nĐể bảo vệ sức khỏe của bản thân và gia đình trước những tác hại nghiêm trọng do khí độc tích tụ trong xe gây nên, chúng ta cần một thiết bị có thể lọc sạch không khí, khử mùi, phân hủy các chất hóa học, vi khuẩn , nấm mốc gây hại.\n\nTrên thị trường hiện nay đang có 3 công nghệ tiên tiến đã nghiên cứu và ứng dụng nhiều nhất có thể đáp ứng được những yêu cầu trên:\n\n<b><i>Công nghệ lọc không khí bằng Ion âm</i></b>: Đây là một trong những công nghệ hiện đại nhất hiện nay. Các ion âm sẽ được phát ra ngoài không khí và có tác dụng làm trung hòa các ion dương tồn tại dưới dạng các hạt bụi siêu nhỏ có hại trong không khí từ đó loại bỏ và làm sạch không khí, cải thiện chức năng hô hấp, tuần hoàn, trao đổi chất và tăng sức đề kháng cho những thành viên trong xe.\n\n<b><i>Công nghệ lọc HEPA</i></b> – công nghệ có khả năng lọc hiệu quả đến 99,97% các hạt phân tử siêu vi lên tới PM2.5 bao gồm các hạt bụi trong phấn hoa, khói thuốc, vi khuẩn trong không khí.\n\n<b><i>Công nghệ làm sạch bằng cacbon zê-ô-lít</i></b>. Khả năng hấp thụ của các cacbon zê-ô-lít gấp 100 lần so với các loại cacbon thông thường. Nó có thể hấp thụ và làm phân hủy đến 99,7% các dạng pho-man-đê-hít, ben-zen, a-mô-ni-ac cà các khí có hại khác và có thể nhanh chóng loại bỏ mùi thuốc lá, mùi rượu, các loại mùi từ sản phẩm nội thất trong xe, các chất hóa học gây hại đến sức khỏe con người.\n\nĐể đáp ứng được nhu cầu làm sạch không khí, áp dụng các công nghệ hiện đại để có thể lọc một cách hiệu quả nhất, máy lọc không khí thông minh thế hệ mới WEBVISION A8 đã ra đời.\n<figure id=\"attachment_9998\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9998 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png 800w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-768x384.png 768w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-1400x700.png 1400w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n.png 1500w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png 800w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-768x384.png 768w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-1400x700.png 1400w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n.png 1500w\" /><figcaption class=\"wp-caption-text\"><strong><em>Webvision A8 kết hợp cả 3 công nghệ lọc không khí hiện đại</em></strong></figcaption></figure>\n&nbsp;\n\nWebvision A8 là sự kết hợp hoàn hảo của cả ba công nghệ lọc không khí trong một thiết bị nhỏ gọn, hiện đại mà còn vô cùng sang trọng.","Quá sai lầm khi coi ô tô là nơi tránh những ô nhiễm bên ngoài","","publish","open","open","","qua-sai-lam-khi-coi-o-to-la-noi-tranh-nhung-o-nhiem-ben-ngoai","","","2019-03-10 00:38:03","2019-03-09 17:38:03","","0","https://tppone.com/demo/camera/?p=294","0","post","","0"),
("295","1","2019-03-10 00:37:35","2019-03-09 17:37:35","","1-534x400","","inherit","open","closed","","1-534x400","","","2019-03-10 00:37:35","2019-03-09 17:37:35","","294","https://tppone.com/demo/camera/wp-content/uploads/2019/03/1-534x400.jpg","0","attachment","image/jpeg","0"),
("296","1","2019-03-10 00:37:58","2019-03-09 17:37:58","","post1","","inherit","open","closed","","post1","","","2019-03-10 00:37:58","2019-03-09 17:37:58","","294","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post1.jpg","0","attachment","image/jpeg","0"),
("298","1","2019-03-10 00:38:53","2019-03-09 17:38:53","Ở Việt Nam thị trường ô tô giá rẻ vẫn là phân khúc hấp dẫn với người dùng. Tuy nhiên, những mẫu xe tầm trung với giá dưới 500 triệu đồng như Honda City thường bị cắt bớt một số phụ kiện hoặc trang bị chất liệu không mang lại hiệu quả khi dùng nhằm giảm giá thành. Do đó, sau khi mua một chiếc ôtô mới, nhiều bác có xu hướng tìm đến các dịch vụ cung cấp “đồ chơi” để sắm thêm một vài phụ kiện cần thiết cho “xế cưng” của mình. Đặc biệt, một chiếc camera hành trình ô tô chính hãng sẽ là một lựa chọn tuyệt vời cho bạn.\n\nKhông phải món đồ nào cũng hữu ích thực sự với chiếc xe của bạn. Có những phụ kiện chỉ để trang trí, trong khi có những thứ mà tài xế nên sắm cho chiếc xe của mình để đem đến sự tiện dụng và đảm bảo an toàn khi tham gia giao thông. Dưới đây là một số món đồ cơ bản, rất hữu ích cho “xế cưng” của bạn.\n\n1. Camera hành trình đa tính năng\n<table border=\"0\">\n<tbody>\n<tr>\n<td><img class=\"alignnone size-medium wp-image-9827 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-768x576.jpeg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-1067x800.jpeg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-768x576.jpeg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-1067x800.jpeg 1067w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9828 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-1067x800.jpg 1067w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9829 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-1067x800.jpg 1067w\" /></td>\n</tr>\n</tbody>\n</table>\nCamera hành trình có tích hợp cảm biến lùi giúp cho việc quan sát tốt hơn và tiết kiệm thời gian, không bị va chạm vào xe khác một cách dễ dàng. Ngoài tính năng ưu Việt còn giúp bạn lưu lại những khoảnh khắc đẹp khi đi trên đường và những trải nghiệm thú vị.\n\n<img class=\"size-medium wp-image-9826 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/1-711x400-711x400.jpg\" alt=\"\" width=\"711\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/1-711x400-711x400.jpg\" />\n\nCamera hành trình công nghệ 4.0 đã là một thiết bị hữu ích cho tài xế trong mỗi chuyến đi. Chỉ với một thiết bị nhỏ gọn này nhưng trong quá trình sử dụng bạn sẽ khai phá ra cả một thế giới tính năng bên trong. Không chỉ ghi hình đơn thuần, camera còn được tích hợp lên tới 12 tính năng. Nổi bật và cần thiết nhất cho tài xế có lẽ là ứng dụng bản đồ Navitel bản quyền giúp tối ưu quảng đường đi nhanh nhất, tiện dụng và chính xác nhất.\n\nĐể hiểu thêm về những tính năng của camera hành trình ô tô thế hệ mới các bác có thể xem tại video dưới nhé:\n\n<iframe src=\"https://www.youtube.com/embed/dcNAS-wwQns\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe>\n\n2. Bọc trải sàn và lót sàn\nNgoài thiết kế nguyên bản của nhà sản xuất chúng ta nên bọc thêm môt lớp trải sàn để tránh bụi bẩn, nước, thức ăn khi bị rơi xuống sàn xe. Đặc biệt là tránh bị nước tiếp xúc trực tiếp xuống sàn dễ gây ra ẩm mốc, mùi hôi khó chịu và hạn chế được tình trạng mục nát sàn xe.\n\nTấm trải sàn giúp chúng ta cách ly được vết bẩn từ giày, dép khi tiếp xúc với sàn xe và đặc biệt giúp chủ nhân vệ sinh một cách dễ giàng, nhanh chóng, trong bất kỳ thời tiết cũng như hoàn cảnh nào. Tuy nhiên, chúng ta nên chọn trải sàn có chất liệu bằng cao su, nhựa, những chất liệu không thấm nước, không bám bẩn thì sẽ dễ giàng vệ sinh và không để lại mùi hôi, ẩm mốc trong xe.\n\n3. Dán phim cách nhiệt lên kính\n\nDán phim cách nhiệt sẽ ngăn được ánh nắng chiếu vào trong khoang xe, giảm được tác hại của tia cực tím gây ra. Một điều đặc biệt là hạn chế việc tò mò cũng như mọi ánh nhìn từ bên ngoài vào trong xe, bảo vệ quyền riêng tư của bạn.\n\n4. Cảm biến áp suất lốp\n\nĐây là một chi tiết rất ít người lái xe quan tâm đến, nhưng nó đem đến nhiều lợi ích thiết thực, nhất là trong những hành trình di chuyển dài và thời tiết mùa hè có nhiệt rất cao . Tài xế dễ dàng phát hiện ra chiếc lốp nào giảm áp suất bất thường (có thể do dính đinh hoặc lâu ngày lốp xuống hơi..). Trong trường hợp này nếu không phát hiện kịp thời, rất có thể xảy ra tai nạn đáng tiếc, đặc biệt khi xe đang di chuyển với tốc độ cao.\n\n5. Bọc ghế da\nVới thời tiết khắc nhiệt như ở Việt Nam, bộ ghế nỉ có thể khiến những người ngồi trong xe toát mồ hôi khi di chuyển vào mùa hè. Chủ yếu là các mẫu ôtô giá rẻ thường được nhà sản xuất trang bị bộ ghế nỉ để tiết kiệm chi phí.\n\nGhế da sẽ phát huy tác dụng rất tốt nhất trong những ngày trời nóng và khi không may bị đổ chất lỏng ra ghế, hoàn toàn có thể dễ dàng làm sạch rất tốt. Với bộ ghế nỉ hẳn là một ác mộng bởi có thể sẽ không làm sạch được và để lại mùi hôi, mốc. Nó sẽ trường tồn theo thời gian và rất khó vệ sinh.\n\nHi vọng bài viết này hữu ích với các bác đang có ý định sắm một chiếc xe hơi hoặc bác nào vừa sở hữu một chiếc xế cưng. Các bác muốn tham khảo những dòng camera thông minh có thể tham khảo link dưới nhé.","5 Phụ kiện cần thiết cho Honda City – camera hành trình Webvision","","publish","open","open","","5-phu-kien-can-thiet-cho-honda-city-camera-hanh-trinh-webvision","","","2019-03-10 00:39:03","2019-03-09 17:39:03","","0","https://tppone.com/demo/camera/?p=298","0","post","","0"),
("299","1","2019-03-10 00:38:49","2019-03-09 17:38:49","","post2","","inherit","open","closed","","post2","","","2019-03-10 00:38:49","2019-03-09 17:38:49","","298","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post2.jpg","0","attachment","image/jpeg","0"),
("301","1","2019-03-10 00:40:00","2019-03-09 17:40:00","Là một trong những mẫu xe thành công nhất của Kia trên thị trường toàn cầu, Cerato liên tiếp nằm trong Top 10 xe bán chạy nhất hiện nay với doanh số trung bình 800 xe/tháng. Có thể nói, Cerato chính là lựa chọn hàng đầu trong phân khúc sedan hạng C nhờ thiết kế trẻ trung, ấn tượng và giá thành vô cùng hợp lý, chỉ trên dưới 500 triệu đồng.\n\nXét về tổng thể, Kia Cerato SMT vẫn giữ nguyên được phong cách thiết kế hiện đại trẻ trung vốn có nhưng do là phiên bản thấp nhất nên rất nhiều chức năng đã bị tối giản đi như không có đầu DVD, cảm biến lùi hay camera lùi. Tuy nhiên, nếu các bác đang có ý định sở hữu hoặc đang sở hữu siêu phẩm này thì cũng không cần phải lo lắng quá nhiều bởi Webvision M39 sẽ là mảnh ghép hoàn hảo giải quyết tất cả các vấn đề đó.\n<figure id=\"attachment_9823\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9823 size-large lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Được tích hợp 16 tính năng hữu ích, Webvision M39 là mảnh ghép hoàn hảo, bù đắp mọi thiếu khuyết của siêu phẩm Kia Cerato SMT</em></figcaption></figure>\n<a href=\"https://webvision.vn/san-pham/hot-trai-nghiem-ngay-sieu-pham-camera-hanh-trinh-webvision-m39/\"><strong>Webvision M39</strong></a> được đánh giá là một trong những camera hành trình thông minh nhất hiện nay với cực nhiều tính năng hữu, hỗ trợ tối đa sự an toàn cho lái xe trên mọi nẻo đường. Đặc biệt, trong tình hình giao thông phức tạp như hiện nay, việc trang bị một chiếc camera lùi là vô cùng cần thiết để tránh các cuộc va chạm không đáng có và hỗ trợ việc dừng, đỗ xe thuận tiện hơn. Trong khi Kia Cerato SMT bị thiếu khuyết chức năng này thì Webvision M39 chính là sự bù đắp hoàn hảo. Khi về số R, màn hình camera sẽ tự động hiển thị hình ảnh được ghi lại từ camera sau.\n<figure id=\"attachment_9824\" class=\"wp-caption alignnone\"><img class=\"size-large wp-image-9824 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Trang bị camera lùi giúp việc dừng – đỗ xe dễ dàng hơn và tránh va chạm đáng tiếc có thể xảy ra</em></figcaption></figure>\nNgoài không được trang bị camera lùi, việc không có đầu DVD cũng là lý do khiến nhiều người băn khoăn khi quyết định mua mẫu xe này. Webvision M39 với màn hình cảm biến đa điểm rộng 6,86 inch, cung cấp tính năng giải trí vô cùng phong phú. Giống như một chiếc smartphone nhỏ gọn, thiết bị có kho ứng dụng CH Play giúp các bác có thể thoải mái nghe nhạc, đọc báo, lướt web và download ứng dụng giải trí trên thiết bị.\n<figure id=\"attachment_9825\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9825 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Màn hình cảm biến đa điểm với nhiều tiện ích giải trí cực hấp dẫn</em></figcaption></figure>\nChỉ mới điểm qua một vài lý do trên đây, các bác còn chần chờ gì nữa mà không trang bị ngay siêu phẩm camera hành trình M39 để nâng tầm đẳng cấp cho con xế yêu của mình ngay hôm nay.\n\nMọi ý kiến thắc mắc cũng như cần tìm hiểu thêm thông tin về <strong>Camera hành trình Webvision M39</strong>, các bác có thể gọi điện đến tổng đài <a href=\"tel:1900%200388\" target=\"_blank\" rel=\"noopener\"><strong>1900 0388</strong></a> hoặc Chat trực tiếp tại Website <a href=\"https://webvision.vn/\" target=\"_blank\" rel=\"noopener\">Webvision</a>.vn để được tư vấn cụ thể nhất nhé.","Webvision M39 – “mảnh ghép hoàn hảo” cho xe Sedan giá rẻ Kia Cerato","","publish","open","open","","webvision-m39-manh-ghep-hoan-hao-cho-dong-xe-sedan-gia-re-kia-cerato-smt","","","2019-03-10 00:43:55","2019-03-09 17:43:55","","0","https://tppone.com/demo/camera/?p=301","0","post","","0"),
("302","1","2019-03-10 00:39:45","2019-03-09 17:39:45","","post3","","inherit","open","closed","","post3","","","2019-03-10 00:39:45","2019-03-09 17:39:45","","301","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post3.jpg","0","attachment","image/jpeg","0"),
("304","1","2019-03-10 00:40:48","2019-03-09 17:40:48","Với đường nội đô, mẫu sedan cỡ nhỏ vận hành êm ái, nhẹ nhàng nhưng khi ra đường trường hay leo núi, Honda City lại trở nên mạnh mẽ, đáng nể. Honda city là mẫu xe rất phù hợp cho những tay lái hay di chuyển xa trên những cung đường nhựa. Vừa có thể luồn lách đáp ứng nhu cầu cá nhân trong khu đô thị, vừa có thể đi đường trường nên Honda city được những tay lái trẻ khá yêu thích.\n\nVới một dòng xe tiện ích như vậy bạn nên chọn phụ kiện camera thế nào cho phù hợp. Nếu bạn có những chuyến đi công tác xa thường xuyên. Những chuyến du lịch cùng gia đình nhỏ của mình chắc hẳn nên chọn loại camera hành trình có chế độ ghi hình cực nét và có tính năng đảm bảo an toàn cho bạn và người thân.\n\n<img class=\"size-medium wp-image-9758 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-1067x800.jpg 1067w\" />\n\n<strong>3 lý do vì sao camera hành trình Webvision S8 là ứng cử viên sáng giá cho Honda City?</strong>\n\n<strong>Thứ nhất –</strong> như đã đề cập ở trên Honda City là dòng xe linh hoạt cho nhu cầu di chuyển trong nội đô và đi đường trường với địa hình đơn giản. Trong những chuyến đi xa các bác cần một loại camera hành trình phát huy tính năng của một thiết bị ghi hình. Nếu bạn thường xuyên phải di chuyển xa thì không cần thiết phải chú trọng quá nhiều vào vấn đề tính năng phụ của thiết bị. S8 là đứa con đẻ của Webvision với nhiệm vụ chính là phục vụ cho nhu cầu ghi hình của các bác.\n\n<img class=\"alignnone size-medium wp-image-9761 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-768x341.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249.jpg 1300w\" alt=\"\" width=\"800\" height=\"355\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-768x341.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249.jpg 1300w\" />\n\nChế độ ghi hình sắc nét 2K giúp Webvision S8-GPS vượt mặt mọi đối thủ. Thậm chí so sánh với anh em cùng mẹ đẻ Webvision thì S8 vẫn luôn nổi trội về chế độ ghi hình. Nằm trong phân khúc camera hành trình dành cho dòng xe đường trường, Webvision S8 thể hiện được lợi thế với khả năng ghi hình cam trước sắc nét. Hơn cả Full HD, chế độ ghi hình 2K dẫn đầu trong làng camera hành trình dành cho ô tô. Bởi vậy mà Honda City đã lựa chọn Webvision S8 là bạn đồng hành.\n<table border=\"0\">\n<tbody>\n<tr>\n<td><img class=\"alignnone size-medium wp-image-9762 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg\" sizes=\"(max-width: 611px) 100vw, 611px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg 611w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-768x503.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001.jpg 800w\" alt=\"\" width=\"611\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg 611w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-768x503.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001.jpg 800w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9759 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-1067x800.jpg 1067w\" /></td>\n</tr>\n</tbody>\n</table>\n&nbsp;\n\n<strong>Thứ hai – </strong>tham gia giao thông trên cao tốc trong những chuyến đi xa thì vấn đề các bác cần lưu ý nhiều nhất là hàng loạt những biển báo giao thông. Với tốc độ vun vút trên cao tốc làm sao có thể để ý hết được biển báo trên đường. Giải pháp nằm ở Webvision S8 – GPS. Hệ thống cảnh báo biển báo giao thông bằng giọng nói tiếng Việt giúp tài xế dễ dàng tiếp nhận thông tin từ biển báo trên mỗi tuyến đường.\n\n<img class=\"size-medium wp-image-9760 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-1067x800.jpg 1067w\" />\n\n<strong>Thứ ba</strong> – với thiết kế nhỏ <strong>nhắn</strong> linh hoạt luồn lách trong nội đô đòi hỏi phụ kiện kèm theo cùng phải phù hợp về kiểu dáng và kích thước nhỏ gọn. Nội thất trên Honda City được bố trí rất vừa vặn để không tốn quá nhiều diện tích trong xe. Chính vì lý do ấy Webvision S8 có thiết kế vô cùng nhỏ gọn, lắp đặt dễ dàng do vậy không chiếm quá nhiều diện tích trong xe. Vị trí lắp đặt hit lên kính chắn gió giúp tài xế dễ dàng quan sát mà vẫn đảm bảo không chắn tầm nhìn người lái.\n\nBác nào đang có nhu cầu lắp đặt một chiếc camera hành trình thì nên xem xét nhu cầu của mình trước nhé. Nếu các bác có cùng nhu cầu với anh Thành – chủ nhân chiếc Honda City thì nên lựa chọn loại camera có tính năng ghi hình cực tốt như Webvision S8 nhé! Chúc các bác sức khỏe và lái xe an toàn!","Sở hữu “Honda City” nên chọn loại camera hành trình thế nào?","","publish","open","open","","so-huu-honda-city-nen-chon-loai-camera-hanh-trinh-the-nao","","","2019-03-10 00:40:48","2019-03-09 17:40:48","","0","https://tppone.com/demo/camera/?p=304","0","post","","0"),
("305","1","2019-03-10 00:40:45","2019-03-09 17:40:45","","post4","","inherit","open","closed","","post4","","","2019-03-10 00:40:45","2019-03-09 17:40:45","","304","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post4.jpg","0","attachment","image/jpeg","0"),
("318","1","2019-03-10 00:47:03","2019-03-09 17:47:03","[section label=\"Footer section\" class=\"footer-section\"]\n\n[row style=\"small\"]\n\n[col span=\"5\" span__sm=\"12\"]\n\n<h4><span style=\"font-size: 95%;\"><strong><span style=\"color: #000000;\">Về chúng tôi</span></strong></span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\"><strong>Webdemo</strong> được tạo ra để giúp các bạn Coder/ Marketer không còn lo lắng nhiều về các dự án thiết kế web của họ, bằng cách sử dụng những mẫu website được dựng sẵn.</span></p>\n<p><span style=\"font-size: 85%; color: #333333;\">Các mẫu website được dựng hoàn toàn bởi Webdemo và được cập nhật hằng ngày. Nếu bạn thích nội dung này, xin ủng hộ dịch vụ của chúng tôi. Xin cám ơn! Quản lý bởi <a style=\"color: #333333;\" href=\"https://www.facebook.com/demo\">Lê Thiện</a> và <a style=\"color: #333333;\" href=\"https://Webdemo.com/\">Webdemo.</a></span></p>\n\n[/col]\n[col span=\"7\" span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h4><span style=\"color: #000000; font-size: 95%;\">Thông tin liên hệ:</span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\">- Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông</span></p>\n<p><span style=\"font-size: 85%; color: #333333;\">- Điện thoại: <a style=\"color: #333333;\" href=\"tel:0972939830\"></a> hoặc email về hòm thư: <a style=\"color: #333333;\" href=\"mailto:webdemo@gmail.com\">webdemo@gmail.com</a></span></p>\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h4><span style=\"color: #000000; font-size: 95%;\">Mua hàng Online:</span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\">+ Ms. Phương Anh:   <b><a style=\"color: #333333;\" href=\"https://webvision.vn/%E2%80%9Ctel:0981667667%E2%80%9D\">0981 667 667 </a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Ánh:   <b><a style=\"color: #333333;\" href=\"https://webvision.vn/%E2%80%9Ctel:0934000000%E2%80%9D\">0934 000 000 </a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Phương:   <b><a style=\"color: #333333;\" href=\"tel:0969999929\">0969 999 929</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Hoài:   <b><a style=\"color: #333333;\" href=\"tel:0379555222\">0379 555 222</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Xuân:   <b><a style=\"color: #333333;\" href=\"tel:0971133133\">0971 133 133</a></b></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-03-10 00:55:38","2019-03-09 17:55:38","","0","https://tppone.com/demo/camera/?post_type=blocks&#038;p=318","0","blocks","","0"),
("443","1","2019-03-10 21:48:10","2019-03-10 14:48:10","a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Chính sách cho sản phẩm","chinh-sach-cho-san-pham","publish","closed","closed","","group_5c85239eb4999","","","2019-03-10 22:07:03","2019-03-10 15:07:03","","0","https://tppone.com/demo/camera/?post_type=acf-field-group&#038;p=443","0","acf-field-group","","0"),
("444","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:70:\"Nhập chính sách bán hàng. Ví dụ: Dùng thử trong 8 ngày...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"Dùng thử 7 ngày miễn phí\";s:11:\"placeholder\";s:22:\"Nhập chính sách...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Chính sách","chinh_sach","publish","closed","closed","","field_5c8523b2d9b2d","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=444","1","acf-field","","0"),
("445","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:56:\"Nhập số tháng bảo hành sản phẩm. Ví dụ: 3\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:52:\"Bảo hành 24 tháng – 1 đổi 1 trong 12 tháng\";s:11:\"placeholder\";s:33:\"Nhập thời gian bảo hành...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:100;s:4:\"step\";s:0:\"\";}","Bảo hành","bao_hanh","publish","closed","closed","","field_5c8523cbd9b2e","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=445","2","acf-field","","0"),
("446","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:74:\"Nhập hình thức thanh toán. Ví dụ: thanh toán khi nhận hàng...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:28:\"Thanh toán khi nhận hàng\";s:11:\"placeholder\";s:34:\"Nhập hình thức thanh toán...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Thanh toán","thanh_toan","publish","closed","closed","","field_5c8523f4d9b2f","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=446","3","acf-field","","0"),
("447","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:73:\"Nhập hình thức vận chuyển. Ví dụ: miễn phí toàn quốc...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:24:\"Miễn phí toàn quốc\";s:11:\"placeholder\";s:37:\"Nhập hình thức vận chuyển...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Vận chuyển","van_chuyen","publish","closed","closed","","field_5c852411d9b30","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=447","4","acf-field","","0"),
("448","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:67:\"Nhập hình thức lắp đặt. Ví dụ: miễn phí tại nhà!\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:78:\"Miễn phí lắp đặt tại các đại lý uỷ quyền trên toàn quốc\";s:11:\"placeholder\";s:35:\"Nhập hình thức lắp đặt...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Lắp đặt","lap_dat","publish","closed","closed","","field_5c852478d9b31","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=448","5","acf-field","","0"),
("449","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nhập quà tặng 01\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nhập quà tặng 01\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Quà tặng 1","qua_tang_1","publish","closed","closed","","field_5c8524a0d9b32","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=449","7","acf-field","","0"),
("450","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nhập quà tặng 02\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nhập quà tặng 02\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Quà tặng 2","qua_tang_2","publish","closed","closed","","field_5c8524bcd9b33","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=450","8","acf-field","","0"),
("451","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nhập quà tặng 03\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nhập quà tặng 03\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Quà tặng 3","qua_tang_3","publish","closed","closed","","field_5c8524d5d9b34","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=451","9","acf-field","","0"),
("452","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nhập quà tặng 04\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nhập quà tặng 04\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Quà tặng 4","qua_tang_4","publish","closed","closed","","field_5c8524eed9b35","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=452","10","acf-field","","0"),
("453","1","2019-03-10 21:54:31","2019-03-10 14:54:31","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Thông tin bán hàng","thong_tin_ban_hang","publish","closed","closed","","field_5c852507b5344","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=453","0","acf-field","","0"),
("454","1","2019-03-10 21:54:31","2019-03-10 14:54:31","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Khuyến mại","khuyến_mại","publish","closed","closed","","field_5c85251bb5345","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=454","6","acf-field","","0"),
("455","1","2019-03-10 22:07:03","2019-03-10 15:07:03","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nhập quà tặng 05\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nhập quà tặng 05\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Quà tặng 5","qua_tang_5","publish","closed","closed","","field_5c85280fcdbc5","","","2019-03-10 22:07:03","2019-03-10 15:07:03","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=455","11","acf-field","","0"),
("470","1","2019-03-10 22:19:40","2019-03-10 15:19:40","","check@2x","","inherit","open","closed","","check2x","","","2019-03-10 22:19:40","2019-03-10 15:19:40","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/check@2x.png","0","attachment","image/png","0"),
("497","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","497","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=497","7","nav_menu_item","","0"),
("498","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","498","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=498","2","nav_menu_item","","0"),
("499","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","499","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=499","1","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("501","1","2019-03-10 22:45:22","2019-03-10 15:45:22","Lợi ích khi sử dụng camera hành trình cho ô tô Camera hành trình ô tô giúp ghi lại những khoảnh khắc đẹp trên những chặng đường của bạn Làm bằng chứng cho bạn trong trường hợp bị CSGT bắt láo Làm bằng chứng trong các vụ tai nạn hoặc khi có tranh chấp xảy ra Một số dòng cao cấp camera hành trình tốt nhất có thêm tính năng cảnh báo, dẫn chỉ đường Và nhiều lợi ích khác nữa.. Các loại camera hành trình giá rẻ phân phối độc quyền tại Webvision Camera hành trình ô tô Webvision M39 M39 được đánh giá là một trong những siêu phẩm camera hành trình tốt nhất hiện nay tích hơp 14 tính năng hữu ích như: tích hợp công nghệ 4G, khả năng điều khiển từ xa, dẫn đường, quay video chất lượng HD, hỗ trợ lái xe an toàn nhờ hệ thống cảnh báo thông minh… Camera hành trình ô tô Webvision S8 S8 ngoài chức năng ghi hình thì còn được tích hợp tính năng cảnh báo các loại biển báo giao thông, cảnh báo lấn làn hay chạy quá tốc độ cho tài xế… Đây được đánh…","","","publish","closed","closed","","501","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=501","3","nav_menu_item","","0"),
("502","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","502","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=502","4","nav_menu_item","","0"),
("503","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","503","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=503","5","nav_menu_item","","0"),
("504","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","504","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=504","6","nav_menu_item","","0"),
("508","1","2019-03-10 22:48:32","2019-03-10 15:48:32","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[tel* tel-343 placeholder \"Số điện thoại...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký tư vấn\"]\n    </div>\n    </div>\n1\nMẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\nwebdemo@gmail.com\nCó một số điện thoại vừa đăng ký:\n- Số điện thoại: [tel-343]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\n\n\n\n\n\nMẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Để lại số điện thoại tư vấn","","publish","closed","closed","","form-lien-he-1","","","2019-03-10 23:13:47","2019-03-10 16:13:47","","0","https://tppone.com/demo/camera/?post_type=wpcf7_contact_form&#038;p=508","0","wpcf7_contact_form","","0"),
("513","1","2019-03-10 22:53:36","2019-03-10 15:53:36","","Cửa hàng","","publish","closed","closed","","mua","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/mua/","0","page","","0"),
("514","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/gio-hang/","0","page","","0"),
("515","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/thanh-toan/","0","page","","0"),
("516","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/tai-khoan/","0","page","","0"),
("538","1","2019-03-10 23:10:22","2019-03-10 16:10:22","","Order &ndash; Tháng Ba 10, 2019 @ 11:10 Chiều","abc","wc-on-hold","open","closed","wc_order_PtrWdHlyI8OX7","don-hang-mar-10-2019-0410-pm","","","2019-03-10 23:10:22","2019-03-10 16:10:22","","0","https://tppone.com/demo/camera/?post_type=shop_order&#038;p=538","0","shop_order","","1"),
("542","1","2019-03-10 23:15:22","2019-03-10 16:15:22","[text* text-653 placeholder \"Tên của bạn...\"]\n[tel* tel-711 placeholder \"Số điện thoại...\"]\n[textarea textarea-261 placeholder \"Nội dung liên hệ\"]\n[submit \"Gửi liên hệ\"]\n1\nMẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\nwebdemo@gmail.com\nCó người mới liên hệ trên website:\n- Họ và tên: [text-653]\n- Số điện thoại: [tel-711]\n- Nội dung: [textarea-261]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\n\n\n\n\n\nMẫu website bán Camera - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu website bán Camera - Thiết kế website Webdemo.com <wordpress@camera.Webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website bán Camera - Thiết kế website Webdemo.com (https://bizhostvn.com/w/camera)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Form liên hệ","","publish","closed","closed","","form-lien-he","","","2019-03-10 23:15:25","2019-03-10 16:15:25","","0","https://tppone.com/demo/camera/?post_type=wpcf7_contact_form&#038;p=542","0","wpcf7_contact_form","","0"),
("620","1","2019-05-05 06:21:26","2019-05-04 23:21:26","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-05 06:21:26","2019-05-04 23:21:26","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("621","1","2019-05-06 16:04:27","2019-05-06 09:04:27","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:04:27\"\n    }\n}","","","trash","closed","closed","","9651642b-b42c-413b-b014-53b0d6c9d5f6","","","2019-05-06 16:04:27","2019-05-06 09:04:27","","0","https://tppone.com/demo/camera/9651642b-b42c-413b-b014-53b0d6c9d5f6/","0","customize_changeset","","0"),
("622","1","2019-05-06 17:09:21","2019-05-06 10:09:21","","camera","","inherit","open","closed","","camera","","","2019-05-06 17:09:21","2019-05-06 10:09:21","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/05/camera.jpg","0","attachment","image/jpeg","0"),
("623","1","2019-05-06 17:10:44","2019-05-06 10:10:44","{\n    \"camera::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/camera/wp-content/uploads/2019/05/camera.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:10:44\"\n    }\n}","","","trash","closed","closed","","151a95ea-8e91-4d61-b021-82021fdcb678","","","2019-05-06 17:10:44","2019-05-06 10:10:44","","0","https://tppone.com/demo/camera/151a95ea-8e91-4d61-b021-82021fdcb678/","0","customize_changeset","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("34","2","0"),
("35","2","0"),
("166","4","0"),
("166","16","0"),
("166","18","0"),
("166","21","0"),
("168","4","0"),
("168","16","0"),
("168","18","0"),
("168","21","0"),
("170","4","0"),
("170","15","0"),
("170","18","0"),
("170","21","0"),
("173","4","0"),
("173","16","0"),
("173","18","0"),
("173","21","0"),
("190","4","0"),
("190","16","0"),
("190","19","0"),
("190","22","0"),
("192","4","0"),
("192","16","0"),
("192","19","0"),
("192","22","0"),
("194","4","0"),
("194","16","0"),
("194","19","0"),
("196","4","0"),
("196","16","0"),
("196","19","0"),
("196","21","0"),
("196","22","0"),
("198","4","0"),
("198","15","0"),
("198","19","0"),
("198","21","0"),
("200","4","0"),
("200","16","0"),
("200","19","0"),
("200","21","0"),
("202","4","0"),
("202","16","0"),
("202","19","0"),
("204","4","0"),
("204","16","0"),
("204","19","0"),
("204","21","0"),
("206","4","0"),
("206","16","0"),
("206","20","0"),
("208","4","0"),
("208","16","0"),
("208","20","0"),
("208","21","0"),
("210","4","0"),
("210","15","0"),
("210","20","0"),
("210","21","0"),
("212","4","0"),
("212","17","0"),
("212","23","0"),
("214","4","0"),
("214","16","0"),
("214","20","0"),
("214","24","0"),
("216","4","0"),
("216","16","0"),
("216","20","0"),
("216","25","0"),
("218","4","0"),
("218","16","0"),
("218","20","0"),
("218","26","0"),
("220","4","0"),
("220","17","0"),
("223","4","0"),
("223","17","0"),
("223","27","0"),
("225","4","0"),
("225","17","0"),
("294","1","0"),
("298","1","0"),
("298","28","0"),
("301","1","0"),
("301","29","0"),
("304","1","0"),
("304","29","0"),
("497","3","0"),
("498","3","0"),
("499","3","0"),
("501","3","0"),
("502","3","0"),
("503","3","0"),
("504","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","5"),
("2","2","nav_menu","","0","2"),
("3","3","nav_menu","","0","7"),
("4","4","product_type","","0","22"),
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
("15","15","product_visibility","","0","3"),
("16","16","product_visibility","","0","15"),
("17","17","product_cat","","0","4"),
("18","18","product_cat","Lợi ích khi sử dụng camera hành trình cho ô tô\nCamera hành trình ô tô giúp ghi lại những khoảnh khắc đẹp trên những chặng đường của bạn\nLàm bằng chứng cho bạn trong trường hợp bị CSGT bắt láo\nLàm bằng chứng trong các vụ tai nạn hoặc khi có tranh chấp xảy ra\nMột số dòng cao cấp camera hành trình tốt nhất có thêm tính năng cảnh báo, dẫn chỉ đường\nVà nhiều lợi ích khác nữa..\nCác loại camera hành trình giá rẻ phân phối độc quyền tại Webvision\nCamera hành trình ô tô Webvision M39\nM39 được đánh giá là một trong những siêu phẩm camera hành trình tốt nhất hiện nay tích hơp 14 tính năng hữu ích như: tích hợp công nghệ 4G, khả năng điều khiển từ xa, dẫn đường, quay video chất lượng HD, hỗ trợ lái xe an toàn nhờ hệ thống cảnh báo thông minh...\n\nCamera hành trình ô tô Webvision S8\nS8 ngoài chức năng ghi hình thì còn được tích hợp tính năng cảnh báo các loại biển báo giao thông, cảnh báo lấn làn hay chạy quá tốc độ cho tài xế… Đây được đánh giá là một trong những sản phẩm camera hành trình ô tô giá tốt thông minh nhất hiện nay.\n\nCamera hành trình Webvision S8 Plus Wifi GPS\nS8 Plus tích hợp camera lùi cùng khả năng kết nối Wifi trên hệ điều hành IOS và Android. Sở hữu đến 14 tính năng thông minh như quay phim Full HD cùng lúc trước sau, cảnh báo lấn làn, cảnh báo tốc độ,... Webvision S8 Plus được đánh giá là sản phẩm camera hành trình giá rẻ thuộc phân khúc tầm trung đáng mong đợi nhất năm 2018.\n\nCamera hành trình ô tô Webvision N93\nN93 là một trong những dòng sản phẩm cao cấp tốt nhất của hãng tính đến thời điểm hiện tại. Ngoài những tính năng của dòng S8 ở trên thì camera hành trình Webvision N93 còn được tích hợp thêm tính năng dẫn chỉ đường bằng tiếng Việt và tích hợp cả với camera lùi, hỗ trợ tối đa cho quá trình lái xe của bạn.\n\nCamera hành trình Webvision N93 Plus\nWebvision N93 Plus tích hợp mạng 4G LTE trên hệ điều hành Android 5.1 thông minh. Chiếc camera này còn sở hữu đến 16 tính năng ưu việt đem lại những trải nghiệm cực kì ấn tượng trên chính xe của bạn đồng thời giúp việc lái xe của bạn trở nên dễ dàng và an toàn hơn.\n\nWebvision S5\nCamera hành trình giá rẻ S5 được đánh giá là dòng ở phân khúc bình dân chất lượng nhất hiện nay với khả năng ghi hình đồng thời trước sau, tự động bật tắt khi mở, tắt máy xe, cảm biến va chạm giúp camera hành trình tự động lưu lại khi xe có va chạm xảy ra để làm tư liệu quý giá khi xảy ra tranh cãi.\n\nMua camera hành trình ở đâu tốt?\nĐể trang bị cho mình những sản phẩm chính hang, chất lượng nhất bạn hãy tìm mua camera hành trình tại các địa chỉ phân phối uy tín, chế độ bảo hành sau bán hàng tốt nhất, tránh tình trạng mua phải hàng nhái, hàng kém chất lượng.\n\nWebvision – Đẳng cấp Camera là một trong những nhà độc quyền phân phối, bán camera hành trình chính hãng, giá cả cạnh tranh trên toàn quốc, miễn phí lắp đặt….\n\nVới những điều tuyệt vời trên, thì tại sao bạn không sắm ngay 1 chiếc camera hành trình ô tô với giá tốt nhất, chính hãng của đẳng cấp camera về cho “vợ 2” của mình nhỉ. Liên hệ ngay với chúng tôi. Để “vợ 2” của bạn được chăm sóc 1 cách tốt nhất. Để có những trải nghiệm thật thú vị trên những hành trình của mình.","0","4"),
("19","19","product_cat","","0","8"),
("20","20","product_cat","","0","6"),
("21","21","product_tag","","0","10"),
("22","22","product_tag","","0","3"),
("23","23","product_tag","","0","1"),
("24","24","product_tag","","0","1"),
("25","25","product_tag","","0","1"),
("26","26","product_tag","","0","1"),
("27","27","product_tag","","0","1"),
("28","28","post_tag","","0","1"),
("29","29","post_tag","","0","2");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","17","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","17","display_type",""),
("3","17","thumbnail_id","162"),
("4","18","order","0"),
("5","18","display_type",""),
("6","18","thumbnail_id","163"),
("7","18","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("8","19","order","0"),
("9","19","display_type",""),
("10","19","thumbnail_id","164"),
("11","19","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("12","20","order","0"),
("13","20","display_type",""),
("14","20","thumbnail_id","165"),
("15","18","product_count_product_cat","4"),
("16","21","product_count_product_tag","10"),
("17","19","product_count_product_cat","8"),
("18","22","product_count_product_tag","3"),
("19","20","product_count_product_cat","6"),
("20","17","product_count_product_cat","4"),
("21","23","product_count_product_tag","1"),
("22","24","product_count_product_tag","1"),
("23","25","product_count_product_tag","1"),
("24","26","product_count_product_tag","1"),
("25","27","product_count_product_tag","1");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Tin tức","tin-tuc","0"),
("2","Topbar menu","topbar-menu","0"),
("3","Main menu","main-menu","0"),
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
("17","Thiết bị dẫn đường","thiet-bi-dan-duong","0"),
("18","Camera hành trình","camera-hanh-trinh","0"),
("19","Camera quan sát","camera-quan-sat","0"),
("20","Phụ kiện Camera","phu-kien-camera","0"),
("21","Camera hành trình giá cao","camera-hanh-trinh-gia-cao","0"),
("22","Ip camera","ip-camera","0"),
("23","Bơm tự vá cao cấp","bom-tu-va-cao-cap","0"),
("24","bơm điện","bom-dien","0"),
("25","Bơm điện tự vá","bom-dien-tu-va","0"),
("26","Bộ chia tẩu cho ô tô","bo-chia-tau-cho-o-to","0"),
("27","Thiết bị dẫn đường","thiet-bi-dan-duong","0"),
("28","Trang bị xe hơi","trang-bi-xe-hoi","0"),
("29","Camera hành trình","camera-hanh-trinh","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","Webdemo.com"),
("2","1","first_name",""),
("3","1","last_name","admin"),
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
("16","1","session_tokens","a:8:{s:64:\"18c871ec6aeb854977114ac5d95e45778ecbdd6a422179d1403a38d7bba41515\";a:4:{s:10:\"expiration\";i:1557482220;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557309420;}s:64:\"1e003771d96c7eac63ddb8a7fbe91a1066b14ae60fad2c20a58abb485cfb5620\";a:4:{s:10:\"expiration\";i:1557616017;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443217;}s:64:\"fe9cf07378eba6b7bdab4bb82f68a32943ddcc720a9c5fd62eeb76a12d85a54a\";a:4:{s:10:\"expiration\";i:1557619615;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557446815;}s:64:\"fb7d8f578cb3f9db0f71c447138a0202c0d96578cc1a9d32a7ed94b8410c3ff8\";a:4:{s:10:\"expiration\";i:1557625518;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452718;}s:64:\"d2c85713ee98b359fe865e7ab26ed83521008e8379e485cf2b64d75e25191996\";a:4:{s:10:\"expiration\";i:1557627809;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455009;}s:64:\"4c87d3de899352b72925c29c1927e99c120438bf8ea4eb8ae3ded5eccf957d56\";a:4:{s:10:\"expiration\";i:1557632349;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557459549;}s:64:\"a0af749b59486140dfa5f18eb97c5402974eca192c140b46d6997f7dfd677deb\";a:4:{s:10:\"expiration\";i:1557635989;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557463189;}s:64:\"405e5ff3916d54c4e248331baba6b02691be6731ee336bf619253a0c10e12ba5\";a:4:{s:10:\"expiration\";i:1557648114;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557475314;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","619"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557446815"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("26","1","wc_last_active","1557446400"),
("27","1","dismissed_install_notice","1"),
("28","1","dismissed_no_secure_connection_notice","1"),
("30","1","nav_menu_recently_edited","3"),
("31","1","last_update","1552234222"),
("32","1","billing_last_name","admin"),
("33","1","billing_address_1","Luong Ngoc Quyen"),
("34","1","billing_email","webdemo@gmail.com"),
("35","1","billing_phone","972939830"),
("36","1","shipping_method",""),
("40","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("41","1","duplicator_pro_created_format","1"),
("44","1","_woocommerce_tracks_anon_id","woo:BLAsK5xZJFIvMhJIqFZLvos4"),
("57","1","_woocommerce_load_saved_cart_after_login","1");




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
("1","admin","$P$BAdwKhAskSbbwsg8QE1WG11aBrkHvE/","admin","demobz@gmail.com","","2019-03-09 05:27:45","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_order_itemmeta VALUES
("1","1","_product_id","173"),
("2","1","_variation_id","0"),
("3","1","_qty","6"),
("4","1","_tax_class",""),
("5","1","_line_subtotal","27000000"),
("6","1","_line_subtotal_tax","0"),
("7","1","_line_total","27000000"),
("8","1","_line_tax","0"),
("9","1","_line_tax_data","a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}");




CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_order_items VALUES
("1","WEBVISION S8 – Camera hành trình 2K ADAS cảnh báo tốc độ","line_item","538");




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






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;