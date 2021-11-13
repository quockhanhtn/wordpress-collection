SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w52`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2018-08-14 07:51:43","2018-08-14 07:51:43","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/bizhostvn.com\\/w\\/noithat5\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1534489620,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1540272548,\"initial_activation_timestamp\":1534489631,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1540272765,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/noithat5","yes"),
("2","home","https://bizhostvn.com/w/noithat5","yes"),
("3","blogname","noithat5","yes"),
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
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:2:{i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:93:\"/home/admin/domains/bizhostvn.com/public_html/w/noithat5/wp-content/themes/noi-that/style.css\";i:1;s:94:\"/home/admin/domains/bizhostvn.com/public_html/w/noithat5/wp-content/themes/flatsome/footer.php\";i:2;s:93:\"/home/admin/domains/bizhostvn.com/public_html/w/noithat5/wp-content/themes/flatsome/style.css\";i:4;s:113:\"/home/admin/domains/bizhostvn.com/public_html/w/noithat5/wp-content/themes/flatsome/inc/shortcodes/blog_posts.php\";i:5;s:115:\"/home/admin/domains/bizhostvn.com/public_html/w/noithat5/wp-content/themes/flatsome/template-parts/posts/single.php\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","noi-that","yes"),
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
("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:405:\"<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"300\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","5","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","763","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:8:\"search-2\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:6:\"text-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1558011111;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558036311;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558068611;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558079534;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558079552;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083164;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("113","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534234273;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("144","new_admin_email","demo@gmail.com","yes"),
("150","current_theme","Nội thất","yes"),
("151","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 14 Aug 2018 08:11:15 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534234357;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("152","theme_switched","","yes"),
("153","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:17:\"Bài viết mới\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("154","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("156","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("157","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("158","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("159","flatsome_wup_buyer","trannguyen886","yes"),
("160","allowedthemes","a:1:{s:8:\"noi-that\";b:1;}","no"),
("161","fl_has_child_theme","noi-that","yes"),
("163","theme_mods_noi-that","a:97:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:2:{i:0;s:3:\"nav\";i:1;s:6:\"search\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:3:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:6:\"social\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 14 Aug 2018 08:13:11 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:144:\"<a id=\"calltrap-btn\" class=\"b-calltrap-btn calltrap_offline hidden-phone visible-tablet\" href=\"tel:0909009009\"><div id=\"calltrap-ico\"></div></a>\";s:15:\"html_custom_css\";s:18314:\"#calltrap-form .b-calltrap_form__controls-clear,#calltrap-success .b-calltrap_form__controls-clear,.clearboth,.tai-bao-gia .clearboth{clear:both}.header-nav.nav-box>li.active>a,.header-nav.nav-box>li>a:hover,.header-nav.nav-line-bottom>li>a:before,.header-nav.nav-line-grow>li>a:before,.header-nav.nav-line>li>a:before,.header-nav.nav-pills>li.active>a,.header-nav.nav-pills>li>a:hover{background-color:#fbae3c}.nav-line-bottom>li>a:before,.nav-line-grow>li>a:before,.nav-line>li>a:before{height:2px}#topbar .nav-small .nav>li>a,.nav-small.nav>li.html,.nav.nav-small>li>a{font-size:14px;font-weight:400}.slider-nav-circle .flickity-prev-next-button .arrow,.slider-nav-circle .flickity-prev-next-button svg{border-radius:100%;border:0;background:#fbae3c}.box-blog-post .is-divider{display:none}.row-tin-tuc-slider .cot2 .post-item{padding-bottom:0!important;padding-left:0;padding-right:0}.row-tin-tuc-slider .cot2 .post-item .col-inner{padding:0 10px}.row-tin-tuc-slider .cot2 .post-item .box-text{padding-bottom:8px;padding-left:10px;padding-right:0}.row-tin-tuc-slider .cot2 .post-item .box-text .post-title:hover{color:#e31616}.row-tin-tuc-slider .cot2 .post-item .box-text .post-title{font-size:15.5px}.row-tin-tuc-slider{margin-top:20px!important}.section-title-container{margin-bottom:0}.section-title-normal span{padding-bottom:3.5px;border-bottom:2px solid #fbae3c}.row-tin-tuc-slider .cot2 .col-inner .col-inner{border:0}.row-tin-tuc-slider .cot2 .col-inner{padding:10px 10px 5px;border:1px dashed orange;border-radius:4px;BACKGROUND:#fffaf3}.row-tin-tuc-slider .cot1{border:1px solid #e4e4e4;border-radius:4px;padding-top:10px;padding-bottom:5px}.row-tin-tuc-slider .cot1 .section-title-container{padding-bottom:8px;padding-top:10px}.row-tin-tuc-slider .cot1 .post-item,.row-tin-tuc-slider .cot1 .post-item .box-text{padding-bottom:0!important}.row-tin-tuc-slider .col{padding-bottom:0}.gioi-thieu-section .section-title-container{margin-bottom:10px}.gioi-thieu-section .cot1 .col-inner .gioi-thieu{background:#fff;padding:10px 10px 0;border-radius:3px;border:1px solid #e4e4e4;margin-bottom:14px}.button,.mb{margin-bottom:0}.gioi-thieu-section .cot2 .col-inner .post-item{padding-bottom:0!important}.bai-viet-tin-tuc .cot1 .post-item,.bai-viet-tin-tuc .cot2,.gioi-thieu-section .cot1,.vi-sao1 .col{padding-bottom:0}.gioi-thieu-section .cot2{border:1px solid #e4e4e4;background:#fff;border-radius:3px;padding-top:15px;padding-bottom:0}.button span{font-weight:400;font-size:15px}.vi-sao2 .section-title-normal{margin-bottom:15px}.bai-viet-tin-tuc .cot1 .post-item .post-title:hover{color:#cd0e0e}form .sub-title{margin-bottom:10px}input[type=submit]:not(.is-form){text-transform:none;font-weight:400;border-radius:3px;margin-bottom:0}.bai-viet-tin-tuc .cot2{background:#fff;padding-top:10px;border-radius:3px;border:1px solid #e4e4e4}.bai-viet-tin-tuc .cot1 .col-inner{background:#fff;padding:10px;border:1px solid #e4e4e4;border-radius:3px}.bai-viet-tin-tuc .cot1 .col-inner .col-inner{border:0;padding:0}.bai-viet-tin-tuc .cot1{padding-bottom:0}.blog-single{background:#fffbf1}#comments,.post{background:#fff}.post{margin:0 0 20px;padding:20px 10px 10px;border-radius:4px;border:1px solid #e6e6e6}.blog-single .large-9{padding-right:0}.is-divider{height:1px;max-width:100%}.entry-content{padding-top:0}.blog-single .entry-category a{text-transform:none;font-size:14px;font-weight:400}.entry-meta{text-transform:none;font-size:15px;letter-spacing:0;color:gray}#comments{border-radius:3px;padding:10px;border:1px solid #e6e6e6}footer.entry-meta{font-size:15px;border-top:0;border-bottom:0}.post-item .post-title:hover{color:#c50a09}.blog-single .mo-ta-bv h2{font-size:16px;line-height:25px}.blog-single .thong-tin-bv{background:#fffbf1;border-radius:4px;border:1px dashed orange;padding:10px;margin-bottom:10px;margin-top:15px}.blog-single .thong-tin-bv .title-filed .key{font-weight:500;color:#000}.blog-single .thong-tin-bv .title-filed{margin-bottom:5px}.blog-single .thong-tin-bv .chi_phi{color:red;font-size:20px}.tai-bao-gia{border:1px solid #e6e6e6;border-radius:3px;width:100%;background:#fff;padding:10px;display:block}.title-bao-gia{display:block;text-align:center;margin-bottom:15px;font-size:18px;font-weight:500;color:#de0b0c;margin-top:10px}.tai-bao-gia .left{width:40%;float:left}.tai-bao-gia .right{width:60%;float:right;padding-left:10px}.recent-blog-posts a{color:#000}.html-before-comments{background:#fff;border-radius:3px;border:1px solid #e6e6e6;padding:10px;margin-bottom:20px}.blog-archive .page-title,span.widget-title{margin-bottom:15px;letter-spacing:0;text-transform:none;font-size:18px}.html-before-comments .post-item{padding-bottom:0}span.widget-title{font-weight:500;display:block}.blog-archive .absolute,.home .chi-phi-du-kien,.widget .is-divider{display:none}.recent-blog-posts a:hover{color:#e31616}.blog-archive .page-title{position:relative;text-align:left;color:#e31616}.taxonomy-description{background:#f1f1f1;padding:10px;border-radius:3px;text-align:left;margin-bottom:10px}.archive-page-header .col{padding-bottom:10px}.blog-archive .post-sidebar #secondary{border:1px solid #e6e6e6;padding:10px;border-radius:3px}.blog-archive .large-3{padding-left:0}.blog-archive .large-9 .post-item{padding-bottom:0} .chi-phi-du-kien{display:flex;color:#fbae3c;font-size:15px;position:absolute;z-index:9;margin-top:-130px;width:100%;padding-left:10px;padding-right:10px;background:0 0;line-height:32px}.chi-phi-du-kien .left{padding-top:2px;width:75%;float:left}.chi-phi-du-kien .right{width:25%;float:right;color:#a0a0a0;text-align:right;font-size:15px;padding-top:2px}.footer-contact{z-index:999;bottom:3%;left:3%;position:fixed}.footer-contact .notice{display:none}.footer-contact a:hover>.notice{display:block;position:absolute;z-index:999;bottom:6%;left:3%}#calltrap-btn,#calltrap-overlay{background-color:#8cd15f;position:fixed;text-align:center}#calltrap-btn{-webkit-border-radius:50%;border-radius:50%;display:block;height:55px;line-height:100px;opacity:.7;left:35px;bottom:50px;width:55px;z-index:9999;-webkit-animation:calltrap_opacity 3s infinite linear;-moz-animation:calltrap_opacity 3s infinite linear;-o-animation:calltrap_opacity 3s infinite linear;animation:calltrap_opacity 3s infinite linear}#calltrap-btn.calltrap_offline{background-color:#8cd15f}#calltrap-ico{width:32px;height:32px;position:absolute;margin:auto;top:0;right:0;bottom:0;left:0;border:0;-webkit-border-radius:50%!important;border-radius:50%!important;-o-background-clip:padding-box;background-clip:padding-box;-webkit-animation:uptocallmini 1.5s 0s ease-out infinite;-moz-animation:uptocallmini 1.5s 0s ease-out infinite;-o-animation:uptocallmini 1.5s 0s ease-out infinite;animation:uptocallmini 1.5s 0s ease-out infinite}#calltrap-ico:before{content:\"\";position:absolute;width:100%;height:100%;background-size:cover;top:0;left:0;background-image:url(/wp-content/uploads/2018/08/phone-call.png);background-repeat:no-repeat;background-position:center center;-webkit-animation:calltrap_spin 3s infinite linear;-moz-animation:calltrap_spin 3s infinite linear;-o-animation:calltrap_spin 3s infinite linear;animation:calltrap_spin 3s infinite linear}.calltrap_offline #calltrap-ico{-webkit-animation:uptocallmini_offline 1.5s 0s ease-out infinite;-moz-animation:uptocallmini_offline 1.5s 0s ease-out infinite;-o-animation:uptocallmini_offline 1.5s 0s ease-out infinite;animation:uptocallmini_offline 1.5s 0s ease-out infinite}#calltrap-overlay{z-index:9998;width:100%;height:100%;left:0;top:0;display:none}#calltrap-overlay .b-calltrap-overlay{display:table;width:100%;height:100%}#calltrap-overlay .b-calltrap-overlay__body,#calltrap-overlay .b-calltrap-overlay__footer,#calltrap-overlay .b-calltrap-overlay__header{display:table-row;padding:0;margin:0}#calltrap-overlay .b-calltrap-overlay__body-block,#calltrap-overlay .b-calltrap-overlay__footer-block,#calltrap-overlay .b-calltrap-overlay__header-block{display:table-cell;vertical-align:middle;text-align:center}#calltrap-overlay .b-calltrap-overlay__body-block{padding:0 7px}#calltrap-overlay .b-calltrap-overlay__footer,#calltrap-overlay .b-calltrap-overlay__header{height:1px}#calltrap-overlay .b-calltrap__container{background-color:#fff;border:5px solid #2074a1;-webkit-border-radius:3px;border-radius:3px;padding:0;max-width:500px;display:block;margin:0 auto;font-size:16px;line-height:1.3;position:relative;font-family:Tahoma,Arial,self-serif!important}@media screen and (min-width:1px) and (max-width:500px){#calltrap-overlay .b-calltrap__container{width:290px}#calltrap-form .b-calltrap_form__title,#calltrap-success .b-calltrap_form__title{padding-right:20px}}#calltrap-overlay .b-calltrap__close{display:block;position:absolute;right:20px;top:20px;width:20px;height:20px;opacity:.5;-webkit-transition:all .3s ease;-moz-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease}#calltrap-overlay .b-calltrap__close:hover{opacity:1}#calltrap-form,#calltrap-success{display:block}#calltrap-form .b-calltrap_form__fields,#calltrap-success .b-calltrap_form__fields{margin:20px 25px 35px}#calltrap-form .b-calltrap_form__title,#calltrap-success .b-calltrap_form__title{font-size:20px;margin:0 0 17px;text-align:left}#calltrap-form .b-calltrap_form__text,#calltrap-success .b-calltrap_form__text{text-align:left}#calltrap-form .b-calltrap_form__text p,#calltrap-success .b-calltrap_form__text p{margin:0 0 .55em}#calltrap-form .b-calltrap_form__input,#calltrap-success .b-calltrap_form__input{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;font-size:16px;padding:0 15px;height:44px;line-height:40px;background-color:#fff;border:2px solid #ccc;-webkit-border-radius:3px;border-radius:3px;display:block;width:100%;outline:0;-webkit-transition:all .3s ease;-moz-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease}#calltrap-form .b-calltrap_form__input.error,#calltrap-success .b-calltrap_form__input.error{background-color:#8cd15f;color:red;border-color:red}#calltrap-form .b-calltrap_form__input:disabled,#calltrap-success .b-calltrap_form__input:disabled{background-color:#eee;border-color:#bdbdbd;cursor:default}#calltrap-form .b-calltrap_form__input:focus,#calltrap-success .b-calltrap_form__input:focus{border:2px solid #2074a1}#calltrap-form .b-calltrap_form__submit,#calltrap-success .b-calltrap_form__submit{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;background-color:#2074a1;-webkit-border-radius:3px;border-radius:3px;border:none;color:#fff;cursor:pointer;font-size:16px;padding:0;height:44px;line-height:40px;display:inline-block;width:180px;text-align:center;outline:0;-webkit-transition:all .3s ease;-moz-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease}#calltrap-success,.blog-archive .from_the_blog_comments{display:none}@media screen and (min-width:1px) and (max-width:500px){#calltrap-form .b-calltrap_form__input,#calltrap-success .b-calltrap_form__input{margin-bottom:13px}#calltrap-form .b-calltrap_form__submit,#calltrap-success .b-calltrap_form__submit{width:100%}}#calltrap-form .b-calltrap_form__submit:hover,#calltrap-success .b-calltrap_form__submit:hover{background-color:#1c658c}#calltrap-form .b-calltrap_form__submit:disabled,#calltrap-success .b-calltrap_form__submit:disabled{background-color:#bdbdbd!important;cursor:default}#calltrap-form .b-calltrap_form__controls,#calltrap-success .b-calltrap_form__controls{margin:20px 0 0;padding:0 200px 0 0}#calltrap-form .b-calltrap_form__controls-item,#calltrap-success .b-calltrap_form__controls-item{position:relative;float:right}#calltrap-form .b-calltrap_form__controls-left,#calltrap-success .b-calltrap_form__controls-left{margin-left:-100%;width:100%}#calltrap-form .b-calltrap_form__controls-right,#calltrap-success .b-calltrap_form__controls-right{margin-right:-200px;overflow:visible;width:200px;text-align:right}@media screen and (min-width:1px) and (max-width:500px){#calltrap-form .b-calltrap_form__controls,#calltrap-success .b-calltrap_form__controls{padding:0}#calltrap-form .b-calltrap_form__controls-item,#calltrap-success .b-calltrap_form__controls-item{float:none}#calltrap-form .b-calltrap_form__controls-left,#calltrap-success .b-calltrap_form__controls-left{margin-left:0}#calltrap-form .b-calltrap_form__controls-right,#calltrap-success .b-calltrap_form__controls-right{margin-right:0;width:auto;text-align:left}}#calltrap-overlay.calltrap_offline .b-calltrap_form__submit{background-color:#1CB2ED}#calltrap-overlay.calltrap_offline .b-calltrap_form__submit:hover{background-color:#2e8c1c}#calltrap-overlay.calltrap_offline .b-calltrap__container,#calltrap-overlay.calltrap_offline .b-calltrap_form__input:focus{border-color:#1CB2ED}@-webkit-keyframes calltrap_opacity{0%,100%{opacity:1}57%{opacity:.75}75%{opacity:.95}}@-moz-keyframes calltrap_opacity{0%,100%{opacity:1}57%{opacity:.75}75%{opacity:.95}}@-o-keyframes calltrap_opacity{0%,100%{opacity:1}57%{opacity:.75}75%{opacity:.95}}@keyframes calltrap_opacity{0%,100%{opacity:1}57%{opacity:.75}75%{opacity:.95}}@-webkit-keyframes calltrap_spin{0%,30%,57%{-webkit-transform:rotate(0);transform:rotate(0)}33%,39%,45%,51%{-webkit-transform:rotate(-10deg);transform:rotate(-10deg)}36%,42%,54%{-webkit-transform:rotate(10deg);transform:rotate(10deg)}48%{-webkit-transform:rotate(10deg);transform:rotate(10deg);opacity:1}}@-moz-keyframes calltrap_spin{0%,30%,57%{-moz-transform:rotate(0);transform:rotate(0)}33%,39%,45%,51%{-moz-transform:rotate(-10deg);transform:rotate(-10deg)}36%,42%,54%{-moz-transform:rotate(10deg);transform:rotate(10deg)}48%{-moz-transform:rotate(10deg);transform:rotate(10deg);opacity:1}}@-o-keyframes calltrap_spin{0%,30%,57%{-o-transform:rotate(0);transform:rotate(0)}33%,39%,45%,51%{-o-transform:rotate(-10deg);transform:rotate(-10deg)}36%,42%,54%{-o-transform:rotate(10deg);transform:rotate(10deg)}48%{-o-transform:rotate(10deg);transform:rotate(10deg);opacity:1}}@keyframes calltrap_spin{0%,30%,57%{-webkit-transform:rotate(0);-moz-transform:rotate(0);-o-transform:rotate(0);transform:rotate(0)}33%,39%,45%,51%{-webkit-transform:rotate(-10deg);-moz-transform:rotate(-10deg);-o-transform:rotate(-10deg);transform:rotate(-10deg)}36%,42%,54%{-webkit-transform:rotate(10deg);-moz-transform:rotate(10deg);-o-transform:rotate(10deg);transform:rotate(10deg)}48%{-webkit-transform:rotate(10deg);-moz-transform:rotate(10deg);-o-transform:rotate(10deg);transform:rotate(10deg);opacity:1}}@-webkit-keyframes uptocallmini{0%{-webkit-box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0);box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0)}10%{-webkit-box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1;box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1}100%{-webkit-box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0);box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0)}}@-moz-keyframes uptocallmini{0%{box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0)}10%{box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1}100%{box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0)}}@-o-keyframes uptocallmini{0%{box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0)}10%{box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1}100%{box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0)}}@keyframes uptocallmini{0%{-webkit-box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0);box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 0 transparent,0 0 0 0 rgba(32,116,161,0)}10%{-webkit-box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1;box-shadow:0 0 8px 6px #2074a1,0 0 12px 10px transparent,0 0 12px 14px #2074a1}100%{-webkit-box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0);box-shadow:0 0 8px 6px rgba(32,116,161,0),0 0 0 40px transparent,0 0 0 40px rgba(32,116,161,0)}}@-webkit-keyframes uptocallmini_offline{0%{-webkit-box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0);box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0)}10%{-webkit-box-shadow:0 0 8px 6px #35A120,0 0 12px 10px transparent,0 0 12px 14px #35A120;box-shadow:0 0 8px 6px #35A120,0 0 12px 10px transparent,0 0 12px 14px #35A120}100%{-webkit-box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0);box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0)}}@-moz-keyframes uptocallmini_offline{0%{box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0)}10%{box-shadow:0 0 8px 6px #35A120,0 0 12px 10px transparent,0 0 12px 14px #35A120}100%{box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0)}}@-o-keyframes uptocallmini_offline{0%{box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0)}10%{box-shadow:0 0 8px 6px #35A120,0 0 12px 10px transparent,0 0 12px 14px #35A120}100%{box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0)}}@keyframes uptocallmini_offline{0%{-webkit-box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0);box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 0 transparent,0 0 0 0 rgba(53,161,32,0)}10%{-webkit-box-shadow:0 0 8px 6px #1CB2ED,0 0 12px 10px transparent,0 0 12px 14px #1CB2ED;box-shadow:0 0 8px 6px #1CB2ED,0 0 12px 10px transparent,0 0 12px 14px #1CB2ED}100%{-webkit-box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0);box-shadow:0 0 8px 6px rgba(53,161,32,0),0 0 0 40px transparent,0 0 0 40px rgba(53,161,32,0)}}.back-to-top{border:0 solid currentColor!important;background-color:#ff8d00!important;color:#fff!important}b,strong{font-weight:500}.dich-vu-cua-chung-toi .col,.lien-he-tu-van-section .col,.uu-dai .col{padding-bottom:0}\n.chi-phi-du-kien{background: #00000094;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:584:\".row-tin-tuc-slider .cot2{margin-top:20px}\n.row-tin-tuc-slider .cot2 .post-item, .gioi-thieu-section .cot2 .post-item, .bai-viet-tin-tuc .cot1 .post-item, .html-before-comments .post-item{flex-basis:50% !important; max-width:100% !important}\n.row-tin-tuc-slider .cot2 .section-title-normal, .bai-viet-tin-tuc .cot1 .section-title-normal{margin-bottom:15px}\n.chi-phi-du-kien{position:inherit; margin-top:10px}\n.chi-phi-du-kien .left, .chi-phi-du-kien .right {\n    width: 100% !important;display:block; float:none; text-align:left\n}.chi-phi-du-kien{display:inline-block; font-size:15px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"box_shadow\";b:0;s:10:\"site_width\";s:6:\"1200px\";s:13:\"color_primary\";s:7:\"#fbae3c\";s:15:\"color_secondary\";s:7:\"#e31616\";s:11:\"color_texts\";s:7:\"#595959\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#f87858\";s:9:\"type_size\";s:2:\"95\";s:16:\"type_size_mobile\";s:3:\"100\";s:11:\"topbar_left\";s:45:\"Chào mừng bạn đến với webdesign.com\";s:13:\"header_height\";s:2:\"80\";s:17:\"box_shadow_header\";b:1;s:14:\"header_divider\";b:0;s:8:\"nav_size\";s:6:\"xlarge\";s:11:\"nav_spacing\";s:6:\"xlarge\";s:13:\"nav_uppercase\";b:1;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:14:\"type_nav_color\";s:7:\"#0a0a0a\";s:20:\"type_nav_color_hover\";s:7:\"#e31616\";s:9:\"nav_style\";s:0:\"\";s:17:\"header_top_height\";s:2:\"35\";s:9:\"site_logo\";s:76:\"https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/10/BIZHOST-DEMO.png\";s:10:\"logo_width\";s:3:\"256\";s:12:\"logo_padding\";s:1:\"2\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:19:\"blog_excerpt_suffix\";s:3:\"...\";s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"1\";s:17:\"nav_height_sticky\";s:2:\"19\";s:16:\"bottombar_sticky\";b:0;s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_align\";s:6:\"center\";s:19:\"footer_bottom_color\";s:7:\"#db0000\";s:16:\"footer_left_text\";s:94:\"Copyright [ux_current_year] © webdesign.com | <a href=\"https://webdesign.com\">webdesign.com·\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:1;s:18:\"blog_style_archive\";s:5:\"3-col\";s:15:\"blog_after_post\";s:257:\"[title text=\"Có thể bạn quan tâm\" color=\"rgb(218, 8, 8)\" icon=\"icon-menu\"]\n\n[gap height=\"21px\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"3\" columns__md=\"1\" show_date=\"text\" comments=\"false\" image_height=\"70%\" image_radius=\"3\" text_align=\"left\"]\";}","yes"),
("165","envato_setup_complete","1534234558","yes"),
("171","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("212","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1534329919;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("226","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"7.9\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1534308610;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("227","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("228","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("230","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1557996848;}","yes"),
("236","yoast-seo-premium_license","a:3:{s:3:\"key\";s:19:\"yoast-dummy-license\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("237","wpseo_current_version","16","no"),
("238","wpseo_premium_version","7.9","yes"),
("239","wpseo_license_server_version","2","yes"),
("244","wpseo_tracking_last_request","1540272737","yes"),
("251","wpseo_sitemap_cache_validator_global","2h2ku","no"),
("256","rewrite_rules","a:103:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("260","wpseo_sitemap_1_cache_validator","2ixcV","no"),
("261","wpseo_sitemap_customize_changeset_cache_validator","2ixcW","no"),
("266","acf_version","5.7.2","yes"),
("284","category_children","a:0:{}","yes"),
("448","duplicator_pro_package_active","{\"Created\":\"2018-08-17 07:07:20\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.31\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20180817_mauwebsitenoithatthietkew\",\"Hash\":\"1a814c0aad250e817442_20180817070720\",\"NameHash\":\"20180817_mauwebsitenoithatthietkew_1a814c0aad250e817442_20180817070720\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/bizhostvn.com\\/w\\/noithat5\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20180817_mauwebsitenoithatthietkew_1a814c0aad250e817442_20180817070720_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/backups-dup-pro\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\",\"Size\":93892316,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/noithat5\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web18\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":654,\"tablesSizeOnDisk\":4014080,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("482","_transient_timeout_wpseo_link_table_inaccessible","1571808733","no"),
("483","_transient_wpseo_link_table_inaccessible","0","no"),
("484","_transient_timeout_wpseo_meta_table_inaccessible","1571808733","no"),
("485","_transient_wpseo_meta_table_inaccessible","0","no"),
("488","dbprefix_old_dbprefix","nt_","yes"),
("489","dbprefix_new","bz_","yes"),
("500","recovery_keys","a:0:{}","yes"),
("620","db_upgraded","","yes"),
("622","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558582880","no"),
("623","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("624","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558582881","no"),
("625","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("626","can_compress_scripts","0","no"),
("627","_transient_timeout_acf_plugin_updates","1558064512","no"),
("628","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";}}","no"),
("629","_transient_timeout_plugin_slugs","1558083249","no"),
("630","_transient_plugin_slugs","a:3:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}","no"),
("635","_site_transient_timeout_theme_roots","1557998319","no"),
("636","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:8:\"noi-that\";s:7:\"/themes\";}","no"),
("638","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557996859;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("639","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557996870;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.2\";s:8:\"noi-that\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("642","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558601535","no"),
("643","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("646","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557996868;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("3","5","_edit_last","1"),
("4","5","_edit_lock","1534347733:1"),
("148","41","_wp_attached_file","2018/08/cropped-Giuseart.png"),
("149","41","_wp_attachment_context","site-icon"),
("150","41","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2018/08/cropped-Giuseart.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Giuseart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-Giuseart-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:28:\"cropped-Giuseart-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:28:\"cropped-Giuseart-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:28:\"cropped-Giuseart-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:26:\"cropped-Giuseart-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("161","5","_footer","normal"),
("162","5","_wp_page_template","page-blank.php"),
("166","50","_wp_attached_file","2018/08/slider1.jpg"),
("167","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:435;s:4:\"file\";s:19:\"2018/08/slider1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider1-300x96.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x245.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x326.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("169","55","_wp_attached_file","2018/08/slider2.jpg"),
("170","55","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:435;s:4:\"file\";s:19:\"2018/08/slider2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x96.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x245.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x326.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("185","1","_edit_lock","1534323301:1"),
("186","70","_wp_attached_file","2018/08/post1.jpg"),
("187","70","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:342;s:4:\"file\";s:17:\"2018/08/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("188","1","_edit_last","1"),
("189","1","_thumbnail_id","70"),
("201","77","_edit_last","1"),
("202","77","_edit_lock","1534308381:1"),
("203","78","_wp_attached_file","2018/08/post2.jpg"),
("204","78","_wp_attachment_metadata","a:5:{s:5:\"width\";i:375;s:6:\"height\";i:257;s:4:\"file\";s:17:\"2018/08/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("205","77","_thumbnail_id","78"),
("227","1","_wp_old_slug","chao-moi-nguoi"),
("228","91","_edit_last","1"),
("229","91","_edit_lock","1534323271:1"),
("230","92","_wp_attached_file","2018/08/images.jpg"),
("231","92","_wp_attachment_metadata","a:5:{s:5:\"width\";i:262;s:6:\"height\";i:192;s:4:\"file\";s:18:\"2018/08/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("232","91","_thumbnail_id","92"),
("234","95","_edit_last","1"),
("235","95","_footer","normal"),
("236","95","_wp_page_template","page-blank.php"),
("237","95","_edit_lock","1534322638:1"),
("238","97","_edit_last","1"),
("239","97","_edit_lock","1534321105:1"),
("240","97","_footer","normal"),
("241","97","_wp_page_template","page-blank.php"),
("242","99","_menu_item_type","taxonomy"),
("243","99","_menu_item_menu_item_parent","0"),
("244","99","_menu_item_object_id","5"),
("245","99","_menu_item_object","category"),
("246","99","_menu_item_target",""),
("247","99","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("248","99","_menu_item_xfn",""),
("249","99","_menu_item_url",""),
("251","100","_menu_item_type","taxonomy"),
("252","100","_menu_item_menu_item_parent","0"),
("253","100","_menu_item_object_id","6"),
("254","100","_menu_item_object","category"),
("255","100","_menu_item_target",""),
("256","100","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("257","100","_menu_item_xfn",""),
("258","100","_menu_item_url",""),
("260","101","_menu_item_type","taxonomy"),
("261","101","_menu_item_menu_item_parent","0"),
("262","101","_menu_item_object_id","4"),
("263","101","_menu_item_object","category"),
("264","101","_menu_item_target",""),
("265","101","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("266","101","_menu_item_xfn",""),
("267","101","_menu_item_url",""),
("269","102","_menu_item_type","taxonomy"),
("270","102","_menu_item_menu_item_parent","0"),
("271","102","_menu_item_object_id","1"),
("272","102","_menu_item_object","category"),
("273","102","_menu_item_target",""),
("274","102","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("275","102","_menu_item_xfn",""),
("276","102","_menu_item_url",""),
("287","104","_menu_item_type","taxonomy"),
("288","104","_menu_item_menu_item_parent","0"),
("289","104","_menu_item_object_id","7"),
("290","104","_menu_item_object","category"),
("291","104","_menu_item_target",""),
("292","104","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("293","104","_menu_item_xfn",""),
("294","104","_menu_item_url",""),
("296","105","_menu_item_type","post_type"),
("297","105","_menu_item_menu_item_parent","0"),
("298","105","_menu_item_object_id","95"),
("299","105","_menu_item_object","page"),
("300","105","_menu_item_target",""),
("301","105","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("302","105","_menu_item_xfn",""),
("303","105","_menu_item_url",""),
("305","106","_menu_item_type","post_type"),
("306","106","_menu_item_menu_item_parent","0"),
("307","106","_menu_item_object_id","97"),
("308","106","_menu_item_object","page"),
("309","106","_menu_item_target",""),
("310","106","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("311","106","_menu_item_xfn",""),
("312","106","_menu_item_url",""),
("314","107","_menu_item_type","taxonomy"),
("315","107","_menu_item_menu_item_parent","0"),
("316","107","_menu_item_object_id","8"),
("317","107","_menu_item_object","category"),
("318","107","_menu_item_target",""),
("319","107","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("320","107","_menu_item_xfn","");
INSERT INTO bz_postmeta VALUES
("321","107","_menu_item_url",""),
("323","108","_menu_item_type","custom"),
("324","108","_menu_item_menu_item_parent","0"),
("325","108","_menu_item_object_id","108"),
("326","108","_menu_item_object","custom"),
("327","108","_menu_item_target",""),
("328","108","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("329","108","_menu_item_xfn",""),
("330","108","_menu_item_url","#"),
("371","133","_edit_last","1"),
("372","133","_edit_lock","1534323236:1"),
("373","134","_wp_attached_file","2018/08/post5.jpg"),
("374","134","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:17:\"2018/08/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("375","133","_thumbnail_id","134"),
("453","200","_edit_last","1"),
("454","200","_edit_lock","1534323498:1"),
("455","201","_wp_attached_file","2018/08/post6.jpg"),
("456","201","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:304;s:4:\"file\";s:17:\"2018/08/post6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post6-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("457","200","_thumbnail_id","201"),
("459","5","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
("460","5","_oembed_time_97120786a5d618011442f73be26e093f","1534299501"),
("461","5","_oembed_4b4c6813f23293ae42502a8ef7cac6ed","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/RlugkrflX7U?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"),
("462","5","_oembed_time_4b4c6813f23293ae42502a8ef7cac6ed","1534299504"),
("465","208","_edit_last","1"),
("466","208","_edit_lock","1534312527:1"),
("467","209","_wp_attached_file","2018/08/post7.jpg"),
("468","209","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:304;s:4:\"file\";s:17:\"2018/08/post7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post7-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("469","208","_thumbnail_id","209"),
("471","211","_wp_attached_file","2018/08/GIFFT.gif"),
("472","211","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:292;s:4:\"file\";s:17:\"2018/08/GIFFT.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"GIFFT-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"GIFFT-300x250.gif\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("529","269","_wp_attached_file","2018/08/Local-seo.png"),
("530","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:21:\"2018/08/Local-seo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("531","281","_wp_attached_file","2018/08/map.png"),
("532","281","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:15:\"2018/08/map.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("533","287","_wp_attached_file","2018/08/content-for-web.png"),
("534","287","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2018/08/content-for-web.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("535","289","_wp_attached_file","2018/08/email-marketing.png"),
("536","289","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2018/08/email-marketing.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("537","292","_wp_attached_file","2018/08/pair-ads.png"),
("538","292","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2018/08/pair-ads.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("539","294","_wp_attached_file","2018/08/web-design-1.png"),
("540","294","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2018/08/web-design-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("554","317","_form","<div class=\"sub-title\">Mời quý khách để lại thông tin, chúng tôi sẽ điện tư vấn ngay:</div>\n[text* text-67 placeholder \"Tên của anh chị...\"]\n[tel* tel-817 placeholder \"Số điện thoại...\"]\n[text text-645 placeholder \"Địa chỉ hiện tại...\"]\n[textarea textarea-816 placeholder \"Nội dung liên hệ...\"]\n[submit \"Liên hệ báo giá\"]"),
("555","317","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:28:\"Mẫu website nội thất -\";s:6:\"sender\";s:23:\"wordpress@bizhostvn.com\";s:9:\"recipient\";s:14:\"demo@gmail.com\";s:4:\"body\";s:296:\"Có người liên hệ xin báo giá hoặc tư vấn trên website:\n- Họ và tên: [text-67]\n- Số điện thoại: [tel-817]\n- Địa chỉ: [text-645]\n- Nội dung liên hệ: [textarea-816]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nội thất\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("556","317","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:73:\"Mẫu website nội thất - Thiết kế web Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:93:\"Mẫu website nội thất - Thiết kế web Ninh Bình <wordpress@noithat4.ninhbinhweb.net>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:206:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nội thất - Thiết kế web Ninh Bình (https://bizhostvn.com/w/noithat5)\";s:18:\"additional_headers\";s:24:\"Reply-To: demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("557","317","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("558","317","_additional_settings",""),
("559","317","_locale","vi"),
("585","334","_edit_last","1"),
("586","334","_edit_lock","1534307183:1"),
("587","334","_thumbnail_id",""),
("590","345","_wp_attached_file","2018/08/DMCA_logo-grn-btn150w.png"),
("591","345","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:53;s:4:\"file\";s:33:\"2018/08/DMCA_logo-grn-btn150w.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"DMCA_logo-grn-btn150w-150x53.png\";s:5:\"width\";i:150;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("594","359","_wp_attached_file","2018/08/logo-face.png"),
("595","359","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2018/08/logo-face.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("596","366","_wp_attached_file","2018/08/logo-you.png"),
("597","366","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2018/08/logo-you.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("603","392","_wp_attached_file","2018/08/banner3.jpg"),
("604","392","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:302;s:4:\"file\";s:19:\"2018/08/banner3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner3-300x259.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("605","394","_wp_attached_file","2018/08/banner_50_1.png"),
("606","394","_wp_attachment_metadata","a:5:{s:5:\"width\";i:354;s:6:\"height\";i:200;s:4:\"file\";s:23:\"2018/08/banner_50_1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner_50_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner_50_1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("607","395","_wp_attached_file","2018/08/banner-thiet-ke-mien-phi.jpg"),
("608","395","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:36:\"2018/08/banner-thiet-ke-mien-phi.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"banner-thiet-ke-mien-phi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"banner-thiet-ke-mien-phi-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"banner-thiet-ke-mien-phi-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("609","396","_wp_attached_file","2018/08/banner2.jpg"),
("610","396","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2018/08/banner2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("690","452","_form","<div class=\"tai-bao-gia\">\n<span class=\"title-bao-gia\">NHẬP THÔNG TIN ĐỂ TẢI BÁO GIÁ</span>\n<div class=\"left\">\n[text* text-343 placeholder \"Họ tên của bạn (*)...\"]\n[tel* tel-247 placeholder \"Số điện thoại của bạn (*)...\"]\n[email* email-546 placeholder \"Email của bạn (*)...\"]\n[text text-3456 placeholder \"Địa chỉ của bạn...\"]\n(*) Thông tin bắt buộc\n</div>\n\n<div class=\"right\">\n[textarea textarea-585 placeholder \"Nội dung...\"]\n[submit \"Tải báo giá\"]\n\n</div>\n<div class=\"clearboth\"></div>\n</div>"),
("691","452","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Mẫu website nội thất\";s:6:\"sender\";s:23:\"wordpress@bizhostvn.com\";s:9:\"recipient\";s:14:\"demo@gmail.com\";s:4:\"body\";s:244:\"Có người cần tải báo giá:\n- Họ và tên:[text-343]\n- Số điện thoại: [tel-247]\n- Email: [email-546]\n- Địa chỉ: [text-3456]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nội thất\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("692","452","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:73:\"Mẫu website nội thất - Thiết kế web Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:93:\"Mẫu website nội thất - Thiết kế web Ninh Bình <wordpress@noithat4.ninhbinhweb.net>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:206:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu website nội thất - Thiết kế web Ninh Bình (https://bizhostvn.com/w/noithat5)\";s:18:\"additional_headers\";s:24:\"Reply-To: demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("693","452","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("694","452","_additional_settings",""),
("695","452","_locale","vi"),
("697","208","form_tai_bao_gia","[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]"),
("698","208","_form_tai_bao_gia","field_5ad9611d1b630"),
("699","208","thong_tin_mo_ta","Từng sản phẩm được công ty chúng tôi gia công một cách tỉ mỉ từng đường cạnh, và những mối ghép kết hợp một cách tinh túy. Đem đên cho chủ nhà một sản phẩm với phương châm chất lượng an cường giá tận xưởng."),
("700","208","_thong_tin_mo_ta","field_5ad94b61ec512"),
("701","208","chu_dau_tu","Lê Văn Thiện"),
("702","208","_chu_dau_tu","field_5ad94c04ec515"),
("703","208","dia_chi","Lãng Nội, Gia Lập, Gia Viễn, Ninh Bình"),
("704","208","_dia_chi","field_5ad94c4eec516"),
("705","208","dien_tich","200"),
("706","208","_dien_tich","field_5ad94c7cec517"),
("707","208","thoi_gian_thi_cong","20 ngày"),
("708","208","_thoi_gian_thi_cong","field_5ad94c9eec518"),
("709","208","don_vi_thuc_hien","webdesign"),
("710","208","_don_vi_thuc_hien","field_5ad94cc4ec519"),
("711","208","mo_ta_chung","Mô tả chung của dự án"),
("712","208","_mo_ta_chung","field_5ad94cf0ec51a"),
("713","208","chi_phi_du_kien","200000"),
("714","208","_chi_phi_du_kien","field_5ad94dd1b84db"),
("878","200","form_tai_bao_gia","[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]"),
("879","200","_form_tai_bao_gia","field_5ad9611d1b630"),
("880","200","thong_tin_mo_ta","Xưởng công ty sản xuất trực tiếp không làm việc qua các xưởng gỗ trung gian nên giá thành sản phẩm Kiều Dương mang lại hợp lí với khách hàng"),
("881","200","_thong_tin_mo_ta","field_5ad94b61ec512"),
("882","200","chu_dau_tu","Lê Văn Quốc Khánh"),
("883","200","_chu_dau_tu","field_5ad94c04ec515"),
("884","200","dia_chi","Lãng Nội, Gia Lập, Gia Viễn, Ninh Bình"),
("885","200","_dia_chi","field_5ad94c4eec516"),
("886","200","dien_tich","190"),
("887","200","_dien_tich","field_5ad94c7cec517"),
("888","200","thoi_gian_thi_cong","10 ngày");
INSERT INTO bz_postmeta VALUES
("889","200","_thoi_gian_thi_cong","field_5ad94c9eec518"),
("890","200","don_vi_thuc_hien","webdesign"),
("891","200","_don_vi_thuc_hien","field_5ad94cc4ec519"),
("892","200","mo_ta_chung","Thiết kế nội thất"),
("893","200","_mo_ta_chung","field_5ad94cf0ec51a"),
("894","200","chi_phi_du_kien","200000000"),
("895","200","_chi_phi_du_kien","field_5ad94dd1b84db"),
("914","450","_edit_lock","1534323472:1"),
("915","450","_edit_last","1"),
("929","516","_wp_attached_file","2018/08/messenger-icon.png"),
("930","516","_wp_attachment_metadata","a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:26:\"2018/08/messenger-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("931","517","_wp_attached_file","2018/08/zalo-icon.png"),
("932","517","_wp_attachment_metadata","a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:21:\"2018/08/zalo-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("933","518","_wp_attached_file","2018/08/phone-icon.png"),
("934","518","_wp_attachment_metadata","a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:22:\"2018/08/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("935","519","_wp_attached_file","2018/08/icon.png"),
("936","519","_wp_attachment_metadata","a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:16:\"2018/08/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("937","516","_edit_lock","1534316642:1"),
("967","534","_wp_attached_file","2018/08/phone-call.png"),
("968","534","_wp_attachment_metadata","a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:22:\"2018/08/phone-call.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("969","534","_edit_lock","1534318785:1"),
("1045","589","_wp_attached_file","2018/08/du-toan-chat-che-1.jpg"),
("1046","589","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:311;s:4:\"file\";s:30:\"2018/08/du-toan-chat-che-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"du-toan-chat-che-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"du-toan-chat-che-1-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1047","594","_wp_attached_file","2018/08/ecogreen.jpg"),
("1048","594","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:311;s:4:\"file\";s:20:\"2018/08/ecogreen.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ecogreen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ecogreen-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1052","642","_wp_attached_file","2018/08/icon-lienhe-1.png"),
("1053","642","_wp_attachment_metadata","a:5:{s:5:\"width\";i:18;s:6:\"height\";i:27;s:4:\"file\";s:25:\"2018/08/icon-lienhe-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1054","646","_wp_attached_file","2018/08/icon-lienhe-2.png"),
("1055","646","_wp_attachment_metadata","a:5:{s:5:\"width\";i:18;s:6:\"height\";i:26;s:4:\"file\";s:25:\"2018/08/icon-lienhe-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1056","651","_wp_attached_file","2018/08/icon-lienhe-3.png"),
("1057","651","_wp_attachment_metadata","a:5:{s:5:\"width\";i:25;s:6:\"height\";i:15;s:4:\"file\";s:25:\"2018/08/icon-lienhe-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1058","656","_edit_last","1"),
("1059","656","_edit_lock","1534322361:1"),
("1060","656","_footer","normal"),
("1061","656","_wp_page_template","page-blank.php"),
("1066","673","_edit_last","1"),
("1067","673","_edit_lock","1534322652:1"),
("1068","673","_footer","normal"),
("1069","673","_wp_page_template","page-blank.php"),
("1072","681","_wp_attached_file","2018/08/icon-intro1.png"),
("1073","681","_wp_attachment_metadata","a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:23:\"2018/08/icon-intro1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1075","673","_thumbnail_id",""),
("1084","721","_edit_last","1"),
("1085","721","_edit_lock","1534322925:1"),
("1086","721","_footer","normal"),
("1087","721","_wp_page_template","page-blank.php"),
("1090","721","_thumbnail_id",""),
("1091","656","_thumbnail_id",""),
("1093","133","form_tai_bao_gia","[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]"),
("1094","133","_form_tai_bao_gia","field_5ad9611d1b630"),
("1095","133","thong_tin_mo_ta","Khu biệt thự Mimosa Aquabay có vị trí gần như đẹp nhất trong quy hoạch Ecopark, nơi con sông Bắc Hưng Hải uốn mình lượn qua, tạo thành một dải xanh duyên dáng."),
("1096","133","_thong_tin_mo_ta","field_5ad94b61ec512"),
("1097","133","chu_dau_tu","Trịnh Thị Hằng"),
("1098","133","_chu_dau_tu","field_5ad94c04ec515"),
("1099","133","dia_chi","290 Nguyễn Trãi, Hà Đông, Hà Nội"),
("1100","133","_dia_chi","field_5ad94c4eec516"),
("1101","133","dien_tich","200"),
("1102","133","_dien_tich","field_5ad94c7cec517"),
("1103","133","thoi_gian_thi_cong","20 ngày"),
("1104","133","_thoi_gian_thi_cong","field_5ad94c9eec518"),
("1105","133","don_vi_thuc_hien","webdesign"),
("1106","133","_don_vi_thuc_hien","field_5ad94cc4ec519"),
("1107","133","mo_ta_chung","Thiết kế nội thất"),
("1108","133","_mo_ta_chung","field_5ad94cf0ec51a"),
("1109","133","chi_phi_du_kien","120000000"),
("1110","133","_chi_phi_du_kien","field_5ad94dd1b84db"),
("1130","91","form_tai_bao_gia","[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]"),
("1131","91","_form_tai_bao_gia","field_5ad9611d1b630"),
("1132","91","thong_tin_mo_ta","Phòng khách là điểm sáng của toàn bộ căn phòng.  Khi bước vào căn phòng, bạn có thể thấy ngay được tủ giày màu trắng với thiết kế độc đáo và đẹp mắt được đặt bên trái lối vào."),
("1133","91","_thong_tin_mo_ta","field_5ad94b61ec512"),
("1134","91","chu_dau_tu","Lê Văn Quốc Khánh"),
("1135","91","_chu_dau_tu","field_5ad94c04ec515"),
("1136","91","dia_chi","Lãng Nội, Gia Lập, Gia Viễn, Ninh Bình"),
("1137","91","_dia_chi","field_5ad94c4eec516"),
("1138","91","dien_tich","156"),
("1139","91","_dien_tich","field_5ad94c7cec517"),
("1140","91","thoi_gian_thi_cong","20 ngày"),
("1141","91","_thoi_gian_thi_cong","field_5ad94c9eec518"),
("1142","91","don_vi_thuc_hien","webdesign"),
("1143","91","_don_vi_thuc_hien","field_5ad94cc4ec519"),
("1144","91","mo_ta_chung","Thiết kế nội thất"),
("1145","91","_mo_ta_chung","field_5ad94cf0ec51a"),
("1146","91","chi_phi_du_kien","60000000"),
("1147","91","_chi_phi_du_kien","field_5ad94dd1b84db"),
("1167","1","form_tai_bao_gia","[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]"),
("1168","1","_form_tai_bao_gia","field_5ad9611d1b630"),
("1169","1","thong_tin_mo_ta","Với diện tích khoảng 63m2 Anh Trình đã đưa ra một bài toán với chúng tôi về căn hộ chung cư của mình. Thiết kế căn hộ của mình vừa đầy đủ công năng của các phòng, vừa rỗng rãi, và đủ ánh sáng cho các phòng. Và bố trí một không gian hợp lý với căn nhà rộng 63M2."),
("1170","1","_thong_tin_mo_ta","field_5ad94b61ec512"),
("1171","1","chu_dau_tu","Trịnh Thị Hằng"),
("1172","1","_chu_dau_tu","field_5ad94c04ec515"),
("1173","1","dia_chi","Lãng Nội, Gia Lập, Gia Viễn, Ninh Bình"),
("1174","1","_dia_chi","field_5ad94c4eec516"),
("1175","1","dien_tich","34"),
("1176","1","_dien_tich","field_5ad94c7cec517"),
("1177","1","thoi_gian_thi_cong","20 ngày"),
("1178","1","_thoi_gian_thi_cong","field_5ad94c9eec518"),
("1179","1","don_vi_thuc_hien","webdesign"),
("1180","1","_don_vi_thuc_hien","field_5ad94cc4ec519"),
("1181","1","mo_ta_chung","Thiết kế nội thất"),
("1182","1","_mo_ta_chung","field_5ad94cf0ec51a");
INSERT INTO bz_postmeta VALUES
("1183","1","chi_phi_du_kien","30000000"),
("1184","1","_chi_phi_du_kien","field_5ad94dd1b84db"),
("1261","761","_wp_attached_file","2018/10/BIZHOST-DEMO.png"),
("1262","761","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2018/10/BIZHOST-DEMO.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1265","763","_wp_attached_file","2018/10/favi.png"),
("1266","763","_wp_attachment_metadata","a:5:{s:5:\"width\";i:192;s:6:\"height\";i:192;s:4:\"file\";s:16:\"2018/10/favi.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"favi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2018-08-14 07:51:43","2018-08-14 00:51:43","Với diện tích khoảng 63m2 Anh Trình đã đưa ra một bài toán với chúng tôi về căn hộ chung cư của mình. Thiết kế căn hộ của mình vừa đầy đủ công năng của các phòng, vừa rỗng rãi, và đủ ánh sáng cho các phòng. Và bố trí một không gian hợp lý với căn nhà rộng 63M2. Nội thất Fuhome đã mang đến cho anh chị cái nhìn tổng quát về ngồi nhà khi dựng xong 3D.","Thiết kế và thi công nội thất chung cư Tứ Hiệp Plaza","","publish","open","open","","thiet-ke-thi-cong-noi-that-tu-hiep-plaza","","","2018-08-15 15:57:24","2018-08-15 08:57:24","","0","https://bizhostvn.com/w/noithat5/?p=1","0","post","","1"),
("2","1","2018-08-14 07:51:43","2018-08-14 07:51:43","Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"https://bizhostvn.com/w/noithat5/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2018-08-14 07:51:43","2018-08-14 07:51:43","","0","https://bizhostvn.com/w/noithat5/?page_id=2","0","page","","0"),
("3","1","2018-08-14 07:51:43","2018-08-14 07:51:43","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/noithat5.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2018-08-14 07:51:43","2018-08-14 07:51:43","","0","https://bizhostvn.com/w/noithat5/?page_id=3","0","page","","0"),
("5","1","2018-08-14 14:52:37","2018-08-14 07:52:37","[ux_slider nav_size=\"normal\" bullet_style=\"simple\"]
("41","1","2018-08-14 15:55:20","2018-08-14 08:55:20","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/cropped-Giuseart.png","cropped-Giuseart.png","","inherit","open","closed","","cropped-giuseart-png","","","2018-08-14 15:55:20","2018-08-14 08:55:20","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/cropped-Giuseart.png","0","attachment","image/png","0"),
("50","1","2018-08-14 16:03:07","2018-08-14 09:03:07","","slider1","","inherit","open","closed","","slider1","","","2018-08-14 16:03:07","2018-08-14 09:03:07","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/slider1.jpg","0","attachment","image/jpeg","0"),
("55","1","2018-08-14 16:07:03","2018-08-14 09:07:03","","slider2","","inherit","open","closed","","slider2","","","2018-08-14 16:07:03","2018-08-14 09:07:03","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/slider2.jpg","0","attachment","image/jpeg","0"),
("70","1","2018-08-14 16:17:19","2018-08-14 09:17:19","","post1","","inherit","open","closed","","post1","","","2018-08-14 16:17:19","2018-08-14 09:17:19","","1","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/post1.jpg","0","attachment","image/jpeg","0"),
("77","1","2018-08-14 16:20:45","2018-08-14 09:20:45","* KHÁCH HÀNG: Anh Thành
("78","1","2018-08-14 16:20:42","2018-08-14 09:20:42","","post2","","inherit","open","closed","","post2","","","2018-08-14 16:20:42","2018-08-14 09:20:42","","77","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/post2.jpg","0","attachment","image/jpeg","0"),
("91","1","2018-08-14 16:29:56","2018-08-14 09:29:56","Tháng 5 – 2018 công ty nội thất Fuhome đã thiết kế thi công trọn gói căn hộ nhà anh Hiếu tại chung cư Goldsilk Complex,<span class=\"_3oh- _58nk\"> Hà Nội. Chúng tôi đã kết hợp phong cách hiện đại vào căn hộ của gia đình anh, khiến không gian trở nên sống động và sang trọng. Căn hộ có diện tích 120m2 gồm 3 phòng ngủ, 1 phòng khách và khu bếp.</span>
("92","1","2018-08-14 16:29:51","2018-08-14 09:29:51","","images","","inherit","open","closed","","images","","","2018-08-14 16:29:51","2018-08-14 09:29:51","","91","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/images.jpg","0","attachment","image/jpeg","0"),
("95","1","2018-08-14 16:30:51","2018-08-14 09:30:51","[ux_image id=\"50\" image_size=\"original\" height=\"15%\"]
("97","1","2018-08-14 16:31:02","2018-08-14 09:31:02","[ux_image id=\"50\" image_size=\"original\" height=\"12%\"]
("99","1","2018-08-14 16:32:13","2018-08-14 09:32:13"," ","","","publish","closed","closed","","99","","","2018-08-14 16:33:01","2018-08-14 09:33:01","","0","https://bizhostvn.com/w/noithat5/?p=99","3","nav_menu_item","","0"),
("100","1","2018-08-14 16:32:13","2018-08-14 09:32:13"," ","","","publish","closed","closed","","100","","","2018-08-14 16:33:01","2018-08-14 09:33:01","","0","https://bizhostvn.com/w/noithat5/?p=100","4","nav_menu_item","","0"),
("101","1","2018-08-14 16:32:13","2018-08-14 09:32:13"," ","","","publish","closed","closed","","101","","","2018-08-14 16:33:01","2018-08-14 09:33:01","","0","https://bizhostvn.com/w/noithat5/?p=101","2","nav_menu_item","","0"),
("102","1","2018-08-14 16:32:13","2018-08-14 09:32:13"," ","","","publish","closed","closed","","102","","","2018-08-14 16:33:01","2018-08-14 09:33:01","","0","https://bizhostvn.com/w/noithat5/?p=102","1","nav_menu_item","","0"),
("104","1","2018-08-14 16:32:13","2018-08-14 09:32:13"," ","","","publish","closed","closed","","104","","","2018-08-14 16:33:01","2018-08-14 09:33:01","","0","https://bizhostvn.com/w/noithat5/?p=104","5","nav_menu_item","","0"),
("105","1","2018-08-14 16:32:44","2018-08-14 09:32:44"," ","","","publish","closed","closed","","105","","","2018-08-14 16:32:54","2018-08-14 09:32:54","","0","https://bizhostvn.com/w/noithat5/?p=105","1","nav_menu_item","","0"),
("106","1","2018-08-14 16:32:44","2018-08-14 09:32:44","","Liên hệ & Góp ý","","publish","closed","closed","","lien-he-gop-y-2","","","2018-08-14 16:32:54","2018-08-14 09:32:54","","0","https://bizhostvn.com/w/noithat5/?p=106","3","nav_menu_item","","0"),
("107","1","2018-08-14 16:32:44","2018-08-14 09:32:44"," ","","","publish","closed","closed","","107","","","2018-08-14 16:32:54","2018-08-14 09:32:54","","0","https://bizhostvn.com/w/noithat5/?p=107","2","nav_menu_item","","0"),
("108","1","2018-08-14 16:32:54","2018-08-14 09:32:54","","Kinh nghiệm sửa nhà","","publish","closed","closed","","kinh-nghiem-sua-nha","","","2018-08-14 16:32:54","2018-08-14 09:32:54","","0","https://bizhostvn.com/w/noithat5/?p=108","4","nav_menu_item","","0"),
("133","1","2018-08-14 16:46:53","2018-08-14 09:46:53","Khu biệt thự Mimosa Aquabay có vị trí gần như đẹp nhất trong quy hoạch Ecopark, nơi con sông Bắc Hưng Hải uốn mình lượn qua, tạo thành một dải xanh duyên dáng.
("134","1","2018-08-14 16:46:49","2018-08-14 09:46:49","","post5","","inherit","open","closed","","post5","","","2018-08-14 16:46:49","2018-08-14 09:46:49","","133","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/post5.jpg","0","attachment","image/jpeg","0"),
("200","1","2018-08-15 09:15:39","2018-08-15 02:15:39","Dịch vụ tư vấn, báo giá, thiết kế sơ bộ mặt bằng tư vấn tại công trình hoàn toàn miễn phí
("201","1","2018-08-15 09:15:36","2018-08-15 02:15:36","","post6","","inherit","open","closed","","post6","","","2018-08-15 09:15:36","2018-08-15 02:15:36","","200","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/post6.jpg","0","attachment","image/jpeg","0"),
("208","1","2018-08-15 09:20:56","2018-08-15 02:20:56","– Từng sản phẩm được công ty chúng tôi gia công một cách tỉ mỉ từng đường cạnh, và những mối ghép kết hợp một cách tinh túy. Đem đên cho chủ nhà một sản phẩm với phương châm chất lượng an cường giá tận xưởng.
("209","1","2018-08-15 09:20:53","2018-08-15 02:20:53","","post7","","inherit","open","closed","","post7","","","2018-08-15 09:20:53","2018-08-15 02:20:53","","208","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/post7.jpg","0","attachment","image/jpeg","0"),
("211","1","2018-08-15 09:21:34","2018-08-15 02:21:34","","GIFFT","","inherit","open","closed","","gifft","","","2018-08-15 09:21:34","2018-08-15 02:21:34","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/GIFFT.gif","0","attachment","image/gif","0"),
("269","1","2018-08-15 10:18:50","2018-08-15 03:18:50","","Local-seo","","inherit","open","closed","","local-seo","","","2018-08-15 10:18:50","2018-08-15 03:18:50","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/Local-seo.png","0","attachment","image/png","0"),
("281","1","2018-08-15 10:24:04","2018-08-15 03:24:04","","map","","inherit","open","closed","","map","","","2018-08-15 10:24:04","2018-08-15 03:24:04","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/map.png","0","attachment","image/png","0"),
("287","1","2018-08-15 10:26:04","2018-08-15 03:26:04","","content-for-web","","inherit","open","closed","","content-for-web","","","2018-08-15 10:26:04","2018-08-15 03:26:04","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/content-for-web.png","0","attachment","image/png","0"),
("289","1","2018-08-15 10:26:35","2018-08-15 03:26:35","","email-marketing","","inherit","open","closed","","email-marketing","","","2018-08-15 10:26:35","2018-08-15 03:26:35","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/email-marketing.png","0","attachment","image/png","0"),
("292","1","2018-08-15 10:28:13","2018-08-15 03:28:13","","pair-ads","","inherit","open","closed","","pair-ads","","","2018-08-15 10:28:13","2018-08-15 03:28:13","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/pair-ads.png","0","attachment","image/png","0"),
("294","1","2018-08-15 10:29:00","2018-08-15 03:29:00","","web-design-1","","inherit","open","closed","","web-design-1","","","2018-08-15 10:29:00","2018-08-15 03:29:00","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/web-design-1.png","0","attachment","image/png","0"),
("317","1","2018-08-15 10:48:10","2018-08-15 03:48:10","<div class=\"sub-title\">Mời quý khách để lại thông tin, chúng tôi sẽ điện tư vấn ngay:</div>
("334","1","2018-08-15 10:59:29","2018-08-15 03:59:29","[section label=\"Footer\" class=\"footer-section\" bg=\"50\" bg_size=\"original\" bg_color=\"rgb(171, 0, 0)\" bg_overlay=\"rgba(0, 0, 0, 0.75)\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Về chúng tôi\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"340\" img_width=\"197\"]\n\n<p><span style=\"color: #e8e8e8;\">Công ty CP Kiến trúc và xây dựng webdesign chuyên tư vấn, thiết kế, thi công các công trình kiến trúc dân dụng với giá rẻ uy tín hàng đầu như: biệt thự đẹp, nhà phố đẹp, lâu đài, dinh thự đẹp. Và các mẫu nội thất nhà ở, nội thất chung cư, quán bar cafe, khách sạn …</span></p>\n<p><span style=\"color: #e3e3e3;\">+ Hotline 24/7: 0909009009</span><br /><span style=\"color: #e3e3e3;\">+ Email: demo@gmail.com</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Gọi tư vấn\" letter_case=\"lowercase\" size=\"small\" radius=\"99\" expand=\"true\"]\n\n\n[/col_inner]\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Xin báo giá\" letter_case=\"lowercase\" color=\"secondary\" size=\"small\" radius=\"99\" expand=\"true\" link=\"#\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n<p><span style=\"color: #e6e6e6;\"><span style=\"color: #ffffff;\">+ Địa chỉ:</span> Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội.</span></p>\n<p><span style=\"color: #ffffff;\">+ Điện thoại:<span style=\"color: #ebebeb;\"> 0909009009 - 0909009009</span></span></p>\n<p><span style=\"color: #ebebeb;\"><span style=\"color: #ffffff;\">+ Email:</span> demo@gmail.com</span></p>\n<p><span style=\"color: #ffffff;\">+ Website:</span> <a href=\"https://webdesign.com\">www.webdesign.com</a> | <a href=\"http://webdesign.com\">www.webdesign.com</a></p>\n<p><span style=\"color: #c0c0c0;\"><a href=\"#\">Thiết kế nội thất</a> | <a href=\"#\">Thi công nội thất</a> | <a href=\"#\">Cải tạo sửa chữa</a> | <a href=\"#\">Kinh nghiệm sửa nhà</a> | <a href=\"#\">Bài viết - hướng dẫn</a> | <a href=\"#\">Videos</a> | <a href=\"#\">Liên hệ</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"359\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">Fanpage Facebook</span><br /></span><span style=\"color: #e6e6e6;\">www.fb.com//</span></p>\n\n[/featured_box]\n[gap height=\"10px\"]\n\n[featured_box img=\"366\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">webdesign Chanel</span><br /></span><span style=\"color: #ededed;\">www.youtube.com/</span></p>\n\n[/featured_box]\n[gap height=\"20px\"]\n\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" phone=\"#\" googleplus=\"#\"]\n\n[gap height=\"12px\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 75%;\">Thiết kế &amp; duy trì bởi <a href=\"https://webdesign.com\">webdesign</a> | <a href=\"http://webdesign.com\">webdesign.com</a></span></p>\n[ux_image id=\"345\" image_size=\"original\" width=\"31\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2018-10-23 12:40:17","2018-10-23 05:40:17","","0","https://bizhostvn.com/w/noithat5/?post_type=blocks&#038;p=334","0","blocks","","0"),
("345","1","2018-08-15 11:06:42","2018-08-15 04:06:42","","DMCA_logo-grn-btn150w","","inherit","open","closed","","dmca_logo-grn-btn150w","","","2018-08-15 11:06:42","2018-08-15 04:06:42","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/DMCA_logo-grn-btn150w.png","0","attachment","image/png","0"),
("359","1","2018-08-15 11:15:27","2018-08-15 04:15:27","","logo-face","","inherit","open","closed","","logo-face","","","2018-08-15 11:15:27","2018-08-15 04:15:27","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/logo-face.png","0","attachment","image/png","0"),
("366","1","2018-08-15 11:17:28","2018-08-15 04:17:28","","logo-you","","inherit","open","closed","","logo-you","","","2018-08-15 11:17:28","2018-08-15 04:17:28","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/logo-you.png","0","attachment","image/png","0"),
("392","1","2018-08-15 11:31:34","2018-08-15 04:31:34","","banner3","","inherit","open","closed","","banner3","","","2018-08-15 11:31:34","2018-08-15 04:31:34","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/banner3.jpg","0","attachment","image/jpeg","0"),
("394","1","2018-08-15 11:32:18","2018-08-15 04:32:18","","banner_50_1","","inherit","open","closed","","banner_50_1","","","2018-08-15 11:32:18","2018-08-15 04:32:18","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/banner_50_1.png","0","attachment","image/png","0"),
("395","1","2018-08-15 11:33:12","2018-08-15 04:33:12","","banner-thiet-ke-mien-phi","","inherit","open","closed","","banner-thiet-ke-mien-phi","","","2018-08-15 11:33:12","2018-08-15 04:33:12","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/banner-thiet-ke-mien-phi.jpg","0","attachment","image/jpeg","0"),
("396","1","2018-08-15 11:33:37","2018-08-15 04:33:37","","banner2","","inherit","open","closed","","banner2","","","2018-08-15 11:33:37","2018-08-15 04:33:37","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/banner2.jpg","0","attachment","image/jpeg","0"),
("439","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}","Thông tin dự án","thong-tin-du-an","publish","closed","closed","","group_5ad94b4f30116","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","0","https://bizhostvn.com/w/noithat5/?post_type=acf-field-group&p=439","0","acf-field-group","","0"),
("440","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}","Mô tả dự án","","publish","closed","closed","","field_5ad94bbbec513","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=440","0","acf-field","","0"),
("441","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:104:\"Đây là phần nhập mô tả của dự án. Đoạn này nên có và để định dạng </h2>...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:45:\"Nhập mô tả của dự án tại đây...\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}","Thông tin mô tả","thong_tin_mo_ta","publish","closed","closed","","field_5ad94b61ec512","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=441","1","acf-field","","0"),
("442","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}","Thông tin dự án","","publish","closed","closed","","field_5ad94be6ec514","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=442","2","acf-field","","0"),
("443","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:112:\"Nhập tên của chủ đầu tư dự án. Ví dụ: Công ty TNHH Xây dựng và Nội thất Kiều Dương\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:31:\"Nhập tên chủ đầu tư...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Chủ đầu tư","chu_dau_tu","publish","closed","closed","","field_5ad94c04ec515","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=443","3","acf-field","","0"),
("444","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:104:\"Nhập thông tin địa chỉ của dự án: Ví dụ: Số 290 Nguyễn Trãi, Thanh Xuân, Hà Nội\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:34:\"Nhập địa chỉ của dự án\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Địa chỉ","dia_chi","publish","closed","closed","","field_5ad94c4eec516","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=444","4","acf-field","","0"),
("445","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:61:\"Nhập thông tin diện tích của dự án. Ví dụ: 80m2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}","Diện tích","dien_tich","publish","closed","closed","","field_5ad94c7cec517","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=445","5","acf-field","","0"),
("446","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:71:\"Thời gian thi công dự án là bao nhiêu ngày. Ví dụ: 20 ngày\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"20 ngày\";s:11:\"placeholder\";s:37:\"Nhập thời gian thi công dự án\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Thời gian thi công","thoi_gian_thi_cong","publish","closed","closed","","field_5ad94c9eec518","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=446","6","acf-field","","0"),
("447","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:84:\"Nhập tên đơn vị thực hiện. Ví dụ: Công ty Nội thất Kiều Dương\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:37:\"Nhập tên đơn vị thực hiện.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Đơn vị thực hiện","don_vi_thuc_hien","publish","closed","closed","","field_5ad94cc4ec519","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=447","7","acf-field","","0"),
("448","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:90:\"Nhập thêm một số mô tả chung của dự án. Ví dụ: Thiết kế nội thất\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:45:\"Nhập thêm mô tả dự án tại đây...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Mô tả chung","mo_ta_chung","publish","closed","closed","","field_5ad94cf0ec51a","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=448","8","acf-field","","0"),
("449","1","2018-08-15 12:13:21","2018-08-15 05:13:21","a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:79:\"Nhập chi phí dự kiến của dự án. Ví dụ: 800.000.000đ = 800000000\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:42:\"Nhập chi phí dự kiến tại đây...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}","Chi phí dự kiến","chi_phi_du_kien","publish","closed","closed","","field_5ad94dd1b84db","","","2018-08-15 12:13:21","2018-08-15 05:13:21","","439","https://bizhostvn.com/w/noithat5/?post_type=acf-field&p=449","9","acf-field","","0"),
("450","1","2018-08-15 12:17:42","2018-08-15 05:17:42","a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Tải báo giá dự án","tai-bao-gia-du-an","publish","closed","closed","","group_5ad961071a8d3","","","2018-08-15 16:00:15","2018-08-15 09:00:15","","0","https://bizhostvn.com/w/noithat5/?post_type=acf-field-group&#038;p=450","0","acf-field-group","","0"),
("451","1","2018-08-15 12:17:42","2018-08-15 05:17:42","a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:58:\"[contact-form-7 id=\"452\" title=\"Tải báo giá dự án\"]\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}","Form tải báo giá","form_tai_bao_gia","publish","closed","closed","","field_5ad9611d1b630","","","2018-08-15 13:27:47","2018-08-15 06:27:47","","450","https://bizhostvn.com/w/noithat5/?post_type=acf-field&#038;p=451","0","acf-field","","0"),
("452","1","2018-08-15 12:19:37","2018-08-15 05:19:37","<div class=\"tai-bao-gia\">
("516","1","2018-08-15 14:05:57","2018-08-15 07:05:57","","messenger-icon","","inherit","open","closed","","messenger-icon","","","2018-08-15 14:05:57","2018-08-15 07:05:57","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/messenger-icon.png","0","attachment","image/png","0"),
("517","1","2018-08-15 14:05:58","2018-08-15 07:05:58","","zalo-icon","","inherit","open","closed","","zalo-icon","","","2018-08-15 14:05:58","2018-08-15 07:05:58","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/zalo-icon.png","0","attachment","image/png","0"),
("518","1","2018-08-15 14:05:59","2018-08-15 07:05:59","","phone-icon","","inherit","open","closed","","phone-icon","","","2018-08-15 14:05:59","2018-08-15 07:05:59","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/phone-icon.png","0","attachment","image/png","0"),
("519","1","2018-08-15 14:06:00","2018-08-15 07:06:00","","icon","","inherit","open","closed","","icon","","","2018-08-15 14:06:00","2018-08-15 07:06:00","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/icon.png","0","attachment","image/png","0"),
("534","1","2018-08-15 14:17:15","2018-08-15 07:17:15","","phone-call","","inherit","open","closed","","phone-call","","","2018-08-15 14:17:15","2018-08-15 07:17:15","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/phone-call.png","0","attachment","image/png","0"),
("589","1","2018-08-15 14:56:28","2018-08-15 07:56:28","","du-toan-chat-che-1","","inherit","open","closed","","du-toan-chat-che-1","","","2018-08-15 14:56:28","2018-08-15 07:56:28","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/du-toan-chat-che-1.jpg","0","attachment","image/jpeg","0"),
("594","1","2018-08-15 14:57:48","2018-08-15 07:57:48","","ecogreen","","inherit","open","closed","","ecogreen","","","2018-08-15 14:57:48","2018-08-15 07:57:48","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/ecogreen.jpg","0","attachment","image/jpeg","0"),
("642","1","2018-08-15 15:17:59","2018-08-15 08:17:59","","icon-lienhe-1","","inherit","open","closed","","icon-lienhe-1","","","2018-08-15 15:17:59","2018-08-15 08:17:59","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/icon-lienhe-1.png","0","attachment","image/png","0"),
("646","1","2018-08-15 15:18:52","2018-08-15 08:18:52","","icon-lienhe-2","","inherit","open","closed","","icon-lienhe-2","","","2018-08-15 15:18:52","2018-08-15 08:18:52","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/icon-lienhe-2.png","0","attachment","image/png","0"),
("651","1","2018-08-15 15:19:29","2018-08-15 08:19:29","","icon-lienhe-3","","inherit","open","closed","","icon-lienhe-3","","","2018-08-15 15:19:29","2018-08-15 08:19:29","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/icon-lienhe-3.png","0","attachment","image/png","0"),
("656","1","2018-08-15 15:22:00","2018-08-15 08:22:00","[ux_image id=\"55\" image_size=\"original\" height=\"11%\"]\n\n[section]\n\n[row]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Giới thiệu chung\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" link=\"/gioi-thieu\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Hồ sơ năng lực\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/ho-so-nang-luc/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Dịch vụ của chúng tôi\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/dich-vu-cua-chung-toi/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Bảng giá dịch vụ\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/bang-gia/\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #d83131; font-size: 90%;\">Trách nhiệm - Uy tín</span></h2>\n<p style=\"text-align: center;\">Điều này có nghĩa là, khi hoàn thiện toàn bộ hồ sơ bản vẽ thiết kế thi công, nghiệm thu và bàn giao hồ sơ thiết kế , dịch vụ chăm sóc khách hàng sau thiết kế  được chúng tôi vô cùng coi trọng. Bởi hơn ai hết, chúng tôi hiểu rõ khách hàng của mình, họ cần gì, mong muốn gì và … đang lo sợ điều gì . Lo rằng sau khi bàn giao hồ sơ xong, đơn vị tư vấn sẽ không giám sát, theo dõi công trình để bảo đảm những yếu tố về mặt kỹ thuật hay thẩm mỹ từ trên giấy khi đưa vào thực tế sẽ ra sao.</p>\n<p style=\"text-align: center;\">Về vấn đề này, khách hàng có thể hoàn toàn yên tâm bởi dịch vụ giám sát nhà từ xa đã và đang hoạt động rất hiệu quả trong quy trình làm việc của chúng tôi. Khách hàng sẽ được giải đáp, được tư vấn, có được câu trả lời cho toàn bộ thiết kế nếu như gặp bất cứ khó khăn nào trong quá trình thi công. Do vậy, bạn hoàn toàn yên tâm nếu như sở hữu bộ hồ sơ thiết kế nhà ở và thực hiện thi công theo đúng thiết kế thì sẽ có được công trình nhà ở hoàn thiện và ưng ý nhất.</p>\n[title style=\"center\" text=\"Hồ sơ năng lực\" color=\"rgb(214, 22, 22)\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"3\" columns__md=\"1\" posts=\"30\" show_date=\"text\" excerpt_length=\"16\" comments=\"false\" image_height=\"63%\" image_size=\"original\" image_overlay=\"rgba(247, 130, 0, 0.21)\" image_hover=\"overlay-add\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n<p>&nbsp;</p>","Hồ sơ năng lực","","publish","closed","closed","","ho-so-nang-luc","","","2018-08-15 15:53:38","2018-08-15 08:53:38","","0","https://bizhostvn.com/w/noithat5/?page_id=656","0","page","","0"),
("673","1","2018-08-15 15:29:18","2018-08-15 08:29:18","[ux_image id=\"55\" image_size=\"original\" height=\"11%\"]\n\n[section label=\"Ưu đãi\" class=\"uu-dai\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Giới thiệu chung\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" link=\"/gioi-thieu\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Hồ sơ năng lực\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/ho-so-nang-luc/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Dịch vụ của chúng tôi\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/dich-vu-cua-chung-toi/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Bảng giá dịch vụ\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/bang-gia/\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"NHIỀU ưu đãi hấp dẫn cho khách hàng\" color=\"rgb(209, 29, 29)\"]\n\n[gap height=\"13px\"]\n\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"269\" img_width=\"50\" pos=\"left\"]\n\n<h4 class=\"title\" style=\"text-align: left;\">Miễn phí thiết kế 1 số hạng mục</h4>\n<p style=\"text-align: left;\"><span class=\"desc\" style=\"font-size: 95%;\">Miễn phí phần thiết kế cổng, hàng rào và định vị sân vườn tiểu cảnh, cùng 1 số hạng mục nhỏ khác.</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"281\" img_width=\"50\" pos=\"left\"]\n\n<h4 class=\"title\" style=\"text-align: left;\">Giảm giá, ưu đãi thiết kế</h4>\n<p class=\"title\" style=\"text-align: left;\"><span class=\"desc\" style=\"font-size: 95%;\">Khách hàng sử dụng các dịch vụ của Kiến trúc Trịnh Gia từ lần 2 sẽ được giảm 10% chi phí thiết kế.</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"287\" img_width=\"50\" pos=\"left\"]\n\n<h4 class=\"title\" style=\"text-align: left;\">Miễn phí hồ sơ cấp phép</h4>\n<p class=\"title\" style=\"text-align: left;\"><span class=\"desc\" style=\"font-size: 95%;\">Khách hàng thuê thiết kế được miễn phí làm hồ sơ xin cấp phép xây dựng cho ngôi nhà của mình.</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"289\" img_width=\"50\" pos=\"left\"]\n\n<h4 class=\"title\" style=\"text-align: left;\">Tư vẫn hỗ trợ 24/7</h4>\n<p class=\"title\" style=\"text-align: left;\"><span class=\"desc\" style=\"font-size: 95%;\">Khách hàng sử dụng dịch vụ của Kiến trúc Trịnh Gia sẽ được hỗ trợ và giải đáp thắc mắc 24/7.</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Dịch vụ của chúng tôi\" class=\"dich-vu-cua-chung-toi\" bg=\"55\" bg_size=\"original\" bg_overlay=\"rgba(255, 255, 255, 0.91)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Dịch vụ của chúng tôi\" color=\"rgb(207, 21, 21)\"]\n\n[gap height=\"20px\"]\n\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"209\" image_size=\"original\" height=\"60%\"]\n\n<h4><span style=\"color: #d83131; font-size: 105%;\">Thiết kế nội thất</span></h4>\n<p><span style=\"font-size: 90%;\">Dịch vụ thiết kế nội thất sáng tạo và độc đáo, giúp khách hàng lựa chọn được sản phẩm đúng sở thích và đúng phong thủy.</span></p>\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"201\" image_size=\"original\" height=\"60%\"]\n\n<h4><span style=\"color: #d83131; font-size: 105%;\">Thi công nội thất</span></h4>\n<p><span style=\"font-size: 90%;\">Dịch vụ thi công nội thất nhanh chóng, gọn gàng và đúng tiến độ. Đảm bảo cho quý khách những sản phẩm đẹp nhất và đúng ý nhaát.</span></p>\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"78\" image_size=\"original\" height=\"60%\"]\n\n<h4><span style=\"color: #d83131; font-size: 105%;\">Xây sửa - cải tạo</span></h4>\n<p><span style=\"font-size: 90%;\">Bạn cần sửa sang lại nhà cửa, hãy gọi chúng tôi. Chi phí rẻ, nhân công tay nghề cao và tâm huyết sẽ đáp ứng tốt nhiệm vụ được giao.</span></p>\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"211\" image_size=\"original\" height=\"60%\"]\n\n<h4><span style=\"color: #d83131; font-size: 105%;\">Tư vấn phong thủy</span></h4>\n<p><span style=\"font-size: 90%;\">Không phải ai cũng hiểu và nói đúng về phong thủy. Chúng tôi cung cấp dịch vụ tư vấn phong thủy chính xác nhất và an toàn nhất.</span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Liên hệ tư vấn\" class=\"lien-he-tu-van-section\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[contact-form-7 id=\"452\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot2\"]\n\n[ux_image id=\"211\" image_size=\"original\" height=\"60%\"]\n\n<p><span style=\"font-size: 90%;\"><strong>+ Phone:</strong> 0972.939.830</span><br />\n<span style=\"font-size: 90%;\"><strong>+ Email:</strong> demo@gmail.com</span><br />\n<span style=\"font-size: 90%;\"><strong>+ Website:</strong> www.webdesign.com</span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Dịch vụ của chúng tôi","","publish","closed","closed","","dich-vu-cua-chung-toi","","","2018-08-15 15:54:03","2018-08-15 08:54:03","","0","https://bizhostvn.com/w/noithat5/?page_id=673","0","page","","0"),
("681","1","2018-08-15 15:31:27","2018-08-15 08:31:27","","icon-intro1","","inherit","open","closed","","icon-intro1","","","2018-08-15 15:31:27","2018-08-15 08:31:27","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/08/icon-intro1.png","0","attachment","image/png","0"),
("721","1","2018-08-15 15:46:29","2018-08-15 08:46:29","[ux_image id=\"55\" image_size=\"original\" height=\"11%\"]\n\n[section label=\"Ưu đãi\" class=\"uu-dai\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Giới thiệu chung\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" link=\"/gioi-thieu\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Hồ sơ năng lực\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/ho-so-nang-luc/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Dịch vụ của chúng tôi\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/dich-vu-cua-chung-toi/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[button text=\"Bảng giá dịch vụ\" letter_case=\"lowercase\" color=\"secondary\" style=\"outline\" radius=\"4\" expand=\"true\" link=\"/bang-gia/\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<p style=\"text-align: center;\">Rất nhiều công trình trên mọi tỉnh thành ở đất nước Việt Nam được chúng tôi thiết kế và thi công luôn nhận được sự tin tưởng, hài lòng của khách hàng. Từ những mẫu biệt thự pháp đẹp cổ kính nguy nga, hay những mẫu thiết kế lâu đài xa hoa lộng lẫy cho đến các bản vẽ thiết kế nhà lô phố hiện đại vẻ đẹp tinh tế, nhẹ nhàng.</p>\n<p style=\"text-align: center;\">Đó cũng là những yếu tố quan trọng và cần thiết nhất khích lệ, động viên anh em kiến trúc trưởng thành và cố gắng hơn trong nghề. Sau đây chúng tôi xin gửi tới khách hàng bảng báo giá thiết kế nhà ở dưới đây.</p>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Liên hệ tư vấn\" class=\"lien-he-tu-van-section\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[contact-form-7 id=\"452\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot2\"]\n\n[ux_image id=\"211\" image_size=\"original\" height=\"60%\"]\n\n<p><span style=\"font-size: 90%;\"><strong>+ Phone:</strong> 0972.939.830</span><br />\n<span style=\"font-size: 90%;\"><strong>+ Email:</strong> demo@gmail.com</span><br />\n<span style=\"font-size: 90%;\"><strong>+ Website:</strong> www.webdesign.com</span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Bảng giá","","publish","closed","closed","","bang-gia","","","2018-08-15 15:52:45","2018-08-15 08:52:45","","0","https://bizhostvn.com/w/noithat5/?page_id=721","0","page","","0"),
("761","1","2018-10-23 12:34:36","2018-10-23 05:34:36","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2018-10-23 12:34:36","2018-10-23 05:34:36","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/10/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("763","1","2018-10-23 12:35:19","2018-10-23 05:35:19","","favi","","inherit","open","closed","","favi","","","2018-10-23 12:35:19","2018-10-23 05:35:19","","0","https://bizhostvn.com/w/noithat5/wp-content/uploads/2018/10/favi.png","0","attachment","image/png","0"),
("765","1","2018-10-23 12:39:52","2018-10-23 05:39:52","[section label=\"Footer\" class=\"footer-section\" bg=\"50\" bg_size=\"original\" bg_color=\"rgb(171, 0, 0)\" bg_overlay=\"rgba(0, 0, 0, 0.75)\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Về chúng tôi\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"340\" img_width=\"197\"]\n\n<p><span style=\"color: #e8e8e8;\">Công ty CP Kiến trúc và xây dựng webdesign chuyên tư vấn, thiết kế, thi công các công trình kiến trúc dân dụng với giá rẻ uy tín hàng đầu như: biệt thự đẹp, nhà phố đẹp, lâu đài, dinh thự đẹp. Và các mẫu nội thất nhà ở, nội thất chung cư, quán bar cafe, khách sạn …</span></p>\n<p><span style=\"color: #e3e3e3;\">+ Hotline 24/7: 0909009009</span><br /><span style=\"color: #e3e3e3;\">+ Email: demo@gmail.com</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Gọi tư vấn\" letter_case=\"lowercase\" size=\"small\" radius=\"99\" expand=\"true\"]\n\n\n[/col_inner]\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Xin báo giá\" letter_case=\"lowercase\" color=\"secondary\" size=\"small\" radius=\"99\" expand=\"true\" link=\"#\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n<p><span style=\"color: #e6e6e6;\"><span style=\"color: #ffffff;\">+ Địa chỉ:</span> Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội.</span></p>\n<p><span style=\"color: #ffffff;\">+ Điện thoại:<span style=\"color: #ebebeb;\"> 0909009009 - 0909009009</span></span></p>\n<p><span style=\"color: #ebebeb;\"><span style=\"color: #ffffff;\">+ Email:</span> demo@gmail.com</span></p>\n<p><span style=\"color: #ffffff;\">+ Website:</span> <a href=\"https://webdesign.com\">www.webdesign.com</a> | <a href=\"http://webdesign.com\">www.webdesign.com</a></p>\n<p><span style=\"color: #c0c0c0;\"><a href=\"#\">Thiết kế nội thất</a> | <a href=\"#\">Thi công nội thất</a> | <a href=\"#\">Cải tạo sửa chữa</a> | <a href=\"#\">Kinh nghiệm sửa nhà</a> | <a href=\"#\">Bài viết - hướng dẫn</a> | <a href=\"#\">Videos</a> | <a href=\"#\">Liên hệ</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"359\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">Fanpage Facebook</span><br /></span><span style=\"color: #e6e6e6;\">www.fb.com/FacebookforDevelopers/</span></p>\n\n[/featured_box]\n[gap height=\"10px\"]\n\n[featured_box img=\"366\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">webdesign Chanel</span><br /></span><span style=\"color: #ededed;\">www.youtube.com/FacebookforDevelopers/</span></p>\n\n[/featured_box]\n[gap height=\"20px\"]\n\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" phone=\"#\" googleplus=\"#\"]\n\n[gap height=\"12px\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 75%;\">Thiết kế &amp; duy trì bởi <a href=\"https://webdesign.com\">webdesign</a> | <a href=\"http://webdesign.com\">webdesign.com</a></span></p>\n[ux_image id=\"345\" image_size=\"original\" width=\"31\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","334-revision-v1","","","2018-10-23 12:39:52","2018-10-23 05:39:52","","334","https://bizhostvn.com/w/noithat5/334-revision-v1/","0","revision","","0"),
("766","1","2018-10-23 12:40:14","2018-10-23 05:40:14","[section label=\"Footer\" class=\"footer-section\" bg=\"50\" bg_size=\"original\" bg_color=\"rgb(171, 0, 0)\" bg_overlay=\"rgba(0, 0, 0, 0.75)\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Về chúng tôi\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"340\" img_width=\"197\"]\n\n<p><span style=\"color: #e8e8e8;\">Công ty CP Kiến trúc và xây dựng webdesign chuyên tư vấn, thiết kế, thi công các công trình kiến trúc dân dụng với giá rẻ uy tín hàng đầu như: biệt thự đẹp, nhà phố đẹp, lâu đài, dinh thự đẹp. Và các mẫu nội thất nhà ở, nội thất chung cư, quán bar cafe, khách sạn …</span></p>\n<p><span style=\"color: #e3e3e3;\">+ Hotline 24/7: 0909009009</span><br /><span style=\"color: #e3e3e3;\">+ Email: demo@gmail.com</span></p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Gọi tư vấn\" letter_case=\"lowercase\" size=\"small\" radius=\"99\" expand=\"true\"]\n\n\n[/col_inner]\n[col_inner span=\"5\" span__sm=\"12\"]\n\n[button text=\"Xin báo giá\" letter_case=\"lowercase\" color=\"secondary\" size=\"small\" radius=\"99\" expand=\"true\" link=\"#\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n<p><span style=\"color: #e6e6e6;\"><span style=\"color: #ffffff;\">+ Địa chỉ:</span> Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội.</span></p>\n<p><span style=\"color: #ffffff;\">+ Điện thoại:<span style=\"color: #ebebeb;\"> 0909009009 - 0909009009</span></span></p>\n<p><span style=\"color: #ebebeb;\"><span style=\"color: #ffffff;\">+ Email:</span> demo@gmail.com</span></p>\n<p><span style=\"color: #ffffff;\">+ Website:</span> <a href=\"https://webdesign.com\">www.webdesign.com</a> | <a href=\"http://webdesign.com\">www.webdesign.com</a></p>\n<p><span style=\"color: #c0c0c0;\"><a href=\"#\">Thiết kế nội thất</a> | <a href=\"#\">Thi công nội thất</a> | <a href=\"#\">Cải tạo sửa chữa</a> | <a href=\"#\">Kinh nghiệm sửa nhà</a> | <a href=\"#\">Bài viết - hướng dẫn</a> | <a href=\"#\">Videos</a> | <a href=\"#\">Liên hệ</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Thông tin liên hệ\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"15px\"]\n\n[featured_box img=\"359\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">Fanpage Facebook</span><br /></span><span style=\"color: #e6e6e6;\">www.fb.com//</span></p>\n\n[/featured_box]\n[gap height=\"10px\"]\n\n[featured_box img=\"366\" img_width=\"54\" pos=\"left\"]\n\n[gap height=\"10px\"]\n\n<p><span style=\"font-size: 100%;\"><span style=\"color: #ff9900; font-size: 115%;\">webdesign Chanel</span><br /></span><span style=\"color: #ededed;\">www.youtube.com/</span></p>\n\n[/featured_box]\n[gap height=\"20px\"]\n\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" phone=\"#\" googleplus=\"#\"]\n\n[gap height=\"12px\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 75%;\">Thiết kế &amp; duy trì bởi <a href=\"https://webdesign.com\">webdesign</a> | <a href=\"http://webdesign.com\">webdesign.com</a></span></p>\n[ux_image id=\"345\" image_size=\"original\" width=\"31\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","inherit","closed","closed","","334-revision-v1","","","2018-10-23 12:40:14","2018-10-23 05:40:14","","334","https://bizhostvn.com/w/noithat5/334-revision-v1/","0","revision","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("1","4","0"),
("1","5","0"),
("1","6","0"),
("1","8","0"),
("77","1","0"),
("77","4","0"),
("77","5","0"),
("77","6","0"),
("77","8","0"),
("91","1","0"),
("91","4","0"),
("91","5","0"),
("91","6","0"),
("91","8","0"),
("99","3","0"),
("100","3","0"),
("101","3","0"),
("102","3","0"),
("104","3","0"),
("105","2","0"),
("106","2","0"),
("107","2","0"),
("108","2","0"),
("133","1","0"),
("133","4","0"),
("133","5","0"),
("133","6","0"),
("133","8","0"),
("200","1","0"),
("200","4","0"),
("200","5","0"),
("200","6","0"),
("200","8","0"),
("208","1","0"),
("208","4","0"),
("208","5","0"),
("208","6","0"),
("208","8","0");




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
("1","1","category","Công ty TNHH Xây Dựng và Nội Thất webdesign là công ty không chỉ Thiết Kế – Thi công nội thất uy tín mà còn là đơn vị cung ứng vật tư, thiết bị nội thất chuyên nghiệp. Công ty TNHH Xây Dựng và Nội Thất webdesign tự tin là sự lựa chọn số 1 cho Quý khách hàng khi có nhu cầu về thiết kế và thi công nội thất. Mỗi bước trong một dự án, chúng tôi đều có những thế mạnh riêng, khác biệt so với các công ty cùng lĩnh vực..
("2","2","nav_menu","","0","4"),
("3","3","nav_menu","","0","5"),
("4","4","category","","0","6"),
("5","5","category","","0","6"),
("6","6","category","","0","6"),
("7","7","category","","0","0"),
("8","8","category","","0","6");




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
("1","Thiết kế nội thất","thiet-ke-noi-that","0"),
("2","Topbar menu","topbar-menu","0"),
("3","Main-menu","main-menu","0"),
("4","Thi công nội thất","thi-cong-noi-that","0"),
("5","Cải tạo sửa chữa","cai-tao-sua-chua","0"),
("6","Kiến thức","kien-thuc","0"),
("7","Video","video","0"),
("8","Tin tức","tin-tuc","0");




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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:4:{s:64:\"7e6a11d3a201f101501c0e4101ead8292a0bad810b4836578955ea5fddb748c6\";a:4:{s:10:\"expiration\";i:1558150876;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978076;}s:64:\"0b8e9498ab5fd1965437a305ed1f8ac842d18eaa5793fa4c360eda4f01a8bba5\";a:4:{s:10:\"expiration\";i:1558151072;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978272;}s:64:\"21b2d01097a1485c1a80dcd770b09203c62bef876e93fb41c0916122afc5265a\";a:4:{s:10:\"expiration\";i:1558151233;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978433;}s:64:\"e2bf0328ef7656263da6908c5f7ffe87304d50e40664ab511c6603679bbbf551\";a:4:{s:10:\"expiration\";i:1558169530;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557996730;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","759"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("22","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("23","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=left&advImgDetails=show"),
("24","1","bz_user-settings-time","1557978076"),
("25","1","nav_menu_recently_edited","2"),
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
("1","admin","$P$B/UcluhQIArGkQMYjfxzGHgtHcYr1p.","admin","demobz@gmail.com","","2018-08-14 07:51:43","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;