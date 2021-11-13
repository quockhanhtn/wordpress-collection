SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w34`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-03-16 03:19:13","2019-03-16 03:19:13","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/edu5\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1552895881,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960488,\"initial_activation_timestamp\":1552895892,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025916,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/edu5","yes"),
("2","home","https://bizhostvn.com/w/edu5","yes"),
("3","blogname","edu5","yes"),
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
("28","permalink_structure","/%category%/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","/danh-muc","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:2:{i:0;s:85:\"/home/tppone/domains/tppone.com/public_html/demo/edu5/wp-content/themes/edu/style.css\";i:1;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","edu","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:34:\"Danh mục bài viết - tin tức\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:4:{i:0;s:23:\"flatsome_recent_posts-2\";i:1;s:13:\"media_video-2\";i:2;s:13:\"media_video-3\";i:3;s:12:\"categories-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:3:{i:2;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:28:\"https://youtu.be/ZYnoR8dPLaw\";s:5:\"title\";s:32:\"Phương pháp học tiếng anh\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}i:3;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:28:\"https://youtu.be/WCvgNz2jI4g\";s:5:\"title\";s:33:\"Bí quyết nghe nói tiếng anh\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1558023554;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558063154;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558063162;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558071131;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083105;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558088535;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("143","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1552706374;}","no"),
("145","new_admin_email","webdemo@gmail.com","yes"),
("152","recently_activated","a:4:{s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557028340;s:23:\"wp-rocket/wp-rocket.php\";i:1557028106;s:30:\"db-prefix-change/db_prefix.php\";i:1557026692;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025923;}","yes"),
("153","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552706395;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("154","current_theme","Edu","yes"),
("155","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 16 Mar 2019 03:19:55 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552706409;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("156","theme_switched","","yes"),
("157","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:36:\"Tin tức - sự kiện mới nhất\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("158","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("160","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("161","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("162","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("163","flatsome_wup_buyer","trannguyen886","yes"),
("164","allowedthemes","a:1:{s:3:\"edu\";b:1;}","no"),
("165","fl_has_child_theme","edu","yes"),
("167","theme_mods_edu","a:136:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:6:\"search\";i:1;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:1:{i:0;s:3:\"nav\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:2;s:11:\"top_bar_nav\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 16 Mar 2019 03:20:11 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:2963:\"<style>\n.bottom-contact{display:none}\n.box_fixRight {\n    position: fixed;\n    top: 150px;\n    right: -140px;\n    width: auto;\n    transition: all 0.2s ease-in-out 0s;\n    z-index: 999;\n}\n.box_fixRight .box_content {\n    background: #fff;\n    padding: 10px;\n    box-shadow: 10px 0px 30px #0000008c;\n    border-radius: 10px 0 0 10px;\n}\n.box_fixRight .box_content .item {\n    display: block;\n    padding: 13px 10px 13px 47px;\n    color: #111;\n}\n.box_fixRight .box_content .item:hover{color:#184b9b}\n.box_fixRight .box_content .item.item_1 {\n    background: url(/wp-content/uploads/2019/03/iconfix-1.png) no-repeat left;\n}\n.box_fixRight .box_content .item.item_2 {\n    background: url(/wp-content/uploads/2019/03/iconfix-2.png) no-repeat left;\n}\n.box_fixRight .box_content .item.item_3 {\n    background: url(/wp-content/uploads/2019/03/iconfix-3.png) no-repeat left;\n}\n.box_fixRight:hover {\n    right: 0;\n    transition: all 0.2s ease-in-out 0s;\n}\n@media (max-width: 549px){\n.bottom-contact{display: block;\n    position: fixed;\n    bottom: 0;\n    background: white;\n    width: 100%;\n    z-index: 99;\n    box-shadow: 2px 1px 9px #dedede;\n    border-top: 1px solid #eaeaea;}\n.bottom-contact ul li{width: 25%;\n    float: left;\n    list-style: none;\n    text-align: center; font-size:13.5px;}\n.bottom-contact ul li span{color:black}\n.bottom-contact ul li img{    width: 35px;\n    margin-top: 10px;\n    margin-bottom: 0px;}\n.box_fixRight{display:none}\n \n}\n\n</style>\n<div class=\"box_fixRight\">\n<div class=\"box_content\">\n<a href=\"/khoa-hoc/\" class=\"item item_1\">Lịch khai giảng</a>\n<a href=\"/lien-he/\" class=\"item item_2\">Liên hệ</a>\n<a href=\"#dang-ky\" class=\"item item_3\">Đăng ký học thử</a>\n</div>\n</div>\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n <SCRIPT LANGUAGE = \"Javascript\">\n$(document).ready(function() {\n  $(\"a[href*=\'#\']:not([href=\'#])\").click(function() {\n    let target = $(this).attr(\"href\");\n    $(\'html,body\').stop().animate({\n      scrollTop: $(target).offset().top\n    }, 1000);\n    event.preventDefault();\n  });\n});</SCRIPT>\n\n<div class=\"bottom-contact\">\n<ul>\n<li>\n<a id=\"goidien\" href=\"tel:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-phone2.png\"/>\n<br>\n<span>Gọi điện</span>\n</a>\n</li>\n<li>\n<a id=\"nhantin\" href=\"sms:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-sms2.png\"/>\n<br>\n<span>Nhắn tin</span>\n</a>\n</li>\n<li>\n<a id=\"chatzalo\" href=\"http://zaloapp.com/qr/p/3ur778onb9ak\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-zalo2.png\"/>\n<br>\n<span>Chat zalo</span>\n</a>\n</li>\n<li>\n<a id=\"chatfb\" href=\"https://www.messenger.com/t/demo\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-mesenger2.png\"/>\n<br>\n<span>Chat Facebook</span>\n</a>\n</li>\n</ul>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:8464:\".header-top {\n    border-bottom: 1px solid #f2f2f2;\n}\n.header-contact li a span, .top-bar-nav li a{text-transform: none;\n    font-size: 15px;\n    color: #6c6c6c;\n    letter-spacing: 0;}\n.header-contact li a span, .top-bar-nav li a:hover{color:#1176b9}\n.gioi-thieu .icon-box .icon-box-img img{border:2px solid white; border-radius:99%}\n.header-nav li a{color:black}\n.header-nav li a:hover, .header-nav li.active>a{color:#119bf7}\n.header-main {\n    box-shadow: 1px 0px 20px #0000001f;\n}.section-title-container {\n    margin-bottom: 0;\n}\n.gioi-thieu .icon-box:hover{background:#119bf7; padding:15px 10px; border-radius:10px; color:white}\n.gioi-thieu .icon-box:hover h3{color:white}\n.gioi-thieu .icon-box h3{color:\n#f80002}\n.gioi-thieu .button span, .mo-hinh-hoc .row-mo-hinh-hoc .button span{    padding: 11px 20px;\n    font-weight: normal;\n    text-transform: uppercase;}\n\n.gioi-thieu .icon-box{background:white; padding:15px 10px; border-radius:10px; }\n.mo-hinh-hoc{background: url(/wp-content/uploads/2019/03/bg-2.jpg); background-repeat:no-repeat}\n.button span {\n    font-weight: normal;\n	font-size: 14px;}\n.mo-hinh-hoc .row-mo-hinh-hoc h3.tieu-de:after{content: \"\";\n    position: absolute;\n    bottom: -8px;\n    left: 0;\n    width: 90px;\n    height: 3px;\n    background-color: #db2428;}\n.mo-hinh-hoc .row-mo-hinh-hoc h3.tieu-de{font-size:25px; color:black;}\n.mo-hinh-hoc .item {\n    border: 3px solid #1b5393;\n    border-radius: 5px;\n    background-color: #FFF;\n    overflow: hidden;\n    margin-bottom: 20px;\n    min-height: 180px;\n    display: table;\n    cursor: pointer;\n    transition: all 0.15s ease-in-out 0s;\n}.mo-hinh-hoc .item .item_content {\n    display: table-cell;\n    vertical-align: middle;\n}.mo-hinh-hoc .item .item_info {\n    margin: 0px 20px;\n    padding: 0 0 0 20px;\n    border-left: 2px solid #db2428;\n}.mo-hinh-hoc .item .title {    font-family: \"barlow\", sans-serif;\n    text-transform: uppercase;\n    color: #db2428;\n    font-size: 22px;\n    font-weight: 700;\n    margin-bottom: 5px;\n    padding-left: 70px;\n    height: 36px;\n    line-height: 36px;\n}.mo-hinh-hoc .item .desc {\n    color: #111;\n    font-size: 14px;\n}.mo-hinh-hoc .item.item_1 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-1-1.png) no-repeat 0 0;\n}.mo-hinh-hoc .item:hover {\n    background-color: #119bf7;\n    transition: all 0.15s ease-in-out 0s;\n}\n.mo-hinh-hoc .item.item_2 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-2.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item.item_3 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-3.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item.item_5 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-5.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .row-mo-hinh-hoc .col{    padding-bottom: 10px;}\n.mo-hinh-hoc .item:hover>.item_content .item_info .desc{color:white}\n.mo-hinh-hoc .item.item_4 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-4.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item:hover>.item_content .item_info{border-left-color:white}\n.mo-hinh-hoc .item_2:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-2.png) no-repeat; background-position-y: bottom;}\n.item:hover>.item_content .item_info .title{color:white}\n.mo-hinh-hoc .item_1:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-1-1.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_3:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-3.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_4:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-4.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_5:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-5.png) no-repeat; background-position-y: bottom;}\n.cam-nhan .large-12{padding-bottom:10px}\n.giang-vien .box.box-bounce:hover{border:2px solid #119bf7}\n.giang-vien .box.box-bounce{background: white;\n    padding-top: 20px;\n    border-radius: 10px;    border: 2px solid #f0f0f0;}\n.su-kien .post-item .box-image .image-cover{border-radius:7px}\n.su-kien .post-item .post-title{color:#154a98}\n.section-title a {\n    font-size: 15px;\n \n    font-weight: normal;\n}\n.su-kien .post-item .post-title:hover{color:#ed2a3b}\n.su-kien .col{padding-bottom:0}\n.form-lien-he {text-align:center; display:inline-block; width:75%}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{border-radius:4px; box-shadow:none}\n.form-lien-he .left{width:50%; float:left; padding-right:10px; display:inline-block}\n.form-lien-he .right{width:50%; float:right; text-align:left; padding-left:10px; display:inline-block}\n.dang-ky-hoc .col{padding-bottom:0}\ninput[type=\'submit\']{margin:0; border-radius:4px; font-weight:normal}\n.footer-section1 .section-title-normal {\n    border-bottom: 2px solid #111e37;\n}\n.page-right-sidebar .form-lien-he{width:100%; }\n.footer-section1 .form-lien-he{width:100%; margin-top:20px}\n.absolute-footer.dark {\n    font-size: 13px;\n}\n.blog-single .entry-header-text {\n    padding: 0;\n}\n.blog-single .entry-category, .blog-single .is-divider{display:none}\n.footer-section2{    border-top: 1px solid #111e37;}\n.footer-section1 .col, .footer-section2 .col{padding-bottom:0}\n.page-right-sidebar, .blog-single, .blog-archive {background:url(/wp-content/uploads/2019/03/bg.png); padding-top: 0px;\n    padding-bottom: 10px;}\n.blog-archive .post-item .post-title:hover{color:red}\n.blog-archive .post-item .post-title{font-size: 20px;\n        color: #164899;}\n.blog-archive .large-9 .badge .badge-inner {font-weight:normal; border-radius:99%}\n.blog-archive .post-item .col-inner:hover{box-shadow:0px 0px 20px #d4d4d4}\n.cam-nhan-2 .col{padding-bottom:0}\n.blog-archive .post-item{    padding-bottom: 20px;}\n.blog-archive .large-9 .badge{margin:10px}\n.blog-archive .post-item .col-inner{background:white; border-radius:4px}\n.page-right-sidebar .large-9, .blog-single .large-9, .blog-archive .large-9{padding-right:20px; border-right:0 !important}\n.blog-archive{padding-top:0}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{border-left:0 !important; padding-left:0px; padding-top:48px }\n.page-right-sidebar .gallery-col  .gallery-box .box-text{display:none; padding-bottom:0; padding-top:0}\n#breadcrumbs{ padding-top:10px; margin-bottom:15px;    text-transform: none;\n    font-weight: normal;\n    font-size: 15px;}\n.blog-single .entry-meta .danh-muc{margin-bottom:7px}\n.blog-single .entry-meta .the-tim-kiem a{background: #f1f0f6;\n    padding: 4px 10px;\n    color: #626262;}\n.page-right-sidebar .page-inner, .blog-single .article-inner{margin-bottom:20px; font-size:16px; background: white;\n    padding: 20px;\n    border-radius: 4px;}\nh1.entry-title.mb {\n    margin-bottom: 10px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 20px;\n    color: #1a4b95;\n}\nspan.widget-title{border: 1px solid #ececec; background: #119bf7;\n    padding: 15px;\n    color: white;\n \n    font-family: \"barlow\", sans-serif;\n    letter-spacing: 0;\n    display: block;\n    font-size: 17px;\n    text-align: center;\n    font-weight: bold;}\n.widget .is-divider{display:none}\n.flatsome_recent_posts ul, .widget_categories ul{    border: 1px solid #ececec;\n    background: white;}\n.flatsome_recent_posts .badge-inner{border-radius:99%}\n.recent-blog-posts a, .widget_categories ul li a{color: #1d498f;\n    text-transform: none;\n    font-size: 14px;}\n.recent-blog-posts a:hover, .widget_categories ul li a:hover{color:#119bf7}\n.widget_categories ul li{font-size:13px}\n.flatsome_recent_posts ul li, .widget_categories ul li{padding:0 10px}\n\n.fb-comments{background:white; padding:10px}\n.fb_iframe_widget_fluid_desktop iframe{width:100%}\n.fb-comments, .fb-comments span, .fb-comments span iframe{\nwidth:100% !important;\ndisplay:inline-block !important;\nmax-width:100% !important\n}\n.blog-single .blog-share{text-align:left}\n.blog-single .entry-content {\n    padding-top: 1.5em;\n    padding-bottom: 0;\n}\n.avatar-page img{background-size: cover;\nwidth: 100%;}\n.avatar-page{text-align:center}\nfooter.entry-meta{font-size:15px}\n.blog-single .entry-meta .the-tim-kiem a:hover{background:#119bf7; color:white}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:745:\".header-top{display:none}\n.off-canvas-left.dark .mfp-content{background-color: rgb(2, 103, 170);}\n.gioi-thieu .medium-3, .giang-vien .medium-3{flex-basis:50%; max-width:50%; padding:0}\n.gioi-thieu .large-12{padding-bottom:0}.mo-hinh-hoc .item{margin-bottom:10px}\n.form-lien-he{width:100%}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{font-size:14px}\n.giang-vien .box.box-bounce .box-text p{font-size:12px}\n.giang-vien .box-bounce .box-text {	padding: 10px}\n.su-kien .post-item .post-title{font-size:18px}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{padding-left:15px}\n.blog-archive .post-item .box-text{padding:10px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:11:\"preset_demo\";s:14:\"header-default\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"249\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#ffffff\";s:13:\"nav_style_top\";s:0:\"\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:5:\"large\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"55\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_email\";s:17:\"webdemo@gmail.com\";s:19:\"contact_email_label\";s:17:\"webdemo@gmail.com\";s:13:\"contact_hours\";s:0:\"\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:13:\"color_primary\";s:7:\"#119bf7\";s:15:\"color_secondary\";s:7:\"#0267aa\";s:11:\"color_texts\";s:7:\"#353535\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#119bf7\";s:17:\"color_links_hover\";s:7:\"#025287\";s:18:\"color_widget_links\";s:7:\"#119bf7\";s:9:\"site_logo\";s:64:\"https://bizhostvn.com/w/edu5/wp-content/uploads/2019/05/edu5.jpg\";s:12:\"logo_padding\";s:1:\"2\";s:14:\"header_divider\";b:0;s:11:\"nav_spacing\";s:5:\"large\";s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:19:\"blog_excerpt_suffix\";s:3:\"...\";s:12:\"footer_block\";s:14:\"footer-section\";s:19:\"footer_bottom_align\";s:6:\"center\";s:16:\"footer_left_text\";s:169:\"Copyright [ux_current_year] © <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thiết kế bởi <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:19:\"footer_bottom_color\";s:7:\"#040a1e\";s:14:\"pages_template\";s:13:\"right-sidebar\";s:13:\"default_title\";b:1;s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:1;s:23:\"blog_single_footer_meta\";b:1;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:18:\"blog_archive_title\";b:0;s:20:\"header_height_sticky\";s:2:\"51\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:1:\"6\";s:13:\"header_sticky\";b:1;s:16:\"bottombar_sticky\";b:0;s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#0267aa\";s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("169","envato_setup_complete","1552706415","yes"),
("177","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("205","category_children","a:0:{}","yes"),
("215","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1552840770;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("223","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1552818133;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("224","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("225","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("226","wpseo_flush_rewrite","1","yes"),
("227","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("233","wpseo_current_version","16","no"),
("234","wpseo_premium_version","8.4","yes"),
("239","wpseo_tracking_last_request","1556963517","yes"),
("246","wpseo_sitemap_cache_validator_global","46QtA","no"),
("250","wpseo_sitemap_1_cache_validator","3mdR9","no"),
("251","wpseo_sitemap_attachment_cache_validator","35oi6","no"),
("252","wpseo_sitemap_customize_changeset_cache_validator","4t1Al","no"),
("257","wpseo_sitemap_page_cache_validator","4sOVT","no"),
("259","wpseo_sitemap_post_cache_validator","3mdRf","no"),
("260","wpseo_sitemap_category_cache_validator","3NcEE","no"),
("261","wpseo_sitemap_post_tag_cache_validator","3NcEG","no"),
("280","wpseo_sitemap_wpcf7_contact_form_cache_validator","iSkM","no"),
("295","rewrite_rules","a:117:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}","yes"),
("303","wpseo_sitemap_oembed_cache_cache_validator","4fMPq","no"),
("312","wpseo_license_server_version","2","yes"),
("373","wpseo_sitemap_blocks_cache_validator","4LNSQ","no"),
("432","duplicator_pro_package_active","{\"Created\":\"2019-03-18 07:58:20\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.10\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190318_mauwebsitetraihetienganht\",\"Hash\":\"661421fd69b8b6808253_20190318075820\",\"NameHash\":\"20190318_mauwebsitetraihetienganht_661421fd69b8b6808253_20190318075820\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190318_mauwebsitetraihetienganht_661421fd69b8b6808253_20190318075820_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\",\"Size\":90432434,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web04\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1300,\"tablesSizeOnDisk\":5095424,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("434","_transient_timeout_wpseo_link_table_inaccessible","1588496489","no"),
("435","_transient_wpseo_link_table_inaccessible","0","no"),
("436","_transient_timeout_wpseo_meta_table_inaccessible","1588496489","no"),
("437","_transient_wpseo_meta_table_inaccessible","0","no"),
("472","db_upgraded","","yes"),
("482","can_compress_scripts","0","no"),
("486","dbprefix_old_dbprefix","ed_","yes"),
("487","dbprefix_new","bz_","yes"),
("536","recovery_keys","a:0:{}","yes"),
("623","_site_transient_timeout_theme_roots","1558021429","no"),
("624","_site_transient_theme_roots","a:2:{s:3:\"edu\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("626","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558021156;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("627","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558019639;s:7:\"checked\";a:2:{s:3:\"edu\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("628","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558021153;s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("33","19","_wp_attached_file","2019/03/123445-01.jpg"),
("34","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1962;s:6:\"height\";i:665;s:4:\"file\";s:21:\"2019/03/123445-01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"123445-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"123445-01-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"123445-01-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"123445-01-1024x347.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("37","21","_wp_attached_file","2019/03/cropped-123445-01.jpg"),
("38","21","_wp_attachment_context","site-icon"),
("39","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/03/cropped-123445-01.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-123445-01-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("46","25","_edit_last","1"),
("47","25","_footer","normal"),
("48","25","_wp_page_template","page-right-sidebar.php"),
("49","25","_edit_lock","1552818428:1"),
("50","27","_edit_last","1"),
("51","27","_footer","normal"),
("52","27","_wp_page_template","page-right-sidebar.php"),
("53","27","_edit_lock","1552821129:1"),
("54","29","_edit_last","1"),
("55","29","_footer","normal"),
("56","29","_wp_page_template","page-blank.php"),
("57","29","_edit_lock","1552823661:1"),
("58","31","_edit_last","1"),
("59","31","_footer","normal"),
("60","31","_wp_page_template","page-right-sidebar.php"),
("61","31","_edit_lock","1552825579:1"),
("62","33","_edit_last","1"),
("63","33","_footer","normal"),
("64","33","_wp_page_template","page-right-sidebar.php"),
("65","33","_edit_lock","1552825683:1"),
("66","35","_edit_last","1"),
("67","35","_footer","normal"),
("68","35","_wp_page_template","page-right-sidebar.php"),
("69","35","_edit_lock","1552826105:1"),
("70","37","_edit_last","1"),
("71","37","_footer","normal"),
("72","37","_wp_page_template","page-blank.php"),
("73","37","_edit_lock","1552826516:1"),
("74","39","_edit_last","1"),
("75","39","_footer","normal"),
("76","39","_wp_page_template","page-right-sidebar.php"),
("77","39","_edit_lock","1552821367:1"),
("78","41","_edit_last","1"),
("79","41","_footer","normal"),
("80","41","_wp_page_template","page-right-sidebar.php"),
("81","41","_edit_lock","1552821478:1"),
("82","2","_edit_lock","1552825571:1"),
("83","2","_edit_last","1"),
("84","2","_footer","normal"),
("103","46","_menu_item_type","post_type"),
("104","46","_menu_item_menu_item_parent","0"),
("105","46","_menu_item_object_id","37"),
("106","46","_menu_item_object","page"),
("107","46","_menu_item_target",""),
("108","46","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("109","46","_menu_item_xfn",""),
("110","46","_menu_item_url",""),
("112","47","_menu_item_type","post_type"),
("113","47","_menu_item_menu_item_parent","0"),
("114","47","_menu_item_object_id","35"),
("115","47","_menu_item_object","page"),
("116","47","_menu_item_target",""),
("117","47","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("118","47","_menu_item_xfn",""),
("119","47","_menu_item_url",""),
("121","48","_menu_item_type","post_type"),
("122","48","_menu_item_menu_item_parent","0"),
("123","48","_menu_item_object_id","33"),
("124","48","_menu_item_object","page"),
("125","48","_menu_item_target",""),
("126","48","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("127","48","_menu_item_xfn",""),
("128","48","_menu_item_url",""),
("130","49","_menu_item_type","post_type"),
("131","49","_menu_item_menu_item_parent","0"),
("132","49","_menu_item_object_id","31"),
("133","49","_menu_item_object","page"),
("134","49","_menu_item_target",""),
("135","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("136","49","_menu_item_xfn",""),
("137","49","_menu_item_url",""),
("139","50","_menu_item_type","post_type"),
("140","50","_menu_item_menu_item_parent","0"),
("141","50","_menu_item_object_id","29"),
("142","50","_menu_item_object","page"),
("143","50","_menu_item_target",""),
("144","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("145","50","_menu_item_xfn",""),
("146","50","_menu_item_url",""),
("166","53","_menu_item_type","post_type"),
("167","53","_menu_item_menu_item_parent","0"),
("168","53","_menu_item_object_id","2"),
("169","53","_menu_item_object","page"),
("170","53","_menu_item_target",""),
("171","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("172","53","_menu_item_xfn",""),
("173","53","_menu_item_url",""),
("183","58","_menu_item_type","post_type"),
("184","58","_menu_item_menu_item_parent","0"),
("185","58","_menu_item_object_id","41"),
("186","58","_menu_item_object","page"),
("187","58","_menu_item_target",""),
("188","58","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO bz_postmeta VALUES
("189","58","_menu_item_xfn",""),
("190","58","_menu_item_url",""),
("192","59","_menu_item_type","post_type"),
("193","59","_menu_item_menu_item_parent","0"),
("194","59","_menu_item_object_id","27"),
("195","59","_menu_item_object","page"),
("196","59","_menu_item_target",""),
("197","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("198","59","_menu_item_xfn",""),
("199","59","_menu_item_url",""),
("201","60","_menu_item_type","post_type"),
("202","60","_menu_item_menu_item_parent","0"),
("203","60","_menu_item_object_id","25"),
("204","60","_menu_item_object","page"),
("205","60","_menu_item_target",""),
("206","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("207","60","_menu_item_xfn",""),
("208","60","_menu_item_url",""),
("232","2","_thumbnail_id",""),
("233","74","_wp_attached_file","2019/03/slider02.jpg"),
("234","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:20:\"2019/03/slider02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider02-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider02-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider02-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("237","77","_wp_attached_file","2019/03/slider03.jpg"),
("238","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:20:\"2019/03/slider03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider03-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider03-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider03-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("241","87","_wp_attached_file","2019/03/icon1.png"),
("242","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon1-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("243","88","_wp_attached_file","2019/03/icon2.png"),
("244","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon2-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("245","89","_wp_attached_file","2019/03/icon3.png"),
("246","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon3-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("247","90","_wp_attached_file","2019/03/icon4.png"),
("248","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon4-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("287","2","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("288","2","_oembed_time_97120786a5d618011442f73be26e093f","1552809427"),
("289","2","_oembed_f581454e02fadf689573da144df9ba4b","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("290","2","_oembed_time_f581454e02fadf689573da144df9ba4b","1552809428"),
("291","121","_wp_attached_file","2019/03/bg-2.jpg"),
("292","121","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:401;s:4:\"file\";s:16:\"2019/03/bg-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-2-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-2-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-2-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("293","121","_edit_lock","1552809376:1"),
("314","148","_wp_attached_file","2019/03/4ce-1-1.png"),
("315","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:72;s:4:\"file\";s:19:\"2019/03/4ce-1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("316","148","_edit_lock","1552810686:1"),
("327","154","_wp_attached_file","2019/03/4ce-2.png"),
("328","154","_wp_attachment_metadata","a:5:{s:5:\"width\";i:60;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("329","154","_edit_lock","1552810875:1"),
("331","156","_wp_attached_file","2019/03/4ce-3.png"),
("332","156","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("333","156","_edit_lock","1552810927:1"),
("337","158","_wp_attached_file","2019/03/4ce-5.png"),
("338","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("339","158","_edit_lock","1552810927:1"),
("352","166","_wp_attached_file","2019/03/4ce-4.png"),
("353","166","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("354","166","_edit_lock","1552811265:1"),
("394","2","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("395","2","_oembed_time_24c976c5f70342643104b2a90132a542","1552812376"),
("396","2","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("397","2","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552812395"),
("398","2","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("399","2","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552812408"),
("400","2","_oembed_e033a564b4086ebbccb671b8e50aaa14","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("401","2","_oembed_time_e033a564b4086ebbccb671b8e50aaa14","1552812552"),
("402","2","_oembed_fc442f25a7d52e6f596a212e4b93d035","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("403","2","_oembed_time_fc442f25a7d52e6f596a212e4b93d035","1552812566"),
("406","201","_wp_attached_file","2019/03/giangvien-bg.jpg"),
("407","201","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:689;s:4:\"file\";s:24:\"2019/03/giangvien-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"giangvien-bg-1024x367.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("410","207","_wp_attached_file","2019/03/pic1.jpg"),
("411","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:200;s:6:\"height\";i:236;s:4:\"file\";s:16:\"2019/03/pic1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("419","216","_wp_attached_file","2019/03/giangvien-3.jpg"),
("420","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:23:\"2019/03/giangvien-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"giangvien-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"giangvien-3-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","218","_wp_attached_file","2019/03/giangvien-5.jpg"),
("422","218","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:23:\"2019/03/giangvien-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"giangvien-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"giangvien-5-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("423","222","_wp_attached_file","2019/03/giangvien-13.jpg"),
("424","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:24:\"2019/03/giangvien-13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"giangvien-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"giangvien-13-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("425","225","_edit_last","1"),
("426","225","_edit_lock","1552819286:1"),
("427","226","_wp_attached_file","2019/03/DSC-3797-compressed.jpg"),
("428","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:31:\"2019/03/DSC-3797-compressed.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"DSC-3797-compressed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"DSC-3797-compressed-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("429","225","_thumbnail_id","226"),
("431","228","_edit_last","1"),
("432","228","_edit_lock","1552819238:1"),
("433","229","_wp_attached_file","2019/03/DSC-2759.jpg"),
("434","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:20:\"2019/03/DSC-2759.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC-2759-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC-2759-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1545767830\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("435","228","_thumbnail_id","229"),
("437","231","_edit_last","1"),
("438","231","_edit_lock","1552819215:1"),
("439","232","_wp_attached_file","2019/03/Bell_Cambridge_Classroom-copia-2.jpg"),
("440","232","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:44:\"2019/03/Bell_Cambridge_Classroom-copia-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Bell_Cambridge_Classroom-copia-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Bell_Cambridge_Classroom-copia-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:9:\"JASONDODD\";s:6:\"camera\";s:20:\"Canon EOS-1D Mark IV\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1342519511\";s:9:\"copyright\";s:20:\"JASONDODDPHOTOGRAPHY\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("441","231","_thumbnail_id","232"),
("443","234","_edit_last","1"),
("444","234","_edit_lock","1552819181:1"),
("445","235","_wp_attached_file","2019/03/IMG-7949.jpg"),
("446","235","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:253;s:4:\"file\";s:20:\"2019/03/IMG-7949.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG-7949-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG-7949-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("447","234","_thumbnail_id","235"),
("449","237","_edit_last","1"),
("450","237","_edit_lock","1552819152:1"),
("451","238","_wp_attached_file","2019/03/5-SN-Lang-2018.jpg"),
("452","238","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1043;s:6:\"height\";i:696;s:4:\"file\";s:26:\"2019/03/5-SN-Lang-2018.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"5-SN-Lang-2018-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("453","237","_thumbnail_id","238"),
("455","240","_edit_last","1"),
("456","240","_edit_lock","1552818930:1");
INSERT INTO bz_postmeta VALUES
("457","241","_wp_attached_file","2019/03/IMG-1403.jpg"),
("458","241","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:20:\"2019/03/IMG-1403.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG-1403-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG-1403-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("459","240","_thumbnail_id","241"),
("482","268","_wp_attached_file","2019/03/doitac-1.png"),
("483","268","_wp_attachment_metadata","a:5:{s:5:\"width\";i:143;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("484","269","_wp_attached_file","2019/03/doitac-2.png"),
("485","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("486","270","_wp_attached_file","2019/03/doitac-8.png"),
("487","270","_wp_attachment_metadata","a:5:{s:5:\"width\";i:58;s:6:\"height\";i:60;s:4:\"file\";s:20:\"2019/03/doitac-8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("488","271","_wp_attached_file","2019/03/doitac-4.png"),
("489","271","_wp_attachment_metadata","a:5:{s:5:\"width\";i:158;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-4-150x52.png\";s:5:\"width\";i:150;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("490","272","_wp_attached_file","2019/03/doitac-5.png"),
("491","272","_wp_attachment_metadata","a:5:{s:5:\"width\";i:96;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2019/03/doitac-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("492","274","_wp_attached_file","2019/03/doitac-6.png"),
("493","274","_wp_attachment_metadata","a:5:{s:5:\"width\";i:172;s:6:\"height\";i:61;s:4:\"file\";s:20:\"2019/03/doitac-6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-6-150x61.png\";s:5:\"width\";i:150;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("494","275","_wp_attached_file","2019/03/doitac-7.png"),
("495","275","_wp_attachment_metadata","a:5:{s:5:\"width\";i:162;s:6:\"height\";i:55;s:4:\"file\";s:20:\"2019/03/doitac-7.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-7-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("496","276","_wp_attached_file","2019/03/doitac-3.png"),
("497","276","_wp_attachment_metadata","a:5:{s:5:\"width\";i:219;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2019/03/doitac-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-3-150x56.png\";s:5:\"width\";i:150;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("498","279","_wp_attached_file","2019/03/bg3.jpg"),
("499","279","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:401;s:4:\"file\";s:15:\"2019/03/bg3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg3-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg3-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg3-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("500","284","_form","<div class=\"form-lien-he\">\n<div class=\"left\">\n[text text-502 placeholder \"Họ tên của bạn...\"]\n[tel tel-862 placeholder \"Số điện thoại của bạn...\"]\n[text text-5356 placeholder \"Địa chỉ của ban...\"]\n</div>\n<div class=\"right\">\n[text text-504 placeholder \"Họ tên người tham dự...\"]\n[text text-534 placeholder \"Số người đăng ký tham dự...\"]\n[text text-55432434 placeholder \"Ghi chú thêm...\"]\n</div>\n[submit \"Đăng ký học thử\"]\n</div>"),
("501","284","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:71:\"Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com\";s:6:\"sender\";s:28:\"<wordpress@edu5.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:394:\"- Họ tên người liên hệ: [text-502]\n- Họ tên người tham gia: [text-504]\n- Địa chỉ: [text-5356]\n- Số điện thoại: [tel-862]\n- Số người tham gia: [text-534]\n- Ghi chú thêm: [text-55432434]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com (https://bizhostvn.com/w/edu5)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("502","284","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:88:\"Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:100:\"Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com <wordpress@edu5.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:217:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com (https://bizhostvn.com/w/edu5)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("503","284","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("504","284","_additional_settings",""),
("505","284","_locale","vi"),
("531","301","_edit_last","1"),
("532","301","_edit_lock","1552816794:1"),
("534","309","_wp_attached_file","2019/03/logo-3.png"),
("535","309","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:49;s:4:\"file\";s:18:\"2019/03/logo-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("551","301","_thumbnail_id",""),
("559","337","_wp_attached_file","2019/03/LOGO.jpg"),
("560","337","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:71;s:4:\"file\";s:16:\"2019/03/LOGO.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"LOGO-150x71.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"LOGO-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("563","339","_menu_item_type","post_type"),
("564","339","_menu_item_menu_item_parent","0"),
("565","339","_menu_item_object_id","39"),
("566","339","_menu_item_object","page"),
("567","339","_menu_item_target",""),
("568","339","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("569","339","_menu_item_xfn",""),
("570","339","_menu_item_url",""),
("576","342","_wp_attached_file","2019/03/bg.png"),
("577","342","_wp_attachment_metadata","a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:14:\"2019/03/bg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("579","342","_edit_lock","1552818161:1"),
("591","25","_yoast_wpseo_content_score","30"),
("592","25","_yoast_wpseo_focuskeywords",""),
("593","25","_yoast_wpseo_keywordsynonyms",""),
("624","240","_yoast_wpseo_content_score","30"),
("625","240","_yoast_wpseo_focuskeywords",""),
("626","240","_yoast_wpseo_keywordsynonyms",""),
("627","240","_yoast_wpseo_primary_category",""),
("639","237","_yoast_wpseo_content_score","30"),
("640","237","_yoast_wpseo_focuskeywords",""),
("641","237","_yoast_wpseo_keywordsynonyms",""),
("642","237","_yoast_wpseo_primary_category",""),
("644","234","_yoast_wpseo_content_score","30"),
("645","234","_yoast_wpseo_focuskeywords",""),
("646","234","_yoast_wpseo_keywordsynonyms",""),
("647","234","_yoast_wpseo_primary_category",""),
("649","231","_yoast_wpseo_content_score","30"),
("650","231","_yoast_wpseo_focuskeywords",""),
("651","231","_yoast_wpseo_keywordsynonyms",""),
("652","231","_yoast_wpseo_primary_category",""),
("654","228","_yoast_wpseo_content_score","30"),
("655","228","_yoast_wpseo_focuskeywords",""),
("656","228","_yoast_wpseo_keywordsynonyms",""),
("657","228","_yoast_wpseo_primary_category",""),
("659","225","_yoast_wpseo_content_score","30"),
("660","225","_yoast_wpseo_focuskeywords",""),
("661","225","_yoast_wpseo_keywordsynonyms",""),
("662","225","_yoast_wpseo_primary_category",""),
("680","27","_yoast_wpseo_content_score","60"),
("681","27","_yoast_wpseo_focuskeywords",""),
("682","27","_yoast_wpseo_keywordsynonyms",""),
("684","27","_thumbnail_id",""),
("687","39","_yoast_wpseo_content_score","30"),
("688","39","_yoast_wpseo_focuskeywords",""),
("689","39","_yoast_wpseo_keywordsynonyms",""),
("692","41","_yoast_wpseo_content_score","30"),
("693","41","_yoast_wpseo_focuskeywords",""),
("694","41","_yoast_wpseo_keywordsynonyms",""),
("707","41","_thumbnail_id",""),
("755","424","_wp_attached_file","2019/03/bg_cover.jpg"),
("756","424","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1583;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2019/03/bg_cover.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg_cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg_cover-300x38.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg_cover-768x97.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bg_cover-1024x129.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("757","424","_edit_lock","1552822872:1"),
("796","29","_yoast_wpseo_content_score","30"),
("797","29","_yoast_wpseo_focuskeywords",""),
("798","29","_yoast_wpseo_keywordsynonyms",""),
("799","444","_wp_attached_file","2019/03/phuong-phap-hoc-tieng-anh.jpg"),
("800","444","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:37:\"2019/03/phuong-phap-hoc-tieng-anh.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"phuong-phap-hoc-tieng-anh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"phuong-phap-hoc-tieng-anh-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"phuong-phap-hoc-tieng-anh-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"phuong-phap-hoc-tieng-anh-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("801","29","_thumbnail_id",""),
("802","450","_wp_attached_file","2019/03/ketqua-1.jpg"),
("803","450","_wp_attachment_metadata","a:5:{s:5:\"width\";i:532;s:6:\"height\";i:474;s:4:\"file\";s:20:\"2019/03/ketqua-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ketqua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ketqua-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("804","461","_wp_attached_file","2019/03/phuong-phap-2.jpg"),
("805","461","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:507;s:4:\"file\";s:25:\"2019/03/phuong-phap-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"phuong-phap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"phuong-phap-2-300x254.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("806","463","_wp_attached_file","2019/03/phuong-phap-02.jpg"),
("807","463","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:26:\"2019/03/phuong-phap-02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"phuong-phap-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"phuong-phap-02-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"phuong-phap-02-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"phuong-phap-02-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("808","470","_wp_attached_file","2019/03/vande-1.png"),
("809","470","_wp_attachment_metadata","a:5:{s:5:\"width\";i:26;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/03/vande-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("810","474","_wp_attached_file","2019/03/vande-2.png"),
("811","474","_wp_attachment_metadata","a:5:{s:5:\"width\";i:31;s:6:\"height\";i:30;s:4:\"file\";s:19:\"2019/03/vande-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("812","478","_wp_attached_file","2019/03/vande-3.png"),
("813","478","_wp_attachment_metadata","a:5:{s:5:\"width\";i:29;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/03/vande-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("814","480","_wp_attached_file","2019/03/vande-4.png"),
("815","480","_wp_attachment_metadata","a:5:{s:5:\"width\";i:36;s:6:\"height\";i:31;s:4:\"file\";s:19:\"2019/03/vande-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("816","485","_wp_attached_file","2019/03/bg54.jpg"),
("817","485","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:16:\"2019/03/bg54.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg54-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg54-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg54-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("818","490","_wp_attached_file","2019/03/lagi-1.jpg"),
("819","490","_wp_attachment_metadata","a:5:{s:5:\"width\";i:601;s:6:\"height\";i:493;s:4:\"file\";s:18:\"2019/03/lagi-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lagi-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lagi-1-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("820","498","_wp_attached_file","2019/03/dia-diem-1.png"),
("821","498","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("822","502","_wp_attached_file","2019/03/dia-diem-2.png"),
("823","502","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("824","506","_wp_attached_file","2019/03/dia-diem-3.png"),
("825","506","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("826","514","_wp_attached_file","2019/03/lydo-1.png"),
("827","514","_wp_attachment_metadata","a:5:{s:5:\"width\";i:44;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2019/03/lydo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("828","519","_wp_attached_file","2019/03/lydo-3.png"),
("829","519","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/03/lydo-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("830","523","_wp_attached_file","2019/03/lydo-5.png"),
("831","523","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:48;s:4:\"file\";s:18:\"2019/03/lydo-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("832","527","_wp_attached_file","2019/03/lydo-2.png"),
("833","527","_wp_attachment_metadata","a:5:{s:5:\"width\";i:62;s:6:\"height\";i:43;s:4:\"file\";s:18:\"2019/03/lydo-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("834","529","_wp_attached_file","2019/03/lydo-4.png"),
("835","529","_wp_attachment_metadata","a:5:{s:5:\"width\";i:51;s:6:\"height\";i:47;s:4:\"file\";s:18:\"2019/03/lydo-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("836","531","_wp_attached_file","2019/03/lydo-6.png"),
("837","531","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:46;s:4:\"file\";s:18:\"2019/03/lydo-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("838","31","_yoast_wpseo_content_score","90"),
("839","31","_yoast_wpseo_focuskeywords",""),
("840","31","_yoast_wpseo_keywordsynonyms",""),
("842","237","_oembed_f581454e02fadf689573da144df9ba4b","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("843","237","_oembed_time_f581454e02fadf689573da144df9ba4b","1552825716"),
("844","237","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("845","237","_oembed_time_24c976c5f70342643104b2a90132a542","1552825716"),
("846","237","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("847","237","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552825717"),
("848","237","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("849","237","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552825717"),
("850","237","_oembed_e033a564b4086ebbccb671b8e50aaa14","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("851","237","_oembed_time_e033a564b4086ebbccb671b8e50aaa14","1552825717"),
("852","237","_oembed_fc442f25a7d52e6f596a212e4b93d035","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("853","237","_oembed_time_fc442f25a7d52e6f596a212e4b93d035","1552825717"),
("854","31","_thumbnail_id",""),
("855","33","_yoast_wpseo_content_score","30"),
("856","33","_yoast_wpseo_focuskeywords",""),
("857","33","_yoast_wpseo_keywordsynonyms",""),
("858","33","_thumbnail_id",""),
("859","35","_yoast_wpseo_content_score","60"),
("860","35","_yoast_wpseo_focuskeywords",""),
("861","35","_yoast_wpseo_keywordsynonyms",""),
("862","559","_wp_attached_file","2019/03/banner-tieng-anh-he.jpg"),
("863","559","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:31:\"2019/03/banner-tieng-anh-he.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"banner-tieng-anh-he-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"banner-tieng-anh-he-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"banner-tieng-anh-he-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"banner-tieng-anh-he-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("865","563","_wp_attached_file","2019/03/icon.png"),
("866","563","_wp_attachment_metadata","a:5:{s:5:\"width\";i:237;s:6:\"height\";i:237;s:4:\"file\";s:16:\"2019/03/icon.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("867","35","_thumbnail_id",""),
("868","37","_yoast_wpseo_content_score","30"),
("869","37","_yoast_wpseo_focuskeywords",""),
("870","37","_yoast_wpseo_keywordsynonyms",""),
("874","589","_wp_attached_file","2019/03/ratte.png"),
("875","589","_wp_attachment_metadata","a:5:{s:5:\"width\";i:539;s:6:\"height\";i:534;s:4:\"file\";s:17:\"2019/03/ratte.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ratte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ratte-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("876","593","_wp_attached_file","2019/03/ratte-1.png"),
("877","593","_wp_attachment_metadata","a:5:{s:5:\"width\";i:539;s:6:\"height\";i:534;s:4:\"file\";s:19:\"2019/03/ratte-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ratte-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ratte-1-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("878","37","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("879","37","_oembed_time_97120786a5d618011442f73be26e093f","1552826592"),
("880","37","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("881","37","_oembed_time_24c976c5f70342643104b2a90132a542","1552826594"),
("882","37","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("883","37","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552826608"),
("884","37","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("885","37","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552826621"),
("940","629","_wp_attached_file","2019/03/iconfix-1.png"),
("941","629","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:21:\"2019/03/iconfix-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("942","629","_edit_lock","1552832507:1"),
("943","630","_wp_attached_file","2019/03/iconfix-2.png"),
("944","630","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:36;s:4:\"file\";s:21:\"2019/03/iconfix-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("945","630","_edit_lock","1552832507:1"),
("946","631","_wp_attached_file","2019/03/iconfix-3.png"),
("947","631","_wp_attachment_metadata","a:5:{s:5:\"width\";i:37;s:6:\"height\";i:37;s:4:\"file\";s:21:\"2019/03/iconfix-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("948","631","_edit_lock","1552832507:1"),
("951","636","_wp_trash_meta_status","publish"),
("952","636","_wp_trash_meta_time","1557133646"),
("953","637","_wp_attached_file","2019/05/edu5.jpg"),
("954","637","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:71;s:4:\"file\";s:16:\"2019/05/edu5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"edu5-150x71.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"edu5-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:5:\"Print\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("955","638","_wp_trash_meta_status","publish"),
("956","638","_wp_trash_meta_time","1557137496");




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
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-03-16 03:19:13","2019-03-16 03:19:13","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2019-03-16 03:19:13","2019-03-16 03:19:13","","0","https://tppone.com/demo/edu5/?p=1","0","post","","1"),
("2","1","2019-03-16 03:19:13","2019-03-16 03:19:13","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"77\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"74\" image_size=\"original\" height=\"28%\"]\n\n\n[/ux_slider]\n[section label=\"Giới thiệu\" class=\"gioi-thieu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"LANGMASTER LEARNING SYSTEM\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" size=\"110\"]\n\n<p class=\"title\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Hệ thống học tiếng Anh giao tiếp toàn diện cho người bắt đầu</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"87\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Khóa Starter</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 90%;\">Khóa học dành cho người mới bắt đầu giúp cải thiện ngữ âm, hình thành chủ đề giao tiếp căn bản nhất</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"89\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Khóa Foundation</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Khóa học giúp bạn xây dựng nền tảng giao tiếp trôi chảy từ những chủ đề thông dụng trong cuộc sống</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"88\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Khóa Confidence</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Khóa học giao tiếp chuyên sâu giúp bạn tự tin nói tiếng Anh từ những chủ đề mới lạ một cách chủ động</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"90\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Khóa học Online</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Chương trình học online hiệu quả cho người mới bắt đầu giúp bạn lấy lại được kiến thức nền tảng</span></div>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[button text=\"Đăng ký học thử miễn phí\" letter_case=\"lowercase\" radius=\"5\" link=\"#dang-ky-hoc-thu\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Mô hình học\" class=\"mo-hinh-hoc\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n[title style=\"center\" text=\"Mô hình học khác biệt\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n<p>Mô hình học hoàn toàn khác biệt được mua bản quyền từ chương trình English for Children of Australia.</p>\n<p>Chúng tôi mong muốn đặt nền móng và phát triển mô hình học lý tưởng này ra tại Việt Nam, với sự trợ giúp của các giáo viên bản ngữ rất nhiệt tình, năng động và yêu trẻ.</p>\n<p>Mô hình học lần đầu tiên được áp dụng và giúp các em thiếu nhi tự tin học tiếng anh một cách tự nhiên, và chắc chắn sẽ phát triển rất tốt trong khả năng học tiếng anh của mình.</p>\n[button text=\"+ Xem chi tiết\" letter_case=\"lowercase\" radius=\"5\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=XYU4zkUP7Cg\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row class=\"row-mo-hinh-hoc\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<h3 class=\"tieu-de\" style=\"text-align: left;\">MÔ HÌNH HỌC<br />TRẠI HÈ<br />TIẾNG ANH</h3>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_1\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Club</div>\n<div class=\"desc\">Môi trường luyện tập tiếng Anh hàng tuần và tạo cơ hội phát triển mối quan hệ</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_2\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Conference</div>\n<div class=\"desc\">Hội thảo chuyên sâu hướng nghiệp và nâng cao những năng lực từ những chuyên gia trong và ngoài nước</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n\n[/row]\n[row class=\"row-mo-hinh-hoc\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_3\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Class</div>\n<div class=\"desc\">Rèn luyện khả năng ứng dụng tự học từ vựng. Linh hoạt xử lý các chủ đề giao tiếp một cách rõ ràng, chủ động, sáng tạo</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_4\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">E-learning</div>\n<div class=\"desc\">Ứng dụng điện thoại: Langmaster – học tiếng Anh 30 phút mỗi ngày<br />Hệ thống học online eStudy: Hệ thống tự theo dõi và đánh giá hoạt động học tập</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_5\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Community</div>\n<div class=\"desc\">Học viên sẽ có cơ hội được tham gia tổ chức hoặc tham dự các chương trình như: hoạt động từ thiện, các cuộc thi tiếng Anh, các hoạt động văn hóa, nghệ thuật,...</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[button text=\"Đăng ký học thử miễn phí\" letter_case=\"lowercase\" radius=\"5\" link=\"#dang-ky-hoc-thu\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Cảm nhận học viên\" bg_color=\"rgb(249, 249, 249)\" class=\"cam-nhan\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Cảm nhận học viên\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/M9iJ2HG6br4\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/KgoLWsb3VzI\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/yrsSw9txBC4\" height=\"50%\"]\n\n\n[/col]\n\n[/row]\n[gap height=\"15px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Đối tác giáo dục\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=UqnGvBrlyB4\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=t5gZ9DJu42c\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=XYU4zkUP7Cg\" height=\"50%\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Giảng viên\" bg=\"201\" bg_size=\"original\" bg_color=\"rgb(255, 255, 255)\" bg_overlay=\"rgba(219, 219, 219, 0.8)\" class=\"giang-vien\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Đội ngũ giảng viên\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"207\" style=\"bounce\" name=\"Bùi Thảo Nguyên\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Tốt nghiệp 2 trường đại học: University of Bradford và University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"216\" style=\"bounce\" name=\"LIESEL RETIEF\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Chuyên gia chương trình - Crack \'em up, game show phát âm tiếng Anh trên VTV7</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"218\" style=\"bounce\" name=\"Vũ Trung Thanh Ngọc\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Master of Tesol, Victoria University, Australia. Teacher of Langmaster of English since 2018</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"222\" style=\"bounce\" name=\"Nguyễn Thị Loan\" title=\"Manager of Center\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Tốt nghiệp 2 trường đại học: University of Bradford và University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Sự kiện - tin tức\" class=\"su-kien\"]\n\n[row style=\"large\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Sự kiện\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" link_text=\"+ Xem tất cả\" link=\"/category/su-kien/\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"4\" posts=\"1\" show_date=\"text\" excerpt_length=\"34\" comments=\"false\" image_height=\"75%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 246, 246, 0.28)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_pos=\"middle\" text_align=\"left\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.19)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin tức\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" link_text=\"+ Xem tất cả\" link=\"/category/tin-tuc/\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"2\" columns__md=\"1\" cat=\"7\" posts=\"4\" show_date=\"text\" excerpt_length=\"30\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.22)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Truyền thông nói gì về chúng tôi\" class=\"truyen-thong\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Truyền thông nói gì về chúng tôi\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" size=\"110\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\"]\n\n[ux_slider freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"268\"]\n\n[logo img=\"269\"]\n\n[logo img=\"270\"]\n\n[logo img=\"271\"]\n\n[logo img=\"272\"]\n\n[logo img=\"274\"]\n\n[logo img=\"275\"]\n\n[logo img=\"276\"]\n\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký học\" bg=\"279\" bg_size=\"original\" padding=\"45px\" class=\"dang-ky-hoc\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"Đăng ký học thử miễn phí\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #f0f0f0; font-size: 95%;\">(Đăng ký ngay để trải nghiệm hệ thống học tiếng Anh giao tiếp đã giúp hơn 100.000 học viên thành công trên con đường chinh phục tiếng Anh. Và giờ, đến lượt bạn ... )</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-03-17 16:50:58","2019-03-17 09:50:58","","0","https://tppone.com/demo/edu5/?page_id=2","0","page","","0"),
("3","1","2019-03-16 03:19:13","2019-03-16 03:19:13","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/edu5.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-16 03:19:13","2019-03-16 03:19:13","","0","https://tppone.com/demo/edu5/?page_id=3","0","page","","0"),
("19","1","2019-03-16 12:30:54","2019-03-16 05:30:54","","123445-01","","inherit","open","closed","","123445-01","","","2019-03-16 12:30:54","2019-03-16 05:30:54","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/123445-01.jpg","0","attachment","image/jpeg","0"),
("21","1","2019-03-16 12:31:33","2019-03-16 05:31:33","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/cropped-123445-01.jpg","cropped-123445-01.jpg","","inherit","open","closed","","cropped-123445-01-jpg","","","2019-03-16 12:31:33","2019-03-16 05:31:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/cropped-123445-01.jpg","0","attachment","image/jpeg","0"),
("25","1","2019-03-16 12:32:15","2019-03-16 05:32:15","Xu thế hội nhập và toàn cầu hóa, tiếng Anh đã trở thành ngôn ngữ chung của mọi quốc gia. Từ việc giao tiếp đến những cơ hội học tập và làm việc. Tuy nhiên, 90% sinh viên Việt Nam đang gặp khó khăn trong việc giao tiếp bằng tiếng Anh\n\nTrong bối cảnh đó, ngày 11/11/2011, Tổ chức giáo dục quốc tế Langmaster được thành lập nhằm giúp thế hệ trẻ Việt Nam bắt nhịp với xu hướng hội nhập quốc tế và nhu cầu sử dụng tiếng Anh sâu rộng. Chúng tôi luôn nỗ lực trở thành tổ chức giáo dục và đào tạo tiếng Anh hiệu quả nhất bằng cách cung cấp các chương trình đào tạo tiếng Anh kết hợp với huấn luyện về tư duy, truyền cảm hứng và tạo động lực giúp người học phát triển bản thân.\n\nNLP là viết tắt của Neuro-Linguistic Programming (Lập Trình Ngôn Ngữ Tư Duy). Nó chứa đựng ba thành tố có ảnh hưởng lớn nhất đến việc hình thành những kinh nghiệm cá nhân của mỗi chúng ta: thần kinh học, ngôn ngữ học, và các mô thức được lập trình sẵn.\nNLP nghiên cứu tỉ mỉ về cách mỗi cá nhân hành xử theo thói quen như thế nào. Với NLP, chúng ta có thể học hỏi từ người khác những mô thức nào có ích và phục vụ chúng ta. Sau đó chúng ta có thể luyện tập những mô thức mới cho hành vi của mình (giống như tái lập trình não bộ) nhằm tiến bộ hơn trong những trường hợp mà trước kia chúng ta đã ứng xử không hiệu quả.\n\nNLP nhằm vào việc thay đổi tận gốc của hành vi, tức thay đổi lối tư duy dẫn đến hành vi. Cuộc sống, năng lực cũng như trình độ đều là hệ quả của cách chúng ta suy nghĩ. Việc thay đổi tận gốc vì vậy là điều bắt buộc nếu một người muốn nâng cao bất cứ kỹ năng nào, hoặc thay đổi các thói quen đã bám rễ. Trong nhiều trường hợp, việc thay đổi này khá dễ dàng và mang lại hiệu quả cao.\nMr Vas - Một trong 4 bậc thầy về đào tạo NLP tại châu Á: tốt nghiệp 2 trường đại học NLP, được đào tạo trực tiếp bởi GS. Richard Bandler và GS. John Grinder 2 nhà sáng lập ngành lập trình ngôn ngữ tư duy. Hiện nay ông được xem là một trong những Guru về đào tạo ứng dụng Lập trình Ngôn ngữ Tư duy – NLP hàng đầu tại Châu Á, kiêm Sáng lập &amp; CEO Leading Performance Singapore -  ông có hơn 10 năm kinh nghiệm đào tạo về NLP. Cho đến thời điểm hiện tại, ông đã giúp hàng ngàn người ở Singapore, Myanma, Ấn Độ, Việt Nam...thành công đột phá trong cuộc sống bằng cách ứng dụng NLP để khai phá năng lực tiềm ẩn của họ .\n\nBằng việc ứng việc ứng dụng NLP vào các chương trình đào tạo của mình Langmaster đã tạo ra sự thay đổi đột phá trong cuộc sống cũng như học ngoại ngữ nhanh hơn gấp 5 - 10 lần so với cách học truyền thống.\nTính đến tháng 10/2015, sau 4 năm liên tục nghiên cứu và ứng dụng các phương pháp học tập hiện đại, Langmaster đã đào tạo trên 40.000 học viên, tổ chức gần 200 Hội thảo Tiếng Anh, tư duy, kỹ năng sống, định hướng nghề nghiệp cho đối tượng sinh viên các trường đại học, cao đẳng trên địa bàn Hà Nội","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-03-17 17:29:30","2019-03-17 10:29:30","","0","https://tppone.com/demo/edu5/?page_id=25","0","page","","0"),
("27","1","2019-03-16 12:32:20","2019-03-16 05:32:20","<p>Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,</p>\n<p>Lời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.</p>\n<p><a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.</p>\n<p>Tự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.</p>\n<p>Xin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.</p>\n<p>Trân trọng./.</p>\n<p>Admin</p>\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"đĂNG KÝ HỌC THỬ MIỄN PHÍ\" tag_name=\"h2\" color=\"rgb(24, 75, 140)\"]\n\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2019-03-17 18:15:34","2019-03-17 11:15:34","","0","https://tppone.com/demo/edu5/?page_id=27","0","page","","0"),
("29","1","2019-03-16 12:32:26","2019-03-16 05:32:26","[ux_image id=\"444\" image_size=\"original\" height=\"27%\"]\n\n[section label=\"Phương pháp 1\" class=\"phuong-phap1\"]\n\n[row]\n\n[col span=\"7\" span__sm=\"12\"]\n\n[title text=\"Kết quả nghiên cứu\" color=\"rgb(20, 74, 155)\" size=\"110\"]\n\n<p><span style=\"font-size: 95%;\">Tính đến hết năm 2016, Langmaster đã đào tạo được hơn 100.000 học viên. Kết quả khảo sát trình độ đầu vào cho thấy:</span></p>\n<p><span style=\"font-size: 95%;\">Trung bình một người Việt Nam mất khoảng 7 - 12 năm (từ bậc tiểu học đến đại học) để học tiếng Anh, trong đó chỉ 8.77% có khả năng sử dụng tiếng Anh lưu loát, còn lại 92.22% không thể giao tiếp được bằng tiếng Anh.</span></p>\n<p><span style=\"font-size: 95%;\">Để khắc phục tình trạng này, Langmaster đã nghiên cứu và ứng dụng phương pháp học bằng trải nghiệm Experiential Learning Cycle (viết tắt là ELC) của TS David A.</span></p>\n<p><span style=\"font-size: 95%;\">Kolb thuộc ĐH Hardvard để giúp người học tiếng Anh thay đổi nhận thức, thói quen và tìm ra phương pháp học tiếng Anh hiệu quả nhất.</span></p>\n[button text=\"Đăng ký học thử miễn phí\" link=\"/lien-he\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"450\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Phương pháp 2\" bg=\"485\" bg_size=\"original\" padding=\"35px\" class=\"phuong-phap2\"]\n\n[row style=\"large\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title text=\"Bạn có đang gặp phải các vấn đề sau\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"22px\"]\n\n[featured_box img=\"470\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"color: #ffffff; font-size: 90%;\">Hạn chế vốn từ, cách diễn đạt: bạn luôn có xu hướng tập trung suy nghĩ bằng tiếng Việt sau đó dịch sang tiếng Anh. Điều này dẫn đến phản xạ chậm khi giao tiếp.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"474\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">Thiếu tự tin khi sử dụng tiếng Anh: học viên luôn sợ sai khi nói nên có xu hướng nghe giảng viên nói nhiều hơn.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"478\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">Học mà không áp dụng được: Học nhiều lí thuyết nhưng không áp dụng vào thực tế hay phản xạ được khi cần thiết.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"480\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">Động lực học chưa cao: Theo phương pháp các bài kiểm tra, không có hứng thú học tiếng Anh.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n\n<h2 class=\"title\" style=\"text-align: right;\">Phương pháp ELC là gì?</h2>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">Experiential Learning Cycle (ELC), là phương pháp học bằng trải nghiệm được phát triển dựa trên phát minh về phương pháp học của tiến sĩ tâm lí xã hội học Đại Học Hardvard David A. Kolb vào năm 1984.</span></p>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">Phương pháp này dựa trên mô hình Kim Tự Tháp học tập, trong đó thể hiện phần trăm hiệu quả ghi nhớ kiến thức và ứng dụng của người học của các hình thức đào tạo khác nhau.</span></p>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">Với sự hiểu biết này, ELC kết hợp tất cả những hình thức học tập nêu trên để tối đa hóa khả năng ứng dụng tiếng Anh của học viên.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"490\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"121\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Điểm nổi bật của phương pháp ELC\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"498\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">Hệ thống bài học</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">Hệ thống bài học được thiết kế công phu, khoa học và hấp dẫn, giúp học viên học sâu qua các chủ đề giao tiếp thông dụng: travel, shopping, family, job ...</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"502\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">Trải nghiệm thực tế</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">Ứng dụng khoa học NLP trong nghiên cứu tư duy và tiềm thức con người, phương pháp ELC giúp học viên ghi nhớ lâu những kiến thức được học thông qua trải nghiệm trực tiếp và quá trình lặp đi lặp lại nhiều lần.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"506\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">Phương pháp giáo dục đặc biệt</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">Ứng dụng phương pháp TPR: bằng việc ứng dụng hình ảnh, âm thanh, hành động và cảm xúc vào việc học từ vựng, học viên sẽ ghi nhớ từ vựng lâu hơn, hiệu quả hơn và có hứng thú hơn khi học..</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section padding=\"35px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"6 lý do nên chọn phương pháp học bằng trải nghiệm ELC\" tag_name=\"h2\" color=\"rgb(20, 75, 156)\" size=\"110\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"514\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 95%;\">01. Làm giàu vốn từ vựng</span></h3>\n<p><span style=\"font-size: 90%;\">Học viên chia sẻ với nhau những từ vựng đã biết, và sẽ nhanh chóng tiếp thu được từ vựng mới dựa vào trải nghiệm các tình huống giao tiếp thực tế.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"519\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">03. Học ngữ pháp một cách thú vị</span></h3>\n<p><span style=\"font-size: 90%;\">Các bài học áp dụng ELC không chỉ dừng ở việc học từ vựng mà còn cung cấp kiến thức ngữ pháp qua những tình huống cụ thể mà học viên có thể gặp trong cuộc sống thường ngày. Khác với việc nghe và ghi chép ngữ pháp một cách khô khan trước đây, học viên sẽ cảm nhận việc học thú vị hơn bao giờ hết.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"523\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">05. Rèn luyện tư duy và phản xạ bằng tiếng Anh</span></h3>\n<p><span style=\"font-size: 90%;\">Quá trình trải nghiệm, đúc kết kinh nghiệm và thực hành sẽ dần hình thành lối tư duy bằng tiếng Anh của học viên. Đặc biệt, phản xạ trong giao tiếp cũng sẽ được cải thiện. Rút ngắn hình thức dịch sang tiếng Anh từ tiếng Việt khi tư duy trong quá trình giao tiếp.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"527\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"font-size: 90%;\"><strong><span style=\"color: #ed1c24;\">02. Làm chủ các tình huống giao tiếp thông dụng</span></strong></span></h3>\n<p><span style=\"font-size: 90%;\">Được thiết kế dựa trên các video, tài liệu thực về các tình huống giao tiếp thông dụng nhất theo tiêu chuẩn của Đại học Cambridge và Oxford. Phương pháp ELC sẽ giúp học viên được trực tiếp trải nghiệm và thực hành những tình huống giao tiếp một cách tự nhiên, gần gũi nhất</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"529\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"font-size: 90%; color: #ed1c24;\">04. Ngữ âm và ngữ điệu của người bản ngữ</span></h3>\n<p><span style=\"font-size: 90%;\">Hệ thống bài học của ELC được thiết kế từ tài liệu thực, cộng với sự tối đa thực hành giao tiếp tiếng Anh, học viên sẽ nắm bắt được cách phát âm và ngữ điệu trong giao tiếp của người bản địa.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"531\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">06. Thay đổi thái độ, thói quen học ngoại ngữ</span></h3>\n<p><span style=\"font-size: 90%;\">Và quan trọng hơn cả, phương pháp ELC cung cấp cho học viên những công cụ giúp thay đổi tinh thần, thái độ và thói quen trong việc học tiếng Anh</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"279\" bg_size=\"original\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"Đăng ký học thử miễn phí\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%; color: #ffffff;\">(Đăng ký ngay để trải nghiệm hệ thống học tiếng Anh giao tiếp đã giúp hơn 100.000 học viên thành công trên con đường chinh phục tiếng Anh. Và giờ, đến lượt bạn … )</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Phương pháp","","publish","closed","closed","","phuong-phap","","","2019-03-17 19:24:24","2019-03-17 12:24:24","","0","https://tppone.com/demo/edu5/?page_id=29","0","page","","0"),
("31","1","2019-03-16 12:32:50","2019-03-16 05:32:50","[section label=\"Giảng viên\" bg_color=\"rgb(255, 255, 255)\" padding=\"11px\" class=\"giang-vien\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"207\" style=\"bounce\" name=\"Bùi Thảo Nguyên\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Tốt nghiệp 2 trường đại học: University of Bradford và University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"216\" style=\"bounce\" name=\"LIESEL RETIEF\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Chuyên gia chương trình - Crack \'em up, game show phát âm tiếng Anh trên VTV7</p>\n\n[/team_member]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"218\" style=\"bounce\" name=\"Vũ Trung Thanh Ngọc\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Master of Tesol, Victoria University, Australia. Teacher of Langmaster of English since 2018</p>\n\n[/team_member]\n\n[/col]\n\n[/row]\n\n[/section]","Đội ngũ đào tạo","","publish","closed","closed","","doi-ngu-dao-tao","","","2019-03-17 19:29:54","2019-03-17 12:29:54","","0","https://tppone.com/demo/edu5/?page_id=31","0","page","","0"),
("33","1","2019-03-16 12:32:56","2019-03-16 05:32:56","<p><span style=\"font-size: 95%;\">Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,</span></p>\n<p><span style=\"font-size: 95%;\">Lời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.</span></p>\n<p><span style=\"font-size: 95%;\"><a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.</span></p>\n<p><span style=\"font-size: 95%;\">Sau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.</span></p>\n<p><span style=\"font-size: 95%;\">Tự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.</span></p>\n<p><span style=\"font-size: 95%;\">Xin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.</span></p>\n<p><span style=\"font-size: 95%;\">Trân trọng./.</span></p>\n<p><span style=\"font-size: 95%;\">Admin</span></p>","Khóa học","","publish","closed","closed","","khoa-hoc","","","2019-03-17 19:31:17","2019-03-17 12:31:17","","0","https://tppone.com/demo/edu5/?page_id=33","0","page","","0"),
("35","1","2019-03-16 12:33:03","2019-03-16 05:33:03","[ux_image id=\"559\" image_size=\"original\"]\n\n[section bg=\"121\" bg_size=\"original\" class=\"mo-hinh-hoc-2\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\"]\n\n[title style=\"center\" text=\"Mô hình học khác biệt\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n<div class=\"box_content\">\n<p class=\"detail\"><span style=\"font-size: 100%;\">Thấu hiểu những khó khăn trên con đường bắt đầu chinh phục khả năng tiếng Anh của các bạn học viên tại Việt Nam, Langmaster đã xây dựng lộ trình khởi đầu nền tảng. Với lộ trình này, các bạn sẽ được bắt đầu hoàn thiện khả năng phát âm và từ đó xây dựng nền tảng giao tiếp những chủ đề căn bản trong tiếng Anh.</span></p>\n<p class=\"detail\"><span style=\"font-size: 100%;\">Song song với con đường nâng cao năng lực tiếng Anh, Langmaster mong muốn giúp các bạn có thể tự tin hội nhập trong thời kỳ đổi mới bằng cách nâng cao 6 nhóm năng lực làm việc thiết yếu để thích nghi với sự biến đổi của thế giới.</span></p>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","Lộ trình học","","publish","closed","closed","","lo-trinh-hoc","","","2019-03-17 19:38:54","2019-03-17 12:38:54","","0","https://tppone.com/demo/edu5/?page_id=35","0","page","","0"),
("37","1","2019-03-16 12:33:10","2019-03-16 05:33:10","[section bg=\"279\" class=\"cam-nhan-2\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Cảm nhận học viên\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%; color: #ffffff;\">Mời các bạn cùng theo dõi một số đánh giá, cảm nhận của học viên đã và đang theo học tại trung tâm chúng tôi:</span></p>\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"593\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"593\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(244, 244, 244)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Video cảm nhận của học viên\" tag_name=\"h2\" color=\"rgb(2, 54, 141)\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/M9iJ2HG6br4\" height=\"50%\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/KgoLWsb3VzI\" height=\"50%\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/yrsSw9txBC4\" height=\"50%\"]\n\n[/col]\n\n[/row]\n\n[/section]","Cảm nhận học viên","","publish","closed","closed","","cam-nhan-hoc-vien","","","2019-03-17 19:44:19","2019-03-17 12:44:19","","0","https://tppone.com/demo/edu5/?page_id=37","0","page","","0"),
("39","1","2019-03-16 12:33:16","2019-03-16 05:33:16","“Ở châu Á có 3 quốc gia <strong>học tiếng Anh giao tiếp</strong> được giảng dạy chính thức tại trường học từ lớp 1 đến lớp 12: Singapore, Philippin và Ấn Độ, lao động của các nước này lợi thế hơn hẳn các nước còn lại.\nVí như Philippin, những vùng nông thôn xa xôi và khó khăn, trẻ em ở đây nghỉ học từ lớp 3 nhưng những câu tiếng Anh đơn giản như giặt đồ, nấu cơm, lau nhà … họ đã được học từ 3 năm trước nên họ đi xuất khẩu lao động. Người Philippin ra nước ngoài, sang Việt Nam làm <em>giáo viên tiếng Anh</em>, ca sĩ, y tá cũng rất nhiều. Theo thống kê năm 2012, riêng lượng ngoại tệ người Philippin chuyển về để xây dựng đất nước là 26 tỷ đô la Mỹ.Trong cuốn sách nổi tiếng của Thomas L Friedman – The world is Flat (Thế giới phẳng) kể nhiều về hành trình của tác giả trên đất Ấn, có đoạn kể lại “Tại một tòa nhà IMB, những cô cậu tự xưng mình là Mike, Robert, Emily … đang tư vấn cho khách hàng ở nửa kia của trái đất bằng giọng Anh Mỹ rất chuyên nghiệp. Lao động Mỹ đang mất việc làm ngay trên đất nước của mình”. Đó là những gì đang xảy ra ở đất nước Ấn Độ.\n\n3 tháng gần đây bạn đã tham gia bao nhiêu hội thảo quốc tế mà chuyên gia là người Singapore nói tiếng Anh?Nếu bố mẹ bạn không học tiếng Anh, bạn không học tiếng Anh, rồi ít nữa con của bạn không học tiếng Anh … thì cái viễn cảnh “Lao động Việt Nam đang mất việc ngay trên đất nước mình” cũng không còn xa xôi gì nữa.Bác Hồ có thể nói trôi chảy 12 ngôn ngữ, có những nguồn tin đưa ra con số lớn hơn. Thời đó Bác học tiếng Anh như thế nào hay vậy?Người ta chạy ra chợ mua vài tờ Vietnam News hay Saigon News, dịch hết qua tiếng Việt, rồi lấy tiếng Việt dịch lại tiếng Anh, so sánh với bản gốc.Đến khi có Internet, chỉ cần ngồi ở nhà, với vài cú nhấp chuột trên Google là bạn có ngay một “Bí kíp nói tiếng Anh” hay “Thần kíp học từ vựng”. Vài cụm từ “Free English lesson” hay “Learning English” trên Youtube thì có đến hàng ngàn Video giọng bản xứ được search ra.\n\nBạn thân mến, nói tiếng Anh cũng là một kỹ năng, muốn có nó bạn phải dành thời gian luyện tập. Càng luyện tập nhiều bạn càng giỏi. Thời xưa các ông các bác xin vào mấy khách sạn lớn làm nhân viên mở cửa, mấy tàu lớn làm phụ bếp, dọn cơm. Thời nay có điều kiện hơn người ta đi mấy trung tâm, câu lạc bộ hay các điểm du lịch có nhiều Tây để luyện tập.\n\nDù là thời nào, “bí kíp” có thần kỳ đến mấy thì bạn vẫn PHẢI DÀNH THỜI GIAN LUYỆN TẬP, việc BIẾT phương pháp chỉ giúp bạn định hướng và rút ngắn thời gian sai lầm của bạn đi mà thôi. Không còn cách nào khác đâu!","Câu lạc bộ","","publish","closed","closed","","cau-lac-bo","","","2019-03-17 18:18:30","2019-03-17 11:18:30","","0","https://tppone.com/demo/edu5/?page_id=39","0","page","","0"),
("41","1","2019-03-16 12:33:24","2019-03-16 05:33:24","[ux_gallery ids=\"241,238,235,232,229,226,222,218,216,207\" col_spacing=\"xsmall\" columns=\"3\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]","Thư viện","","publish","closed","closed","","thu-vien","","","2019-03-17 18:23:21","2019-03-17 11:23:21","","0","https://tppone.com/demo/edu5/?page_id=41","0","page","","0"),
("46","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","46","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=46","6","nav_menu_item","","0"),
("47","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","47","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=47","5","nav_menu_item","","0"),
("48","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","48","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=48","4","nav_menu_item","","0"),
("49","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","49","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=49","3","nav_menu_item","","0"),
("50","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","50","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=50","2","nav_menu_item","","0"),
("53","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","53","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=53","1","nav_menu_item","","0"),
("58","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","58","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=58","3","nav_menu_item","","0"),
("59","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","59","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=59","4","nav_menu_item","","0"),
("60","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","60","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=60","1","nav_menu_item","","0"),
("74","1","2019-03-16 12:46:37","2019-03-16 05:46:37","","slider02","","inherit","open","closed","","slider02","","","2019-03-16 12:46:37","2019-03-16 05:46:37","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/slider02.jpg","0","attachment","image/jpeg","0"),
("77","1","2019-03-16 12:52:30","2019-03-16 05:52:30","","slider03","","inherit","open","closed","","slider03","","","2019-03-16 12:52:30","2019-03-16 05:52:30","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/slider03.jpg","0","attachment","image/jpeg","0"),
("87","1","2019-03-16 12:55:50","2019-03-16 05:55:50","","icon1","","inherit","open","closed","","icon1","","","2019-03-16 12:55:50","2019-03-16 05:55:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon1.png","0","attachment","image/png","0"),
("88","1","2019-03-16 12:55:51","2019-03-16 05:55:51","","icon2","","inherit","open","closed","","icon2","","","2019-03-16 12:55:51","2019-03-16 05:55:51","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon2.png","0","attachment","image/png","0"),
("89","1","2019-03-16 12:55:51","2019-03-16 05:55:51","","icon3","","inherit","open","closed","","icon3","","","2019-03-16 12:55:51","2019-03-16 05:55:51","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon3.png","0","attachment","image/png","0"),
("90","1","2019-03-16 12:55:52","2019-03-16 05:55:52","","icon4","","inherit","open","closed","","icon4","","","2019-03-16 12:55:52","2019-03-16 05:55:52","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon4.png","0","attachment","image/png","0"),
("121","1","2019-03-17 14:58:36","2019-03-17 07:58:36","","bg-2","","inherit","open","closed","","bg-2","","","2019-03-17 14:58:36","2019-03-17 07:58:36","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg-2.jpg","0","attachment","image/jpeg","0"),
("148","1","2019-03-17 15:19:43","2019-03-17 08:19:43","","4ce-1 (1)","","inherit","open","closed","","4ce-1-1","","","2019-03-17 15:19:43","2019-03-17 08:19:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-1-1.png","0","attachment","image/png","0"),
("154","1","2019-03-17 15:22:42","2019-03-17 08:22:42","","4ce-2","","inherit","open","closed","","4ce-2","","","2019-03-17 15:22:42","2019-03-17 08:22:42","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-2.png","0","attachment","image/png","0"),
("156","1","2019-03-17 15:23:29","2019-03-17 08:23:29","","4ce-3","","inherit","open","closed","","4ce-3","","","2019-03-17 15:23:29","2019-03-17 08:23:29","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-3.png","0","attachment","image/png","0"),
("158","1","2019-03-17 15:24:15","2019-03-17 08:24:15","","4ce-5","","inherit","open","closed","","4ce-5","","","2019-03-17 15:24:15","2019-03-17 08:24:15","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-5.png","0","attachment","image/png","0"),
("166","1","2019-03-17 15:29:59","2019-03-17 08:29:59","","4ce-4","","inherit","open","closed","","4ce-4","","","2019-03-17 15:29:59","2019-03-17 08:29:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-4.png","0","attachment","image/png","0"),
("201","1","2019-03-17 15:54:28","2019-03-17 08:54:28","","giangvien-bg","","inherit","open","closed","","giangvien-bg","","","2019-03-17 15:54:28","2019-03-17 08:54:28","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-bg.jpg","0","attachment","image/jpeg","0"),
("207","1","2019-03-17 15:57:35","2019-03-17 08:57:35","","pic1","","inherit","open","closed","","pic1","","","2019-03-17 15:57:35","2019-03-17 08:57:35","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/pic1.jpg","0","attachment","image/jpeg","0"),
("216","1","2019-03-17 16:03:39","2019-03-17 09:03:39","","giangvien-3","","inherit","open","closed","","giangvien-3","","","2019-03-17 16:03:39","2019-03-17 09:03:39","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-3.jpg","0","attachment","image/jpeg","0"),
("218","1","2019-03-17 16:04:22","2019-03-17 09:04:22","","giangvien-5","","inherit","open","closed","","giangvien-5","","","2019-03-17 16:04:22","2019-03-17 09:04:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-5.jpg","0","attachment","image/jpeg","0"),
("222","1","2019-03-17 16:05:09","2019-03-17 09:05:09","","giangvien-13","","inherit","open","closed","","giangvien-13","","","2019-03-17 16:05:09","2019-03-17 09:05:09","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-13.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-03-17 16:07:29","2019-03-17 09:07:29","<div><strong>Tuần cuối cùng trước khi Tết đến với từng nhà, trong khi mọi người tranh thủ đi may một chiếc áo dài mới đón tết hay sắm đồ Tết cho gia đình thì chúng tôi- 20 con người, quyết định dành một ngày chủ nhật cho các em nhỏ mồ côi ở chùa Thịnh Đại, Hà Nam.</strong></div>\n<div></div>\n<div>Đón chúng tôi là sự rụt rè, là những ánh mắt mang nỗi buồn khó có thể diễn tả được, là những sự háo hức mong chờ của những em bé mang mảnh đời không được may mắn như bao nhiêu người khác. Sự bỡ ngỡ ban đầu nhường cho không khí khẩn trương vận chuyển đồ quyên góp.</div>\n<div>Sự rụt rè của các em lúc đầu được dần thay thế bằng sự tò mò khi có các anh chị cùng các em tham gia các chương trình đố vui có thưởng, cùng xé dán theo nhóm và nhảy tập thể. Những gương mặt ngây thơ, những nụ cười hồn nhiên, không vướng bận gieo vào lòng chúng tôi một nỗi buồn thương và sự biết ơn với sư thầy trụ trì rất lớn.</div>\n<div>Ngoài sự hỗ trợ hàng hóa, đồ dùng thiết yếu cho cuộc sống thầy trò các bé. Langmaster cũng ủng hộ quỹ tiền mặt 40 triệu đồng được quyên góp từ rất nhiều học viên và nhân viên trong suốt chiến dịch kéo dài 21 ngày đêm</div>\n<div>\n<div>Lúc này không còn phân biệt đại diện công ty, giảng viên, trợ giảng, học viên nữa mà là những tấm lòng mong muốn mang lại nụ cười trên môi các em, cho các e được đủ đầy dù chỉ một chút về vật chất và rất rất nhiều tình yêu thương.</div>\n<div></div>\n<div>Khi chúng tôi chuẩn bị quay lưng đi về thì bắt gặp những ánh mắt ấy- ánh mắt nửa như mong muốn các anh chị ở lại thêm một chút nữa, nữa không dám giữ vì thầy bảo muộn rồi cũng nên để các anh chị về. Chúng tôi cứ suy nghĩ mãi về những nụ cười ấy, ánh mắt ấy, sự ngây thơ của các em khiến cả đoàn khi ra về không ai nói gì với ai mà đều theo đuổi những suy nghĩ và tâm tư cho riêng mình. Nhưng chắc chắn một điều, là sau chuyến đi này, chúng tôi sẽ trân trọng cuộc sống, gia đình và cố gắng hơn nữa để những chuyến tình nguyện kéo dài mãi.</div>\n<div></div>\n<div>“Chúng ta sẽ quyên 300 triệu cho xây trường trên vùng cao cho các em bé dân tộc nếu chúng ta cùng nhau cố gắng trong năm nay.”</div>\n<div></div>\n<div>Những lời ấy khiến chúng tôi có động lực hơn và tràn đầy quyết tâm để biến mong ước thiện nguyện được thành hiện thực.</div>\n<div></div>\n<div>Một chuyến đi mang những bài học của cả một tuổi trẻ !!!</div>\n</div>","Chương trình từ thiện vùng cao của Langmaster ngày 12 tháng 3","","publish","open","open","","chuong-trinh-tu-thien-ngay-27-1-2019-cung-langmaster","","","2019-03-17 17:43:50","2019-03-17 10:43:50","","0","https://tppone.com/demo/edu5/?p=225","0","post","","0"),
("226","1","2019-03-17 16:07:25","2019-03-17 09:07:25","","DSC-3797-compressed","","inherit","open","closed","","dsc-3797-compressed","","","2019-03-17 16:07:25","2019-03-17 09:07:25","","225","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/DSC-3797-compressed.jpg","0","attachment","image/jpeg","0"),
("228","1","2019-03-17 16:08:17","2019-03-17 09:08:17","<strong>Đến hẹn lại lên, không khí Giáng sinh ấm áp, an lành đã lan tỏa đến mọi cơ sở, mọi lớp học của Langmaster ngay trong đêm 25/12 mà trong đó, chúng mình đã cùng với các bạn học viên yêu mến tổ chức nhiều hoạt động thú vị.</strong>\n\nChỉ cần bước chân vào một cơ sở Langmaster bất kì, bạn sẽ cảm nhận ngay bầu không khí Giáng sinh ngập tràn xung quanh mình, đâu đâu cũng là ông già tuyết, cây thông noel, những bông tuyết và bóng bay ngộ nghĩnh báo hiệu một mùa Giáng sinh an lành lại về với Lang. Thật vậy, Langer chúng mình cũng háo hức mong chờ những điều tốt đẹp và sự kiện tưng bừng để cùng cả lớp vui chơi, tạo nên những kỷ niệm màu sắc, đáng nhớ.\n\nĐối với chúng mình, thanh xuân là cùng nhau học tập, cùng nhau vui chơi hết mình. Ngoài kia, Giáng sinh an lành đã len lỏi đến mọi ngóc ngách của từng con phố. Nhưng trong những lớp học tiếng Anh giao tiếp Langmaster, chúng mình không gọi đó là từ “an lành” mà là “bùng nổ”!!!\n\n2018 là một năm đặc biệt dành cho Langmaster đánh dấu chặng đường 7 năm với đầy đủ những nốt thăng, nốt trầm. Cùng nhau, chúng mình đã trải qua biết bao nhiêu kỷ niệm đáng nhớ từ chuỗi hội thảo Hành trang tân sinh viên với bác Lê Thẩm Dương giúp chúng mình trưởng thành hơn trong cuộc sống, chuỗi hội thảo Toàn cầu hóa với bác Alok giúp định hướng sự nghiệp đến hội trại Langmaster International Fair để trau dồi khả năng thực hành và làm chủ tiếng Anh.\n\n&nbsp;\n\nCuối cùng, Giáng sinh cùng Langmaster là chương trình khép lại một năm 2018 đầy màu sắc, chúc các bạn một mùa Giáng sinh và năm mới an lành, hạnh phúc và tràn ngập niềm vui!!! Merry Christmas and Happy New Year !!!","Rạo rực đón mừng Giáng sinh cùng Langmaster","","publish","open","open","","rao-ruc-don-giang-sinh-cung-langmaster","","","2019-03-17 17:42:57","2019-03-17 10:42:57","","0","https://tppone.com/demo/edu5/?p=228","0","post","","0"),
("229","1","2019-03-17 16:08:15","2019-03-17 09:08:15","","DSC-2759","","inherit","open","closed","","dsc-2759","","","2019-03-17 16:08:15","2019-03-17 09:08:15","","228","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/DSC-2759.jpg","0","attachment","image/jpeg","0"),
("231","1","2019-03-17 16:09:26","2019-03-17 09:09:26","<p style=\"font-weight: 400;\">HÀNH TRANG TÂN SINH VIÊN - NHỮNG BÀI HỌC Ý NGHĨA</p>\n<p style=\"font-weight: 400;\">Chuỗi chương trình Hành trang tân sinh viên đã kết thúc, trong suốt 2 tháng đồng hành cùng các bạn tân sinh viên, tại 4 trường đại học lớn của thủ đô. Langmaster và Báo Sinh Viên Việt Nam gửi lời cảm ơn sâu sắc đến các bạn sinh viên luôn đồng hành cùng với chúng tôi để đem đến sự thay đổi cho chính mình, trang bị kiến thức để bước chân vào giảng đường không còn bỡ ngỡ, mông lung trước những định hướng của tương lai.</p>\n<p style=\"font-weight: 400;\">“Nếu Tuổi trẻ như một tấm gỗ lim, thì giai đoạn 18-25 chính là giai đoạn tạo ra bản lề. Cánh cửa gỗ lim dù có chắc nhưng cái bản lề hư thì cánh cửa cuộc đời cũng không thể đóng được.” Đây là câu nói nổi tiếng của TS Lê Thẩm Dương, gửi đến các bạn trẻ. Như một lời nhắc nhở về những định hướng trong tương lai của các bạn ra sao đều phụ thuộc vào quãng thời gian thanh xuân đôi mươi này.</p>\n<p style=\"font-weight: 400;\">Tham gia chuỗi chương trình Hành trang tân sinh viên TS Lê Thẩm Dương gửi đến các bạn những bài giảng: Định vị và phát triển bản thân, Tư duy đột phá trong thời đại 4.0, Nghệ thuật giao tiếp và ứng xử thông minh, Thái độ hay trình độ. Qua đây giúp các bạn tân sinh viên hiểu được chính mình, xác định đúng mục tiêu và có định hướng phát triển các kỹ năng, kiến thức như:tiếng Anh, kỹ năng giao tiếp, kĩ năng xử lý tình huống, thái độ làm việc.</p>\n<p style=\"font-weight: 400;\">Nói về chương trình Hành trang Tân sinh viên, Langmaster cùng các nhà đồng hành chương trình đã trao hơn 50 suất học bổng và hàng trăm quà tặng dành tặng các bạn sinh viên đến tham dự chương trình. Đây cũng là phần quà khích lệ các bạn vững tin học tập, trải nghiệm các khóa học tiếng Anh và kỹ năng tại Langmaster.</p>\n<p style=\"font-weight: 400;\">Cuộc sống là chuỗi những ngày dài nối tiếp nhau, chúng ta đi tìm bản thân mình cốt để được làm việc, cống hiến, thành công và hạnh phúc. Chúc các bạn luôn đủ lửa để thắp sáng đam mê, biến nó thành hiện thực.</p>\n<p style=\"font-weight: 400;\">ẹn gặp lại các bạn, trong các chương trình đồng hành cùng sinh viên của Langmaster.</p>","Hành trang tân sinh viên - những bài học ý nghĩa","","publish","open","open","","anh-trang-tan-sinh-vien-nhung-bai-hoc-y-nghia","","","2019-03-17 17:42:38","2019-03-17 10:42:38","","0","https://tppone.com/demo/edu5/?p=231","0","post","","0"),
("232","1","2019-03-17 16:09:23","2019-03-17 09:09:23","","Bell_Cambridge_Classroom-copia-2","","inherit","open","closed","","bell_cambridge_classroom-copia-2","","","2019-03-17 16:09:23","2019-03-17 09:09:23","","231","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/Bell_Cambridge_Classroom-copia-2.jpg","0","attachment","image/jpeg","0"),
("234","1","2019-03-17 16:10:33","2019-03-17 09:10:33","<p style=\"font-weight: 400;\">Nhưng chúng ta luôn sống trong hai nỗi sợ lớn là: Sợ những gì mình không biết tức luôn lo âu việc mình không hoàn hảo và sợ việc bỏ lỡ tương lai. Điều này chi phối đến suy nghĩ và những gì bạn làm trong sự nghiệp.</p>\n<p style=\"font-weight: 400;\">Chắc hẳn bạn biết đến Mô hình chiến lược con nhím, đó là sự kết hợp của 3 yếu tố: Thứ bạn thích + thứ bạn giỏi + khả năng kiếm được tiền, thứ xã hội cần. Trên lý thuyết là bạn cần hiểu rõ chính mình thông qua việc phân tích ba yếu tố đó. Nhưng thực tế thì yêu cầu bạn làm chi tiết hơn.</p>\n<p style=\"font-weight: 400;\">Tại buổi hội thảo: Toàn cầu hóa dẫn đầu hay bị bỏ lại, TS Alok đã chia sẻ 5 quỹ đạo trên con đường sự nghiệp của bạn</p>\nĐầu tiên, Qũy đạo khám phá: Không ai hiểu mình bằng chính mình cả. Chỉ có hiểu bản thân muốn gì, đang như thế nào thì mới xác định  được định hướng công việc cũng như hiểu để thay đổi điểm yếu và phát huy điểm mạnh. TS Alok đã chia sẻ cách bạn tìm kiếm chính mình với mô hình “Mi - VIPD” được hiểu là: Tư duy (Mindset), Giá trị (Values), Quan tâm (Interests), Tính cách (Personality), Động cơ (Drivers).\n<p style=\"font-weight: 400;\">Qũy đạo số 3 là Qũy đạo NĂNG LỰC: Tài sản giá trị nhất của một đời người không phải là bạn có nhiều đất đai, nhà cửa, xe cộ, mà tài sản lớn nhất đó là trong những năm tháng tuổi trẻ bạn trang bị cho mình được Kinh nghiệm + Kiến thức + Kỹ năng. Để có được những cái đó đòi hỏi bạn cần đầu tư lớn cho công cuộc xây dựng, nâng cao năng lực bản thân</p>\n<p style=\"font-weight: 400;\">Bước sang quỹ đạo thứ 4 đòi hỏi kiềng ba chân đã vững vàng, đây là quỹ đạo sự TÍN NHIỆM. Tức là thời điểm bạn bước chân vào quỹ đạo này, chính bạn đã có được sự tin tưởng, tín nhiệm từ lãnh đạo, đồng nghiệp. Bây giờ là lúc bạn không chỉ chú trọng vào kết quả, hiệu quả công việc mình làm ra mà còn là người dẫn dắt, định hướng, là cánh tay phải giúp CEO của mình cùng phát triển doanh nghiệp</p>\n<p style=\"font-weight: 400;\">Điểm đích cuối cùng vô cùng gian nan và khó khăn, quỹ đạo ẢNH HƯỞNG TO LỚN: Thử tưởng tượng bạn trèo lên một ngọn núi, khi bước lên đỉnh cảm giác thật tuyệt, thật đáng tự hào đúng không? Bây giờ khi ai đó hỏi về cuộc hành trình leo núi của bạn thì bạn đều kể với sự trải nghiệm, những khó khăn bạn trải qua, cùng những bài học trong suốt hành trình. Mọi người đều lắng nghe bạn với sự tin tưởng, sự ngưỡng mộ, sự thần tượng… đó là quỹ đạo của sự ảnh hưởng lớn.</p>\n<p style=\"font-weight: 400;\">Đi qua 5 quỹ đạo trong quá trình gây dựng sự nghiệp bạn sẽ nhận ra rằng tốc độ và độ cao thăng tiến vô cùng khác nhau. Bạn có thể lao nhanh như tên lửa để đến đích, nhưng cũng có thể đi như một chú rùa vững từng bước qua từng giai đoạn, đó là chiến lược chậm mà chắc. Hãy nhớ rằng bạn đang chạy đường dài chứ không phải chạy tiếp sức, về nước rút nhé.</p>","Hội thảo toàn cầu hóa: dẫn đầu hay bị loại bỏ?","","publish","open","open","","hoi-thao-toan-cau-hoa-dan-dau-hay-bi-bo-lai","","","2019-03-17 17:41:57","2019-03-17 10:41:57","","0","https://tppone.com/demo/edu5/?p=234","0","post","","0"),
("235","1","2019-03-17 16:10:27","2019-03-17 09:10:27","","IMG-7949","","inherit","open","closed","","img-7949","","","2019-03-17 16:10:27","2019-03-17 09:10:27","","234","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/IMG-7949.jpg","0","attachment","image/jpeg","0"),
("237","1","2019-03-17 16:11:08","2019-03-17 09:11:08","<div><strong>Chặng đường 7 năm đã đi qua của Langmaster EduTech Group ghi dấu những mốc phát triển và trưởng thành trong sóng gió. Chúng tôi tự hào về những giá trị đã mang đến cho cộng đồng và bản lĩnh đi qua vô vàn thử thách.</strong></div>\n<div></div>\n<div>Lễ kỷ niệm 7 năm thành lập Langmaster EduTech Group: Proud &amp; Brave ngày 24/11 là dịp để chúng tôi cùng nhìn lại chặng đường đã qua, những đóng góp được cộng đồng ghi nhận và hướng đến ư thành công mới trong tương lai. Chương trình đã mang đến những cung bậc cảm xúc và vinh hạnh nhận được sự tham gia, chúc mừng của các khách mời.</div>\n<div></div>\n<div>Xin cảm ơn các đồng đội đã luôn đồng hành, gắn bó cùng nhau trong suốt thời gian qua. Xin cảm ơn các khách hàng, đối tác và những người bạn vì đã luôn tin yêu và ủng hộ chúng tôi.</div>\n<div></div>\n<div>Chúng ta tự hào về những giá trị đã cùng nhau kiến tạo và tin tưởng vào con đường phía trước.</div>\n<div>Hãy một lần nữa cùng nhìn lại những dấu ấn, khoảnh khắc ấn tượng vừa qua!</div>\n<div>\n<div>\n\nTrước 16h00 những khâu tổ chức chuẩn bị cuối cùng đã được hoàn thiện để mang đến cho mỗi người tham những ấn tượng đặc biệt nhất\n\n</div>\n&nbsp;\n\n<img src=\"https://langmaster.edu.vn/public/files/post-upload/images/Sinh-nhat-Lang-24-11-2018/1---SN-Lang-2018.jpg\" alt=\"\" />\n<div>\n\n<em>Những hình ảnh đi kèm với tâm như của thế hệ Langer hiện tại về ước mơ</em>\n\n<em>mà chúng mình muốn cùng Langmaster thực hiện trong năm tới</em>\n\nBước sang phần 2 của Chương trình nội bộ, tất cả mọi người đã có cơ hội cùng nhau nhìn lại hành trình 7 năm đã qua. Những niềm vui, những nỗi buồn, cả những nỗ lực, cố gắng của tất cả chúng ta đều được tái hiện lại qua những video ý nghĩa.\n\n</div>\n</div>","Proud & Brave: hành trình 7 năm tự hào và bản lĩnh","","publish","open","open","","proud-brave-hanh-trinh-7-nam-tu-hao-va-ban-linh","","","2019-03-17 17:41:34","2019-03-17 10:41:34","","0","https://tppone.com/demo/edu5/?p=237","0","post","","0"),
("238","1","2019-03-17 16:11:05","2019-03-17 09:11:05","","5---SN-Lang-2018","","inherit","open","closed","","5-sn-lang-2018","","","2019-03-17 16:11:05","2019-03-17 09:11:05","","237","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/5-SN-Lang-2018.jpg","0","attachment","image/jpeg","0"),
("240","1","2019-03-17 16:12:05","2019-03-17 09:12:05","<strong>Tại hội trại Langmaster International Fair 2018, sinh viên đã được tham gia hoạt động giao lưu, tìm hiểu văn hóa để trau dồi khả năng thực hành tiếng Anh.</strong>\n\nNhằm giúp học viên làm chủ tiếng Anh như ngôn ngữ thứ 2, Langmaster luôn tham khảo các mô hình đào tạo và sáng tạo thêm nhiều phương thức hiệu quả. Hệ sinh thái học tiếng Anh toàn diện 4CE của Langmaster gồm: class (lớp học), club (câu lạc bộ), e-study (cổng học viên), community (hoạt động cộng đồng), conference (hội thảo với chuyên gia). Trong đó, Langmaster International Fair 2018 là cơ hội để học viên rèn luyện khả năng thực hành Anh ngữ, đồng thời tìm hiểu về nền văn hóa của các nước trên thế giới.\n\nVới mô hình thiết kế như một ngày hội lớn, sự kiện này cũng là cơ hội giao lưu, kết nối giảng viên, trợ giảng với các học viên cùng nhiều hoạt động thú vị như hội trại, chợ từ thiện, các gameshow và hoạt động biểu diễn văn nghệ. Đây cũng là hoạt động tri ân đánh dấu chặng đường 7 năm phát triển của trung tâm. Số tiền thu được từ hoạt động mua bán, kinh doanh trong hội chợ sẽ được chuyển tới các em nhỏ vùng cao khó khăn trong Tết 2019.\n<div>Với sự tham dự của gần 600 học viên, 24 gian trại đại diện cho 24 quốc gia. Các học viên cũng chuẩn bị bài thuyết trình ngắn về văn hóa cũng như đặc trưng của quốc gia mình chọn.</div>\nVũ Đức Trung (ĐH Bách khoa Hà Nội) chia sẻ: “Đây là dịp để sinh viên bọn mình giao lưu, trao đổi bằng tiếng Anh, tìm hiểu về các nền văn hóa khác nhau trên thế giới như Mỹ, Ai Cập, Canada, Nhật Bản… Đây còn là cuộc thi nên mọi người rất hào hứng tham gia”.","Langmaster International Fair - ngày hội sôi động của giới trẻ","","publish","open","open","","langmaster-international-fair-ngay-hoi-soi-dong-cua-gioi-tre","","","2019-03-17 17:37:53","2019-03-17 10:37:53","","0","https://tppone.com/demo/edu5/?p=240","0","post","","0"),
("241","1","2019-03-17 16:11:55","2019-03-17 09:11:55","","IMG-1403","","inherit","open","closed","","img-1403","","","2019-03-17 16:11:55","2019-03-17 09:11:55","","240","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/IMG-1403.jpg","0","attachment","image/jpeg","0"),
("268","1","2019-03-17 16:24:43","2019-03-17 09:24:43","","doitac-1","","inherit","open","closed","","doitac-1","","","2019-03-17 16:24:43","2019-03-17 09:24:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-1.png","0","attachment","image/png","0"),
("269","1","2019-03-17 16:25:00","2019-03-17 09:25:00","","doitac-2","","inherit","open","closed","","doitac-2","","","2019-03-17 16:25:00","2019-03-17 09:25:00","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-2.png","0","attachment","image/png","0"),
("270","1","2019-03-17 16:25:12","2019-03-17 09:25:12","","doitac-8","","inherit","open","closed","","doitac-8","","","2019-03-17 16:25:12","2019-03-17 09:25:12","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-8.png","0","attachment","image/png","0"),
("271","1","2019-03-17 16:25:22","2019-03-17 09:25:22","","doitac-4","","inherit","open","closed","","doitac-4","","","2019-03-17 16:25:22","2019-03-17 09:25:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-4.png","0","attachment","image/png","0"),
("272","1","2019-03-17 16:25:33","2019-03-17 09:25:33","","doitac-5","","inherit","open","closed","","doitac-5","","","2019-03-17 16:25:33","2019-03-17 09:25:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-5.png","0","attachment","image/png","0"),
("274","1","2019-03-17 16:25:44","2019-03-17 09:25:44","","doitac-6","","inherit","open","closed","","doitac-6","","","2019-03-17 16:25:44","2019-03-17 09:25:44","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-6.png","0","attachment","image/png","0"),
("275","1","2019-03-17 16:25:56","2019-03-17 09:25:56","","doitac-7","","inherit","open","closed","","doitac-7","","","2019-03-17 16:25:56","2019-03-17 09:25:56","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-7.png","0","attachment","image/png","0"),
("276","1","2019-03-17 16:26:07","2019-03-17 09:26:07","","doitac-3","","inherit","open","closed","","doitac-3","","","2019-03-17 16:26:07","2019-03-17 09:26:07","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-3.png","0","attachment","image/png","0"),
("279","1","2019-03-17 16:35:43","2019-03-17 09:35:43","","bg3","","inherit","open","closed","","bg3","","","2019-03-17 16:35:43","2019-03-17 09:35:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg3.jpg","0","attachment","image/jpeg","0"),
("284","1","2019-03-17 16:39:30","2019-03-17 09:39:30","<div class=\"form-lien-he\">\n<div class=\"left\">\n[text text-502 placeholder \"Họ tên của bạn...\"]\n[tel tel-862 placeholder \"Số điện thoại của bạn...\"]\n[text text-5356 placeholder \"Địa chỉ của ban...\"]\n</div>\n<div class=\"right\">\n[text text-504 placeholder \"Họ tên người tham dự...\"]\n[text text-534 placeholder \"Số người đăng ký tham dự...\"]\n[text text-55432434 placeholder \"Ghi chú thêm...\"]\n</div>\n[submit \"Đăng ký học thử\"]\n</div>\n1\nMẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com\n<wordpress@edu5.Webdemo.com>\nwebdemo@gmail.com\n- Họ tên người liên hệ: [text-502]\n- Họ tên người tham gia: [text-504]\n- Địa chỉ: [text-5356]\n- Số điện thoại: [tel-862]\n- Số người tham gia: [text-534]\n- Ghi chú thêm: [text-55432434]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com (https://bizhostvn.com/w/edu5)\n\n\n\n\n\nMẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com <wordpress@edu5.Webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website Trại hè Tiếng Anh - Thiết kế website Webdemo.com (https://bizhostvn.com/w/edu5)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Đăng ký học thử miễn phí","","publish","closed","closed","","form-lien-he-1","","","2019-03-17 18:16:10","2019-03-17 11:16:10","","0","https://tppone.com/demo/edu5/?post_type=wpcf7_contact_form&#038;p=284","0","wpcf7_contact_form","","0"),
("301","1","2019-03-17 16:55:18","2019-03-17 09:55:18","[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section1\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[title text=\"Fanpage Facebook\" color=\"rgb(86, 195, 255)\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"309\" image_size=\"original\" width=\"27\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 90%;\">Langmaster Learning system - Hệ thống hoc tiếng Anh giao tiếp toàn diện cho người mới bắt đầu.</span></p>\n[title text=\"Social Network\" color=\"rgb(86, 195, 255)\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\"]\n\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Thời gian mở cửa: Từ 8:00 sáng đến 5:00 chiều</span><br /><span style=\"font-size: 90%; color: #c0c0c0;\">Mở cửa các ngày trong tuần từ thứ Hai đến Chủ Nhật. Lưu ý: Mở cửa cả ngày lễ.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[title text=\"Đăng ký nhận tin\" color=\"rgb(86, 195, 255)\"]\n\n<p id=\"dang-ky\"><span style=\"font-size: 90%; color: #c0c0c0;\">Để nhận thông tin về các sự kiện đặc biệt và tài liệu học tiếng Anh giao tiếp miễn phí. Bạn hãy để lại cho chúng tôi thông tin liên lạc.</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section2\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Điện thoại: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hỗ trợ kỹ thuật: DEMO<br />\nĐiện thoại: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demoweb@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Chuyên môn tiếng Anh: Mr. Lisa<br />\nĐiện thoại: 01234.567.890</span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #c0c0c0;\"><span style=\"font-size: 11.52px;\">Mọi thắc mắc và ý kiến đóng góp, xin vui lòng gửi về địa chỉ hòm thư: donggop.Webdemo.com@gmail.com</span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Section","","publish","closed","closed","","footer-section","","","2019-03-17 21:29:20","2019-03-17 14:29:20","","0","https://tppone.com/demo/edu5/?post_type=blocks&#038;p=301","0","blocks","","0"),
("309","1","2019-03-17 16:57:36","2019-03-17 09:57:36","","logo-3","","inherit","open","closed","","logo-3","","","2019-03-17 16:57:36","2019-03-17 09:57:36","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/logo-3.png","0","attachment","image/png","0"),
("337","1","2019-03-17 17:15:25","2019-03-17 10:15:25","","LOGO","","inherit","open","closed","","logo","","","2019-03-17 17:15:25","2019-03-17 10:15:25","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/LOGO.jpg","0","attachment","image/jpeg","0"),
("339","1","2019-03-17 17:15:55","2019-03-17 10:15:55"," ","","","publish","closed","closed","","339","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=339","2","nav_menu_item","","0"),
("342","1","2019-03-17 17:24:22","2019-03-17 10:24:22","","bg","","inherit","open","closed","","bg","","","2019-03-17 17:24:22","2019-03-17 10:24:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg.png","0","attachment","image/png","0"),
("424","1","2019-03-17 18:40:57","2019-03-17 11:40:57","","bg_cover","","inherit","open","closed","","bg_cover","","","2019-03-17 18:40:57","2019-03-17 11:40:57","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg_cover.jpg","0","attachment","image/jpeg","0"),
("444","1","2019-03-17 18:59:31","2019-03-17 11:59:31","","phuong-phap-hoc-tieng-anh","","inherit","open","closed","","phuong-phap-hoc-tieng-anh","","","2019-03-17 18:59:31","2019-03-17 11:59:31","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-hoc-tieng-anh.jpg","0","attachment","image/jpeg","0"),
("450","1","2019-03-17 19:00:59","2019-03-17 12:00:59","","ketqua-1","","inherit","open","closed","","ketqua-1","","","2019-03-17 19:00:59","2019-03-17 12:00:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ketqua-1.jpg","0","attachment","image/jpeg","0"),
("461","1","2019-03-17 19:04:59","2019-03-17 12:04:59","","phuong-phap-2","","inherit","open","closed","","phuong-phap-2","","","2019-03-17 19:04:59","2019-03-17 12:04:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-2.jpg","0","attachment","image/jpeg","0"),
("463","1","2019-03-17 19:06:06","2019-03-17 12:06:06","","phuong-phap-02","","inherit","open","closed","","phuong-phap-02","","","2019-03-17 19:06:06","2019-03-17 12:06:06","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-02.jpg","0","attachment","image/jpeg","0"),
("470","1","2019-03-17 19:07:22","2019-03-17 12:07:22","","vande-1","","inherit","open","closed","","vande-1","","","2019-03-17 19:07:22","2019-03-17 12:07:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-1.png","0","attachment","image/png","0"),
("474","1","2019-03-17 19:08:09","2019-03-17 12:08:09","","vande-2","","inherit","open","closed","","vande-2","","","2019-03-17 19:08:09","2019-03-17 12:08:09","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-2.png","0","attachment","image/png","0"),
("478","1","2019-03-17 19:08:54","2019-03-17 12:08:54","","vande-3","","inherit","open","closed","","vande-3","","","2019-03-17 19:08:54","2019-03-17 12:08:54","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-3.png","0","attachment","image/png","0"),
("480","1","2019-03-17 19:09:27","2019-03-17 12:09:27","","vande-4","","inherit","open","closed","","vande-4","","","2019-03-17 19:09:27","2019-03-17 12:09:27","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-4.png","0","attachment","image/png","0"),
("485","1","2019-03-17 19:11:04","2019-03-17 12:11:04","","bg54","","inherit","open","closed","","bg54","","","2019-03-17 19:11:04","2019-03-17 12:11:04","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg54.jpg","0","attachment","image/jpeg","0"),
("490","1","2019-03-17 19:12:15","2019-03-17 12:12:15","","lagi-1","","inherit","open","closed","","lagi-1","","","2019-03-17 19:12:15","2019-03-17 12:12:15","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lagi-1.jpg","0","attachment","image/jpeg","0"),
("498","1","2019-03-17 19:13:35","2019-03-17 12:13:35","","dia-diem-1","","inherit","open","closed","","dia-diem-1","","","2019-03-17 19:13:35","2019-03-17 12:13:35","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-1.png","0","attachment","image/png","0"),
("502","1","2019-03-17 19:14:32","2019-03-17 12:14:32","","dia-diem-2","","inherit","open","closed","","dia-diem-2","","","2019-03-17 19:14:32","2019-03-17 12:14:32","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-2.png","0","attachment","image/png","0"),
("506","1","2019-03-17 19:15:18","2019-03-17 12:15:18","","dia-diem-3","","inherit","open","closed","","dia-diem-3","","","2019-03-17 19:15:18","2019-03-17 12:15:18","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-3.png","0","attachment","image/png","0"),
("514","1","2019-03-17 19:17:10","2019-03-17 12:17:10","","lydo-1","","inherit","open","closed","","lydo-1","","","2019-03-17 19:17:10","2019-03-17 12:17:10","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-1.png","0","attachment","image/png","0"),
("519","1","2019-03-17 19:18:27","2019-03-17 12:18:27","","lydo-3","","inherit","open","closed","","lydo-3","","","2019-03-17 19:18:27","2019-03-17 12:18:27","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-3.png","0","attachment","image/png","0"),
("523","1","2019-03-17 19:19:22","2019-03-17 12:19:22","","lydo-5","","inherit","open","closed","","lydo-5","","","2019-03-17 19:19:22","2019-03-17 12:19:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-5.png","0","attachment","image/png","0"),
("527","1","2019-03-17 19:20:16","2019-03-17 12:20:16","","lydo-2","","inherit","open","closed","","lydo-2","","","2019-03-17 19:20:16","2019-03-17 12:20:16","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-2.png","0","attachment","image/png","0"),
("529","1","2019-03-17 19:21:01","2019-03-17 12:21:01","","lydo-4","","inherit","open","closed","","lydo-4","","","2019-03-17 19:21:01","2019-03-17 12:21:01","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-4.png","0","attachment","image/png","0"),
("531","1","2019-03-17 19:21:43","2019-03-17 12:21:43","","lydo-6","","inherit","open","closed","","lydo-6","","","2019-03-17 19:21:43","2019-03-17 12:21:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-6.png","0","attachment","image/png","0"),
("548","1","2019-03-17 19:28:11","2019-03-17 12:28:11","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","f581454e02fadf689573da144df9ba4b","","","2019-03-17 19:28:11","2019-03-17 12:28:11","","0","https://tppone.com/demo/edu5/khong-phan-loai/f581454e02fadf689573da144df9ba4b/","0","oembed_cache","","0"),
("549","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","24c976c5f70342643104b2a90132a542","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/24c976c5f70342643104b2a90132a542/","0","oembed_cache","","0"),
("550","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2c11178e3dd97a3223c0d52dfad0f032","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/2c11178e3dd97a3223c0d52dfad0f032/","0","oembed_cache","","0"),
("551","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2330698939e0f9f99f0379d674fd8ac6","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/2330698939e0f9f99f0379d674fd8ac6/","0","oembed_cache","","0"),
("552","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","e033a564b4086ebbccb671b8e50aaa14","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/e033a564b4086ebbccb671b8e50aaa14/","0","oembed_cache","","0"),
("553","1","2019-03-17 19:28:13","2019-03-17 12:28:13","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","fc442f25a7d52e6f596a212e4b93d035","","","2019-03-17 19:28:13","2019-03-17 12:28:13","","0","https://tppone.com/demo/edu5/khong-phan-loai/fc442f25a7d52e6f596a212e4b93d035/","0","oembed_cache","","0"),
("559","1","2019-03-17 19:32:50","2019-03-17 12:32:50","","banner-tieng-anh-he","","inherit","open","closed","","banner-tieng-anh-he","","","2019-03-17 19:32:50","2019-03-17 12:32:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/banner-tieng-anh-he.jpg","0","attachment","image/jpeg","0"),
("563","1","2019-03-17 19:33:50","2019-03-17 12:33:50","","icon","","inherit","open","closed","","icon","","","2019-03-17 19:33:50","2019-03-17 12:33:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon.png","0","attachment","image/png","0"),
("589","1","2019-03-17 19:41:33","2019-03-17 12:41:33","","ratte","","inherit","open","closed","","ratte","","","2019-03-17 19:41:33","2019-03-17 12:41:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ratte.png","0","attachment","image/png","0"),
("593","1","2019-03-17 19:42:25","2019-03-17 12:42:25","","ratte (1)","","inherit","open","closed","","ratte-1","","","2019-03-17 19:42:25","2019-03-17 12:42:25","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ratte-1.png","0","attachment","image/png","0"),
("629","1","2019-03-17 21:23:04","2019-03-17 14:23:04","","iconfix-1","","inherit","open","closed","","iconfix-1","","","2019-03-17 21:23:04","2019-03-17 14:23:04","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-1.png","0","attachment","image/png","0"),
("630","1","2019-03-17 21:23:32","2019-03-17 14:23:32","","iconfix-2","","inherit","open","closed","","iconfix-2","","","2019-03-17 21:23:32","2019-03-17 14:23:32","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-2.png","0","attachment","image/png","0"),
("631","1","2019-03-17 21:23:56","2019-03-17 14:23:56","","iconfix-3","","inherit","open","closed","","iconfix-3","","","2019-03-17 21:23:56","2019-03-17 14:23:56","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-3.png","0","attachment","image/png","0");
INSERT INTO bz_posts VALUES
("633","1","2019-03-17 21:29:20","2019-03-17 14:29:20","[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section1\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[title text=\"Fanpage Facebook\" color=\"rgb(86, 195, 255)\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"309\" image_size=\"original\" width=\"27\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 90%;\">Langmaster Learning system - Hệ thống hoc tiếng Anh giao tiếp toàn diện cho người mới bắt đầu.</span></p>\n[title text=\"Social Network\" color=\"rgb(86, 195, 255)\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\"]\n\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Thời gian mở cửa: Từ 8:00 sáng đến 5:00 chiều</span><br /><span style=\"font-size: 90%; color: #c0c0c0;\">Mở cửa các ngày trong tuần từ thứ Hai đến Chủ Nhật. Lưu ý: Mở cửa cả ngày lễ.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[title text=\"Đăng ký nhận tin\" color=\"rgb(86, 195, 255)\"]\n\n<p id=\"dang-ky\"><span style=\"font-size: 90%; color: #c0c0c0;\">Để nhận thông tin về các sự kiện đặc biệt và tài liệu học tiếng Anh giao tiếp miễn phí. Bạn hãy để lại cho chúng tôi thông tin liên lạc.</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section2\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Điện thoại: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hỗ trợ kỹ thuật: DEMO<br />\nĐiện thoại: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demoweb@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Chuyên môn tiếng Anh: Mr. Lisa<br />\nĐiện thoại: 01234.567.890</span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #c0c0c0;\"><span style=\"font-size: 11.52px;\">Mọi thắc mắc và ý kiến đóng góp, xin vui lòng gửi về địa chỉ hòm thư: donggop.Webdemo.com@gmail.com</span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Section","","inherit","closed","closed","","301-revision-v1","","","2019-03-17 21:29:20","2019-03-17 14:29:20","","301","https://tppone.com/demo/edu5/khong-phan-loai/301-revision-v1/","0","revision","","0"),
("636","1","2019-05-06 16:07:26","2019-05-06 09:07:26","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:07:26\"\n    }\n}","","","trash","closed","closed","","fcca33dc-e718-4d3b-af22-c6868d5dd874","","","2019-05-06 16:07:26","2019-05-06 09:07:26","","0","https://tppone.com/demo/edu5/khong-phan-loai/fcca33dc-e718-4d3b-af22-c6868d5dd874/","0","customize_changeset","","0"),
("637","1","2019-05-06 17:11:31","2019-05-06 10:11:31","","Print","","inherit","open","closed","","print","","","2019-05-06 17:11:31","2019-05-06 10:11:31","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/05/edu5.jpg","0","attachment","image/jpeg","0"),
("638","1","2019-05-06 17:11:36","2019-05-06 10:11:36","{\n    \"edu::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/edu5/wp-content/uploads/2019/05/edu5.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:11:36\"\n    }\n}","","","trash","closed","closed","","00e6f502-c30a-4cfa-91d0-9dc1b76a2ec2","","","2019-05-06 17:11:36","2019-05-06 10:11:36","","0","https://tppone.com/demo/edu5/khong-phan-loai/00e6f502-c30a-4cfa-91d0-9dc1b76a2ec2/","0","customize_changeset","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("46","2","0"),
("47","2","0"),
("48","2","0"),
("49","2","0"),
("50","2","0"),
("53","2","0"),
("58","3","0"),
("59","3","0"),
("60","3","0"),
("225","4","0"),
("225","5","0"),
("228","4","0"),
("231","4","0"),
("234","4","0"),
("234","6","0"),
("237","7","0"),
("240","7","0"),
("240","8","0"),
("339","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","nav_menu","","0","6"),
("3","3","nav_menu","","0","4"),
("4","4","category","","0","4"),
("5","5","post_tag","","0","1"),
("6","6","post_tag","","0","1"),
("7","7","category","","0","2"),
("8","8","post_tag","","0","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("2","Main menu","main-menu","0"),
("3","Topbar menu","topbar-menu","0"),
("4","Sự kiện","su-kien","0"),
("5","Từ thiện","tu-thien","0"),
("6","toàn cầu hóa","toan-cau-hoa","0"),
("7","Tin tức","tin-tuc","0"),
("8","Ngày hội tiếng anh","ngay-hoi-tieng-anh","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","Webdemo.com"),
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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"35c29b4de1224c499aa8346124fffd1118bddc433ccc20569f0f9cf58c7f61a5\";a:4:{s:10:\"expiration\";i:1557485186;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557312386;}s:64:\"47b8652910300d6244fe4254362db93c70f94c4f22ad6738e01ca344feaf40a9\";a:4:{s:10:\"expiration\";i:1557616266;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443466;}s:64:\"403d587bd564a5c721efa457f2289e93672ab5d0a213a0a2d97c4bfaa4305e39\";a:4:{s:10:\"expiration\";i:1557625584;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452784;}s:64:\"bc75972c8b9160c556a990b60ed557e121ae5094993bd2ead94b819dfbdb95cb\";a:4:{s:10:\"expiration\";i:1557628041;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455241;}s:64:\"fa6b1312fd4f5456cff219cc48acceeb745293a947bda0b076d6459f512a1e61\";a:4:{s:10:\"expiration\";i:1557628469;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455669;}s:64:\"f7fe2098e3191f6ac79d272cc649f80db53da2d49b377e9177ecbabf34260fa8\";a:4:{s:10:\"expiration\";i:1557633278;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557460478;}s:64:\"fbc35245dd26ae8df2cf130c25ae3267c0d28c9161d3106260789822c7b1b6b5\";a:4:{s:10:\"expiration\";i:1557636883;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557464083;}s:64:\"8c7bd3c724b3bbf5bed26dde142f5420f799cefab6c8aaab603af5372f5f2f04\";a:4:{s:10:\"expiration\";i:1557649371;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557476571;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","635"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1557452783"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","2"),
("25","1","ed_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:597:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 100%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:889:\"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=49\">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=49\">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/edu5/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:239:\"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href=\"https://bizhostvn.com/w/edu5/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> kết nối với Google Search Console ở đây </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:256:\"<strong>Lỗi SEO nghiêm trọng: Bạn đang chặn truy cập tới robots.</strong> Bạn phải <a href=\"https://bizhostvn.com/w/edu5/wp-admin/options-reading.php\">tới mục Đọc</a> và bỏ đánh dấu Tương tác với công cụ tìm kiếm.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO xác định bạn đang sử dụng phiên bản 9.1 của Yoast SEO Premium, hãy cập nhật lên phiên bản mới nhất.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
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
("1","admin","$P$B3UiFKXMOiaQDMg.yh8IPMEX5F0KOb/","admin","demobz@gmail.com","","2019-03-16 03:19:13","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("17","https://Webdemo.com/","27","0","external"),
("18","http://Webdemo.com/","27","0","external"),
("39","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/IMG-1403.jpg","41","0","internal"),
("40","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/5-SN-Lang-2018-1024x683.jpg","41","0","internal"),
("41","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/IMG-7949.jpg","41","0","internal"),
("42","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/Bell_Cambridge_Classroom-copia-2.jpg","41","0","internal"),
("43","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/DSC-2759.jpg","41","0","internal"),
("44","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/DSC-3797-compressed.jpg","41","0","internal"),
("45","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-13.jpg","41","0","internal"),
("46","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-5.jpg","41","0","internal"),
("47","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-3.jpg","41","0","internal"),
("48","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/pic1.jpg","41","0","internal"),
("118","/lien-he","29","27","internal"),
("167","#","31","0","internal"),
("168","#","31","0","internal"),
("169","#","31","0","internal"),
("170","#","31","0","internal"),
("171","#","31","0","internal"),
("172","#","31","0","internal"),
("173","#","31","0","internal"),
("174","#","31","0","internal"),
("175","#","31","0","internal"),
("176","#","31","0","internal"),
("177","#","31","0","internal"),
("178","#","31","0","internal"),
("179","https://Webdemo.com/","33","0","external"),
("180","http://Webdemo.com/","33","0","external"),
("245","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("246","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("247","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte-1.png","37","0","internal"),
("248","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("249","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte-1.png","37","0","internal"),
("250","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("251","#","301","0","internal"),
("252","#","301","0","internal"),
("253","mailto:#","301","0","external"),
("254","tel:#","301","0","external"),
("255","#","301","0","internal");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("10","0","0"),
("11","0","0"),
("12","0","0"),
("13","0","0"),
("14","0","0"),
("15","0","0"),
("16","0","0"),
("17","0","0"),
("18","0","0"),
("20","0","0"),
("22","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","1"),
("28","0","0"),
("29","1","0"),
("30","0","0"),
("31","12","0"),
("32","0","0"),
("33","0","0"),
("34","0","0"),
("35","0","0"),
("36","0","0"),
("37","6","0"),
("38","0","0"),
("39","0","0"),
("40","0","0"),
("41","10","0"),
("42","0","0"),
("43","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
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
("72","0","0"),
("73","0","0"),
("75","0","0"),
("76","0","0"),
("78","0","0"),
("79","0","0"),
("80","0","0"),
("81","0","0"),
("82","0","0"),
("83","0","0"),
("84","0","0"),
("85","0","0"),
("86","0","0"),
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
("107","0","0"),
("108","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("112","0","0"),
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("118","0","0"),
("119","0","0"),
("120","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0"),
("126","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("127","0","0"),
("128","0","0"),
("129","0","0"),
("130","0","0"),
("131","0","0"),
("132","0","0"),
("133","0","0"),
("134","0","0"),
("135","0","0"),
("136","0","0"),
("137","0","0"),
("138","0","0"),
("139","0","0"),
("140","0","0"),
("141","0","0"),
("142","0","0"),
("143","0","0"),
("144","0","0"),
("145","0","0"),
("146","0","0"),
("147","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0"),
("152","0","0"),
("153","0","0"),
("155","0","0"),
("157","0","0"),
("159","0","0"),
("160","0","0"),
("161","0","0"),
("162","0","0"),
("163","0","0"),
("164","0","0"),
("165","0","0"),
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
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("208","0","0"),
("209","0","0"),
("210","0","0"),
("211","0","0"),
("212","0","0"),
("213","0","0"),
("214","0","0"),
("215","0","0"),
("217","0","0"),
("219","0","0"),
("220","0","0"),
("221","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("227","0","0"),
("228","0","0"),
("230","0","0"),
("231","0","0"),
("233","0","0"),
("234","0","0"),
("236","0","0"),
("237","0","0"),
("239","0","0"),
("240","0","0"),
("242","0","0"),
("243","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
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
("273","0","0"),
("277","0","0"),
("278","0","0"),
("280","0","0"),
("281","0","0"),
("282","0","0"),
("283","0","0"),
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
("301","3","0"),
("302","0","0"),
("303","0","0"),
("304","0","0"),
("305","0","0"),
("306","0","0"),
("307","0","0"),
("308","0","0"),
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
("338","0","0"),
("340","0","0"),
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
("358","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
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
("383","0","0"),
("384","0","0"),
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
("445","0","0"),
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("451","0","0"),
("452","0","0"),
("453","0","0"),
("454","0","0"),
("455","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
("460","0","0"),
("462","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("464","0","0"),
("465","0","0"),
("466","0","0"),
("467","0","0"),
("468","0","0"),
("469","0","0"),
("471","0","0"),
("472","0","0"),
("473","0","0"),
("475","0","0"),
("476","0","0"),
("477","0","0"),
("479","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("486","0","0"),
("487","0","0"),
("488","0","0"),
("489","0","0"),
("491","0","0"),
("492","0","0"),
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("499","0","0"),
("500","0","0"),
("501","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","0","0"),
("512","0","0"),
("513","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("520","0","0"),
("521","0","0"),
("522","0","0"),
("524","0","0"),
("525","0","0"),
("526","0","0"),
("528","0","0"),
("530","0","0"),
("532","0","0"),
("533","0","0"),
("534","0","0"),
("535","0","0"),
("536","0","0"),
("537","0","0"),
("538","0","0"),
("539","0","0"),
("540","0","0"),
("541","0","0"),
("542","0","0"),
("543","0","0"),
("544","0","0"),
("545","0","0"),
("546","0","0"),
("547","0","0"),
("554","0","0"),
("555","0","0"),
("556","0","0"),
("557","0","0"),
("558","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("564","0","0"),
("565","0","0"),
("566","0","0"),
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
("581","0","0"),
("582","0","0"),
("583","0","0"),
("584","0","0"),
("585","0","0"),
("586","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("587","0","0"),
("588","0","0"),
("590","0","0"),
("591","0","0"),
("592","0","0"),
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
("632","0","0"),
("634","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;