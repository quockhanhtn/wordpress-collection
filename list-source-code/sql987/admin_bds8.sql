SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w64`
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("2","54","ActionScheduler","","","","2019-04-22 10:03:30","2019-04-22 10:03:30","action created","0","1","ActionScheduler","action_log","0","0"),
("3","53","ActionScheduler","","","","2019-04-22 10:03:30","2019-04-22 10:03:30","action created","0","1","ActionScheduler","action_log","0","0"),
("4","53","ActionScheduler","","","","2019-04-22 10:03:31","2019-04-22 10:03:31","action started","0","1","ActionScheduler","action_log","0","0"),
("5","53","ActionScheduler","","","","2019-04-22 10:03:32","2019-04-22 10:03:32","action complete","0","1","ActionScheduler","action_log","0","0"),
("6","55","ActionScheduler","","","","2019-04-22 10:03:32","2019-04-22 10:03:32","action created","0","1","ActionScheduler","action_log","0","0"),
("7","54","ActionScheduler","","","","2019-04-22 10:03:32","2019-04-22 10:03:32","action started","0","1","ActionScheduler","action_log","0","0"),
("8","54","ActionScheduler","","","","2019-04-22 10:03:32","2019-04-22 10:03:32","action complete","0","1","ActionScheduler","action_log","0","0"),
("9","56","ActionScheduler","","","","2019-04-22 10:03:32","2019-04-22 10:03:32","action created","0","1","ActionScheduler","action_log","0","0"),
("10","55","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action started","0","1","ActionScheduler","action_log","0","0"),
("11","55","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action complete","0","1","ActionScheduler","action_log","0","0"),
("12","427","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action created","0","1","ActionScheduler","action_log","0","0"),
("13","56","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action started","0","1","ActionScheduler","action_log","0","0"),
("14","56","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action complete","0","1","ActionScheduler","action_log","0","0"),
("15","428","ActionScheduler","","","","2019-05-09 13:50:22","2019-05-09 13:50:22","action created","0","1","ActionScheduler","action_log","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/bizhostvn.com\\/w\\/bds8\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1555957773,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1557409820,\"initial_activation_timestamp\":1555957786,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557409891,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=1618 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/bds8","yes"),
("2","home","https://bizhostvn.com/w/bds8","yes"),
("3","blogname","Mẫu website Bất động sản","yes"),
("4","blogdescription","Hưng Lộc Phát","yes"),
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
("23","date_format","j F, Y","yes"),
("24","time_format","g:i a","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:4:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","/chuyen-muc","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","0","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:103:\"/home/bizhostvn/domains/bizhostvn.com/public_html/w/bds8/wp-content/themes/flatsome-child/functions.php\";i:2;s:99:\"/home/bizhostvn/domains/bizhostvn.com/public_html/w/bds8/wp-content/themes/flatsome-child/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","flatsome-child","yes"),
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
("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:4:{s:5:\"title\";s:2:\"kk\";s:4:\"text\";s:4:\"jhgf\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","5","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","134","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","43764","yes"),
("94","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"text-3\";i:1;s:13:\"custom_html-4\";i:2;s:6:\"meta-2\";}s:12:\"sidebar-main\";a:5:{i:0;s:13:\"media_image-5\";i:1;s:13:\"media_image-7\";i:2;s:13:\"media_image-6\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:3:{i:0;s:13:\"custom_html-3\";i:1;s:13:\"custom_html-5\";i:2;s:13:\"custom_html-6\";}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:3:{i:0;s:13:\"media_image-2\";i:1;s:13:\"media_image-4\";i:2;s:22:\"woocommerce_products-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_image","a:6:{i:2;a:15:{s:13:\"attachment_id\";i:189;s:3:\"url\";s:84:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/tai-bao-gia-du-an-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:12:\"#tai-bao-gia\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:200;s:3:\"url\";s:77:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/nut-tu-van-300x76.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:14:\"tel:0972939830\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:189;s:3:\"url\";s:84:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/tai-bao-gia-du-an-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:12:\"#tai-bao-gia\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:6;a:15:{s:13:\"attachment_id\";i:192;s:3:\"url\";s:83:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/thong-tin-uu-dai-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:18:\"/thong-tin-uu-dai/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:7;a:15:{s:13:\"attachment_id\";i:200;s:3:\"url\";s:77:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/nut-tu-van-300x76.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("113","widget_custom_html","a:5:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:624:\"<span style=\"font-size: 120%;color:white;\"><strong>HƯNG LỘC PHÁT CORPORATION</strong></span>
("114","cron","a:15:{i:1557990305;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557992913;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557993858;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557999785;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558000114;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558000121;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558000321;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558001033;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558011833;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558014879;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558051200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558076633;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558076643;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559822400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("116","theme_mods_twentynineteen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555926537;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("142","current_theme","Flatsome Child","yes"),
("143","theme_mods_flatsome-child","a:160:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"search\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:1:{i:0;s:3:\"nav\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:0:{}s:14:\"mobile_sidebar\";a:2:{i:0;s:3:\"nav\";i:1;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:11:\"top_bar_nav\";i:22;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 22 Apr 2019 09:48:58 +0000\";s:18:\"custom_css_post_id\";i:-1;s:9:\"site_logo\";s:64:\"https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/logo.jpg\";s:10:\"logo_width\";s:3:\"266\";s:12:\"logo_padding\";s:1:\"6\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"30\";s:13:\"header_height\";s:2:\"95\";s:20:\"header_bg_img_repeat\";s:6:\"repeat\";s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:19:\"footer_bottom_color\";s:7:\"#5ab8d2\";s:18:\"footer_bottom_text\";s:4:\"dark\";s:19:\"footer_bottom_align\";s:0:\"\";s:16:\"footer_left_text\";s:119:\"Copyright [ux_current_year] © Webdemo.com | Thiết kế bởi <a href=\"http://demoweb.com\" target=\"blank\">DemoWeb</a>\";s:16:\"footer_1_columns\";s:1:\"3\";s:14:\"footer_1_color\";s:5:\"light\";s:17:\"footer_1_bg_color\";s:7:\"#462917\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:290:\"<div class=\"float-contact\">
("144","theme_switched","","yes"),
("145","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:17:\"Bài viết mới\";s:6:\"number\";i:5;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("146","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("150","flatsome_wup_purchase_code","c173b5f9-c7a7-4f30-83be-90e22de44f0d","yes"),
("151","flatsome_wup_sold_at","2017-02-20T20:26:11+11:00","yes"),
("152","flatsome_wup_supported_until","2017-08-22T11:26:11+10:00","yes"),
("153","flatsome_wup_buyer","thaiduong103","yes"),
("158","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"lethach150699@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1555926633;}","no"),
("162","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("165","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1555927383;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("166","recently_activated","a:4:{s:30:\"db-prefix-change/db_prefix.php\";i:1557410186;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557409898;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557409893;s:23:\"wp-rocket/wp-rocket.php\";i:1557409880;}","yes"),
("169","nsl-version","3.0.19","yes"),
("170","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("173","woocommerce_store_address","","yes"),
("174","woocommerce_store_address_2","","yes"),
("175","woocommerce_store_city","","yes"),
("176","woocommerce_default_country","VN","yes"),
("177","woocommerce_store_postcode","","yes"),
("178","woocommerce_allowed_countries","all","yes"),
("179","woocommerce_all_except_countries","a:0:{}","yes"),
("180","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("181","woocommerce_ship_to_countries","","yes"),
("182","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("183","woocommerce_default_customer_address","geolocation","yes"),
("184","woocommerce_calc_taxes","no","yes"),
("185","woocommerce_enable_coupons","yes","yes"),
("186","woocommerce_calc_discounts_sequentially","no","no"),
("187","woocommerce_currency","VND","yes"),
("188","woocommerce_currency_pos","right","yes"),
("189","woocommerce_price_thousand_sep",".","yes"),
("190","woocommerce_price_decimal_sep",".","yes"),
("191","woocommerce_price_num_decimals","0","yes"),
("192","woocommerce_shop_page_id","380","yes"),
("193","woocommerce_cart_redirect_after_add","no","yes"),
("194","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("195","woocommerce_placeholder_image","52","yes"),
("196","woocommerce_weight_unit","kg","yes"),
("197","woocommerce_dimension_unit","cm","yes"),
("198","woocommerce_enable_reviews","yes","yes"),
("199","woocommerce_review_rating_verification_label","yes","no"),
("200","woocommerce_review_rating_verification_required","no","no"),
("201","woocommerce_enable_review_rating","yes","yes"),
("202","woocommerce_review_rating_required","yes","no"),
("203","woocommerce_manage_stock","yes","yes"),
("204","woocommerce_hold_stock_minutes","60","no"),
("205","woocommerce_notify_low_stock","yes","no"),
("206","woocommerce_notify_no_stock","yes","no"),
("207","woocommerce_stock_email_recipient","lethach150699@gmail.com","no"),
("208","woocommerce_notify_low_stock_amount","2","no"),
("209","woocommerce_notify_no_stock_amount","0","yes"),
("210","woocommerce_hide_out_of_stock_items","no","yes"),
("211","woocommerce_stock_format","","yes"),
("212","woocommerce_file_download_method","force","no"),
("213","woocommerce_downloads_require_login","no","no"),
("214","woocommerce_downloads_grant_access_after_payment","yes","no"),
("215","woocommerce_prices_include_tax","no","yes"),
("216","woocommerce_tax_based_on","shipping","yes"),
("217","woocommerce_shipping_tax_class","inherit","yes"),
("218","woocommerce_tax_round_at_subtotal","no","yes"),
("219","woocommerce_tax_classes","Giảm tỉ lệ
("220","woocommerce_tax_display_shop","excl","yes"),
("221","woocommerce_tax_display_cart","excl","yes"),
("222","woocommerce_price_display_suffix","","yes"),
("223","woocommerce_tax_total_display","itemized","no"),
("224","woocommerce_enable_shipping_calc","yes","no"),
("225","woocommerce_shipping_cost_requires_address","no","yes"),
("226","woocommerce_ship_to_destination","billing","no"),
("227","woocommerce_shipping_debug_mode","no","yes"),
("228","woocommerce_enable_guest_checkout","yes","no"),
("229","woocommerce_enable_checkout_login_reminder","no","no"),
("230","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("231","woocommerce_enable_myaccount_registration","no","no"),
("232","woocommerce_registration_generate_username","yes","no"),
("233","woocommerce_registration_generate_password","yes","no"),
("234","woocommerce_erasure_request_removes_order_data","no","no"),
("235","woocommerce_erasure_request_removes_download_data","no","no"),
("236","woocommerce_allow_bulk_remove_personal_data","no","no"),
("237","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("238","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("239","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("240","woocommerce_trash_pending_orders","","no"),
("241","woocommerce_trash_failed_orders","","no"),
("242","woocommerce_trash_cancelled_orders","","no"),
("243","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("244","woocommerce_email_from_name","Bất Động Sản","no"),
("245","woocommerce_email_from_address","lethach150699@gmail.com","no");
INSERT INTO bz_options VALUES
("246","woocommerce_email_header_image","","no"),
("247","woocommerce_email_footer_text","{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("248","woocommerce_email_base_color","#96588a","no"),
("249","woocommerce_email_background_color","#f7f7f7","no"),
("250","woocommerce_email_body_background_color","#ffffff","no"),
("251","woocommerce_email_text_color","#3c3c3c","no"),
("252","woocommerce_cart_page_id","381","yes"),
("253","woocommerce_checkout_page_id","382","yes"),
("254","woocommerce_myaccount_page_id","383","yes"),
("255","woocommerce_terms_page_id","","no"),
("256","woocommerce_force_ssl_checkout","no","yes"),
("257","woocommerce_unforce_ssl_checkout","no","yes"),
("258","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("259","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("260","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("261","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("262","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("263","woocommerce_myaccount_orders_endpoint","orders","yes"),
("264","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("265","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("266","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("267","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("268","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("269","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("270","woocommerce_logout_endpoint","customer-logout","yes"),
("271","woocommerce_api_enabled","no","yes"),
("272","woocommerce_allow_tracking","no","no"),
("273","woocommerce_show_marketplace_suggestions","yes","no"),
("274","woocommerce_single_image_width","300","yes"),
("275","woocommerce_thumbnail_image_width","450","yes"),
("276","woocommerce_checkout_highlight_required_fields","yes","yes"),
("277","woocommerce_demo_store","no","no"),
("278","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:6:\"/du-an\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("279","current_theme_supports_woocommerce","yes","yes"),
("280","woocommerce_queue_flush_rewrite_rules","no","yes"),
("283","default_product_cat","16","yes"),
("288","woocommerce_admin_notices","a:1:{i:0;s:20:\"no_secure_connection\";}","yes"),
("290","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("291","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("292","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("293","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("294","widget_woocommerce_product_categories","a:2:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("295","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("296","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("297","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:14:\"Dự án mới\";s:6:\"number\";i:2;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("298","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("299","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("300","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("301","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("302","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","woocommerce_marketplace_suggestions","a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1557409822;}","no"),
("311","woocommerce_meta_box_errors","a:0:{}","yes"),
("348","widget_ot_zalo_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("352","cnb","a:11:{s:6:\"active\";s:1:\"1\";s:6:\"number\";s:10:\"0377026186\";s:4:\"text\";s:10:\"0377026186\";s:5:\"color\";s:7:\"#009900\";s:10:\"appearance\";s:5:\"right\";s:8:\"tracking\";s:1:\"0\";s:4:\"show\";s:0:\"\";s:5:\"limit\";s:7:\"include\";s:4:\"zoom\";s:3:\"0.7\";s:7:\"z-index\";s:2:\"10\";s:7:\"version\";s:5:\"0.3.6\";}","yes"),
("366","duplicator_pro_package_active","{\"Created\":\"2019-04-26 01:42:06\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190426_mauwebsitebatdongsanninhb\",\"Hash\":\"8c948d3f3955d5643421_20190426014206\",\"NameHash\":\"20190426_mauwebsitebatdongsanninhb_8c948d3f3955d5643421_20190426014206\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/bizhostvn.com\\/w\\/bds8\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190426_mauwebsitebatdongsanninhb_8c948d3f3955d5643421_20190426014206_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/ai1wm-backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/backups-dup-pro\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/backupwordpress\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/content\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/contents\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/managewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/old-cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/updraft\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/wfcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/wishlist-backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/.htaccess\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\",\"Size\":148764223,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/ai1wm-backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/backupwordpress\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/content\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/contents\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/managewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/old-cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/updraft\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/wishlist-backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/wfcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-300x300.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-300x300.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-768x563.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-768x563.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-150x150.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-150x150.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-100x100.jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-150x150.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-150x150.jpg\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-270x270.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-270x270.png\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-280x280.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-280x280.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-300x152.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-300x152.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x300.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x300.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-100x100.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-100x100.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t..jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t..jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-100x100.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-100x100.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-300x191.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-300x191.jpg\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-150x150.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-150x150.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1-150x150.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1-150x150.jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-300x256.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-300x256.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-280x280.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-280x280.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-300x300.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-300x300.jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-150x150.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-150x150.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-100x100.jpg\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-180x180.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-180x180.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-600x440.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-600x440.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-545x400.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-545x400.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-300x191.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-300x191.jpg\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-280x191.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-280x191.jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-100x100.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x220.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x220.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-280x256.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-280x256.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-100x100.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-100x100.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-150x150.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-Summer-Land-Resort-Phan-Thi\\u1ebft-M\\u0169i-N\\u00e9-1-150x150.jpg\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x300.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-300x300.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-100x100.jpg\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-300x256.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-1-300x256.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1-300x130.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1-300x130.jpg\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-280x152.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-280x152.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-768x563.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-768x563.png\"},{\"name\":\"nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/nh-c\\u1ee7a-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t.-1.jpg\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-32x32.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-32x32.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-280x191.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-1-280x191.jpg\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-450x330.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-450x330.png\"},{\"name\":\"cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-192x192.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/cropped-H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-192x192.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-100x100.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-100x100.png\"},{\"name\":\"H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-600x440.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/H\\u01b0ng-L\\u1ed9c-Ph\\u00e1t-1-600x440.png\"},{\"name\":\"D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-100x100.png\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/D\\u1ef1-\\u00e1n-c\\u0103n-h\\u1ed9-Blue-Star-Qu\\u1eadn-7-100x100.png\"},{\"name\":\"Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-300x191.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-content\\/uploads\\/2019\\/04\\/Ph\\u1ed1i-c\\u1ea3nh-d\\u1ef1-\\u00e1n-Blue-Star-Qu\\u1eadn-7-2-300x191.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/.htaccess\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/bds8\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web19\",\"tablesBaseCount\":34,\"tablesFinalCount\":34,\"tablesRowCount\":1254,\"tablesSizeOnDisk\":4014080,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("377","duplicator_pro_ui_view_state","a:1:{s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";}","yes"),
("381","db_upgraded","","yes"),
("386","can_compress_scripts","0","no"),
("431","woocommerce_maybe_regenerate_images_hash","c710c93621783218c1595be474b5b924","yes"),
("537","product_cat_children","a:0:{}","yes"),
("665","category_children","a:0:{}","yes"),
("735","woocommerce_thumbnail_cropping","uncropped","yes"),
("736","woocommerce_thumbnail_cropping_custom_width","3","yes"),
("737","woocommerce_thumbnail_cropping_custom_height","4","yes"),
("1045","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1556012583;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("1046","wpseo_titles","a:101:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:43:\"%%term_title%%%%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:23:\"title-ptarchive-product\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:26:\"post_types-product-maintax\";s:11:\"product_cat\";s:29:\"taxonomy-product_cat-ptparent\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("1047","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("1049","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("1055","wpseo_current_version","16","no"),
("1056","wpseo_premium_version","8.4","yes"),
("1059","wpseo_tracking_last_request","1557409825","yes"),
("1070","wpseo_sitemap_cache_validator_global","3yaCP","no"),
("1074","rewrite_rules","a:182:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:8:\"du-an/?$\";s:27:\"index.php?post_type=product\";s:38:\"du-an/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"du-an/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:25:\"du-an/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:57:\"(hoat-dong-cong-ty)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(hoat-dong-cong-ty)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(hoat-dong-cong-ty)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:16:\"chuyen-muc/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:33:\"du-an/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"du-an/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"du-an/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"du-an/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"du-an/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:26:\"du-an/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"du-an/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:41:\"du-an/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:34:\"du-an/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:41:\"du-an/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:31:\"du-an/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:37:\"du-an/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"du-an/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"du-an/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:22:\"du-an/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"du-an/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"du-an/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"du-an/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("1075","wpseo_sitemap_1_cache_validator","4BCQ6","no"),
("1076","wpseo_sitemap_customize_changeset_cache_validator","2L36y","no"),
("1082","wpseo_sitemap_page_cache_validator","2QdZC","no"),
("1083","wpseo_sitemap_nav_menu_item_cache_validator","3yJgp","no"),
("1084","wpseo_sitemap_47_cache_validator","3xUQI","no"),
("1085","wpseo_sitemap_48_cache_validator","3xUQN","no"),
("1097","wpseo-premium-redirects-base","a:1:{i:0;a:4:{s:6:\"origin\";s:3:\"mua\";s:3:\"url\";s:5:\"du-an\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}}","no"),
("1098","wpseo-premium-redirects-export-plain","a:1:{s:3:\"mua\";a:2:{s:3:\"url\";s:5:\"du-an\";s:4:\"type\";i:301;}}","no"),
("1099","wpseo-premium-redirects-export-regex","a:0:{}","no"),
("1203","wpseo_license_server_version","2","yes"),
("1213","wpseo_sitemap_attachment_cache_validator","3H68","no"),
("1229","woocommerce_version","3.6.2","yes"),
("1230","woocommerce_db_version","3.6.2","yes"),
("1252","wpseo_sitemap_blocks_cache_validator","2QdZw","no"),
("1253","wpseo_sitemap_post_cache_validator","4BCQh","no"),
("1254","wpseo_sitemap_category_cache_validator","2QdZF","no"),
("1255","wpseo_sitemap_91_cache_validator","2QdZI","no"),
("1256","wpseo_sitemap_93_cache_validator","2QdZL","no"),
("1257","wpseo_sitemap_95_cache_validator","2QdZP","no"),
("1258","wpseo_sitemap_97_cache_validator","2QdZS","no"),
("1259","wpseo_sitemap_99_cache_validator","2QdZU","no"),
("1391","_transient_timeout_wpseo_link_table_inaccessible","1588945821","no"),
("1392","_transient_wpseo_link_table_inaccessible","0","no"),
("1393","_transient_timeout_wpseo_meta_table_inaccessible","1588945821","no"),
("1394","_transient_wpseo_meta_table_inaccessible","0","no"),
("1395","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1396","_transient_wc_attribute_taxonomies","a:0:{}","yes");
INSERT INTO bz_options VALUES
("1398","_transient_product_query-transient-version","1557443167","yes"),
("1414","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557972135;s:7:\"checked\";a:2:{s:14:\"flatsome-child\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.8.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1418","wpseo_sitemap_scheduled-action_cache_validator","4BCQd","no"),
("1421","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:14;s:3:\"all\";i:14;s:8:\"approved\";s:2:\"14\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1422","_transient_as_comment_count","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1442","recovery_keys","a:0:{}","yes"),
("1444","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557972131;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1447","dbprefix_old_dbprefix","wp_","yes"),
("1448","dbprefix_new","bz_","yes"),
("1453","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558047966","no"),
("1454","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1455","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558047967","no"),
("1456","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("1461","_transient_timeout_wc_low_stock_count","1560035167","no"),
("1462","_transient_wc_low_stock_count","0","no"),
("1463","_transient_timeout_wc_outofstock_count","1560035167","no"),
("1464","_transient_wc_outofstock_count","0","no"),
("1484","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557972135;s:7:\"checked\";a:4:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("1541","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558321926","no"),
("1542","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1589","_transient_timeout_wc_term_counts","1560474905","no"),
("1590","_transient_wc_term_counts","a:1:{i:16;s:1:\"6\";}","no"),
("1591","_transient_timeout_wc_related_161","1557969306","no"),
("1592","_transient_wc_related_161","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=161\";a:5:{i:0;s:3:\"155\";i:1;s:3:\"157\";i:2;s:3:\"159\";i:3;s:3:\"163\";i:4;s:3:\"165\";}}","no"),
("1593","_transient_timeout_wc_related_159","1557969348","no"),
("1594","_transient_wc_related_159","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=159\";a:5:{i:0;s:3:\"155\";i:1;s:3:\"157\";i:2;s:3:\"161\";i:3;s:3:\"163\";i:4;s:3:\"165\";}}","no"),
("1611","_site_transient_timeout_theme_roots","1557973934","no"),
("1612","_site_transient_theme_roots","a:2:{s:14:\"flatsome-child\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("3","5","_edit_last","1"),
("4","5","_edit_lock","1555952819:1"),
("5","5","_footer","normal"),
("6","5","_wp_page_template","page-blank.php"),
("7","7","_wp_attached_file","2019/04/11aba4380f8f876fd93696_200x300-1.jpg"),
("8","7","_wp_attachment_metadata","a:5:{s:5:\"width\";i:200;s:6:\"height\";i:300;s:4:\"file\";s:44:\"2019/04/11aba4380f8f876fd93696_200x300-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"11aba4380f8f876fd93696_200x300-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"11aba4380f8f876fd93696_200x300-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"11aba4380f8f876fd93696_200x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"11aba4380f8f876fd93696_200x300-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("9","8","_wp_attached_file","2019/04/16_4_201845_w500_3241_1523861997_1_1-1.png"),
("10","8","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:50:\"2019/04/16_4_201845_w500_3241_1523861997_1_1-1.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"16_4_201845_w500_3241_1523861997_1_1-1-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"16_4_201845_w500_3241_1523861997_1_1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"16_4_201845_w500_3241_1523861997_1_1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"16_4_201845_w500_3241_1523861997_1_1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"16_4_201845_w500_3241_1523861997_1_1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("11","9","_wp_attached_file","2019/04/39966454_2184294695115246_2147747973172297728_n-1.png"),
("12","9","_wp_attachment_metadata","a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:61:\"2019/04/39966454_2184294695115246_2147747973172297728_n-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("13","10","_wp_attached_file","2019/04/1551337455_300x113-1.png"),
("14","10","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:113;s:4:\"file\";s:32:\"2019/04/1551337455_300x113-1.png\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"1551337455_300x113-1-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"1551337455_300x113-1-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"1551337455_300x113-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1551337455_300x113-1-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1551337455_300x113-1-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("15","11","_wp_attached_file","2019/04/aaa-1.png"),
("16","11","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:155;s:4:\"file\";s:17:\"2019/04/aaa-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"aaa-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"aaa-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("17","12","_wp_attached_file","2019/04/Ảnh-của-Hưng-Lộc-Phát.-1.jpg"),
("18","12","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:152;s:4:\"file\";s:44:\"2019/04/Ảnh-của-Hưng-Lộc-Phát.-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Ảnh-của-Hưng-Lộc-Phát.-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Ảnh-của-Hưng-Lộc-Phát.-1-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("19","13","_wp_attached_file","2019/04/be_tong_hung_loc_phat_300x220-1.png"),
("20","13","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:220;s:4:\"file\";s:43:\"2019/04/be_tong_hung_loc_phat_300x220-1.png\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"be_tong_hung_loc_phat_300x220-1-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"be_tong_hung_loc_phat_300x220-1-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"be_tong_hung_loc_phat_300x220-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"be_tong_hung_loc_phat_300x220-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"be_tong_hung_loc_phat_300x220-1-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("21","14","_wp_attached_file","2019/04/can_ho_golden_star_phoi_canh_300x197-1.jpg"),
("22","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:197;s:4:\"file\";s:50:\"2019/04/can_ho_golden_star_phoi_canh_300x197-1.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x197-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x197-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x197-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x197-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x197-1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("23","15","_wp_attached_file","2019/04/can_ho_golden_star_phoi_canh_300x300-1.jpg"),
("24","15","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:50:\"2019/04/can_ho_golden_star_phoi_canh_300x300-1.jpg\";s:5:\"sizes\";a:3:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x300-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x300-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"can_ho_golden_star_phoi_canh_300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("25","16","_wp_attached_file","2019/04/can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1.jpg"),
("26","16","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:62:\"2019/04/can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1.jpg\";s:5:\"sizes\";a:3:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:62:\"can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:62:\"can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("27","17","_wp_attached_file","2019/04/Dự-án-căn-hộ-Blue-Star-Quận-7-1.png"),
("28","17","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:256;s:4:\"file\";s:51:\"2019/04/Dự-án-căn-hộ-Blue-Star-Quận-7-1.png\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"Dự-án-căn-hộ-Blue-Star-Quận-7-1-300x256.png\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"Dự-án-căn-hộ-Blue-Star-Quận-7-1-300x256.png\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"Dự-án-căn-hộ-Blue-Star-Quận-7-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Dự-án-căn-hộ-Blue-Star-Quận-7-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Dự-án-căn-hộ-Blue-Star-Quận-7-1-300x256.png\";s:5:\"width\";i:300;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("29","18","_wp_attached_file","2019/04/Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1.jpg"),
("30","18","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:63:\"2019/04/Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1.jpg\";s:5:\"sizes\";a:3:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:63:\"Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("31","19","_wp_attached_file","2019/04/hanoi-homeland-3-1.jpg"),
("32","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2019/04/hanoi-homeland-3-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-450x180.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hanoi-homeland-3-1-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"hanoi-homeland-3-1-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("33","20","_wp_attached_file","2019/04/Hưng-Lộc-Phát-1.png"),
("34","20","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:748;s:4:\"file\";s:31:\"2019/04/Hưng-Lộc-Phát-1.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-450x330.png\";s:5:\"width\";i:450;s:6:\"height\";i:330;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Hưng-Lộc-Phát-1-768x563.png\";s:5:\"width\";i:768;s:6:\"height\";i:563;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("35","21","_wp_attached_file","2019/04/logo_moi_vinhomes_metropolis_1-1.png"),
("36","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:201;s:6:\"height\";i:103;s:4:\"file\";s:44:\"2019/04/logo_moi_vinhomes_metropolis_1-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"logo_moi_vinhomes_metropolis_1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"logo_moi_vinhomes_metropolis_1-1-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("37","22","_wp_attached_file","2019/04/logo_Vincity_Ocean_Park_02-1.png"),
("38","22","_wp_attachment_metadata","a:5:{s:5:\"width\";i:992;s:6:\"height\";i:750;s:4:\"file\";s:40:\"2019/04/logo_Vincity_Ocean_Park_02-1.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-450x340.png\";s:5:\"width\";i:450;s:6:\"height\";i:340;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-300x227.png\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-300x227.png\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"logo_Vincity_Ocean_Park_02-1-768x581.png\";s:5:\"width\";i:768;s:6:\"height\";i:581;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("39","23","_wp_attached_file","2019/04/Logo_Vinhomes_Gadenia-1.png"),
("40","23","_wp_attachment_metadata","a:5:{s:5:\"width\";i:215;s:6:\"height\";i:110;s:4:\"file\";s:35:\"2019/04/Logo_Vinhomes_Gadenia-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Logo_Vinhomes_Gadenia-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Logo_Vinhomes_Gadenia-1-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("41","24","_wp_attached_file","2019/04/Logo_Vinhomes_Gadenia_1-1.png"),
("42","24","_wp_attachment_metadata","a:5:{s:5:\"width\";i:215;s:6:\"height\";i:110;s:4:\"file\";s:37:\"2019/04/Logo_Vinhomes_Gadenia_1-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"Logo_Vinhomes_Gadenia_1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Logo_Vinhomes_Gadenia_1-1-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("43","25","_wp_attached_file","2019/04/Phối-cảnh-dự-án-Blue-Star-Quận-7-2.jpg"),
("44","25","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:191;s:4:\"file\";s:55:\"2019/04/Phối-cảnh-dự-án-Blue-Star-Quận-7-2.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:55:\"Phối-cảnh-dự-án-Blue-Star-Quận-7-2-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:55:\"Phối-cảnh-dự-án-Blue-Star-Quận-7-2-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:55:\"Phối-cảnh-dự-án-Blue-Star-Quận-7-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Phối-cảnh-dự-án-Blue-Star-Quận-7-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Phối-cảnh-dự-án-Blue-Star-Quận-7-2-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("45","26","_wp_attached_file","2019/04/phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1.jpg"),
("46","26","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:195;s:4:\"file\";s:57:\"2019/04/phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("47","27","_wp_attached_file","2019/04/phoi_canh_du_an_biet_thu_green_star_300x300-1.jpg"),
("48","27","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:57:\"2019/04/phoi_canh_du_an_biet_thu_green_star_300x300-1.jpg\";s:5:\"sizes\";a:4:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_biet_thu_green_star_300x300-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"phoi_canh_du_an_biet_thu_green_star_300x300-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_biet_thu_green_star_300x300-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"phoi_canh_du_an_biet_thu_green_star_300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("49","28","_wp_attached_file","2019/04/picture1-1.jpg"),
("50","28","_wp_attachment_metadata","a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2019/04/picture1-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"picture1-1-450x180.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"picture1-1-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"picture1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"picture1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"picture1-1-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"picture1-1-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"picture1-1-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("51","29","_wp_attached_file","2019/04/quick_call_button_zalo-1.png"),
("52","29","_wp_attachment_metadata","a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:36:\"2019/04/quick_call_button_zalo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("53","30","_wp_attached_file","2019/04/tl-1.png"),
("54","30","_wp_attachment_metadata","a:5:{s:5:\"width\";i:201;s:6:\"height\";i:103;s:4:\"file\";s:16:\"2019/04/tl-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"tl-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tl-1-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("55","31","_wp_attached_file","2019/04/Vinhomes_Royal_City-1.png"),
("56","31","_wp_attachment_metadata","a:5:{s:5:\"width\";i:215;s:6:\"height\";i:110;s:4:\"file\";s:33:\"2019/04/Vinhomes_Royal_City-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Vinhomes_Royal_City-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Vinhomes_Royal_City-1-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("57","5","_thumbnail_id",""),
("59","34","_wp_attached_file","2019/04/cropped-Hưng-Lộc-Phát-1.png"),
("60","34","_wp_attachment_context","site-icon"),
("61","34","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2019/04/cropped-Hưng-Lộc-Phát-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-Hưng-Lộc-Phát-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-Hưng-Lộc-Phát-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:39:\"cropped-Hưng-Lộc-Phát-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:39:\"cropped-Hưng-Lộc-Phát-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:39:\"cropped-Hưng-Lộc-Phát-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:37:\"cropped-Hưng-Lộc-Phát-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("64","35","_edit_last","1"),
("65","35","_footer","normal"),
("66","35","_wp_page_template","page-blank-title-center.php"),
("67","35","_edit_lock","1556011728:1"),
("72","39","_edit_last","1"),
("73","39","_footer","normal"),
("74","39","_wp_page_template","default"),
("75","39","_edit_lock","1555927126:1"),
("76","41","_edit_last","1"),
("77","41","_footer","normal"),
("78","41","_wp_page_template","page-blank-title-center.php"),
("79","41","_edit_lock","1556174274:1"),
("80","43","_edit_last","1"),
("81","43","_footer","normal"),
("82","43","_wp_page_template","page-blank-title-center.php"),
("83","43","_edit_lock","1556012589:1"),
("84","45","_menu_item_type","post_type"),
("85","45","_menu_item_menu_item_parent","0"),
("86","45","_menu_item_object_id","43"),
("87","45","_menu_item_object","page"),
("88","45","_menu_item_target",""),
("89","45","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("90","45","_menu_item_xfn",""),
("91","45","_menu_item_url",""),
("93","46","_menu_item_type","post_type"),
("94","46","_menu_item_menu_item_parent","0"),
("95","46","_menu_item_object_id","41"),
("96","46","_menu_item_object","page"),
("97","46","_menu_item_target",""),
("98","46","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("99","46","_menu_item_xfn",""),
("100","46","_menu_item_url",""),
("120","49","_menu_item_type","post_type"),
("121","49","_menu_item_menu_item_parent","0"),
("122","49","_menu_item_object_id","35"),
("123","49","_menu_item_object","page"),
("124","49","_menu_item_target",""),
("125","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("126","49","_menu_item_xfn",""),
("127","49","_menu_item_url","");
INSERT INTO bz_postmeta VALUES
("129","50","_menu_item_type","post_type"),
("130","50","_menu_item_menu_item_parent","0"),
("131","50","_menu_item_object_id","5"),
("132","50","_menu_item_object","page"),
("133","50","_menu_item_target",""),
("134","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("135","50","_menu_item_xfn",""),
("136","50","_menu_item_url",""),
("138","51","_form","[text* text-767 placeholder \"Họ và tên...\"]\n[email email-689 placeholder \"Địa chỉ email...\"]\n[tel* tel-410 placeholder \"Số điện thoại...\"]\n[text text-764 placeholder \"Dự án quan tâm...\"]\n[submit \"Đăng ký nhận báo giá\"]"),
("139","51","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:36:\"Bất Động Sản \"[your-subject]\"\";s:6:\"sender\";s:31:\"wordpress@bds8.ninhbinhweb.info\";s:9:\"recipient\";s:14:\"demo@gmail.com\";s:4:\"body\";s:299:\"Có một người yêu cầu nhận báo giá:\n- Họ và tên: [text-767]\n- Địa chỉ email: [email-689]\n- Số điện thoại: [tel-410]\n- Dự án quan tâm: [text-764]\n-- \nEmail này được gửi đến từ form liên hệ của website Bất Động Sản (https://bizhostvn.com/w/bds8)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("140","51","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:36:\"Bất Động Sản \"[your-subject]\"\";s:6:\"sender\";s:45:\"Bất Động Sản <lethach150699@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:165:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Bất Động Sản (https://bizhostvn.com/w/bds8)\";s:18:\"additional_headers\";s:33:\"Reply-To: lethach150699@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("141","51","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("142","51","_additional_settings",""),
("143","51","_locale","vi"),
("144","52","_wp_attached_file","woocommerce-placeholder.png"),
("145","52","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-450x450.png\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("146","54","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1555927410;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}"),
("147","53","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1555927410;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}"),
("148","55","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1555927410;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}"),
("149","56","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1555927410;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}"),
("221","109","_wp_attached_file","2019/04/cropped-LOGO-giuseart.jpg"),
("222","109","_wp_attachment_context","site-icon"),
("223","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2019/04/cropped-LOGO-giuseart.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-LOGO-giuseart-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-LOGO-giuseart-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("226","112","_wp_attached_file","2019/04/slider1.jpg"),
("227","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:604;s:4:\"file\";s:19:\"2019/04/slider1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider1-450x142.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slider1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x242.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x322.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"slider1-450x142.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"slider1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("238","119","_menu_item_type","post_type"),
("239","119","_menu_item_menu_item_parent","0"),
("240","119","_menu_item_object_id","43"),
("241","119","_menu_item_object","page"),
("242","119","_menu_item_target",""),
("243","119","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("244","119","_menu_item_xfn",""),
("245","119","_menu_item_url",""),
("247","120","_menu_item_type","custom"),
("248","120","_menu_item_menu_item_parent","0"),
("249","120","_menu_item_object_id","120"),
("250","120","_menu_item_object","custom"),
("251","120","_menu_item_target",""),
("252","120","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("253","120","_menu_item_xfn",""),
("254","120","_menu_item_url","/wp-admin"),
("279","132","_wp_attached_file","2019/04/logo.jpg"),
("280","132","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:62;s:4:\"file\";s:16:\"2019/04/logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x62.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x62.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x62.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("283","134","_wp_attached_file","2019/04/cropped-logo.jpg"),
("284","134","_wp_attachment_context","site-icon"),
("285","134","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2019/04/cropped-logo.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("288","136","_wp_attached_file","2019/04/slider-01.jpg"),
("289","136","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:21:\"2019/04/slider-01.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slider-01-450x119.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slider-01-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-01-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider-01-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider-01-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"slider-01-450x119.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slider-01-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("290","138","_wp_attached_file","2019/04/slider-02.jpg"),
("291","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:21:\"2019/04/slider-02.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"slider-02-450x119.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slider-02-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-02-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"slider-02-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"slider-02-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"slider-02-450x119.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slider-02-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"slider-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("323","155","_edit_last","1"),
("324","155","_edit_lock","1556004416:1"),
("325","156","_wp_attached_file","2019/04/du-an-1.jpg"),
("326","156","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:233;s:4:\"file\";s:19:\"2019/04/du-an-1.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"du-an-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"du-an-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"du-an-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"du-an-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("327","155","_thumbnail_id","156"),
("328","155","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("329","155","total_sales","0"),
("330","155","_tax_status","taxable"),
("331","155","_tax_class",""),
("332","155","_manage_stock","no"),
("333","155","_backorders","no"),
("334","155","_sold_individually","no"),
("335","155","_virtual","no"),
("336","155","_downloadable","no"),
("337","155","_download_limit","-1"),
("338","155","_download_expiry","-1"),
("339","155","_stock",""),
("340","155","_stock_status","instock"),
("341","155","_wc_average_rating","0"),
("342","155","_wc_review_count","0"),
("343","155","_product_version","3.6.1"),
("344","157","_edit_last","1"),
("345","157","_edit_lock","1556004454:1"),
("346","158","_wp_attached_file","2019/04/du-an-2.jpg"),
("347","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2019/04/du-an-2.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"du-an-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"du-an-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"du-an-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"du-an-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("348","157","_thumbnail_id","158"),
("349","157","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("350","157","total_sales","0"),
("351","157","_tax_status","taxable"),
("352","157","_tax_class",""),
("353","157","_manage_stock","no"),
("354","157","_backorders","no"),
("355","157","_sold_individually","no"),
("356","157","_virtual","no"),
("357","157","_downloadable","no"),
("358","157","_download_limit","-1"),
("359","157","_download_expiry","-1"),
("360","157","_stock",""),
("361","157","_stock_status","instock"),
("362","157","_wc_average_rating","0"),
("363","157","_wc_review_count","0"),
("364","157","_product_version","3.6.1"),
("365","159","_edit_last","1"),
("366","159","_edit_lock","1556005404:1"),
("367","160","_wp_attached_file","2019/04/du-an-3.jpg"),
("368","160","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/04/du-an-3.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"du-an-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"du-an-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"du-an-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"du-an-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("369","159","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("370","159","total_sales","0"),
("371","159","_tax_status","taxable"),
("372","159","_tax_class","");
INSERT INTO bz_postmeta VALUES
("373","159","_manage_stock","no"),
("374","159","_backorders","no"),
("375","159","_sold_individually","no"),
("376","159","_virtual","no"),
("377","159","_downloadable","no"),
("378","159","_download_limit","-1"),
("379","159","_download_expiry","-1"),
("380","159","_stock",""),
("381","159","_stock_status","instock"),
("382","159","_wc_average_rating","0"),
("383","159","_wc_review_count","0"),
("384","159","_product_version","3.6.1"),
("386","161","_edit_last","1"),
("387","161","_edit_lock","1556005384:1"),
("388","162","_wp_attached_file","2019/04/du-an-34.jpg"),
("389","162","_wp_attachment_metadata","a:5:{s:5:\"width\";i:390;s:6:\"height\";i:219;s:4:\"file\";s:20:\"2019/04/du-an-34.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"du-an-34-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"du-an-34-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"du-an-34-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"du-an-34-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"du-an-34-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"du-an-34-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"du-an-34-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("390","161","_thumbnail_id","162"),
("391","161","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("392","161","total_sales","0"),
("393","161","_tax_status","taxable"),
("394","161","_tax_class",""),
("395","161","_manage_stock","no"),
("396","161","_backorders","no"),
("397","161","_sold_individually","no"),
("398","161","_virtual","no"),
("399","161","_downloadable","no"),
("400","161","_download_limit","-1"),
("401","161","_download_expiry","-1"),
("402","161","_stock",""),
("403","161","_stock_status","instock"),
("404","161","_wc_average_rating","0"),
("405","161","_wc_review_count","0"),
("406","161","_product_version","3.6.1"),
("407","163","_edit_last","1"),
("408","163","_edit_lock","1556005334:1"),
("409","164","_wp_attached_file","2019/04/du-an-5.jpg"),
("410","164","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:263;s:4:\"file\";s:19:\"2019/04/du-an-5.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"du-an-5-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"du-an-5-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"du-an-5-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"du-an-5-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("411","163","_thumbnail_id","164"),
("412","163","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("413","163","total_sales","0"),
("414","163","_tax_status","taxable"),
("415","163","_tax_class",""),
("416","163","_manage_stock","no"),
("417","163","_backorders","no"),
("418","163","_sold_individually","no"),
("419","163","_virtual","no"),
("420","163","_downloadable","no"),
("421","163","_download_limit","-1"),
("422","163","_download_expiry","-1"),
("423","163","_stock",""),
("424","163","_stock_status","instock"),
("425","163","_wc_average_rating","0"),
("426","163","_wc_review_count","0"),
("427","163","_product_version","3.6.1"),
("428","166","_wp_attached_file","2019/04/du-an-6.jpg"),
("429","166","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:263;s:4:\"file\";s:19:\"2019/04/du-an-6.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"du-an-6-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"du-an-6-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"du-an-6-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"du-an-6-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"du-an-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("430","165","_edit_last","1"),
("431","165","_thumbnail_id","166"),
("432","165","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("433","165","total_sales","0"),
("434","165","_tax_status","taxable"),
("435","165","_tax_class",""),
("436","165","_manage_stock","no"),
("437","165","_backorders","no"),
("438","165","_sold_individually","no"),
("439","165","_virtual","no"),
("440","165","_downloadable","no"),
("441","165","_download_limit","-1"),
("442","165","_download_expiry","-1"),
("443","165","_stock",""),
("444","165","_stock_status","instock"),
("445","165","_wc_average_rating","0"),
("446","165","_wc_review_count","0"),
("447","165","_product_version","3.6.1"),
("448","165","_edit_lock","1556004710:1"),
("453","159","_thumbnail_id","160"),
("480","189","_wp_attached_file","2019/04/tai-bao-gia-du-an.png"),
("481","189","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:64;s:4:\"file\";s:29:\"2019/04/tai-bao-gia-du-an.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-100x64.png\";s:5:\"width\";i:100;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"tai-bao-gia-du-an-100x64.png\";s:5:\"width\";i:100;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("484","192","_wp_attached_file","2019/04/thong-tin-uu-dai.png"),
("485","192","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:64;s:4:\"file\";s:28:\"2019/04/thong-tin-uu-dai.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"thong-tin-uu-dai-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"thong-tin-uu-dai-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"thong-tin-uu-dai-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"thong-tin-uu-dai-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"thong-tin-uu-dai-100x64.png\";s:5:\"width\";i:100;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"thong-tin-uu-dai-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"thong-tin-uu-dai-100x64.png\";s:5:\"width\";i:100;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("490","198","_wp_attached_file","2019/04/tu-van-247.png"),
("491","198","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:121;s:4:\"file\";s:22:\"2019/04/tu-van-247.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"tu-van-247-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tu-van-247-150x121.png\";s:5:\"width\";i:150;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tu-van-247-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"tu-van-247-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"tu-van-247-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"tu-van-247-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"tu-van-247-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("492","200","_wp_attached_file","2019/04/nut-tu-van.png"),
("493","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:76;s:4:\"file\";s:22:\"2019/04/nut-tu-van.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"nut-tu-van-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"nut-tu-van-150x76.png\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"nut-tu-van-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"nut-tu-van-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"nut-tu-van-100x76.png\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"nut-tu-van-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"nut-tu-van-100x76.png\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("523","220","_wp_attached_file","2019/04/chuyen-vien.png"),
("524","220","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:175;s:4:\"file\";s:23:\"2019/04/chuyen-vien.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"chuyen-vien-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"chuyen-vien-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"chuyen-vien-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("533","237","_edit_lock","1556008100:1"),
("534","238","_wp_attached_file","2019/04/post1.jpg"),
("535","238","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:68;s:4:\"file\";s:17:\"2019/04/post1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"post1-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"post1-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("538","237","_thumbnail_id","238"),
("539","240","_edit_last","1"),
("540","240","_edit_lock","1556008116:1"),
("541","241","_wp_attached_file","2019/04/post-02.jpg"),
("542","241","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:68;s:4:\"file\";s:19:\"2019/04/post-02.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"post-02-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"post-02-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("543","240","_thumbnail_id","241"),
("546","243","_edit_last","1"),
("547","243","_edit_lock","1556008129:1"),
("548","244","_wp_attached_file","2019/04/post-3.jpg"),
("549","244","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:68;s:4:\"file\";s:18:\"2019/04/post-3.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-3-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-3-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("550","243","_thumbnail_id","244");
INSERT INTO bz_postmeta VALUES
("553","246","_edit_last","1"),
("554","246","_edit_lock","1556007927:1"),
("555","247","_wp_attached_file","2019/04/post-4.jpg"),
("556","247","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:68;s:4:\"file\";s:18:\"2019/04/post-4.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-4-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-4-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("557","246","_thumbnail_id","247"),
("575","237","_edit_last","1"),
("598","264","_edit_last","1"),
("599","264","_edit_lock","1556008333:1"),
("600","265","_wp_attached_file","2019/04/post-5.jpg"),
("601","265","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:68;s:4:\"file\";s:18:\"2019/04/post-5.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-5-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post-5-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("602","264","_thumbnail_id","265"),
("611","273","_wp_attached_file","2019/04/gioi-thieu-cong-ty.jpg"),
("612","273","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:262;s:4:\"file\";s:30:\"2019/04/gioi-thieu-cong-ty.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"gioi-thieu-cong-ty-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("613","286","_wp_attached_file","2019/04/logo-vbi-2.png"),
("614","286","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:63;s:4:\"file\";s:22:\"2019/04/logo-vbi-2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-vbi-2-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-vbi-2-100x63.png\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-vbi-2-100x63.png\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("615","288","_wp_attached_file","2019/04/partner_3-1.png"),
("616","288","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:70;s:4:\"file\";s:23:\"2019/04/partner_3-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"partner_3-1-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"partner_3-1-100x70.png\";s:5:\"width\";i:100;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"partner_3-1-100x70.png\";s:5:\"width\";i:100;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("617","292","_edit_last","1"),
("618","292","_edit_lock","1556009797:1"),
("619","292","_thumbnail_id",""),
("746","372","_wp_attached_file","2019/04/bg34-1.jpg"),
("747","372","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:321;s:4:\"file\";s:18:\"2019/04/bg34-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bg34-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bg34-1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bg34-1-768x128.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bg34-1-1024x171.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"bg34-1-450x75.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"bg34-1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"bg34-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"bg34-1-450x75.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"bg34-1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"bg34-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("748","372","_edit_lock","1556011890:1"),
("755","43","_yoast_wpseo_content_score","90"),
("756","43","_yoast_wpseo_focuskeywords",""),
("757","43","_yoast_wpseo_keywordsynonyms",""),
("758","378","_menu_item_type","taxonomy"),
("759","378","_menu_item_menu_item_parent","0"),
("760","378","_menu_item_object_id","23"),
("761","378","_menu_item_object","category"),
("762","378","_menu_item_target",""),
("763","378","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("764","378","_menu_item_xfn",""),
("765","378","_menu_item_url",""),
("767","379","_menu_item_type","taxonomy"),
("768","379","_menu_item_menu_item_parent","0"),
("769","379","_menu_item_object_id","1"),
("770","379","_menu_item_object","category"),
("771","379","_menu_item_target",""),
("772","379","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("773","379","_menu_item_xfn",""),
("774","379","_menu_item_url",""),
("776","380","_edit_last","1"),
("777","380","_wp_page_template","default"),
("778","380","_edit_lock","1556012700:1"),
("792","390","_menu_item_type","post_type"),
("793","390","_menu_item_menu_item_parent","0"),
("794","390","_menu_item_object_id","380"),
("795","390","_menu_item_object","page"),
("796","390","_menu_item_target",""),
("797","390","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("798","390","_menu_item_xfn",""),
("799","390","_menu_item_url",""),
("845","41","_yoast_wpseo_content_score","60"),
("846","41","_yoast_wpseo_focuskeywords",""),
("847","41","_yoast_wpseo_keywordsynonyms",""),
("875","427","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1558014622;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}"),
("876","428","_action_manager_schedule","O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1558014622;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}");




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
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2019-04-22 09:48:32","2019-04-22 09:48:32","<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"https://bizhostvn.com/w/bds8/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2019-04-22 09:48:32","2019-04-22 09:48:32","","0","https://bizhostvn.com/w/bds8/?page_id=2","0","page","","0"),
("3","1","2019-04-22 09:48:32","2019-04-22 09:48:32","<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: https://bizhostvn.com/w/bds8.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-04-22 09:48:32","2019-04-22 09:48:32","","0","https://bizhostvn.com/w/bds8/?page_id=3","0","page","","0"),
("5","1","2019-04-22 09:52:15","2019-04-22 09:52:15","[ux_slider bullet_style=\"simple\"]\n\n[ux_image id=\"136\" image_size=\"original\"]\n\n[ux_image id=\"138\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Category Section\" class=\"category-section\"]\n\n[row style=\"small\"]\n\n[col span=\"9\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Dự án Bất động sản đang phân phối\" tag_name=\"h2\" color=\"rgb(17, 127, 11)\" size=\"95\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"3\" products=\"6\" image_height=\"115%\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"189\" image_size=\"original\" link=\"#tai-bao-gia\" class=\"nut-bam\"]\n\n[ux_image id=\"192\" image_size=\"original\" link=\"/thong-tin-uu-dai/\" class=\"nut-bam\"]\n\n[ux_image id=\"200\" image_size=\"original\" link=\"tel:0972939830\" class=\"nut-bam\"]\n\n[title text=\"Có thể bạn quan tâm\" color=\"rgb(4, 150, 45)\"]\n\n[ux_products_list]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Chuyên viên tư vấn\" bg_color=\"rgb(247, 247, 247)\" class=\"tu-van-vien\"]\n\n[row label=\"about-text\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"220\" img_width=\"119\" pos=\"left\"]\n\n[gap height=\"15px\"]\n\n<h3>Trần Thanh Phượng</h3>\n<p><strong>Trưởng phòng KD</strong><br />Hotline: <strong><span style=\"color: #ed1c24;\">0924.046.746</span></strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n<p class=\"lead\" style=\"color: black; font-size: 16px; text-align: left;\"><span style=\"color: #008000;\"><strong>CHUYÊN VIÊN TƯ VẤN LÂU NĂM KINH NGHIỆM</strong></span></p>\n<p class=\"lead\" style=\"color: black; font-size: 16px; text-align: left;\"><span style=\"font-size: 95%;\">Chuyên viên tư vấn của Hưng Lộc Phát đều là những người dày dạn kinh nghiệm, có am hiểu sâu sắc trong lĩnh vực bất động sản và luôn tận tâm, nhiệt tình tư vấn giúp mang lại lợi ích và sự thỏa mãn tối đa cho mọi khách hàng.</span></p>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức - sự kiện\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<h2><strong><span style=\"color: #000000;\">Tin tức - sự kiện</span></strong></h2>\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"5\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_width=\"25\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<h2><strong><span style=\"color: #000000;\">Hoạt động công ty</span></strong></h2>\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"5\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_width=\"25\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"gioi-thieu-cong-ty\"]\n\n[featured_box img=\"273\" img_width=\"335\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%; color: #008000;\"><em>\"Hưng Lộc Phát vào TOP 10 thương hiệu mạnh uy tín của Việt Nam\"</em></span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%; color: #ff0000;\"> Liên hoan các Doanh nghiệp Rồng Vàng &amp; Thương hiệu mạnh Việt Nam 2017-2018 vừa diễn ra tại Hà Nội hôm cuối tuần. Tập đoàn Hưng Lộc Phát lần đầu tiên vào Top 10.</span></p>\n<p style=\"text-align: center;\"><span style=\"color: #000000;\"><strong>Hotline: 0972939830</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Slider\" padding=\"0px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_slider freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"21\" height=\"80px\"]\n\n[logo img=\"22\" height=\"80px\"]\n\n[logo img=\"24\" height=\"80px\"]\n\n[logo img=\"30\" height=\"80px\"]\n\n[logo img=\"132\" height=\"80px\"]\n\n[logo img=\"286\" height=\"69px\"]\n\n[logo img=\"288\" height=\"78px\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2019-04-23 09:03:45","2019-04-23 09:03:45","","0","https://bizhostvn.com/w/bds8/?page_id=5","0","page","","0"),
("7","1","2019-04-22 09:54:24","2019-04-22 09:54:24","","11aba4380f8f876fd93696_200x300","","inherit","open","closed","","11aba4380f8f876fd93696_200x300","","","2019-04-22 09:54:24","2019-04-22 09:54:24","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/11aba4380f8f876fd93696_200x300-1.jpg","0","attachment","image/jpeg","0"),
("8","1","2019-04-22 09:54:24","2019-04-22 09:54:24","","16_4_201845_w500_3241_1523861997_1_1","","inherit","open","closed","","16_4_201845_w500_3241_1523861997_1_1","","","2019-04-22 09:54:24","2019-04-22 09:54:24","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/16_4_201845_w500_3241_1523861997_1_1-1.png","0","attachment","image/png","0"),
("9","1","2019-04-22 09:54:25","2019-04-22 09:54:25","","39966454_2184294695115246_2147747973172297728_n","","inherit","open","closed","","39966454_2184294695115246_2147747973172297728_n","","","2019-04-22 09:54:25","2019-04-22 09:54:25","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/39966454_2184294695115246_2147747973172297728_n-1.png","0","attachment","image/png","0"),
("10","1","2019-04-22 09:54:27","2019-04-22 09:54:27","","1551337455_300x113","","inherit","open","closed","","1551337455_300x113","","","2019-04-22 09:54:27","2019-04-22 09:54:27","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/1551337455_300x113-1.png","0","attachment","image/png","0"),
("11","1","2019-04-22 09:54:29","2019-04-22 09:54:29","","aaa","","inherit","open","closed","","aaa","","","2019-04-22 09:54:29","2019-04-22 09:54:29","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/aaa-1.png","0","attachment","image/png","0"),
("12","1","2019-04-22 09:54:30","2019-04-22 09:54:30","","Ảnh của Hưng Lộc Phát.","","inherit","open","closed","","anh-cua-hung-loc-phat","","","2019-04-22 09:54:30","2019-04-22 09:54:30","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Ảnh-của-Hưng-Lộc-Phát.-1.jpg","0","attachment","image/jpeg","0"),
("13","1","2019-04-22 09:54:31","2019-04-22 09:54:31","","be_tong_hung_loc_phat_300x220","","inherit","open","closed","","be_tong_hung_loc_phat_300x220","","","2019-04-22 09:54:31","2019-04-22 09:54:31","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/be_tong_hung_loc_phat_300x220-1.png","0","attachment","image/png","0"),
("14","1","2019-04-22 09:54:32","2019-04-22 09:54:32","","can_ho_golden_star_phoi_canh_300x197","","inherit","open","closed","","can_ho_golden_star_phoi_canh_300x197","","","2019-04-22 09:54:32","2019-04-22 09:54:32","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/can_ho_golden_star_phoi_canh_300x197-1.jpg","0","attachment","image/jpeg","0"),
("15","1","2019-04-22 09:54:33","2019-04-22 09:54:33","","can_ho_golden_star_phoi_canh_300x300","","inherit","open","closed","","can_ho_golden_star_phoi_canh_300x300","","","2019-04-22 09:54:33","2019-04-22 09:54:33","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/can_ho_golden_star_phoi_canh_300x300-1.jpg","0","attachment","image/jpeg","0"),
("16","1","2019-04-22 09:54:34","2019-04-22 09:54:34","","can_ho_hung_phat_silver_star_phoi_canh_2_300x300","","inherit","open","closed","","can_ho_hung_phat_silver_star_phoi_canh_2_300x300","","","2019-04-22 09:54:34","2019-04-22 09:54:34","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/can_ho_hung_phat_silver_star_phoi_canh_2_300x300-1.jpg","0","attachment","image/jpeg","0"),
("17","1","2019-04-22 09:54:35","2019-04-22 09:54:35","","Dự án căn hộ Blue Star Quận 7","","inherit","open","closed","","du-an-can-ho-blue-star-quan-7","","","2019-04-22 09:54:35","2019-04-22 09:54:35","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Dự-án-căn-hộ-Blue-Star-Quận-7-1.png","0","attachment","image/png","0"),
("18","1","2019-04-22 09:54:37","2019-04-22 09:54:37","","Dự án Summer Land Resort Phan Thiết Mũi Né","","inherit","open","closed","","du-an-summer-land-resort-phan-thiet-mui-ne","","","2019-04-22 09:54:37","2019-04-22 09:54:37","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Dự-án-Summer-Land-Resort-Phan-Thiết-Mũi-Né-1.jpg","0","attachment","image/jpeg","0"),
("19","1","2019-04-22 09:54:39","2019-04-22 09:54:39","","hanoi-homeland-3","","inherit","open","closed","","hanoi-homeland-3","","","2019-04-22 09:54:39","2019-04-22 09:54:39","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/hanoi-homeland-3-1.jpg","0","attachment","image/jpeg","0"),
("20","1","2019-04-22 09:54:41","2019-04-22 09:54:41","","Hưng Lộc Phát","","inherit","open","closed","","hung-loc-phat","","","2019-04-22 09:54:41","2019-04-22 09:54:41","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Hưng-Lộc-Phát-1.png","0","attachment","image/png","0"),
("21","1","2019-04-22 09:54:42","2019-04-22 09:54:42","","logo_moi_vinhomes_metropolis_1","","inherit","open","closed","","logo_moi_vinhomes_metropolis_1","","","2019-04-22 09:54:42","2019-04-22 09:54:42","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/logo_moi_vinhomes_metropolis_1-1.png","0","attachment","image/png","0"),
("22","1","2019-04-22 09:54:43","2019-04-22 09:54:43","","logo_Vincity_Ocean_Park_02","","inherit","open","closed","","logo_vincity_ocean_park_02","","","2019-04-22 09:54:43","2019-04-22 09:54:43","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/logo_Vincity_Ocean_Park_02-1.png","0","attachment","image/png","0"),
("23","1","2019-04-22 09:54:44","2019-04-22 09:54:44","","Logo_Vinhomes_Gadenia","","inherit","open","closed","","logo_vinhomes_gadenia","","","2019-04-22 09:54:44","2019-04-22 09:54:44","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Logo_Vinhomes_Gadenia-1.png","0","attachment","image/png","0"),
("24","1","2019-04-22 09:54:44","2019-04-22 09:54:44","","Logo_Vinhomes_Gadenia_1","","inherit","open","closed","","logo_vinhomes_gadenia_1","","","2019-04-22 09:54:44","2019-04-22 09:54:44","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Logo_Vinhomes_Gadenia_1-1.png","0","attachment","image/png","0"),
("25","1","2019-04-22 09:54:45","2019-04-22 09:54:45","","Phối cảnh dự án Blue Star Quận 7","","inherit","open","closed","","phoi-canh-du-an-blue-star-quan-7","","","2019-04-22 09:54:45","2019-04-22 09:54:45","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Phối-cảnh-dự-án-Blue-Star-Quận-7-2.jpg","0","attachment","image/jpeg","0"),
("26","1","2019-04-22 09:54:46","2019-04-22 09:54:46","","phoi_canh_du_an_ben_xe_mien_tay_moi_300x195","","inherit","open","closed","","phoi_canh_du_an_ben_xe_mien_tay_moi_300x195","","","2019-04-22 09:54:46","2019-04-22 09:54:46","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/phoi_canh_du_an_ben_xe_mien_tay_moi_300x195-1.jpg","0","attachment","image/jpeg","0"),
("27","1","2019-04-22 09:54:46","2019-04-22 09:54:46","","phoi_canh_du_an_biet_thu_green_star_300x300","","inherit","open","closed","","phoi_canh_du_an_biet_thu_green_star_300x300","","","2019-04-22 09:54:46","2019-04-22 09:54:46","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/phoi_canh_du_an_biet_thu_green_star_300x300-1.jpg","0","attachment","image/jpeg","0"),
("28","1","2019-04-22 09:54:47","2019-04-22 09:54:47","","picture1","","inherit","open","closed","","picture1","","","2019-04-22 09:54:47","2019-04-22 09:54:47","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/picture1-1.jpg","0","attachment","image/jpeg","0"),
("29","1","2019-04-22 09:54:48","2019-04-22 09:54:48","","quick_call_button_zalo","","inherit","open","closed","","quick_call_button_zalo","","","2019-04-22 09:54:48","2019-04-22 09:54:48","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/quick_call_button_zalo-1.png","0","attachment","image/png","0"),
("30","1","2019-04-22 09:54:49","2019-04-22 09:54:49","","tl","","inherit","open","closed","","tl","","","2019-04-22 09:54:49","2019-04-22 09:54:49","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/tl-1.png","0","attachment","image/png","0"),
("31","1","2019-04-22 09:54:50","2019-04-22 09:54:50","","Vinhomes_Royal_City","","inherit","open","closed","","vinhomes_royal_city","","","2019-04-22 09:54:50","2019-04-22 09:54:50","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/Vinhomes_Royal_City-1.png","0","attachment","image/png","0"),
("34","1","2019-04-22 09:58:49","2019-04-22 09:58:49","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-Hưng-Lộc-Phát-1.png","cropped-Hưng-Lộc-Phát-1.png","","inherit","open","closed","","cropped-hung-loc-phat-1-png","","","2019-04-22 09:58:49","2019-04-22 09:58:49","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-Hưng-Lộc-Phát-1.png","0","attachment","image/png","0"),
("35","1","2019-04-22 10:00:41","2019-04-22 10:00:41","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Giuseart.com</a>,
("39","1","2019-04-22 10:01:06","2019-04-22 10:01:06","","Tin tức sự kiện","","publish","closed","closed","","tin-tuc-su-kien","","","2019-04-22 10:01:06","2019-04-22 10:01:06","","0","https://bizhostvn.com/w/bds8/?page_id=39","0","page","","0"),
("41","1","2019-04-22 10:01:17","2019-04-22 10:01:17","Xin chào bạn – độc giả của <a href=\"https://webdemo.com/\">Giuseart.com</a>,
("43","1","2019-04-22 10:01:29","2019-04-22 10:01:29","<header class=\"entry-header text-center\">
("45","1","2019-04-22 10:02:12","2019-04-22 10:02:12"," ","","","publish","closed","closed","","45","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=45","7","nav_menu_item","","0"),
("46","1","2019-04-22 10:02:12","2019-04-22 10:02:12"," ","","","publish","closed","closed","","46","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=46","6","nav_menu_item","","0"),
("49","1","2019-04-22 10:02:12","2019-04-22 10:02:12"," ","","","publish","closed","closed","","49","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=49","2","nav_menu_item","","0"),
("50","1","2019-04-22 10:02:12","2019-04-22 10:02:12"," ","","","publish","closed","closed","","50","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=50","1","nav_menu_item","","0"),
("51","1","2019-04-22 10:03:03","2019-04-22 10:03:03","[text* text-767 placeholder \"Họ và tên...\"]
("52","1","2019-04-22 10:03:25","2019-04-22 10:03:25","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-04-22 10:03:25","2019-04-22 10:03:25","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/woocommerce-placeholder.png","0","attachment","image/png","0"),
("53","0","2019-04-22 10:03:30","2019-04-22 10:03:30","[]","woocommerce_update_marketplace_suggestions","","publish","open","closed","","woocommerce_update_marketplace_suggestions","","","2019-04-22 10:03:32","2019-04-22 10:03:32","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&#038;p=53","0","scheduled-action","","3"),
("54","0","2019-04-22 10:03:30","2019-04-22 10:03:30","[]","woocommerce_update_marketplace_suggestions","","publish","open","closed","","woocommerce_update_marketplace_suggestions-2","","","2019-04-22 10:03:32","2019-04-22 10:03:32","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&#038;p=54","0","scheduled-action","","3"),
("55","0","2019-04-29 10:03:32","2019-04-29 10:03:32","[]","woocommerce_update_marketplace_suggestions","","publish","open","closed","","scheduled-action-5cd4301eaa9658.52011427-DxbJrzyj9XbiYiyJjDYxdpXax4BkHAOJ","","","2019-05-09 13:50:22","2019-05-09 13:50:22","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&#038;p=55","0","scheduled-action","","3"),
("56","0","2019-04-29 10:03:32","2019-04-29 10:03:32","[]","woocommerce_update_marketplace_suggestions","","publish","open","closed","","scheduled-action-5cd4301eeacdf7.43030484-HaLemY7newKqtTQYNAA8qkitHsgiaeMa","","","2019-05-09 13:50:22","2019-05-09 13:50:22","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&#038;p=56","0","scheduled-action","","3"),
("109","1","2019-04-23 04:41:11","2019-04-23 04:41:11","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-LOGO-giuseart.jpg","cropped-LOGO-giuseart.jpg","","inherit","open","closed","","cropped-logo-giuseart-jpg","","","2019-04-23 04:41:11","2019-04-23 04:41:11","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-LOGO-giuseart.jpg","0","attachment","image/jpeg","0"),
("112","1","2019-04-23 04:42:41","2019-04-23 04:42:41","","slider1","","inherit","open","closed","","slider1","","","2019-04-23 04:42:41","2019-04-23 04:42:41","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/slider1.jpg","0","attachment","image/jpeg","0"),
("119","1","2019-04-23 04:45:17","2019-04-23 04:45:17"," ","","","publish","closed","closed","","119","","","2019-04-23 04:45:17","2019-04-23 04:45:17","","0","https://bizhostvn.com/w/bds8/?p=119","1","nav_menu_item","","0"),
("120","1","2019-04-23 04:45:17","2019-04-23 04:45:17","","Đăng nhập","","publish","closed","closed","","dang-nhap","","","2019-04-23 04:45:17","2019-04-23 04:45:17","","0","https://bizhostvn.com/w/bds8/?p=120","2","nav_menu_item","","0"),
("132","1","2019-04-23 04:53:23","2019-04-23 04:53:23","","logo","","inherit","open","closed","","logo","","","2019-04-23 04:53:23","2019-04-23 04:53:23","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/logo.jpg","0","attachment","image/jpeg","0"),
("134","1","2019-04-23 04:53:41","2019-04-23 04:53:41","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-logo.jpg","cropped-logo.jpg","","inherit","open","closed","","cropped-logo-jpg","","","2019-04-23 04:53:41","2019-04-23 04:53:41","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/cropped-logo.jpg","0","attachment","image/jpeg","0"),
("136","1","2019-04-23 04:56:06","2019-04-23 04:56:06","","slider-01","","inherit","open","closed","","slider-01","","","2019-04-23 04:56:06","2019-04-23 04:56:06","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/slider-01.jpg","0","attachment","image/jpeg","0"),
("138","1","2019-04-23 04:56:56","2019-04-23 04:56:56","","slider-02","","inherit","open","closed","","slider-02","","","2019-04-23 04:56:56","2019-04-23 04:56:56","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/slider-02.jpg","0","attachment","image/jpeg","0"),
("155","1","2019-04-23 07:28:58","2019-04-23 07:28:58","Với những thuận lợi về mặt nghỉ dưỡng chỉ riêng Phan Thiết – Bình Thuận mới có như có số giờ nắng mỗi năm từ 2500 đến trên 3000 giờ, mỗi năm không có thiên tai, khí hậu ôn hòa thuận tiện phát triển du lịch quanh năm. Nhiều điểm du lịch hấp dẫn như Hòn Rơm, Đồi Cát Hồng, Hòn Ghềnh, Suối Tiên,… thì hiện tại Mũi Né Phan Thiết là một địa điểm du lịch không thể bỏ qua. Cùng với đó thị trường bất động sản Mũi Né – Phan Thiết năm 2019 được dự đoán sẽ phát triển mạnh với hàng loạt siêu dự án. Phần lớn các dự án này thuộc về những đại gia địa ốc lần đầu tiên đặt chân đến Phan Thiết như Novaland, Hưng Lộc Phát, Lộc Tú, Nông thị Dubai Việt Nam, FLC, TMS, Capital Verte…
("156","1","2019-04-23 07:28:51","2019-04-23 07:28:51","","du-an-1","","inherit","open","closed","","du-an-1","","","2019-04-23 07:28:51","2019-04-23 07:28:51","","155","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-1.jpg","0","attachment","image/jpeg","0"),
("157","1","2019-04-23 07:29:48","2019-04-23 07:29:48","Sở hữu không gian xanh rộng lớn, vị trí đắc địa hàng đầu khu vực, thiết kế sang trọng, đầy đủ tiện ích nội ngoại khu hiện đại, dự án căn hộ Silver Star là khu đô thị trọng điểm của thành phố và được phát triển bởi nhà đầu tư nhiều kinh nghiệm và uy tín là những yếu tố tạo nên giá trị vàng và giá trị gia tăng lớn sau này tại khu Nam của Thành Phố.
("158","1","2019-04-23 07:29:45","2019-04-23 07:29:45","","du-an-2","","inherit","open","closed","","du-an-2","","","2019-04-23 07:29:45","2019-04-23 07:29:45","","157","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-2.jpg","0","attachment","image/jpeg","0"),
("159","1","2019-04-23 07:30:52","2019-04-23 07:30:52","<em><strong>Dự án Blue Star</strong></em> là dự án căn hộ cao cấp mới nhất của chủ đầu tư Hưng Lộc Phát vị trí ngay điểm giao Nguyễn Thị Thập và Nguyễn Văn Linh Quận 7 sẽ được triển khai vào đầu năm 2019.<strong>Căn Hộ Blue Star<em> </em></strong>là khu phức hợp thương mại nhà ở, gồm có chung cư cao cấp, trung tâm thương mai và các dịch vụ tiện ích, giải trí cao cấp, mặt tiền Nguyễn Thị Thập ngay liền kề giao lộ Nguyễn Văn Linh và Nguyễn Thị Thập.
("160","1","2019-04-23 07:30:48","2019-04-23 07:30:48","","du-an-3","","inherit","open","closed","","du-an-3","","","2019-04-23 07:30:48","2019-04-23 07:30:48","","159","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-3.jpg","0","attachment","image/jpeg","0"),
("161","1","2019-04-23 07:32:17","2019-04-23 07:32:17","Là dự án căn hộ về Healthy and Detox đầu tiên tại quận 7. Dự án Green Star Sky Garden của Hưng Lộc Phát với tiêu chuẩn xanh gồm biệt thự, nhà phố &amp; căn hộ cao cấp thứ 4 của chủ đầu tư này đã &amp; đang thu hút khá nhiều khách hàng mua đầu tư hay ở thực.
("162","1","2019-04-23 07:32:12","2019-04-23 07:32:12","","du-an-34","","inherit","open","closed","","du-an-34","","","2019-04-23 07:32:12","2019-04-23 07:32:12","","161","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-34.jpg","0","attachment","image/jpeg","0"),
("163","1","2019-04-23 07:33:15","2019-04-23 07:33:15","<strong>Dự Án Golden Star</strong> là một dự án căn hộ phức hợp cao cấp toạ lạc tại trung tâm Quận 7, nơi hiện hữu đầy đủ các tiện ích hàng đầu khu Nam Sài Gòn. Đối với thị trường Bất động sản đang bùng nổ như hiện nay, việc sở hữu căn hộ ngay khu trung tâm với đầy đủ tiện nghi nhưng mức giá cạnh tranh là việc vô cùng khó khăn. Căn hộ Golden Star<strong> </strong>là dự án dòng cao cấp quận 7 của Chủ đầu tư Hưng Lộc Phát. Dự án Golden Star được khởi công từ 2015 và đã bàn giao cho khách hàng từ tháng 6/ 2018.
("164","1","2019-04-23 07:33:11","2019-04-23 07:33:11","","du-an-5","","inherit","open","closed","","du-an-5","","","2019-04-23 07:33:11","2019-04-23 07:33:11","","163","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-5.jpg","0","attachment","image/jpeg","0"),
("165","1","2019-04-23 07:34:12","2019-04-23 07:34:12","<h2><em><strong>/ THÔNG TIN CHUNG PHÚ MỸ GOLD CITY</strong></em></h2>
("166","1","2019-04-23 07:34:08","2019-04-23 07:34:08","","du-an-6","","inherit","open","closed","","du-an-6","","","2019-04-23 07:34:08","2019-04-23 07:34:08","","165","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/du-an-6.jpg","0","attachment","image/jpeg","0"),
("189","1","2019-04-23 07:50:52","2019-04-23 07:50:52","","tai-bao-gia-du-an","","inherit","open","closed","","tai-bao-gia-du-an","","","2019-04-23 07:50:52","2019-04-23 07:50:52","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/tai-bao-gia-du-an.png","0","attachment","image/png","0"),
("192","1","2019-04-23 07:53:52","2019-04-23 07:53:52","","thong-tin-uu-dai","","inherit","open","closed","","thong-tin-uu-dai","","","2019-04-23 07:53:52","2019-04-23 07:53:52","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/thong-tin-uu-dai.png","0","attachment","image/png","0"),
("198","1","2019-04-23 08:00:16","2019-04-23 08:00:16","","tu-van-247","","inherit","open","closed","","tu-van-247","","","2019-04-23 08:00:16","2019-04-23 08:00:16","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/tu-van-247.png","0","attachment","image/png","0"),
("200","1","2019-04-23 08:02:40","2019-04-23 08:02:40","","nut-tu-van","","inherit","open","closed","","nut-tu-van","","","2019-04-23 08:02:40","2019-04-23 08:02:40","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/nut-tu-van.png","0","attachment","image/png","0"),
("220","1","2019-04-23 08:14:58","2019-04-23 08:14:58","","chuyen-vien","","inherit","open","closed","","chuyen-vien","","","2019-04-23 08:14:58","2019-04-23 08:14:58","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/chuyen-vien.png","0","attachment","image/png","0"),
("237","1","2019-04-23 08:24:58","2019-04-23 08:24:58","<!-- wp:paragraph -->\n<p> Với tiềm năng phát triển về thị trường bất động sản tại khu vực Phan Thiết – Mũi Né. Đặc biệt với việc triển khai thi công cơ sở hạ tầng quan trọng trong khu vực như hoàn thành tuyến cao tốc Long Thành – Dầu Giây – Phan Thiết và sân bay Phan Thiết đảm bảo mở ra cơ hội và tiềm năng cho khu vực này nói chung cũng như cho dự án Summer Land Mũi Né nói riêng. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Đón đầu cho các dự án cơ sở hạ tầng về giao thông sắp tới tại Phan Thiết dự án Summer Land Mũi Né của Chủ đầu tư Hưng Lộc Phát đã xúc tiến phát triển quỹ đất tại trung tâm khu vực Mũi Né – Phan Thiết </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>1.Vị trí kim cương:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nằm ngay mặt tiền đường Võ Nguyên Giáp , &nbsp;giáp với đường Nguyễn Thông cách khu vực phố tây Nguyễn ĐÌnh Chiểu chỉ 2 phút di chuyển dự án Summer Land Mũi Né sở hữu một vị trí đăc địa, cách Sân bay Phan Thiết chỉ 12 phút di chuyển.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự án summer land Mũi Né có vị trí thuận lợi vì vị trí kết nối trung tâm thành phố Phan Thiết và Thủ phủ resort Mũi Né. Chỉ cách khoảng 10 phút để di chuyển đến trung tâm thành phố Phan Thiết hay cũng chỉ 8 phút để di chuyển đến thủ phủ resort Mũi Né. Đặc biệt về vị trí của Summer Land Mũi Né chính là địa thế lưng đồi mặt biển. Với vị thế trên cao 100% các căn biệt thự, nhà phố tại đây đều có view Biển sẽ mang lại cho gia chủ cảm giác thư thái, nhẹ nhàng khi sống tại đây.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://hunglocphatland.com.vn/wp-content/uploads/2019/03/hunglocphatphanthiet-1547808221-22.jpg\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>2. Quy hoạch dự án summer land Mũi Né</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Đất ở có tổng diện tích 150.377,3 m2 gồm: Biệt thự đơn lập 18.680,4 m2 , Biệt thự song lập 9.202,2 m2, Nhà phố 37.334 m2, Nhà phố kết hợp thương mại 20.578,4 m2, Căn hộ cao tầng 17.273,8 m2, Đất ở kết hợp dịch vụ du lịch 16.921,6 m2, nhà ở xã hội&nbsp;30.386,9 m2;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đất công trình công cộng có tổng diện tích 6.596,7 m2 gồm: Trường mầm non 6.102,1 m2, Hội trường khu phố 494,6 m2;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đất công viên cây xanh quảng trường có tổng diện tích 42.136,2 m2;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đất giao thông có tổng diện tích 116.234,3 m2.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự án Summer Land Mũi Né được phân kỳ làm 3 giai đoạn:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Giai đoạn 1 (tháng 1/2019 – tháng 1/2020): Đầu tư xây dựng hệ thống giao thông và hạ tầng kỹ thuật kèm theo; khu quảng trường trung tâm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Giai đoạn 2 (tháng 2/2020 – tháng 2/2022): Xây dựng khu nhà biệt thự đơn lập, khu nhà biệt thự song lập, khu nhà phố, khu nhà phố kết hợp thương mại, khu ở kết hợp dịch vụ du lịch.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Giai đoạn 3 (tháng 3/2022 – tháng 2/2024): Xây dựng và hoàn thiện các hạng mục còn lại.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khu đô thị dự án Summer Land Mũi Né vị trí phía Đông giáp đất ở kết hợp thương mại dịch vụ theo quy hoạch, phía Tây giáp đất dự án Khu thương mại dịch vụ và dân cư Tân Việt Phát 2, phía Nam giáp đường ĐT.706B, phía Bắc giáp đất cây xanh cách ly theo quy hoạch.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>3.Tiện ích dự án Summer Land Mũi Né:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nhằm tạo ra một khu đô thị Resort đạt chuẩn tại Phan Thiết – Mũi né, Summer Land resort sẽ mang đến những khu tiện ích hàng đầu cho khách hàng khi đến nghỉ dưỡng, du lịch tại đây</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phần lớn diện tích được đưa vào làm công trình công cộng cây xanh, hồ bơi tương lai summer land Mũi Né sẽ trở thành khu đô thị sầm uất bậc nhất tại thủ phủ Resort hàng đầu Việt Nam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://hunglocphatland.com.vn/wp-content/uploads/2019/03/bai-tam-o-mui-ne.jpg\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>4.Nói về Chủ Đầu Tư Hưng Lộc Phát:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://hunglocphatland.com.vn/wp-content/uploads/2018/11/16-4-201845-w500-3241-1523861997-1-1.png\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Từ năm 2001 được thành lập và trở thành doanh nghiệp tiên phong trong lĩnh vực khai thác, mua bán vật liệu xây dựng đá ốp lát cao cấp đá Marble and Granite tại Việt Nam đến năm 2013 khẳng định vị thế độc tôn trên thị trường khi sở hữu riêng mỏ đá granite và nhà máy sản xuất đá Granite tại Khánh Hòa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dấu mốc bước chân vào BDS. Đầu năm 2010 với dự án đầu tay bàn giao đúng tiến độ và đã có sổ cho khách hang dự án Hưng Phát 1 hoàn thiện đúng tiến độ cam kết và chất lượng. Cùng với sự uy tín đó đến năm 2015 CDT Hưng Lộc Phát tiếp tục công bố thành công dự án Hưng Phát Silver Star (Ngay mặt tiền đường Nguyễn Hữu Thọ) và tiếp tục được khách hàng đón nhận nhờ sự uy tín của CDT Hưng Lộc Phát.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://hunglocphatland.com.vn/wp-content/uploads/2019/03/20170324145703-d504-2222.jpg\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Đến năm 2016 điểm thêm trên con đường an cư. CDT Hưng Lộc Phát tiếp tục triển khai thành công dự án The Golden Star. Đánh dấu sự hợp tác với các đơn vị uy tín hàng đầu trong lĩnh vực tư vấn thiết kế như tập đoàn Ong &amp; Ong (Singapore) và Artelia (Pháp). Năm 2017 là sự ra đời của dãy biệt thự phố Limited Villas phiên bản giới hạn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đến năm 2018 chính thức khẳng định thương hiệu trong lĩnh vực phát triển bất động sản cao cấp khi lọt vào top 10 Doanh Nghiệp Uy Tín Nhất Việt Nam và triển khai thêm căn hộ về Healthy and Detox đầu tiên tại quận 7 Green Star.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Năm 2019 CDT Hưng Lộc Phát chính thức triển khai thêm dự án căn hộ Blue Star ngay trung tâm Quận 7. Vị trí ngay tại giao lộ Nguyễn Văn Linh và Nguyễn Thị Thập, căn hộ Blue Star sẽ là căn hộ với thiết kế thông minh, môi trường sống xanh đẳng cấp vị trí vàng cuối cùng còn lại tại quận 7.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Và đầu năm 2019 Chủ Đầu Tư triển khai dự án Summer Land Mũi Né. Dự án khu đô thị nghỉ dưỡng hàng đầu tại thành phố Phan Thiết.</p>\n<!-- /wp:paragraph -->","Summer Land Mũi Né - Điểm đầu tư vàng cho năm 2019","","publish","open","open","","summer-land-mui-ne-diem-dau-tu-vang-cho-nam-2019","","","2019-04-23 08:28:20","2019-04-23 08:28:20","","0","https://bizhostvn.com/w/bds8/?p=237","0","post","","0"),
("238","1","2019-04-23 08:24:53","2019-04-23 08:24:53","","post1","","inherit","open","closed","","post1","","","2019-04-23 08:24:53","2019-04-23 08:24:53","","237","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/post1.jpg","0","attachment","image/jpeg","0"),
("240","1","2019-04-23 08:26:31","2019-04-23 08:26:31","<ol>
("241","1","2019-04-23 08:26:28","2019-04-23 08:26:28","","post-02","","inherit","open","closed","","post-02","","","2019-04-23 08:26:28","2019-04-23 08:26:28","","240","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/post-02.jpg","0","attachment","image/jpeg","0"),
("243","1","2019-04-23 08:27:13","2019-04-23 08:27:13","<em>Dự án căn hộ Blue Star </em>là dự án thứ 5 sau thành công của 4 dự án trước đó dự án Hưng Phát 1, Hưng Phát Silver Star , Golden Star và Green star.
("244","1","2019-04-23 08:27:09","2019-04-23 08:27:09","","post-3","","inherit","open","closed","","post-3","","","2019-04-23 08:27:09","2019-04-23 08:27:09","","243","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/post-3.jpg","0","attachment","image/jpeg","0"),
("246","1","2019-04-23 08:27:48","2019-04-23 08:27:48","(Giá bán căn hộ Golden Star quận 7 dưới đây đã bao gồm Vat, nhưng chưa có phí bảo trì)
("247","1","2019-04-23 08:27:45","2019-04-23 08:27:45","","post-4","","inherit","open","closed","","post-4","","","2019-04-23 08:27:45","2019-04-23 08:27:45","","246","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/post-4.jpg","0","attachment","image/jpeg","0"),
("264","1","2019-04-23 08:34:33","2019-04-23 08:34:33","<strong>Oyster Ganh Hao</strong> <strong>Luxury Unit Hotel</strong> là dự án căn hộ <strong>Condotel</strong> tại mặt tiền <strong>84 Đường Trần Phú, Phường 5, Tp. Vũng Tàu</strong>. Dự án do <strong>Tập đoàn Vietpearl Group</strong> làm chủ đầu tư. Dự án căn hộ khách sạn có tổng diện tích toàn khu lên tới <strong>2.571m2</strong>, với <strong>1 toà tháp</strong> cao <strong>18 tầng</strong> với <strong>295 căn hộ</strong> khách sạn nghỉ dưỡng <strong>Condotel</strong> <strong>Vũng Tàu</strong> view Biển. <strong>Oyster GanhHao</strong> với ới pháp lý minh bạch, cùng với chủ đầu tư uy tín, phối hợp với đơn vị quản lý vận hành chuyên nghiệp, thì đây là dự án mà giới đầu tư đánh giá cục tốt cho việc đầu tư dài hạn trong bất động sản biển nghỉ dưỡng.
("265","1","2019-04-23 08:34:30","2019-04-23 08:34:30","","post-5","","inherit","open","closed","","post-5","","","2019-04-23 08:34:30","2019-04-23 08:34:30","","264","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/post-5.jpg","0","attachment","image/jpeg","0"),
("273","1","2019-04-23 08:40:26","2019-04-23 08:40:26","","gioi-thieu-cong-ty","","inherit","open","closed","","gioi-thieu-cong-ty","","","2019-04-23 08:40:26","2019-04-23 08:40:26","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/gioi-thieu-cong-ty.jpg","0","attachment","image/jpeg","0"),
("286","1","2019-04-23 08:44:35","2019-04-23 08:44:35","","logo-vbi (2)","","inherit","open","closed","","logo-vbi-2","","","2019-04-23 08:44:35","2019-04-23 08:44:35","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/logo-vbi-2.png","0","attachment","image/png","0"),
("288","1","2019-04-23 08:45:07","2019-04-23 08:45:07","","partner_3 (1)","","inherit","open","closed","","partner_3-1","","","2019-04-23 08:45:07","2019-04-23 08:45:07","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/partner_3-1.png","0","attachment","image/png","0"),
("292","1","2019-04-23 08:46:49","2019-04-23 08:46:49","[section bg=\"160\" bg_overlay=\"rgba(33, 118, 25, 0.88)\" dark=\"true\" class=\"footer-section\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"132\" img_width=\"212\"]\n\n<h3>Hưng Lộc Phát Land</h3>\n<p><span style=\"font-size: 95%;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat....</span></p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<h3>Thông tin liên hệ</h3>\n<ul>\n<li><span style=\"font-size: 95%;\"><strong>VPGD 1: </strong>84 - 86 Đường số 1 Khu Trung Sơn, Bình Hưng, Bình Chánh, TP. HCM</span></li>\n<li><span style=\"font-size: 95%;\"><strong>VPGD 2: </strong>Tầng 15, Cao Ốc Hưng Phát, 928 Lê Văn Lương, Phước Kiển, Nhà Bè, TP. HCM</span></li>\n<li><span style=\"font-size: 95%;\"><strong>Hotline: </strong>0924.046.746</span></li>\n<li><span style=\"font-size: 95%;\"><strong>Website</strong>: www.hunglocphatland.com.vn</span></li>\n<li><span style=\"color: #00ccff; font-size: 95%;\"><a style=\"color: #00ccff;\" href=\"#\">Xem bản đồ đường đi</a></span></li>\n</ul>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<h3>Tải báo giá nhanh</h3>\n[contact-form-7 id=\"51\"]\n\n\n[/col]\n\n[/row]\n[lightbox id=\"tai-bao-gia\" width=\"600px\" padding=\"20px\"]\n<h3>Tải báo giá dự án</h3><p class=\"des\">Vui lòng hoàn thiện biểu mẫu sau để gửi yêu cầu tải báo giá cho chúng tôi</p>[contact-form-7 id=\"51\" title=\"Đăng ký nhận báo giá\"][/lightbox]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-04-23 09:08:35","2019-04-23 09:08:35","","0","https://bizhostvn.com/w/bds8/?post_type=blocks&#038;p=292","0","blocks","","0"),
("372","1","2019-04-23 09:33:32","2019-04-23 09:33:32","","bg34 (1)","","inherit","open","closed","","bg34-1","","","2019-04-23 09:33:32","2019-04-23 09:33:32","","0","https://bizhostvn.com/w/bds8/wp-content/uploads/2019/04/bg34-1.jpg","0","attachment","image/jpeg","0"),
("378","1","2019-04-23 09:46:02","2019-04-23 09:46:02"," ","","","publish","closed","closed","","378","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=378","4","nav_menu_item","","0"),
("379","1","2019-04-23 09:46:02","2019-04-23 09:46:02"," ","","","publish","closed","closed","","379","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=379","5","nav_menu_item","","0"),
("380","1","2019-04-23 09:46:45","2019-04-23 09:46:45","","Dự án","","publish","closed","closed","","du-an","","","2019-04-23 09:46:57","2019-04-23 09:46:57","","0","https://bizhostvn.com/w/bds8/mua/","0","page","","0"),
("381","1","2019-04-23 09:46:45","2019-04-23 09:46:45","<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2019-04-23 09:46:45","2019-04-23 09:46:45","","0","https://bizhostvn.com/w/bds8/gio-hang/","0","page","","0"),
("382","1","2019-04-23 09:46:45","2019-04-23 09:46:45","<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->","Thanh toán","","publish","closed","closed","","thanh-toan","","","2019-04-23 09:46:45","2019-04-23 09:46:45","","0","https://bizhostvn.com/w/bds8/thanh-toan/","0","page","","0"),
("383","1","2019-04-23 09:46:45","2019-04-23 09:46:45","<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->","Tài khoản","","publish","closed","closed","","tai-khoan","","","2019-04-23 09:46:45","2019-04-23 09:46:45","","0","https://bizhostvn.com/w/bds8/tai-khoan/","0","page","","0"),
("390","1","2019-04-23 09:49:06","2019-04-23 09:49:06"," ","","","publish","closed","closed","","390","","","2019-04-23 09:49:06","2019-04-23 09:49:06","","0","https://bizhostvn.com/w/bds8/?p=390","3","nav_menu_item","","0"),
("427","0","2019-05-16 13:50:22","2019-05-16 13:50:22","[]","woocommerce_update_marketplace_suggestions","","pending","open","closed","","","","","2019-05-16 13:50:22","2019-05-16 13:50:22","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&p=427","0","scheduled-action","","1"),
("428","0","2019-05-16 13:50:22","2019-05-16 13:50:22","[]","woocommerce_update_marketplace_suggestions","","pending","open","closed","","","","","2019-05-16 13:50:22","2019-05-16 13:50:22","","0","https://bizhostvn.com/w/bds8/?post_type=scheduled-action&p=428","0","scheduled-action","","1"),
("429","1","2019-05-09 23:06:07","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-09 23:06:07","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/bds8/?p=429","0","post","","0");




CREATE TABLE `bz_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `ID` (`ID`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("45","2","0"),
("46","2","0"),
("49","2","0"),
("50","2","0"),
("119","22","0"),
("120","22","0"),
("155","3","0"),
("155","16","0"),
("157","3","0"),
("157","16","0"),
("159","3","0"),
("159","16","0"),
("161","3","0"),
("161","16","0"),
("163","3","0"),
("163","16","0"),
("165","3","0"),
("165","16","0"),
("237","1","0"),
("240","23","0"),
("243","23","0"),
("246","23","0"),
("264","23","0"),
("378","2","0"),
("379","2","0"),
("390","2","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","nav_menu","","0","7"),
("3","3","product_type","","0","6"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_type","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","0"),
("16","16","product_cat","","0","6"),
("22","22","nav_menu","","0","2"),
("23","23","category","","0","4");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","16","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","16","display_type",""),
("3","16","thumbnail_id","0"),
("4","16","product_count_product_cat","6");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Hoạt động công ty","hoat-dong-cong-ty","0"),
("2","main-menu","main-menu","0"),
("3","simple","simple","0"),
("4","grouped","grouped","0"),
("5","variable","variable","0"),
("6","external","external","0"),
("7","exclude-from-search","exclude-from-search","0"),
("8","exclude-from-catalog","exclude-from-catalog","0"),
("9","featured","featured","0"),
("10","outofstock","outofstock","0"),
("11","rated-1","rated-1","0"),
("12","rated-2","rated-2","0"),
("13","rated-3","rated-3","0"),
("14","rated-4","rated-4","0"),
("15","rated-5","rated-5","0"),
("16","Dự án đang phân phối","du-an","0"),
("22","Topbar menu","topbar-menu","0"),
("23","Tin tức","tin-tuc","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","admin"),
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
("16","1","session_tokens","a:1:{s:64:\"62d2d49536b13e2d2e67a85f63078cc5ccb8a868d98668d18e52867e602a93a0\";a:4:{s:10:\"expiration\";i:1557889923;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557717123;}}"),
("17","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("18","1","bz_user-settings-time","1557409854"),
("19","1","bz_dashboard_quick_press_last_post_id","429"),
("20","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("21","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:27:\"add-post-type-featured_item\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:26:\"add-featured_item_category\";i:6;s:21:\"add-featured_item_tag\";}"),
("22","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("23","1","duplicator_pro_created_format","1"),
("24","1","tgmpa_dismissed_notice_tgmpa","1"),
("25","1","_woocommerce_tracks_anon_id","woo:AyXkqBqJCm/1806EVhtfxAxF"),
("26","1","wc_last_active","1557705600"),
("27","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("28","1","dismissed_template_files_notice","1"),
("29","1","dismissed_no_secure_connection_notice","1"),
("30","1","nav_menu_recently_edited","2"),
("31","1","dismissed_install_notice","1"),
("32","1","closedpostboxes_product","a:1:{i:0;s:24:\"woocommerce-product-data\";}"),
("33","1","metaboxhidden_product","a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}");




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
("1","admin","$P$BqeDfz6lNUHJy14ZmNRjDgWePlAvtZ.","admin","demo@gmail.com","","2019-04-22 09:48:31","","0","admin");




CREATE TABLE `bz_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `bz_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
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


INSERT INTO bz_wc_product_meta_lookup VALUES
("155","","0","0","0.00","0.00","0","0","instock","0","0.00","0"),
("157","","0","0","0.00","0.00","0","0","instock","0","0.00","0"),
("159","","0","0","0.00","0.00","0","0","instock","0","0.00","0"),
("161","","0","0","0.00","0.00","0","0","instock","0","0.00","0"),
("163","","0","0","0.00","0.00","0","0","instock","0","0.00","0"),
("165","","0","0","0.00","0.00","0","0","instock","0","0.00","0");




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






CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("3","mailto:congtydanhkhoireal@gmail.com","43","0","external"),
("4","https://danhkhoireal.vn/","43","0","external"),
("5","https://webdemo.com/","41","0","external"),
("6","http://giuseart.com/","41","0","external");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("1","0","0"),
("4","0","0"),
("6","0","0"),
("32","0","0"),
("33","0","0"),
("36","0","0"),
("37","0","0"),
("38","0","0"),
("40","0","0"),
("41","0","0"),
("42","0","0"),
("43","0","0"),
("44","0","0"),
("47","0","0"),
("48","0","0"),
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
("71","0","0"),
("72","0","0"),
("73","0","0"),
("74","0","0"),
("75","0","0"),
("76","0","0"),
("77","0","0"),
("78","0","0"),
("79","0","0"),
("80","0","0"),
("81","0","0"),
("82","0","0"),
("83","0","0"),
("84","0","0"),
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
("104","0","0"),
("105","0","0"),
("106","0","0"),
("108","0","0"),
("110","0","0"),
("111","0","0"),
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("118","0","0"),
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0"),
("126","0","0"),
("127","0","0"),
("128","0","0"),
("129","0","0"),
("130","0","0"),
("131","0","0"),
("133","0","0"),
("135","0","0"),
("137","0","0"),
("139","0","0"),
("140","0","0"),
("141","0","0"),
("142","0","0"),
("143","0","0"),
("144","0","0"),
("145","0","0"),
("146","0","0"),
("147","0","0"),
("148","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("152","0","0"),
("153","0","0"),
("154","0","0"),
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
("191","0","0"),
("193","0","0"),
("194","0","0"),
("195","0","0"),
("196","0","0"),
("197","0","0"),
("199","0","0"),
("201","0","0"),
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("206","0","0"),
("207","0","0"),
("208","0","0"),
("209","0","0"),
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
("221","0","0"),
("222","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("226","0","0"),
("227","0","0"),
("228","0","0"),
("229","0","0"),
("230","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0"),
("234","0","0"),
("235","0","0"),
("236","0","0"),
("239","0","0"),
("242","0","0"),
("245","0","0"),
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
("266","0","0"),
("267","0","0"),
("268","0","0"),
("269","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("274","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
("278","0","0"),
("279","0","0"),
("280","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("281","0","0"),
("282","0","0"),
("283","0","0"),
("284","0","0"),
("285","0","0"),
("287","0","0"),
("289","0","0"),
("290","0","0"),
("291","0","0"),
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
("325","0","0"),
("326","0","0"),
("327","0","0"),
("328","0","0"),
("329","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("333","0","0"),
("334","0","0"),
("335","0","0"),
("336","0","0"),
("337","0","0"),
("338","0","0"),
("339","0","0"),
("340","0","0"),
("341","0","0"),
("342","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("348","0","0"),
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
("363","0","0"),
("364","0","0"),
("365","0","0"),
("366","0","0"),
("367","0","0"),
("368","0","0"),
("369","0","0"),
("370","0","0"),
("371","0","0"),
("374","0","0"),
("375","0","0"),
("376","0","0"),
("377","0","0"),
("380","0","0"),
("381","0","0"),
("382","0","0"),
("383","0","0"),
("384","0","0"),
("385","0","0"),
("386","0","0"),
("387","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("388","0","0"),
("389","0","0"),
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
("426","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;