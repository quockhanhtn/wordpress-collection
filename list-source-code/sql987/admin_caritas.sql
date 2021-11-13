SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w41`
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






CREATE TABLE `bz_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/caritas\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1555133939,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960273,\"initial_activation_timestamp\":1555133950,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025862,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=597 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/caritas","yes"),
("2","home","https://bizhostvn.com/w/caritas","yes"),
("3","blogname","caritas","yes"),
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
("33","active_plugins","a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("40","template","flatsome","yes"),
("41","stylesheet","caritas","yes"),
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
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
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
("92","show_comments_cookies_opt_in","1","yes"),
("93","initial_db_version","44719","yes"),
("94","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:13:\"media_image-2\";i:1;s:13:\"media_image-3\";i:2;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:3:{i:2;a:15:{s:13:\"attachment_id\";i:174;s:3:\"url\";s:98:\"https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/banner-quỹ-khuyến-học-300x161.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:400;s:6:\"height\";i:214;s:7:\"caption\";s:66:\"Đóng góp ủng hộ quỹ khuyến học - Caritas Phát Diệm\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:340;s:3:\"url\";s:86:\"https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/1545403758_icon_donggop.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:280;s:6:\"height\";i:80;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:9:\"/lien-he/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:8:{i:1558054059;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558058657;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083116;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558086459;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558086467;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558086469;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558102881;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("125","can_compress_scripts","0","no"),
("140","new_admin_email","webdemo@gmail.com","yes"),
("145","theme_mods_flatsome","a:24:{s:17:\"flatsome_fallback\";i:1;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Fri, 12 Apr 2019 09:48:20 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555062516;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("146","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:25:\"Có thể bạn quan tâm\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("147","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("150","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555062499;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("151","current_theme","Caritas","yes"),
("152","theme_switched","","yes"),
("154","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("155","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("156","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("157","flatsome_wup_buyer","trannguyen886","yes"),
("158","allowedthemes","a:1:{s:7:\"caritas\";b:1;}","no"),
("159","fl_has_child_theme","caritas","yes"),
("161","theme_mods_caritas","a:125:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"nav-top\";}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:0:{}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:12;s:7:\"primary\";i:13;s:14:\"primary_mobile\";i:13;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Fri, 12 Apr 2019 09:48:39 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:8906:\".framed{    margin: 15px auto 10px auto; webkit-box-shadow: 0px 28px 85px 5px #ccc;\n    box-shadow: 0px 28px 85px 5px #ccc;}\n#top-bar{    background: url(/wp-content/uploads/2019/04/topnav.png);\n    background-repeat-x: inherit;\n    border-top-left-radius: 10px;\n    border-top-right-radius: 10px;\n    height: 23px;\n}\n.widget img{border-radius:6px}\n.wp-caption{margin-bottom:0}\n.widget_media_image{margin-bottom:15px}\n.box-blog-post .is-divider, .widget .wp-caption .wp-caption-text, .widget .is-divider{display:none}\nspan.widget-title{display: block;\n    margin: 10px 0;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 18px;\n    color: #d40003;}\n.recent-blog-posts a:hover{color:#c40004} .recent-blog-posts a {\n    font-weight: bold;\n    font-size: 14px;\n    color: #3e3e3e;\n    line-height: 18px;\n}.mr-half {\n    margin-right: 10px;\n}\n\n.footer-section{    box-shadow: 0px -5px 5px #0000000d;}\n.blog-single .blog-share .button.is-outline{border:none !important}\n.blog-single .blog-share{text-align:left}\n.entry-content {\n    padding-top: 0;\n    padding-bottom: 0;\n}\n.is-divider{display:none}\n.blog-single h1.entry-title{  font-size: 22px;\n    color: #c00004;}\n.recent-blog-posts-li .badge .badge-inner{border-radius:99%}\n.big-post .post-item .post-title{font-size:19px; color:#d70000; margin-bottom:5px}\n#wrapper, .header-bg-color,body.framed{ border-radius:15px}\n.row-large>.col{padding:0 15px 15px}\n.header-main {background:url(/wp-content/uploads/2019/04/bg-header.jpg); margin-left:15px;margin-right:15px;margin-top:15px; border-top-left-radius:10px; border-top-right-radius:10px}\n.header-bg-color, .header-wrapper{    border-top-left-radius: 10px;\n    border-top-right-radius: 10px;}\n.header-bottom{background-image: linear-gradient(#e80000, #bb0005);\n    margin-left: 15px;\n    margin-right: 15px;}.full-width .ubermenu-nav, .container, .row {\n    max-width: 1090px;\n}\n.header-bottom .nav li{margin:0\n}\n.header-bottom .nav li a:hover {\n    background: white;\n    color: black;\n    border-top-left-radius: 8px;\n    border-top-right-radius: 8px;\n}\n.header-bottom .nav li a {margin-top:2px;\n    padding-left: 15px;\n    padding-right: 15px;\n    font-size: 14px;\n    text-transform: none;\n    padding: 6px 15px;\n    color: white;\n    border-right: 1px solid #e20000;\n    border-left: 1px solid #c20004;\n}\n.header-bottom .container{padding-left:0; padding-right:0}\n.header-bottom .nav li a:hover{background:white; color:black}\n#top-bar .nav li a{padding:0;line-height: 24px;}\n#top-bar .nav li a:hover{text-decoration:underline}\n.nav-dropdown{padding:0; border: 1px solid #d6d6d6; border-radius:10px}\n.nav-dropdown>li>a{margin:0 !important; border-radius:0 !important; color:black !important; font-weight:bold; border-left:none !important; border-right:none !important;    margin: 0;\n    border-bottom: 1px dashed #e6e6e6;}\n.nav-dropdown>li>a:hover{background:#f3f3f3 !important; color:red !important}\n.big-post .post-item .box-text{padding-bottom:0}\n.big-post .flickity-button{display:none}\n.vertical-list-post .post-item .box-text{padding:0; padding-left:10px}\n.vertical-list-post .post-item .post-title{font-size:14px; color:black}\n.vertical-list-post .post-item{padding:0; padding-bottom:15px}\n.vertical-list-post .post-item .post-title:hover{color:#dc0000}\n.post-row .cot4 img{border-radius:10px}\n.post-row .cot8, .post-row .cot4, .post-row .cot8 .cot7, .post-row .cot8 .cot5 {padding-bottom:0}\n.row-video-post .flickity-slider .post-item, .video-post-section .large-12{padding-bottom:0 !important}\n.post-row .cot4{flex-basis:30%; max-width:30%}\n.post-row .cot8{flex-basis:70%; max-width:70%}\n.du-an-noi-bat{background: #f3f3f3;\n    padding: 10px;\n    border-radius: 10px;\n    font-size: 14px;}\n.du-an-noi-bat h2{font-size: 18px;\n    color:#d70000;}\n.du-an-noi-bat ul li a:hover{text-decoration:underline}\n.du-an-noi-bat ul li a{    color: black;  \n}\n.du-an-noi-bat ul{margin-bottom:0}\n.row-video-post .post-item .box-text{padding-bottom:0}\n.row-video-post .post-item .post-title{color:black}\n.row-video-post .post-item .box-text .post-title:hover{color:#8a0004}\n.row-video-post .flickity-button{top: 60%;\n}\n.row-video-post{margin:0 !important}\n.row-video-post .flickity-prev-next-button svg {\n    position: absolute;\n    background: white;\n	box-shadow: 2px 2px 10px #0000002b; border-radius:99%}\n.row-video-post .overlay-icon{height: 35px;width:35px; line-height:10px}\n.row-video-post .post-item .box-image{border-radius:7px}\n.box-post .post-item .box-text{\n    padding: 10px;\n    background-image: linear-gradient(transparent, black); background-color:none}\n.tin-giao-phan .post-item{padding-bottom:14px}\n.box-post .post-item .post-title{font-size:16px}\n.hinh-anh-section .large-12{padding-bottom:5px}\n.footer-section ul{margin-bottom:0}\n.footer-section ul li{    margin-bottom: 0;\n    list-style: none;\n    font-size: 14px;\n    margin-left: 0;}\n.footer-section{padding-top:10px; padding-bottom:10px}\n.absolute-footer {\n    background-color: #ffffff;\n    border-bottom-left-radius: 15px;\n    border-bottom-right-radius: 15px;\n    border-top: 1px solid #eaeaea;\n}\n.blog-single .entry-meta a{color:#0a85d0}\na.back-to-top{background: red;\n    border: 0 !important;\n    color: white;}\n.blog-single .entry-meta{    text-transform: none;\n    letter-spacing: 0;\n    font-size: 14px;\n    color: gray;}\n.duong-dan{display:flex; margin-bottom:20px}\n.footer-section h3{    margin-bottom: 0;}\n.tin-giao-phan .post-item .box-image img{border-radius:0}\n.duong-dan .container{ height:35px; margin: 0 15px;\n    background: gray;\n    display: inline-block;\n    clear: both;\n    background-image: linear-gradient(to right, #f2f2f2 , white);\n    max-width: 1070px;\n}.page-wrapper {\n    padding-top: 0;\n    padding-bottom: 0;\n}\n.duong-dan .left{width:70%; display:inline-block; float:left}\n.blog-archive .post-item .box-text{padding: 0;\n    padding-left: 15px;\n}\n.blog-archive .large-9 .badge{display:none}\nbutton.xem-them{    margin: 0;\n    padding: 0;\n    text-transform: none;\n    color: #c60004;\n    text-decoration: underline; font-weight:normal}\n.blog-archive .post-item:first-child .box-image{width:50% !important}\n.duong-dan .right{width: 30%;\n    display: inline-block;\n    float: right;\n    text-align: right;\n    line-height: 36px;\n    font-weight: bold;\n    color: #d00003;}\n.duong-dan .right .entry-category a{color:#bf0004}\n.duong-dan .right .entry-category{color:#bf0004;    line-height: 33px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 15px;\n    text-align: right;}\n#breadcrumbs a{color:#0a85d0}\n#breadcrumbs{    margin-bottom: 0;\n    line-height: 34px;\n    font-size: 13px;\n    color: gray;}\n.blog-single .large-9:before, .blog-archive .large-9:before, .page-right-sidebar .large-9:before{background: url(/wp-content/uploads/2019/04/grd-border.png) top right repeat-y;\n    content: \'\';\n    position: absolute;\n    top: 0;\n    right: -20px;\n    width: 20px;\n    height: 100%;\n    z-index: 3;\n}\n.blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{flex-basis:73%; max-width:73%;}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{flex-basis:27%; max-width:27%;}\n.blog-archive .post-item:first-child .post-title{font-size:22px; color:#b30004; margin-bottom:10px}\n.blog-archive .post-item:nth-child(2), .blog-archive .post-item:nth-child(3), .blog-archive .post-item:nth-child(4){flex-basis:33.33%; max-width:33.33%}\n.blog-archive .post-item:nth-child(2) .box-image, .blog-archive .post-item:nth-child(3) .box-image, .blog-archive .post-item:nth-child(4) .box-image{width: 100% !important;\n    display: table-row;}\n.blog-archive .post-item:nth-child(2) .box-text, .blog-archive .post-item:nth-child(3) .box-text, .blog-archive .post-item:nth-child(4) .box-text{padding:0; padding-top:5px}\n.blog-archive .post-item:nth-child(2) .box-text .post-title, .blog-archive .post-item:nth-child(3) .box-text .post-title, .blog-archive .post-item:nth-child(4) .box-text .post-title{padding-bottom:7px; font-size:16px; }\n.page-right-sidebar .large-9{padding-right:20px}\n.page-right-sidebar .large-3{padding-left:15px}\n.home .xem-them{display:none}\n.blog-archive .post-item:nth-child(2) .box-text .from_the_blog_excerpt , .blog-archive .post-item:nth-child(3) .box-text .from_the_blog_excerpt , .blog-archive .post-item:nth-child(4) .box-text .from_the_blog_excerpt {height:45px; overflow:hidden}\n.blog-archive .post-item .post-title{font-size:18px}\n.page-right-sidebar .row{max-width:1100px}\n\n.page-right-sidebar ul{margin-bottom:0; margin-left:0}\n.page-right-sidebar ul li{margin-bottom:5px; margin-left:18px}\n.duong-dan .entry-title{text-transform: none;\n    letter-spacing: 0;\n    font-size: 18px;\n    line-height: 24px;}\n.blog-archive .post-item:nth-child(2) .lg-y50, .blog-archive .post-item:nth-child(3) .lg-y50, .blog-archive .post-item:nth-child(4) .lg-y50{top:68px}\n.blog-single .article-inner .entry-category{display:none}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1895:\"#top-bar, .blog-archive .post-sidebar, .page-right-sidebar .large-3, .blog-single .post-sidebar{display:none}\n.header-main{background:none}\n.header-wrapper{    box-shadow: 0px 4px 9px #dadada;}\n.header-search-form{padding:5px !important}\n.post-row .cot8, .post-row .cot4, .blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9, .blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{flex-basis:100%; max-width:100%}\n.framed{margin:0 !important}\n.off-canvas .sidebar-menu {\n    padding: 0;\n}\n.off-canvas .nav-vertical>li>a {\n    padding-top: 8px;\n    padding-bottom: 8px;\n	padding-left:10px !important;\n}\n.off-canvas:not(.off-canvas-center) .nav-vertical li>a {\n    padding-left: 20px;\n    text-transform: none;\n    font-size: 17px;\n    color: black;\n}\n.off-canvas:not(.off-canvas-center) .nav-vertical li .children{    margin-bottom: 0;\n    padding-bottom: 0;\n    background: #cacaca;}\n.big-post{margin-bottom:15px !important}\n.vertical-list-post .post-item{flex-basis:50%; max-width:50%; padding: 5px;}\n.row-large>.col {\n    padding: 0 10px 10px;\n}\n.vertical-list-post .post-item .box-text{padding: 0;\n    padding-top: 5px;}\n.absolute-footer{font-size:12px}\n.duong-dan .container{height:50px; margin:0; padding: 0 10px}\n.duong-dan .left, .duong-dan .right{width:100%; }\n#breadcrumbs{line-height:18px;     padding-top: 7px;}\n.duong-dan .right{display:none}\n.blog-archive .post-item .box-text{padding:0; padding-top:5px}\n.blog-archive .post-item:first-child .box-image{width:100% !important}\n.blog-archive .post-item:nth-child(2) .box-image, .blog-archive .post-item:nth-child(3) .box-image, .blog-archive .post-item:nth-child(4) .box-image{display:block}\n.blog-archive .post-item:nth-child(2) .box-text .post-title, .blog-archive .post-item:nth-child(3) .box-text .post-title, .blog-archive .post-item:nth-child(4) .box-text .post-title{font-size:14px}\n\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:11:\"body_layout\";s:6:\"framed\";s:10:\"site_width\";s:4:\"1100\";s:7:\"body_bg\";s:7:\"#ffffff\";s:17:\"header_top_height\";s:2:\"22\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:0:\"\";s:16:\"site_width_boxed\";s:4:\"1100\";s:13:\"header_height\";s:3:\"140\";s:13:\"header_bg_img\";s:0:\"\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"105\";s:11:\"topbar_show\";b:1;s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:12:\"header_color\";s:5:\"light\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"30\";s:15:\"nav_position_bg\";s:7:\"#424242\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:9:\"site_logo\";s:75:\"https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/logo-caritas.png\";s:12:\"logo_padding\";s:1:\"5\";s:13:\"disable_fonts\";b:1;s:20:\"header_height_sticky\";s:2:\"30\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:1:\"3\";s:13:\"header_sticky\";b:0;s:14:\"dropdown_arrow\";b:0;s:17:\"dropdown_nav_size\";s:2:\"95\";s:14:\"dropdown_style\";s:6:\"simple\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:15:\"color_secondary\";s:7:\"#85ce25\";s:11:\"color_texts\";s:7:\"#232323\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:12:\"footer_block\";s:14:\"footer-section\";s:19:\"footer_bottom_align\";s:6:\"center\";s:19:\"footer_bottom_color\";s:7:\"#efefef\";s:16:\"footer_left_text\";s:81:\"Copyright [ux_current_year] © Bản quyền thuộc về Caritas Phát Diệm. \n\";s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:18:\"blog_archive_title\";b:0;s:23:\"blog_single_header_meta\";b:1;s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:1;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:14:\"header_divider\";b:0;}","yes"),
("163","envato_setup_complete","1555062523","yes"),
("173","recently_activated","a:4:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027621;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557027617;s:30:\"db-prefix-change/db_prefix.php\";i:1557026678;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025871;}","yes"),
("189","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("200","category_children","a:1:{i:2;a:8:{i:0;i:3;i:1;i:4;i:2;i:5;i:3;i:6;i:4;i:7;i:5;i:8;i:6;i:9;i:7;i:10;}}","yes"),
("217","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1555078880;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("218","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:43:\"%%term_title%%%%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("219","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("221","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("227","wpseo_current_version","16","no"),
("228","wpseo_premium_version","8.4","yes"),
("231","wpseo_tracking_last_request","1556963517","yes"),
("238","wpseo_sitemap_cache_validator_global","nNX3","no"),
("241","rewrite_rules","a:125:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:63:\"(hoat-dong/bac-ai-di-dan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(hoat-dong/bac-ai-di-dan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(hoat-dong/bac-ai-di-dan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(hoat-dong/bao-ve-moi-truong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(hoat-dong/bao-ve-moi-truong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"(hoat-dong/bao-ve-moi-truong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(hoat-dong/bao-ve-su-song)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(hoat-dong/bao-ve-su-song)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(hoat-dong/bao-ve-su-song)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(hoat-dong/chia-se)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(hoat-dong/chia-se)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(hoat-dong/chia-se)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(hoat-dong/cuu-tro)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(hoat-dong/cuu-tro)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(hoat-dong/cuu-tro)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(hoat-dong/dao-tao)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(hoat-dong/dao-tao)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(hoat-dong/dao-tao)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"(hinh-anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(hinh-anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(hinh-anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(hoat-dong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"(hoat-dong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:14:\"(hoat-dong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:60:\"(hoat-dong/khuyen-hoc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"(hoat-dong/khuyen-hoc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(hoat-dong/khuyen-hoc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:60:\"(hoat-dong/khuyet-tat)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:43:\"(hoat-dong/khuyet-tat)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(hoat-dong/khuyet-tat)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(tieu-diem)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"(tieu-diem)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:14:\"(tieu-diem)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:45:\"(video)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(video)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(video)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("242","wpseo_sitemap_1_cache_validator","3lkgF","no"),
("243","wpseo_sitemap_customize_changeset_cache_validator","5eA57","no"),
("249","wpseo_sitemap_post_cache_validator","3lkgP","no"),
("250","wpseo_sitemap_category_cache_validator","5gip5","no"),
("252","wpseo_sitemap_attachment_cache_validator","2tDpa","no"),
("254","wpseo_sitemap_nav_menu_item_cache_validator","54vFq","no"),
("261","wpseo_sitemap_page_cache_validator","5gioZ","no"),
("271","wpseo_license_server_version","2","yes"),
("359","ai1wm_updater","a:0:{}","yes"),
("387","duplicator_pro_package_active","{\"Created\":\"2019-04-13 05:39:40\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190413_mauwebsitecaritasthietkewe\",\"Hash\":\"b3654c27fa34c4014655_20190413053940\",\"NameHash\":\"20190413_mauwebsitecaritasthietkewe_b3654c27fa34c4014655_20190413053940\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/caritas\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190413_mauwebsitecaritasthietkewe_b3654c27fa34c4014655_20190413053940_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\",\"Size\":98388147,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"banner-caritas-ph\\u00e1t-di\\u1ec7m-1024x133.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-caritas-ph\\u00e1t-di\\u1ec7m-1024x133.jpg\"},{\"name\":\"banner-caritas-ph\\u00e1t-di\\u1ec7m-150x142.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-caritas-ph\\u00e1t-di\\u1ec7m-150x142.jpg\"},{\"name\":\"banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc-300x161.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc-300x161.jpg\"},{\"name\":\"banner-caritas-ph\\u00e1t-di\\u1ec7m-300x39.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-caritas-ph\\u00e1t-di\\u1ec7m-300x39.jpg\"},{\"name\":\"banner-caritas-ph\\u00e1t-di\\u1ec7m-768x99.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-caritas-ph\\u00e1t-di\\u1ec7m-768x99.jpg\"},{\"name\":\"banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc-150x150.jpg\"},{\"name\":\"banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-qu\\u1ef9-khuy\\u1ebfn-h\\u1ecdc.jpg\"},{\"name\":\"banner-caritas-ph\\u00e1t-di\\u1ec7m.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-content\\/uploads\\/2019\\/04\\/banner-caritas-ph\\u00e1t-di\\u1ec7m.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/caritas\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web15\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1272,\"tablesSizeOnDisk\":4227072,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("389","_transient_timeout_wpseo_link_table_inaccessible","1588496273","no"),
("390","_transient_wpseo_link_table_inaccessible","0","no"),
("391","_transient_timeout_wpseo_meta_table_inaccessible","1588496273","no"),
("392","_transient_wpseo_meta_table_inaccessible","0","no"),
("452","dbprefix_old_dbprefix","wp_","yes"),
("453","dbprefix_new","bz_","yes"),
("502","recovery_keys","a:0:{}","yes"),
("561","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558321165","no"),
("562","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("563","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558321166","no"),
("564","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("590","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558051514;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("591","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558051512;s:7:\"checked\";a:2:{s:7:\"caritas\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("592","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558051514;s:7:\"checked\";a:2:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("594","_site_transient_timeout_theme_roots","1558053311","no"),
("595","_site_transient_theme_roots","a:2:{s:7:\"caritas\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("12","9","_wp_attached_file","2019/04/topnav.png"),
("13","9","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1;s:6:\"height\";i:23;s:4:\"file\";s:18:\"2019/04/topnav.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("14","9","_edit_lock","1555063183:1"),
("61","31","_wp_attached_file","2019/04/banner-caritas-phát-diệm.jpg"),
("62","31","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1097;s:6:\"height\";i:142;s:4:\"file\";s:39:\"2019/04/banner-caritas-phát-diệm.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"banner-caritas-phát-diệm-150x142.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"banner-caritas-phát-diệm-300x39.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"banner-caritas-phát-diệm-768x99.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"banner-caritas-phát-diệm-1024x133.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("78","39","_wp_attached_file","2019/04/banner-header.jpg"),
("79","39","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:142;s:4:\"file\";s:25:\"2019/04/banner-header.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner-header-150x142.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"banner-header-300x39.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"banner-header-768x99.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"banner-header-1024x132.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("80","39","_edit_lock","1555065340:1"),
("98","48","_wp_attached_file","2019/04/logo-caritas.png"),
("99","48","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:84;s:4:\"file\";s:24:\"2019/04/logo-caritas.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("102","50","_wp_attached_file","2019/04/bg-header.jpg"),
("103","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:142;s:4:\"file\";s:21:\"2019/04/bg-header.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-header-150x142.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-header-300x39.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bg-header-768x99.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bg-header-1024x132.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("104","50","_edit_lock","1555065647:1"),
("125","61","_edit_last","1"),
("126","61","_footer","normal"),
("127","61","_wp_page_template","page-right-sidebar.php"),
("128","61","_edit_lock","1555082830:1"),
("129","63","_edit_last","1"),
("130","63","_footer","normal"),
("131","63","_wp_page_template","page-right-sidebar.php"),
("132","63","_edit_lock","1555083189:1"),
("135","66","_menu_item_type","custom"),
("136","66","_menu_item_menu_item_parent","0"),
("137","66","_menu_item_object_id","66"),
("138","66","_menu_item_object","custom"),
("139","66","_menu_item_target",""),
("140","66","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("141","66","_menu_item_xfn",""),
("142","66","_menu_item_url","http://caritasvietnam.org/"),
("144","67","_menu_item_type","custom"),
("145","67","_menu_item_menu_item_parent","0"),
("146","67","_menu_item_object_id","67"),
("147","67","_menu_item_object","custom"),
("148","67","_menu_item_target",""),
("149","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("150","67","_menu_item_xfn",""),
("151","67","_menu_item_url","http://www.caritas-international.de"),
("153","68","_menu_item_type","custom"),
("154","68","_menu_item_menu_item_parent","0"),
("155","68","_menu_item_object_id","68"),
("156","68","_menu_item_object","custom"),
("157","68","_menu_item_target",""),
("158","68","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("159","68","_menu_item_xfn",""),
("160","68","_menu_item_url","#"),
("162","69","_menu_item_type","custom"),
("163","69","_menu_item_menu_item_parent","0"),
("164","69","_menu_item_object_id","69"),
("165","69","_menu_item_object","custom"),
("166","69","_menu_item_target",""),
("167","69","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("168","69","_menu_item_xfn",""),
("169","69","_menu_item_url","#"),
("171","70","_menu_item_type","post_type"),
("172","70","_menu_item_menu_item_parent","0"),
("173","70","_menu_item_object_id","61"),
("174","70","_menu_item_object","page"),
("175","70","_menu_item_target",""),
("176","70","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("177","70","_menu_item_xfn",""),
("178","70","_menu_item_url",""),
("180","71","_menu_item_type","post_type"),
("181","71","_menu_item_menu_item_parent","0"),
("182","71","_menu_item_object_id","63"),
("183","71","_menu_item_object","page"),
("184","71","_menu_item_target",""),
("185","71","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("186","71","_menu_item_xfn",""),
("187","71","_menu_item_url",""),
("189","72","_menu_item_type","taxonomy"),
("190","72","_menu_item_menu_item_parent","0"),
("191","72","_menu_item_object_id","11"),
("192","72","_menu_item_object","category"),
("193","72","_menu_item_target",""),
("194","72","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("195","72","_menu_item_xfn",""),
("196","72","_menu_item_url",""),
("198","73","_menu_item_type","taxonomy"),
("199","73","_menu_item_menu_item_parent","0"),
("200","73","_menu_item_object_id","2"),
("201","73","_menu_item_object","category"),
("202","73","_menu_item_target",""),
("203","73","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("204","73","_menu_item_xfn",""),
("205","73","_menu_item_url",""),
("207","74","_menu_item_type","taxonomy"),
("208","74","_menu_item_menu_item_parent","73"),
("209","74","_menu_item_object_id","9"),
("210","74","_menu_item_object","category"),
("211","74","_menu_item_target",""),
("212","74","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("213","74","_menu_item_xfn",""),
("214","74","_menu_item_url",""),
("216","75","_menu_item_type","taxonomy"),
("217","75","_menu_item_menu_item_parent","73"),
("218","75","_menu_item_object_id","7"),
("219","75","_menu_item_object","category"),
("220","75","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("221","75","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("222","75","_menu_item_xfn",""),
("223","75","_menu_item_url",""),
("225","76","_menu_item_type","taxonomy"),
("226","76","_menu_item_menu_item_parent","73"),
("227","76","_menu_item_object_id","8"),
("228","76","_menu_item_object","category"),
("229","76","_menu_item_target",""),
("230","76","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("231","76","_menu_item_xfn",""),
("232","76","_menu_item_url",""),
("234","77","_menu_item_type","taxonomy"),
("235","77","_menu_item_menu_item_parent","73"),
("236","77","_menu_item_object_id","10"),
("237","77","_menu_item_object","category"),
("238","77","_menu_item_target",""),
("239","77","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("240","77","_menu_item_xfn",""),
("241","77","_menu_item_url",""),
("243","78","_menu_item_type","taxonomy"),
("244","78","_menu_item_menu_item_parent","73"),
("245","78","_menu_item_object_id","6"),
("246","78","_menu_item_object","category"),
("247","78","_menu_item_target",""),
("248","78","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("249","78","_menu_item_xfn",""),
("250","78","_menu_item_url",""),
("252","79","_menu_item_type","taxonomy"),
("253","79","_menu_item_menu_item_parent","73"),
("254","79","_menu_item_object_id","3"),
("255","79","_menu_item_object","category"),
("256","79","_menu_item_target",""),
("257","79","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("258","79","_menu_item_xfn",""),
("259","79","_menu_item_url",""),
("261","80","_menu_item_type","taxonomy"),
("262","80","_menu_item_menu_item_parent","73"),
("263","80","_menu_item_object_id","5"),
("264","80","_menu_item_object","category"),
("265","80","_menu_item_target",""),
("266","80","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("267","80","_menu_item_xfn",""),
("268","80","_menu_item_url",""),
("270","81","_menu_item_type","taxonomy"),
("271","81","_menu_item_menu_item_parent","73"),
("272","81","_menu_item_object_id","4"),
("273","81","_menu_item_object","category"),
("274","81","_menu_item_target",""),
("275","81","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("276","81","_menu_item_xfn",""),
("277","81","_menu_item_url",""),
("279","82","_menu_item_type","taxonomy"),
("280","82","_menu_item_menu_item_parent","0"),
("281","82","_menu_item_object_id","1"),
("282","82","_menu_item_object","category"),
("283","82","_menu_item_target",""),
("284","82","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("285","82","_menu_item_xfn",""),
("286","82","_menu_item_url",""),
("288","2","_edit_lock","1555066130:1"),
("289","2","_edit_last","1"),
("290","2","_footer","normal"),
("291","84","_edit_last","1"),
("292","84","_footer","normal"),
("293","84","_wp_page_template","page-right-sidebar.php"),
("294","84","_edit_lock","1555083452:1"),
("295","86","_menu_item_type","post_type"),
("296","86","_menu_item_menu_item_parent","0"),
("297","86","_menu_item_object_id","84"),
("298","86","_menu_item_object","page"),
("299","86","_menu_item_target",""),
("300","86","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("301","86","_menu_item_xfn",""),
("302","86","_menu_item_url",""),
("304","87","_menu_item_type","post_type"),
("305","87","_menu_item_menu_item_parent","0"),
("306","87","_menu_item_object_id","2"),
("307","87","_menu_item_object","page"),
("308","87","_menu_item_target",""),
("309","87","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("310","87","_menu_item_xfn",""),
("311","87","_menu_item_url",""),
("325","94","_wp_attached_file","2019/04/cropped-logo-caritas.png"),
("326","94","_wp_attachment_context","site-icon"),
("327","94","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2019/04/cropped-logo-caritas.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-logo-caritas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-logo-caritas-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-logo-caritas-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-logo-caritas-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-logo-caritas-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-logo-caritas-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("389","125","_edit_last","1"),
("390","125","_edit_lock","1555068342:1"),
("391","126","_wp_attached_file","2019/04/post1.jpg"),
("392","126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("393","125","_thumbnail_id","126"),
("395","128","_edit_last","1"),
("396","128","_edit_lock","1555068396:1"),
("397","129","_wp_attached_file","2019/04/post2.jpg"),
("398","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("399","128","_thumbnail_id","129"),
("401","131","_edit_last","1"),
("402","131","_edit_lock","1555070742:1"),
("403","131","_oembed_0ee26a2af59cf27035728d04adc3fefb","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/_2eZ1e04vfA?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("404","131","_oembed_time_0ee26a2af59cf27035728d04adc3fefb","1555068575"),
("405","132","_wp_attached_file","2019/04/post3.jpg");
INSERT INTO bz_postmeta VALUES
("406","132","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("407","131","_thumbnail_id","132"),
("409","134","_edit_last","1"),
("410","134","_edit_lock","1555068573:1"),
("411","135","_wp_attached_file","2019/04/post4.jpg"),
("412","135","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","134","_thumbnail_id","135"),
("415","137","_edit_last","1"),
("416","137","_edit_lock","1555068663:1"),
("417","138","_wp_attached_file","2019/04/post5.jpg"),
("418","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("419","137","_thumbnail_id","138"),
("421","140","_edit_last","1"),
("422","140","_edit_lock","1555081009:1"),
("423","141","_wp_attached_file","2019/04/post6.jpg"),
("424","141","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2019/04/post6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("425","140","_thumbnail_id","141"),
("427","2","_thumbnail_id",""),
("461","174","_wp_attached_file","2019/04/banner-quỹ-khuyến-học.jpg"),
("462","174","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:214;s:4:\"file\";s:39:\"2019/04/banner-quỹ-khuyến-học.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"banner-quỹ-khuyến-học-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"banner-quỹ-khuyến-học-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("483","194","_edit_last","1"),
("484","194","_edit_lock","1555082512:1"),
("485","194","_oembed_89797674219d14750f71d917cbc2c7b6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/xuXAkIyPtF8?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("486","194","_oembed_time_89797674219d14750f71d917cbc2c7b6","1555070998"),
("487","195","_wp_attached_file","2019/04/images-1.jpg"),
("488","195","_wp_attachment_metadata","a:5:{s:5:\"width\";i:276;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2019/04/images-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("489","194","_thumbnail_id","195"),
("491","198","_edit_last","1"),
("492","198","_edit_lock","1555082500:1"),
("493","198","_oembed_4bc04243d7f83729b20eb006337c2231","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/bUWQpMwCOlg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("494","198","_oembed_time_4bc04243d7f83729b20eb006337c2231","1555072180"),
("495","199","_wp_attached_file","2019/04/doingheo.jpg"),
("496","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2019/04/doingheo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"doingheo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"doingheo-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("497","198","_thumbnail_id","199"),
("499","201","_edit_last","1"),
("500","201","_edit_lock","1555082487:1"),
("501","201","_oembed_6370a198cffdde4c718420104b5ae810","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/7xxIJqUw6W4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("502","201","_oembed_time_6370a198cffdde4c718420104b5ae810","1555072210"),
("503","202","_wp_attached_file","2019/04/video2.jpg"),
("504","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:284;s:4:\"file\";s:18:\"2019/04/video2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"video2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"video2-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("505","201","_thumbnail_id","202"),
("507","204","_edit_last","1"),
("508","204","_edit_lock","1555082469:1"),
("509","204","_oembed_55be7f86af0cfc40e62a47bbe1822728","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/aaEdYSaK7tc?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("510","204","_oembed_time_55be7f86af0cfc40e62a47bbe1822728","1555072271"),
("511","205","_wp_attached_file","2019/04/video3.jpg"),
("512","205","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:284;s:4:\"file\";s:18:\"2019/04/video3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"video3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"video3-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("513","204","_thumbnail_id","205"),
("515","207","_edit_last","1"),
("516","207","_edit_lock","1555082454:1"),
("517","207","_oembed_6cdb32de26bd834f378ba5f174b517b0","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/j6jJMstzwJc?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("518","207","_oembed_time_6cdb32de26bd834f378ba5f174b517b0","1555072331"),
("519","208","_wp_attached_file","2019/04/bua-an-tre-an-do.jpg"),
("520","208","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:393;s:4:\"file\";s:28:\"2019/04/bua-an-tre-an-do.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"bua-an-tre-an-do-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"bua-an-tre-an-do-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("521","207","_thumbnail_id","208"),
("523","210","_edit_last","1"),
("524","210","_edit_lock","1555082417:1"),
("525","210","_oembed_aa64935c0b8e18cad1ea50335132dbf7","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/apkXJn_myb8?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("526","210","_oembed_time_aa64935c0b8e18cad1ea50335132dbf7","1555072371"),
("527","211","_wp_attached_file","2019/04/caritas-viet-nam.jpg"),
("528","211","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:284;s:4:\"file\";s:28:\"2019/04/caritas-viet-nam.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"caritas-viet-nam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"caritas-viet-nam-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("529","210","_thumbnail_id","211"),
("587","263","_wp_attached_file","2019/04/chu-de-muc-vu.jpg"),
("588","263","_wp_attachment_metadata","a:5:{s:5:\"width\";i:229;s:6:\"height\";i:229;s:4:\"file\";s:25:\"2019/04/chu-de-muc-vu.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"chu-de-muc-vu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("597","211","_wp_attachment_image_alt","Thánh lễ khai mạc Hội nghị thường niên 2018 - Caritas Việt Nam"),
("598","283","_edit_last","1"),
("599","283","_edit_lock","1555076496:1"),
("613","283","_thumbnail_id",""),
("616","304","_edit_last","1"),
("617","304","_edit_lock","1555082551:1"),
("618","304","_footer","normal"),
("619","304","_wp_page_template","page-right-sidebar.php"),
("620","306","_edit_last","1"),
("621","306","_edit_lock","1555082853:1"),
("622","306","_footer","normal"),
("623","306","_wp_page_template","page-right-sidebar.php"),
("624","308","_edit_last","1"),
("625","308","_edit_lock","1555083094:1"),
("626","308","_footer","normal"),
("627","308","_wp_page_template","page-right-sidebar.php"),
("628","310","_edit_last","1"),
("629","310","_edit_lock","1555083110:1"),
("630","310","_footer","normal"),
("631","310","_wp_page_template","page-right-sidebar.php"),
("632","312","_menu_item_type","post_type"),
("633","312","_menu_item_menu_item_parent","70"),
("634","312","_menu_item_object_id","310"),
("635","312","_menu_item_object","page"),
("636","312","_menu_item_target",""),
("637","312","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("638","312","_menu_item_xfn",""),
("639","312","_menu_item_url",""),
("641","313","_menu_item_type","post_type"),
("642","313","_menu_item_menu_item_parent","70"),
("643","313","_menu_item_object_id","308"),
("644","313","_menu_item_object","page"),
("645","313","_menu_item_target",""),
("646","313","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("647","313","_menu_item_xfn",""),
("648","313","_menu_item_url","");
INSERT INTO bz_postmeta VALUES
("650","314","_menu_item_type","post_type"),
("651","314","_menu_item_menu_item_parent","70"),
("652","314","_menu_item_object_id","306"),
("653","314","_menu_item_object","page"),
("654","314","_menu_item_target",""),
("655","314","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("656","314","_menu_item_xfn",""),
("657","314","_menu_item_url",""),
("659","315","_menu_item_type","post_type"),
("660","315","_menu_item_menu_item_parent","70"),
("661","315","_menu_item_object_id","304"),
("662","315","_menu_item_object","page"),
("663","315","_menu_item_target",""),
("664","315","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("665","315","_menu_item_xfn",""),
("666","315","_menu_item_url",""),
("704","340","_wp_attached_file","2019/04/1545403758_icon_donggop.png"),
("705","340","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:80;s:4:\"file\";s:35:\"2019/04/1545403758_icon_donggop.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"1545403758_icon_donggop-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("855","140","_yoast_wpseo_focuskeywords",""),
("856","140","_yoast_wpseo_keywordsynonyms",""),
("857","140","_yoast_wpseo_primary_category",""),
("861","411","_wp_attached_file","2019/04/grd-border.png"),
("862","411","_wp_attachment_metadata","a:5:{s:5:\"width\";i:20;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/04/grd-border.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("863","411","_edit_lock","1555081268:1"),
("909","434","_menu_item_type","taxonomy"),
("910","434","_menu_item_menu_item_parent","0"),
("911","434","_menu_item_object_id","14"),
("912","434","_menu_item_object","category"),
("913","434","_menu_item_target",""),
("914","434","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("915","434","_menu_item_xfn",""),
("916","434","_menu_item_url",""),
("919","210","_yoast_wpseo_content_score","60"),
("920","210","_yoast_wpseo_focuskeywords",""),
("921","210","_yoast_wpseo_keywordsynonyms",""),
("922","210","_yoast_wpseo_primary_category",""),
("926","207","_yoast_wpseo_content_score","60"),
("927","207","_yoast_wpseo_focuskeywords",""),
("928","207","_yoast_wpseo_keywordsynonyms",""),
("929","207","_yoast_wpseo_primary_category",""),
("931","204","_yoast_wpseo_content_score","60"),
("932","204","_yoast_wpseo_focuskeywords",""),
("933","204","_yoast_wpseo_keywordsynonyms",""),
("934","204","_yoast_wpseo_primary_category",""),
("936","201","_yoast_wpseo_content_score","60"),
("937","201","_yoast_wpseo_focuskeywords",""),
("938","201","_yoast_wpseo_keywordsynonyms",""),
("939","201","_yoast_wpseo_primary_category",""),
("941","198","_yoast_wpseo_content_score","60"),
("942","198","_yoast_wpseo_focuskeywords",""),
("943","198","_yoast_wpseo_keywordsynonyms",""),
("944","198","_yoast_wpseo_primary_category",""),
("946","194","_yoast_wpseo_content_score","60"),
("947","194","_yoast_wpseo_focuskeywords",""),
("948","194","_yoast_wpseo_keywordsynonyms",""),
("949","194","_yoast_wpseo_primary_category",""),
("950","304","_yoast_wpseo_content_score","30"),
("951","304","_yoast_wpseo_focuskeywords",""),
("952","304","_yoast_wpseo_keywordsynonyms",""),
("967","61","_yoast_wpseo_content_score","30"),
("968","61","_yoast_wpseo_focuskeywords",""),
("969","61","_yoast_wpseo_keywordsynonyms",""),
("970","306","_yoast_wpseo_content_score","30"),
("971","306","_yoast_wpseo_focuskeywords",""),
("972","306","_yoast_wpseo_keywordsynonyms",""),
("978","308","_yoast_wpseo_content_score","30"),
("979","308","_yoast_wpseo_focuskeywords",""),
("980","308","_yoast_wpseo_keywordsynonyms",""),
("981","310","_yoast_wpseo_content_score","30"),
("982","310","_yoast_wpseo_focuskeywords",""),
("983","310","_yoast_wpseo_keywordsynonyms",""),
("984","63","_yoast_wpseo_content_score","90"),
("985","63","_yoast_wpseo_focuskeywords",""),
("986","63","_yoast_wpseo_keywordsynonyms",""),
("987","458","_edit_last","1"),
("988","458","_edit_lock","1555083226:1"),
("989","458","_footer","normal"),
("990","458","_wp_page_template","page-right-sidebar.php"),
("991","458","_yoast_wpseo_content_score","30"),
("992","458","_yoast_wpseo_focuskeywords",""),
("993","458","_yoast_wpseo_keywordsynonyms",""),
("994","460","_menu_item_type","post_type"),
("995","460","_menu_item_menu_item_parent","0"),
("996","460","_menu_item_object_id","458"),
("997","460","_menu_item_object","page"),
("998","460","_menu_item_target",""),
("999","460","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1000","460","_menu_item_xfn",""),
("1001","460","_menu_item_url",""),
("1004","463","_wp_attached_file","2019/04/nhathophatdiem.jpg"),
("1005","463","_wp_attachment_metadata","a:5:{s:5:\"width\";i:325;s:6:\"height\";i:228;s:4:\"file\";s:26:\"2019/04/nhathophatdiem.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"nhathophatdiem-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"nhathophatdiem-300x210.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1006","84","_yoast_wpseo_content_score","90"),
("1007","84","_yoast_wpseo_focuskeywords",""),
("1008","84","_yoast_wpseo_keywordsynonyms",""),
("1112","523","_wp_trash_meta_status","publish"),
("1113","523","_wp_trash_meta_time","1557133482");




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
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2019-04-12 09:47:39","2019-04-12 09:47:39","[section label=\"Big post\" padding=\"15px\" class=\"post-row\"]\n\n[row style=\"large\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"7\" span__sm=\"12\" class=\"cot7\"]\n\n[blog_posts style=\"normal\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" slider_nav_style=\"simple\" slider_bullets=\"true\" cat=\"9,7,8,10,6,3,1,5,4,2\" show_date=\"false\" excerpt_length=\"35\" comments=\"false\" image_height=\"65%\" image_size=\"original\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col_inner]\n[col_inner span=\"5\" span__sm=\"12\" class=\"cot5\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"9,7,8,6,10,3,4,5,2,1\" posts=\"6\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"75%\" image_width=\"25\" image_size=\"thumbnail\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[ux_image id=\"174\" image_size=\"original\"]\n\n<div class=\"du-an-noi-bat\">\n<h2>Các dự án nổi bật</h2>\n<ul>\n<li><a href=\"/du-an-con-duong-sang/\">Con Đường Sáng - Caritas Việt Nam</a></li>\n<li><a href=\"/du-an-nang-cao-chat-luong-song/\">Nâng cao chất lượng sống qua việc cung cấp nước sạch cho cộng đồng nghèo</a></li>\n<li><a href=\"/du-an-chong-nan-buon-nguoi/\">Dự án chống nạn buôn người có tổ chức</a></li>\n<li><a href=\"/du-an-chong-nan-nao-pha-thai/\">Dự án chống nạn nạo phá thai</a></li>\n<li><a href=\"/du-an-nang-cao-chat-luong-giao-duc-cho-tre-em-ngheo-tai-cac-khu-vuc-thanh-pho/\">Nâng cao chất lượng giáo dục cho trẻ em nghèo tại các khu vực thành phố</a></li>\n</ul>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Video post\" bg_color=\"rgb(243, 243, 243)\" padding=\"20px\" class=\"video-post-section\"]\n\n[row]\n\n[col span__sm=\"12\" padding=\"0px 0px 0 0px\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"14\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.22)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"small\" class=\"row-video-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Hoạt động Caritas\" padding=\"15px\" class=\"post-row\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n<h2><span style=\"color: #d60000; font-size: 80%;\">Hoạt động Caritas Phát Diệm</span></h2>\n[blog_posts style=\"overlay\" type=\"row\" col_spacing=\"xsmall\" columns=\"2\" columns__md=\"1\" cat=\"2\" posts=\"4\" show_date=\"false\" excerpt=\"false\" show_category=\"label\" image_height=\"60%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"small\" text_bg=\"rgba(0, 0, 0, 0)\" class=\"box-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n<h2><span style=\"color: #d60000; font-size: 80%;\">Tin Giáo phận</span></h2>\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"9,7,8,6,10,3,4,5,2,1\" posts=\"6\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"75%\" image_width=\"25\" image_size=\"thumbnail\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post tin-giao-phan\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Hình ảnh hoạt động\" bg_color=\"rgb(244, 244, 244)\" padding=\"19px\" class=\"hinh-anh-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h2><span style=\"color: #d60000; font-size: 80%;\">Hình ảnh</span></h2>\n[ux_gallery ids=\"208,205,202,199,195,141,138,135,132,129,126,211\" col_spacing=\"xsmall\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.24)\" image_hover=\"overlay-add\" text_size=\"small\" text_hover=\"zoom-in\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-04-12 23:15:03","2019-04-12 16:15:03","","0","https://tppone.com/demo/caritas/?page_id=2","0","page","","0"),
("3","1","2019-04-12 09:47:39","2019-04-12 09:47:39","<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: https://bizhostvn.com/w/caritas.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-04-12 09:47:39","2019-04-12 09:47:39","","0","https://tppone.com/demo/caritas/?page_id=3","0","page","","0"),
("9","1","2019-04-12 16:53:57","2019-04-12 09:53:57","","topnav","","inherit","open","closed","","topnav","","","2019-04-12 16:53:57","2019-04-12 09:53:57","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/topnav.png","0","attachment","image/png","0"),
("31","1","2019-04-12 17:31:24","2019-04-12 10:31:24","","banner-caritas-phát-diệm","","inherit","open","closed","","banner-caritas-phat-diem","","","2019-04-12 17:31:24","2019-04-12 10:31:24","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/banner-caritas-phát-diệm.jpg","0","attachment","image/jpeg","0"),
("39","1","2019-04-12 17:37:52","2019-04-12 10:37:52","","banner-header","","inherit","open","closed","","banner-header","","","2019-04-12 17:37:52","2019-04-12 10:37:52","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/banner-header.jpg","0","attachment","image/jpeg","0"),
("48","1","2019-04-12 17:41:29","2019-04-12 10:41:29","","logo-caritas","","inherit","open","closed","","logo-caritas","","","2019-04-12 17:41:29","2019-04-12 10:41:29","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/logo-caritas.png","0","attachment","image/png","0"),
("50","1","2019-04-12 17:42:19","2019-04-12 10:42:19","","bg-header","","inherit","open","closed","","bg-header","","","2019-04-12 17:42:19","2019-04-12 10:42:19","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/bg-header.jpg","0","attachment","image/jpeg","0"),
("61","1","2019-04-12 17:46:20","2019-04-12 10:46:20","<strong>TỔNG QUAN VỀ CARITAS</strong>\n\n“Caritas” theo nguyên ngữ Latinh nghĩa là Yêu thương – Bác ái. Caritas là dấu chỉ tình yêu của Thiên Chúa dành cho con người, một tình yêu tự nguyện và không biên giới. Caritas minh chứng cho tình yêu Thiên Chúa giữa chúng ta, một tình yêu dành cho mọi dân tộc, cách riêng cho những người nghèo khổ. Caritas cũng là tên một tổ chức trong Giáo hội Công giáo có nhiệm vụ điều phối, cổ võ việc thực thi bác ái xã hội.\n\n<strong>Caritas Quốc tế</strong>\n\nCaritas Quốc tế (Caritas Internationalis) là một tổ chức bác ái trên phạm vị toàn cầu của Hội thánh Công giáo, bao gồm 165 thành viên. Tổ chức này được thành lập từ năm 1951, hiện nay đang hoạt động trên 200 vùng lãnh thổ, có Trụ sở chính tại Vatican và có văn phòng tại New York (Hoa Kỳ), Geneva (Thuỵ Sĩ), và làm việc với các tổ chức quốc tế khác.\n\nLấy nguồn cảm hứng từ các giá trị Tin Mừng và Giáo huấn Công giáo, Caritas Quốc tế hoạt động trong các lãnh vực chính: cứu trợ khẩn cấp, thúc đẩy sự phát triển toàn diện của con người, góp phần vào việc xoá đói giảm nghèo và xây dựng hoà bình.\n\n<strong>Caritas Việt Nam</strong>\n\nCaritas Việt Nam là tổ chức hoạt động bác ái xã hội trực thuộc Hội Đồng Giám Mục Việt Nam (HĐGMVN). Caritas Việt Nam bao gồm Văn phòng Caritas Việt Nam và 27 Caritas Giáo phận. Trong mỗi Caritas Giáo phận, mạng lưới Caritas được triển khai đến giáo hạt, giáo xứ. Dưới ánh sáng của Lời Chúa và Giáo huấn của Giáo Hội, mọi thành viên trong gia đình Caritas thực thi hoạt động bác ái mang đặc tính Kitô giáo, hướng đến việc loan báo Tin Mừng.\n\n<strong>Lịch sử hình thành và phát triển</strong>\n\nCaritas Việt Nam được thành lập tại miền Nam Việt Nam vào năm 1965 để đáp ứng nhu cầu khẩn thiết của những nạn nhân chiến tranh. Từ tháng 06 năm 1976, Caritas Việt Nam được yêu cầu ngưng hoạt động. Ngày 02 tháng 7 năm 2008, Chính phủ Việt Nam đồng ý cho HĐGMVN tái thiết lập Caritas Việt Nam và 26 Caritas Giáo phận, hoạt động theo tinh thần bác ái xã hội của Giáo hội Công giáo. Vào tháng 03 năm 2011, Caritas Việt Nam gia nhập Caritas Á Châu và trở thành thành viên chính thức của Caritas Quốc tế vào tháng 05 năm 2011.\n\n<strong>Trụ sở Caritas Việt Nam</strong>\n\nGiai đoạn đầu, văn phòng Caritas Việt Nam làm việc tại Trung tâm Công giáo, số 72/12 Trần Quốc Toản, quận 3, TP. HCM. Năm 2011, Văn phòng chuyển sang ngôi nhà thuê tại số 23/25, đường D2, Văn Thánh Bắc, quận Bình Thạnh, TP. HCM. Sau nhiều năm xây dựng, trụ sở mới của Caritas Việt Nam được khánh thành vào ngày 16 tháng 4 năm 2015 với sự hiện diện của hầu hết các Giám mục thuộc HĐGMVN, đại diện của các đối tác, các tổ chức trong và ngoài nước cùng các vị khách quý. Từ đó, Văn phòng Caritas Việt Nam làm việc tại trụ sở Caritas Việt Nam, số 319 Quốc lộ 13, phường Hiệp Bình Phước, quận Thủ Đức, TP. HCM.\n\n<strong>Tầm nhìn</strong>\n\nHướng đến một xã hội nhân văn, trong đó mọi người sống yêu thương và xứng với nhân phẩm của mình, để làm chứng cho tình yêu Thiên Chúa.\n\n<strong>Sứ mạng</strong>\n\nĐể xây dựng nền văn minh tình thương Caritas Việt Nam có những sứ mạng:\n-    Tôn trọng nhân phẩm và bảo vệ sự sống con người qua việc thực thi bác ái và loan báo Tin Mừng cho mọi người\n-    Xây dựng môi trường sống lành mạnh và liên đới trong tình bác ái Kitô giáo\n-    Đồng hành và hợp tác với Caritas Giáo phận triển khai các hoạt động bác ái xã hội theo các dự án / chương trình đã đề ra, đặc biệt là cho những người dễ bị tổn thương, không phân biệt tôn giáo, sắc tộc\n\n<strong>Giá trị cốt lõi</strong>\n\n-    Yêu thương\n-    Công bằng\n-    Tôn trọng\n\n<strong>Đối tượng phục vụ</strong>\n\nCaritas Việt Nam hướng đến phục vụ con người, đặc biệt là những người nghèo vật chất lẫn tinh thần, người dễ bị tổn thương, bị bỏ rơi, hoặc bị gạt ra bên lề xã hội.\n\n<hr />\n\n<strong>Công Văn Của Nhà Nước\nCỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM\nĐộc lập - Tự do - Hạnh Phúc\nBAN TÔN GIÁO CHÍNH PHỦ </strong>\n\nSố: 941 / TGCP-CG\nV/v đăng ký hoạt động cho hội đoàn Caritas Việt Nam\nHà Nội, ngày 02 tháng 7 năm 2008\n\nKính gửi: Cụ Giám mục Nguyễn Chu Trinh, Giám mục giáo phận Xuân Lộc, Chủ tịch Uỷ ban Bác ái Xã hội, Hội đồng Giám mục Việt Nam.\nBan Tôn Giáo Chính phủ gửi đến Quý Cụ lời chào mừng trân trọng và xin trả lời về việc Quý Cụ xin sử dụng tên Caritas Việt Nam trong Uỷ ban Bác ái Xã hội, và xin đăng ký hoạt động cho hội đoàn Caritas Việt Nam như sau:\n\n- Căn cứ điều 19, điều 33 Pháp lệnh Tín ngưỡng, tôn giáo và điều 11 Nghị định 22/CP của Chính phủ hướng dẫn thi hành hướng dẫn thi hành một số điều của Pháp lệnh tín ngưỡng, tôn giáo.\n\n- Căn cứ ý kiến của các cơ quan hữu quan và địa phương liên quan.\nBan Tôn giáo Chính phủ chấp thuận đề nghị của Quý Cụ về việc sử dụng tên Caritas Việt Nam và đăng ký hoạt động cho Caritas Việt Nam thuộc Uỷ ban Bác ái Xã hội, Hội đồng Giám mục Việt Nam. Caritas các giáo phận được sử dụng tên Caritas gắn liền với tên giáo phận và phải đăng ký hoạt động với các Uỷ ban Nhân dân cấp tỉnh, thành phố trực thuộc Trung ương.\n\nTuy nhiên, hiện chưa có quy định của Nhà nước về việc cho tổ chức phi chính phủ nước ngoài hay mạng lưới các tổ chức phi chính phủ nước ngoài lập chi nhánh hay tổ chức của mình ở Việt Nam, nên không đặt vấn đề thành lập chi nhánh riêng của Caritas quốc tế tại Việt Nam.\n\nCaritas Việt Nam hoạt động theo pháp luật Việt Nam và nội quy của Caritas Việt Nam (đính kèm), và chịu sự hướng dẫn của cơ quan quản lý Nhà nước về tôn giáo đối với các hoạt động mang tính hội đoàn tôn giáo và của cơ quan quản lý đối với các tổ chức phi chính phủ về hoạt động  trong lĩnh vực từ thiện xã hội nhân đạo.\n\nBan Tôn giáo Chính phủ xin trân trọng thông báo để Quý Cụ biết và thực hiện.\nNơi nhận:\n- Như trên;\n- Bộ Công an (A 41);\n- Bộ Nội vu (Vụ TCPCP);\n- Liên hiệp các tổ chức HN Việt Nam (PACCOM);\n- Lưu VT, CG (2)\n\n<hr />\n\nHội đồng Giám mục Việt Nam\n40 Nhà Chung – Hà Nội\n\n<strong>BẢN XÁC NHẬN\nCỦA HỘI ĐỒNG GIÁM MỤC  VIỆT NAM\nVỀ CARITAS VIỆT NAM</strong>\n\nHội đồng Giám mục Việt Nam (HĐGMVN) trong phiên họp thường niên tại Toà Giám Mục Xuân Lộc, từ ngày 22 đền 26-09-2008, đã xác nhận rằng :\nTrong hoàn cảnh hiện nay của xã hội Việt Nam, HĐGMVN cần tổ chức Caritas Việt Nam như một Hiệp hội để giúp đỡ một cách có hiệu quả những người nghèo khổ, bệnh tật, những nạn nhân thiên tai, những nạn nhân xã hội như những người nhiễm HIV/AIDS, những người nghiện ma tuý, những phụ nữ trẻ em bị lạm dụng tình dục…\n\nHĐGMVN vui mừng và hy vọng khi nhận được tin Nhà nước Việt Nam cho phép tái lập Caritas Việt Nam trong tất cả các giáo phận của Giáo Hội Việt Nam cũng như cho phép hoà nhập vào hoạt động Caritas toàn cầu.\n\nHĐGMVN sau khi nghiên cứu và thảo luận đã chuẩn y nội quy của Caritas Việt Nam do Uỷ Ban Bác ái Xã hội đệ trình. Quy chế này xác định mục đích, tôn chỉ, nhiệm vụ, nguyên tắc hoạt động, tổ chức của Caritas Việt Nam tại Trung Ương cũng như tại các giáo phận.\n\nHĐGMVN đồng ý và mong muốn Caritas Việt Nam được sát nhập vào Caritas Internationalis để cùng thực hiện hoạt động bác ái theo đường hướng chung của Giáo Hội toàn cầu.\n\nHĐGMVN mong ước nhiều tín hữu tham gia vào Caritas Việt Nam để thực hiện tình bác ái của Chúa Kitô cho mọi người.\nXin Chúa chúc lành cho tất cả những ai tham dự Hiệp hội này.\n\nLàm tại Xuân Lộc, ngày 25-09-2008\nTM. HỘI ĐỒNG GIÁM MỤC VIỆT NAM\n\n...........................................................................................................................................................................................................................................................\n\nLời Giới Thiệu\n\n<strong> ĐỨC CHA ĐA MINH NGUYỄN CHU TRINH\nCHỦ TỊCH UỶ BAN BÁC ÁI XÃ HỘI - CARITAS VIỆT NAM</strong>\nKính thưa Quý Hồng y, Quý Đức Cha,\nQuý cha, Quý tu sĩ nam nữ và anh chị em giáo dân thân mến,\n\nCaritas Việt Nam đã được Nhà nước cho phép tái lập trên đất nước chúng ta và trong mỗi giáo phận như một hiệp hội thực hiện các hoạt động bác ái xã hội. Hội đồng Giám mục Việt Nam, trong kỳ họp thường niên, từ ngày 25-9-2008, tại Xuân Lộc, đã xác nhận tầm quan trọng và sự cần thiết của tổ chức này trong Giáo hội Việt Nam, cũng như trân trọng giới thiệu Hiệp hội này với cộng đồng tín hữu.\n\nTrong lịch sử hoạt động, các tổ chức trong mạng lưới Caritas quốc tế đã từng giúp đỡ rất nhiều cho dân tộc và Giáo hội Việt Nam, nhiều người khi nghe đến Caritas là liên tưởng đến tài trợ vật chất mà quên mất đây là một Hiệp hội thúc đẩy tinh thần bác ái, chia sẻ tình thương của Thiên Chúa cho mọi người.\nHơn nữa, Caritas còn là một tổ chức Công giáo Tiến hành để cổ vũ việc loan báo Tin Mừng cứu độ của Đức Giêsu Kitô cách thiết thực qua việc giúp đỡ những người nghèo khổ, tật bệnh, bị gạt ra ngoài lề xã hội.\n\nCaritas thật sự đã đổi mới bản chất và phương thức hành động khi Đức Thánh Cha Bênêđictô XVI chỉ định vị Hồng y đầu tiên, Oscar Andres Rodriguez, làm Chủ tịch Caritas Internationalis thay cho những người giáo dân giữ chức vụ này từ mấy chục năm nay. Hành động này như muốn xác định Giáo Hội toàn cầu muốn hiệp hội Caritas đóng vai trò lớn lao hơn trong sinh hoạt của Giáo Hội và người tín hữu cần xác tín rằng “hoạt động bác ái chính là trách nhiệm của mỗi tín hữu và cũng là bản chất của Giáo hội Công giáo” như Đức Thánh Cha đã xác định trong Thông điệp Deus Caritas est (Thiên Chúa là Tình Yêu, số 20).\n\nChính vì muốn đáp ứng những thay đổi trong xã hội và Giáo hội mà Uỷ ban Bác ái Xã hội – Caritas Việt Nam đã soạn thảo bản Quy chế - Nội quy này để trình bày đôi nét về lịch sử, mục đích, tôn chỉ, nguyên tắc hành động, cơ cấu tổ chức và điều hành, cũng như đường hướng sinh hoạt của Caritas Việt Nam.\n\nTôi xin trân trọng giới thiệu Bản Cẩm Nang Caritas Việt Nam này đến toàn thể cộng đồng Dân Chúa sau khi đã được góp ý và bổ sung thêm những điều còn thiếu qua Hội Nghị Ra Mắt Caritas Việt Nam tại Xuân Lộc từ ngày 21-24/10/2008. Ước mong bản Quy Chế sớm được áp dụng thử nghiệm để mỗi thành viên Caritas Việt Nam có thể tham gia xây dựng nền văn minh tình yêu nơi Giáo Hội và Xã hội.\n\nXin Thiên Chúa Ba Ngôi chúc lành và Đức Mẹ La Vang chuyển cầu cho tất cả chúng ta.\n\nLàm tại Xuân Lộc\nNgày Lễ các Thánh Tử Đạo Việt Nam, 24-11-2008\nGm. Đa Minh Nguyễn Chu Trinh\nChủ tịch UBBAXH - Caritas Việt Nam","Caritas Phát Diệm","","publish","closed","closed","","caritas-phat-diem","","","2019-04-12 22:29:32","2019-04-12 15:29:32","","0","https://tppone.com/demo/caritas/?page_id=61","0","page","","0"),
("63","1","2019-04-12 17:47:59","2019-04-12 10:47:59","<em><strong>\"Cho thì có phúc hơn là nhận\" (Cv.20.35).</strong></em>\n\nCaritas Việt Nam kết hợp cùng các Caritas Giáo phận nỗ lực không ngừng giúp đỡ những người nghèo khổ, bị bỏ rơi, bị gạt ra ngoài lề xã hội. Vì thế, mỗi cử chỉ nhỏ của Quý vị sẽ chạm đến và làm ấm lên mỗi trái tim của những người khổ hạnh.\n\nSố tiền quyên góp của Quý vị sẽ được dùng vào chương trình cứu trợ đồng bào bị thiên tai, giúp cho con em di dân có hoàn cảnh khó khăn, như học sinh, sinh viên nghèo ở vùng sâu vùng xa được cắp sách đến trường, hay lắp đặt hệ thống nước sạch cho người dân ở những vùng bị ô nhiễm nặng, giúp cho những người có HIV/ AIDS và bị khuyết tật được tái hoà nhập cộng đồng, giúp cho việc bảo vệ sự sống...\n\nMỗi đóng góp của Quý vị hôm nay sẽ cùng chúng tôi góp phần thay đổi đời sống ngày mai của họ.\n\nĐịa Chỉ liên lạc:\n\nUỶ BAN BÁC ÁI XÃ HỘI - CARITAS VIỆT NAM\nTRỰC THUỘC HỘI ĐỒNG GIÁM MỤC VIỆT NAM\nĐiện thoại: +84 (028) 3727-1904\n<ul>\n 	<li>Email văn phòng Caritas: caritasvietnamccsa@gmail.com</li>\n 	<li>Website: www.caritasvietnam.org</li>\n</ul>\nTÀI KHOẢN NGÂN HÀNG\nTên tài khoản: UBBAXH CARITAS VIET NAM\n\nSố tài khoản cho tiền:\nVND: 033.1.00.379133.5\nUSD: 033.1.37.379370.5\nEURO: 033.1.14.380725.6\nNgân hàng: Vietcombank\nChi nhánh Sài Gòn, 69 Bùi Thị Xuân, Q.1, Tp. HCM\nSwift code: BFTVVNVX\nBank code: 79203008\n* Xin quý vị không chuyển vào tài khoản nào khác ngoài tài khoản này vì bất cứ lý do gì.","Đóng góp","","publish","closed","closed","","dong-gop","","","2019-04-12 22:35:31","2019-04-12 15:35:31","","0","https://tppone.com/demo/caritas/?page_id=63","0","page","","0"),
("66","1","2019-04-12 17:49:52","2019-04-12 10:49:52","","Caritas Việt Nam","","publish","closed","closed","","caritas-viet-nam","","","2019-04-12 17:49:52","2019-04-12 10:49:52","","0","https://tppone.com/demo/caritas/?p=66","2","nav_menu_item","","0"),
("67","1","2019-04-12 17:49:52","2019-04-12 10:49:52","","Caritas Quốc tế","","publish","closed","closed","","caritas-quoc-te","","","2019-04-12 17:49:52","2019-04-12 10:49:52","","0","https://tppone.com/demo/caritas/?p=67","3","nav_menu_item","","0"),
("68","1","2019-04-12 17:49:52","2019-04-12 10:49:52","","Tư vấn trực tuyến","","publish","closed","closed","","tu-van-truc-tuyen","","","2019-04-12 17:49:52","2019-04-12 10:49:52","","0","https://tppone.com/demo/caritas/?p=68","4","nav_menu_item","","0"),
("69","1","2019-04-12 17:49:52","2019-04-12 10:49:52","","Trang Giáo Phận","","publish","closed","closed","","trang-giao-phan","","","2019-04-12 17:49:52","2019-04-12 10:49:52","","0","https://tppone.com/demo/caritas/?p=69","1","nav_menu_item","","0"),
("70","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","70","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=70","2","nav_menu_item","","0"),
("71","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","71","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=71","18","nav_menu_item","","0"),
("72","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","72","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=72","17","nav_menu_item","","0"),
("73","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","73","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=73","8","nav_menu_item","","0"),
("74","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","74","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=74","13","nav_menu_item","","0"),
("75","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","75","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=75","14","nav_menu_item","","0"),
("76","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","76","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=76","15","nav_menu_item","","0"),
("77","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","77","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=77","16","nav_menu_item","","0"),
("78","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","78","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=78","12","nav_menu_item","","0"),
("79","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","79","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=79","11","nav_menu_item","","0"),
("80","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","80","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=80","10","nav_menu_item","","0"),
("81","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","81","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","2","https://tppone.com/demo/caritas/?p=81","9","nav_menu_item","","0"),
("82","1","2019-04-12 17:50:50","2019-04-12 10:50:50"," ","","","publish","closed","closed","","82","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=82","7","nav_menu_item","","0"),
("84","1","2019-04-12 17:51:18","2019-04-12 10:51:18","[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<span style=\"font-size: 120%;\"><b>Ban bác ái xã hội - Caritas Phát Diệm</b></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Địa chỉ: 75 Phát Diệm Đông – Kim Sơn – Ninh Bình</span></li>\n 	<li><span style=\"font-size: 95%;\">ĐT: 0303.862.058 – Fax: 0303.862 724</span></li>\n 	<li><span style=\"font-size: 95%;\">Email: <a href=\"mailto:tgmpdiem@gmail.com\"><u>tgmpdiem@gmail.com</u></a></span></li>\n</ul>\n&nbsp;\n\n<span style=\"font-size: 120%;\"><strong>Phụ trách chính:</strong></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Trưởng ban: Cha Gioan Đỗ Văn Khoa</span></li>\n 	<li><span style=\"font-size: 95%;\">Điện thoại: 09xx.xxx.xxx</span></li>\n</ul>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"463\" image_size=\"original\"]\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2019-04-12 22:39:54","2019-04-12 15:39:54","","0","https://tppone.com/demo/caritas/?page_id=84","0","page","","0"),
("86","1","2019-04-12 17:51:26","2019-04-12 10:51:26"," ","","","publish","closed","closed","","86","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=86","21","nav_menu_item","","0"),
("87","1","2019-04-12 17:51:26","2019-04-12 10:51:26"," ","","","publish","closed","closed","","87","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=87","1","nav_menu_item","","0"),
("94","1","2019-04-12 18:00:58","2019-04-12 11:00:58","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/cropped-logo-caritas.png","cropped-logo-caritas.png","","inherit","open","closed","","cropped-logo-caritas-png","","","2019-04-12 18:00:58","2019-04-12 11:00:58","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/cropped-logo-caritas.png","0","attachment","image/png","0"),
("125","1","2019-04-12 18:27:44","2019-04-12 11:27:44","Sinh ra trên đời ai cũng muốn có cuộc sống vui tươi với những người thân và với tất cả mọi người, nhưng có lẽ điều đó không phải bất cứ ai muốn cũng được.  Có những em sinh ra được mạnh khoẻ, được tung tăng đến trường, nhưng cũng có những em không may khi vừa sinh ra đã phải đi cấp cứu mổ tim.\n\nCuối năm 2018 tại Ninh Bình huyện Kim Sơn, xã Kim Trung, cháu Nguyễn Văn Tú sinh ngày 09/12/2018 vừa cất tiếng chào đời thì đã phát hiện bệnh tim, cháu phải nhập viện ngay, cháu được các bác sĩ khám và xác định là bị hở động mạch vành, cháu được làm phẫu thuật luôn. Vừa cất tiếng chào đời, những đường dao và mũi chỉ đã là người bạn đồng hành với cháu, thật tội nghiệp. Chớ trêu thay, gia đình cháu cũng không nằm ngoài danh sách những gia đình nghèo trong xã, vì tình thương cha mẹ cháu đã cố chạy vạy từng đồng để lo cho con. Tưởng chừng như sau khi phẫu thuật cháu được vui sống với gia đình, với mọi người, với cuộc đời, nhưng không, sau 2 tháng theo dõi và điều trị thì ngày 20/01/2019 cháu được các bác sĩ cho xuất viện và nói rằng không thể chữa được. Vâng theo lời bác sĩ gia đình đã đưa cháu về trong thất vọng, mọi người đã buông xuôi mọi thứ, nhưng thật lạ thay, về nhà được một thời gian ngắn, sức khỏe cháu được phục hồi, cháu khỏe lại, ăn uống bình thường, mọi người ai nấy đều ngạc nhiên, thật là một điều kỳ diệu, cảm tạ Chúa vì tình yêu tuyệt vời Chúa làm cho con người.\n\nĐể có được ngày hôm nay và đặc biệt là được phẫu thuật, cháu Tú cùng gia đình không quên cám ơn đến tất cả mọi người đã giúp đỡ gia đình, cách đặc biệt là hội St Lucas và quý Ân Nhân. Nhờ tấm lòng hảo tâm của Hội mà gia đình có được thêm niềm vui, sự bình an và niềm an ủi lớn lao.\n\nTrước sự bất lực của con người thì Thiên Chúa cho thấy Người là Đấng Toàn Năng có quyền trên sự sống và cái chết. Nhưng mấy ai đã nhận ra, thậm chí có người còn cố gắng bằng mọi cách ngăn cản sự sống ấy bằng việc phá thai. Chứng kiến sự đấu tranh giữa cái sống và cái chết của cháu Tú mọi người nhận ra món quà sự sống là chính tình yêu và lòng thương xót bao la Chúa dành cho con người thật quá lớn lao. Không một khoa học nào cũng như không một phát minh, hay một thế lực nào có thể ngăn cản được điều tốt lành Chúa muốn dành cho con cái của Người.\n\n<strong>Văn phòng Caritas Phát Diệm</strong>\n<strong>Một số hình ảnh bé Nguyễn Văn Tú</strong>\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-chau-sau-PT-1.jpg\" alt=\"\" width=\"540\" height=\"720\" />\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-sau-PT-2.jpg\" alt=\"\" width=\"540\" height=\"720\" />\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-gd-Tu-sau-PT-1.jpg\" alt=\"\" width=\"540\" height=\"720\" />\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-gd.jpg\" alt=\"\" width=\"540\" height=\"720\" />\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-Tu-sau-PT.jpg\" alt=\"\" width=\"540\" height=\"720\" />\n\n<img src=\"http://caritasvietnam.org/datafiles/img_data/images/Hinh-Caritas-tham.jpg\" alt=\"\" width=\"820\" height=\"615\" />","Caritas Phát Diệm: sự sống kỳ diệu Chúa ban","","publish","open","open","","caritas-phat-diem-su-song-ky-dieu-chua-ban","","","2019-04-12 18:27:44","2019-04-12 11:27:44","","0","https://tppone.com/demo/caritas/?p=125","0","post","","0"),
("126","1","2019-04-12 18:27:41","2019-04-12 11:27:41","","post1","Caritas Phát Diệm đồng hành với sự sống mỏng manh của cháu bé phải mổ tim","inherit","open","closed","","post1","","","2019-04-12 20:39:04","2019-04-12 13:39:04","","125","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post1.jpg","0","attachment","image/jpeg","0"),
("128","1","2019-04-12 18:28:58","2019-04-12 11:28:58","Sáng ngày 10/04/2019, Caritas Phan Thiết hân hạnh được đón tiếp Hội American Wheelchair Mission và Sr Nguyễn Hồng Hà, anh Trương Văn Lộc Gia đại diện văn phòng Caritas Việt Nam đến thăm và trao tặng 50 chiếc xe lăn, 10 chiếc xe lắc cùng một số gậy, khung cho các bệnh nhân và người khuyết tật có hoàn cảnh khó khăn trong Giáo Phận tại các điểm: Giáo xứ Vũ Hòa (Hạt Đức Tánh), Tu Đoàn Bác Ái Xã Hội (Hạt Hàm Tân), Giáo xứ Hiệp Đức (Hạt Hàm Thuận Nam), và Văn phòng Caritas (Hạt Phan Thiết).\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/1(4).jpg\" alt=\"\" width=\"850\" height=\"478\" />\n\nĐây thực sự là món quà ý nghĩa, thiết thực nhằm hỗ trợ các bệnh nhân và người khuyết tật có phương tiện di chuyển, thuận tiện trong việc sinh hoạt, tự chăm sóc bản thân, giúp NKT giảm bớt được gánh nặng cho những người thân trong gia đình, từ đó tạo điều kiện cho họ sống vui vẻ, tự tin và vươn lên hòa nhập với cộng đồng.\n\nĐó cũng là món quà cao quý, là lời động viên tinh thần thể hiện tình liên đới yêu thương, sự quan tâm và chia sẻ của các mạnh thường quân dành cho các bệnh nhân và người khuyết tật tại Giáo phận Phan Thiết.\n\nĐúng 10 giờ đoàn đã tới Giáo xứ Vũ Hòa là điểm đầu tiên thăm và trao xe cho người khuyết tật. Ở đây, đoàn đã được Cha Quản xứ Giuse Nguyễn Tiến Dũng cũng là Cha Đặc trách Caritas Hạt Đức Tánh, đón tiếp cách nồng hậu. Các bệnh nhân cũng đã đến từ sớm để được nhận những chiếc xe lăn, xe lắc như là phương tiện giúp họ tiếp tục tiến bước trong cuộc sống cũng như trong công việc mưu sinh hàng ngày của bản thân.\n\nKết thúc trao tặng xe lăn tại giáo xứ Vũ Hòa, đoàn tiếp tục di chuyển về Tu Đoàn Bác Ái Xã Hội. Vừa tới nơi chúng tôi nhìn thấy các bệnh nhân tập trung đầy đủ và đang chờ đợi trong bầu khí vui tươi, náo nhiệt. Bên cạnh đó, đoàn còn nhận được sự đón tiếp nồng nhiệt của Quý Thầy trong Tu Đoàn, ban Caritas Hạt Hàm Tân. Tại đây, đoàn trao tặng những chiếc xe lăn, xe lắc và gậy cho bệnh nhân cũng như  người khuyết tật. Mặc dầu trời đã khá trưa với cái nắng nóng của khí hậu, nhưng đoàn vẫn cố gắng tiếp tục công việc của mình và di chuyển về Giáo xứ Hiệp Đức, ở đây đoàn được Cha Quản xứ, Caritas Giáo xứ ân cần đón tiếp mời dùng cơm trưa tại Giáo xứ và sau đó đoàn thăm hỏi trao xe lăn cho các bệnh nhân tại Hạt Hàm Thuận Nam.\n\nKế tiếp, đoàn di chuyển về tòa Giám Mục. Đây là điểm cuối của chuyến thăm và trao tặng, với những chiếc xe lăn, xe lắc còn lại đã được đoàn trao cho người khuyết tật thuộc hạt Phan Thiết. Có một số người khuyết tật và bệnh nhân sức khỏe quá yếu, di chuyển khó khăn không đến trực tiếp nhận xe được, thì những người thân đã thay mặt nhận giúp. Trên khuôn mặt của mọi người rạng rỡ nụ cười và tràn đầy niềm vui, hạnh phúc.\n\nMặc dầu bệnh nhân và những người khuyết tật rải rác thuộc nhiều địa điểm, cách xa nhau nhưng đoàn đã không quản ngại khó khăn, sắp xếp thời gian trong một ngày để đến thăm hỏi, khích lệ và tận tay trao xe cho bệnh nhân và người khuyết tật. Đây quả là một việc làm cao quý đầy tình yêu không sao diễn tả hết bằng lời được.\n\nĐại diện cho những bệnh nhân, người khuyết tật có hoàn cảnh khó khăn, Cha Phêrô Nguyễn Đình Sáng Giám đốc Caritas Phan Thiết, hết lòng tri ân Hội American Wheelchair Mission và Caritas Việt Nam, cùng quý ân nhân, các mạnh thường quân xa gần, đã quảng đại chia sẻ những món quà đầy ý nghĩa mang lại niềm vui, hạnh phúc cho họ trong cuộc sống.\n\nChúng con cũng xin chân thành cám ơn Quý Cha xứ, Quý Thầy Tu Đoàn Bác Ái Xã Hội, ban Caritas các Giáo xứ đã cùng đồng hành, cộng tác với chúng con trong việc thăm hỏi, khảo sát để những bệnh nhân và người khuyết tật có hoàn cảnh khó khăn được hỗ trợ nhận xe hôm nay.\n\nNguyện xin Thiên Chúa luôn đồng hành, chúc lành và trả công bội hậu cho tất cả Quý vị.\n\n<strong>BTT Caritas Phan Thiết</strong>","Caritas Phan Thiết: tổ chức trao xe lăn cho người khuyết tật","","publish","open","open","","caritas-phan-thiet-to-chuc-trao-xe-lan-cho-nguoi-khuyet-tat","","","2019-04-12 18:28:58","2019-04-12 11:28:58","","0","https://tppone.com/demo/caritas/?p=128","0","post","","0"),
("129","1","2019-04-12 18:28:55","2019-04-12 11:28:55","","post2","Caritas Phan Thiết tổ chức trao xe lăn cho người khuyết tật","inherit","open","closed","","post2","","","2019-04-12 20:38:43","2019-04-12 13:38:43","","128","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post2.jpg","0","attachment","image/jpeg","0"),
("131","1","2019-04-12 18:30:38","2019-04-12 11:30:38","Việc được chọn làm người cầm đuốc cho Thế vận hội là điều thật bất ngờ với cha Vincenzo. Một hôm cha Vincenzo nghe điện thoại reo; trả lời điện thoại, cha nghe đầu dây bên kia nói: “Alô, đây là Ủy ban Olimpic của Hàn quốc”. Lập tức cha Vincenzo nghĩ: “Chắc họ biết về kỹ năng đua xe đạp của mình và muốn triệu tập mình vào đội tuyển quốc gia.” Ý nghĩ đó chỉ chợt thoáng qua và rồi một ý nghĩ khác xuất hiện: “Nhưng mà tại Thế vận hội mùa đông thì không có môn đua xe đạp.” Vậy thì chuyện gì đây? Thế là cha chăm chú lắng nghe hơn. Đầu dây bên kia tiếp tục nói: “Tôi gọi cha bởi vì tôi muốn có một trong những người cầm đuốc Thế vận hội.” Cha Vincenzo đáp lời: “Xin lỗi, có thể có sự nhầm lần. Tôi là Vincenzo Bordo và tôi là một người Ý.” Bên kia tiếp tục nói: “Có, chúng tôi biết điều đó.” Cha cũng nói tiếp: “Nhưng tôi là một người ngoại quốc.” Cha nghe họ trả lời: “Chính vì thế mà chúng tôi gọi cha. Tinh thần Thế vận hội là tinh thần huynh đệ toàn cầu và lòng hiếu khách và qua cử chỉ này chúng tôi muốn nói với đồng bào của chúng tôi rằng tất cả những người sống và làm việc ở đây là một phần của dân tộc này, không có sự phân biệt đối xử hay định kiến và họ là một phần của lịch sử tuyệt vời mà chúng ta đang cùng nhau xây dựng.”\n\nhttps://youtu.be/_2eZ1e04vfA","Lời cầu nguyện thành khẩn cho trái đất của chúng ta","","publish","open","open","","loi-cau-nguyen-thanh-khan-cho-trai-dat-cua-chung-ta","","","2019-04-12 19:08:05","2019-04-12 12:08:05","","0","https://tppone.com/demo/caritas/?p=131","0","post","","0"),
("132","1","2019-04-12 18:30:36","2019-04-12 11:30:36","","post3","Chiến dịch lời cầu nguyện cho trái đất của chúng ta","inherit","open","closed","","post3","","","2019-04-12 20:38:28","2019-04-12 13:38:28","","131","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post3.jpg","0","attachment","image/jpeg","0"),
("134","1","2019-04-12 18:31:41","2019-04-12 11:31:41","Trong bài huấn dụ của Đức Thánh Cha với các tham dự viên, Đức Thánh Cha khởi đi từ đoạn Tin Mừng của thánh Gioan (10,10): “Ta đến để cho chiên được sống và sống dồi dào”, để nói về sứ mạng của Chúa Giêsu: ban sự sống tròn đầy cho tất cả mọi người nam nữ thuộc mọi thời đại theo kế hoạch của Chúa Cha.\n\nNhưng tiếc là thế giới hiện tại vẫn tồn tại những hoàn cảnh ngược lại, cản trở việc hoàn thành sứ mạng này. Như bảng <i>Định hướng Mục vụ về Nạn Buôn người </i>chỉ ra, “thời đại chúng ta đã đánh dấu sự phát triển của chủ nghĩa cá nhân và chủ nghĩa quy kỷ, những thái độ có xu hướng xem người khác theo quan điểm duy lợi, coi họ như một giá trị theo tiêu chí tiện lợi và lợi thế cá nhân” (số 17).\n\n“Giữa nhiều thảm kịch đương đại có nạn buôn người, xem người khác là một đối tượng hàng hoá. Bằng nhiều hình thức khác nhau, nó tạo thành một vết thương ‘trong cơ thể của nhân loại đương đại’, một nỗi đau sâu thẳm trong bản tính con người của những nạn nhân gánh chịu cũng như những người thực hiện nó. Thật vậy, nạn buôn người làm mất đi bản tính nhân loại của nạn nhân, xúc phạm tự do và nhân phẩm của họ. Nhưng đồng thời, nó phá hoại nhân tính của những người thực hiện, không cho họ tiếp cận với ‘sự sống dồi dào’. Cuối cùng, nạn buôn người gây thiệt hại nghiêm trọng cho toàn thể nhân loại, xé nát gia đình nhân loại và Thân thể Chúa Kitô. Đây là một tội ác chống lại nhân loại.\n\n“Những người phạm tội này gây thiệt hại không chỉ cho người khác mà còn cho chính họ. Thật vậy, mỗi chúng ta được tạo dựng để yêu thương và chăm sóc người khác, và điều này đạt đến đỉnh điểm nơi việc trao ban chính mình: ‘Không có tình yêu nào lớn hơn tình yêu của người hy sinh tính mạng vì bạn hữu của mình’ (Ga 15, 13). Trong mối quan hệ mà chúng ta thiết lập với người khác, chúng ta đang đụng đến chính bản tính con người của chúng ta, để mình tiến gần hoặc ra xa mẫu người mà Thiên Chúa Cha muốn và được mặc khải nơi Người Con nhập thể. Do đó, mọi chọn lựa trái với việc thực hiện công trình của Thiên Chúa dành cho chúng ta là sự phản bội bản tính nhân loại của chúng ta và từ bỏ ‘sự sống dồi dào’ được Chúa Giêsu Kitô ban tặng.\n\n“Tất cả các hành động nhằm khôi phục và thăng tiến bản tính nhân loại của chúng ta và của những người khác đều phù hợp với sứ mạng của Giáo hội, như một sự tiếp nối sứ mạng cứu độ của Chúa Giêsu Kitô. Giá trị truyền giáo này thể hiện rõ nơi cuộc đấu tranh chống lại mọi hình thức buôn người và trong việc dấn thân giải cứu những người còn sống sót; đây là cuộc đấu tranh và dấn thân ảnh hưởng đến cả lợi ích trên bản tính nhân loại của chính chúng ta, mở đường cho sự sống viên mãn, đích đến cuối cùng cho sự hiện hữu của chúng ta.”\n\nĐức Thánh Cha đánh giá cao những dấn thân của Giáo hội địa phương về sự quảng đại đảm nhận lĩnh vực mục vụ này, trong đó những người hiện diện tại hội nghị này là một dấu hiệu hữu hình. Rất nhiều sáng kiến đã được đề ra và áp dụng để ngăn chặn nạn buôn người, bảo vệ những người sống sót và truy tố những kẻ phạm tội. Đức Thánh Cha đặc biệt cảm ơn các dòng tu đã và đang hoạt động trong sứ mạng của Giáo hội chống lại nạn buôn người.\n\nĐức Thánh Cha cũng nói đến những việc cần phải tiếp tục làm. Đối diện với một hiện tượng phức tạp và mờ tối như nạn buôn người, thì nhất thiết phải có sự phối hợp trong nhiều sáng kiến ​​mục vụ khác nhau, cả ở cấp độ quốc gia lẫn quốc tế. Các văn phòng phụ trách của các Giáo hội địa phương, các dòng tu và các tổ chức Công giáo được mời gọi chia sẻ kinh nghiệm, kiến ​​thức và tập trung sức mạnh trong hành động liên quan đến các quốc gia nguyên quán, chuyển tiếp và nơi đến của những nạn nhân bị bán.\n\nHơn nữa, để hành động thích hợp và hiệu quả hơn, thì Giáo hội cũng phải biết tận dụng sự giúp đỡ của các chủ thể chính trị và xã hội khác. Việc hợp tác chiến lược với các cơ cấu và các tổ chức xã hội dân sự khác sẽ đảm bảo kết quả lâu dài và bền vững hơn.\n\nCuối cùng, Đức Thánh Cha thay mặt những nạn nhân vô tội cám ơn những người tham dự hội nghị, các giáo dân, tu sĩ về những dấn thân nguy hiểm và âm thầm của họ. Và ngài khuyến khích họ tiếp tục kiên trì dấn thân cho sứ mạng này.\n\n<b>Văn Yên, SJ</b>","Đức Thánh Ca gặp các tham dự viên Hội nghị Quốc tế về nạn buôn người","","publish","open","open","","duc-thanh-ca-gap-cac-tham-du-vien-hoi-nghi-quoc-te-ve-nan-buon-nguoi","","","2019-04-12 18:31:41","2019-04-12 11:31:41","","0","https://tppone.com/demo/caritas/?p=134","0","post","","0"),
("135","1","2019-04-12 18:31:38","2019-04-12 11:31:38","","post4","Đức Thánh Cha gặp các tham dự viên quốc tế về nạn buôn người","inherit","open","closed","","post4","","","2019-04-12 20:38:17","2019-04-12 13:38:17","","134","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post4.jpg","0","attachment","image/jpeg","0"),
("137","1","2019-04-12 18:33:04","2019-04-12 11:33:04","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nTiếp cận với các em trong chương trình nhận học bổng, được biết nhiều em có ước mơ thật lớn là muốn làm bác sĩ để sau này có thể khám chữa bệnh cho bố mẹ, cho các thành viên trong gia đình, giúp hàng xóm và nhất là những người nghèo khổ. Tại sao phần lớn các em lại có ước mơ cao như vậy? Thực tế là vì các em đang sống trong hoàn cảnh rất khó khăn, mơ cao với hy vọng sẽ phá vỡ được cái vòng luẩn quẩn của nghèo đói mà cha mẹ các em đang phải đối mặt hàng ngày. Chúng ta cần chung tay để giúp các em đạt được ước mơ ấy. Việc đầu tư cho các em kém may mắn nhất để cho chúng một cơ hội công bằng trong cuộc sống không chỉ là điều nên làm, mà còn là cách hữu hiệu giúp các em nâng cao kiến thức qua việc học, cải thiện đời sống và dần phá vỡ vòng luẩn quẩn của sự nghèo đói.\n\nĐến thăm em Đoàn Bảo Ngọc, lớp 4, thuộc giáo xứ Hưng Yên, Thái Bình, chúng tôi không khỏi xót xa khi chứng kiến một hoàn cảnh thật đáng thương: Bố mất khi em mới 2 tháng tuổi và khi em được 15 tháng thì mẹ bỏ đi có lẽ vì không chịu được cảnh túng thiếu. Lớn lên trong hoàn cảnh không cha không mẹ, em trở nên ít cười, ít tương quan với bạn bè, nét buồn luôn trực diện trên khuôn mặt ngây thơ với đôi mắt thật nhiều cảm xúc. Hiện giờ em đang sống cùng bà nội đau liệt giường vì bị tai biến. Nên em trở thành “tay hòm chìa khóa” bất đắc dĩ trong nhà. Hàng ngày em vẫn đến trường, tan học em về lo cơm nước cho bà nội. Bà nằm đó đã lâu không thể ngồi dậy và mọi sinh hoạt của bà diễn ra trên chiếc giường cũ. Đó cũng chính là “cái nôi” của em khi đêm về, vì trong nhà có còn gì giá trị hơn ngoài chiếc giường cũ đâu. Nằm cạnh bà, nhiều đêm em cũng nhớ đến cha mẹ mình; ước mơ về một cuộc sống đong đầy tiếng cười và niềm vui của một gia đình đúng nghĩa ẩn hiện trong giấc mơ của em mỗi khi đêm buông màn. Lúc này, hơn ai hết, bà nội cần có em bên cạnh; và em cũng cần có bà để làm chốn có nơi đi về. Hai bà cháu trở thành điểm tựa cho nhau và giúp nhau vượt qua những khó khăn trước mắt. Chúng ta nên làm gì để giúp em thực hiện ước mơ riêng mình?\n<div>\n<figure class=\"image\"><img src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC02739-Copy.jpg\" alt=\"Em Đoàn Bảo Ngọc và Bà Nội\" width=\"780\" height=\"520\" /><figcaption><strong>Em Đoàn Bảo Ngọc và Bà nội</strong></figcaption></figure>\n</div>\nĐường về Giáo xứ Thái Sa, Thái Bình quanh co, len lỏi cũng giống như đời sống hiện tại của người dân làng chài Thủy Cơ vậy. Họ đang len lỏi men bờ sông Hồng đánh bắt cá tôm bằng những kỹ thuật và ngư cụ thủ công thô sơ để kiếm sống. Làng chài Thủy Cơ gồm những hộ dân nghèo nhất thôn. Hầu hết bà con không có đất ở, lấy thuyền làm nhà, lênh đênh trên sông Hồng kiếm cơm cháo đắp đổi qua ngày. Vì thế, con cái sinh ra theo cha mẹ học nghề chài lưới chứ không có đủ điều kiện học hành. Hàng ngày đối diện với những khó khăn, ngư dân nơi đây dần ý thức được việc cần phải cải thiện đời sống của thế hệ con cháu, cho chúng được no ấm và được đến trường. Từ suy nghĩ đó, một số hộ dân lên bờ mua đất dựng nhà, lấy chỗ cư ngụ cho con cháu đi học. Tuy nhiên, họ vẫn phải bám sông để sống, cuộc sống còn rất nhiều thiếu thốn và khó khăn. Để đến trường, hàng ngày các em ở làng chài phải đi qua một đoạn đường lầy lội trơn trượt, đi bộ đã khó, nếu có xe đạp càng không thể đi. Có em đã mất cha hoặc mẹ, có em may mắn được sống với cả hai, nhưng rất chật vật trong cuộc sống.\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC02872cccc.jpg\" alt=\"\" width=\"780\" height=\"520\" />\n\nEm Trần Thị Liên thật rụt rè và ít nói khi được hỏi chuyện. Em đang học lớp 2 và may mắn được sống cùng với cả cha và mẹ trên chiếc thuyền nhỏ, nhưng cha em bị bại liệt nên rất khó khăn trong việc di chuyển. Vì thế, mẹ em chính là người hy sinh gánh vác mọi việc trong gia đình và để cho em được đến trường.\n<div>\n<figure class=\"image\"><img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC00007-Copy.jpg\" alt=\"Em Trần Thị Liên\" width=\"780\" height=\"520\" /><figcaption><strong>Em Trần Thị Liên và Cha</strong></figcaption></figure>\n</div>\nCũng ở Thái Sa, len lỏi trong các ngõ xóm, chúng tôi dừng chân tại một ngôi nhà không có bố mẹ, chỉ có ông bà và các cháu. Ngôi nhà cũ, ông bà lớn tuổi, 4 cháu nhỏ bám lấy ông bà để sống vì bố mẹ chúng bỏ nhau và bỏ chúng lại để đi tìm cuộc sống mới cho riêng mình; còn gì cám cảnh hơn. Nhìn vẻ mặt và ánh mắt của bà và cháu, chúng tôi phần nào hiểu được họ đang cần gì. Dù khó khăn chồng chất, ông bà vẫn cố gắng cho các cháu đến trường để biết cái chữ với người ta, cùng với mong ước sau này có được cuộc sống tốt hơn.\n\n<img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC09999ccc.jpg\" alt=\"\" width=\"780\" height=\"520\" />\n\nĐến với Giáo xứ Tiên Nộn thuộc Giáo Phận Huế, chúng tôi ghé thăm em Phan Thị Diễm Quỳnh, lớp 5. Em đã rất xúc động và không thể chia sẻ nhiều khi hỏi về hoàn cảnh của gia đình mình. Cả em và cha mẹ em đã phải đánh đổi nhiều thứ để em được đi học, em phải chấp nhận sống xa cha mẹ, ở với bà nội. Hai bà cháu ở nhờ trong nhà của một người bà con. Sống thiếu tình thương của cha mẹ, em được bà nội chăm sóc, nhưng cũng không đủ để bù đắp lại mối thân tình ràng buộc giữa cha mẹ và con cái.  Chính vì thế em hay khóc và ẩn giấu một nét buồn trên khuôn mặt bầu bĩnh.\n<div>\n<figure class=\"image\"><img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC03075ccc.jpg\" alt=\"\" width=\"780\" height=\"520\" /><figcaption><strong>Em Phan Thị Diễm Quỳnh và Bà nội</strong></figcaption></figure>\n</div>\nCũng tại giáo xứ Tiên Nộn, gia đình em Võ Cao Thiện Thanh đang gặp rất nhiều bế tắc khi người bà sống chung đau nặng, cha em bị bệnh viêm khớp rất đau nhức, mẹ làm hương chẳng đủ trang trải cho cả gia đình. Em đang học lớp 5, vừa đi học vừa phụ mẹ những việc cần. Nhìn khung cảnh gia đình như không có tương lai, thật thương tâm.\n<div>\n<figure class=\"image\"><img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC03158cccy.jpg\" alt=\"\" width=\"540\" height=\"673\" /><figcaption><strong>Em Võ Cao Thiện Thanh (áo xanh) cùng Mẹ và em trai</strong></figcaption></figure>\n</div>\nEm Đàm Quang Ánh, thuộc nhóm được giúp đỡ của Giáo xứ Xuân Sơn, Giáo phận Hà Tĩnh. Em đang học lớp 9, hàng ngày em phải đi một đoạn đường khá xa khoảng gần 10km để đến được trường. Em không có xe đạp nên thường đi nhờ xe bạn. Cha mẹ em đi chăn trâu và làm thuê. Em không chia sẻ nhiều về gia đình mình, chỉ khi chúng tôi tìm đến tận ngôi nhà tranh tàn tạ thì mới biết hết hoàn cảnh đáng thương của em.\n<div>\n<figure class=\"image\"><img class=\"aligncenter\" src=\"http://caritasvietnam.org/datafiles/img_data/images/DSC02963-Copy.jpg\" alt=\"\" width=\"780\" height=\"520\" /><figcaption><strong>Em Đàm Quang Ánh</strong></figcaption></figure>\n</div>\nCòn rất nhiều trường hợp các em ở những nơi khác như Giáo xứ Chúc A, Giáo xứ Tam Trang thuộc Giáo Phận Hà Tĩnh hay Linh Thủy thuộc Giáo Phận Huế, đang phải chiến đấu với những hoàn cảnh khó khăn khác nhau để được đến trường. Thấy được tinh thần hiếu học của các em và sự nỗ lực của các gia đình, chúng tôi nhận thấy mình cần cố gắng để giúp các em đạt được ước mơ đời mình.\n\nDù còn nhiều khó khăn phía trước nhưng với sự hỗ trợ của Con Đường Sáng và sự cộng tác tích cực của Caritas các giáo phận, mong rằng Con Đường Sáng mãi sáng và chiếu sáng ngày một xa hơn, để chắp cánh cho những ước mơ của các em kém may mắn được thành hiện thực trong cuộc sống.\n\n<strong>Ban Khuyến Học – Caritas Việt Nam</strong>","Ban khuyến học - Caritas Việt Nam: trải nghiệm để chắp cánh ước mơ","","publish","open","open","","ban-khuyen-hoc-caritas-viet-nam-trai-nghiem-de-chap-canh-uoc-mo","","","2019-04-12 18:33:04","2019-04-12 11:33:04","","0","https://tppone.com/demo/caritas/?p=137","0","post","","0"),
("138","1","2019-04-12 18:33:02","2019-04-12 11:33:02","","post5","Chiến dịch nâng cao chất lượng cuộc sống bằng việc đem nước sạch tới các vùng nghèo đói","inherit","open","closed","","post5","","","2019-04-12 20:38:02","2019-04-12 13:38:02","","137","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post5.jpg","0","attachment","image/jpeg","0"),
("140","1","2019-04-12 18:34:47","2019-04-12 11:34:47","<h2>“Tôi tớ của Chúa”</h2>\nCha Vincenzo Bordo là một thừa sai dòng Hiến sĩ Đức Mẹ, được người dân Hàn biết đến với tên tiếng Hàn là cha Kim Ha-jong, nghĩa là “tôi tớ của Chúa”.\n\nViệc được chọn làm người cầm đuốc cho Thế vận hội là điều thật bất ngờ với cha Vincenzo. Một hôm cha Vincenzo nghe điện thoại reo; trả lời điện thoại, cha nghe đầu dây bên kia nói: “Alô, đây là Ủy ban Olimpic của Hàn quốc”. Lập tức cha Vincenzo nghĩ: “Chắc họ biết về kỹ năng đua xe đạp của mình và muốn triệu tập mình vào đội tuyển quốc gia.” Ý nghĩ đó chỉ chợt thoáng qua và rồi một ý nghĩ khác xuất hiện: “Nhưng mà tại Thế vận hội mùa đông thì không có môn đua xe đạp.” Vậy thì chuyện gì đây? Thế là cha chăm chú lắng nghe hơn. Đầu dây bên kia tiếp tục nói: “Tôi gọi cha bởi vì tôi muốn có một trong những người cầm đuốc Thế vận hội.” Cha Vincenzo đáp lời: “Xin lỗi, có thể có sự nhầm lần. Tôi là Vincenzo Bordo và tôi là một người Ý.” Bên kia tiếp tục nói: “Có, chúng tôi biết điều đó.” Cha cũng nói tiếp: “Nhưng tôi là một người ngoại quốc.” Cha nghe họ trả lời: “Chính vì thế mà chúng tôi gọi cha. Tinh thần Thế vận hội là tinh thần huynh đệ toàn cầu và lòng hiếu khách và qua cử chỉ này chúng tôi muốn nói với đồng bào của chúng tôi rằng tất cả những người sống và làm việc ở đây là một phần của dân tộc này, không có sự phân biệt đối xử hay định kiến và họ là một phần của lịch sử tuyệt vời mà chúng ta đang cùng nhau xây dựng.”\n\nVà thật như thế! Sau 29 năm truyền giáo tại Nam Hàn, cha Vincenzo đã được nhập tịch và có quyền công dân, hộ chiếu và cả tên tiếng Hàn. Những hoạt động đặc biệt, sự gần gũi với người nghèo đã giúp cha được người Hàn quốc quý trọng, cảm mến và biết ơn và cha cũng được các tổ chức uy tín nhìn nhận. Do đó, không có gì lạ khi ngay cả Tổng thống Moon Jae-in, một nhà lãnh đạo người Công giáo, cũng muốn trao tặng huy chương dân sự cho “Ngôi nhà Anna” của cha, ngôi nhà do cha thành lập ở thành phố Suwon, nơi mà mỗi ngày, với sự giúp đỡ của hàng chục tình nguyện viên, đón tiếp và cung cấp bữa ăn cho hơn 500 người nghèo, những người bị thiệt thòi và những người nghèo khổ. Tổng thống Moon muốn trao cho cha \"huy chương danh dự quốc gia\" vì sự phục vụ vô vị lợi dành cho những người dễ bị tổn thương nhất và vì lợi ích chung.\n\nCha Bordo kể với báo \"Quan sát viên Roma\" cảm xúc và sự bất ngờ tại buổi lễ được tổ chức vào ngày 26.02 vừa qua (2019) tại Nhà Xanh – Phủ Tổng thống Hàn quốc -  ở Seoul và cho biết: \"Tôi đã yêu cầu Tổng thống Moon phát triển một \"Học viện Hy vọng\", mà qua các cuộc gặp gỡ với những người quan trọng trong công việc phục vụ cộng đồng hoặc tình nguyện, giúp những người trẻ tuổi khám phá lại các giá trị như sự đoàn kết, hiếu khách, phục vụ và tôn trọng”.\n\n<b>“Ngôi nhà Anna”</b>\n\nCha Vincenzo đã thành lập “Ngôi nhà Anna” vào năm 1998, sau cuộc khủng hoảng tài chính châu Á, khi hàng ngàn công dân mất việc và phải sống trên đường phố. Cha chia sẻ: \"Thật không dễ để tìm và gặp những người nghèo mới trong xã hội sang trọng này, thậm chí họ xấu hổ về tình trạng của họ”.  Trong những năm qua, cha Vincenzo đã học cách nhìn để nhận ra có bao nhiêu \"người vô hình trong xã hội Hàn Quốc\", và họ cũng là “người vô hình” ngay cả đối với Giáo hội. Từ thực tế này, cha Vincenzo bắt đầu cuộc hành trình của mình, theo Tin mừng, gần gũi và thương xót. Và giữa sự hoài nghi của mọi người, cha thành lập trung tâm tiếp nhận đầu tiên, với một căng tin nơi cha có thể nuôi người nghèo hàng ngày. Công việc đã phát triển theo năm tháng, nhất là nhờ các nhà tài trợ cá nhân.\n\nNhưng, đi vào trong các khu ổ chuột và các vùng ngoại ô của các thành phố giàu có và hào nhoáng của Hàn Quốc, các nhà truyền giáo còn đụng phải tình trạng chìm đắm của những thanh thiếu niên không có gia đình. Và không dừng lại ở việc quan sát. Cha Vincenzo không chờ đợi họ đến tìm sự giúp đỡ. Cha nói: \"Khi biết rằng có 200.000 thanh thiếu niên sống trên đường phố, tôi không thể tiếp tục chỉ đứng trên bục giảng để giảng về Chúa Giêsu, Đấng đã bỏ 99 con chiên để tìm kiếm một con bị lạc”.\n\nVào chiều tối, cha Vincenzo lái một chiếc xe buýt đặc biệt đi tìm các thanh thiếu niên bị gia đình và xã hội bỏ rơi, những người chạy trốn khỏi mọi người và mọi thứ. Cha Vincenzo cho biết, tại Suwon, \"mỗi năm có khoảng 2000 trẻ em rời khỏi trường học và gia đình. Chỉ một số ít trong số các em được đến các trung tâm tiếp nhận. Những em khác có nguy cơ hủy hoại cuộc đời tươi trẻ của họ trong rượu chè, mại dâm, trộm cắp, bạo lực, ma túy, tội phạm và nhà tù\". Cha đã thành lập một mạng lưới tương trợ, có thể đón nhận, hỗ trợ các em và dần dần tái hòa nhập các em vào bối cảnh của gia đình và xã hội.\n\nHồng Thủy - Vatican","Niềm vui chia sẻ với người vô gia cư của Cha Vincenzo Bordo","","publish","open","open","","niem-vui-chia-se-voi-nguoi-vo-gia-cu-cua-cha-vincenzo-bordo","","","2019-04-12 21:59:11","2019-04-12 14:59:11","","0","https://tppone.com/demo/caritas/?p=140","0","post","","0"),
("141","1","2019-04-12 18:34:44","2019-04-12 11:34:44","","post6","Chiến dịch giúp đỡ những em nhỏ có hoàn cảnh đặc biệt khó khăn","inherit","open","closed","","post6","","","2019-04-12 20:37:37","2019-04-12 13:37:37","","140","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/post6.jpg","0","attachment","image/jpeg","0"),
("174","1","2019-04-12 18:51:30","2019-04-12 11:51:30","","banner-quỹ-khuyến-học","Đóng góp ủng hộ quỹ khuyến học - Caritas Phát Diệm","inherit","open","closed","","banner-quy-khuyen-hoc","","","2019-04-12 20:37:24","2019-04-12 13:37:24","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/banner-quỹ-khuyến-học.jpg","0","attachment","image/jpeg","0"),
("194","1","2019-04-12 19:10:44","2019-04-12 12:10:44","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/xuXAkIyPtF8","Caritas Việt Nam: Nhịp Tim Yêu Thương","","publish","open","open","","caritas-viet-nam-nhip-tim-yeu-thuong","","","2019-04-12 22:24:14","2019-04-12 15:24:14","","0","https://tppone.com/demo/caritas/?p=194","0","post","","0"),
("195","1","2019-04-12 19:10:38","2019-04-12 12:10:38","","images (1)","Chiến dịch giúp các em nhỏ bị bệnh tim có cơ hội được phẫu thuật","inherit","open","closed","","images-1","","","2019-04-12 20:37:10","2019-04-12 13:37:10","","194","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/images-1.jpg","0","attachment","image/jpeg","0"),
("198","1","2019-04-12 19:29:56","2019-04-12 12:29:56","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/bUWQpMwCOlg","Cần lắm một bàn tay yêu thương","","publish","open","open","","can-lam-mot-ban-tay-yeu-thuong","","","2019-04-12 22:24:02","2019-04-12 15:24:02","","0","https://tppone.com/demo/caritas/?p=198","0","post","","0"),
("199","1","2019-04-12 19:29:54","2019-04-12 12:29:54","","doingheo","Gia đình anh Bùi Văn Trường - 1 trong các hộ nghèo tại Phát Diệm","inherit","open","closed","","doingheo","","","2019-04-12 20:36:52","2019-04-12 13:36:52","","198","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/doingheo.jpg","0","attachment","image/jpeg","0"),
("201","1","2019-04-12 19:30:49","2019-04-12 12:30:49","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/7xxIJqUw6W4","ĐTC Phanxicô kêu gọi: Hãy cho kẻ đói ănVideo","","publish","open","open","","dtc-phanxico-keu-goi-hay-cho-ke-doi-anvideo","","","2019-04-12 22:23:49","2019-04-12 15:23:49","","0","https://tppone.com/demo/caritas/?p=201","0","post","","0"),
("202","1","2019-04-12 19:30:45","2019-04-12 12:30:45","","video2","Chiến dịch đẩy lui nạn đói tại Đông Nam Á","inherit","open","closed","","video2","","","2019-04-12 20:36:35","2019-04-12 13:36:35","","201","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/video2.jpg","0","attachment","image/jpeg","0"),
("204","1","2019-04-12 19:31:53","2019-04-12 12:31:53","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/aaEdYSaK7tc","Caritas Xuân Lộc: Ngày Quốc Tế Bệnh Nhân và Mừng Lễ Bổn Mạng","","publish","open","open","","caritas-xuan-loc-ngay-quoc-te-benh-nhan-va-mung-le-bon-mang","","","2019-04-12 22:23:31","2019-04-12 15:23:31","","0","https://tppone.com/demo/caritas/?p=204","0","post","","0"),
("205","1","2019-04-12 19:31:49","2019-04-12 12:31:49","","video3","Caritas Giáo phận Xuân Lộc mừng bổn mạng","inherit","open","closed","","video3","","","2019-04-12 20:36:22","2019-04-12 13:36:22","","204","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/video3.jpg","0","attachment","image/jpeg","0"),
("207","1","2019-04-12 19:32:35","2019-04-12 12:32:35","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/j6jJMstzwJc","Một gia đình nhân loại không còn nghèo đói","","publish","open","open","","mot-gia-dinh-nhan-loai-khong-con-ngheo-doi","","","2019-04-12 22:23:14","2019-04-12 15:23:14","","0","https://tppone.com/demo/caritas/?p=207","0","post","","0"),
("208","1","2019-04-12 19:32:32","2019-04-12 12:32:32","","bua-an-tre-an-do","Chiến dịch đẩy lùi nạn đói tại Châu Phi","inherit","open","closed","","bua-an-tre-an-do","","","2019-04-12 20:36:07","2019-04-12 13:36:07","","207","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/bua-an-tre-an-do.jpg","0","attachment","image/jpeg","0"),
("210","1","2019-04-12 19:33:27","2019-04-12 12:33:27","Có lẽ cuộc sống cần nhiều hơn những trải nghiệm, những quan sát. Những hình ảnh trên ti-vi, những câu chuyện được mô tả cách tỉ mỉ trong truyện, những vần thơ được dệt cách khéo léo trong sách vở cũng không thể nào lột tả hết được cảm xúc chân thật bằng một chuyến đi thực tế, để ta có được những cảm nhận thật đời thường, thật dung dị. Chuyến đi đầy ý nghĩa đến thăm từng gia đình của các em trong chương trình Con Đường Sáng – Caritas Slovakia ở các Giáo phận Thái Bình, Hà Tĩnh và Huế đã mang lại cảm nghiệm đó cho chúng tôi – ban khuyến học Caritas Việt Nam.\n\nhttps://youtu.be/apkXJn_myb8","Caritas Việt Nam: Thánh lễ Khai mạc Hội nghị thường niên 2018Video","","publish","open","open","","caritas-viet-nam-thanh-le-khai-mac-hoi-nghi-thuong-nien-2018video","","","2019-04-12 22:22:40","2019-04-12 15:22:40","","0","https://tppone.com/demo/caritas/?p=210","0","post","","0"),
("211","1","2019-04-12 19:33:24","2019-04-12 12:33:24","Thánh lễ khai mạc Hội nghị thường niên 2018 - Caritas Việt Nam","caritas-viet-nam","Thánh lễ khai mạc Hội nghị thường niên 2018 - Caritas Việt Nam","inherit","open","closed","","caritas-viet-nam-2","","","2019-04-12 20:41:10","2019-04-12 13:41:10","","210","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/caritas-viet-nam.jpg","0","attachment","image/jpeg","0"),
("263","1","2019-04-12 20:27:39","2019-04-12 13:27:39","","chu-de-muc-vu","","inherit","open","closed","","chu-de-muc-vu","","","2019-04-12 20:27:39","2019-04-12 13:27:39","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/chu-de-muc-vu.jpg","0","attachment","image/jpeg","0"),
("283","1","2019-04-12 20:42:01","2019-04-12 13:42:01","[row style=\"large\" class=\"footer-section\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<h3><span class=\"footer-headline\" style=\"font-size: 85%; color: #000000;\">Caritas Phát Diệm</span></h3>\n<ul class=\"level_2 item-list\">\n<li><a href=\"/caritas-phat-diem/\">Chúng tôi là ai?</a></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/caritas-phat-diem/chung-toi-lam-gi/\">Chúng tôi làm gì?</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/caritas-phat-diem/linh-dao-caritas/\">Linh đạo Caritas</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/caritas-phat-diem/dieu-le-quy-dinh/\">Điều lệ, quy định</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/caritas-phat-diem/nghi-thuc-gia-nhap/\">Nghi thức gia nhập</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<h3><span class=\"footer-headline\" style=\"font-size: 85%; color: #000000;\">Hoạt động chính</span></h3>\n<ul class=\"level_2 item-list\">\n<li><a href=\"/hoat-dong/khuyet-tat/\">Khuyết tật</a></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/hoat-dong/bac-ai-di-dan/\">Bác ái di dân</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/hoat-dong/bao-ve-moi-truong/\">Bảo vệ môi trường</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"/hoat-dong/bao-ve-su-song/\">Bảo vệ sự sống</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"/hoat-dong/cuu-tro/\">Cứu trợ</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<h3><span style=\"font-size: 85%;\">Thông tin liên hệ</span></h3>\n<ul>\n<li><span style=\"font-size: 85%;\"><strong>Địa chỉ:</strong> 75 Phát Diệm Đông, Kim Sơn, Ninh Bình</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Điện thoại:</strong> 0909009009</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Email:</strong> webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Website:</strong> <a href=\"http://caritasphatdiem.org\">www.webdemo.com</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<h3><span class=\"footer-headline\" style=\"font-size: 80%; color: #000000;\">Liên kết website</span></h3>\n<ul class=\"level_2 item-list\">\n<li><a href=\"http://phatdiem.org\"><span style=\"font-size: 85%;\">Giáo phận Phát Diệm</span></a></li>\n<li><a href=\"http://bangiaolyphatdiem.com\"><span style=\"font-size: 85%;\">Ban Giáo lý và mục vụ Thiếu Nhi Phát Diệm</span></a></li>\n<li><a href=\"http://gxconthoi.org\"><span style=\"font-size: 85%;\">Giáo xứ Cồn Thoi</span></a></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#top\"><span style=\"color: #ed1c24;\">Lên đầu trang</span></a></span></li>\n</ul>\n\n[/col]\n\n[/row]","Footer section","","publish","closed","closed","","footer-section","","","2019-04-12 21:05:20","2019-04-12 14:05:20","","0","https://tppone.com/demo/caritas/?post_type=blocks&#038;p=283","0","blocks","","0"),
("304","1","2019-04-12 20:48:58","2019-04-12 13:48:58","<strong>Caritas Phát Diệm hoạt động trong những lãnh vực sau:</strong>\n<ul>\n 	<li>Cứu trợ thiên tai: Cứu trợ khẩn cấp và hỗ trợ phục hồi sau thiên tai</li>\n 	<li>Hỗ trợ người nhiễm HIV/AIDS: xây dựng mạng lưới, hình thành và duy trì nhóm tư lực tại các Caritas Giáo phận để hỗ trợ người có H hoà nhập cộng đồng, giảm kỳ thị</li>\n 	<li>Hỗ trợ người người khuyết tật và bệnh nhân phong hòa nhập cộng đồng: thiết lập mạng lưới, nâng cao năng lực cho nhân viên chuyên trách, đồng thời hình thành và phát triển Câu lạc bộ hỗ trợ người khuyết tật tại các Caritas Giáo phận</li>\n 	<li>Khuyến học: Chương trình hỗ trơ học bổng Con Đường Sáng Caritas Việt Nam, Caritas Slovakia nhằm giúp các em ở các vùng sâu vùng xa có điều kiện đến trường</li>\n 	<li>Bác Ái di dân: hỗ trợ trẻ di dân có hoàn cảnh khó khăn thông qua chương trình giáo dục phổ cập; giới thiệu và đồng hành với thực tập sinh lao động tại Nhật Bản</li>\n 	<li> Bảo vệ sự sống: truyền thông và tham vấn để góp phần giảm thiểu tình trạng nạo phá thai đặc biệt nơi người trẻ</li>\n 	<li>Phòng chống buôn người: truyền thông và tham vấn cho ngươi lao động trong việc di cư an toàn để góp phần giảm thiểu số nạn nhân của tệ nạn buôn người</li>\n 	<li>Bảo vệ môi trường: nâng cao nhận thức bảo vệ môi trường và biến đổi khí hậu và khuyến khích bảo vệ ngôi nhà chung theo tinh thần thông điệp Laudato Si’</li>\n 	<li>Chương trình hỗ trợ lắp đặt hệ thống nước sạch tại những vùng sâu vùng xa, nơi nguồn nước bị ô nhiễm</li>\n 	<li>Chương trình trao xe lăn xe lắc và các phương tiện hỗ trợ người khuyết tật, người nghèo người già</li>\n 	<li>Chương trình nhịp tim dành cho trẻ em từ 0 -20 tuổi</li>\n</ul>","Chúng tôi làm gì?","","publish","closed","closed","","chung-toi-lam-gi","","","2019-04-12 22:24:53","2019-04-12 15:24:53","","61","https://tppone.com/demo/caritas/?page_id=304","0","page","","0"),
("306","1","2019-04-12 20:49:10","2019-04-12 13:49:10","<strong>1. Linh đạo là gì?</strong>\nLinh đạo là con đường trong đời sống nội tâm dẫn đưa con người tới cuộc sống có ý nghĩa phong phú và hạnh phúc viên mãn. Linh đạo kết tinh những giáo huấn khôn ngoan, những kinh nghiệm quý báu về tinh thần được hiền nhân bao đời tích lũy và lưu truyền. Nhờ đó, khi sống theo linh đạo, người ta được khai tâm mở trí trên đường tìm về Chân Thiện Mỹ. Họ kín múc từ đó nguồn lực linh thiêng chi phối mọi hoạt động trong đời mình. Linh đạo thường được các tôn giáo truyền dạy và hướng dẫn thực hành.\n\n<strong>2. Linh đạo Ki-tô giáo</strong>\nLinh đạo Ki-tô giáo đặt nền tảng trên giáo huấn và đời sống của Đức Giê-su Ki-tô, Con Thiên Chúa làm người, Thiên Chúa thật và là con người thật. Đức Giê-su là khuôn mặt “hữu hình của Chúa Cha vô hình”, là “Đường, là Sự thật và là Sự sống” (Ga 14,6), dẫn đưa nhân loại đến cùng Thiên Chúa Cha.\n\nKi-tô hữu là người theo linh đạo Ki-tô giáo, tức là bước theo Đức Giê-su Ki-tô, trở nên ‘đồng hình đồng dạng’ với Ngài, chia sẻ chính sức sống của Ngài. Ơn gọi, sứ mạng của Ki-tô hữu là làm môn đệ của Đức Giê-su, làm chứng nhân của Ngài cho trần gian.\n\nTuy cùng theo Đức Giê-su, nhưng qua dòng lịch sử Giáo Hội, đã có những vị thánh, những dòng tu,... vạch ra những ‘đường lối nên thánh’ với điểm nhấn mạnh khác nhau. Người ta cũng gọi những đường lối này là ‘linh đạo’.\n\nDưới sự hướng dẫn của Chúa Thánh Thần, những người theo các linh đạo đó muốn thể hiện một khía cạnh riêng biệt nơi Đức Ki-tô. Mỗi linh đạo là một hướng đi, một cách sống riêng, để đưa các giá trị cao siêu của Tin Mừng thâm nhập và biến đổi từ bên trong những bối cảnh văn hoá, kinh tế, chính trị, xã hội, địa lý khác biệt.\n\nChúa Thánh Thần hằng gìn giữ, hướng dẫn và canh tân Hội Thánh trong cuộc hành trình đức tin trên trần gian này.\nMọi Ki-tô hữu, nhờ bí tích Thánh Tẩy, được mời gọi thực thi sứ mạng của Giáo Hội. Bởi vậy dù theo linh đạo nào, thì sống “linh đạo” phải là ‘sống theo Thần Khí’ (Rm 8,4) và sống trong sự hiệp thông với Hội Thánh. Nói thế có nghĩa là, họ phải sống đức tin, thực thi lòng mến Chúa yêu người theo mẫu gương của Chúa Kitô dưới sự hướng dẫn của Chúa Thánh Thần. Họ phải được Giáo Hội là Mẹ và Thầy dạy dỗ bằng lời giáo huấn và nuôi dưỡng bằng ân sủng của các bí tích và Lời Chúa.\n\n<strong>3. Linh đạo Caritas</strong>\n‘Caritas’ là tiếng La-tinh, có nghĩa là: bác ái, tình yêu rộng lớn. Caritas là tổ chức trong Giáo Hội Công giáo có nhiệm vụ điều phối, cổ võ việc thực thi bác ái xã hội. Vì vậy, Caritas không phải là một cơ quan từ thiện xã hội thuần tuý, và hội viên Caritas cũng không làm việc bác ái với cùng một động lực và ý hướng hay cách thế như một nhân viên công tác xã hội. Như mọi hoạt động của Giáo Hội, hoạt động của Caritas phải được thúc đẩy bởi Chúa Thánh Thần. Do đó, Caritas có một ‘linh đạo’ để hướng dẫn đời sống của người làm công tác bác ái xã hội. Sống “linh đạo Caritas” là sống dưới tác động của Chúa Thánh Thần, Đấng làm cho họ tham dự một cách trung thành và tin tưởng vào sứ mạng của Chúa Ki-tô là yêu thương mọi người, đặc biệt những người nghèo, người đau khổ bệnh tật, người bị bỏ rơi. Lời Chúa, truyền thống và giáo huấn về bác ái của Hội Thánh là suối nguồn cho linh đạo Caritas.\n\n<strong>4. Linh đạo Caritas Việt Nam</strong>\nLà người Việt Nam, chúng ta kế thừa truyền thống đạo đức dân tộc vốn đề cao lòng hiếu thảo, tình gia tộc, tình làng nghĩa xóm, tình đồng hương đồng bào, mối tương thân tương ái, ‘lá lành đùm lá rách’, tôn trọng sự hài hoà, và các sinh hoạt cộng đồng. Hội viên Caritas trân trọng giữ gìn những nét văn hoá đó và làm cho đẹp thêm bằng cách sống linh đạo của mình. Linh đạo Caritas vạch ra cho mọi người con đường nên thánh bằng cách nhờ ánh sáng và sức mạnh của Chúa Thánh Thần, sống và trở nên hiện thân của tình yêu Thiên Chúa Ba Ngôi trong xã hội Việt Nam ngày hôm nay.\n\nNền tảng linh đạo này là tình yêu của Thiên Chúa Ba Ngôi: Chúa Cha, Chúa Con và Chúa Thánh Thần. “Thiên Chúa là Tình Yêu. Mọi sự đều bắt nguồn từ tình yêu Thiên Chúa, mọi sự đều được định hình bởi tình yêu ấy, và mọi sự đều quy hướng về tình yêu ấy.”  Để hiểu biết tình yêu Thiên Chúa, hội viên Caritas Việt Nam được mời gọi chiêm ngưỡng và bắt chước Chúa Giê-su Ki-tô, Hiện Thân Tình Yêu Chúa trên trần gian. Nơi Ngài, chúng ta nhận ra:\nMột Thiên Chúa Nhập Thể luôn sẵn sàng ra khỏi chính mình:\n\n-    sẵn sàng tự hạ và hủy mình ra không,\n-    tự đồng hoá mình với người hèn mọn,\n-    để cho con người được làm con Thiên Chúa;\n\nMột Thiên Chúa hiệp thông:\n-    nên một với Chúa Cha và Chúa Thánh Thần,\n-    “hy sinh thân mình, phá đổ bức tường ngăn cách là sự thù ghét” (Ep 2,14),\n-    để quy tụ nhân loại vào trong gia đình Thiên Chúa;\n\nMột Thiên Chúa Tình Yêu quyết định trở nên người nghèo:\n-    gần gũi với tội nhân và kẻ khốn cùng,\n-    hiến thân chịu chết trên cây thập giá,\n-    để cho muôn người được “sống và sống dồi dào” (Ga 10,10).\n\nĐiều rất quan trọng là người hội viên phải sống kết hiệp với Chúa Giê-su Ki-tô, cách riêng, gặp gỡ Ngài trong bí tích Thánh Thể, để Ngài đổi mới tâm hồn và thúc đẩy họ làm sứ giả tình yêu và chứng nhân Tin Mừng của Ngài. Hội viên Caritas hoạt động mở Nước Chúa ở khắp mọi nơi và cho mọi người nhưng đối tượng Caritas phục vụ cách đặc biệt là người nghèo, nghèo về vật chất cũng như tinh thần. Việc bác ái trong Caritas, kế thừa truyền thống thực thi bác ái và dựa trên học thuyết xã hội của Hội Thánh, là việc bác ái có tổ chức nằm trong cơ cấu của Hội Thánh địa phương cũng như Hội Thánh toàn cầu.","Linh đạo Caritas","","publish","closed","closed","","linh-dao-caritas","","","2019-04-12 22:29:56","2019-04-12 15:29:56","","61","https://tppone.com/demo/caritas/?page_id=306","0","page","","0"),
("308","1","2019-04-12 20:49:20","2019-04-12 13:49:20","<strong>QUY CHẾ CARITAS VIỆT NAM</strong>\n\n<strong>Logo Caritas Việt Nam</strong> (x. Quy Chế, điều 4)\nLogo Caritas gồm hình Thánh Giá với các ngọn lửa màu đỏ toả ra xung quanh và phía dưới là dòng chữ Caritas Việt Nam.\nRất nhiều tổ chức Caritas quốc gia đã dùng hình ảnh này theo ý nghĩa sau đây: Thánh Giá là trung tâm điểm của mọi hoạt động bác ái vì việc hiến thân trên thập giá của Đức Giêsu Kitô là hành động yêu thương cao cả nhất mà Người thực hiện cho Thiên Chúa và cho con người.\nChiều dọc của Thánh Giá tượng trưng sự liên kết của con người với Thiên Chúa, chiều ngang nói lên trách nhiệm của con người đối với nhau trong xã hội (x. 1Ga 4,20-21). Hai chiều này cần tương ứng với nhau. Những ngọn lửa lan toả ra từ Thánh Giá biểu lộ tác động của Chúa Thánh Thần: “Tình yêu Đức Kitô thúc bách tôi” (x. 2 Cr 5,14). Người thôi thúc mọi thành viên Caritas thực hiện việc bác ái để phục vụ anh chị em đồng loại.\n\n<strong>Nền tảng Thánh Kinh và thần học của hoạt động bác ái xã hội </strong>(x. Quy Chế, điều 5)\nCaritas Việt Nam hoạt động dựa trên những đòi hỏi của Tin Mừng, để góp phần xây dựng một xã hội công bằng, liên đới và huynh đệ, trong đó quyền lợi và nhu cầu của người nghèo được tôn trọng cách xứng đáng.\nCaritas Việt Nam dựa trên mấy suy tư căn bản về Thánh Kinh và Thần học sau đây:\n1. Thiên Chúa Cha, Đấng hằng yêu thương và giàu lòng thương xót, là nguồn năng lực của  Caritas.\n2. Đức Kitô và sứ điệp của Người là mục đích và sự cổ vũ cho Caritas\n3. Chúa Thánh Thần là nguồn sức mạnh của Caritas\n4. Giáo Hội là gương mẫu sinh hoạt của Caritas\n5. Người tín hữu tham gia hoạt động Caritas là người sống mầu nhiệm tình yêu của Ba Ngôi Thiên Chúa để tìm được năng lực nơi Chúa Cha, sự phục vụ như Chúa Kitô, sức mạnh của Chúa Thánh Thần và sự hiệp thông với Giáo Hội.\n\n<strong>Mục đích </strong>(x. Quy Chế, điều 6)\nDưới sự chỉ đạo của HĐGMVN, Caritas Việt Nam thực hiện các hoạt động bác ái xã hội theo những mục đích sau:\n1. Thăng tiến và phát triển con người toàn diện.\n2. Sống Phúc Âm giữa lòng dân tộc.\n3. Phát huy tình yêu thương bác ái, liên đới giữa mọi người trong xã hội.\n4. Giúp đỡ khẩn cấp khi có thiên tai hay dịch bệnh.\n\n<strong>Tôn chỉ </strong>(x. Quy Chế, điều 7)\nCaritas Việt Nam hoạt động theo những tôn chỉ sau:\n1. Bảo vệ nhân phẩm và sự sống con người, nhất là người nghèo khổ, yếu kém trong xã hội.\n2. Dấn thân hoạt động để xây dựng xã hội trong công lý và hoà bình.\n3. Cổ vũ tình liên đới để phát triển các mối quan hệ tốt đẹp giữa các dân tộc trong gia đình nhân loại.\n\n<strong>Đối tượng phục vụ </strong>(x. Quy Chế, điều 8)\nĐối tượng phục vụ của Caritas Việt Nam là người nghèo. Họ là những người thiếu thốn về vật chất và tinh thần, không đủ phương tiện để sống, bị gạt ra bên lề xã hội vì bất cứ lý do gì. Họ là những người bị bỏ rơi, trẻ em mồ côi, trẻ em đường phố, những người mù chữ, những người hành nghề không xứng với nhân phẩm của mình, phụ nữ bị bạo hành trong gia đình, những di dân nghèo khổ… Họ là những người bệnh tật: khuyết tật, bệnh nhân tâm thần, phong cùi, nghiện ma tuý, nghiện rượu, nhiễm HIV/AIDS, nhiễm chất độc màu da cam…\n\n<strong>Sứ mạng </strong>(x. Quy Chế, điều 9)\nCaritas Việt Nam có nhiệm vụ giúp HĐGMVN thực hiện các công tác bác ái xã hội theo các mục đích và tôn chỉ trên.\n- Hợp tác với các tổ chức từ thiện bác ái trong cũng như ngoài nước để thực hiện các hoạt động bác ái xã hội.\n- Phối hợp với Caritas các giáo phận để tổ chức các hoạt động bác ái xã hội, thực hiện các chương trình và dự án theo kế hoạch đề ra.\n\n<strong>Nguyên tắc hoạt động  </strong>(x. Quy Chế, điều 10)\nCaritas Việt Nam hoạt động theo những nguyên tắc đạo đức Kitô giáo và Giáo huấn Xã hội của Giáo hội Công giáo.\nCaritas Việt Nam hoạt động theo nhu cầu. Caritas Việt Nam là một tổ chức tự nguyện đảm nhận các công tác xã hội. Caritas Việt Nam cứu trợ những người nghèo khổ, tật bệnh hay gặp hoàn cảnh khốn cùng, không phân biệt tôn giáo, quốc gia, chủng tộc, chính trị.\nCaritas Việt Nam là một tổ chức bác ái xã hội chuyên nghiệp. Việc quản trị phải chặt chẽ, trong sáng, minh bạch, công khai và có hiệu quả cao.\nCaritas Việt Nam là một tổ chức hợp nhất trong đa dạng, mọi hoạt động của Caritas dựa trên sự cộng tác, tham gia và đóng góp tự nguyện của các thành viên. Theo nguyên tắc bổ trợ, Caritas Việt Nam vẫn tôn trọng sự dấn thân và tính độc lập của các giáo phận, giáo xứ, hiệp hội, đoàn thể và cá nhân. Caritas Việt Nam luôn sát cánh với các cơ quan từ thiện khác.\n\n<strong>Cơ cấu tổ chức Caritas Việt Nam  </strong>(x. Quy Chế, điều 11)\nTổ chức Caritas Việt Nam ra đời nhằm phối hợp cách hữu hiệu những hoạt động của các tín hữu Công giáo và mọi người thiện chí để thực hiện các mục đích nêu trên.\na. Ban Thường Trực ở Caritas Trung ương gồm:\n+  Chủ tịch\n+ Tổng Thư ký với Văn phòng Tổng Thư ký gồm Thư ký Thường trực, các chuyên viên, cố vấn (pháp luật, kinh tế, chính trị) để hoạch định kế hoạch, chính sách và đường hướng hoạt động cụ thể cho Caritas trong từng thời kỳ.\n+ Các phòng ban chuyên môn: y tế cộng đồng, cứu trợ, phát triển, giáo dục đào tạo, truyền thông, đối ngoại, tài chính, quản lý nhân sự. Các văn phòng này được lập ra theo nhu cầu hoạt động.\n- Y tế cộng đồng: thực hiện chương trình chăm lo sức khoẻ cộng đồng cho người nghèo qua các hoạt động như khám bệnh, truyền thông sức khoẻ.\n- Cứu trợ: thực hiện các chương trình cứu trợ khẩn cấp cho những nạn nhân thiên tai, dịch bệnh, các nạn nhân xã hội (HIV/AIDS, nghiện ma tuý, nghiện rượu, bệnh xã hội), nhận các nguồn hàng cứu trợ và chuyển đến các nạn nhân, điều phối tình nguyện viên cho các hoạt động cứu trợ.\n- Giáo dục đào tạo: thực hiện các chương trình nâng cao nhận thức về bác ái xã hội; các chương trình giáo dục đào tạo cho người nghèo như xoá mù chữ; dạy nghề; cấp học bổng cho học sinh nghèo, người khuyết tật, người thiểu số nghèo; tổ chức các lớp tập huấn về các kỹ năng xã hội, các buổi nói chuyện chuyên đề.\n- Truyền thông: thông tin các hoạt động của Caritas qua các bản tin gửi đến các giáo phận và giáo xứ hay trên trang web, in ấn các tài liệu cho các cuộc vận động quyên góp gây quỹ, lập danh bạ các tổ chức bác ái xã hội trong giới Công giáo, thu nhận và xử lý các dữ liệu về xã hội để cung cấp cho các hoạt động của các phòng ban.\n- Phát triển: nghiên cứu, soạn thảo và thực hiện các dự án phát triển cộng đồng cho người nghèo như nguồn nước sạch, tín dụng nhỏ… kiểm tra, đánh giá hiệu quả các dự án và các chương trình phát triển của các phòng ban khác.\n- Đối ngoại: liên lạc với các tổ chức trong và ngoài nước, tiếp đón các đoàn khách.\n- Tài chính: phụ trách tất cả các công tác tài chính kế toán, lưu trữ sổ sách, hồ sơ, tài liệu, thủ thư.\n- Quản lý nhân sự: phụ trách công tác tuyển chọn và điều phối nhân sự, đào tạo chuyên môn, quản lý hồ sơ nhân sự, phụ trách công đoàn.\nb. Caritas Giáo phận gồm: Trưởng ban Caritas Giáo phận và các Thư ký trong các Văn phòng trực thuộc.\nc. Caritas Giáo xứ gồm: vị trưởng ban và các thành viên.\nTrong Đại hội lần thứ X của HĐGMVN tổ chức tại Hà Nội, từ ngày 08-10 đến 12-10-2007, HĐGMVN đã bầu ra vị Chủ tịch mới của Caritas Việt Nam là Đức Cha Đaminh Nguyễn Chu Trinh cho nhiệm kỳ 2007-2010 và vị Tổng Thư ký được Đức Cha Chủ tịch chỉ định là Linh mục Antôn Nguyễn Ngọc Sơn. (Hiện nay Đức Cha Tôma Vũ Đình Hiệu làm Chủ tịch và Lm. Vinh Sơn Vũ Ngọc Đồng, SBD làm Tổng Thư ký).\n\n<strong>Cơ cấu điều hành Caritas Việt Nam  </strong>(x. Quy Chế, điều 12)\nCaritas Việt Nam được điều hành bởi Hội đồng Quản trị và Hội đồng Đại biểu.\n1. Hội đồng Quản trị gồm:\n- Đức cha Chủ tịch UBBAXH đồng thời là Chủ tịch Caritas Việt Nam. Ngài điều hành tổng quát mọi tổ chức hoạt động bác ái xã hội tại Việt Nam và chỉ định Tổng thư ký.\n- 1 Tổng Thư ký: Tổng Thư ký giúp Đức cha trong việc quản lý, điều hành những sinh hoạt bác ái xã hội tại Việt Nam.\n- 3 đại diện của Caritas Giáo phận (mỗi Giáo tỉnh 1 người).\n- 2 đại diện dòng tu nam, nữ.\n- 1 tình nguyện viên (giáo dân).\nHội đồng Quản trị họp 3 tháng 1 lần và khi có nhu cầu cần thiết.\n2. Hội đồng Đại biểu gồm:\n- Đức cha Chủ tịch.\n- Tổng Thư ký.\n- 27 Trưởng ban Caritas giáo phận.\n- Các Trưởng văn phòng: y tế cộng đồng, cứu trợ, phát triển, giáo dục đào tạo, truyền thông, đối ngoại, tài chính và quản lý nhân sự.\n- 4 đại diện các dòng tu nam nữ (2 nam, 2 nữ).\n- 2 đại diện của tình nguyện viên.\nHội đồng Đại biểu họp mỗi năm 1 lần và khi có nhu cầu cần thiết. Hội đồng đại biểu Caritas Việt Nam bầu ra 3 vị đại diện Caritas giáo phận và 2 vị đại diện dòng tu, 1 tình nguyện viên (giáo dân) vào Hội đồng Quản trị theo nhiệm kỳ 3 năm.\nCác quyết định của Caritas Việt Nam phải được đa số quá bán thành viên tham dự chấp thuận.\n\n<strong>Hoạt động của Caritas các cấp  </strong>(x. Quy Chế, điều 13)\nCaritas Trung ương:\n\n- HĐGMVN bầu vị Chủ tịch Caritas Việt Nam.\n- ĐGM Chủ tịch chỉ định Tổng Thư ký.\n- Hội đồng Đại biểu bầu ra các phòng ban phụ trách.\n- Caritas Trung ương nghiên cứu các vấn đề xã hội, đề xuất những dự án, thực hiện hay hỗ trợ các hoạt động bác ái xã hội trên toàn quốc.\n- Giám định và lượng giá những dự án hoạt động xã hội.\n- Caritas Trung ương sẽ hỗ trợ tinh thần, vật chất khi địa phương có những nhu cầu cần thiết hoặc gặp thiên tai, hoạn nạn.\n- Tổ chức và hỗ trợ các khoá đào tạo, huấn luyện chuyên nghiệp hay thường huấn cho Caritas Trung ương và Caritas Giáo phận.\n- Hợp tác chặt chẽ với Caritas Quốc tế nhằm phát triển và đáp ứng những nhu cầu cần thiết trên thế giới.\n- Hợp tác với các tổ chức hoạt động từ thiện xã hội khác trong và ngoài nước.\n\nCaritas Giáo phận:<strong>    </strong>\n- Đức Giám mục giáo phận chỉ định linh mục, tu sĩ, hay giáo dân làm trưởng ban Caritas Giáo phận. Trưởng ban Caritas Giáo phận điều hành văn phòng Caritas Giáo phận và những sinh hoạt bác ái xã hội của giáo phận.\n- Văn phòng Caritas Giáo phận gồm 1 hoặc 2 chuyên viên Caritas thường trực. Để các Caritas Giáo phận đi vào hoạt động trong những bước đầu, Caritas Trung ương sẽ cung cấp những thiết bị văn phòng và hỗ trợ tiền lương cho các chuyên viên này trong 2 hoặc 3 năm đầu. Sau đó, Caritas Giáo phận sẽ tự đảm nhận.\n- Caritas Giáo phận nghiên cứu các vấn đề xã hội của giáo phận, đề xuất những dự án, thực hiện các hoạt động bác ái xã hội của giáo phận.\n- Caritas Giáo phận thường xuyên thông tin định kỳ hằng quý (3 tháng) về các hoạt động cho Caritas Trung ương, để được hỗ trợ kịp thời hoặc liên kết các chương trình, nhằm nâng cao các hoạt động bác ái xã hội trong giáo dân. (Đề nghị: để thông tin được nhanh chóng và tiện lợi, mỗi Caritas Giáo phận cần lập một địa chỉ Email).\n- Tổ chức các khoá huấn luyện theo chuyên đề phù hợp với nhu cầu của giáo phận.\n- Cộng tác với các tổ chức hoạt động xã hội khác trong phạm vi giáo phận.\nỞ giáo hạt (nếu có)\n- Linh mục hạt trưởng chỉ định vị trưởng ban Caritas Giáo hạt.\n- Vị trưởng ban Caritas Giáo hạt điều hành những sinh hoạt, hoạt động bác ái trong giáo hạt thông qua cha hạt trưởng.\nỞ giáo xứ:\n- Linh mục quản xứ chỉ định vị trưởng ban giáo xứ.\n- Vị trưởng ban Caritas Giáo xứ có thể là người trong hội đồng mục vụ giáo xứ hay ban hành giáo.\n- Vị trưởng ban điều hành những sinh hoạt, hoạt động bác ái xã hội trong giáo xứ thông qua cha xứ.\n- Mọi tín hữu trong giáo xứ có thể tham gia các hoạt động bác ái của Caritas giáo xứ trong khi vẫn là thành viên của các đoàn thể khác.\n- Nếu muốn tham gia một cách chính thức và lâu dài, người tín hữu có thể đăng ký làm hội viên của Caritas Việt Nam và được Văn phòng Caritas Trung ương cấp Thẻ Hội viên.\n\nTình nguyện viên của Caritas Việt Nam\nCaritas Việt Nam không chỉ là một tổ chức bác ái xã hội theo nghĩa thông thường, nhưng còn là một đoàn thể Công giáo Tiến hành để giúp người tín hữu sống tình bác ái của Chúa Kitô và loan báo Tin Mừng cứu độ cho mọi người. Vì thế, Giáo Hội toàn cầu và Hội đồng Giám mục Việt Nam khuyến khích tín hữu tham gia vào hoạt động này như một hội viên.\nTuy nhiên, những hội viên còn được mời gọi để thể hiện tình bác ái của Đức Kitô một cách thiết thực qua những công tác tự nguyện do Caritas Trung ương hay do Caritas Giáo phận phát động. Thí dụ như: đến một cơ sở bác ái để chăm sóc những người già, người bệnh hay trẻ mồ côi hoặc tham gia một chiến dịch xoá mù chữ ở một buôn làng nào đó. Họ trở thành những tình nguyện viên của Caritas Việt Nam.\nMỗi tình nguyện viên có thể đăng ký tham gia các hoạt động bác ái xã hội tuỳ theo khả năng của mình và được hưởng các quyền lợi thiêng liêng và vật chất như các hội viên của Caritas Việt Nam.\n\n<strong>Nhiệm kỳ  </strong>(x. Quy Chế, điều 14)\nNhiệm kỳ của vị Giám mục Chủ tịch Caritas thường là 3 năm và có thể được bầu lại trong đại hội của HĐGMVN. Nhiệm vụ của Giám mục Chủ tịch chấm dứt khi HĐGMVN thay đổi vị giám mục đặc trách Caritas Việt Nam, nhưng vị này sẽ xử lý thường vụ cho đến khi bàn giao cho vị chủ tịch mới.\nNhiệm kỳ của Tổng Thư ký, Phó Tổng Thư ký, Thủ quỹ cũng như các thành viên trong các phòng ban kết thúc khi vị chủ tịch bổ nhiệm những người mới vào các chức vụ này.\n\n<strong>Quỹ hoạt động  </strong>(x. Quy Chế, điều 15)\nQuỹ hoạt động của Caritas Việt Nam hình thành từ sự đóng góp tự nguyện của các hội viên, các ân nhân và các tổ chức trong cũng như ngoài nước.\nQuỹ này bao gồm tất cả nguồn nhân lực, vật lực, tình yêu của con người cũng như ân sủng, quyền năng và nhất là tình thương của Thiên Chúa mà con người có thể đóng góp vào để thể hiện lòng bác ái cho nhau.\nTrong tinh thần tự lập và tự trọng, HĐGMVN khuyến khích tổ chức Caritas Việt Nam dựa vào nội lực của đồng bào Việt Nam để thực hiện các dự án bác ái xã hội và vươn tới việc có thể trợ giúp những người nghèo, nạn nhân thiên tai hay dịch bệnh ở nước ngoài.\nHội viên Caritas trong giáo xứ đóng góp tiền bạc hay vật dụng để lập thành quỹ sinh hoạt tại giáo xứ. 50% khoản tiền thu được của Caritas Giáo xứ được dùng để phục vụ nhu cầu người nghèo ở địa phương, cứu trợ khẩn cấp, trả lương văn phòng. 50% số tiền còn lại sẽ góp về Caritas Giáo phận để thực hiện các dự án bác ái xã hội của giáo phận, trả lương văn phòng.\nĐể Caritas Trung ương có thể hoạt động lâu dài và hữu hiệu, mỗi năm vào Mùa Chay sẽ phát động chiến dịch quyên góp tự nguyện tại các giáo xứ cho quỹ của Caritas Trung ương.\nTất cả các tổ chức hay cá nhân trong và ngoài nước có thể đóng góp cho hoạt động xã hội của Caritas Việt Nam, miễn là sự đóng góp đó không bắt nguồn từ những hành động ngược với đạo lý con người hay Giáo lý của Giáo hội Công giáo.\n\n<strong>Việc ban hành Quy chế </strong>\nQuy chế này được Hội đồng đại biểu Caritas biểu quyết chấp thuận trong phiên họp ngày 23-10-2008, tại Toà Giám mục Xuân Lộc.\nQuy chế này được áp dụng tạm thời trong thời hạn 6 tháng, sau đó sẽ được đệ trình lên HĐGM VN để được phê chuẩn và chính thức ban hành.\n\n<strong>Việc sửa đổi Quy chế</strong>\nQuy chế này gồm 17 điều. Mọi thay đổi trong Quy chế này phải được Hội đồng đại biểu chấp thuận và được sự chuẩn nhận của HĐGM VN.\n\nLàm tại Xuân Lộc, ngày 24-11-2008\nTM. HỘI ĐỒNG GIÁM MỤC VIỆT NAM\nTM. CARITAS VIỆT NAM\n\n<strong>NỘI QUY DÀNH CHO HỘI VIÊN CARITAS VIỆT NAM</strong>\n\n<strong>Điều 1. Linh đạo bác ái</strong>\nLinh đạo này rút ra từ giáo huấn của Công đồng Vatican II, từ bản Tóm lược Học thuyết Xã hội của Giáo hội Công giáo, do Hội đồng Giáo hoàng Công lý và Hoà bình ban hành, năm 2004, nhất là từ Thông điệp Deus Caritas est (x. TĐ. Thiên Chúa là Tình yêu) của ĐTC Bênêđictô XVI, công bố ngày 25-12-2005.\nHội viên Caritas được mời gọi sống triệt để «tinh thần bác ái». Bác ái là tình yêu thương, là sự chia sẻ, quan tâm đến đau khổ, thiếu thốn về mặt vật chất và tinh thần của từng cá nhân. Bác ái là điều răn mang tính xã hội cao cả nhất. Bác ái là tôn trọng người khác và các quyền lợi của họ.\n\nViệc liên đới với người nghèo và dấn thân phục vụ họ theo giáo huấn và gương sống của Đức Giêsu là một trách nhiệm của người Kitô hữu, đồng thời là sứ mệnh căn bản của Giáo Hội. Thực thi đức ái Kitô giáo trước hết là lời đáp trả trực tiếp và khẩn cấp trong những hoàn cảnh cụ thể: cho người đói có lương thực, người trần truồng có áo quần, người bệnh được chữa trị chăm sóc… (x. Mt 25,40). Qua sự dấn thân phục vụ những anh chị em bé mọn nhất, con người sẽ gặp gỡ được chính Đức Giêsu, và trong Đức Giêsu con người sẽ gặp gỡ Thiên Chúa là nguồn tình yêu vì «Yêu người là con đường dẫn đến Thiên Chúa, và quay lại với tha nhân sẽ làm cho chúng ta ra mù loà không gặp được Ngài» (x. TĐ. Thiên Chúa là Tình yêu, số 16).\n\nHội viên Caritas trước tiên là người được tình yêu Đức Kitô chinh phục. Khởi đi từ cuộc gặp gỡ với Đức Kitô, họ có thể trao ban tình yêu này cho những anh chị em đồng loại qua những việc bác ái. «Tình yêu Đức Kitô thúc bách tôi» (2 Cr 5,14). Thật vậy, con người có khả năng nhận ra tình yêu Thiên Chúa và đáp lại tình yêu đó. Vì thế, cách nhìn của họ về người khác không chỉ xuất phát từ tình cảm tự nhiên, nhưng từ cách nhìn của Đức Kitô để khám phá ra hình ảnh Thiên Chúa nơi những người mình phục vụ. «Chỉ có việc phục vụ tha nhân mới mở mắt cho tôi thấy điều Thiên Chúa làm cho tôi và Người đã yêu tôi như thế nào» (x. TĐ. Thiên Chúa là Tình yêu, số 18).\n\nNhư thế, mến Chúa và yêu người không thể tách rời nhau. Tình yêu bác ái được trao tặng cách nhưng không cho những con người cụ thể, đặc biệt cho những người sống bên lề xã hội, không phân biệt màu da, chủng tộc, ngôn ngữ, tôn giáo, chính trị. Nó không phải là phương tiện để chiêu dụ tín đồ như một ít người đã hiểu lầm.\n\nTình yêu tha nhân bắt nguồn từ tình yêu Thiên Chúa, trước tiên là trách nhiệm của từng người Kitô hữu, nhưng cũng là trách nhiệm của toàn thể cộng đồng Giáo Hội. Vì thế, Giáo Hội là chủ thể trực tiếp chịu trách nhiệm những hoạt động bác ái. Caritas là một tổ chức của Giáo Hội nhằm khơi dậy ý thức về tình bác ái yêu thương nơi mọi người trong xã hội, từ đó dẫn đến những hoạt động thiết thực giúp đỡ nhau (x. TĐ. Thiên Chúa là Tình yêu, số 20).\nNhững hội viên Caritas sẽ được đào tạo về chuyên môn với những kỹ năng nghiệp vụ để hoạt động bác ái hiệu quả hơn (x. TĐ. Thiên Chúa là Tình yêu, số 31a). Nhưng trên hết mọi sự, họ phải luôn noi gương Đức Giêsu sống khiêm tốn «chúng tôi là những đầy tớ vô dụng» (Lc 17,10). Họ phải luôn xác tín rằng: khả năng giúp đỡ người khác là một hồng ân của Thiên Chúa, chứ không phải là công đức và sự nghiệp của bản thân (x. TĐ. Thiên Chúa là Tình yêu, số 35). Họ là những công cụ mà Thiên Chúa dùng để trao ban tình thương của Ngài. Muốn được như vậy, họ cần phải có một tâm hồn cầu nguyện liên lỉ, gắn bó với Đức Giêsu Kitô.\n\nĐức Giêsu dạy chúng ta rằng «luật căn bản để hoàn thiện con người và qua đó để biến đổi thế giới là điều răn mới về tình yêu» (x. Mt 22,40; Ga 15,12; CĐ. Vatican II Gaudium et Spes, số 38). Hành vi cá nhân sẽ mang trọn vẹn tính người khi nó được phát sinh từ tình yêu, biểu lộ tình yêu và hướng về tình yêu. Trong phạm vi xã hội, sự thật này cũng y như vậy. Các Kitô hữu cần phải là những nhân chứng xác tín sâu xa về tình yêu, và qua cuộc sống của mình, họ cần chứng tỏ rằng tình yêu là động lực duy nhất (x. 1 Cr 12,31.14,1) để dẫn đến sự hoàn thiện bản thân và xã hội (x. Tóm lược Học Thuyết Xã hội, số 580).\nTheo linh đạo này, mỗi hội viên Caritas trở thành người xây dựng nền văn minh tình yêu.\n\n<strong>Điều 2. Tổ chức đời sống</strong>\nMỗi hội viên Caritas được mời gọi tổ chức đời sống theo linh đạo bác ái trên đây.\n*  Mỗi ngày:\n- Linh mục tham gia vào các chương trình bác ái xã hội của Caritas Trung ương, giáo phận hay giáo xứ khuyến khích các tín hữu thể hiện lòng bác ái với người khác.\n- Mỗi tín hữu dâng 1 kinh bất kỳ (Lạy Cha, Kính Mừng, Sáng Danh, Một thời để yêu và một thời để sống….) cầu cho nhiều người sống tinh thần bác ái.\n- Tập thể hiện lòng yêu thương chân thành, quảng đại cho người khác bằng một nụ cười, một lời hỏi thăm, khích lệ, một câu xin lỗi…\n* Mỗi tháng:\n- Dành từ 1 đến 2 giờ làm một công việc cụ thể giúp đỡ những người nghèo khổ trong địa phương mình.\n- Họp Caritas giáo xứ (1 giờ) nhằm trao đổi, học hỏi, cùng giúp nhau tiến tới.\n* Mỗi năm: Họp Caritas Giáo phận để tổng kết và hoạch định kế hoạch năm mới. Có thể dành vài ngày cùng tĩnh tâm chung.\n\n<strong>Điều 3. Quyền lợi</strong>\n* Về mặt thiêng liêng: tại Caritas Trung ương mỗi ngày có một Thánh lễ cầu cho các hội viên Caritas còn sống hay đã qua đời.\nHội viên Caritas được hưởng các ơn ích thiêng liêng từ các Thánh lễ và lời kinh mỗi ngày do các hội viên cùng thực hiện.\n* Về mặt đào tạo:  hội  viên  Caritas được tham dự các khoá đào tạo nhân bản, đạo đức, chuyên môn… để có khả  năng sống  và thực hiện các công tác  bác ái xã hội.\n* Về mặt xã hội: hội viên Caritas được ưu tiên đón tiếp và trú ngụ trong các hội sở của Caritas trên toàn quốc.\nKhi gặp hoạn nạn khó khăn, hội viên Caritas nhận được sự trợ giúp của các hội viên Caritas khác trong tinh thần tương thân tương ái.\nSau một thời gian phục vụ lâu dài, hội viên Caritas được săn sóc, nuôi dưỡng khi về già và được giúp đỡ an táng khi qua đời.\n\n<strong>Điều 4. Nhiệm vụ</strong>\n1. Về mặt tinh thần\n- Sống liên đới với các hội viên Caritas qua việc tham dự Thánh lễ, cầu nguyện, tương trợ.\n-Tự rèn luyện để trở thành một hội viên Caritas có nhiều khả năng phục vụ qua việc tham gia các khoá đào tạo của Caritas nhằm thăng tiến bản thân và làm cho thế giới mỗi ngày một tốt đẹp hơn.\n- Mời gọi các bạn trẻ tham gia chương trình bác ái xã hội qua các phương tiện truyền thông.\n2. Về mặt vật chất\n- Kết hợp với Chúa Giêsu trong cuộc khổ nạn bằng việc giảm bớt chi tiêu không cần thiết hay nguy hại để góp vào quỹ bác ái chung ở giáo xứ.\n- Hằng năm, vào Mùa Chay, hội viên Caritas hưởng ứng việc quyên góp cho quỹ bác ái của Caritas Trung ương hay Caritas Giáo phận để thực hiện các dự án chung.\n\n<strong>Điều 5. Tìm hiểu và gia nhập Caritas Việt Nam</strong>\nMọi người đều có thể tham gia vào Caritas Việt Nam mà không phân biệt chủng tộc, tôn giáo, chính trị. Để trở thành hội viên của Caritas Việt Nam, ứng viên được đề nghị tìm hiểu về Caritas trong một thời gian và tập làm quen với những sinh hoạt bác ái tại giáo xứ.\nGiáo xứ có thể tổ chức khoá huấn luyện cho các ứng viên này.\nMỗi ứng viên chính thức viết đơn xin gia nhập hiệp hội Caritas và gửi về văn phòng Caritas Giáo phận cũng như thông báo về Caritas Trung ương. Thẻ hội viên sẽ được cấp phát cho những hội viên đủ điều kiện. Linh mục phụ trách Caritas giáo xứ có thể tổ chức một vài ngày tĩnh tâm cho các ứng viên. Nghi thức gia nhập có thể được cử hành trong Thánh lễ để nói lên tính trang trọng và sự dấn thân của hội viên với Chúa Giêsu. Thẻ hội viên được phát trong nghi thức gia nhập.\n\n<strong>Điều 6. Việc ban hành Nội quy</strong>\nNội quy này được Hội đồng đại biểu Caritas biểu quyết chấp thuận trong phiên họp ngày 23-10-2008, tại Toà Giám mục Xuân Lộc.\n\n<strong>Điều 7. Việc sửa đổi Nội quy</strong>\nNội quy này gồm 6 điều. Mọi thay đổi trong Nội quy này phải được Hội đồng đại biểu chấp thuận và được sự chuẩn nhận của HĐGM VN.\n\nLàm tại Xuân Lộc, ngày 24-11-2008\nTM. HỘI ĐỒNG GIÁM MỤC VIỆT NAM\nTM. CARITAS VIỆT NAM","Điều lệ, quy định","","publish","closed","closed","","dieu-le-quy-dinh","","","2019-04-12 22:33:51","2019-04-12 15:33:51","","61","https://tppone.com/demo/caritas/?page_id=308","0","page","","0"),
("310","1","2019-04-12 20:49:31","2019-04-12 13:49:31","<strong>NGHI THỨC GIA NHẬP HỘI VIÊN CARITAS VIỆT NAM</strong>\n\n<strong>Cử hành ngoài Thánh lễ</strong>\n\n1.    Dấu Thánh Giá (CĐ đứng)\n\n2.    Khẩn cầu Chúa Thánh Thần\n\n-    ND: Chúng ta khẩn cầu Chúa Thánh Thần ngự xuống trên cộng đoàn chúng ta, cách riêng trên những anh chị em sắp trở thành Hội viên Caritas Việt Nam, giúp anh chị em trở nên những người nhiệt thành thực thi bác ái trong Giáo hội và xã hội.\n-    Hát hoặc đọc kinh Chúa Thánh Thần\n\n3.    Lời nguyện:\n\n-  CS: Lạy Thiên Chúa là Tình Yêu Tuyệt Đối, Chúa không ngừng bày tỏ lòng xót thương hải hà của Chúa cho nhân loại, nhất là cho những người nghèo khó và khốn cùng. Giờ đây, xin Chúa gia tăng đức ái trong tâm hồn chúng con, giúp chúng con trung thành thực thi Linh đạo Bác ái của Hội Thánh Công Giáo, góp phần xây dựng xã hội theo tinh thần của Tin Mừng và làm chứng cho tình yêu Chúa giữa lòng thế giới. Chúng con cầu xin nhờ Đức Giêsu Kitô, Chúa chúng con\n-    CĐ: Amen.\n\n4.    Đôi lời của vị chủ sự (Mời CĐ ngồi)\n\n5.    Đọc “Quyết định xác nhận tư cách Hội viên Caritas Việt Nam”\n\nND: Sau một thời gian tìm hiểu về Caritas, học hỏi những Điều lệ và Nội quy cũng như thể hiện đời sống bác ái theo tinh thần Kitô giáo, một số anh chị em trong cộng đoàn chúng ta đã viết đơn chính thức ghi danh vào Hội viên Caritas Việt Nam.\nVới sự xác nhận của Giáo xứ, thỉnh nguyện của anh chị em đã được Caritas Giáo phận chấp thuận. Kính mời Trưởng ban Caritas Giáo xứ lên đọc Quyết định của Caritas Giáo phận.\n-    Trưởng ban Caritas Giáo xứ Đọc “Quyết định”\n\n6.    Vị chủ sự trao thẻ Hội viên\n\n-  Mời các ứng viên tiến lên phía trước\n-  ND: Thẻ Hội viên là một bằng chứng anh chị em thuộc về Caritas Việt Nam. Anh chị em hãy thực thi lòng bác ái như Chúa đã dạy, để tấm thẻ này mang giá trị thực sự và đời sống của anh chị em minh chứng được tình yêu Thiên Chúa cho nhân loại.\n-    CS đeo thẻ cho từng Hội viên\n\n7.    Các tân Hội viên đọc “Kinh Quảng đại”\n\n-    ND: Với quyết tâm bước theo con đường thực thi bác ái theo tinh thần Tin Mừng, các tân Hội viên Caritas Việt Nam sẽ đọc lên Lời kinh Quảng đại, là lời kinh mỗi ngày dâng lên Chúa như một sự khiêm nhường tín thác của anh chị em trước sứ mệnh lớn lao của Caritas.\n-    Mời CĐ đứng hiệp thông trong lời cầu nguyện\n-    Các tân Hội viên đọc lời kinh Quảng đại\n\n8.    Hát một bài tạ ơn\n\n9.    Kết thúc\n\n&nbsp;\n\n<strong>NGHI THỨC GIA NHẬP HỘI VIÊN CARITAS VIỆT NAM</strong>\n\n<strong>Cử hành trong Thánh lễ</strong>\n\n1.    Sau kinh Tin Kính, mời CĐ khẩn cầu Chúa Thánh Thần\n-    ND: Chúng ta khẩn cầu Chúa Thánh Thần ngự xuống trên cộng đoàn chúng ta, cách riêng trên những anh chị em sắp trở thành Hội viên Caritas Việt Nam, giúp anh chị em trở nên những người nhiệt thành thực thi bác ái trong Giáo hội và xã hội.\n-    Hát hoặc đọc kinh Chúa Thánh Thần\n\n2.    Lời nguyện:\n-    CS: Lạy Thiên Chúa là Tình Yêu Tuyệt Đối, Chúa không ngừng bày tỏ lòng xót thương hải hà của Chúa cho nhân loại, nhất là cho những người nghèo khó và khốn cùng. Giờ đây, xin Chúa gia tăng đức ái trong tâm hồn chúng con, giúp chúng con trung thành thực thi Linh đạo Bác ái của Hội Thánh Công Giáo, góp phần xây dựng xã hội theo tinh thần của Tin Mừng và làm chứng cho tình yêu Chúa giữa lòng thế giới. Chúng con cầu xin nhờ Đức Giêsu Kitô, Chúa chúng con\n-    CĐ: Amen.\n3.    Đọc “Quyết định xác nhận tư cách Hội viên Caritas Việt Nam”\nND: Sau một thời gian tìm hiểu về Caritas, học hỏi những Điều lệ và Nội quy cũng như thể hiện đời sống bác ái theo tinh thần Kitô giáo, một số anh chị em trong cộng đoàn chúng ta đã viết đơn chính thức ghi danh vào Hội viên Caritas Việt Nam.\nVới sự xác nhận của Giáo xứ, thỉnh nguyện của anh chị em đã được Caritas Giáo phận chấp thuận. Kính mời Trưởng ban Caritas Giáo xứ lên đọc Quyết định của Caritas Giáo phận.\n-    Trưởng ban Caritas Giáo xứ đọc “Quyết định”\n4.    Vị chủ sự trao thẻ Hội viên\n\n-  Mời các ứng viên tiến lên phía trước\n-  ND: Thẻ Hội viên là một bằng chứng anh chị em thuộc về Caritas Việt Nam. Anh chị em hãy thực thi lòng bác ái như Chúa đã dạy, để tấm thẻ này mang giá trị thực sự và đời sống của anh chị em minh chứng được tình yêu Thiên Chúa cho nhân loại.\n-    CS đeo thẻ cho từng Hội viên\n5.    Các tân Hội viên đọc “Lời kinh Quảng đại”\n-    ND: Với quyết tâm bước theo con đường thực thi bác ái theo tinh thần Tin Mừng, các tân Hội viên Caritas Việt Nam sẽ đọc lên Lời kinh Quảng đại, là lời kinh mỗi ngày dâng lên Chúa như một sự khiêm nhường tín thác của anh chị em trước sứ mệnh lớn lao của Caritas.\n-    Mời CĐ đứng hiệp thông trong lời cầu nguyện\n-    Các tân Hội viên đọc lời kinh Quảng đại\n\n6.    Thánh lễ tiếp tục với phần Lời nguyện tín hữu, trong đó có 1 lời nguyện dành cho tân Hội viên Caritas.\n\n\n<em>* Mẫu đề nghị mang tính tham khảo, Caritas Giáo phận và Giáo xứ có thể soạn nghi thức riêng phù hợp với bối cảnh địa phương.</em>","Nghi thức gia nhập","","publish","closed","closed","","nghi-thuc-gia-nhap","","","2019-04-12 22:34:08","2019-04-12 15:34:08","","61","https://tppone.com/demo/caritas/?page_id=310","0","page","","0"),
("312","1","2019-04-12 20:49:56","2019-04-12 13:49:56"," ","","","publish","closed","closed","","312","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","61","https://tppone.com/demo/caritas/?p=312","6","nav_menu_item","","0"),
("313","1","2019-04-12 20:49:56","2019-04-12 13:49:56"," ","","","publish","closed","closed","","313","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","61","https://tppone.com/demo/caritas/?p=313","5","nav_menu_item","","0"),
("314","1","2019-04-12 20:49:56","2019-04-12 13:49:56"," ","","","publish","closed","closed","","314","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","61","https://tppone.com/demo/caritas/?p=314","4","nav_menu_item","","0"),
("315","1","2019-04-12 20:49:56","2019-04-12 13:49:56"," ","","","publish","closed","closed","","315","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","61","https://tppone.com/demo/caritas/?p=315","3","nav_menu_item","","0"),
("340","1","2019-04-12 21:10:35","2019-04-12 14:10:35","","1545403758_icon_donggop","","inherit","open","closed","","1545403758_icon_donggop","","","2019-04-12 21:10:35","2019-04-12 14:10:35","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/1545403758_icon_donggop.png","0","attachment","image/png","0"),
("411","1","2019-04-12 22:03:16","2019-04-12 15:03:16","","grd-border","","inherit","open","closed","","grd-border","","","2019-04-12 22:03:16","2019-04-12 15:03:16","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/grd-border.png","0","attachment","image/png","0"),
("434","1","2019-04-12 22:22:27","2019-04-12 15:22:27"," ","","","publish","closed","closed","","434","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=434","19","nav_menu_item","","0"),
("458","1","2019-04-12 22:36:08","2019-04-12 15:36:08","<div class=\"title_news\">\n<h2>LỄ LÁ: CHÚA GIÊSU CHẾT TRONG SỰ VÂNG PHỤC</h2>\n<ul>\n 	<li>Thứ năm, 14:52 Ngày 11/04/2019</li>\n</ul>\n</div>\n<div class=\"showText\">\n\nCuốn sách “Cuộc khổ nạn của Đức Giêsu qua tấm khăn liệm Turin” viết thật hấp dẫn, tái dựng lại cuộc khổ nạn dựa trên Tấm khăn liệm Turin và Tin Mừng, đưa người đọc từng bước đi vào cuộc thương khó của Chúa Giêsu với những thống khổ và cực hình về thể lý. Sự tàn ác của tội lỗi và sự đố kỵ của sự dữ trước một Tình Yêu quảng đại và bao dung. Sự yếu đuối của thể chất trước một tinh thần bình an và vượt thoát. Giá trị của vinh quang và tủi nhục, tha thứ và hận thù, sự sống và sự chết. Những cảm nhận đó đưa độc giả vươn tới giá trị siêu nhiên trong Chúa Kitô Phục Sinh.\n\nCuộc thương khó của Chúa Giêsu trong cái nhìn nhân loại như một bi kịch của sự tàn bạo, bất công và hủy diệt. Chúa Giêsu bị phản bội, bị hiểu lầm, bị ghen ghét, chịu kết án bất công. Cuộc thương khó làm cho chúng ta kinh khiếp vì sự tàn ác và độc dữ của con người. Nó làm cho chúng ta xót xa và thương cảm một con người là nạn nhân của lòng hận thù và đố kỵ\n\nThế nhưng, cái chết trong đau thương nhục nhã của Chúa Giêsu chính là nguồn ơn cứu rỗi cho nhân loại. Người chết để đền tội, để chuộc tội, để gánh tội hầu cứu độ con người. Cái chết của Đấng Cứu Độ nhưng lại bi thương vô cùng.\n\nTin Mừng về cuộc thương khó kể lại từng chặng đường khổ nạn của Đấng Cứu Thế.\n\n<strong>1. Chúa Giêsu chết trong cô đơn</strong>\n\nNhững giờ phút sau cùng của Chúa là những khoảng khắc cô đơn kinh hoàng. Trong Vườn Cây Dầu, ba môn đệ thân tín đi với Chúa, họ ngủ say để Chúa một mình. Giuđa phản bội bán Thầy 30 đồng bạc là giá một nô lệ bằng một nụ hôn giả dối. Phêrô chối Thầy 3 lần, ông thề là không quen biết Chúa Giêsu trước một đầy tớ gái. Các môn đệ sợ hãi chạy trốn. Có một môn đệ chạy trốn bỏ lại cả áo, chạy mình trần. Một đám đông cuồng nộ: <em>Đóng đinh nó đi</em>. Họ coi Chúa Giêsu còn thua Baraba là một tên phiến loạn giết người.\n\nCác môn đệ ở đâu ? Những người được Chúa Giêsu làm phép lạ nuôi ăn giờ ở đâu? Những người mới tung hô vạn tuế Con Vua Đavit giờ ở đâu?  Chúa Giêsu đi đến tột cùng của sự cô đơn khi thổn thức với Cha: <em>Lạy Thiên Chúa tôi, sao Ngài nỡ bỏ tôi?</em>\n\n<strong>2. Chúa Giêsu chết trong đau khổ</strong>\n\nĐau khổ Chúa Giêsu chịu trong giờ sau hết thật ghê rợn.\n\n<em><u><strong>Đau khổ về thân xác</strong></u></em>\n\nNgười ta khạc nhổ, đánh đập, vả tát vào mặt, dùng roi quất vào Người. Đôi bàn tay bầm tím xuyên thâu những mũi đinh nhọn. Đôi bàn chân bị đinh đóng xuyên qua cây gỗ. Đầu đội mão gai nhọn. Lưỡi đòng đâm cạnh sườn, máu và nước chảy ra. Một người bị lột bỏ trần trụi. Hai tay bị giang thẳng trói xiết chặt vào thanh gỗ ngang. Hai chân bị trói vào thanh gỗ dọc phơi ngoài trời nắng gắt cho đến chết. Chết vì nghẹt thở do các cơ vòng ngực, cơ bắp tay không còn sức trương ra, co vào để thu nhận và tống không khí. Tử tội bị đóng đinh nơi cổ tay, nơi bàn chân càng thê thảm bội phần vì đau đớn nhức nhối, sức người rướn lên để thở, mau kiệt sức và chóng chết.\n\n<em><u><strong>Đau khổ về tinh thần</strong></u></em>\n\nBị sỉ nhục. Bị cười nhạo báng. Bị khinh khi. Kẻ qua người lại đều nhục mạ Người, vừa lắc đầu vừa nói: <em>mi là kẻ phá được Đền Thờ, và nội trong ba ngày xây lại được, hãy cứu lấy mình đi ! Nếu mi là Con Thiên Chúa, thì xuống khỏi thập giá xem nào !</em>. Các thượng tế kinh sư và kỳ mục cũng chế giễu Người mà nói: <em> Hắn cứu được thiên hạ, mà chẳng cứu nổi mình. Hắn là vua Israel ! Bây giờ hắn cứ xuống khỏi thập gía đi, thì chúng ta tin hắn liền ! </em>Cả những tên cướp cùng đóng đinh với Người cũng sỉ vả Người như thế.\n\n<strong>3. Chúa Giêsu chết trong sự vâng phục</strong>\n\nCái chết cô đơn, cái chết đau khổ đến với Chúa Giêsu như một chén đắng mà Chúa Cha trao phó. Chúa Giêsu xin vâng ý Cha, nhưng không vì thế mà bớt sự đau đớn. Trong Vườn Cây Dầu, Chúa Giêsu than thở: <em>Cha ơi, nếu được, xin cho chén này rời khỏi con.</em> <em>Nhưng xin đừng theo ý Con, mà xin theo ý Cha.</em> (Mt 26,39). Theo thánh ý Chúa Cha, <em>“Chúa Giêsu đã hạ mình vâng lời cho đến nỗi bằng lòng chịu chết và chết trên cây Thập giá”</em>( Pl 2,8).\n\n<strong>4. Lời Thánh Kinh ứng nghiệm</strong>\n\nCái chết cô đơn, đau khổ của Chúa Giêsu ứng nghiệm hình ảnh Người Tôi Trung của Ngôn sứ Isaia. Những nổi khổ đau, mọi sự sỉ nhục và cực hình Người Tôi Trung phải chịu: bị đánh vào lưng, bị giật râu, bị mắng nhiếc phỉ nhổ. Mặc dầu vậy, Người Tôi Trung vẫn vững lòng tin tưởng có Thiên Chúa phù trợ.\n\nChúa Giêsu tự đồng hoá mình với Người Tôi Trung một lần (Lc 22,37; Is 53,12) nhưng truyền thống không ngừng đồng hoá khuôn mặt của Người Tôi Trung với Đức Kitô ( Mt 8,16;Is 53,4; Mc 1,1;Is 52,1; Mt 12,18-21;Is 42,1-3; Mc 9,31;Is 53.6.12; Ga 12,38;Is 53,1). Đề tài Người Tôi Trung chịu đau khổ là đề tài khai triển một cách rõ rệt nhất quan niệm một Đấng Cứu Thế phải trải qua đau khổ và sự chết thì mới hoàn thành được sứ mệnh (Cv 3,13-26; Is 4,25-30; Is 53,5.6.9.12; Mc 10,41; Is 53,5; 1Cor 11,24).\n\nHình ảnh Người Tôi Trung đau khổ cho thấy rõ Đức Giêsu đảm nhận thân phận làm người cho tới cùng. Trong Đức Giêsu, Thiên Chúa tự mạc khải là Thiên Chúa <strong>“vì mọi người và cho mọi người”</strong> chứ không phải như một Thiên Chúa tuyệt đối và toàn năng của triết lý và huyền thoại. Nhân tính của Đức Giêsu mạc khải dưới một siêu việt tính đích thực, nhìn dưới một dạng thức hoàn toàn mới mẻ. Đó là sự siêu việt của một tình yêu vượt qua cái tôi ích kỷ, vượt qua được sự chết để trở nên sự sống cho mọi người.\n\nBài Thánh ca của Thánh Phaolô gợi lên hình ảnh Người Tôi Trung đau khổ (câu 8; Is 53,7.10.12), nhưng ở đây, Người Tôi Trung được đối chiếu với hình ảnh Đức Chúa vinh quang. Sự tự hạ thẳm sâu và chiến thắng vinh quang là bài ca ca ngợi Chúa Giêsu Kitô đã hạ mình chịu chết và được siêu tôn. Chính sự vâng phục theo thánh ý Chúa Cha đã làm nên giá trị của Chúa Giêsu trên mọi thụ tạo.\n\n<strong>5. Sứ điệp tình yêu</strong>\n\nCuộc khổ nạn của Chúa Giêsu đã cho chúng ta thấy những chiều kích khác lạ của tình yêu. Tình yêu không đơn thuần chỉ là sự trao ban thuần túy để làm hài lòng người mình yêu thương, nhưng sâu thẳm hơn, nó là sự hiến dâng chính bản thân để chịu đau khổ.\n\nTình Yêu của Chúa Giêsu dành cho nhân loại qua con đường thập giá thật đẹp và tinh tuyền như ánh trăng lấp lánh trên dòng sông tình ái. Thấp thoáng trong bóng tối đau khổ, sợ hãi, cô đơn và sự chết là lung linh ánh sáng khoan dung, tha thứ, bình an và vượt thoát. Trong màn đêm của bạo lực và bất công, bầu trời vẫn lấp lánh ánh sao của dâng hiến và yêu thương. Ngước lên và ngắm nhìn, chúng ta có thể nhận ra từng nét chân dung huyền ảo của Tình Yêu và trái tim của chúng ta sẽ nhận ra được dung mạo của Chúa Giêsu yêu thương đến cùng.\n\nTrong hình hài đầy thương tích của Đấng Chịu Đóng Đinh, bóng tối của sự thịnh nộ và thù hận đã nhường chỗ cho ánh sáng của nhân ái và thứ tha. Làm sao chúng ta có thể nhận ra “Con Người” đẹp nhất trần gian, nếu chúng ta không nhìn qua lăng kính của Tình Yêu! Cuộc khổ nạn của Chúa cho chúng ta một cái nhìn thật thâm trầm và sâu sắc về sự nguyên tuyền của Tình Yêu: đứng trên sự cuồng nộ là thinh lặng, đứng trên hành vi bạo lực là một tinh thần bình an, đứng trên lòng thù hận là tha thứ, đối lại thô bạo là bao dung. Tình Yêu làm chúng ta bỡ ngỡ và sửng sốt. Chúng ta thích ngắm nhìn hình ảnh của một tình yêu siêu thoát và bay bổng, nhưng nơi Chúa Giêsu, tình yêu trở nên bình dị và gần gũi.\n\nChúng ta mong muốn một tình yêu được nhận lãnh và chiếm hữu, nhưng nơi Chúa Giêsu, tình yêu lại trở thành trao ban và từ bỏ. Tình yêu là nét đẹp của sự tự hạ và quên mình, là dâng hiến bằng chính trái tim và trọn vẹn cuộc đời. Tình yêu không là ngôn từ để kết án, không là vũ khí của bạo lực đa đoan. Tình yêu là âm thanh gợi cảm của trái tim, là nét vẽ thanh thoát của vũ hoàn và là dòng suối của hoa trái tha thứ bao dung. Chúa Giêsu đã làm tan chảy mọi ô nhơ đố kỵ, khi Người đặt tất cả trong ánh sáng của tình yêu. Nguồn suối ân sủng từ tình yêu Chúa Giêsu làm cho mảnh đất khô cằn của sự chết trở nên hồi sinh và đầy tràn sức sống .\n\nTrước tình yêu vô biên của Đấng Cứu Độ, con người sao có thể đáp đền cân xứng?\n\nLàm thế nào so sánh một giọt nước nhỏ nhoi với cả đại dương mênh mông vô tận?\n\nCác bài đọc Lời Chúa hôm nay đều hướng về một sứ điệp. Đó là sứ điệp tình yêu. Chúa Giêsu yêu mến Chúa Cha đến độ vâng lời đón nhận cái chết thập giá và yêu thương con người nên đã đón nhận mọi khổ đau của nhân loại mà đưa lên cây thập giá hầu ban ơn cứu độ.\n\nChính tình yêu, chứ không phải đau khổ, đã biến thập giá tủi nhục thành Thánh Giá vinh quang. Chính tình yêu của Chúa Giêsu, chứ không phải cuộc khổ nạn mà chúng ta được Cứu Độ (Ga 3,17), được giải thoát mọi xích xiềng tội lỗi. Như vậy, cuộc thương khó của Chúa Giêsu là một hành trình của tình yêu tiến tới sự sống và hạnh phúc cho muôn người.\n\nKhi chấp nhận mang lấy những khổ đau, những nhục nhã của cái chết Thập giá, Chúa Giêsu đã trở nên như hạt lúa phải mục nát đi để cho sự sống mới phát sinh. Nhờ sự chết của Người mà sự sống đời đời xuất hiện cho nhân loại. Đó là định luật nối kết sự chết và sự sống. Chấp nhận đau khổ và sự chết vì tình yêu thì nó trở thành con đường dẫn đến sự sống muôn đời.\n\nTrong cuộc sống thường ngày, có những lúc chúng ta gặp đau khổ, gặp thất bại, gặp nghịch cảnh. Nhiều lúc mình than trách Chúa, nghi ngờ tình yêu của Chúa. Có người bị lung lay đức tin. Có người đã đánh mất đức tin. Hãy chiêm ngắm đau khổ Chúa Giêsu trong cuộc khổ nạn để vững vàng vượt qua thử thách, băng qua gian truân. Qua Thập giá mới đạt tới vinh quang Phục Sinh. Hãy xin được như Thánh Gioan kiên vững dưới chân Thập giá để trung thành với một tình yêu sắt son cùng Thầy Giêsu. Hãy xin được như Đức Maria can đảm dưới chân Thập giá cùng chịu đau thương nhục nhã với người con yêu.\n\nCon Thiên Chúa đã gánh chịu mọi khổ đau của thân phận con người, nhưng Người không oán than, không kêu trách, không rên xiết; trái lại, Người đón nhận khổ đau với một tình yêu sâu đậm: Yêu Chúa Cha và yêu nhân loại. Chính tình yêu này đã biến khổ đau của Người nên nguồn ơn cứu rỗi. Tình yêu cứu độ của Chúa đưa nhân loại đi tới bến bờ hạnh phúc. Chúng ta hãy tin yêu Chúa Giêsu và bước đi theo Người để có sự sống dồi dào và niềm vui an hoà.\n\n<strong>Lm Giuse Nguyễn Hữu An</strong>\n\n</div>","Suy niệm Lời Chúa","","publish","closed","closed","","suy-niem-loi-chua","","","2019-04-12 22:36:08","2019-04-12 15:36:08","","0","https://tppone.com/demo/caritas/?page_id=458","0","page","","0"),
("460","1","2019-04-12 22:36:18","2019-04-12 15:36:18"," ","","","publish","closed","closed","","460","","","2019-04-12 22:36:18","2019-04-12 15:36:18","","0","https://tppone.com/demo/caritas/?p=460","20","nav_menu_item","","0"),
("463","1","2019-04-12 22:37:36","2019-04-12 15:37:36","","nhathophatdiem","","inherit","open","closed","","nhathophatdiem","","","2019-04-12 22:37:36","2019-04-12 15:37:36","","0","https://tppone.com/demo/caritas/wp-content/uploads/2019/04/nhathophatdiem.jpg","0","attachment","image/jpeg","0"),
("523","1","2019-05-06 16:04:42","2019-05-06 09:04:42","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:04:42\"\n    }\n}","","","trash","closed","closed","","23cc6a06-c518-46cd-9e15-48b10b5a6cb7","","","2019-05-06 16:04:42","2019-05-06 09:04:42","","0","https://tppone.com/demo/caritas/23cc6a06-c518-46cd-9e15-48b10b5a6cb7/","0","customize_changeset","","0"),
("524","1","2019-05-13 09:59:27","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-13 09:59:27","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/caritas/?p=524","0","post","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("66","12","0"),
("67","12","0"),
("68","12","0"),
("69","12","0"),
("70","13","0"),
("71","13","0"),
("72","13","0"),
("73","13","0"),
("74","13","0"),
("75","13","0"),
("76","13","0"),
("77","13","0"),
("78","13","0"),
("79","13","0"),
("80","13","0"),
("81","13","0"),
("82","13","0"),
("86","13","0"),
("87","13","0"),
("125","2","0"),
("125","6","0"),
("128","2","0"),
("128","10","0"),
("131","2","0"),
("131","10","0"),
("134","1","0"),
("134","2","0"),
("134","3","0"),
("137","2","0"),
("137","9","0"),
("140","1","0"),
("140","2","0"),
("140","10","0"),
("194","14","0"),
("194","15","0"),
("198","14","0"),
("198","15","0"),
("201","14","0"),
("201","15","0"),
("204","14","0"),
("204","15","0"),
("207","14","0"),
("207","15","0"),
("210","14","0"),
("210","15","0"),
("312","13","0"),
("313","13","0"),
("314","13","0"),
("315","13","0"),
("434","13","0"),
("460","13","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","2"),
("2","2","category","","0","6"),
("3","3","category","","2","1"),
("4","4","category","","2","0"),
("5","5","category","","2","0"),
("6","6","category","","2","1"),
("7","7","category","","2","0"),
("8","8","category","","2","0"),
("9","9","category","","2","1"),
("10","10","category","","2","3"),
("11","11","category","","0","0"),
("12","12","nav_menu","","0","4"),
("13","13","nav_menu","","0","21"),
("14","14","category","","0","6"),
("15","15","post_format","","0","6");




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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Tiêu điểm","tieu-diem","0"),
("2","Hoạt động","hoat-dong","0"),
("3","Đào tạo","dao-tao","0"),
("4","Khuyết tật","khuyet-tat","0"),
("5","Khuyến học","khuyen-hoc","0"),
("6","Cứu trợ","cuu-tro","0"),
("7","Bảo vệ môi trường","bao-ve-moi-truong","0"),
("8","Bảo vệ sự sống","bao-ve-su-song","0"),
("9","Bác ái - di dân","bac-ai-di-dan","0"),
("10","Chia sẻ","chia-se","0"),
("11","Hình ảnh","hinh-anh","0"),
("12","Topbar menu","topbar-menu","0"),
("13","Main menu","main-menu","0"),
("14","Video","video","0"),
("15","post-format-video","post-format-video","0");




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
("14","1","dismissed_wp_pointers","wp496_privacy"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:1:{s:64:\"ea0af3fb8587194f4486469ca898cb78508b3fa95b26b75e20b8b3a57ce80331\";a:4:{s:10:\"expiration\";i:1557889163;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557716363;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","524"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1557446813"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","13"),
("25","1","wp_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:569:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 99%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:892:\"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=23\">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=23\">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/caritas/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:242:\"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href=\"https://bizhostvn.com/w/caritas/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> kết nối với Google Search Console ở đây </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:259:\"<strong>Lỗi SEO nghiêm trọng: Bạn đang chặn truy cập tới robots.</strong> Bạn phải <a href=\"https://bizhostvn.com/w/caritas/wp-admin/options-reading.php\">tới mục Đọc</a> và bỏ đánh dấu Tương tác với công cụ tìm kiếm.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO xác định bạn đang sử dụng phiên bản 9.1 của Yoast SEO Premium, hãy cập nhật lên phiên bản mới nhất.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
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
("1","admin","$P$BcfEMuZrJzMVZcMM/mjibK.V.ClaNk.","admin","demobz@gmail.com","","2019-04-12 09:47:38","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("7","mailto:tgmpdiem@gmail.com","84","0","external"),
("53","https://bizhostvn.com/w/caritas/niem-vui-chia-se-voi-nguoi-vo-gia-cu-cua-cha-vincenzo-bordo/","2","140","internal"),
("54","https://bizhostvn.com/w/caritas/ban-khuyen-hoc-caritas-viet-nam-trai-nghiem-de-chap-canh-uoc-mo/","2","137","internal"),
("55","https://bizhostvn.com/w/caritas/duc-thanh-ca-gap-cac-tham-du-vien-hoi-nghi-quoc-te-ve-nan-buon-nguoi/","2","134","internal"),
("56","https://bizhostvn.com/w/caritas/loi-cau-nguyen-thanh-khan-cho-trai-dat-cua-chung-ta/","2","131","internal"),
("57","https://bizhostvn.com/w/caritas/caritas-phan-thiet-to-chuc-trao-xe-lan-cho-nguoi-khuyet-tat/","2","128","internal"),
("58","https://bizhostvn.com/w/caritas/caritas-phat-diem-su-song-ky-dieu-chua-ban/","2","125","internal"),
("59","https://bizhostvn.com/w/caritas/niem-vui-chia-se-voi-nguoi-vo-gia-cu-cua-cha-vincenzo-bordo/","2","140","internal"),
("60","https://bizhostvn.com/w/caritas/ban-khuyen-hoc-caritas-viet-nam-trai-nghiem-de-chap-canh-uoc-mo/","2","137","internal"),
("61","https://bizhostvn.com/w/caritas/duc-thanh-ca-gap-cac-tham-du-vien-hoi-nghi-quoc-te-ve-nan-buon-nguoi/","2","134","internal"),
("62","https://bizhostvn.com/w/caritas/loi-cau-nguyen-thanh-khan-cho-trai-dat-cua-chung-ta/","2","131","internal"),
("63","https://bizhostvn.com/w/caritas/caritas-phan-thiet-to-chuc-trao-xe-lan-cho-nguoi-khuyet-tat/","2","128","internal"),
("64","https://bizhostvn.com/w/caritas/caritas-phat-diem-su-song-ky-dieu-chua-ban/","2","125","internal"),
("65","/du-an-con-duong-sang/","2","0","internal"),
("66","/du-an-nang-cao-chat-luong-song/","2","0","internal"),
("67","/du-an-chong-nan-buon-nguoi/","2","0","internal"),
("68","/du-an-chong-nan-nao-pha-thai/","2","0","internal"),
("69","/du-an-nang-cao-chat-luong-giao-duc-cho-tre-em-ngheo-tai-cac-khu-vuc-thanh-pho/","2","0","internal"),
("70","https://bizhostvn.com/w/caritas/caritas-viet-nam-thanh-le-khai-mac-hoi-nghi-thuong-nien-2018video/","2","210","internal"),
("71","https://bizhostvn.com/w/caritas/mot-gia-dinh-nhan-loai-khong-con-ngheo-doi/","2","207","internal"),
("72","https://bizhostvn.com/w/caritas/caritas-xuan-loc-ngay-quoc-te-benh-nhan-va-mung-le-bon-mang/","2","204","internal"),
("73","https://bizhostvn.com/w/caritas/dtc-phanxico-keu-goi-hay-cho-ke-doi-anvideo/","2","201","internal"),
("74","https://bizhostvn.com/w/caritas/can-lam-mot-ban-tay-yeu-thuong/","2","198","internal"),
("75","https://bizhostvn.com/w/caritas/caritas-viet-nam-nhip-tim-yeu-thuong/","2","194","internal"),
("76","https://bizhostvn.com/w/caritas/niem-vui-chia-se-voi-nguoi-vo-gia-cu-cua-cha-vincenzo-bordo/","2","140","internal"),
("77","https://bizhostvn.com/w/caritas/ban-khuyen-hoc-caritas-viet-nam-trai-nghiem-de-chap-canh-uoc-mo/","2","137","internal"),
("78","https://bizhostvn.com/w/caritas/duc-thanh-ca-gap-cac-tham-du-vien-hoi-nghi-quoc-te-ve-nan-buon-nguoi/","2","134","internal"),
("79","https://bizhostvn.com/w/caritas/loi-cau-nguyen-thanh-khan-cho-trai-dat-cua-chung-ta/","2","131","internal"),
("80","https://bizhostvn.com/w/caritas/niem-vui-chia-se-voi-nguoi-vo-gia-cu-cua-cha-vincenzo-bordo/","2","140","internal"),
("81","https://bizhostvn.com/w/caritas/ban-khuyen-hoc-caritas-viet-nam-trai-nghiem-de-chap-canh-uoc-mo/","2","137","internal"),
("82","https://bizhostvn.com/w/caritas/duc-thanh-ca-gap-cac-tham-du-vien-hoi-nghi-quoc-te-ve-nan-buon-nguoi/","2","134","internal"),
("83","https://bizhostvn.com/w/caritas/loi-cau-nguyen-thanh-khan-cho-trai-dat-cua-chung-ta/","2","131","internal"),
("84","https://bizhostvn.com/w/caritas/caritas-phan-thiet-to-chuc-trao-xe-lan-cho-nguoi-khuyet-tat/","2","128","internal"),
("85","https://bizhostvn.com/w/caritas/caritas-phat-diem-su-song-ky-dieu-chua-ban/","2","125","internal"),
("86","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/bua-an-tre-an-do.jpg","2","0","internal"),
("87","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/video3.jpg","2","0","internal"),
("88","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/video2.jpg","2","0","internal"),
("89","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/doingheo.jpg","2","0","internal"),
("90","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/images-1.jpg","2","0","internal"),
("91","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post6.jpg","2","0","internal"),
("92","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post5.jpg","2","0","internal"),
("93","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post4.jpg","2","0","internal"),
("94","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post3.jpg","2","0","internal"),
("95","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post2.jpg","2","0","internal"),
("96","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/post1.jpg","2","0","internal"),
("97","https://bizhostvn.com/w/caritas/wp-content/uploads/2019/04/caritas-viet-nam.jpg","2","0","internal");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("1","0","0"),
("2","45","0"),
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("10","0","0"),
("11","0","0"),
("12","0","0"),
("13","0","0"),
("14","0","0"),
("15","0","0"),
("16","0","0"),
("17","0","0"),
("18","0","0"),
("19","0","0"),
("20","0","0"),
("21","0","0"),
("22","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("29","0","0"),
("30","0","0"),
("32","0","0"),
("33","0","0"),
("34","0","0"),
("35","0","0"),
("36","0","0"),
("37","0","0"),
("38","0","0"),
("40","0","0"),
("41","0","0"),
("42","0","0"),
("43","0","0"),
("44","0","0"),
("46","0","0"),
("47","0","0"),
("49","0","0"),
("51","0","0"),
("52","0","0"),
("53","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("58","0","0"),
("59","0","0"),
("60","0","0"),
("61","0","0"),
("62","0","0"),
("63","0","0"),
("64","0","0"),
("65","0","0"),
("83","0","0"),
("84","0","0"),
("85","0","0"),
("88","0","0"),
("89","0","0"),
("90","0","0"),
("91","0","0"),
("92","0","0"),
("93","0","0"),
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
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","3"),
("127","0","0"),
("128","0","3"),
("130","0","0"),
("131","0","4");
INSERT INTO bz_yoast_seo_meta VALUES
("133","0","0"),
("134","0","4"),
("136","0","0"),
("137","0","4"),
("139","0","0"),
("140","0","4"),
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
("152","0","0"),
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
("172","0","0"),
("173","0","0"),
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
("194","0","1"),
("196","0","0"),
("197","0","0"),
("198","0","1"),
("200","0","0"),
("201","0","1"),
("203","0","0"),
("204","0","1"),
("206","0","0"),
("207","0","1"),
("209","0","0"),
("210","0","1"),
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
("237","0","0"),
("238","0","0"),
("239","0","0"),
("240","0","0"),
("241","0","0"),
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
("264","0","0"),
("265","0","0"),
("266","0","0"),
("267","0","0"),
("268","0","0"),
("269","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("273","0","0"),
("274","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
("278","0","0"),
("279","0","0"),
("280","0","0"),
("281","0","0"),
("282","0","0"),
("284","0","0"),
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
("341","0","0"),
("342","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("348","0","0"),
("349","0","0"),
("350","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("351","0","0"),
("352","0","0"),
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
("453","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("454","0","0"),
("455","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
("461","0","0"),
("462","0","0"),
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
("478","0","0"),
("479","0","0"),
("480","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("485","0","0"),
("486","0","0"),
("487","0","0"),
("488","0","0"),
("489","0","0"),
("490","0","0"),
("491","0","0"),
("492","0","0"),
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("498","0","0"),
("499","0","0"),
("500","0","0"),
("501","0","0"),
("502","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("506","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","0","0"),
("512","0","0"),
("513","0","0"),
("514","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("519","0","0"),
("520","0","0"),
("521","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;