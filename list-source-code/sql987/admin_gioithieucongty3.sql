SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w37`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-03-21 09:49:00","2019-03-21 09:49:00","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/gioithieucongty3\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1554192824,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960542,\"initial_activation_timestamp\":1554192834,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025930,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=772 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/gioithieucongty3","yes"),
("2","home","https://bizhostvn.com/w/gioithieucongty3","yes"),
("3","blogname","gioithieucongty3","yes"),
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
("22","posts_per_page","5","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:2:{i:0;s:112:\"/home/tppone/domains/tppone.com/public_html/demo/gioithieucongty3/wp-content/themes/gioi-thieu-cong-ty/style.css\";i:1;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","gioi-thieu-cong-ty","yes"),
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
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:405:\"<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}","no"),
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
("93","initial_db_version","43764","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:12:\"categories-2\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:6:\"text-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1557938940;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557956940;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557996637;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558000200;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558001702;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558024468;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("135","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1553161795;}","no"),
("142","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553161800;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("143","current_theme","Giới thiệu công ty","yes"),
("144","theme_mods_flatsome","a:23:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 21 Mar 2019 09:50:01 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553161826;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("145","theme_switched","","yes"),
("146","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:17:\"Bài viết mới\";s:6:\"number\";i:9;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("147","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("150","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("151","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("152","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("153","flatsome_wup_buyer","trannguyen886","yes"),
("154","allowedthemes","a:1:{s:18:\"gioi-thieu-cong-ty\";b:1;}","no"),
("155","fl_has_child_theme","gioi-thieu-cong-ty","yes"),
("156","theme_mods_gioi-thieu-cong-ty","a:122:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"header_elements_right\";a:1:{i:0;s:11:\"search-form\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:5;s:14:\"primary_mobile\";i:5;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 21 Mar 2019 09:50:29 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1532:\"<style>\n.bottom-contact{display:none}\n@media  (max-width: 767px) {\n.bottom-contact{display: block;\n    position: fixed;\n    bottom: 0;\n    background: white;\n    width: 100%;\n    z-index: 99;\n    box-shadow: 2px 1px 9px  #0000008a;\n    border-top: 1px solid #eaeaea;}\n.bottom-contact ul li{width: 25%; margin-bottom:0; \n    float: left;\n    list-style: none;\n    text-align: center; font-size:13.5px;}\n.bottom-contact ul li span{color:black}\n.bottom-contact ul li img{    width: 35px;\n    margin-top: 3px;\n    margin-bottom: 0px;}\n \n}\n</style>\n<div class=\"bottom-contact\">\n<ul>\n<li>\n<a id=\"goidien\" href=\"tel:0909009009\">\n<img src=\"/wp-content/uploads/2019/03/icon-phone2.png\"/>\n<br>\n<span>Gọi điện</span>\n</a>\n</li>\n<li>\n<a id=\"nhantin\" href=\"sms:0909009009\">\n<img src=\"/wp-content/uploads/2019/03/icon-sms2.png\"/>\n<br>\n<span>Nhắn tin</span>\n</a>\n</li>\n<li>\n<a id=\"chatzalo\" href=\"http://zalo.me/0909009009\">\n<img src=\"/wp-content/uploads/2019/03/icon-zalo2.png\"/>\n<br>\n<span>Chat zalo</span>\n</a>\n</li>\n<li>\n<a id=\"chatfb\" href=\"https://www.messenger.com/t/demo\">\n<img src=\"/wp-content/uploads/2019/03/icon-mesenger2.png\"/>\n<br>\n<span>Chat Facebook</span>\n</a>\n</li>\n</ul>\n</div>\n<div class=\"float-contact\">\n<button class=\"chat-zalo\"><a href=\"http://zalo.me/0909009009\">Chat Zalo</a></button>\n<button class=\"chat-face\"><a href=\"http://m.me/demo\">Mua theme này</a></button>\n<button class=\"hotline\"><a href=\"tel:0909009009\">Hotline: Gọi Demoweb</a></button>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:9936:\".header-bottom .container{background:#cf1c24; max-width: 1140px;}\n.slider-section .img .caption{font-size: 20px;\n    padding: 10px 20px;}\n.large-columns-5 .post-item{    padding: 0 4px 3px !important;}\n.large-columns-5{margin-left:-4px; margin-right:-4px}\n@font-face {\n    font-family: \'Helvetica Neue\';\n    src: url(\'wp-content/themes/gioi-thieu-cong-ty/fonts/HelveticaNeue.eot\');\n    src: url(\'wp-content/themes/gioi-thieu-cong-ty/fonts/HelveticaNeue.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/gioi-thieu-cong-ty/fonts/HelveticaNeue.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/gioi-thieu-cong-ty/fonts/HelveticaNeue.woff\') format(\'woff\'),\n        url(\'wp-content/themes/gioi-thieu-cong-ty/fonts/HelveticaNeue.ttf\') format(\'truetype\');\n    font-weight: normal;\n    font-style: normal;\n}\nbody{    word-wrap: break-word;}\nh1,h2,h3,h4,h5,h6{font-family: \'Helvetica Neue\';\n    font-weight: 500;}\nbody, .nav > li > a{font-family: \'Helvetica Neue\';\n    font-weight: normal;\n    font-style: normal;}\n.header-main .nav>li.html {\n    font-size: .85em;\n    FONT-SIZE: 20px;\n    font-weight: bold;\n    color: #cf1c24;\n    line-height: 25px;}\nli.html input{font-size: 15px;\n    height: 40px;\n    border-top-left-radius: 5px;\n    border-bottom-left-radius: 5px;\n    box-shadow: none;}\n.searchform .button.icon {\n   \n    height: 40px;\n    font-size: 15px;\n    background: #cf1c24;\n    border-top-right-radius: 5px;\n    border-bottom-right-radius: 5px;\n}\n.header-bottom .nav>li{margin:0}\n.header-bottom .nav>li a{padding-left:23px; padding-right:23px;     border-right: 1px solid #9c0007;\n    border-left: 1px solid #ff5a5a; font-weight:bold; color:white}\n.section-title-container {\n    margin-bottom: 0;\n}.section-title-normal {\n    border-bottom: 1px solid #000000;\n}.section-title-normal span {\n\n    border-bottom: 0px  \n}.section-title a {\n font-size:15px;\n    font-weight: normal;\n    color: gray;\n}\n.flickity-prev-next-button .arrow{fill: white !important}\n.flickity-prev-next-button svg{    background: #acacac;\n    border-radius: 99%;\n    fill: white !important}\n.box-blog-post .is-divider, .blog-single .entry-category, .is-divider, #comments{display:none}\n.blog-single .large-3, .page-right-sidebar .large-3, .blog-archive .large-3{border-left:0 !important; padding-left:0;}\n.blog-single .large-9, .page-right-sidebar .large-9, .blog-archive .large-9{padding-right:20px; border-right:0 !important}\n.du-an .flickity-viewport .post-item .post-title{color: #076db0;\n	margin-bottom: 6px;}.flickity-prev-next-button{top:62%}\n.tin-tuc .cot2 .vertical-list-post .post-item{padding-bottom:15px}.entry-header-text {\n    padding: 0;\n}\n.blog-single .entry-meta{    font-size: 14px;\n    text-transform: none;\n    margin-top: 10px;\n    letter-spacing: 0;}\n.blog-single .entry-content p{color: #262626; margin-bottom:10px}\n.tin-tuc .flickity-prev-next-button{top:auto !important}\n.tin-tuc .big-post .post-item .post-title{font-size:17px; color:#034068}\n.tin-tuc .cot4 .section-title{margin-bottom:0}\n.tin-tuc .cot4 .des{margin-top:10px; margin-bottom:10px}\n.tin-tuc .cot4 .section-title-container span{       margin: 0; width: 100%;\n    display: block;\n    background: #cf1c24;\n    margin-right: 0;\n    font-size: 16px;\n    padding: 2px;\n    text-align: center;\n    color: white;\n    font-weight: normal;\n    border-bottom: 2px solid black;}\n.tin-tuc .cot4 .section-title-container{margin-bottom:0}\n.tin-tuc .cot2 .vertical-list-post .post-item .post-title{color: #034068;\n    font-weight: normal;}\n.tin-tuc .cot2 .vertical-list-post .post-item .box-text{padding-right:0;padding-top:0; padding-bottom:0; padding-left:10px}\n.du-an .large-12{padding-bottom:0}\n.nut-1 a{border-radius: 5px;\n    background: #80b524;\n    font-weight: normal;\n    font-size: 15px;}\n.nut-2 a{border-radius: 5px;\n    font-size: 15px;\n    font-weight: normal;\n    background: #317ebb;}\n.linh-vuc .col{padding-bottom:0}\n.linh-vuc .large-12 .col-inner{background: #f7f7f7;\n    padding: 15px 0px;}\n.linh-vuc .icon-box .icon-box-text h3{    padding: 5px;\n    background: #034068;\n    font-size: 15px;\n    font-weight: normal;\n    color: white;}\n.linh-vuc .large-12 .col-inner .col-inner{padding:0}\n.linh-vuc .slider-nav-outside .flickity-page-dots{bottom:-23px}\n.tin-co-dong .post-item .box-text, .tin-thi-truong .post-item .box-text, .video-post .post-item .box-text, .tuyen-dung-post .post-item .box-text{padding-top:0; padding-right:0; padding-bottom:0; padding-left:10px}\n.linh-vuc .icon-box .icon-box-img{margin-bottom:0 !important}\n.tin-co-dong .post-item .post-title, .tin-thi-truong .post-item .post-title, .video-post .post-item .post-title, .tuyen-dung-post .post-item .post-title{font-size:15px;     color: #034068;\n    font-weight: normal;}\n.tuyen-dung-post .post-item .box-text{padding-left:0 !important; padding-bottom:10px}\n.video-post, .tuyen-dung-post{margin-top:15px}\n.tuyen-dung-post .post-item .post-title{    background: url(/wp-content/uploads/2019/03/dot.jpg);\n    background-repeat: no-repeat;\n    background-position-y: top;\n    background-position-y: 5px;\n    padding-left: 14px;}\n.tin-co-dong .post-item, .tin-thi-truong .post-item, .video-post .post-item {    margin-bottom: 10px;}\n.footer-section .thong-tin-cong-ty{background: #034068cc;\n    padding: 19px 0;}\n.footer-section .col{padding-bottom:0}\n.footer-secondary {\n    padding: 0;\n}\n.back-to-top{background:#cf1c24 !important; border: 0 !important; color:white !important}\n.header-wrapper.stuck{box-shadow:none}\n.post-item .post-title:hover{text-decoration:underline}\n#breadcrumbs a{color:#337ab7}\n#breadcrumbs{  margin-bottom: 0;  font-size: 14px;    display: block;\n    padding: 10px 30px;\n    width: 100%;}\n\n.blog-single .entry-title{    margin-bottom: 0;\n    color: black;}\n.blog-single {\n    padding-top: 0;\n    padding-bottom: 0;\n}\n\n.list-news .item-list h4{line-height:20px;     margin-bottom: 15px;margin-top: 5px; height: 46px;\n    overflow: hidden;}\n\n.list-news .item-list h4 a{    font-size: 15px;\n    line-height: 20px !important;\n    margin-top: 10px;\n    color: #365899;}\n.list-news{margin-left: -5px;\n	margin-right: -5px;display:inline-block; width:100%; clear:both}span.widget-title{width: 100%;\n    background: #cf1c24;\n    display: block;\n    padding: 7px 15px;\n    color: white;\n    text-align: center;\n    font-weight: normal;}\n.recent-blog-posts a{    font-size: 14px;\n    color: #365899;}\n.recent-blog-posts a:hover{text-decoration:underline}\n.widget_categories li{    background: url(/wp-content/uploads/2019/03/dot.jpg);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 15px;\n    font-size: 15px;}\n.list-news li{padding: 0 7px; width:33.33%; float:left; display:inline-block; margin:0 !important}\n.page-right-sidebar .page-inner p{color:#333333; margin-bottom:10px}\n.page-right-sidebar #breadcrumbs{padding: 0  ;\n    margin-bottom: 10px !important;\n    border-bottom: 1px dashed #eeeeee;\n    padding-bottom: 10px !important;}\n.nav-dropdown{border: 0; padding:0;}\n.nav-dropdown li a{color:gray !important; font-size:15px; font-weight:normal !important; border-left: 0 !important; border-right: 0 !important}\n.blog-archive .archive-page-header .large-12{padding-bottom:0}\n.blog-archive .archive-page-header .large-12 .page-title{text-align:left; letter-spacing:0; text-transform:none; color:black}\n.blog-archive #breadcrumbs{padding-top:0}\n.blog-archive .large-9 .badge{display:none}\n.blog-archive .large-9 .post-item .post-title{    margin-bottom: 10px;\n    color: black;\n    font-size: 19px;}\n.chi-tiet-du-an{display:block}\n.chi-tiet-du-an .row-thong-tin{padding-bottom: 8px;    border-bottom: 1px dashed #ececec;color: black; display:inline-block; width:100% !important; clear:both}\n.chi-tiet-du-an .row-thong-tin .left{ width:20%; float:left; display:inline-block}\n.chi-tiet-du-an .row-thong-tin .right{float:right; width: 80%; display:inline-block; padding-left:15px}\n.chi-tiet-du-an h2, .chi-tiet-du-an h3, .bai-viet-lien-quan-title{font-size: 19px;\n    color: #cf1c24;\n   \n    padding-bottom: 6px;}\nul.hinh-anh-du-an{display: inline-block;\n    width: 100%;\n    clear: both;}\nul.hinh-anh-du-an li{    margin-left: 0;\n    list-style: none;\n    width: 50%;\n    float: left;\n    display: inline-block;}\nul.hinh-anh-du-an li:nth-child(2n+1){padding-right:5px}\nul.hinh-anh-du-an li:nth-child(2n+2){padding-left:5px}\n.blog-archive .post-item:nth-child(1), .blog-archive .post-item:nth-child(2) {flex-basis:50%; max-width:50%}\n.blog-archive .post-item:nth-child(1) .box-image, .blog-archive .post-item:nth-child(2) .box-image{    width: 100% !important;\n    display: table-caption;}\n.blog-archive .post-item:nth-child(1) .box-text, .blog-archive .post-item:nth-child(2) .box-text{padding:0; padding-top:10px}\n.blog-archive .post-item .box-text{padding:0 ;padding-left:15px}\n.page-numbers.nav-pagination{text-align:left}\n.nav-pagination>li>.current{    background: #cf1c24;\n    border: 0;\n    border-radius: 0;}\n.nav-pagination>li a{background:#ececec; border: none; border-radius:0; }\n.nav-pagination>li>a:hover{    border-color: #cf1c24;\n    background-color: #cf1c24; font-weight:normal}\n.list-news .new-img img{height: 180px;\n    object-fit: cover;\n    object-position: 50% 50%;}\n.float-contact {\n    position: fixed;\n    bottom: 20px;\n    left: 20px;\n    z-index: 99999;\n}.chat-zalo {\n    background: #8eb22b;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-face {\n    background: #125c9e;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.float-contact .hotline {\n    background: #d11a59 !important;\n    border-radius: 20px;\n    padding: 0 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-zalo a, .chat-face a, .hotline a {\n    font-size: 15px;\n    color: white;\n    font-weight: normal;\n    text-transform: none;\n    line-height: 0;\n}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1904:\".off-canvas-left.mfp-ready .mfp-content{background:#cf1c24}\n.col, .gallery-item, .columns{    padding: 0 5px 10px;}\n.section-title a {\n	font-size: 13px;}.slider-nav-push:not(.slider-nav-reveal) .flickity-prev-next-button {\n    margin-top: -41%;\n    display: block;\n}\n.tin-tuc .cot2 .vertical-list-post .post-item, .tin-co-dong .post-item, .tin-thi-truong .post-item, .video-post .post-item {\n    padding-bottom: 10px;\n    flex-basis: 50%;\n    max-width: 50%;\n}\n.nut-1 ,.nut-2{padding-bottom:0 !important}\n.cong-ty-thanh-vien{display:none}\n.tin-tuc .cot2 .vertical-list-post .post-item .box-text, .tin-co-dong .post-item .box-text, .tin-thi-truong .post-item .box-text, .video-post .post-item .box-text, .tuyen-dung-post .post-item .box-text{padding-left:0; padding-top:5px}\n#breadcrumbs{    padding: 10px !important;\n    background: #f0f0f0;\n    margin-bottom: 10px;}\n.blog-single .large-9, .page-right-sidebar .large-9, .blog-archive .large-9{padding-right:5px}\n.list-news li{width:50%}\n.list-news .new-img img{height:105px}.list-news {\n    margin-left: 0;\n	margin-right: 0;}.list-news li {\n		padding: 0 3px;}\n.blog-single .large-3, .page-right-sidebar .large-3, .blog-archive .large-3{padding-left:5px}\n.off-canvas .sidebar-menu {\n    padding: 0;\n}.off-canvas:not(.off-canvas-center) .nav-vertical li>a {\n    padding-left: 15px;\n}.page-wrapper {\n    padding-top: 10px;\n    padding-bottom: 10px;\n}\n.archive .large-9 .large-columns-1{margin-left:0 !important; margin-right:0 !important}\n.blog-archive .post-item:nth-child(1), .blog-archive .post-item:nth-child(2){flex-basis:100%; max-width:100%}\n.blog-archive .post-item:nth-child(1) .box-image, .blog-archive .post-item:nth-child(2) .box-image{width:100%; display: block;}\n.blog-archive .post-item .box-text{padding-left:0}\n.blog-archive .large-9 .post-item .post-title{margin-top:6px}\n.float-contact{display:none}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:32:\"Nhập từ khóa tìm kiếm...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"255\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"42\";s:15:\"nav_position_bg\";s:16:\"rgba(66,66,66,0)\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:13:\"disable_fonts\";b:1;s:9:\"site_logo\";s:88:\"https://bizhostvn.com/w/gioithieucongty3/wp-content/uploads/2019/05/gioithieucongty3.png\";s:12:\"logo_padding\";s:1:\"4\";s:11:\"topbar_left\";s:63:\"CÔNG TY CỔ PHẦN TẬP ĐOÀN</br>\nXÂY DỰNG WEBSITE DEMO\";s:19:\"header_search_width\";s:2:\"99\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"10\";s:13:\"header_sticky\";b:0;s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_color\";s:7:\"#004e6d\";s:16:\"footer_left_text\";s:169:\"Copyright [ux_current_year] © <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thiết kế bởi <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:17:\"footer_right_text\";s:35:\"Hỗ trợ kỹ thuật: Demoweb ()\";s:16:\"blog_posts_depth\";s:1:\"0\";s:10:\"blog_style\";s:4:\"list\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:1;s:18:\"blog_style_archive\";s:4:\"list\";s:23:\"blog_single_header_meta\";b:1;s:26:\"blog_single_featured_image\";b:0;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:10:\"blog_share\";b:0;s:14:\"dropdown_arrow\";b:0;s:17:\"dropdown_nav_size\";s:3:\"100\";s:14:\"dropdown_style\";s:6:\"simple\";s:20:\"logo_position_mobile\";s:6:\"center\";s:20:\"mobile_overlay_color\";s:4:\"dark\";s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("158","envato_setup_complete","1553161835","yes"),
("162","recently_activated","a:4:{s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557028347;s:23:\"wp-rocket/wp-rocket.php\";i:1557028120;s:30:\"db-prefix-change/db_prefix.php\";i:1557026699;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025931;}","yes"),
("165","new_admin_email","webdemo@gmail.com","yes"),
("194","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("197","acf_version","5.7.7","yes"),
("237","category_children","a:0:{}","yes"),
("248","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1553963667;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("249","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("250","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("252","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("258","wpseo_current_version","16","no"),
("259","wpseo_premium_version","8.4","yes"),
("262","wpseo_tracking_last_request","1556963525","yes"),
("269","wpseo_sitemap_cache_validator_global","rlgT","no"),
("273","rewrite_rules","a:122:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:45:\"(du-an)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(du-an)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(du-an)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"(tai-lieu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(tai-lieu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(tai-lieu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(tuyen-dung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(tuyen-dung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(tuyen-dung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:45:\"(video)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(video)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(video)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("274","wpseo_sitemap_1_cache_validator","3mrXL","no"),
("275","wpseo_sitemap_customize_changeset_cache_validator","5BjmA","no"),
("281","wpseo_sitemap_post_cache_validator","3mrY5","no"),
("282","wpseo_sitemap_category_cache_validator","rQMh","no"),
("285","wpseo_sitemap_page_cache_validator","2zzAJ","no"),
("319","wpseo_license_server_version","2","yes"),
("325","wpseo_sitemap_attachment_cache_validator","3mrXV","no"),
("381","wpseo_sitemap_blocks_cache_validator","2GpMC","no"),
("507","duplicator_pro_package_active","{\"Created\":\"2019-04-02 08:14:03\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.0.4\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190402_mauwebsitegioithieucongty\",\"Hash\":\"d01e78f6e6a0fe078954_20190402081403\",\"NameHash\":\"20190402_mauwebsitegioithieucongty_d01e78f6e6a0fe078954_20190402081403\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/gioithieucongty3\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190402_mauwebsitegioithieucongty_d01e78f6e6a0fe078954_20190402081403_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\",\"Size\":111414848,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"cropped-sfsf\\u0111s-270x270.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-270x270.png\"},{\"name\":\"sfsf\\u0111s.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/sfsf\\u0111s.png\"},{\"name\":\"cropped-sfsf\\u0111s.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s.png\"},{\"name\":\"cropped-sfsf\\u0111s-150x150.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-150x150.png\"},{\"name\":\"cropped-sfsf\\u0111s-300x300.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-300x300.png\"},{\"name\":\"cropped-sfsf\\u0111s-180x180.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-180x180.png\"},{\"name\":\"cropped-sfsf\\u0111s-192x192.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-192x192.png\"},{\"name\":\"cropped-sfsf\\u0111s-32x32.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/cropped-sfsf\\u0111s-32x32.png\"}],\"Unreadable\":[],\"Size\":[{\"ubytes\":4938656,\"bytes\":\"4.71MB\",\"name\":\"duplicator-pro.zip\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-content\\/uploads\\/2019\\/04\\/duplicator-pro.zip\"}],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/gioithieucongty3\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web07\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1290,\"tablesSizeOnDisk\":1605632,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("509","_transient_timeout_wpseo_link_table_inaccessible","1588496542","no"),
("510","_transient_wpseo_link_table_inaccessible","0","no"),
("511","_transient_timeout_wpseo_meta_table_inaccessible","1588496542","no"),
("512","_transient_wpseo_meta_table_inaccessible","0","no"),
("562","db_upgraded","","yes"),
("573","can_compress_scripts","0","no"),
("577","dbprefix_old_dbprefix","gtct_","yes"),
("578","dbprefix_new","bz_","yes"),
("647","recovery_keys","a:0:{}","yes"),
("665","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557938338;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("666","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557938342;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:18:\"gioi-thieu-cong-ty\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("767","_transient_timeout_acf_plugin_updates","1558024739","no"),
("768","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("769","_site_transient_timeout_theme_roots","1557940141","no"),
("770","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:18:\"gioi-thieu-cong-ty\";s:7:\"/themes\";}","no"),
("771","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557938343;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("18","12","_wp_attached_file","2019/03/limenu.jpg"),
("19","12","_wp_attachment_metadata","a:5:{s:5:\"width\";i:2;s:6:\"height\";i:35;s:4:\"file\";s:18:\"2019/03/limenu.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("21","12","_edit_lock","1553162057:1"),
("24","14","_wp_attached_file","2019/03/limenu-1.jpg"),
("25","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:2;s:6:\"height\";i:35;s:4:\"file\";s:20:\"2019/03/limenu-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("26","14","_edit_lock","1553162072:1"),
("48","24","_wp_attached_file","2019/03/logo-giuseart.png"),
("49","24","_wp_attachment_metadata","a:5:{s:5:\"width\";i:245;s:6:\"height\";i:90;s:4:\"file\";s:25:\"2019/03/logo-giuseart.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("52","26","_wp_attached_file","2019/03/cropped-logo-giuseart.png"),
("53","26","_wp_attachment_context","site-icon"),
("54","26","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2019/03/cropped-logo-giuseart.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo-giuseart-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("73","2","_edit_lock","1553940935:1"),
("74","2","_edit_last","1"),
("75","2","_footer","normal"),
("76","37","_edit_last","1"),
("77","37","_footer","normal"),
("78","37","_wp_page_template","page-right-sidebar.php"),
("79","37","_edit_lock","1553965661:1"),
("80","39","_edit_last","1"),
("81","39","_footer","normal"),
("82","39","_wp_page_template","page-right-sidebar.php"),
("83","39","_edit_lock","1553965693:1"),
("84","41","_edit_last","1"),
("85","41","_edit_lock","1553965703:1"),
("86","41","_footer","normal"),
("87","41","_wp_page_template","page-right-sidebar.php"),
("88","43","_edit_last","1"),
("89","43","_footer","normal"),
("90","43","_wp_page_template","page-right-sidebar.php"),
("91","43","_edit_lock","1553965719:1"),
("92","45","_edit_last","1"),
("93","45","_footer","normal"),
("94","45","_wp_page_template","page-right-sidebar.php"),
("95","45","_edit_lock","1553965516:1"),
("96","47","_menu_item_type","post_type"),
("97","47","_menu_item_menu_item_parent","0"),
("98","47","_menu_item_object_id","45"),
("99","47","_menu_item_object","page"),
("100","47","_menu_item_target",""),
("101","47","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("102","47","_menu_item_xfn",""),
("103","47","_menu_item_url",""),
("105","48","_menu_item_type","post_type"),
("106","48","_menu_item_menu_item_parent","51"),
("107","48","_menu_item_object_id","43"),
("108","48","_menu_item_object","page"),
("109","48","_menu_item_target",""),
("110","48","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("111","48","_menu_item_xfn",""),
("112","48","_menu_item_url",""),
("114","49","_menu_item_type","post_type"),
("115","49","_menu_item_menu_item_parent","51"),
("116","49","_menu_item_object_id","41"),
("117","49","_menu_item_object","page"),
("118","49","_menu_item_target",""),
("119","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("120","49","_menu_item_xfn",""),
("121","49","_menu_item_url",""),
("123","50","_menu_item_type","post_type"),
("124","50","_menu_item_menu_item_parent","51"),
("125","50","_menu_item_object_id","39"),
("126","50","_menu_item_object","page"),
("127","50","_menu_item_target",""),
("128","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("129","50","_menu_item_xfn",""),
("130","50","_menu_item_url",""),
("132","51","_menu_item_type","post_type"),
("133","51","_menu_item_menu_item_parent","0"),
("134","51","_menu_item_object_id","37"),
("135","51","_menu_item_object","page"),
("136","51","_menu_item_target",""),
("137","51","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("138","51","_menu_item_xfn",""),
("139","51","_menu_item_url",""),
("141","52","_menu_item_type","post_type"),
("142","52","_menu_item_menu_item_parent","0"),
("143","52","_menu_item_object_id","2"),
("144","52","_menu_item_object","page"),
("145","52","_menu_item_target",""),
("146","52","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("147","52","_menu_item_xfn",""),
("148","52","_menu_item_url",""),
("150","53","_menu_item_type","taxonomy"),
("151","53","_menu_item_menu_item_parent","0"),
("152","53","_menu_item_object_id","2"),
("153","53","_menu_item_object","category"),
("154","53","_menu_item_target",""),
("155","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("156","53","_menu_item_xfn",""),
("157","53","_menu_item_url",""),
("159","54","_menu_item_type","taxonomy"),
("160","54","_menu_item_menu_item_parent","0"),
("161","54","_menu_item_object_id","3"),
("162","54","_menu_item_object","category"),
("163","54","_menu_item_target",""),
("164","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("165","54","_menu_item_xfn",""),
("166","54","_menu_item_url","");
INSERT INTO bz_postmeta VALUES
("168","55","_menu_item_type","taxonomy"),
("169","55","_menu_item_menu_item_parent","0"),
("170","55","_menu_item_object_id","1"),
("171","55","_menu_item_object","category"),
("172","55","_menu_item_target",""),
("173","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("174","55","_menu_item_xfn",""),
("175","55","_menu_item_url",""),
("177","56","_menu_item_type","taxonomy"),
("178","56","_menu_item_menu_item_parent","0"),
("179","56","_menu_item_object_id","4"),
("180","56","_menu_item_object","category"),
("181","56","_menu_item_target",""),
("182","56","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("183","56","_menu_item_xfn",""),
("184","56","_menu_item_url",""),
("200","65","_edit_last","1"),
("201","65","_edit_lock","1554004876:1"),
("202","75","_wp_attached_file","2019/03/1.jpg"),
("203","75","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("204","76","_wp_attached_file","2019/03/2.jpg"),
("205","76","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("206","77","_wp_attached_file","2019/03/3.jpg"),
("207","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("208","78","_wp_attached_file","2019/03/4.jpg"),
("209","78","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("210","74","_edit_last","1"),
("211","74","_thumbnail_id","75"),
("213","74","dia_chi"," Xã Khánh Bình, huyện Tân Uyên, tỉnh Bình Dương"),
("214","74","_dia_chi","field_5c9f452bb20da"),
("215","74","chu_dau_tu","Công ty TNHH Timberland - thuộc tập đoàn ManWah"),
("216","74","_chu_dau_tu","field_5c9f45a8b20db"),
("217","74","quy_mo","Dự án nhà xưởng Timberland được xây dựng trên khu đất rộng 40.000m2 với tổng diện tích sàn xây dựng gần 250.000m2 có quy mô gồm 8 khối tháp và 1 tầng hầm"),
("218","74","_quy_mo","field_5c9f45c5b20dc"),
("219","74","goi_thau",""),
("220","74","_goi_thau","field_5c9f45ebb20dd"),
("221","74","gia_tri_goi_thau"," Tổng thầu thi công các hạng mục kết cấu, hoàn thiện, MEP và hạ tầng"),
("222","74","_gia_tri_goi_thau","field_5c9f461eb20de"),
("223","74","thoi_gian_khoi_cong","20190306"),
("224","74","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("225","74","thoi_gian_hoan_thien","20200130"),
("226","74","_thoi_gian_hoan_thien","field_5c9f4651b20e0"),
("227","74","hinh_anh_du_an","a:4:{i:0;s:2:\"75\";i:1;s:2:\"76\";i:2;s:2:\"77\";i:3;s:2:\"78\";}"),
("228","74","_hinh_anh_du_an","field_5c9f4673b20e1"),
("245","74","_edit_lock","1553956768:1"),
("246","80","_edit_last","1"),
("247","80","_edit_lock","1553956761:1"),
("248","80","_thumbnail_id","76"),
("250","80","dia_chi"," 58 đường Tây Hồ, phường Quảng An, quận Tây Hồ, Thành phố Hà Nội"),
("251","80","_dia_chi","field_5c9f452bb20da"),
("252","80","chu_dau_tu","Công ty  TNHH Khách sạn và Du lịch Tây Hồ View"),
("253","80","_chu_dau_tu","field_5c9f45a8b20db"),
("254","80","quy_mo","Tổng thầu thi công kết cấu móng tầng hầm, kết cấu phần thân và xây trát khối 4A, 4B"),
("255","80","_quy_mo","field_5c9f45c5b20dc"),
("256","80","goi_thau","Gói thầu hoàn thiện toàn bộ cơ sở hạ tầng"),
("257","80","_goi_thau","field_5c9f45ebb20dd"),
("258","80","gia_tri_goi_thau","1,600 tỷ đồng"),
("259","80","_gia_tri_goi_thau","field_5c9f461eb20de"),
("260","80","thoi_gian_khoi_cong","20030207"),
("261","80","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("262","80","thoi_gian_hoan_thien","20050330"),
("263","80","_thoi_gian_hoan_thien","field_5c9f4651b20e0"),
("264","80","hinh_anh_du_an","a:4:{i:0;s:2:\"78\";i:1;s:2:\"77\";i:2;s:2:\"76\";i:3;s:2:\"75\";}"),
("265","80","_hinh_anh_du_an","field_5c9f4673b20e1"),
("282","82","_edit_last","1"),
("283","82","_edit_lock","1553956753:1"),
("284","82","_thumbnail_id","77"),
("286","82","dia_chi","29B Nguyễn Đình Chiểu, p.Đa Kao, Q.1, TPHCM"),
("287","82","_dia_chi","field_5c9f452bb20da"),
("288","82","chu_dau_tu","Công ty cổ phần Đầu tư và Thương mại An Khang"),
("289","82","_chu_dau_tu","field_5c9f45a8b20db"),
("290","82","quy_mo","Dự án được xây dựng trên khu đất rộng 5146.4 m2 bao gồm 4 tầng hầm và 26 tầng cao"),
("291","82","_quy_mo","field_5c9f45c5b20dc"),
("292","82","goi_thau","Gói thầu hoàn thiện toàn bộ cơ sở hạ tầng"),
("293","82","_goi_thau","field_5c9f45ebb20dd"),
("294","82","gia_tri_goi_thau","1200 tỷ"),
("295","82","_gia_tri_goi_thau","field_5c9f461eb20de"),
("296","82","thoi_gian_khoi_cong","20160323"),
("297","82","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("298","82","thoi_gian_hoan_thien","20160323"),
("299","82","_thoi_gian_hoan_thien","field_5c9f4651b20e0"),
("300","82","hinh_anh_du_an","a:4:{i:0;s:2:\"78\";i:1;s:2:\"77\";i:2;s:2:\"76\";i:3;s:2:\"75\";}"),
("301","82","_hinh_anh_du_an","field_5c9f4673b20e1"),
("318","84","_edit_last","1"),
("319","84","_edit_lock","1553956746:1"),
("320","84","_thumbnail_id","78"),
("322","84","dia_chi","Số 12 đường Trần Phú, Thành phố Hải Phòng"),
("323","84","_dia_chi","field_5c9f452bb20da"),
("324","84","chu_dau_tu","Công ty TNHH Nhật Hạ"),
("325","84","_chu_dau_tu","field_5c9f45a8b20db"),
("326","84","quy_mo","01 tầng hầm, 32 tầng nổi với 320 phòng khách sạn và 01 trung tâm hội nghị Quốc tế với sức chứa 1.200 – 1.500 chỗ ngồi"),
("327","84","_quy_mo","field_5c9f45c5b20dc"),
("328","84","goi_thau","General Contractor"),
("329","84","_goi_thau","field_5c9f45ebb20dd"),
("330","84","gia_tri_goi_thau","1600 tỷ đồng"),
("331","84","_gia_tri_goi_thau","field_5c9f461eb20de"),
("332","84","thoi_gian_khoi_cong","20190322"),
("333","84","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("334","84","thoi_gian_hoan_thien","20190331"),
("335","84","_thoi_gian_hoan_thien","field_5c9f4651b20e0");
INSERT INTO bz_postmeta VALUES
("336","84","hinh_anh_du_an","a:4:{i:0;s:2:\"78\";i:1;s:2:\"77\";i:2;s:2:\"76\";i:3;s:2:\"75\";}"),
("337","84","_hinh_anh_du_an","field_5c9f4673b20e1"),
("354","86","_edit_last","1"),
("355","86","_edit_lock","1553956738:1"),
("356","87","_wp_attached_file","2019/03/5.jpg"),
("357","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("358","86","_thumbnail_id","87"),
("360","86","dia_chi","Quận Ba Đình, Hà Nội"),
("361","86","_dia_chi","field_5c9f452bb20da"),
("362","86","chu_dau_tu","Vingroup"),
("363","86","_chu_dau_tu","field_5c9f45a8b20db"),
("364","86","quy_mo","Tổng thầu thi công 4 tầng hầm, 3 tháp căn hộ cao từ 41 đến 45 tầng, 2 tháp văn phòng thương mại và một trường học 6 tầng"),
("365","86","_quy_mo","field_5c9f45c5b20dc"),
("366","86","goi_thau","Tổng thầu thi công 4 tầng hầm"),
("367","86","_goi_thau","field_5c9f45ebb20dd"),
("368","86","gia_tri_goi_thau","2000 tỷ đồng"),
("369","86","_gia_tri_goi_thau","field_5c9f461eb20de"),
("370","86","thoi_gian_khoi_cong","20190307"),
("371","86","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("372","86","thoi_gian_hoan_thien","20190331"),
("373","86","_thoi_gian_hoan_thien","field_5c9f4651b20e0"),
("374","86","hinh_anh_du_an","a:4:{i:0;s:2:\"77\";i:1;s:2:\"76\";i:2;s:2:\"75\";i:3;s:2:\"78\";}"),
("375","86","_hinh_anh_du_an","field_5c9f4673b20e1"),
("392","89","_edit_last","1"),
("393","89","_edit_lock","1553956731:1"),
("394","90","_wp_attached_file","2019/03/6.jpg"),
("395","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:13:\"2019/03/6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("396","89","_thumbnail_id","90"),
("398","89","dia_chi","Đảo Cát Hải, huyện Cát Hải, Tp. Hải Phòng"),
("399","89","_dia_chi","field_5c9f452bb20da"),
("400","89","chu_dau_tu","VinGroup"),
("401","89","_chu_dau_tu","field_5c9f45a8b20db"),
("402","89","quy_mo","Operation centre, complementary centre, underground tank, electric scooter and automobile plant on the total area of 50 ha"),
("403","89","_quy_mo","field_5c9f45c5b20dc"),
("404","89","goi_thau","Tổng thầu thi công"),
("405","89","_goi_thau","field_5c9f45ebb20dd"),
("406","89","gia_tri_goi_thau","VND 2,000 billion"),
("407","89","_gia_tri_goi_thau","field_5c9f461eb20de"),
("408","89","thoi_gian_khoi_cong","20190308"),
("409","89","_thoi_gian_khoi_cong","field_5c9f463ab20df"),
("410","89","thoi_gian_hoan_thien","20190310"),
("411","89","_thoi_gian_hoan_thien","field_5c9f4651b20e0"),
("412","89","hinh_anh_du_an","a:4:{i:0;s:2:\"87\";i:1;s:2:\"78\";i:2;s:2:\"77\";i:3;s:2:\"76\";}"),
("413","89","_hinh_anh_du_an","field_5c9f4673b20e1"),
("430","92","_edit_last","1"),
("431","92","_edit_lock","1553961883:1"),
("432","93","_wp_attached_file","2019/03/7.jpg"),
("433","93","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:13:\"2019/03/7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("434","92","_thumbnail_id","93"),
("436","95","_edit_last","1"),
("437","95","_edit_lock","1553942688:1"),
("438","96","_wp_attached_file","2019/03/8.jpg"),
("439","96","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:13:\"2019/03/8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("440","95","_thumbnail_id","96"),
("442","98","_edit_last","1"),
("443","98","_edit_lock","1553961880:1"),
("444","99","_wp_attached_file","2019/03/9.jpg"),
("445","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:13:\"2019/03/9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("446","98","_thumbnail_id","99"),
("448","101","_edit_last","1"),
("449","101","_edit_lock","1553942761:1"),
("450","102","_wp_attached_file","2019/03/10.jpg"),
("451","102","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:14:\"2019/03/10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("452","101","_thumbnail_id","102"),
("454","105","_wp_attached_file","2019/03/11.jpg"),
("455","105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:14:\"2019/03/11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("456","104","_edit_last","1"),
("457","104","_thumbnail_id","105"),
("459","104","_edit_lock","1553942793:1"),
("460","107","_edit_last","1"),
("461","107","_edit_lock","1553961875:1"),
("462","108","_wp_attached_file","2019/03/13.jpg"),
("463","108","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:14:\"2019/03/13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("464","107","_thumbnail_id","108"),
("466","2","_thumbnail_id",""),
("467","112","_wp_attached_file","2019/03/z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9.jpg"),
("468","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:573;s:4:\"file\";s:59:\"2019/03/z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9-768x314.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9-1024x419.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("657","190","_wp_attached_file","2019/03/International-3-1.jpg"),
("658","190","_wp_attachment_metadata","a:5:{s:5:\"width\";i:360;s:6:\"height\";i:240;s:4:\"file\";s:29:\"2019/03/International-3-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"International-3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"International-3-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1537456231\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("659","192","_wp_attached_file","2019/03/Bim-LM81-1.jpg"),
("660","192","_wp_attachment_metadata","a:5:{s:5:\"width\";i:360;s:6:\"height\";i:240;s:4:\"file\";s:22:\"2019/03/Bim-LM81-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Bim-LM81-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Bim-LM81-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"admin\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530353023\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("661","194","_wp_attached_file","2019/03/toan_canh_ve_dem_xefo.jpg"),
("662","194","_wp_attachment_metadata","a:5:{s:5:\"width\";i:360;s:6:\"height\";i:240;s:4:\"file\";s:33:\"2019/03/toan_canh_ve_dem_xefo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"toan_canh_ve_dem_xefo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"toan_canh_ve_dem_xefo-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("689","225","_wp_attached_file","2019/03/Tong-thau1-services.jpg"),
("690","225","_wp_attachment_metadata","a:5:{s:5:\"width\";i:320;s:6:\"height\";i:220;s:4:\"file\";s:31:\"2019/03/Tong-thau1-services.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Tong-thau1-services-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Tong-thau1-services-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"20\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1405488012\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("691","227","_wp_attached_file","2019/03/design-build.jpg"),
("692","227","_wp_attachment_metadata","a:5:{s:5:\"width\";i:320;s:6:\"height\";i:220;s:4:\"file\";s:24:\"2019/03/design-build.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"design-build-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"design-build-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("697","233","_wp_attached_file","2019/03/ha-tang.jpg"),
("698","233","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:207;s:4:\"file\";s:19:\"2019/03/ha-tang.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ha-tang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ha-tang-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("713","243","_wp_attached_file","2019/03/343434.jpg"),
("714","243","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:195;s:4:\"file\";s:18:\"2019/03/343434.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"343434-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"343434-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("721","250","_wp_attached_file","2019/03/thiet-ke-noi-that.jpg"),
("722","250","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:206;s:4:\"file\";s:29:\"2019/03/thiet-ke-noi-that.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"thiet-ke-noi-that-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"thiet-ke-noi-that-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("723","252","_wp_attached_file","2019/03/thiet-ke-ha-tang.jpg"),
("724","252","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:206;s:4:\"file\";s:28:\"2019/03/thiet-ke-ha-tang.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"thiet-ke-ha-tang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"thiet-ke-ha-tang-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("725","254","_wp_attached_file","2019/03/34334343434.jpg"),
("726","254","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:206;s:4:\"file\";s:23:\"2019/03/34334343434.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"34334343434-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"34334343434-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("727","256","_wp_attached_file","2019/03/6789.jpg"),
("728","256","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:206;s:4:\"file\";s:16:\"2019/03/6789.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"6789-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"6789-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("745","274","_menu_item_type","taxonomy");
INSERT INTO bz_postmeta VALUES
("746","274","_menu_item_menu_item_parent","0"),
("747","274","_menu_item_object_id","6"),
("748","274","_menu_item_object","category"),
("749","274","_menu_item_target",""),
("750","274","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("751","274","_menu_item_xfn",""),
("752","274","_menu_item_url",""),
("782","291","_wp_attached_file","2019/03/dot.jpg"),
("783","291","_wp_attachment_metadata","a:5:{s:5:\"width\";i:9;s:6:\"height\";i:9;s:4:\"file\";s:15:\"2019/03/dot.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("784","291","_edit_lock","1553962584:1"),
("787","293","_wp_attached_file","2019/03/Hostinger.jpg"),
("788","293","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:175;s:4:\"file\";s:21:\"2019/03/Hostinger.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Hostinger-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Hostinger-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("789","295","_edit_last","1"),
("790","295","_edit_lock","1553962920:1"),
("791","297","_wp_attached_file","2019/03/bg-footer.jpg"),
("792","297","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:453;s:4:\"file\";s:21:\"2019/03/bg-footer.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-footer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-footer-300x72.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bg-footer-768x183.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bg-footer-1024x244.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("794","303","_wp_attached_file","2019/03/Unicons_Logo_27062016.jpg"),
("795","303","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:64;s:4:\"file\";s:33:\"2019/03/Unicons_Logo_27062016.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("796","304","_wp_attached_file","2019/03/logo2-1.jpg"),
("797","304","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:64;s:4:\"file\";s:19:\"2019/03/logo2-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("798","305","_wp_attached_file","2019/03/logo3.jpg"),
("799","305","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:64;s:4:\"file\";s:17:\"2019/03/logo3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("800","306","_wp_attached_file","2019/03/Covestcons.jpg"),
("801","306","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:64;s:4:\"file\";s:22:\"2019/03/Covestcons.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("802","309","_wp_attached_file","2019/03/logo-kuston-home.png"),
("803","309","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:217;s:4:\"file\";s:28:\"2019/03/logo-kuston-home.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"logo-kuston-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"logo-kuston-home-300x217.png\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("895","1","_edit_lock","1553964798:1"),
("896","1","_edit_last","1"),
("897","1","_thumbnail_id","77"),
("899","1","_yoast_wpseo_content_score","90"),
("900","1","_yoast_wpseo_focuskeywords",""),
("901","1","_yoast_wpseo_keywordsynonyms",""),
("902","1","_yoast_wpseo_primary_category",""),
("930","45","_yoast_wpseo_content_score","60"),
("931","45","_yoast_wpseo_focuskeywords",""),
("932","45","_yoast_wpseo_keywordsynonyms",""),
("950","37","_yoast_wpseo_content_score","60"),
("951","37","_yoast_wpseo_focuskeywords",""),
("952","37","_yoast_wpseo_keywordsynonyms",""),
("953","39","_yoast_wpseo_content_score","60"),
("954","39","_yoast_wpseo_focuskeywords",""),
("955","39","_yoast_wpseo_keywordsynonyms",""),
("956","41","_yoast_wpseo_content_score","60"),
("957","41","_yoast_wpseo_focuskeywords",""),
("958","41","_yoast_wpseo_keywordsynonyms",""),
("959","43","_yoast_wpseo_content_score","60"),
("960","43","_yoast_wpseo_focuskeywords",""),
("961","43","_yoast_wpseo_keywordsynonyms",""),
("1093","295","_thumbnail_id",""),
("1146","486","_wp_attached_file","2019/03/icon-phone2.png"),
("1147","486","_wp_attachment_metadata","a:5:{s:5:\"width\";i:74;s:6:\"height\";i:60;s:4:\"file\";s:23:\"2019/03/icon-phone2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1148","486","_edit_lock","1554013203:1"),
("1149","487","_wp_attached_file","2019/03/icon-sms2.png"),
("1150","487","_wp_attachment_metadata","a:5:{s:5:\"width\";i:74;s:6:\"height\";i:60;s:4:\"file\";s:21:\"2019/03/icon-sms2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1151","487","_edit_lock","1554013262:1"),
("1152","488","_wp_attached_file","2019/03/icon-zalo2.png"),
("1153","488","_wp_attachment_metadata","a:5:{s:5:\"width\";i:74;s:6:\"height\";i:60;s:4:\"file\";s:22:\"2019/03/icon-zalo2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1154","488","_edit_lock","1554013262:1"),
("1155","489","_wp_attached_file","2019/03/icon-mesenger2.png"),
("1156","489","_wp_attachment_metadata","a:5:{s:5:\"width\";i:74;s:6:\"height\";i:60;s:4:\"file\";s:26:\"2019/03/icon-mesenger2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1157","489","_edit_lock","1554013262:1"),
("1162","496","_wp_attached_file","2019/04/sfsfđs.png"),
("1163","496","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/04/sfsfđs.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1164","497","_wp_attached_file","2019/04/cropped-sfsfđs.png"),
("1165","497","_wp_attachment_context","site-icon"),
("1166","497","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2019/04/cropped-sfsfđs.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-sfsfđs-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-sfsfđs-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-sfsfđs-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-sfsfđs-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-sfsfđs-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-sfsfđs-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1173","502","_wp_trash_meta_status","publish"),
("1174","502","_wp_trash_meta_time","1557133674"),
("1175","503","_wp_attached_file","2019/05/gioithieucongty3.png"),
("1176","503","_wp_attachment_metadata","a:5:{s:5:\"width\";i:245;s:6:\"height\";i:90;s:4:\"file\";s:28:\"2019/05/gioithieucongty3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"gioithieucongty3-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1177","504","_wp_trash_meta_status","publish"),
("1178","504","_wp_trash_meta_time","1557137611");




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
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2019-03-21 09:49:00","2019-03-21 09:49:00","<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2019-03-30 23:55:41","2019-03-30 16:55:41","","0","https://tppone.com/demo/gioithieucongty3/?p=1","0","post","","1"),
("2","1","2019-03-21 09:49:00","2019-03-21 09:49:00","[row label=\"Slider\" class=\"slider-section\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"112\" image_size=\"original\" caption=\"true\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Dự án tiêu biểu\" padding=\"0px\" class=\"du-an\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Dự án tiêu biểu\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" size=\"80\" link_text=\"+ Xem tất cả\" link=\"/du-an/\"]\n\n[blog_posts style=\"normal\" col_spacing=\"xsmall\" columns=\"5\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"2\" posts=\"10\" show_date=\"false\" excerpt_length=\"9\" comments=\"false\" image_height=\"70%\" image_hover=\"zoom\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" padding=\"10px\" class=\"tin-tuc\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[title text=\"Tin tức\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" size=\"80\" link_text=\"+ Xem thêm\" link=\"/tin-tuc/\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"22\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.13)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" class=\"cot2\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"5\" offset=\"1\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"59%\" image_width=\"26\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col_inner]\n\n[/row_inner]\n[row_inner class=\"linh-vuc\"]\n\n[col_inner span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lĩnh vực hoạt động\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[ux_slider nav_pos=\"outside\" nav_size=\"normal\" nav_style=\"simple\" nav_color=\"dark\" bullet_style=\"simple\"]\n\n[row_inner_1 style=\"small\"]\n\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"225\" img_width=\"600\" pos=\"center\"]\n\n<h3>Tổng thầu xây lắp</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"227\" img_width=\"600\" pos=\"center\"]\n\n<h3>Thiết kế và thi công</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"256\" img_width=\"600\" pos=\"center\"]\n\n<h3>Cơ điện</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1 style=\"small\"]\n\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"250\" img_width=\"600\" pos=\"center\"]\n\n<h3>Nội thất</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"252\" img_width=\"600\" pos=\"center\"]\n\n<h3>Tổng thầu xây lắp</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"254\" img_width=\"600\" pos=\"center\"]\n\n<h3>Hạ tầng</h3>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n[gap]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\" class=\"tin-co-dong\"]\n\n[title text=\"Thông tin cổ đông\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"4\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"65%\" image_width=\"27\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" class=\"tin-thi-truong\"]\n\n[title text=\"Tin thị trường\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"4\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"65%\" image_width=\"27\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Hành trình chinh phục Landmark 81\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"190\" image_size=\"original\" caption=\"true\"]\n\n[ux_image id=\"192\" image_size=\"original\" caption=\"true\"]\n\n[ux_image id=\"194\" image_size=\"original\" caption=\"true\"]\n\n\n[/ux_slider]\n[title style=\"center\" text=\"Hợp tác cùng chúng tôi\"]\n\n<p class=\"des\"><span style=\"font-size: 95%;\">Nhấp chuột vào link liên kết để tham gia vào chuỗi cung ứng của CotecCons</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\" class=\"nut-1\"]\n\n[button text=\"Giới thiệu năng lực\" letter_case=\"lowercase\" radius=\"5\" expand=\"true\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" class=\"nut-2\"]\n\n[button text=\"Chat Facebook\" letter_case=\"lowercase\" radius=\"5\" expand=\"true\" link=\"https://messenger.com/t/demo\" target=\"_blank\"]\n\n\n[/col_inner]\n\n[/row_inner]\n[title style=\"center\" text=\"Videos\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"6\" posts=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"65%\" image_width=\"27\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"video-post\"]\n\n[title style=\"center\" text=\"Thông tin tuyển dụng\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"small\" class=\"tuyen-dung-post\"]\n\n[ux_image id=\"293\" link=\"https://Webdemo.com/wp-content/uploads/2018/10/Hostinger.jpg\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-03-30 23:14:05","2019-03-30 16:14:05","","0","https://tppone.com/demo/gioithieucongty3/?page_id=2","0","page","","0"),
("3","1","2019-03-21 09:49:00","2019-03-21 09:49:00","<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: https://bizhostvn.com/w/gioithieucongty3.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-21 09:49:00","2019-03-21 09:49:00","","0","https://tppone.com/demo/gioithieucongty3/?page_id=3","0","page","","0"),
("12","1","2019-03-21 16:55:15","2019-03-21 09:55:15","","limenu","","inherit","open","closed","","limenu","","","2019-03-21 16:55:15","2019-03-21 09:55:15","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/limenu.jpg","0","attachment","image/jpeg","0"),
("14","1","2019-03-21 16:56:44","2019-03-21 09:56:44","","limenu (1)","","inherit","open","closed","","limenu-1","","","2019-03-21 16:56:44","2019-03-21 09:56:44","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/limenu-1.jpg","0","attachment","image/jpeg","0"),
("24","1","2019-03-30 17:10:05","2019-03-30 10:10:05","","logo-giuseart","","inherit","open","closed","","logo-giuseart","","","2019-03-30 17:10:05","2019-03-30 10:10:05","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/logo-giuseart.png","0","attachment","image/png","0"),
("26","1","2019-03-30 17:10:19","2019-03-30 10:10:19","https://bizhostvn.com/w/gioithieucongty3/wp-content/uploads/2019/03/cropped-logo-giuseart.png","cropped-logo-giuseart.png","","inherit","open","closed","","cropped-logo-giuseart-png","","","2019-03-30 17:10:19","2019-03-30 10:10:19","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/cropped-logo-giuseart.png","0","attachment","image/png","0"),
("37","1","2019-03-30 17:18:04","2019-03-30 10:18:04","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-03-31 00:10:04","2019-03-30 17:10:04","","0","https://tppone.com/demo/gioithieucongty3/?page_id=37","0","page","","0"),
("39","1","2019-03-30 17:18:10","2019-03-30 10:18:10","<strong>Dưới đây là một số mẫu website giới thiệu sản phẩm mà mình đã thực hiện:</strong>\n\n+ Website giới thiệu Trung tâm Năng khiếu Thiếu Nhi: <a href=\"http://pianocenter.webdemo.com/\">www.pianocenter.webdemo.com</a>\n\n+ Website giới thiệu dịch vụ thiết kế – in ấn chuyên nghiệp: <a href=\"http://print2.webdemo.com/\">www.print2.webdemo.com</a>\n\n+ Website giới thiệu nhà hàng nướng BBQ: <a href=\"http://bbq.webdemo.com/\">www.bbq.webdemo.com</a>\n\n+ Website giới thiệu công ty thiết kế – thi công nội thất: <a href=\"http://noithat2.webdemo.com/\">www.noithat2.webdemo.com</a>\n\n+ Website giới thiệu Digital Marketing Agency: <a href=\"http://marketing.webdemo.com/\">www.marketing.webdemo.com</a>\n\n+ Website Công ty Sâm Ngọc Linh: <a href=\"http://samngoclinh.webdemo.com/\">www.samngoclinh.webdemo.com</a>\n\n+ Websie Công ty Tổ chức sự kiện: <a href=\"http://event2.webdemo.com/\">www.event.webdemo.com</a>\n\n+ Website Trung tâm sửa chữa Iphone, thay mặt kính iphone: <a href=\"http://ifix.webdemo.com/\">www.ifix.webdemo.com</a>\n\n+ Website Xưởng in phun khổ lớn: <a href=\"http://www.inbat.webdemo.com/\">www.inbat.webdemo.com</a>\n\n+ Website Trung tâm Nghệ thuật Thiếu Nhi: <a href=\"http://www.edu.webdemo.com/\">www.edu.webdemo.com</a>\n\n+ Website Trung tâm Năng khiếu Thiếu Nhi: <a href=\"http://art.webdemo.com/\">www.art.webdemo.com</a>\n\n+ Website bấm huyện bàn chân: <a href=\"http://bamhuyetbanchan.com/\">www.bamhuyetbanchan.com/</a>\n\n+ Website giới thiệu Công ty Kiến trúc: <a href=\"http://arc.webdemo.com/\">www.arc.webdemo.com</a>\n\n+ Website Viện thẩm mỹ Da &amp; Nha khoa: <a href=\"http://www.vivaclinic.webdemo.com/\">www.vivaclinic.webdemo.com</a>\n\n+ Website Spa, thẩm mỹ:<a href=\"http://spa.webdemo.com/\"> www.spa.webdemo.com</a>\n\n+ Website 2 ngôn ngữ về Thiết bị y tế: <a href=\"http://www.thietbiyte.webdemo.com/\">www.thietbiyte.webdemo.com</a>\n\n+ Website 2 ngôn ngữ Anh – Thái về Aluminium: <a href=\"http://www.g9metal.com/\">www.g9metal.com</a>\n\n+ Website Công ty Tổ chức Sự kiện: <a href=\"http://www.sacmauquocte.vn/\">www.sacmauquocte.vn</a>\n\n+ Demo website công ty quảng cáo:<a href=\"https://www.Webdemo.com/demo/print\"> www.Webdemo.com/demo/print</a>\n\n+ Demo website bán nội thất: <a href=\"https://www.Webdemo.com/demo/shopnoithat\">www.Webdemo.com/demo/shopnoithat</a>\n\n+ Demo website quảng cáo đèn LED: <a href=\"https://www.Webdemo.com/demo/quangcaoled\">www.Webdemo.com/demo/quangcaoled</a>\n\n+ Website Trung tâm tin học PST: <a href=\"http://www.tinhocpst.edu.vn/\">www.tinhocpst.edu.vn</a>\n\n+ Website Trung tâm Mỹ thuật Thiếu Nhi Việt Nhí: <a href=\"http://www.vietnhi.vn/\">www.vietnhi.vn</a>\n\n+ Website Áo Công Giáo: <a href=\"http://www.aoconggiao.com/\">www.aoconggiao.com</a>\n\n+ Quảng cáo An Gia Đạt: <a href=\"http://www.angiadat.com/\">www.angiadat.com</a>\n\n+ Quảng cáo Vũ Gia: <a href=\"http://www.quangcaovugia.com/\">www.quangcaovugia.com</a>\n\n+ Nhôm kính Tiên phong: <a href=\"http://www.lamcuanhomgiare.com/\">www.lamcuanhomgiare.com</a>\n\n<a href=\"https://Webdemo.com/\">Webdemo.com </a>cung cấp dịch vụ thiết kế website giới thiệu dịch vụ công ty chuẩn SEO uy tín tại Việt Nam.\n\n<strong>Yêu cầu đặc trưng</strong> của các website giới thiệu dịch vụ của công ty là các dịch vụ phải được liệt kê rõ ràng, thông tin công ty, doanh nghiệp được ưu tiên. Các dịch vụ được làm nổi bật, dễ nhìn, dễ tìm kiếm. Bên cạnh đó, các website giới thiệu dịch vụ thường có box chat để nhân viên trực website sẵn sàng online và trả lời khách trong trường hợp khách hàng có thắc mắc hoặc nhu cầu sử dụng dịch vụ.\n\nTại <a href=\"https://Webdemo.com/\">Webdemo</a>, mình cung cấp dịch vụ thiết kế website với <strong>mức giá rất hấp dẫn</strong>. Thông thường, một website bán hàng Online có chi phí rơi vào khoảng<strong> 1.500.000đ – 2.500.000đ</strong> (đã bao gồm hosting và tên miền).\n\n<strong>Quy trình thiết kế website giới thiệu sản phẩm tại Webdemo.com như sau:</strong>\n<ul>\n 	<li><strong>Bước 1:</strong> Trao đổi thông tin, yêu cầu với khách hàng</li>\n 	<li><strong>Bước 2:</strong> Mua tên miền cho khách (khách có thể tự mua)</li>\n 	<li><strong>Bước 3:</strong> Trỏ tên miền về hosting cho khách (dùng hosting của Webdemo hoặc dùng hosting của khách)</li>\n 	<li><strong>Bước 4:</strong> Thực hiện xây dựng website trên hosting (chặn index)</li>\n 	<li><strong>Bước 5:</strong> Gửi link website cho khách duyệt và trao đổi chỉnh sửa trực tiếp trên website theo ý khách.</li>\n 	<li><strong>Bước 6:</strong> Hướng dẫn khách sử dụng, quản trị, đăng bài viết, đăng sản phẩm và các thông tin khác có liên quan…</li>\n 	<li><strong>Bước 7:</strong> Mở index</li>\n 	<li><strong>Bước 8:</strong> Bàn giao website cho khách</li>\n</ul>\nTrong một số trường hợp khách cần xem demo trước khi duyệt làm website, mình sẽ thực hiện dựng website demo trước và gửi cho khách duyệt trước khi upload source code lên hosting.\n\n<strong>Thông tin liên hệ:</strong>\n+ Liên hệ: DEMO\n+ Phone: 0909009009\n+ Email: demoweb@gmail.com\n+ Website: www.Webdemo.com\n+ Flickr: <a href=\"http://www.flickr.com/photos/demo@N07/albums\">www.flickr.com/photos/demo@N07/albums</a>\n+ Behance: <a href=\"https://www.behance.net/demo\">https://www.behance.net/demo</a>\n+ Pintesest: <a href=\"https://www.pinterest.com/demo/pins/\">https://www.pinterest.com/demo/pins/</a>","Tổng quan công ty","","publish","closed","closed","","tong-quan-cong-ty","","","2019-03-31 00:10:30","2019-03-30 17:10:30","","0","https://tppone.com/demo/gioithieucongty3/?page_id=39","0","page","","0"),
("41","1","2019-03-30 17:18:21","2019-03-30 10:18:21","<strong>Dưới đây là một số mẫu website bán hàng mà mình đã thực hiện:</strong>\n\n+ Website công ty bán đồ phong thủy: <a href=\"https://phongthuylucyen.com/\">https://phongthuylucyen.com</a>\n\n+ Mẫu website buôn bán sản phẩm nội thất sáng tạo: <a href=\"http://funiture.webdemo.com/\">http://funiture.webdemo.com</a>\n\n+ Mẫu website bán otô và phụ tùng oto: <a href=\"http://salecar.webdemo.com/\">http://salecar.webdemo.com</a>\n\n+ Mẫu website shop bán hàng mới 2018: <a href=\"http://shop.webdemo.com/\">http://shop.webdemo.com</a>\n\n+ Mẫu website Công ty Sâm Ngọc Linh: <a href=\"http://samngoclinh.webdemo.com/\">http://samngoclinh.webdemo.com</a>\n\n+ Mẫu website bán máy lọc nước cực đẹp: <a href=\"http://mayloc.webdemo.com/\">http://mayloc.webdemo.com/</a>\n\n+ Mẫu website bán mỹ phẩm cực đẹp: <a href=\"http://mypham2.webdemo.com/\">http://mypham2.webdemo.com/</a>\n\n+ Mẫu website bán điện máy cực đẹp: <a href=\"http://dienmay2.webdemo.com/\">http://dienmay2.webdemo.com/</a>\n\n+ Mẫu website shop dụng cụ làm bánh 2: <a href=\"http://cake2.webdemo.com/\">http://cake2.webdemo.com</a>\n\n+ Mẫu website shop dụng cụ làm bánh: <a href=\"http://cake.webdemo.com/\">http://cake.webdemo.com</a>\n\n+ Mẫu website siêu thị Mẹ và Bé: <a href=\"http://mevabe.webdemo.com/\">http://mevabe.webdemo.com/</a>\n\n+ Mẫu website bán thuốc, thực phẩm chức năng: <a href=\"http://www.duocpham.webdemo.com/\">www.duocpham.webdemo.com</a>\n\n+ Mẫu website bán tượng thạch cao: <a href=\"http://www.tuongthachcao.webdemo.com/\">www.tuongthachcao.webdemo.com</a>\n\n+ Mẫu website shop thời trang tổng hợp: <a href=\"http://www.fashion2.webdemo.com/\">www.fashion2.webdemo.com</a>\n\n+ Mẫu website bán dự án Bất động sản: <a href=\"http://www.bds.webdemo.com/\">www.bds.webdemo.com</a>\n\n+ Mẫu website shop bán ô dù, áo mưa: <a href=\"http://www.aomua.webdemo.com/\">www.aomua.webdemo.com</a>\n\n+ Mẫu website Shop thời trang cao cấp: <a href=\"http://www.fashion.webdemo.com/\">www.fashion.webdemo.com</a>\n\n+ Mẫu website bán điện máy: <a href=\"http://www.dienmay.webdemo.com/\">www.dienmay.webdemo.com</a>\n\n+ Mẫu website bán mỹ phẩm: <a href=\"http://www.mypham.webdemo.com/\">www.mypham.webdemo.com</a>\n\n+ Mẫu website bán thiết bị y tế: <a href=\"http://www.thietbiyte.webdemo.com/\">www.thietbiyte.webdemo.com</a>\n\n+ Mẫu website bán điện thoại: <a href=\"https://www.Webdemo.com/demo/shoptranh\">www.Webdemo.com/demo/shoptranh</a>\n\n+ Demo website bán nội thất: <a href=\"https://www.Webdemo.com/demo/shopnoithat\">www.Webdemo.com/demo/shopnoithat</a>\n\n+ Website Sơn Tây Camera: <a href=\"http://www.sontaycamera.com/\">www.sontaycamera.com</a>\n\n+ Website cửa hàng bán điện thoại Iphone: <a href=\"http://www.golife.store/\">www.golife.store</a>\n\n+ Website Thương hiệu thời trang Công sở nữ: <a href=\"http://www.tk3.com.vn/\">www.tk3.com.vn</a>\n\n+ Website Cửa hàng Gạch ốp lát, đá trang trí: <a href=\"http://www.gachdatrangtrithuyoanh.com/\">www.gachdatrangtrithuyoanh.com</a>\n\n+ Website bánh tráng mè Tây Ninh: <a href=\"http://www.banhtrangmetayninh.com/\">www.banhtrangmetayninh.com</a>\n\n+ Website bán hàng cực đẹp: <a href=\"http://www.shopconggiao.com/\">www.shopconggiao.com</a>\n\n+ Website bán đàn Guitar 1: <a href=\"https://www.Webdemo.com/demo/guitarshop\">www.Webdemo.com/demo/guitarshop</a>\n\n+ Website bán đàn Guitar 1: <a href=\"https://Webdemo.com/demo/shopuku/\">www.Webdemo.com/demo/shopuku</a>\n\n<a href=\"https://Webdemo.com/\">Webdemo.com </a>cung cấp dịch vụ thiết kế website giới thiệu sản phẩm chuẩn SEO uy tín tại Việt Nam.\n\n<strong>Yêu cầu đặc trưng</strong> của các website bán hàng là đầy đủ các chức năng cần thiết cho hoạt động kinh doanh online như: đăng sản phẩm, hình ảnh sản phẩm, giá bán, giá khuyến mại, tình trạng còn hàng hay hết hàng, mã sản phẩm, thông tin khuyến mãi, thông tin liên hệ, đặt hàng, giỏ hàng,…\n\nTại <a href=\"https://Webdemo.com/\">Webdemo</a>, mình cung cấp dịch vụ thiết kế website với <strong>mức giá rất hấp dẫn</strong>. Thông thường, một website bán hàng Online có chi phí rơi vào khoảng<strong> 1.500.000đ – 2.500.000đ</strong> (đã bao gồm hosting và tên miền).\n\n<strong>Quy trình thiết kế website giới thiệu sản phẩm tại Webdemo.com như sau:</strong>\n<ul>\n 	<li><strong>Bước 1:</strong> Trao đổi thông tin, yêu cầu với khách hàng</li>\n 	<li><strong>Bước 2:</strong> Mua tên miền cho khách (khách có thể tự mua)</li>\n 	<li><strong>Bước 3:</strong> Trỏ tên miền về hosting cho khách (dùng hosting của Webdemo hoặc dùng hosting của khách)</li>\n 	<li><strong>Bước 4:</strong> Thực hiện xây dựng website trên hosting (chặn index)</li>\n 	<li><strong>Bước 5:</strong> Gửi link website cho khách duyệt và trao đổi chỉnh sửa trực tiếp trên website theo ý khách.</li>\n 	<li><strong>Bước 6:</strong> Hướng dẫn khách sử dụng, quản trị, đăng bài viết, đăng sản phẩm và các thông tin khác có liên quan…</li>\n 	<li><strong>Bước 7:</strong> Mở index</li>\n 	<li><strong>Bước 8:</strong> Bàn giao website cho khách</li>\n</ul>\nTrong một số trường hợp khách cần xem demo trước khi duyệt làm website, mình sẽ thực hiện dựng website demo trước và gửi cho khách duyệt trước khi upload source code lên hosting.\n\n<strong>Thông tin liên hệ:</strong>\n+ Liên hệ: DEMO\n+ Phone: 0909009009\n+ Email: demoweb@gmail.com\n+ Website: www.Webdemo.com\n+ Flickr: <a href=\"http://www.flickr.com/photos/demo@N07/albums\">www.flickr.com/photos/demo@N07/albums</a>\n+ Behance: <a href=\"https://www.behance.net/demo\">https://www.behance.net/demo</a>\n+ Pintesest: <a href=\"https://www.pinterest.com/demo/pins/\">https://www.pinterest.com/demo/pins/</a>","Sứ mệnh","","publish","closed","closed","","su-menh","","","2019-03-31 00:10:45","2019-03-30 17:10:45","","0","https://tppone.com/demo/gioithieucongty3/?page_id=41","0","page","","0"),
("43","1","2019-03-30 17:18:26","2019-03-30 10:18:26","<strong>Dưới đây là một số mẫu website giới thiệu sản phẩm mà mình đã thực hiện:</strong>\n\n+ Website shop bán hạt điều, dầu tràm: <a href=\"http://hatdieu.webdemo.com/\">www.hatdieu.webdemo.com</a>\n\n+ Website giới thiệu Xưởng sản xuất Tượng Thạch Cao: <a href=\"http://www.tuongthachcao.webdemo.com/\">www.tuongthachcao.webdemo.com</a>\n\n+ Website giới thiệu Máy lọc nước Kangaroo Hydrogen: <a href=\"http://www.hydrogen.webdemo.com/\">www.hydrogen.webdemo.com</a>\n\n+ Website giới thiệu dự án Bất động sản: <a href=\"http://www.bds.webdemo.com/\">www.bds.webdemo.com</a>\n\n+ Website giới thiệu công ty Kiến trúc: <a href=\"http://arc.webdemo.com/\">www.arc.webdemo.com</a>\n\n+ Website 2 ngôn ngữ về Thiết bị y tế: <a href=\"https://Webdemo.com/www.thietbiyte.webdemo.com\">www.thietbiyte.webdemo.com</a>\n\n+ Website 2 ngôn ngữ Anh – Thái về Aluminium: <a href=\"http://www.g9metal.com/\">www.g9metal.com</a>\n\n+ Website Hệ thống phân phối Midea: <a href=\"http://www.mideawater.vn/\">www.mideawater.vn</a>\n\n+ Website song ngữ Aluminium: <a href=\"http://www.kingkonghomestay.com/\">www.kingkonghomestay.com</a>\n\n+ Website Cửa hàng Gạch ốp lát, đá trang trí: <a href=\"http://www.gachdatrangtrithuyoanh.com/\">www.gachdatrangtrithuyoanh.com</a>\n\n+ Website Áo Công Giáo: <a href=\"http://www.aoconggiao.com/\">www.aoconggiao.com</a>\n\n+ Website Nông sản Việt Hàn: <a href=\"http://www.nongsanviethan.com/\">www.nongsanviethan.com</a>\n\n+ Thương hiệu Bánh mỳ que Sài gòn: <a href=\"http://www.banhmyquesaigon.com/\">www.banhmyquesaigon.com</a>\n\n+ Website Sơn Tây Camera: <a href=\"http://www.sontaycamera.com/\">www.sontaycamera.com</a>\n\n+ Website cửa hàng bán điện thoại Iphone: <a href=\"http://www.golife.store/\">www.golife.store</a>\n\n+ Website Thương hiệu thời trang Công sở nữ: <a href=\"http://www.tk3.com.vn/\">www.tk3.com.vn</a>\n\n<a href=\"http://Webdemo.com/\">Webdemo.com </a>cung cấp dịch vụ thiết kế website giới thiệu sản phẩm chuẩn SEO uy tín tại Việt Nam.\n\n<strong>Yêu cầu đặc trưng</strong> của các website giới thiệu sản phẩm là <strong>bố cục rõ ràng, nội dung mạch lạc và chi tiế</strong>t, hỗ trợ đăng <strong>hình ảnh sản phẩm to, rõ ràng.</strong> Bên cạnh đó, <strong>thông tin về thương hiệu của doanh nghiệp, công ty</strong> cũng được quan tâm hiển thị rõ ràng, dễ nhận biết.\n\nTại <a href=\"http://Webdemo.com/\">Webdemo</a>, mình cung cấp dịch vụ thiết kế website với <strong>mức giá rất hấp dẫn</strong>. Thông thường, một website giới thiệu sản phẩm có chi phí rơi vào khoảng 1.500.000đ – 2.000.000đ (đã bao gồm hosting và tên miền).\n\n<strong>Quy trình thiết kế website giới thiệu sản phẩm tại Webdemo.com như sau:</strong>\n<ul>\n 	<li><strong>Bước 1:</strong> Trao đổi thông tin, yêu cầu với khách hàng</li>\n 	<li><strong>Bước 2:</strong> Mua tên miền cho khách (khách có thể tự mua)</li>\n 	<li><strong>Bước 3:</strong> Trỏ tên miền về hosting cho khách (dùng hosting của Webdemo hoặc dùng hosting của khách)</li>\n 	<li><strong>Bước 4:</strong> Thực hiện xây dựng website trên hosting (chặn index)</li>\n 	<li><strong>Bước 5:</strong> Gửi link website cho khách duyệt và trao đổi chỉnh sửa trực tiếp trên website theo ý khách.</li>\n 	<li><strong>Bước 6:</strong> Hướng dẫn khách sử dụng, quản trị, đăng bài viết, đăng sản phẩm và các thông tin khác có liên quan…</li>\n 	<li><strong>Bước 7:</strong> Mở index</li>\n 	<li><strong>Bước 8:</strong> Bàn giao website cho khách</li>\n</ul>\nTrong một số trường hợp khách cần xem demo trước khi duyệt làm website, mình sẽ thực hiện dựng website demo trước và gửi cho khách duyệt trước khi upload source code lên hosting.\n\n<strong>Thông tin liên hệ:</strong>\n+ Liên hệ: DEMO\n+ Phone: 0909009009\n+ Email: demoweb@gmail.com\n+ Website: www.Webdemo.com\n+ Flickr: <a href=\"http://www.flickr.com/photos/demo@N07/albums\">www.flickr.com/photos/demo@N07/albums</a>\n+ Behance: <a href=\"https://www.behance.net/demo\">https://www.behance.net/demo</a>\n+ Pintesest: <a href=\"https://www.pinterest.com/demo/pins/\">https://www.pinterest.com/demo/pins/</a>","Cán bộ chủ chốt","","publish","closed","closed","","can-bo-chu-chot","","","2019-03-31 00:11:01","2019-03-30 17:11:01","","0","https://tppone.com/demo/gioithieucongty3/?page_id=43","0","page","","0"),
("45","1","2019-03-30 17:19:52","2019-03-30 10:19:52","Xin chào bạn – độc giả của Webdemo.com,\n\nLời đầu tiên, cho phép Webdemo được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\nWebdemo.com được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những bài viết kiến thức hoặc những sản phẩm sáng tạo trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, Webdemo đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, Webdemo chính thức đem lại dịch vụ Thiết kế đồ họa và Thiết kế Website chuyên nghiệp từ đầu năm 2017. Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho Webdemo trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Liên hệ","","publish","closed","closed","","lien-he","","","2019-03-31 00:05:15","2019-03-30 17:05:15","","0","https://tppone.com/demo/gioithieucongty3/?page_id=45","0","page","","0"),
("47","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","47","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=47","11","nav_menu_item","","0"),
("48","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","48","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=48","5","nav_menu_item","","0"),
("49","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","49","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=49","4","nav_menu_item","","0"),
("50","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","50","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=50","3","nav_menu_item","","0"),
("51","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","51","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=51","2","nav_menu_item","","0"),
("52","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","52","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=52","1","nav_menu_item","","0"),
("53","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","53","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=53","6","nav_menu_item","","0"),
("54","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","54","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=54","7","nav_menu_item","","0"),
("55","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","55","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=55","8","nav_menu_item","","0"),
("56","1","2019-03-30 17:21:06","2019-03-30 10:21:06"," ","","","publish","closed","closed","","56","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=56","9","nav_menu_item","","0"),
("65","1","2019-03-30 17:30:01","2019-03-30 10:30:01","a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"category:du-an\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Dự án","du-an","publish","closed","closed","","group_5c9f4525965e9","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","0","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field-group&#038;p=65","0","acf-field-group","","0"),
("66","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:113:\"Nhập địa chỉ dự án. Ví dụ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:22:\"Nhập địa chỉ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Địa chỉ","dia_chi","publish","closed","closed","","field_5c9f452bb20da","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=66","0","acf-field","","0"),
("67","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Nhập tên chủ đầu tư. Ví dụ: Công ty TNHH Webdemo.com\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:31:\"Nhập tên chủ đầu tư...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Chủ đầu tư","chu_dau_tu","publish","closed","closed","","field_5c9f45a8b20db","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=67","1","acf-field","","0"),
("68","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:23:\"Nhập quy mô dự án\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"Nhập quy mô dự án\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}","Quy mô","quy_mo","publish","closed","closed","","field_5c9f45c5b20dc","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=68","2","acf-field","","0"),
("69","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:125:\"Nhập tên gói thầu. Ví dụ:  Tổng thầu thi công các hạng mục kết cấu, hoàn thiện, MEP và hạ tầng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:29:\"Nhập thông tin gói thầu\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Gói thầu","goi_thau","publish","closed","closed","","field_5c9f45ebb20dd","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=69","3","acf-field","","0"),
("70","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Nhập giá trị gói thầu. Ví dụ: 1500 tỷ đồng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:32:\"Nhập giá trị gói thầu...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Giá trị gói thầu","gia_tri_goi_thau","publish","closed","closed","","field_5c9f461eb20de","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=70","4","acf-field","","0"),
("71","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:32:\"Chọn thời gian khởi công.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}","Thời gian khởi công","thoi_gian_khoi_cong","publish","closed","closed","","field_5c9f463ab20df","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=71","5","acf-field","","0"),
("72","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:32:\"Nhập thời gian hoàn thiện\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}","Thời gian hoàn thiện","thoi_gian_hoan_thien","publish","closed","closed","","field_5c9f4651b20e0","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=72","6","acf-field","","0"),
("73","1","2019-03-30 17:36:20","2019-03-30 10:36:20","a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:34:\"Upload hình ảnh của dự án.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}","Hình ảnh dự án","hinh_anh_du_an","publish","closed","closed","","field_5c9f4673b20e1","","","2019-03-30 17:36:20","2019-03-30 10:36:20","","65","https://tppone.com/demo/gioithieucongty3/?post_type=acf-field&p=73","7","acf-field","","0"),
("74","1","2019-03-30 17:39:20","2019-03-30 10:39:20","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","TIMBERLAND MANWAH","","publish","open","open","","timberland-manwah","","","2019-03-30 21:41:51","2019-03-30 14:41:51","","0","https://tppone.com/demo/gioithieucongty3/?p=74","0","post","","0"),
("75","1","2019-03-30 17:37:42","2019-03-30 10:37:42","","1","","inherit","open","closed","","1","","","2019-03-30 17:42:33","2019-03-30 10:42:33","","74","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/1.jpg","0","attachment","image/jpeg","0"),
("76","1","2019-03-30 17:38:21","2019-03-30 10:38:21","","2","","inherit","open","closed","","2","","","2019-03-30 17:44:50","2019-03-30 10:44:50","","74","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/2.jpg","0","attachment","image/jpeg","0"),
("77","1","2019-03-30 17:38:44","2019-03-30 10:38:44","","3","","inherit","open","closed","","3","","","2019-03-30 17:38:45","2019-03-30 10:38:45","","74","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/3.jpg","0","attachment","image/jpeg","0"),
("78","1","2019-03-30 17:39:12","2019-03-30 10:39:12","","4","","inherit","open","closed","","4","","","2019-03-30 17:43:32","2019-03-30 10:43:32","","74","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/4.jpg","0","attachment","image/jpeg","0"),
("80","1","2019-03-30 17:40:49","2019-03-30 10:40:49","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","TÂY HỒ VIEW","","publish","open","open","","tay-ho-view","","","2019-03-30 21:41:44","2019-03-30 14:41:44","","0","https://tppone.com/demo/gioithieucongty3/?p=80","0","post","","0"),
("82","1","2019-03-30 17:41:48","2019-03-30 10:41:48","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","29B Nguyễn Đình Chiểu","","publish","open","open","","29b-nguyen-dinh-chieu","","","2019-03-30 21:41:36","2019-03-30 14:41:36","","0","https://tppone.com/demo/gioithieucongty3/?p=82","0","post","","0"),
("84","1","2019-03-30 17:42:38","2019-03-30 10:42:38","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","Khách sạn Pullman Hải Phòng","","publish","open","open","","khach-san-pullman-hai-phong","","","2019-03-30 21:41:28","2019-03-30 14:41:28","","0","https://tppone.com/demo/gioithieucongty3/?p=84","0","post","","0"),
("86","1","2019-03-30 17:43:54","2019-03-30 10:43:54","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","Vinhomes Metropolis","","publish","open","open","","vinhomes-metropolis","","","2019-03-30 21:41:22","2019-03-30 14:41:22","","0","https://tppone.com/demo/gioithieucongty3/?p=86","0","post","","0"),
("87","1","2019-03-30 17:43:50","2019-03-30 10:43:50","","5","","inherit","open","closed","","5","","","2019-03-30 17:43:50","2019-03-30 10:43:50","","86","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/5.jpg","0","attachment","image/jpeg","0"),
("89","1","2019-03-30 17:45:16","2019-03-30 10:45:16","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","Tổ hợp sản xuất Ô tô Vinfast","","publish","open","open","","to-hop-san-xuat-o-to-vinfast","","","2019-03-30 21:41:14","2019-03-30 14:41:14","","0","https://tppone.com/demo/gioithieucongty3/?p=89","0","post","","0"),
("90","1","2019-03-30 17:45:12","2019-03-30 10:45:12","","6","","inherit","open","closed","","6","","","2019-03-30 17:45:12","2019-03-30 10:45:12","","89","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/6.jpg","0","attachment","image/jpeg","0"),
("92","1","2019-03-30 17:46:12","2019-03-30 10:46:12","Cùng với chủ đề năm “Thay đổi để bứt phá”, Coteccons tiến hành đẩy mạnh các hoạt động nhằm phát triển văn hóa đổi mới và sáng tạo tại Công ty. Một trong số đó là thúc đẩy sự giao lưu và trao đổi kinh nghiệm với các doanh nghiệp thành công tại thị trường Việt Nam và quốc tế.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/MG_0673.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nTheo đó, sáng ngày 23/03/2019, Coteccons đã phối hợp với 3M Việt Nam tổ chức hội thảo với chủ đề Đổi mới và Sáng tạo tại Văn phòng trụ sở của Coteccons. Buổi hội thảo có sự tham gia của ông Nguyễn Sỹ Công – Tổng Giám đốc và các cán bộ lãnh đạo Coteccons, ông Sungjong Yoon – Giám đốc điều hành 3M Việt Nam, ông Jeffrey Tung – Trưởng bộ phận R&amp;D của 3M Singapore và Đông Nam Á, và hơn 20 cán bộ quản lý và kỹ sư của 3M Việt Nam.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/MG_0656.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nLà một trong những tập đoàn đa quốc gia thuộc top Fortune 500 của Mỹ, nổi tiếng về các sản phẩm mang tính đột phá và ứng dụng cao, tại buổi hội thảo, các lãnh đạo của 3M đã giới thiệu về văn hóa đổi mới sáng tạo của Công ty, chia sẻ làm cách nào Công ty này khuyến khích các nhân viên của họ liên tục đưa ra các ý tưởng mới và phương thức để chuyển hóa những ý tưởng này thành hiện thực. Theo đó, điểm quan trọng là phải tạo ra môi trường cải tiến dưới sự ủng hộ của lãnh đạo và tăng cường trao đổi, chia sẻ các ý tưởng sáng tạo. Bên cạnh đó, các thành viên của 3M Việt Nam cũng chia sẻ những câu chuyện cụ thể về quá trình ra đời từ ý tưởng đến hiện thực các sản phẩm tiêu biểu đã rất thành công trên thị trường của 3M.\n\nPhát biểu tại buổi hội thảo, ông Nguyễn Sỹ Công – Tổng Giám đốc của Coteccons cũng cho biết Cải tiến và Sáng tạo là chủ đề xuyên suốt trong các hoạt động của Coteccons. Tuy nhiên, bên cạnh các hoạt động nội bộ, Coteccons cũng mong muốn trao đổi kinh nghiệm với các doanh nghiệp thành công khác để ngày càng củng cố và phát triển văn hóa này tại Công ty. Ông cũng chia sẻ rằng trong quá trình phát triển, việc gặp phải các khó khăn và bế tắc nhất thời trong công việc là không thể tránh khỏi, tuy nhiên cùng với thái độ sẵn sàng đối mặt với thách thức và liên tục suy nghĩ, sáng tạo để đưa ra những cách thức, giải pháp mới, tất cả các vấn đề đều có thể được giải quyết, giúp chất lượng sản phẩm của Công ty ngày càng được nâng cao.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/3MCTC-1.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nBuổi hội thảo đã kết thúc tốt đẹp, mang lại những kiến thức và trải nghiệm hữu ích cho tất cả các thành viên tham gia, đồng thời mở ra những cơ hội hợp tác mới giữa Coteccons và 3M tại thị trường Việt Nam.","Coteccons phối hợp với 3M Việt Nam tổ chức hội thảo Đổi mới và Sáng tạo","","publish","open","open","","coteccons-phoi-hop-voi-3m-viet-nam-to-chuc-hoi-thao-doi-moi-va-sang-tao","","","2019-03-30 23:04:43","2019-03-30 16:04:43","","0","https://tppone.com/demo/gioithieucongty3/?p=92","0","post","","0"),
("93","1","2019-03-30 17:46:09","2019-03-30 10:46:09","","7","","inherit","open","closed","","7","","","2019-03-30 17:46:09","2019-03-30 10:46:09","","92","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/7.jpg","0","attachment","image/jpeg","0"),
("95","1","2019-03-30 17:47:10","2019-03-30 10:47:10","Theo bảng khảo sát của Anphabe về nơi làm việc tốt nhất Việt Nam 2018, Coteccons Group tiếp tục là doanh nghiệp xây dựng đứng đầu ngành thuộc top 50 Nơi làm việc tốt nhất Việt Nam. Đây là năm thứ tư liên tiếp Coteccons Group đạt được danh hiệu này.\nNgoài giải thưởng môi trường làm việc tốt nhất, Coteccons Group cũng là thương hiệu nhà tuyển dụng hấp dẫn nhất Việt Nam năm 2019.\n\n<img class=\"alignnone size-full wp-image-10707 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/29/55510815_2180690592019877_2107908195837018112_o.jpg\" alt=\"55510815_2180690592019877_2107908195837018112_o\" width=\"2048\" height=\"1152\" />\n\nKhảo sát nơi làm việc tốt nhất Việt Nam là nguồn thông tin uy tín về xu hướng nhân sự hiện nay, được Anphabe thực hiện trên 674 doanh nghiệp thuộc 24 ngành nghề với sự tham gia của hơn 75.000 người đi làm có kinh nghiệm. Tổ chức này sau đó tiến hành công bố kết quả xếp hạng, vinh danh 100 Nơi làm việc tốt nhất Việt Nam và các hạng mục khác như Top 50 Doanh nghiệp Việt có Thương hiệu nhà tuyển dụng hấp dẫn. Kết quả có sự giám sát của Phòng Thương mại và Công nghiệp Việt Nam (VCCI) và các đối tác nghiên cứu thị trường như: Intage, Unilever Việt Nam.\n\n<img class=\"alignnone size-full wp-image-10709 aligncenter img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/29/55458316_2180690768686526_3034566124596363264_n.jpg\" alt=\"55458316_2180690768686526_3034566124596363264_n\" width=\"540\" height=\"960\" />\nChị Nguyễn Thị Ngọc Tuyết – Giám đốc Nhân sự Coteccons Group đại diện nhận giải","Coteccons là doanh nghiệp có môi trường làm việc tốt nhất ngành xây dựng Việt Nam 2018","","publish","open","open","","coteccons-la-doanh-nghiep-co-moi-truong-lam-viec-tot-nhat-nganh-xay-dung-viet-nam-2018","","","2019-03-30 17:47:10","2019-03-30 10:47:10","","0","https://tppone.com/demo/gioithieucongty3/?p=95","0","post","","0"),
("96","1","2019-03-30 17:47:07","2019-03-30 10:47:07","","8","","inherit","open","closed","","8","","","2019-03-30 17:47:07","2019-03-30 10:47:07","","95","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/8.jpg","0","attachment","image/jpeg","0"),
("98","1","2019-03-30 17:47:46","2019-03-30 10:47:46","<strong>Sáng ngày 27/03/2019, Coteccons cùng Chủ đầu tư Công ty TNHH Phát triển Nam Hội An tiến hành làm lễ cất nóc dự án D&amp;B Staff Village tại Huyện Duy Xuyên, Tỉnh Quảng Nam.</strong>\n\n<img class=\"size-full wp-image-10696 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/27/z1320783893182_d5cf773c33a97ea54bd103d9c1d906da.jpg\" alt=\"DCIM100MEDIA\" width=\"4000\" height=\"3000\" />\n\nDự án có quy mô 2 khối nhà cao 12 tầng cùng các hạng mục Nhà điều hành, Nhà ăn, các khu dịch vụ tiện ích, cảnh quan sân vườn… được xây dựng trên diện tích đất 3,5 ha, với tổng diện tích sàn xây dựng đạt 53.980 m<sup>2</sup>. Khi hoàn thành, dự án sẽ góp phần quan trọng trong việc thu hút đội ngũ chuyên gia và nhân viên làm việc tại tổ hợp khu nghỉ dưỡng Casino Nam Hội An.\n\n<img class=\"size-full wp-image-10697 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/27/z1321107040200_d68e59ff32675a6df8efc3036c73cc27.jpg\" alt=\"DCIM100MEDIA\" width=\"4000\" height=\"3000\" />\n\nTại dự án này, Coteccons là Tổng thầu Thiết kế &amp; Thi công (D&amp;B) với giá trị gói thầu 700 tỷ. Do tiến độ gấp của toàn cụm dự án, thời gian thi công gói thầu phải được rút ngắn tối đa nhằm nhanh chóng đưa các tiện ích của khu nhà ở nhân viên đi vào sử dụng. Chính vì lý do đó, Chủ Đầu tư đã quyết định lựa chọn thực hiện dự án theo mô hình D&amp;B của Coteccons. Với khả năng thiết kế và thi công đồng thời, tốc độ triển khai nhanh và hiệu quả cao về chi phí, chỉ mô hình này mới đáp ứng được yêu cầu khắt khe về tiến độ và chất lượng của Chủ Đầu tư vốn là các nhà phát triển bất động sản hàng đầu khu vực như Vina Capital, SunCity, Chow Tai Fook. Theo đó, tại buổi lễ khởi công, Coteccons đã cam kết tập trung tối đa nguồn lực để hoàn thành dự án chỉ trong vòng 10 tháng với chuẩn cao nhất về an toàn và chất lượng.  Vượt trên cả sự mong đợi, với việc áp dụng các cải tiến sử dụng hệ cốp pha nhôm từ móng lên mái trong quá trình thi công, đến thời điểm hiện tại BCH Coteccons đã rút ngắn tiến độ thi công kết cấu lên tới 30 ngày so với tiến độ cam kết với Chủ Đầu tư, khẳng định năng lực thi công vượt trội của Coteccons và tính ưu việt của mô hình D&amp;B.\n\nNgay sau buổi lễ cất nóc, Ban Chỉ huy dự án tiếp tục bắt tay vào triển khai công tác hoàn thiện để có thể bàn giao dự án cho Chủ đầu tư đưa vào sử dụng vào cuối tháng 06/2019.\n\n<img class=\"alignnone size-full wp-image-10698 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/27/z1321107050480_3116206a2b920fc96a578a21465a5124.jpg\" alt=\"z1321107050480_3116206a2b920fc96a578a21465a5124\" width=\"4095\" height=\"2730\" />\n\nQuang cảnh tại buổi lễ cất nóc\n\n<img class=\"alignnone size-full wp-image-10702 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/27/z1321272834589_5ae7d1c6e4cd4757bc7f99594d49241e.jpg\" alt=\"z1321272834589_5ae7d1c6e4cd4757bc7f99594d49241e\" width=\"1280\" height=\"852\" />\n\n<img class=\"alignnone size-full wp-image-10703 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/27/z1321272835457_9e73f665a91f040c82c37efc82f687ae.jpg\" alt=\"z1321272835457_9e73f665a91f040c82c37efc82f687ae\" width=\"1280\" height=\"852\" />\n\nBCH dự án thực hiên nghi thức cất nóc và cùng chụp hình lưu niệm","Coteccons cất nóc dự án D&B Staff Village Nam Hội An vượt tiến độ 1 tháng","","publish","open","open","","coteccons-cat-noc-du-an-db-staff-village-nam-hoi-an-vuot-tien-do-1-thang","","","2019-03-30 23:04:40","2019-03-30 16:04:40","","0","https://tppone.com/demo/gioithieucongty3/?p=98","0","post","","0"),
("99","1","2019-03-30 17:47:44","2019-03-30 10:47:44","","9","","inherit","open","closed","","9","","","2019-03-30 17:47:44","2019-03-30 10:47:44","","98","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/9.jpg","0","attachment","image/jpeg","0"),
("101","1","2019-03-30 17:48:20","2019-03-30 10:48:20","Cùng với chủ đề năm “Thay đổi để bứt phá”, Coteccons tiến hành đẩy mạnh các hoạt động nhằm phát triển văn hóa đổi mới và sáng tạo tại Công ty. Một trong số đó là thúc đẩy sự giao lưu và trao đổi kinh nghiệm với các doanh nghiệp thành công tại thị trường Việt Nam và quốc tế.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/MG_0673.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nTheo đó, sáng ngày 23/03/2019, Coteccons đã phối hợp với 3M Việt Nam tổ chức hội thảo với chủ đề Đổi mới và Sáng tạo tại Văn phòng trụ sở của Coteccons. Buổi hội thảo có sự tham gia của ông Nguyễn Sỹ Công – Tổng Giám đốc và các cán bộ lãnh đạo Coteccons, ông Sungjong Yoon – Giám đốc điều hành 3M Việt Nam, ông Jeffrey Tung – Trưởng bộ phận R&amp;D của 3M Singapore và Đông Nam Á, và hơn 20 cán bộ quản lý và kỹ sư của 3M Việt Nam.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/MG_0656.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nLà một trong những tập đoàn đa quốc gia thuộc top Fortune 500 của Mỹ, nổi tiếng về các sản phẩm mang tính đột phá và ứng dụng cao, tại buổi hội thảo, các lãnh đạo của 3M đã giới thiệu về văn hóa đổi mới sáng tạo của Công ty, chia sẻ làm cách nào Công ty này khuyến khích các nhân viên của họ liên tục đưa ra các ý tưởng mới và phương thức để chuyển hóa những ý tưởng này thành hiện thực. Theo đó, điểm quan trọng là phải tạo ra môi trường cải tiến dưới sự ủng hộ của lãnh đạo và tăng cường trao đổi, chia sẻ các ý tưởng sáng tạo. Bên cạnh đó, các thành viên của 3M Việt Nam cũng chia sẻ những câu chuyện cụ thể về quá trình ra đời từ ý tưởng đến hiện thực các sản phẩm tiêu biểu đã rất thành công trên thị trường của 3M.\n\nPhát biểu tại buổi hội thảo, ông Nguyễn Sỹ Công – Tổng Giám đốc của Coteccons cũng cho biết Cải tiến và Sáng tạo là chủ đề xuyên suốt trong các hoạt động của Coteccons. Tuy nhiên, bên cạnh các hoạt động nội bộ, Coteccons cũng mong muốn trao đổi kinh nghiệm với các doanh nghiệp thành công khác để ngày càng củng cố và phát triển văn hóa này tại Công ty. Ông cũng chia sẻ rằng trong quá trình phát triển, việc gặp phải các khó khăn và bế tắc nhất thời trong công việc là không thể tránh khỏi, tuy nhiên cùng với thái độ sẵn sàng đối mặt với thách thức và liên tục suy nghĩ, sáng tạo để đưa ra những cách thức, giải pháp mới, tất cả các vấn đề đều có thể được giải quyết, giúp chất lượng sản phẩm của Công ty ngày càng được nâng cao.\n\n<img class=\"alignnone size-full wp-image-10583 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/24/3MCTC-1.jpg\" alt=\"trao_bang_1.2019_1\" width=\"1202\" height=\"792\" />\n\nBuổi hội thảo đã kết thúc tốt đẹp, mang lại những kiến thức và trải nghiệm hữu ích cho tất cả các thành viên tham gia, đồng thời mở ra những cơ hội hợp tác mới giữa Coteccons và 3M tại thị trường Việt Nam.","Coteccons phối hợp với 3M Việt Nam tổ chức hội thảo Đổi mới và Sáng tạo","","publish","open","open","","coteccons-phoi-hop-voi-3m-viet-nam-to-chuc-hoi-thao-doi-moi-va-sang-tao-2","","","2019-03-30 17:48:20","2019-03-30 10:48:20","","0","https://tppone.com/demo/gioithieucongty3/?p=101","0","post","","0"),
("102","1","2019-03-30 17:48:17","2019-03-30 10:48:17","","10","","inherit","open","closed","","10","","","2019-03-30 17:48:17","2019-03-30 10:48:17","","101","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/10.jpg","0","attachment","image/jpeg","0"),
("104","1","2019-03-30 17:48:52","2019-03-30 10:48:52","Tuy chỉ chiếm một tỷ lệ nhỏ trong đội ngũ CBNV, vai trò của những người phụ nữ tại Coteccons luôn được khẳng định và trân trọng. Từ công trường cho đến văn phòng, các chị em đã góp phần không nhỏ vào sự thành công chung của Công ty. Làm việc trong một công ty xây dựng, đối mặt với những áp lực lớn về khối lượng và tiến độ công việc, những người phụ nữ Coteccons là sự kết hợp của cả sự mạnh mẽ, kiên cường và sự mềm mỏng, linh hoạt, tạo nên một hình ảnh đặc trưng rất riêng của Công ty. Chính vì vậy, các hoạt động nhằm tôn vinh và ghi nhận sự đóng góp của chị em luôn được Ban Lãnh đạo đặc biệt quan tâm. Nhằm ngày Quốc tế Phụ nữ 08/03, Ban Chấp hành Công đoàn và Ban Lãnh đạo Coteccons đã tổ chức buổi họp mặt dành cho CBNV nữ tại hai miền Nam Bắc. Buổi họp mặt bao gồm các hoạt động sinh hoạt tập thể nhằm tạo sự gắn kết giữa các chị em làm việc tại văn phòng và các công trường của Coteccons ở khắp mọi miền đất nước. Bên cạnh các phần quà từ Ban Lãnh đạo và Công đoàn Công ty, Ban Tổ chức hy vọng những phút giây thư giãn và vui vẻ cùng đồng nghiệp sẽ là những kỷ niệm đáng nhớ, lan tỏa các giá trị tinh thần về vẻ đẹp của người phụ nữ Coteccons.\n\n<em>Hình ảnh tại buổi họp mặt:</em>\n\n<img class=\"alignnone size-full wp-image-10672 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/08/zzzz.png\" alt=\"zzzz\" width=\"4095\" height=\"2730\" />\n\n<img class=\"alignnone size-full wp-image-10673 img-responsive\" src=\"http://www.coteccons.vn/app/uploads/2019/03/08/ccc.png\" alt=\"ccc\" width=\"4095\" height=\"2730\" />","Coteccons tổ chức buổi họp mặt nhân ngày Quốc tế phụ nữ 08/03","","publish","open","open","","coteccons-to-chuc-buoi-hop-mat-nhan-ngay-quoc-te-phu-nu-08-03","","","2019-03-30 17:48:52","2019-03-30 10:48:52","","0","https://tppone.com/demo/gioithieucongty3/?p=104","0","post","","0"),
("105","1","2019-03-30 17:48:49","2019-03-30 10:48:49","","11","","inherit","open","closed","","11","","","2019-03-30 17:48:49","2019-03-30 10:48:49","","104","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/11.jpg","0","attachment","image/jpeg","0"),
("107","1","2019-03-30 17:49:29","2019-03-30 10:49:29","Ngày 01/3/2019, Unicons (Công ty thành viên Coteccons Group) tổ chức lễ khởi công dự án \"Nhà máy Công ty TNHH Gain Lucky (Việt Nam) - Giai đoạn 6\" tại Khu công nghiệp Phước Đông, huyện Gò Dầu, tỉnh Tây Ninh. Đến tham dự buổi lễ có ông Lê Chí Trung – Tổng Giám đốc công ty Unicons, đại diện Ban lãnh đạo Công ty TNHH Gain Lucky Việt Nam (trực thuộc Tập đoàn Shenzhou) cùng các đối tác tham gia dự án.\n\nDự án “Nhà máy Công ty TNHH Gain Lucky (Việt Nam) – Giai đoạn 6” có quy mô gồm 3 block ký túc xá chuyên gia, nhà bảo vệ, nhà lọc nước và hệ thống ngoài nhà. Tọa lạc trong khu đất rộng đến 88ha của “Nhà máy Công ty TNHH Gain Lucky (Việt Nam)”, Giai đoạn 6 của dự án được xây dựng trên khu đất rộng 20.285 m2. Trong vòng 7 tháng, Unicons sẽ hoàn thành các công tác xây dựng, hoàn thiện và lắp đặt cơ điện cho dự án.\n\nTrong cuộc họp với Ban chỉ huy dự án, ông Lê Chí Trung – Tổng Giám đốc Unicons bày tỏ sự lạc quan về tình hình sản xuất kinh doanh năm 2019 của Unicons khi công ty liên tiếp khởi công và trúng thầu nhiều dự án lớn. Ông hy vọng tập thể anh em Ban chỉ huy Unicons tại dự án Gain Lucky sẽ liên tục nâng cao năng suất lao động để triển khai dự án thành công. Đáp lại sự kỳ vọng từ Ban lãnh đạo, tập thể kỹ sư Unicons cam kết sẽ nỗ lực không ngừng, quyết tâm bàn giao dự án cho Chủ đầu tư đạt mọi tiêu chuẩn cao nhất về tiến độ, chất lượng, an toàn.\n\n<img class=\"aligncenter size-large wp-image-32162 img-responsive\" src=\"http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-44-of-45-1024x683.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-44-of-45.jpg 1024w, http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-44-of-45-300x200.jpg 300w, http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-44-of-45-768x512.jpg 768w\" alt=\"\" width=\"1024\" height=\"683\" />\n\nNhư vậy, chỉ trong vòng 7 ngày (từ ngày 23/02/2019 đến ngày 01/3/2019), Unicons đã liên tục khởi công 3 dự án mới. Chắc chắn, với bản lĩnh, nhiệt huyết và quyết tâm của đội ngũ nhân sự, Unicons sẽ gặt hái được nhiều thành công rực rỡ trong năm 2019.\n\n<img class=\"aligncenter size-large wp-image-32163 img-responsive\" src=\"http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-2-of-9-1024x632.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-2-of-9.jpg 1024w, http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-2-of-9-300x185.jpg 300w, http://unicons.vn/wp-content/uploads/2019/03/Unicons-khoi-cong-Gain-Lucky-GD6_-2-of-9-768x474.jpg 768w\" alt=\"\" width=\"1024\" height=\"632\" />","Coteccons Group khởi công dự án Nhà máy Công ty TNHH Gain Lucky (Việt Nam) - Giai đoạn 6","","publish","open","open","","coteccons-group-khoi-cong-du-an-nha-may-cong-ty-tnhh-gain-lucky-viet-nam-giai-doan-6","","","2019-03-30 23:04:35","2019-03-30 16:04:35","","0","https://tppone.com/demo/gioithieucongty3/?p=107","0","post","","0"),
("108","1","2019-03-30 17:49:26","2019-03-30 10:49:26","","13","","inherit","open","closed","","13","","","2019-03-30 17:49:26","2019-03-30 10:49:26","","107","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/13.jpg","0","attachment","image/jpeg","0"),
("112","1","2019-03-30 21:27:45","2019-03-30 14:27:45","","z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9","Landmark 81 – Vinhomes Central Park","inherit","open","closed","","z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9","","","2019-03-30 21:28:05","2019-03-30 14:28:05","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/z1243157261338_5ec9dd3aa236477e9543a3632c3de3e9.jpg","0","attachment","image/jpeg","0"),
("190","1","2019-03-30 22:23:49","2019-03-30 15:23:49","","International-3-1","Lanmark 81 trên tạp chí Internation Contruction","inherit","open","closed","","international-3-1","","","2019-03-30 22:24:42","2019-03-30 15:24:42","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/International-3-1.jpg","0","attachment","image/jpeg","0"),
("192","1","2019-03-30 22:24:56","2019-03-30 15:24:56","","Bim-LM81-1","Giải thưởng Tekla Bim Award Asian 2018 gọi tên Contecons - Landmark 81","inherit","open","closed","","bim-lm81-1","","","2019-03-30 22:26:01","2019-03-30 15:26:01","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/Bim-LM81-1.jpg","0","attachment","image/jpeg","0"),
("194","1","2019-03-30 22:26:12","2019-03-30 15:26:12","","toan_canh_ve_dem_xefo","Landmark 81 kỳ vĩ như thế nào về đêm","inherit","open","closed","","toan_canh_ve_dem_xefo","","","2019-03-30 22:26:26","2019-03-30 15:26:26","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/toan_canh_ve_dem_xefo.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-03-30 22:38:33","2019-03-30 15:38:33","","Tong-thau1-services","","inherit","open","closed","","tong-thau1-services","","","2019-03-30 22:38:33","2019-03-30 15:38:33","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/Tong-thau1-services.jpg","0","attachment","image/jpeg","0"),
("227","1","2019-03-30 22:39:09","2019-03-30 15:39:09","","design-build","","inherit","open","closed","","design-build","","","2019-03-30 22:39:09","2019-03-30 15:39:09","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/design-build.jpg","0","attachment","image/jpeg","0"),
("233","1","2019-03-30 22:40:19","2019-03-30 15:40:19","","ha-tang","","inherit","open","closed","","ha-tang","","","2019-03-30 22:40:19","2019-03-30 15:40:19","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/ha-tang.jpg","0","attachment","image/jpeg","0"),
("243","1","2019-03-30 22:50:30","2019-03-30 15:50:30","","343434","","inherit","open","closed","","343434","","","2019-03-30 22:50:30","2019-03-30 15:50:30","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/343434.jpg","0","attachment","image/jpeg","0"),
("250","1","2019-03-30 22:53:39","2019-03-30 15:53:39","","thiet-ke-noi-that","","inherit","open","closed","","thiet-ke-noi-that","","","2019-03-30 22:53:39","2019-03-30 15:53:39","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/thiet-ke-noi-that.jpg","0","attachment","image/jpeg","0"),
("252","1","2019-03-30 22:54:06","2019-03-30 15:54:06","","thiet-ke-ha-tang","","inherit","open","closed","","thiet-ke-ha-tang","","","2019-03-30 22:54:06","2019-03-30 15:54:06","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/thiet-ke-ha-tang.jpg","0","attachment","image/jpeg","0"),
("254","1","2019-03-30 22:54:42","2019-03-30 15:54:42","","34334343434","","inherit","open","closed","","34334343434","","","2019-03-30 22:54:42","2019-03-30 15:54:42","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/34334343434.jpg","0","attachment","image/jpeg","0"),
("256","1","2019-03-30 22:55:21","2019-03-30 15:55:21","","6789","","inherit","open","closed","","6789","","","2019-03-30 22:55:21","2019-03-30 15:55:21","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/6789.jpg","0","attachment","image/jpeg","0"),
("274","1","2019-03-30 23:04:26","2019-03-30 16:04:26"," ","","","publish","closed","closed","","274","","","2019-03-30 23:04:26","2019-03-30 16:04:26","","0","https://tppone.com/demo/gioithieucongty3/?p=274","10","nav_menu_item","","0"),
("291","1","2019-03-30 23:11:51","2019-03-30 16:11:51","","dot","","inherit","open","closed","","dot","","","2019-03-30 23:11:51","2019-03-30 16:11:51","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/dot.jpg","0","attachment","image/jpeg","0"),
("293","1","2019-03-30 23:13:53","2019-03-30 16:13:53","","Hostinger","","inherit","open","closed","","hostinger","","","2019-03-30 23:13:53","2019-03-30 16:13:53","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/Hostinger.jpg","0","attachment","image/jpeg","0"),
("295","1","2019-03-30 23:15:01","2019-03-30 16:15:01","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"THÔNG TIN LIÊN HỆ\" size=\"80\"]\n\n<ul>\n<li><span style=\"font-size: 95%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 95%;\">Điện thoại: </span></li>\n<li><span style=\"font-size: 95%;\">Email: webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 95%;\">Website: <a href=\"https://Webdemo.com\">Webdemo.com</a>, <a href=\"https://Webdemo.com\">webdemo.com</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-03-31 13:27:24","2019-03-31 06:27:24","","0","https://tppone.com/demo/gioithieucongty3/?post_type=blocks&#038;p=295","0","blocks","","0"),
("297","1","2019-03-30 23:15:43","2019-03-30 16:15:43","","bg-footer","","inherit","open","closed","","bg-footer","","","2019-03-30 23:15:43","2019-03-30 16:15:43","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/bg-footer.jpg","0","attachment","image/jpeg","0"),
("303","1","2019-03-30 23:16:58","2019-03-30 16:16:58","","Unicons_Logo_27062016","","inherit","open","closed","","unicons_logo_27062016","","","2019-03-30 23:16:58","2019-03-30 16:16:58","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/Unicons_Logo_27062016.jpg","0","attachment","image/jpeg","0"),
("304","1","2019-03-30 23:17:38","2019-03-30 16:17:38","","logo2 (1)","","inherit","open","closed","","logo2-1","","","2019-03-30 23:17:38","2019-03-30 16:17:38","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/logo2-1.jpg","0","attachment","image/jpeg","0"),
("305","1","2019-03-30 23:17:46","2019-03-30 16:17:46","","logo3","","inherit","open","closed","","logo3","","","2019-03-30 23:17:46","2019-03-30 16:17:46","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/logo3.jpg","0","attachment","image/jpeg","0"),
("306","1","2019-03-30 23:18:00","2019-03-30 16:18:00","","Covestcons","","inherit","open","closed","","covestcons","","","2019-03-30 23:18:00","2019-03-30 16:18:00","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/Covestcons.jpg","0","attachment","image/jpeg","0"),
("309","1","2019-03-30 23:18:36","2019-03-30 16:18:36","","logo-kuston-home","","inherit","open","closed","","logo-kuston-home","","","2019-03-30 23:18:36","2019-03-30 16:18:36","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/logo-kuston-home.png","0","attachment","image/png","0"),
("460","1","2019-03-31 13:08:03","2019-03-31 06:08:03","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n[title text=\"Fanpage Facebook\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"500\" height=\"200\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","295-revision-v1","","","2019-03-31 13:08:03","2019-03-31 06:08:03","","295","https://tppone.com/demo/gioithieucongty3/295-revision-v1/","0","revision","","0"),
("486","1","2019-03-31 13:21:56","2019-03-31 06:21:56","","icon-phone2","","inherit","open","closed","","icon-phone2","","","2019-03-31 13:21:56","2019-03-31 06:21:56","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/icon-phone2.png","0","attachment","image/png","0"),
("487","1","2019-03-31 13:22:25","2019-03-31 06:22:25","","icon-sms2","","inherit","open","closed","","icon-sms2","","","2019-03-31 13:22:25","2019-03-31 06:22:25","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/icon-sms2.png","0","attachment","image/png","0"),
("488","1","2019-03-31 13:22:47","2019-03-31 06:22:47","","icon-zalo2","","inherit","open","closed","","icon-zalo2","","","2019-03-31 13:22:47","2019-03-31 06:22:47","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/icon-zalo2.png","0","attachment","image/png","0"),
("489","1","2019-03-31 13:23:11","2019-03-31 06:23:11","","icon-mesenger2","","inherit","open","closed","","icon-mesenger2","","","2019-03-31 13:23:11","2019-03-31 06:23:11","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/03/icon-mesenger2.png","0","attachment","image/png","0"),
("490","1","2019-03-31 13:26:58","2019-03-31 06:26:58","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 95%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></p>\n<p><span style=\"font-size: 95%;\">Điện thoại: </span></p>\n<p><span style=\"font-size: 95%;\">Email: webdemo@gmail.com</span></p>\n<p><span style=\"font-size: 95%;\">Website: <a href=\"https://Webdemo.com\">Webdemo.com</a>, <a href=\"https://Webdemo.com\">webdemo.com</a></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","295-revision-v1","","","2019-03-31 13:26:58","2019-03-31 06:26:58","","295","https://tppone.com/demo/gioithieucongty3/295-revision-v1/","0","revision","","0"),
("491","1","2019-03-31 13:27:01","2019-03-31 06:27:01","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\" color=\"light\"]\n\n<p><span style=\"font-size: 95%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></p>\n<p><span style=\"font-size: 95%;\">Điện thoại: </span></p>\n<p><span style=\"font-size: 95%;\">Email: webdemo@gmail.com</span></p>\n<p><span style=\"font-size: 95%;\">Website: <a href=\"https://Webdemo.com\">Webdemo.com</a>, <a href=\"https://Webdemo.com\">webdemo.com</a></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","295-revision-v1","","","2019-03-31 13:27:01","2019-03-31 06:27:01","","295","https://tppone.com/demo/gioithieucongty3/295-revision-v1/","0","revision","","0"),
("492","1","2019-03-31 13:27:08","2019-03-31 06:27:08","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\" color=\"light\"]\n\n<ul>\n<li><span style=\"font-size: 95%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 95%;\">Điện thoại: </span></li>\n<li><span style=\"font-size: 95%;\">Email: webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 95%;\">Website: <a href=\"https://Webdemo.com\">Webdemo.com</a>, <a href=\"https://Webdemo.com\">webdemo.com</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","295-revision-v1","","","2019-03-31 13:27:08","2019-03-31 06:27:08","","295","https://tppone.com/demo/gioithieucongty3/295-revision-v1/","0","revision","","0"),
("493","1","2019-03-31 13:27:24","2019-03-31 06:27:24","[section bg=\"297\" bg_size=\"original\" class=\"footer-section\"]\n\n[row style=\"small\" class=\"cong-ty-thanh-vien\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Công ty thành viên\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"303\" height=\"63px\"]\n\n[logo img=\"305\" height=\"63px\"]\n\n[logo img=\"304\" height=\"63px\"]\n\n[logo img=\"306\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Đối tác chiến lược\" color=\"rgb(0, 0, 0)\" size=\"80\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\" align=\"left\"]\n\n[logo img=\"309\" height=\"63px\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"thong-tin-cong-ty\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Thông tin công ty\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-1\" class=\"list\">\n<li id=\"menu-item-186\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-186\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Tổng quan công ty</a></span></li>\n<li id=\"menu-item-187\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-187\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cơ cấu tổ chức</a></span></li>\n<li id=\"menu-item-188\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-188\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Cán bộ chủ chốt</a></span></li>\n<li id=\"menu-item-189\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-189\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Chính sách nhân sự</a></span></li>\n<li id=\"menu-item-190\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-190\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Những cải tiến trong tổ chức</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Quan hệ cổ đông\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<ul id=\"menu-footer-2\" class=\"list\">\n<li id=\"menu-item-192\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Thông tin Cổ đông</a></span></li>\n<li id=\"menu-item-191\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Báo cáo tài chính – thường niên</a></span></li>\n<li id=\"menu-item-193\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193\"><span style=\"font-size: 95%;\"><a href=\"https://Webdemo.com\">Biên bản và nghị quyết</a></span></li>\n</ul>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"Hotline\" color=\"rgb(255, 255, 255)\" size=\"80\"]\n\n<p><span style=\"font-size: 95%;\">Hotline: </span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"6\" color=\"light\"]\n\n[title text=\"THÔNG TIN LIÊN HỆ\" size=\"80\"]\n\n<ul>\n<li><span style=\"font-size: 95%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 95%;\">Điện thoại: </span></li>\n<li><span style=\"font-size: 95%;\">Email: webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 95%;\">Website: <a href=\"https://Webdemo.com\">Webdemo.com</a>, <a href=\"https://Webdemo.com\">webdemo.com</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","295-revision-v1","","","2019-03-31 13:27:24","2019-03-31 06:27:24","","295","https://tppone.com/demo/gioithieucongty3/295-revision-v1/","0","revision","","0"),
("496","1","2019-04-01 00:40:14","2019-03-31 17:40:14","","sfsfđs","","inherit","open","closed","","sfsfds","","","2019-04-01 00:40:14","2019-03-31 17:40:14","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/04/sfsfđs.png","0","attachment","image/png","0"),
("497","1","2019-04-01 00:40:21","2019-03-31 17:40:21","https://bizhostvn.com/w/gioithieucongty3/wp-content/uploads/2019/04/cropped-sfsfđs.png","cropped-sfsfđs.png","","inherit","open","closed","","cropped-sfsfds-png","","","2019-04-01 00:40:21","2019-03-31 17:40:21","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/04/cropped-sfsfđs.png","0","attachment","image/png","0"),
("502","1","2019-05-06 16:07:54","2019-05-06 09:07:54","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:07:54\"\n    }\n}","","","trash","closed","closed","","f82c8c2c-4721-46ca-9c5f-24ffde06a4ed","","","2019-05-06 16:07:54","2019-05-06 09:07:54","","0","https://tppone.com/demo/gioithieucongty3/f82c8c2c-4721-46ca-9c5f-24ffde06a4ed/","0","customize_changeset","","0"),
("503","1","2019-05-06 17:12:56","2019-05-06 10:12:56","","gioithieucongty3","","inherit","open","closed","","gioithieucongty3","","","2019-05-06 17:12:56","2019-05-06 10:12:56","","0","https://tppone.com/demo/gioithieucongty3/wp-content/uploads/2019/05/gioithieucongty3.png","0","attachment","image/png","0"),
("504","1","2019-05-06 17:13:31","2019-05-06 10:13:31","{\n    \"gioi-thieu-cong-ty::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/gioithieucongty3/wp-content/uploads/2019/05/gioithieucongty3.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:13:31\"\n    }\n}","","","trash","closed","closed","","935437ad-c7b3-4bbe-b179-12e5faa6767e","","","2019-05-06 17:13:31","2019-05-06 10:13:31","","0","https://tppone.com/demo/gioithieucongty3/935437ad-c7b3-4bbe-b179-12e5faa6767e/","0","customize_changeset","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("47","5","0"),
("48","5","0"),
("49","5","0"),
("50","5","0"),
("51","5","0"),
("52","5","0"),
("53","5","0"),
("54","5","0"),
("55","5","0"),
("56","5","0"),
("74","2","0"),
("80","2","0"),
("82","2","0"),
("84","2","0"),
("86","2","0"),
("89","2","0"),
("92","1","0"),
("92","6","0"),
("95","1","0"),
("98","1","0"),
("98","6","0"),
("101","1","0"),
("104","1","0"),
("107","1","0"),
("107","6","0"),
("274","5","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","7"),
("2","2","category","","0","6"),
("3","3","category","","0","0"),
("4","4","category","","0","0"),
("5","5","nav_menu","","0","11"),
("6","6","category","","0","3");




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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Tin tức","tin-tuc","0"),
("2","Dự án","du-an","0"),
("3","Tài liệu","tai-lieu","0"),
("4","Tuyển dụng","tuyen-dung","0"),
("5","Main menu","main-menu","0"),
("6","Video","video","0");




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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"4d12f9f322ef377c61febf931ad8504eda77ffbefb0a0958ac96dc911157d4ce\";a:4:{s:10:\"expiration\";i:1557485501;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557312701;}s:64:\"a9fd8bfdecab00124e0ebc506ac5bcc42d88cbb123aa50d15dd3a405b13ca267\";a:4:{s:10:\"expiration\";i:1557616329;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443529;}s:64:\"370d37e60fad345096ad62a8b3fca83565776a295143cfdbe5c666b5fbc6f847\";a:4:{s:10:\"expiration\";i:1557625788;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452988;}s:64:\"2a0d217fdfa8e290502f3f22c16408b5e8e0bdacd6dcdf407b6ee91df3f10443\";a:4:{s:10:\"expiration\";i:1557628103;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455303;}s:64:\"359201082d4db70572764ad6b12be9bfc8130813d942f38deb22db2f6b16ca36\";a:4:{s:10:\"expiration\";i:1557628502;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455702;}s:64:\"29b02603e29f7036eb5284357a0ef4af92e91d1abaecbd0a772570c5eee275e9\";a:4:{s:10:\"expiration\";i:1557633395;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557460595;}s:64:\"295385cb4c74de4c7fdb696eb2658180a36b3769b14f235ba1acd74eb6f5f8e0\";a:4:{s:10:\"expiration\";i:1557636988;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557464188;}s:64:\"f434fdd2138b7eaf2a7731e3dae2959742cd086d7f04c01e2d01ff18efc9a544\";a:4:{s:10:\"expiration\";i:1557649550;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557476750;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","501"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1557452985"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","5"),
("25","1","gtct_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:597:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 100%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:901:\"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=35\">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=35\">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/gioithieucongty3/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:251:\"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href=\"https://bizhostvn.com/w/gioithieucongty3/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> kết nối với Google Search Console ở đây </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:268:\"<strong>Lỗi SEO nghiêm trọng: Bạn đang chặn truy cập tới robots.</strong> Bạn phải <a href=\"https://bizhostvn.com/w/gioithieucongty3/wp-admin/options-reading.php\">tới mục Đọc</a> và bỏ đánh dấu Tương tác với công cụ tìm kiếm.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO xác định bạn đang sử dụng phiên bản 9.1 của Yoast SEO Premium, hãy cập nhật lên phiên bản mới nhất.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("27","1","_yoast_wpseo_profile_updated","1554110595"),
("28","1","duplicator_pro_created_format","1");




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
("1","admin","$P$B4ULOzNFdm0clbW.39AGXEoom79v5c0","admin","demobz@gmail.com","","2019-03-21 09:49:00","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("1","https://Webdemo.com/","37","0","external"),
("2","http://Webdemo.com/","37","0","external"),
("3","http://pianocenter.webdemo.com/","39","0","external"),
("4","http://print2.webdemo.com/","39","0","external"),
("5","http://bbq.webdemo.com/","39","0","external"),
("6","http://noithat2.webdemo.com/","39","0","external"),
("7","http://marketing.webdemo.com/","39","0","external"),
("8","http://samngoclinh.webdemo.com/","39","0","external"),
("9","http://event2.webdemo.com/","39","0","external"),
("10","http://ifix.webdemo.com/","39","0","external"),
("11","http://www.inbat.webdemo.com/","39","0","external"),
("12","http://www.edu.webdemo.com/","39","0","external"),
("13","http://art.webdemo.com/","39","0","external"),
("14","http://bamhuyetbanchan.com/","39","0","external"),
("15","http://arc.webdemo.com/","39","0","external"),
("16","http://www.vivaclinic.webdemo.com/","39","0","external"),
("17","http://spa.webdemo.com/","39","0","external"),
("18","http://www.thietbiyte.webdemo.com/","39","0","external"),
("19","http://www.g9metal.com/","39","0","external"),
("20","http://www.sacmauquocte.vn/","39","0","external"),
("21","https://www.Webdemo.com/demo/print","39","0","external"),
("22","https://www.Webdemo.com/demo/shopnoithat","39","0","external"),
("23","https://www.Webdemo.com/demo/quangcaoled","39","0","external"),
("24","http://www.tinhocpst.edu.vn/","39","0","external"),
("25","http://www.vietnhi.vn/","39","0","external"),
("26","http://www.aoconggiao.com/","39","0","external"),
("27","http://www.angiadat.com/","39","0","external"),
("28","http://www.quangcaovugia.com/","39","0","external"),
("29","http://www.lamcuanhomgiare.com/","39","0","external"),
("30","https://Webdemo.com/","39","0","external"),
("31","https://Webdemo.com/","39","0","external"),
("32","http://www.flickr.com/photos/demo@N07/albums","39","0","external"),
("33","https://www.behance.net/demo","39","0","external"),
("34","https://www.pinterest.com/demo/pins/","39","0","external"),
("35","https://phongthuylucyen.com/","41","0","external"),
("36","http://funiture.webdemo.com/","41","0","external"),
("37","http://salecar.webdemo.com/","41","0","external"),
("38","http://shop.webdemo.com/","41","0","external"),
("39","http://samngoclinh.webdemo.com/","41","0","external"),
("40","http://mayloc.webdemo.com/","41","0","external"),
("41","http://mypham2.webdemo.com/","41","0","external"),
("42","http://dienmay2.webdemo.com/","41","0","external"),
("43","http://cake2.webdemo.com/","41","0","external"),
("44","http://cake.webdemo.com/","41","0","external"),
("45","http://mevabe.webdemo.com/","41","0","external"),
("46","http://www.duocpham.webdemo.com/","41","0","external"),
("47","http://www.tuongthachcao.webdemo.com/","41","0","external"),
("48","http://www.fashion2.webdemo.com/","41","0","external"),
("49","http://www.bds.webdemo.com/","41","0","external"),
("50","http://www.aomua.webdemo.com/","41","0","external"),
("51","http://www.fashion.webdemo.com/","41","0","external"),
("52","http://www.dienmay.webdemo.com/","41","0","external"),
("53","http://www.mypham.webdemo.com/","41","0","external"),
("54","http://www.thietbiyte.webdemo.com/","41","0","external"),
("55","https://www.Webdemo.com/demo/shoptranh","41","0","external"),
("56","https://www.Webdemo.com/demo/shopnoithat","41","0","external"),
("57","http://www.sontaycamera.com/","41","0","external"),
("58","http://www.golife.store/","41","0","external"),
("59","http://www.tk3.com.vn/","41","0","external"),
("60","http://www.gachdatrangtrithuyoanh.com/","41","0","external"),
("61","http://www.banhtrangmetayninh.com/","41","0","external"),
("62","http://www.shopconggiao.com/","41","0","external"),
("63","https://www.Webdemo.com/demo/guitarshop","41","0","external"),
("64","https://Webdemo.com/demo/shopuku/","41","0","external"),
("65","https://Webdemo.com/","41","0","external"),
("66","https://Webdemo.com/","41","0","external"),
("67","http://www.flickr.com/photos/demo@N07/albums","41","0","external"),
("68","https://www.behance.net/demo","41","0","external"),
("69","https://www.pinterest.com/demo/pins/","41","0","external"),
("70","http://hatdieu.webdemo.com/","43","0","external"),
("71","http://www.tuongthachcao.webdemo.com/","43","0","external"),
("72","http://www.hydrogen.webdemo.com/","43","0","external"),
("73","http://www.bds.webdemo.com/","43","0","external"),
("74","http://arc.webdemo.com/","43","0","external"),
("75","https://Webdemo.com/www.thietbiyte.webdemo.com","43","0","external"),
("76","http://www.g9metal.com/","43","0","external"),
("77","http://www.mideawater.vn/","43","0","external"),
("78","http://www.kingkonghomestay.com/","43","0","external"),
("79","http://www.gachdatrangtrithuyoanh.com/","43","0","external"),
("80","http://www.aoconggiao.com/","43","0","external"),
("81","http://www.nongsanviethan.com/","43","0","external"),
("82","http://www.banhmyquesaigon.com/","43","0","external"),
("83","http://www.sontaycamera.com/","43","0","external"),
("84","http://www.golife.store/","43","0","external"),
("85","http://www.tk3.com.vn/","43","0","external"),
("86","http://Webdemo.com/","43","0","external"),
("87","http://Webdemo.com/","43","0","external"),
("88","http://www.flickr.com/photos/demo@N07/albums","43","0","external"),
("89","https://www.behance.net/demo","43","0","external"),
("90","https://www.pinterest.com/demo/pins/","43","0","external"),
("145","https://Webdemo.com","295","0","external"),
("146","https://Webdemo.com","295","0","external"),
("147","https://Webdemo.com","295","0","external"),
("148","https://Webdemo.com","295","0","external"),
("149","https://Webdemo.com","295","0","external"),
("150","https://Webdemo.com","295","0","external"),
("151","https://Webdemo.com","295","0","external"),
("152","https://Webdemo.com","295","0","external"),
("153","#","295","0","internal"),
("154","mailto:#","295","0","external");
INSERT INTO bz_yoast_seo_links VALUES
("155","tel:#","295","0","external"),
("156","#","295","0","internal"),
("157","https://Webdemo.com","295","0","external"),
("158","https://Webdemo.com","295","0","external");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("1","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("10","0","0"),
("11","0","0"),
("13","0","0"),
("15","0","0"),
("16","0","0"),
("17","0","0"),
("18","0","0"),
("19","0","0"),
("20","0","0"),
("21","0","0"),
("22","0","0"),
("23","0","0"),
("25","0","0"),
("27","0","0"),
("28","0","0"),
("29","0","0"),
("30","0","0"),
("31","0","0"),
("32","0","0"),
("33","0","0"),
("34","0","0"),
("35","0","0"),
("36","0","0"),
("37","0","0"),
("38","0","0"),
("39","0","0"),
("40","0","0"),
("41","0","0"),
("42","0","0"),
("43","0","0"),
("44","0","0"),
("45","0","0"),
("46","0","0"),
("57","0","0"),
("58","0","0"),
("59","0","0"),
("60","0","0"),
("61","0","0"),
("62","0","0"),
("63","0","0"),
("79","0","0"),
("81","0","0"),
("83","0","0"),
("85","0","0"),
("88","0","0"),
("91","0","0"),
("94","0","0"),
("97","0","0"),
("100","0","0"),
("103","0","0"),
("106","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("118","0","0"),
("119","0","0"),
("120","0","0"),
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
("148","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0"),
("152","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("153","0","0"),
("154","0","0"),
("155","0","0"),
("156","0","0"),
("157","0","0"),
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
("191","0","0"),
("193","0","0"),
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
("220","0","0"),
("221","0","0"),
("222","0","0"),
("223","0","0"),
("224","0","0"),
("226","0","0"),
("228","0","0"),
("230","0","0"),
("231","0","0"),
("234","0","0"),
("235","0","0"),
("236","0","0"),
("237","0","0"),
("238","0","0"),
("239","0","0"),
("240","0","0"),
("241","0","0"),
("242","0","0"),
("244","0","0"),
("245","0","0"),
("247","0","0"),
("249","0","0"),
("251","0","0"),
("253","0","0"),
("255","0","0"),
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
("267","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("268","0","0"),
("269","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("273","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
("278","0","0"),
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
("292","0","0"),
("294","0","0"),
("295","2","0"),
("296","0","0"),
("298","0","0"),
("299","0","0"),
("300","0","0"),
("301","0","0"),
("302","0","0"),
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
("337","0","0"),
("338","0","0"),
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
("372","0","0"),
("373","0","0"),
("374","0","0"),
("375","0","0"),
("376","0","0"),
("377","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
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
("445","0","0"),
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("450","0","0"),
("451","0","0"),
("452","0","0"),
("453","0","0"),
("454","0","0"),
("455","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
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
("478","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("479","0","0"),
("480","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("485","0","0"),
("494","0","0"),
("495","0","0"),
("498","0","0"),
("499","0","0"),
("500","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;