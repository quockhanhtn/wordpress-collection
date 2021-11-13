SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w69`
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
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO bz_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/bizhostvn.com\\/w\\/vcheck\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1533956616,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1540265988,\"initial_activation_timestamp\":1533956627,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1540266283,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/vcheck","yes"),
("2","home","https://bizhostvn.com/w/vcheck","yes"),
("3","blogname","vcheck","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","info.giuseart.com@gmail.com","yes"),
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
("28","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:0:{}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:2:{i:0;s:89:\"/home/admin/domains/bizhostvn.com/public_html/w/vcheck/wp-content/themes/vcheck/style.css\";i:1;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","vcheck","yes"),
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
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","59","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","67","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","initial_db_version","38590","yes"),
("93","bz_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("94","fresh_site","0","yes"),
("95","WPLANG","vi","yes"),
("96","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:2:{i:0;s:8:\"search-2\";i:1;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO bz_options VALUES
("102","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","cron","a:7:{i:1558003149;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558003918;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558017549;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558017581;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059924;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558084238;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("112","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533221187;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("144","new_admin_email","info.giuseart.com@gmail.com","yes"),
("149","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1557996895;}","yes"),
("150","current_theme","Vcheck","yes"),
("151","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 02 Aug 2018 14:46:28 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533221227;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("152","theme_switched","","yes"),
("153","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:22:\"Bài viết liên quan\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("154","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("156","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("157","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("158","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("159","flatsome_wup_buyer","trannguyen886","yes"),
("160","allowedthemes","a:1:{s:6:\"vcheck\";b:1;}","no"),
("161","fl_has_child_theme","vcheck","yes"),
("163","theme_mods_vcheck","a:127:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:3:\"nav\";}s:21:\"header_elements_right\";a:2:{i:0;s:8:\"button-1\";i:1;s:8:\"button-2\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:2;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 02 Aug 2018 14:47:09 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:2712:\".header-button .is-outline {\n    color: #8a8a8a;\n    border: 1px solid #1d7e16;\n    font-weight: normal;\n    font-size: 15px;\n    text-transform: none;\n    letter-spacing: 0;line-height:35px\n}\n.header-button .is-outline:hover{color: green; border: 1px solid #1d7e16; font-weight:normal; font-size:15px; text-transform:none; letter-spacing:0; background:white}\n.nav-dropdown.nav-dropdown-default>li>a{border-bottom: 1px solid #f7f7f7;}\n.button span {\n    display: inline-block;\n    line-height: 1.6;\n    font-weight: normal;\n    font-size: 16px;\n}\n\nb,strong{font-weight:500}\n.tin-tuc .post-item .post-title{font-size:15.5px; color:black}\n.tin-tuc .large-12, .tin-tuc .post-item, .thanh-tuu .col{padding-bottom:0}\n#breadcrumbs {\n    font-size: 14px;\n}#breadcrumbs .breadcrumb_last {\n    color: #27ae60;\n}.blog-single .article-inner .entry-title {\n    font-weight: 400;\n    font-size: 24px;\n}.article-inner .header-meta-info {\n    font-size: 14px;\n    color: gray;\n}.blog-single .article-inner .fa {\n    padding-right: 10px;\n}.article-inner .header-meta-info a {\n    padding-right: 15px;\n}.blog-single .article-inner .fa:before {\n    color: #27ae60;\n}.entry-content{padding-top:0}\n.article-inner h2{font-size:18px}.article-inner h3{font-size:17}.article-inner h4{font-size:16px}.meta-post-danhmuc {\n    display: block;\n    margin-top: 7px;\n    margin-bottom: 8px;\n    color: gray;\n    font-size: 13px;\n}.meta-post-danhmuc .fa:before {\n    padding-right: 5px;\n}.meta-post-danhmuc .danh-muc-post {\n    padding-right: 15px;\n}.blog-single .entry-meta {\n    font-size: 14px;\n}.blog-archive .post-item .box-text .post-title, .blog-single .entry-meta .danh-muc {\n    margin-bottom: 10px;\n}.blog-single .entry-meta .the-tim-kiem a {\n    background: #c3c3c3;\n    padding: 5px;\n    border-radius: 3px;\n    color: #fff;\n}.blog-single .entry-meta .the-tim-kiem a:hover {\n    background: #2ecc71;\n}.box-blog-post .is-divider {\n    display: none;\n}span.widget-title {\n    font-weight: 500;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 17px;\n}.widget .is-divider {display:none\n}.recent-blog-posts a{font-size:14px\n}.blog-single{background: #ececec}\n.blog-single .row.row-large{background:white}\n.blog-single .row.row-large .large-9{padding-top:25px}\n.blog-single .row.row-large .post-sidebar{padding-top:25px}\ninput[type=\'submit\']:not(.is-form){font-size:15px; font-weight:normal; text-transform:none}h1.entry-title.mb {\n    margin-bottom: 20px;\n    text-transform: none;\n    letter-spacing: 0;\n}.accordion-title{font-size:15px;border-top: 1px solid #ececec;}\n.accordion-title.active{font-weight:500}\n.accordion-title a{color:black}\n.lien-he-section .col{padding-bottom:0}\n.nav-spacing-large>li{margin: 0 13px;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:92:\".cac-mau-tem .large-3, .vi-sao .large-3, .tin-tuc .post-item{flex-basis:50%; max-width:100%}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:31;s:11:\"preset_demo\";s:14:\"header-default\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:1;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:6:\"medium\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:7:\"#5b5b5b\";s:20:\"type_nav_color_hover\";s:7:\"#0fb700\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"10\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:10:\"site_width\";s:6:\"1200px\";s:9:\"site_logo\";s:73:\"https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/images-1-01.png\";s:12:\"logo_padding\";s:1:\"0\";s:10:\"logo_width\";s:3:\"155\";s:9:\"type_size\";s:2:\"95\";s:16:\"type_size_mobile\";s:3:\"100\";s:11:\"nav_spacing\";s:5:\"large\";s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:14:\"dropdown_arrow\";b:0;s:17:\"dropdown_nav_size\";s:2:\"98\";s:15:\"header_button_1\";s:10:\"0909009009\";s:20:\"header_button_1_link\";s:14:\"tel:0909009009\";s:22:\"header_button_1_radius\";s:3:\"3px\";s:20:\"header_button_1_size\";s:6:\"medium\";s:21:\"header_button_1_depth\";s:1:\"0\";s:15:\"header_button_2\";s:20:\"Liên hệ tư vấn\";s:20:\"header_button_2_link\";s:1:\"#\";s:22:\"header_button_2_radius\";s:3:\"3px\";s:20:\"header_button_2_size\";s:6:\"medium\";s:21:\"header_button_2_depth\";s:1:\"0\";s:21:\"header_button_1_style\";s:7:\"outline\";s:13:\"color_primary\";s:7:\"#27ae60\";s:15:\"color_secondary\";s:7:\"#2ecc71\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_align\";s:6:\"center\";s:19:\"footer_bottom_color\";s:7:\"#27ae60\";s:16:\"footer_left_text\";s:120:\"Copyright [ux_current_year] © <strong>webdesign.com</strong> | A member of <a href=\"https://giuseart.com\">webdesign</a>\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:18:\"blog_archive_title\";b:0;s:18:\"blog_style_archive\";s:4:\"list\";s:14:\"pages_template\";s:13:\"right-sidebar\";s:13:\"default_title\";b:1;s:11:\"color_links\";s:7:\"#27ae60\";}","yes"),
("165","envato_setup_complete","1533221236","yes"),
("176","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:27:\"info.giuseart.com@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533264689;}","no"),
("187","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("241","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"7.9\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1533608723;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("242","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("243","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("244","wpseo_flush_rewrite","1","yes"),
("251","wpseo_current_version","16","no"),
("252","wpseo_premium_version","7.9","yes"),
("254","wpseo_license_server_version","2","yes"),
("259","wpseo_tracking_last_request","1540266228","yes"),
("268","wpseo_sitemap_cache_validator_global","P5Lc","no"),
("269","rewrite_rules","a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=59&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("270","wpseo_sitemap_1_cache_validator","6OPd","no"),
("271","wpseo_sitemap_customize_changeset_cache_validator","25qhN","no"),
("278","wpseo_sitemap_post_tag_cache_validator","TpgZ","no"),
("279","wpseo_sitemap_post_cache_validator","XaZS","no"),
("280","wpseo_sitemap_category_cache_validator","2QSP2","no"),
("283","wpseo_sitemap_nav_menu_item_cache_validator","2RAPq","no"),
("284","wpseo_sitemap_18_cache_validator","P1PW","no"),
("285","category_children","a:0:{}","yes"),
("286","wpseo-premium-redirects-base","a:1:{i:0;a:4:{s:6:\"origin\";s:24:\"category/khong-phan-loai\";s:3:\"url\";s:16:\"category/tin-tuc\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}}","no"),
("287","wpseo-premium-redirects-export-plain","a:1:{s:24:\"category/khong-phan-loai\";a:2:{s:3:\"url\";s:16:\"category/tin-tuc\";s:4:\"type\";i:301;}}","no"),
("288","wpseo-premium-redirects-export-regex","a:0:{}","no"),
("289","wpseo_sitemap_19_cache_validator","Pd9F","no"),
("290","wpseo_sitemap_page_cache_validator","27KHy","no"),
("292","wpseo_sitemap_attachment_cache_validator","NyTE","no"),
("297","wpseo_sitemap_25_cache_validator","22UPY","no"),
("298","wpseo_sitemap_20_cache_validator","23aiT","no"),
("299","wpseo_sitemap_21_cache_validator","23aiV","no"),
("300","wpseo_sitemap_23_cache_validator","23aiX","no"),
("301","wpseo_sitemap_24_cache_validator","23aiY","no"),
("303","wpseo_sitemap_26_cache_validator","24Ic5","no"),
("500","duplicator_pro_package_active","{\"Created\":\"2018-08-11 03:03:58\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.31\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20180811_mauwebgioithieuthietkeweb\",\"Hash\":\"ff8266133dbf5cfc4720_20180811030358\",\"NameHash\":\"20180811_mauwebgioithieuthietkeweb_ff8266133dbf5cfc4720_20180811030358\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/bizhostvn.com\\/w\\/vcheck\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20180811_mauwebgioithieuthietkeweb_ff8266133dbf5cfc4720_20180811030358_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/backups-dup-pro\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\",\"Size\":88087129,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/ai1wm-backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/backupwordpress\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/content\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/contents\\/cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/managewp\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/old-cache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/updraft\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/wishlist-backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/wfcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"logo-mescerd\\u00e9-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/logo-mescerd\\u00e9-150x150.jpg\"},{\"name\":\"t\\u1ea3i-xu\\u1ed1ng-300x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/t\\u1ea3i-xu\\u1ed1ng-300x150.jpg\"},{\"name\":\"t\\u1ea3i-xu\\u1ed1ng-150x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/t\\u1ea3i-xu\\u1ed1ng-150x150.jpg\"},{\"name\":\"logo-mescerd\\u00e9.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/logo-mescerd\\u00e9.jpg\"},{\"name\":\"logo-mescerd\\u00e9-300x150.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/logo-mescerd\\u00e9-300x150.jpg\"},{\"name\":\"t\\u1ea3i-xu\\u1ed1ng.jpg\",\"dir\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\",\"path\":\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-content\\/uploads\\/2018\\/08\\/t\\u1ea3i-xu\\u1ed1ng.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/.htaccess\",\"\\/home\\/admin\\/domains\\/bizhostvn.com\\/public_html\\/w\\/vcheck\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web16\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1156,\"tablesSizeOnDisk\":4489216,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("502","_transient_timeout_wpseo_link_table_inaccessible","1571801988","no"),
("503","_transient_wpseo_link_table_inaccessible","0","no"),
("504","_transient_timeout_wpseo_meta_table_inaccessible","1571801988","no"),
("505","_transient_wpseo_meta_table_inaccessible","0","no"),
("539","dbprefix_old_dbprefix","vc_","yes"),
("540","dbprefix_new","bz_","yes"),
("552","recovery_keys","a:0:{}","yes"),
("604","show_comments_cookies_opt_in","1","yes"),
("605","db_upgraded","","yes"),
("608","_site_transient_timeout_theme_roots","1557979166","no"),
("609","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:6:\"vcheck\";s:7:\"/themes\";}","no"),
("610","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557977376;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("611","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557977379;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.2\";s:6:\"vcheck\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("612","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557996894;s:7:\"checked\";a:1:{s:25:\"adminimize/adminimize.php\";s:6:\"1.11.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:25:\"adminimize/adminimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/adminimize\";s:4:\"slug\";s:10:\"adminimize\";s:6:\"plugin\";s:25:\"adminimize/adminimize.php\";s:11:\"new_version\";s:6:\"1.11.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/adminimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/adminimize.1.11.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/adminimize_000000.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/adminimize/assets/banner-772x250.png?rev=1118207\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("614","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558583311","no"),
("615","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("616","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558583312","no"),
("617","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("618","can_compress_scripts","0","no"),
("620","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558601537","no"),
("621","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("622","_transient_timeout_plugin_slugs","1558083296","no"),
("623","_transient_plugin_slugs","a:1:{i:0;s:25:\"adminimize/adminimize.php\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","3","_wp_page_template","default"),
("21","14","_wp_attached_file","2018/08/cropped-FAVICON.png"),
("22","14","_wp_attachment_context","site-icon"),
("23","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2018/08/cropped-FAVICON.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-FAVICON-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-FAVICON-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-FAVICON-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-FAVICON-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-FAVICON-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-FAVICON-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("30","17","_menu_item_type","custom"),
("31","17","_menu_item_menu_item_parent","0"),
("32","17","_menu_item_object_id","17"),
("33","17","_menu_item_object","custom"),
("34","17","_menu_item_target",""),
("35","17","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("36","17","_menu_item_xfn",""),
("37","17","_menu_item_url","/"),
("75","22","_menu_item_type","custom"),
("76","22","_menu_item_menu_item_parent","0"),
("77","22","_menu_item_object_id","22"),
("78","22","_menu_item_object","custom"),
("79","22","_menu_item_target",""),
("80","22","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("81","22","_menu_item_xfn",""),
("82","22","_menu_item_url","#"),
("168","59","_edit_last","1"),
("169","59","_footer","normal"),
("170","59","_wp_page_template","page-blank.php"),
("171","59","_edit_lock","1533379782:1"),
("172","59","_thumbnail_id",""),
("181","66","_wp_attached_file","2018/08/favicon.jpg"),
("182","66","_wp_attachment_metadata","a:5:{s:5:\"width\";i:111;s:6:\"height\";i:112;s:4:\"file\";s:19:\"2018/08/favicon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("183","67","_wp_attached_file","2018/08/cropped-favicon.jpg"),
("184","67","_wp_attachment_context","site-icon"),
("185","67","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2018/08/cropped-favicon.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favicon-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("190","70","_wp_attached_file","2018/08/images-1-01.png"),
("191","70","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:113;s:4:\"file\";s:23:\"2018/08/images-1-01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"images-1-01-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("201","112","_wp_attached_file","2018/08/bg1.png"),
("202","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:389;s:4:\"file\";s:15:\"2018/08/bg1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg1-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("203","120","_wp_attached_file","2018/08/4.png"),
("204","120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1167;s:6:\"height\";i:692;s:4:\"file\";s:13:\"2018/08/4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x455.png\";s:5:\"width\";i:768;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x607.png\";s:5:\"width\";i:1024;s:6:\"height\";i:607;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("210","139","_wp_attached_file","2018/08/800.jpg"),
("211","139","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:415;s:4:\"file\";s:15:\"2018/08/800.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"800-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"800-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("212","139","_edit_lock","1533566752:1"),
("223","144","_wp_attached_file","2018/08/12.jpg"),
("224","144","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:415;s:4:\"file\";s:14:\"2018/08/12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("225","144","_edit_lock","1533566973:1"),
("232","149","_wp_attached_file","2018/08/7.jpg"),
("233","149","_wp_attachment_metadata","a:5:{s:5:\"width\";i:668;s:6:\"height\";i:343;s:4:\"file\";s:13:\"2018/08/7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x154.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("234","149","_edit_lock","1533568108:1"),
("241","163","_wp_attached_file","2018/08/tem-xac-thuc.jpg"),
("242","163","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:520;s:4:\"file\";s:24:\"2018/08/tem-xac-thuc.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tem-xac-thuc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"tem-xac-thuc-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("243","172","_wp_attached_file","2018/08/bg.jpg"),
("244","172","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:400;s:4:\"file\";s:14:\"2018/08/bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"bg-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("245","174","_wp_attached_file","2018/08/chong-lam-gia.jpg"),
("246","174","_wp_attachment_metadata","a:5:{s:5:\"width\";i:183;s:6:\"height\";i:183;s:4:\"file\";s:25:\"2018/08/chong-lam-gia.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"chong-lam-gia-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("247","177","_wp_attached_file","2018/08/icon-2.jpg"),
("248","177","_wp_attachment_metadata","a:5:{s:5:\"width\";i:183;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2018/08/icon-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"icon-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:165:\"Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:47:\"Lock with Check line icon. Private locker sign.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:4:\"lock\";i:1;s:7:\"private\";i:2;s:3:\"key\";i:3;s:6:\"locker\";i:4;s:6:\"unlock\";i:5;s:6:\"secure\";i:6;s:7:\"padlock\";i:7;s:6:\"closed\";i:8;s:8:\"password\";i:9;s:10:\"encryption\";i:10;s:5:\"check\";i:11;s:4:\"tick\";i:12;s:8:\"approved\";i:13;s:7:\"confirm\";i:14;s:6:\"access\";i:15;s:7:\"privacy\";i:16;s:4:\"safe\";i:17;s:4:\"code\";i:18;s:7:\"blocked\";i:19;s:8:\"business\";i:20;s:10:\"protection\";i:21;s:6:\"safety\";i:22;s:6:\"secret\";i:23;s:8:\"security\";i:24;s:6:\"system\";i:25;s:4:\"icon\";i:26;s:4:\"sign\";i:27;s:6:\"symbol\";i:28;s:4:\"flat\";i:29;s:4:\"line\";i:30;s:6:\"stroke\";i:31;s:6:\"simple\";i:32;s:7:\"quality\";i:33;s:6:\"vector\";i:34;s:12:\"illustration\";i:35;s:4:\"thin\";i:36;s:3:\"app\";i:37;s:6:\"report\";i:38;s:11:\"information\";i:39;s:4:\"sale\";i:40;s:8:\"document\";i:41;s:10:\"statistics\";i:42;s:5:\"chart\";i:43;s:7:\"coupons\";i:44;s:8:\"download\";i:45;s:5:\"group\";i:46;s:8:\"discount\";i:47;s:8:\"internet\";i:48;s:8:\"editable\";}}}"),
("249","179","_wp_attached_file","2018/08/icon-1.jpg"),
("250","179","_wp_attachment_metadata","a:5:{s:5:\"width\";i:183;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2018/08/icon-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"icon-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:165:\"Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:47:\"Lock with Check line icon. Private locker sign.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:4:\"lock\";i:1;s:7:\"private\";i:2;s:3:\"key\";i:3;s:6:\"locker\";i:4;s:6:\"unlock\";i:5;s:6:\"secure\";i:6;s:7:\"padlock\";i:7;s:6:\"closed\";i:8;s:8:\"password\";i:9;s:10:\"encryption\";i:10;s:5:\"check\";i:11;s:4:\"tick\";i:12;s:8:\"approved\";i:13;s:7:\"confirm\";i:14;s:6:\"access\";i:15;s:7:\"privacy\";i:16;s:4:\"safe\";i:17;s:4:\"code\";i:18;s:7:\"blocked\";i:19;s:8:\"business\";i:20;s:10:\"protection\";i:21;s:6:\"safety\";i:22;s:6:\"secret\";i:23;s:8:\"security\";i:24;s:6:\"system\";i:25;s:4:\"icon\";i:26;s:4:\"sign\";i:27;s:6:\"symbol\";i:28;s:4:\"flat\";i:29;s:4:\"line\";i:30;s:6:\"stroke\";i:31;s:6:\"simple\";i:32;s:7:\"quality\";i:33;s:6:\"vector\";i:34;s:12:\"illustration\";i:35;s:4:\"thin\";i:36;s:3:\"app\";i:37;s:6:\"report\";i:38;s:11:\"information\";i:39;s:4:\"sale\";i:40;s:8:\"document\";i:41;s:10:\"statistics\";i:42;s:5:\"chart\";i:43;s:7:\"coupons\";i:44;s:8:\"download\";i:45;s:5:\"group\";i:46;s:8:\"discount\";i:47;s:8:\"internet\";i:48;s:8:\"editable\";}}}"),
("251","182","_wp_attached_file","2018/08/icon3.jpg"),
("252","182","_wp_attachment_metadata","a:5:{s:5:\"width\";i:183;s:6:\"height\";i:183;s:4:\"file\";s:17:\"2018/08/icon3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:165:\"Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:47:\"Lock with Check line icon. Private locker sign.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:4:\"lock\";i:1;s:7:\"private\";i:2;s:3:\"key\";i:3;s:6:\"locker\";i:4;s:6:\"unlock\";i:5;s:6:\"secure\";i:6;s:7:\"padlock\";i:7;s:6:\"closed\";i:8;s:8:\"password\";i:9;s:10:\"encryption\";i:10;s:5:\"check\";i:11;s:4:\"tick\";i:12;s:8:\"approved\";i:13;s:7:\"confirm\";i:14;s:6:\"access\";i:15;s:7:\"privacy\";i:16;s:4:\"safe\";i:17;s:4:\"code\";i:18;s:7:\"blocked\";i:19;s:8:\"business\";i:20;s:10:\"protection\";i:21;s:6:\"safety\";i:22;s:6:\"secret\";i:23;s:8:\"security\";i:24;s:6:\"system\";i:25;s:4:\"icon\";i:26;s:4:\"sign\";i:27;s:6:\"symbol\";i:28;s:4:\"flat\";i:29;s:4:\"line\";i:30;s:6:\"stroke\";i:31;s:6:\"simple\";i:32;s:7:\"quality\";i:33;s:6:\"vector\";i:34;s:12:\"illustration\";i:35;s:4:\"thin\";i:36;s:3:\"app\";i:37;s:6:\"report\";i:38;s:11:\"information\";i:39;s:4:\"sale\";i:40;s:8:\"document\";i:41;s:10:\"statistics\";i:42;s:5:\"chart\";i:43;s:7:\"coupons\";i:44;s:8:\"download\";i:45;s:5:\"group\";i:46;s:8:\"discount\";i:47;s:8:\"internet\";i:48;s:8:\"editable\";}}}"),
("255","195","_wp_attached_file","2018/08/bg3.jpg"),
("256","195","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:471;s:4:\"file\";s:15:\"2018/08/bg3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg3-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg3-768x265.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg3-1024x353.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("257","197","_wp_attached_file","2018/08/bg4.jpg"),
("258","197","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:471;s:4:\"file\";s:15:\"2018/08/bg4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg4-300x103.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg4-768x265.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg4-1024x353.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("259","199","_wp_attached_file","2018/08/qrcode.png"),
("260","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:596;s:6:\"height\";i:654;s:4:\"file\";s:18:\"2018/08/qrcode.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"qrcode-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"qrcode-273x300.png\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("261","223","_wp_attached_file","2018/08/mau-tem-1.jpg"),
("262","223","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:322;s:4:\"file\";s:21:\"2018/08/mau-tem-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"mau-tem-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"mau-tem-1-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("263","226","_wp_attached_file","2018/08/123.jpg"),
("264","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:327;s:6:\"height\";i:164;s:4:\"file\";s:15:\"2018/08/123.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"123-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"123-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("265","229","_wp_attached_file","2018/08/6.jpg"),
("266","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:327;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2018/08/6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("267","236","_wp_attached_file","2018/08/tem-tron.jpg"),
("268","236","_wp_attachment_metadata","a:5:{s:5:\"width\";i:163;s:6:\"height\";i:164;s:4:\"file\";s:20:\"2018/08/tem-tron.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tem-tron-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("269","239","_wp_attached_file","2018/08/tem.png"),
("270","239","_wp_attachment_metadata","a:5:{s:5:\"width\";i:163;s:6:\"height\";i:164;s:4:\"file\";s:15:\"2018/08/tem.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"tem-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("273","253","_wp_attached_file","2018/08/cac-thanh-phan-tren-tem.jpg"),
("274","253","_wp_attachment_metadata","a:5:{s:5:\"width\";i:470;s:6:\"height\";i:294;s:4:\"file\";s:35:\"2018/08/cac-thanh-phan-tren-tem.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cac-thanh-phan-tren-tem-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cac-thanh-phan-tren-tem-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("275","255","_wp_attached_file","2018/08/tem-chu-nhat.jpg"),
("276","255","_wp_attachment_metadata","a:5:{s:5:\"width\";i:327;s:6:\"height\";i:164;s:4:\"file\";s:24:\"2018/08/tem-chu-nhat.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tem-chu-nhat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"tem-chu-nhat-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("277","259","_wp_attached_file","2018/08/mau-tem-1-1.jpg"),
("278","259","_wp_attachment_metadata","a:5:{s:5:\"width\";i:470;s:6:\"height\";i:294;s:4:\"file\";s:23:\"2018/08/mau-tem-1-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"mau-tem-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"mau-tem-1-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("279","269","_wp_attached_file","2018/08/icon-1-1.jpg"),
("280","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:112;s:6:\"height\";i:112;s:4:\"file\";s:20:\"2018/08/icon-1-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("281","275","_wp_attached_file","2018/08/icon-2-1.jpg"),
("282","275","_wp_attachment_metadata","a:5:{s:5:\"width\";i:112;s:6:\"height\";i:112;s:4:\"file\";s:20:\"2018/08/icon-2-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("283","289","_wp_attached_file","2018/08/Login-24-min.jpg"),
("284","289","_wp_attachment_metadata","a:5:{s:5:\"width\";i:104;s:6:\"height\";i:104;s:4:\"file\";s:24:\"2018/08/Login-24-min.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("285","292","_wp_attached_file","2018/08/icon-3.jpg"),
("286","292","_wp_attachment_metadata","a:5:{s:5:\"width\";i:104;s:6:\"height\";i:104;s:4:\"file\";s:18:\"2018/08/icon-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("287","315","_wp_attached_file","2018/08/icon-giai-phap.png"),
("288","315","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2018/08/icon-giai-phap.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("289","320","_wp_attached_file","2018/08/icon-3.png"),
("290","320","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2018/08/icon-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("291","322","_wp_attached_file","2018/08/icon-4.png"),
("292","322","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2018/08/icon-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("293","324","_wp_attached_file","2018/08/icon-6.png"),
("294","324","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2018/08/icon-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("295","327","_wp_attached_file","2018/08/icon-3-1.png"),
("296","327","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2018/08/icon-3-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("297","333","_edit_last","1"),
("298","333","_edit_lock","1533576668:1");
INSERT INTO bz_postmeta VALUES
("299","334","_wp_attached_file","2018/08/mut1-1493786719-665x480.jpg"),
("300","334","_wp_attachment_metadata","a:5:{s:5:\"width\";i:665;s:6:\"height\";i:480;s:4:\"file\";s:35:\"2018/08/mut1-1493786719-665x480.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"mut1-1493786719-665x480-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"mut1-1493786719-665x480-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("301","333","_thumbnail_id","334"),
("303","336","_edit_last","1"),
("304","336","_edit_lock","1533576707:1"),
("305","337","_wp_attached_file","2018/08/nguyen-viet-hong-1487345953.jpg"),
("306","337","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:367;s:4:\"file\";s:39:\"2018/08/nguyen-viet-hong-1487345953.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"nguyen-viet-hong-1487345953-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"nguyen-viet-hong-1487345953-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("307","336","_thumbnail_id","337"),
("309","339","_edit_last","1"),
("310","339","_edit_lock","1533576784:1"),
("311","340","_wp_attached_file","2018/08/kEQxawnh.jpg"),
("312","340","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:295;s:4:\"file\";s:20:\"2018/08/kEQxawnh.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kEQxawnh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kEQxawnh-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("313","339","_thumbnail_id","340"),
("315","343","_wp_attached_file","2018/08/hang_gia-21_39_56_818.jpg"),
("316","343","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:344;s:4:\"file\";s:33:\"2018/08/hang_gia-21_39_56_818.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"hang_gia-21_39_56_818-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"hang_gia-21_39_56_818-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("317","342","_edit_last","1"),
("318","342","_thumbnail_id","343"),
("320","342","_edit_lock","1533612412:1"),
("337","365","_wp_attached_file","2018/08/logo-honda.jpg"),
("338","365","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:22:\"2018/08/logo-honda.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-honda-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-honda-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("339","366","_wp_attached_file","2018/08/logo-honda-1.jpg"),
("340","366","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:24:\"2018/08/logo-honda-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-honda-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-honda-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("341","367","_wp_attached_file","2018/08/logo-toyota.jpg"),
("342","367","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:23:\"2018/08/logo-toyota.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-toyota-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"logo-toyota-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("343","368","_wp_attached_file","2018/08/logo-audi.jpg"),
("344","368","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:21:\"2018/08/logo-audi.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-audi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo-audi-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("345","369","_wp_attached_file","2018/08/logo-huyndai.jpg"),
("346","369","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:24:\"2018/08/logo-huyndai.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-huyndai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-huyndai-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("347","370","_wp_attached_file","2018/08/logo-mescerdé.jpg"),
("348","370","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:26:\"2018/08/logo-mescerdé.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-mescerdé-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"logo-mescerdé-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("349","371","_wp_attached_file","2018/08/logo-mazda.jpg"),
("350","371","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:22:\"2018/08/logo-mazda.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-mazda-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-mazda-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("351","372","_wp_attached_file","2018/08/logo-chevrlet.jpg"),
("352","372","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:25:\"2018/08/logo-chevrlet.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-chevrlet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"logo-chevrlet-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("353","373","_wp_attached_file","2018/08/logo-lezus.jpg"),
("354","373","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:22:\"2018/08/logo-lezus.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-lezus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-lezus-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("357","387","_wp_attached_file","2018/08/10000.jpg"),
("358","387","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:17:\"2018/08/10000.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"10000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"10000-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("359","389","_wp_attached_file","2018/08/tải-xuống.jpg"),
("360","389","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:25:\"2018/08/tải-xuống.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"tải-xuống-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"tải-xuống-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("361","391","_wp_attached_file","2018/08/cung-cap.jpg"),
("362","391","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:20:\"2018/08/cung-cap.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cung-cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"cung-cap-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("363","392","_wp_attached_file","2018/08/cung-cap-1.jpg"),
("364","392","_wp_attachment_metadata","a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:22:\"2018/08/cung-cap-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cung-cap-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cung-cap-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("367","401","_edit_last","1"),
("368","401","_edit_lock","1540267379:1"),
("370","411","_wp_attached_file","2018/08/hotline.png"),
("371","411","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:40;s:4:\"file\";s:19:\"2018/08/hotline.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("372","428","_wp_attached_file","2018/08/guarantee_img.jpg"),
("373","428","_wp_attachment_metadata","a:5:{s:5:\"width\";i:163;s:6:\"height\";i:50;s:4:\"file\";s:25:\"2018/08/guarantee_img.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"guarantee_img-150x50.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("377","432","_wp_attached_file","2018/08/Untitled-1.jpg"),
("378","432","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2018/08/Untitled-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Untitled-1-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Untitled-1-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Untitled-1-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("379","401","_thumbnail_id",""),
("394","467","_edit_last","1"),
("395","467","_edit_lock","1533608446:1"),
("396","467","_footer","normal"),
("397","467","_wp_page_template","page-right-sidebar.php"),
("432","342","_yoast_wpseo_content_score","90"),
("433","342","_yoast_wpseo_focuskeywords","[]"),
("434","342","_yoast_wpseo_keywordsynonyms",""),
("435","342","_yoast_wpseo_primary_category",""),
("473","503","_menu_item_type","post_type"),
("474","503","_menu_item_menu_item_parent","0"),
("475","503","_menu_item_object_id","467"),
("476","503","_menu_item_object","page"),
("477","503","_menu_item_target",""),
("478","503","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("479","503","_menu_item_xfn",""),
("480","503","_menu_item_url",""),
("482","504","_menu_item_type","taxonomy"),
("483","504","_menu_item_menu_item_parent","0"),
("484","504","_menu_item_object_id","1"),
("485","504","_menu_item_object","category"),
("486","504","_menu_item_target",""),
("487","504","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("488","504","_menu_item_xfn",""),
("489","504","_menu_item_url",""),
("495","507","_edit_last","1"),
("496","507","_footer","normal"),
("497","507","_wp_page_template","page-right-sidebar.php"),
("498","507","_yoast_wpseo_content_score","60"),
("499","507","_yoast_wpseo_focuskeywords","[]"),
("500","507","_yoast_wpseo_keywordsynonyms",""),
("501","507","_edit_lock","1533611655:1"),
("502","509","_edit_last","1"),
("503","509","_edit_lock","1533611674:1"),
("504","509","_footer","normal"),
("505","509","_wp_page_template","page-right-sidebar.php"),
("506","509","_yoast_wpseo_content_score","60"),
("507","509","_yoast_wpseo_focuskeywords","[]"),
("508","509","_yoast_wpseo_keywordsynonyms",""),
("509","511","_edit_last","1"),
("510","511","_footer","normal"),
("511","511","_wp_page_template","page-blank.php"),
("512","511","_yoast_wpseo_content_score","30"),
("513","511","_yoast_wpseo_focuskeywords","[]"),
("514","511","_yoast_wpseo_keywordsynonyms",""),
("515","511","_edit_lock","1533613697:1"),
("529","544","_edit_last","1"),
("530","544","_edit_lock","1533614002:1");
INSERT INTO bz_postmeta VALUES
("531","544","_footer","normal"),
("532","544","_wp_page_template","page-blank.php"),
("533","544","_yoast_wpseo_content_score","30"),
("534","544","_yoast_wpseo_focuskeywords","[]"),
("535","544","_yoast_wpseo_keywordsynonyms",""),
("537","547","_wp_attached_file","2018/08/pdf-icon.jpg"),
("538","547","_wp_attachment_metadata","a:5:{s:5:\"width\";i:95;s:6:\"height\";i:93;s:4:\"file\";s:20:\"2018/08/pdf-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("541","553","_menu_item_type","post_type"),
("542","553","_menu_item_menu_item_parent","0"),
("543","553","_menu_item_object_id","507"),
("544","553","_menu_item_object","page"),
("545","553","_menu_item_target",""),
("546","553","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("547","553","_menu_item_xfn",""),
("548","553","_menu_item_url",""),
("550","554","_menu_item_type","post_type"),
("551","554","_menu_item_menu_item_parent","0"),
("552","554","_menu_item_object_id","509"),
("553","554","_menu_item_object","page"),
("554","554","_menu_item_target",""),
("555","554","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("556","554","_menu_item_xfn",""),
("557","554","_menu_item_url",""),
("559","555","_menu_item_type","post_type"),
("560","555","_menu_item_menu_item_parent","22"),
("561","555","_menu_item_object_id","511"),
("562","555","_menu_item_object","page"),
("563","555","_menu_item_target",""),
("564","555","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("565","555","_menu_item_xfn",""),
("566","555","_menu_item_url",""),
("568","556","_menu_item_type","post_type"),
("569","556","_menu_item_menu_item_parent","22"),
("570","556","_menu_item_object_id","544"),
("571","556","_menu_item_object","page"),
("572","556","_menu_item_target",""),
("573","556","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("574","556","_menu_item_xfn",""),
("575","556","_menu_item_url",""),
("577","557","_edit_last","1"),
("578","557","_edit_lock","1533614513:1"),
("579","557","_footer","normal"),
("580","557","_wp_page_template","page-blank.php"),
("581","557","_yoast_wpseo_content_score","30"),
("582","557","_yoast_wpseo_focuskeywords","[]"),
("583","557","_yoast_wpseo_keywordsynonyms",""),
("587","566","_wp_attached_file","2018/08/follow-1.png"),
("588","566","_wp_attachment_metadata","a:5:{s:5:\"width\";i:236;s:6:\"height\";i:312;s:4:\"file\";s:20:\"2018/08/follow-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"follow-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"follow-1-227x300.png\";s:5:\"width\";i:227;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("589","571","_menu_item_type","post_type"),
("590","571","_menu_item_menu_item_parent","0"),
("591","571","_menu_item_object_id","557"),
("592","571","_menu_item_object","page"),
("593","571","_menu_item_target",""),
("594","571","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("595","571","_menu_item_xfn",""),
("596","571","_menu_item_url","");




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
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2018-08-02 14:39:09","2018-08-02 14:39:09","Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"https://bizhostvn.com/w/vcheck/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2018-08-02 14:39:09","2018-08-02 14:39:09","","0","https://bizhostvn.com/w/vcheck/?page_id=2","0","page","","0"),
("3","1","2018-08-02 14:39:09","2018-08-02 14:39:09","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/vcheck.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2018-08-02 14:39:09","2018-08-02 14:39:09","","0","https://bizhostvn.com/w/vcheck/?page_id=3","0","page","","0"),
("14","1","2018-08-04 17:33:26","2018-08-04 10:33:26","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cropped-FAVICON.png","cropped-FAVICON.png","","inherit","open","closed","","cropped-favicon-png","","","2018-08-04 17:33:26","2018-08-04 10:33:26","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cropped-FAVICON.png","0","attachment","image/png","0"),
("17","1","2018-08-04 17:35:07","2018-08-04 10:35:07","","Trang chủ","","publish","closed","closed","","trang-chu","","","2018-08-07 14:09:41","2018-08-07 07:09:41","","0","https://bizhostvn.com/w/vcheck/?p=17","1","nav_menu_item","","0"),
("22","1","2018-08-04 17:36:56","2018-08-04 10:36:56","","Hỗ trợ","","publish","closed","closed","","ho-tro","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=22","5","nav_menu_item","","0"),
("31","1","2018-08-04 17:39:26","2018-08-04 10:39:26",".header-nav.nav > li > a{font-weight:normal; font-size:15px}\n.nav-spacing-xlarge>li{margin: 0 15px;}.nav-dropdown-default {\n    padding: 5px;border: 0 solid #ddd;\n}","vcheck","","publish","closed","closed","","vcheck","","","2018-08-04 17:41:45","2018-08-04 10:41:45","","0","https://bizhostvn.com/w/vcheck/2018/08/04/vcheck/","0","custom_css","","0"),
("59","1","2018-08-04 17:52:04","2018-08-04 10:52:04","[ux_slider label=\"Slider-PC\" visibility=\"hide-for-small\" nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\" timer=\"5000\"]\n\n[ux_banner height=\"450px\"]\n\n[text_box width=\"45\" width__sm=\"60\" position_x=\"95\" position_y=\"10\"]\n\n<h3 style=\"text-align: left;\"><span style=\"font-size: 120%;\">Xác thực hàng hóa - Vcheck</span></h3>\n\n[/text_box]\n[ux_image id=\"112\" image_size=\"original\" width=\"44\" animate=\"bounceIn\" position_x=\"0\" position_y=\"50\"]\n\n[text_box width=\"43\" position_x=\"95\" position_y=\"50\" text_align=\"left\"]\n\n<ul>\n<li style=\"text-align: left;\"><span style=\"font-size: 100%;\">Cung cấp giải pháp ứng dụng QR-CODE</span></li>\n<li style=\"text-align: left;\"><span style=\"font-size: 100%;\">Sản xuất tem bảo hành, tem xác thực hàng hóa,...</span></li>\n<li style=\"text-align: left;\"><span style=\"font-size: 100%;\">Giải quyết các vấn đề kinh doanh và quản lý doanh nghiệp.</span></li>\n<li style=\"text-align: left;\"><span style=\"font-size: 100%;\">Tạo giải pháp bảo vệ người tiêu dùng phù hợp với xu thế ngày càng tương tác nhiều hơn trên mobile, đặc biệt là hành vi quét mã vạch, mã QR Code</span></li>\n</ul>\n\n[/text_box]\n[text_box width=\"40\" position_x=\"90\" position_y=\"95\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Hướng dẫn sử dụng\" letter_case=\"lowercase\" color=\"secondary\" size=\"large\" expand=\"true\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Tư vấn khách hàng\" letter_case=\"lowercase\" color=\"white\" style=\"outline\" size=\"large\" expand=\"true\"]\n\n\n[/col]\n\n[/row]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"450px\" bg=\"197\" bg_size=\"original\"]\n\n[text_box width=\"45\" width__sm=\"60\" position_x=\"5\" position_y=\"30\"]\n\n<h3 style=\"text-align: left;\"><span style=\"font-size: 120%;\">Tải ứng dụng V-check</span></h3>\n<p style=\"text-align: left;\">Mọi lúc mọi nơi, giúp bạn dễ dàng truy xuất nguồn gốc, hình ảnh và giá cả của hàng hóa ngay trên smartphone của bạn.</p>\n\n[/text_box]\n[ux_image id=\"199\" image_size=\"original\" width=\"44\" animate=\"bounceIn\" position_x=\"95\" position_y=\"0\"]\n\n[text_box width=\"40\" animate=\"bounceInLeft\" position_x=\"5\" position_y=\"80\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Download for IOS\" letter_case=\"lowercase\" size=\"large\" expand=\"true\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Download for Android\" letter_case=\"lowercase\" color=\"secondary\" size=\"large\" expand=\"true\"]\n\n\n[/col]\n\n[/row]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[ux_banner visibility=\"show-for-small\" height=\"450px\" bg=\"197\" bg_size=\"original\"]\n\n[text_box width=\"100\" width__sm=\"60\" animate=\"bounceInLeft\" position_x=\"50\" position_y=\"80\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 120%;\">Ứng dụng xác thực Vcheck</span></h3>\n<p style=\"text-align: center;\">Mọi lúc mọi nơi, giúp khách hàng dễ dàng xác thực<br />sản phẩm chính hãng thông qua đầu đọc mã vạch,<br />tin nhắn SMS và nhiều tính năng khác,...</p>\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Download for IOS\" letter_case=\"lowercase\" color=\"secondary\" expand=\"true\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Download for Android\" letter_case=\"lowercase\" expand=\"true\" link=\"#\"]\n\n\n[/col]\n\n[/row]\n\n[/text_box]\n\n[/ux_banner]\n[section label=\"Giới thiệu\" class=\"gioi-thieu\" bg=\"172\" bg_size=\"original\" padding=\"60px\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\" animate=\"bounceIn\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #333333; font-size: 95%;\">SỬ DỤNG TEM XÁC THỰC SẼ GIÚP DOANH NGHIỆP CỦA BẠN</span></h2>\n\n[/col]\n[col span=\"5\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n<p><span style=\"font-size: 120%;\"><strong><span style=\"color: #00a859;\">Tem chống hàng giả Vcheck</span></strong></span></p>\n<p>Các giải pháp tem chống hàng giả do <strong>Vcheck</strong> cung cấp đảm bảo tính hợp pháp, có thể giúp quản lý sản phẩm, tìm kiếm nguồn gốc hàng hóa, vấn đề chống hàng giả ở Việt Nam.</p>\n<p>Tất cả các giải pháp chống hàng giả của <strong>Vcheck</strong> do chính phủ và các công ty sử dụng để áp dụng chúng vào hoạt động kinh doanh của họ.</p>\n[button text=\"Tìm hiểu thêm về Vcheck\" letter_case=\"lowercase\" size=\"small\"]\n\n\n[/col]\n[col span=\"7\" span__sm=\"12\" align=\"center\" animate=\"fadeInRight\"]\n\n[row_inner style=\"collapse\" class=\"row-hinh-anh\"]\n\n[col_inner span=\"7\" span__sm=\"12\"]\n\n[featured_box img=\"177\" img_width=\"50\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%; color: #000000;\"><strong>Công nghệ chống giả vượt trội</strong></span><br />Áp dụng công nghệ chống giả an toàn vượt trội</p>\n\n[/featured_box]\n[gap height=\"26px\"]\n\n[featured_box img=\"179\" img_width=\"51\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%; color: #000000;\"><strong>Kiểm tra, xác thực sản phẩm</strong></span><br /><span style=\"font-size: 100%;\">Truy xuất chính xác nguồn gốc, hình ảnh và giá của sản phẩm</span></p>\n\n[/featured_box]\n[gap height=\"26px\"]\n\n[featured_box img=\"182\" img_width=\"52\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%; color: #000000;\"><strong>Dễ dàng kiểm tra trên PC hoặc Smartphone</strong></span><br /><span style=\"font-size: 100%;\">Xác định sản phẩm thật hay giả dễ dàng bằng Smartphone</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"163\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Các mẫu tem\" class=\"cac-mau-tem\" bg_color=\"rgb(243, 243, 243)\" padding=\"60px\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\" animate=\"bounceIn\"]\n\n<h2 class=\"title\" style=\"text-align: center;\"><span style=\"color: #333333; font-size: 95%;\">Chọn giải pháp chống hàng giả </span><br /><span class=\"themecolor\" style=\"color: #333333; font-size: 95%;\">cho doanh nghiệp của bạn ngay hôm nay</span></h2>\n<p style=\"text-align: center;\"><strong>V-Check</strong> không ngừng đầu tư, nâng cấp và cải tiến công nghệ chống hàng giả mới trên tem chống hàng giả để cung cấp tem chống hàng giả và tem thông minh mới cho thị trường. Những trợ giúp này cho các doanh nghiệp và khách hàng có các công cụ hiệu quả để chống lại hàng giả, sản phẩm giả mạo.</p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"bounceIn\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 110%; color: #000000;\"><strong>Tem xác thực ngang 4x2cm<br /></strong></span><span style=\"color: #808080; font-size: 100%;\">Được dùng phổ biến cho nhãn mác sản phẩm điện tử, điện máy, nông sản,...<br /></span><span style=\"font-size: 100%; color: #00a859;\"><a style=\"color: #00a859;\" href=\"#\">Xem chi tiết</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" animate=\"bounceIn\"]\n\n[ux_image id=\"239\" image_size=\"original\" width=\"50\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 110%; color: #000000;\"><strong>Tem xác thực tròn 2.5x2.5cm<br /></strong></span><span style=\"color: #808080; font-size: 100%;\">dùng cho các sản phẩm có kích thước nhỏ hoặc hình dáng tròn,...<br /><span style=\"color: #00a859;\"><a style=\"color: #00a859;\" href=\"#\">Xem chi tiết</a></span></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"bounceIn\"]\n\n[ux_image id=\"255\" image_size=\"original\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 110%; color: #000000;\"><strong>Tem xác thực ngang 4x2cm<br /></strong></span><span style=\"color: #808080; font-size: 100%;\">Được dùng phổ biến cho nhãn mác sản phẩm điện tử, điện máy, nông sản,...<br /></span><span style=\"font-size: 100%; color: #00a859;\"><a style=\"color: #00a859;\" href=\"#\">Xem chi tiết</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" animate=\"bounceIn\"]\n\n[ux_image id=\"239\" image_size=\"original\" width=\"50\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 110%; color: #000000;\"><strong>Tem xác thực tròn 2.5x2.5cm<br /></strong></span><span style=\"color: #808080; font-size: 100%;\">dùng cho các sản phẩm có kích thước nhỏ hoặc hình dáng tròn,...<br /><span style=\"color: #00a859;\"><a style=\"color: #00a859;\" href=\"#\">Xem chi tiết</a></span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Các thành phần chính trên tem\" class=\"cac-thanh-phan-chinh\" visibility=\"hide-for-small\" bg_color=\"rgb(255, 255, 255)\" padding=\"56px\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\" animate=\"bounceInLeft\"]\n\n[featured_box img=\"269\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">1. Logo doanh nghiệp</span></h3>\n<p><span style=\"font-size: 95%;\"> Vị trí xuất hiện logo của doanh nghiệp, giúp doanh nghiệp quảng bá thương hiệu mọi lúc mọi nơi, tạo kênh truyền thông hiệu quả mới bên cạnh các kênh truyền thông hiện có,...</span></p>\n\n[/featured_box]\n[gap height=\"40px\"]\n\n[featured_box img=\"275\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">2. Tên doanh nghiệp</span></h3>\n<p><span style=\"font-size: 95%;\">Tên và thông tin liên hệ cơ bản của doanh nghiệp. Trong một số trường hợp tên doanh nghiệp có thể không được sử dụng, thay vào đó là tiêu đề <strong>\"Tem xác thực hàng chính hãng\".</strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceIn\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #333333; font-size: 95%;\">Các thành phần chính<br /> trên tem xác thực V-check</span></h2>\n[ux_image id=\"259\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceInRight\"]\n\n[featured_box img=\"289\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">3. Vị trí phủ cào</span></h3>\n<p><span style=\"font-size: 95%;\">Phần phủ cào là lớp phủ UV không bong tróc, thân thiện với môi trường. Phần này không thể làm giả và không thể sử dụng lại nếu đã cào.</span></p>\n\n[/featured_box]\n[gap height=\"40px\"]\n\n[featured_box img=\"292\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">4. Mã QR-code + Serial Number</span></h3>\n<p><span style=\"font-size: 95%;\">Mã QR-CODE show ra các thông tin cơ bản về hình ảnh, xuất xứ và giá của sản phẩm. Bên dưới QR-CODE là Serial Number được sinh ra từ hệ thống trong quá trình in.</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Các thành phần chính trên tem\" class=\"cac-thanh-phan-chinh\" visibility=\"show-for-small\" bg_color=\"rgb(255, 255, 255)\" padding=\"56px\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\" animate=\"bounceIn\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #333333; font-size: 95%;\">Các thành phần chính<br /> trên tem xác thực V-check</span></h2>\n[ux_image id=\"259\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceInLeft\"]\n\n[featured_box img=\"269\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">1. Logo doanh nghiệp</span></h3>\n<p><span style=\"font-size: 95%;\"> Vị trí xuất hiện logo của doanh nghiệp, giúp doanh nghiệp quảng bá thương hiệu mọi lúc mọi nơi, tạo kênh truyền thông hiệu quả mới bên cạnh các kênh truyền thông hiện có,...</span></p>\n\n[/featured_box]\n[gap height=\"40px\"]\n\n[featured_box img=\"275\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">2. Tên doanh nghiệp</span></h3>\n<p><span style=\"font-size: 95%;\">Tên và thông tin liên hệ cơ bản của doanh nghiệp. Trong một số trường hợp tên doanh nghiệp có thể không được sử dụng, thay vào đó là tiêu đề <strong>\"Tem xác thực hàng chính hãng\".</strong></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceInRight\"]\n\n[featured_box img=\"289\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">3. Vị trí phủ cào</span></h3>\n<p><span style=\"font-size: 95%;\">Phần phủ cào là lớp phủ UV không bong tróc, thân thiện với môi trường. Phần này không thể làm giả và không thể sử dụng lại nếu đã cào.</span></p>\n\n[/featured_box]\n[gap height=\"40px\"]\n\n[featured_box img=\"292\" pos=\"left\"]\n\n<h3><span style=\"color: #000000; font-size: 90%;\">4. Mã QR-code + Serial Number</span></h3>\n<p><span style=\"font-size: 95%;\">Mã QR-CODE show ra các thông tin cơ bản về hình ảnh, xuất xứ và giá của sản phẩm. Bên dưới QR-CODE là Serial Number được sinh ra từ hệ thống trong quá trình in.</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Vì sao chọn chúng tôi\" class=\"vi-sao\" bg=\"195\" bg_size=\"original\" padding=\"51px\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\" animate=\"fadeInUp\"]\n\n<h2 class=\"title\" style=\"text-align: center;\"><span>Tại sao nên chọn </span><span>V-Check</span></h2>\n<div class=\"inside\">\n<p class=\"big\" style=\"text-align: center;\"><span>V-Check có nhiều giải pháp in tem xác thực giúp thương hiệu doanh nghiệp của bạn được bảo vệ hiệu quả</span></p>\n</div>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"bounceIn\"]\n\n[featured_box img=\"315\" img_width=\"85\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Giải pháp hoàn chỉnh</span></h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Hoàn thành các giải pháp chống hàng giả cho các doanh nghiệp của bạn quảng bá tại Việt Nam</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"bounceIn\"]\n\n[featured_box img=\"322\" img_width=\"85\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Công nghệ mới nhất</span></h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Thương hiệu của bạn sẽ được bảo vệ hoàn toàn bởi công nghệ chống hàng giả của chúng tôi</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"bounceIn\"]\n\n[featured_box img=\"324\" img_width=\"85\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Đảm bảo tính hợp pháp</span></h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">V-check đảm bảo tính hợp pháp của tất cả các giải pháp chống hàng giả đối với Chính Phủ Việt Nam</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"bounceIn\"]\n\n[featured_box img=\"327\" img_width=\"85\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 100%;\">Support 24/7</span></h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Luôn luôn lắng nghe và cải thiện giải pháp không ngừng nhằm phục vụ tốt nhất</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Thành tựu\" class=\"thanh-tuu\" bg=\"195\" bg_size=\"original\" bg_overlay=\"rgba(255, 255, 255, 0.83)\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\" animate=\"bounceIn\"]\n\n[ux_image id=\"387\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceIn\"]\n\n[ux_image id=\"389\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" animate=\"bounceIn\"]\n\n[ux_image id=\"392\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\" padding=\"51px\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #333333; font-size: 90%;\">BÀI VIẾT - TIN TỨC </span></h2>\n[gap height=\"21px\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" animate=\"bounceIn\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" show_date=\"text\" excerpt_length=\"17\" comments=\"false\" image_height=\"76%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n[button text=\"Xem tất cả\" letter_case=\"lowercase\" size=\"small\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đối tác của chúng tôi\" class=\"doi-tac\" bg=\"172\" bg_size=\"original\" bg_color=\"rgb(243, 243, 243)\" bg_overlay=\"rgba(226, 226, 226, 0.34)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<h2 style=\"text-align: center;\"><span style=\"color: #333333; font-size: 90%;\">ĐỐI TÁC - KHÁCH HÀNG CỦA CHÚNG TÔI</span></h2>\n[gap]\n\n[row_inner]\n\n[col_inner span__sm=\"12\"]\n\n[ux_slider freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"365\" height=\"100px\"]\n\n[logo img=\"367\" height=\"100px\"]\n\n[logo img=\"368\" height=\"100px\"]\n\n[logo img=\"369\" height=\"100px\"]\n\n[logo img=\"369\" height=\"100px\"]\n\n[logo img=\"370\" height=\"100px\"]\n\n[logo img=\"371\" height=\"100px\"]\n\n[logo img=\"372\" height=\"100px\"]\n\n[logo img=\"373\" height=\"100px\"]\n\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2018-08-07 11:16:17","2018-08-07 04:16:17","","0","https://bizhostvn.com/w/vcheck/?page_id=59","0","page","","0"),
("66","1","2018-08-04 17:58:06","2018-08-04 10:58:06","","favicon","","inherit","open","closed","","favicon-2","","","2018-08-04 17:58:06","2018-08-04 10:58:06","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/favicon.jpg","0","attachment","image/jpeg","0"),
("67","1","2018-08-04 17:58:08","2018-08-04 10:58:08","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cropped-favicon.jpg","cropped-favicon.jpg","","inherit","open","closed","","cropped-favicon-jpg","","","2018-08-04 17:58:08","2018-08-04 10:58:08","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cropped-favicon.jpg","0","attachment","image/jpeg","0"),
("70","1","2018-08-04 18:21:05","2018-08-04 11:21:05","","images (1)-01","","inherit","open","closed","","images-1-01","","","2018-08-04 18:21:05","2018-08-04 11:21:05","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/images-1-01.png","0","attachment","image/png","0"),
("112","1","2018-08-06 20:27:08","2018-08-06 13:27:08","","bg1","","inherit","open","closed","","bg1","","","2018-08-06 20:27:08","2018-08-06 13:27:08","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/bg1.png","0","attachment","image/png","0"),
("120","1","2018-08-06 21:04:57","2018-08-06 14:04:57","","4","","inherit","open","closed","","4","","","2018-08-06 21:04:57","2018-08-06 14:04:57","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/4.png","0","attachment","image/png","0"),
("139","1","2018-08-06 21:47:52","2018-08-06 14:47:52","","800","","inherit","open","closed","","800","","","2018-08-06 21:47:52","2018-08-06 14:47:52","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/800.jpg","0","attachment","image/jpeg","0"),
("144","1","2018-08-06 21:51:53","2018-08-06 14:51:53","","12","","inherit","open","closed","","12","","","2018-08-06 21:51:53","2018-08-06 14:51:53","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/12.jpg","0","attachment","image/jpeg","0"),
("149","1","2018-08-06 21:55:38","2018-08-06 14:55:38","","7","","inherit","open","closed","","7","","","2018-08-06 21:55:38","2018-08-06 14:55:38","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/7.jpg","0","attachment","image/jpeg","0"),
("163","1","2018-08-06 22:06:58","2018-08-06 15:06:58","","tem xac thuc","","inherit","open","closed","","tem-xac-thuc-2","","","2018-08-06 22:06:58","2018-08-06 15:06:58","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/tem-xac-thuc.jpg","0","attachment","image/jpeg","0"),
("172","1","2018-08-06 22:14:12","2018-08-06 15:14:12","","bg","","inherit","open","closed","","bg","","","2018-08-06 22:14:12","2018-08-06 15:14:12","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/bg.jpg","0","attachment","image/jpeg","0"),
("174","1","2018-08-06 22:16:46","2018-08-06 15:16:46","","chong-lam-gia","","inherit","open","closed","","chong-lam-gia","","","2018-08-06 22:16:46","2018-08-06 15:16:46","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/chong-lam-gia.jpg","0","attachment","image/jpeg","0"),
("177","1","2018-08-06 22:20:15","2018-08-06 15:20:15","","Lock with Check line icon. Private locker sign.","Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector","inherit","open","closed","","lock-with-check-line-icon-private-locker-sign","","","2018-08-06 22:20:15","2018-08-06 15:20:15","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-2.jpg","0","attachment","image/jpeg","0"),
("179","1","2018-08-06 22:21:50","2018-08-06 15:21:50","","Lock with Check line icon. Private locker sign.","Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector","inherit","open","closed","","lock-with-check-line-icon-private-locker-sign-2","","","2018-08-06 22:21:50","2018-08-06 15:21:50","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-1.jpg","0","attachment","image/jpeg","0"),
("182","1","2018-08-06 22:25:01","2018-08-06 15:25:01","","Lock with Check line icon. Private locker sign.","Lock with Check line icon. Private locker sign. Password encryption symbol. Report, Sale Coupons and Chart line signs. Download, Group icons. Editable stroke. Vector","inherit","open","closed","","lock-with-check-line-icon-private-locker-sign-3","","","2018-08-06 22:25:01","2018-08-06 15:25:01","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon3.jpg","0","attachment","image/jpeg","0"),
("195","1","2018-08-06 22:31:27","2018-08-06 15:31:27","","bg3","","inherit","open","closed","","bg3","","","2018-08-06 22:31:27","2018-08-06 15:31:27","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/bg3.jpg","0","attachment","image/jpeg","0"),
("197","1","2018-08-06 22:32:09","2018-08-06 15:32:09","","bg4","","inherit","open","closed","","bg4","","","2018-08-06 22:32:09","2018-08-06 15:32:09","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/bg4.jpg","0","attachment","image/jpeg","0"),
("199","1","2018-08-06 22:35:12","2018-08-06 15:35:12","","qrcode","","inherit","open","closed","","qrcode","","","2018-08-06 22:35:12","2018-08-06 15:35:12","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/qrcode.png","0","attachment","image/png","0"),
("223","1","2018-08-06 23:09:49","2018-08-06 16:09:49","","mau tem 1","","inherit","open","closed","","mau-tem-1","","","2018-08-06 23:09:49","2018-08-06 16:09:49","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/mau-tem-1.jpg","0","attachment","image/jpeg","0"),
("226","1","2018-08-06 23:11:17","2018-08-06 16:11:17","","123","","inherit","open","closed","","123","","","2018-08-06 23:11:17","2018-08-06 16:11:17","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/123.jpg","0","attachment","image/jpeg","0"),
("229","1","2018-08-06 23:15:26","2018-08-06 16:15:26","","6","","inherit","open","closed","","6","","","2018-08-06 23:15:26","2018-08-06 16:15:26","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/6.jpg","0","attachment","image/jpeg","0"),
("236","1","2018-08-06 23:24:36","2018-08-06 16:24:36","","tem tron","","inherit","open","closed","","tem-tron","","","2018-08-06 23:24:36","2018-08-06 16:24:36","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/tem-tron.jpg","0","attachment","image/jpeg","0"),
("239","1","2018-08-06 23:26:18","2018-08-06 16:26:18","","tem","","inherit","open","closed","","tem","","","2018-08-06 23:26:18","2018-08-06 16:26:18","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/tem.png","0","attachment","image/png","0"),
("253","1","2018-08-06 23:44:09","2018-08-06 16:44:09","","cac thanh phan tren tem","","inherit","open","closed","","cac-thanh-phan-tren-tem","","","2018-08-06 23:44:09","2018-08-06 16:44:09","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cac-thanh-phan-tren-tem.jpg","0","attachment","image/jpeg","0"),
("255","1","2018-08-06 23:44:54","2018-08-06 16:44:54","","tem-chu-nhat","","inherit","open","closed","","tem-chu-nhat","","","2018-08-06 23:44:54","2018-08-06 16:44:54","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/tem-chu-nhat.jpg","0","attachment","image/jpeg","0"),
("259","1","2018-08-06 23:46:10","2018-08-06 16:46:10","","mau-tem-1","","inherit","open","closed","","mau-tem-1-2","","","2018-08-06 23:46:10","2018-08-06 16:46:10","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/mau-tem-1-1.jpg","0","attachment","image/jpeg","0"),
("269","1","2018-08-06 23:58:55","2018-08-06 16:58:55","","icon-1","","inherit","open","closed","","icon-1","","","2018-08-06 23:58:55","2018-08-06 16:58:55","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-1-1.jpg","0","attachment","image/jpeg","0"),
("275","1","2018-08-07 00:02:08","2018-08-06 17:02:08","","icon-2","","inherit","open","closed","","icon-2","","","2018-08-07 00:02:08","2018-08-06 17:02:08","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-2-1.jpg","0","attachment","image/jpeg","0"),
("289","1","2018-08-07 00:06:26","2018-08-06 17:06:26","","Login-24-min","","inherit","open","closed","","login-24-min","","","2018-08-07 00:06:26","2018-08-06 17:06:26","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/Login-24-min.jpg","0","attachment","image/jpeg","0"),
("292","1","2018-08-07 00:07:51","2018-08-06 17:07:51","","icon-3","","inherit","open","closed","","icon-3","","","2018-08-07 00:07:51","2018-08-06 17:07:51","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-3.jpg","0","attachment","image/jpeg","0"),
("315","1","2018-08-07 00:19:36","2018-08-06 17:19:36","","icon-giai-phap","","inherit","open","closed","","icon-giai-phap","","","2018-08-07 00:19:36","2018-08-06 17:19:36","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-giai-phap.png","0","attachment","image/png","0"),
("320","1","2018-08-07 00:23:46","2018-08-06 17:23:46","","icon-3","","inherit","open","closed","","icon-3-2","","","2018-08-07 00:23:46","2018-08-06 17:23:46","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-3.png","0","attachment","image/png","0"),
("322","1","2018-08-07 00:26:46","2018-08-06 17:26:46","","icon-4","","inherit","open","closed","","icon-4","","","2018-08-07 00:26:46","2018-08-06 17:26:46","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-4.png","0","attachment","image/png","0"),
("324","1","2018-08-07 00:27:59","2018-08-06 17:27:59","","icon-6","","inherit","open","closed","","icon-6","","","2018-08-07 00:27:59","2018-08-06 17:27:59","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-6.png","0","attachment","image/png","0"),
("327","1","2018-08-07 00:29:59","2018-08-06 17:29:59","","icon-3","","inherit","open","closed","","icon-3-3","","","2018-08-07 00:29:59","2018-08-06 17:29:59","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/icon-3-1.png","0","attachment","image/png","0"),
("333","1","2018-08-07 00:33:07","2018-08-06 17:33:07","<span>Một người đàn ông đã bị bắt bởi các nhân viên giám sát thị trường nửa chừng chuyến đi của anh ta để giao một lô hàng lớn \'mứt ở Hồng Kông\' từ biên giới phía bắc Việt Nam với Trung Quốc tới Đà Lạt, trung tâm sản xuất nổi tiếng của đất nước.</span>\n\n<span>Các nhà chức trách nghi ngờ các sản phẩm trên đường bị lừa dối vì có nguồn gốc từ Đà Lạt.</span>\n\n<span>Quách Văn Hạnh, 39 tuổi, đang lái chiếc xe tải của mình đến Đà Lạt hôm thứ Tư khi ông bị một đội giám sát thị trường kéo về phía nam trung tâm tỉnh Phú Yên, khoảng 245km nhút nhát về đích đến của ông.</span>\n\n<span>Khi kiểm tra hàng hóa của xe tải, các nhân viên phát hiện 750kg đào khô, có nhãn \'Made in Hong Kong\' và hơn 250kg các loại mứt khác được lưu trữ trong túi và hộp trưng bày nhãn hiệu Trung Quốc.</span>\n\n<span>Không có bao bì được hiển thị sản xuất và ngày hết hạn và người lái xe đã không thể trình bày giấy tờ hoặc biên nhận cho lô hàng.</span>\n\n<span>Hạnh cho biết anh được thuê để vận chuyển mứt từ Bến xe Giáp Bát tại Hà Nội đến một người bán ở Đà Lạt.</span>\n\n<span>Đơn vị giám sát thị trường Phú Yên cho biết họ đã ban hành Hạnh với một vé hành chính buôn lậu và đang tiếp tục điều tra vụ án.</span>\n\n<span>Những người buôn bán không trung thực ở Đà Lạt thường mua các sản phẩm giá rẻ và chất lượng thấp từ Trung Quốc và giả mạo nguồn gốc của họ trước khi bán chúng dưới vỏ bọc các đặc sản được chế biến từ Đà Lạt.</span>\n\n<span>Chính quyền Đà Lạt đã nhiều lần đề nghị khách du lịch mua sắm tại các cửa hàng đáng tin cậy và vẫn thận trọng khi tiếp cận với lời mời mua các sản phẩm \'đặc sản\' giá rẻ.</span>","Tài xế bị bắt cóc buôn lậu \'sản xuất tại Hồng Kông\' vào Đà Lạt","","publish","open","open","","tai-xe-bi-bat-coc-buon-lau-san-xuat-tai-hong-kong-vao-da-lat","","","2018-08-07 00:33:07","2018-08-06 17:33:07","","0","https://bizhostvn.com/w/vcheck/?p=333","0","post","","0"),
("334","1","2018-08-07 00:33:04","2018-08-06 17:33:04","","mut1-1493786719-665x480","","inherit","open","closed","","mut1-1493786719-665x480","","","2018-08-07 00:33:04","2018-08-06 17:33:04","","333","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/mut1-1493786719-665x480.jpg","0","attachment","image/jpeg","0"),
("336","1","2018-08-07 00:33:59","2018-08-06 17:33:59","<strong><span>Bắt đầu nghiên cứu và cung cấp các giải pháp chống hàng giả tích hợp công nghệ hiện đại từ những năm 2008-2009, hiện tại, Vina CHG là một trong những nhãn hiệu hàng giả chống hàng giả Việt Nam.</span></strong>\n<h2><span>Kể từ khi một nền kinh tế minh bạch, công bằng</span></h2>\n<span>Ông Nguyễn Viết Hồng, Chủ tịch HĐQT - Tổng Giám đốc Vina CHG từng nói: “Chống hàng giả là sứ mệnh của sự nghiệp, cuộc sống của tôi!”.</span>\n<div class=\"wp-caption aligncenter\"><img src=\"http://vinachg.vn/vinachg/uploads/2017/02/nguyen-viet-hong-1487345953.jpg\" alt=\"Ông Nguyễn Viết Hồng, Chủ tịch HĐQT kiêm Tổng Giám đốc Vina CHG\" width=\"600\" height=\"367\" />\n<p class=\"wp-caption-text\"><span>Ông Nguyễn Viết Hồng, Chủ tịch HĐQT kiêm Tổng Giám đốc Vina CHG</span></p>\n\n</div>\n<span>Nói về sự lựa chọn này, anh nói: “Trước khi thành lập </span><a href=\"http://vinachg.vn/\"><span>Vina CHG</span></a><span> , tôi có 14 năm đấu tranh với rất nhiều công việc, tiếp xúc với nhiều doanh nghiệp, lắng nghe phiền não khi thay vào đó tập trung xây dựng thương hiệu cho sản phẩm đã bị giả mạo, gây ra nhiều hàm ý ...</span>\n\n<span>Năm 2008, Việt Nam chính thức gia nhập WTO, điều kiện tiên quyết để các doanh nghiệp Việt Nam đăng ký quyền sở hữu trí tuệ, thiết lập giá trị thương hiệu, thương hiệu, bao gồm ứng dụng khoa học - công nghệ chống hàng giả và truy xuất nguồn gốc hàng hóa. Điều đó đã thúc đẩy tôi lao vào các ứng dụng công nghệ chống hàng giả trong tem chống hàng giả, và tham gia vào lĩnh vực xã hội rất giả mạo rất phức tạp. ”</span>\n\n<span>Sau khi thành lập, ngoài việc cung cấp sản phẩm, giải pháp chống hàng giả, chất lượng, Vina CHG còn hợp tác chặt chẽ với cơ quan quản lý nhà nước, từ Ban chỉ đạo 389 quốc gia, Cục Quản lý thị trường, Cục quản lý cạnh tranh, Cục Sở hữu trí tuệ , các hiệp hội ... trong việc hỗ trợ điều tra, phát hiện và xử lý hàng giả, hàng giả, gian lận thương mại.</span>\n\n<span>Đặc biệt, hàng năm, Vina CHG tổ chức các cuộc họp giữa quản lý đại lý, các doanh nghiệp chống hàng giả và người tiêu dùng để bảo vệ người tiêu dùng Ngày 15/03, 29/11 Ngày Giả mạo hàng năm để tuyên truyền thông tin về cách thức, có nghĩa là đấu tranh chống hàng giả.</span>\n<h2><span>Ứng dụng khoa học - công nghệ chống hàng giả cao</span></h2>\n<span>Vina CHG đã cấp giấy phép hoạt động in tem chống hàng giả theo quy định của pháp luật và quy định tại Nghị định 60 / NĐ-CP / 2014 của Chính phủ để đảm bảo tính hợp pháp của tem chống hàng giả của thị trường lưu thông Vina CHG.</span>\n\n<span>Sau nhiều lần cập nhật, nâng cấp công nghệ chống lại tem giả, cộng tác với các chuyên gia trong lĩnh vực khoa học và công nghệ chống giả của Đức, Thụy Sĩ, Nhật Bản, Ấn Độ… Show Vina CHG đã thành công trong khi đưa ra giải pháp chống tem giả mạo thông minh Vina check kết hợp nhiều công nghệ (6 tính năng ) chống hàng giả, từ việc truy xuất nguồn gốc hàng hóa, phân biệt hàng hóa chính hãng, kích hoạt và bảo hành lịch sử tìm kiếm, quản lý bán hàng, thông tin và khuyến mãi, hướng dẫn cách sử dụng và các tính năng của sản phẩm, hỗ trợ doanh nghiệp quảng bá thương hiệu, quản lý hàng hóa, đại lý, hệ thống phân phối, kích hoạt bảo hành…</span>\n\n<span>VinaCheck nhận được sự đánh giá rất cao của các cơ quan quản lý nhà nước, doanh nghiệp. Đàm Thanh Thế, Trưởng ban 389 quốc gia cũng cho biết, tem thông minh Vina Kiểm tra giải pháp cho sản phẩm truy nguyên rất thiết thực nên được triển khai sâu trong doanh nghiệp để giúp các công ty bảo vệ thương hiệu trong khi người tiêu dùng phân biệt hàng giả chính hãng một cách nhanh chóng và chính xác.</span>\n\n<span>Vina Kiểm tra tem mã hóa và đồng bộ hóa dữ liệu với hệ thống máy chủ, chỉ có một lần kiểm tra và có thể ẩn lớp này dưới lớp phủ mã QR Code. Kết hợp nhiều công nghệ để chống lại tem giả cũng sẽ giúp tăng cường khả năng bảo mật và chống hàng giả của tem, chống hàng giả.</span>\n\n<span>Người dùng chỉ cần sử dụng phần mềm điện thoại thông minh được cài đặt mã vạch quét, kiểm tra và kiểm tra truy xuất nguồn gốc sản phẩm, thông tin sẽ xuất hiện, bao gồm: Xuất xứ, đặc tính, thông số kỹ thuật, đơn vị sản xuất, phân phối, ngày tồn kho, liên hệ với chúng tôi.</span>\n\n<span>Trên tem cũng cho tin nhắn mã người dùng (SMS) trên PABX khi muốn xác thực và truy xuất nguồn gốc xác thực sản phẩm một cách nhanh chóng. Vina Check không chỉ giúp doanh nghiệp bảo vệ bản thân và người dùng mà còn giúp họ quản lý hàng tồn kho, lấn chiếm hàng loạt các khu vực lấn chiếm, quản lý hệ thống lưu thông hàng hóa trên thị trường… thông qua ứng dụng smartphone.</span>\n\n<span>Giải pháp chống hàng giả của Vina CHG đã được nhiều doanh nghiệp bên ngoài và đang đầu tư và kinh doanh tại thị trường Việt Nam sử dụng như Tập đoàn NGK Nhật Bản, thương hiệu loa BMB Nhật Bản, Thương hiệu Anestiwata Nhật Bản.</span>\n\n<span>Năm nay, Vina CHG tiếp tục đẩy mạnh đầu tư, nâng cấp công nghệ chống hàng giả và phối hợp chặt chẽ hơn với các cơ quan quản lý Nhà nước và các tổ chức xã hội dân sự trong đấu tranh chống hàng giả, thương hiệu bảo vệ thương hiệu và lợi ích của người tiêu dùng.</span>\n\n<span>Theo ông Nguyễn Viết Hồng, cuộc đấu tranh chống hàng giả vô cùng khó khăn, không được hưởng lợi ngay, mà mang lại sự phát triển bền vững cho doanh nghiệp. “Tầm nhìn dài hạn là cực kỳ quan trọng để mọi người kinh doanh. Đó là một cái gì đó không phải tại các doanh nghiệp Việt Nam, đặc biệt là các doanh nghiệp vừa và nhỏ thiếu, \"Hồng chia sẻ.</span>","Vina CHG: Những người tiên phong trong cuộc chiến chống hàng gi","","publish","open","open","","vina-chg-nhung-nguoi-tien-phong-trong-cuoc-chien-chong-hang-gi","","","2018-08-07 00:33:59","2018-08-06 17:33:59","","0","https://bizhostvn.com/w/vcheck/?p=336","0","post","","0"),
("337","1","2018-08-07 00:33:57","2018-08-06 17:33:57","","nguyen-viet-hong-1487345953","","inherit","open","closed","","nguyen-viet-hong-1487345953","","","2018-08-07 00:33:57","2018-08-06 17:33:57","","336","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/nguyen-viet-hong-1487345953.jpg","0","attachment","image/jpeg","0"),
("339","1","2018-08-07 00:34:47","2018-08-06 17:34:47","<span>Ngân hàng thương mại nhà nước Vietcombank đang đưa ra những lời chỉ trích sau khi công bố các điều khoản và chính sách được cập nhật yêu cầu khách hàng đảm bảo kết nối internet của họ không bị phần mềm độc hại.</span>\n\n<span>Các điều khoản cập nhật, được thiết lập có hiệu lực vào ngày 10 tháng 5, liên quan đến việc sử dụng các dịch vụ ngân hàng trực tuyến và di động của Vietcombank cho các khách hàng cá nhân.</span>\n\n<span>Theo bài viết \'trách nhiệm bảo mật\' được cập nhật trong các điều khoản và chính sách của họ, ngân hàng sẽ yêu cầu khách hàng “chịu trách nhiệm” để đảm bảo rằng mọi thiết bị họ sử dụng để đăng nhập vào cổng trực tuyến của ngân hàng không có vi-rút và phần mềm độc hại.</span>\n\n<span>Ngoài ra, các điều khoản mới làm rõ rằng khách hàng không sử dụng dịch vụ ngân hàng trực tuyến và di động từ bất kỳ thiết bị nào được kết nối với mạng cục bộ (LAN) mà không kiểm tra trước rằng họ không bị bên thứ ba theo dõi.</span>\n\n<span>Nhiều khách hàng của Vietcombank đã lên tiếng lo ngại với chính sách mới của ngân hàng, nói rằng đó không phải là cách để bắt trách nhiệm trong trường hợp vi phạm an ninh.</span>\n\n<span>“Số lượng phần mềm độc hại đã biết trên thế giới vượt quá 100 triệu lượt truy cập, khiến cho khó khăn, nếu không phải là không thể, ngay cả những chuyên gia bảo mật hàng đầu để xây dựng một thiết bị an toàn 100% từ phần mềm độc hại”, Nguyễn Hồng Vân, phó giám đốc Viện Công nghệ An ninh Thông tin thuộc Hiệp hội An ninh Thông tin Việt Nam.</span>\n\n<span>\"Người dùng thông thường có thể chắc chắn rằng thiết bị của họ sạch sẽ như thế nào với vi-rút và phần mềm độc hại?\"</span>\n\n<span>Ông Vân nói thêm rằng điều đó là vô lý khi Vietcombank cho rằng khách hàng hiểu khái niệm về mạng LAN, hãy để một mình có khả năng đáp ứng yêu cầu để đảm bảo rằng họ không bị bên thứ ba theo dõi trong khi kết nối với một bên.</span>\n\n<span>“Ngay cả các chuyên gia trong lĩnh vực an ninh mạng cũng không thể biết được liệu họ có bị theo dõi trong khi kết nối với Internet ở các không gian công cộng, chẳng hạn như tại văn phòng hay trong một quán cà phê,” Van giải thích.</span>\n\n<span>“Các điều khoản [của Vietcombank] rất khó khăn đối với một khách hàng thường xuyên tuân thủ.”</span>\n\n<span>Các điều khoản cập nhật cũng cấp cho Vietcombank quyền sử dụng, lưu trữ, chuyển nhượng hoặc trao đổi thông tin cá nhân của khách hàng với bên thứ ba.</span>","Vietcombank muốn giữ khách hàng chịu trách nhiệm về vi phạm an ninh","","publish","open","open","","vietcombank-muon-giu-khach-hang-chiu-trach-nhiem-ve-vi-pham-an-ninh","","","2018-08-07 00:34:47","2018-08-06 17:34:47","","0","https://bizhostvn.com/w/vcheck/?p=339","0","post","","0"),
("340","1","2018-08-07 00:34:43","2018-08-06 17:34:43","","kEQxawnh","","inherit","open","closed","","keqxawnh","","","2018-08-07 00:34:43","2018-08-06 17:34:43","","339","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/kEQxawnh.jpg","0","attachment","image/jpeg","0"),
("342","1","2018-08-07 00:36:11","2018-08-06 17:36:11","Là một người tiêu dùng (NTD) liệu bạn đã từng gặp phải việc phải mất công tìm kiếm, chọn mua các hàng hóa, sản phẩm tiêu dùng, thực phẩm, thuốc men… có thương hiệu uy tín, chất lượng tốt nhưng rốt cuộc lại mua phải hàng giả? Các hàng hóa làm giả kém chất lượng này không những làm lãng phí những đồng tiền mà bạn đã phải vất vả mới kiếm được mà còn ảnh hưởng trực tiếp sức khỏe cũng như tinh thần của bạn. Bạn có mong muốn góp phần ngăn chặn điều đó?\n\n<a href=\"https://giuseart.com\"><img class=\"alignnone size-full wp-image-428\" src=\"https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/guarantee_img.jpg\" alt=\"\" width=\"163\" height=\"50\" /></a>\n<h2>Chức năng của tem:</h2>\n<ul>\n 	<li>Niêm phong hộp sản phẩm / sản phẩm.</li>\n 	<li>Chống lại sử dụng lại tem trên các sản phẩm khác.</li>\n</ul>\n<h2>Vật chất:</h2>\nPhim ảnh ba chiều\n<h2>Ứng dụng:</h2>\nNiêm phong trên hộp dược phẩm, mỹ phẩm, thực phẩm chức năng","Tem chống hàng giả áp dụng công nghệ ba chiều 2DKC / 3DKC","","publish","open","open","","tem-chong-hang-gia-ap-dung-cong-nghe-ba-chieu-2dkc-3dkc","","","2018-08-07 10:25:47","2018-08-07 03:25:47","","0","https://bizhostvn.com/w/vcheck/?p=342","0","post","","0"),
("343","1","2018-08-07 00:36:09","2018-08-06 17:36:09","","hang_gia-21_39_56_818","","inherit","open","closed","","hang_gia-21_39_56_818","","","2018-08-07 00:36:09","2018-08-06 17:36:09","","342","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/hang_gia-21_39_56_818.jpg","0","attachment","image/jpeg","0"),
("365","1","2018-08-07 00:45:58","2018-08-06 17:45:58","","logo-honda","","inherit","open","closed","","logo-honda","","","2018-08-07 00:45:58","2018-08-06 17:45:58","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-honda.jpg","0","attachment","image/jpeg","0"),
("366","1","2018-08-07 00:45:59","2018-08-06 17:45:59","","logo-honda (1)","","inherit","open","closed","","logo-honda-1","","","2018-08-07 00:45:59","2018-08-06 17:45:59","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-honda-1.jpg","0","attachment","image/jpeg","0"),
("367","1","2018-08-07 00:45:59","2018-08-06 17:45:59","","logo-toyota","","inherit","open","closed","","logo-toyota","","","2018-08-07 00:45:59","2018-08-06 17:45:59","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-toyota.jpg","0","attachment","image/jpeg","0"),
("368","1","2018-08-07 00:46:00","2018-08-06 17:46:00","","logo-audi","","inherit","open","closed","","logo-audi","","","2018-08-07 00:46:00","2018-08-06 17:46:00","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-audi.jpg","0","attachment","image/jpeg","0"),
("369","1","2018-08-07 00:46:01","2018-08-06 17:46:01","","logo-huyndai","","inherit","open","closed","","logo-huyndai","","","2018-08-07 00:46:01","2018-08-06 17:46:01","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-huyndai.jpg","0","attachment","image/jpeg","0"),
("370","1","2018-08-07 00:46:01","2018-08-06 17:46:01","","logo-mescerdé","","inherit","open","closed","","logo-mescerde","","","2018-08-07 00:46:01","2018-08-06 17:46:01","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-mescerdé.jpg","0","attachment","image/jpeg","0"),
("371","1","2018-08-07 00:46:02","2018-08-06 17:46:02","","logo-mazda","","inherit","open","closed","","logo-mazda","","","2018-08-07 00:46:02","2018-08-06 17:46:02","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-mazda.jpg","0","attachment","image/jpeg","0"),
("372","1","2018-08-07 00:46:03","2018-08-06 17:46:03","","logo-chevrlet","","inherit","open","closed","","logo-chevrlet","","","2018-08-07 00:46:03","2018-08-06 17:46:03","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-chevrlet.jpg","0","attachment","image/jpeg","0"),
("373","1","2018-08-07 00:46:03","2018-08-06 17:46:03","","logo-lezus","","inherit","open","closed","","logo-lezus","","","2018-08-07 00:46:03","2018-08-06 17:46:03","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/logo-lezus.jpg","0","attachment","image/jpeg","0"),
("387","1","2018-08-07 00:49:54","2018-08-06 17:49:54","","10000","","inherit","open","closed","","10000","","","2018-08-07 00:49:54","2018-08-06 17:49:54","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/10000.jpg","0","attachment","image/jpeg","0"),
("389","1","2018-08-07 00:50:10","2018-08-06 17:50:10","","tải-xuống","","inherit","open","closed","","tai-xuong","","","2018-08-07 00:50:10","2018-08-06 17:50:10","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/tải-xuống.jpg","0","attachment","image/jpeg","0"),
("391","1","2018-08-07 00:54:46","2018-08-06 17:54:46","","cung-cap","","inherit","open","closed","","cung-cap","","","2018-08-07 00:54:46","2018-08-06 17:54:46","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cung-cap.jpg","0","attachment","image/jpeg","0"),
("392","1","2018-08-07 00:55:25","2018-08-06 17:55:25","","cung-cap","","inherit","open","closed","","cung-cap-2","","","2018-08-07 00:55:25","2018-08-06 17:55:25","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/cung-cap-1.jpg","0","attachment","image/jpeg","0"),
("401","1","2018-08-07 01:01:13","2018-08-06 18:01:13","[section label=\"Footer section\" class=\"footer-section\" bg=\"432\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.81)\" padding=\"42px\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 90%; color: #50b848;\">Thông tin liên hệ</span></h3>\n<p>CÔNG TY TNHH IN HOÀNG GIA</p>\n<ul>\n<li><span style=\"font-size: 90%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 90%;\">Điện thoại: 0909009009 - 039343433</span></li>\n<li><span style=\"font-size: 90%;\">Email: demo@gmail.com</span></li>\n<li><span style=\"font-size: 90%;\">Website: <a href=\"#\">webdesign.com</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 90%; color: #50b848;\">Chính sách chung</span></h3>\n<ul class=\"list-menu list-menu22\">\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"#\">Hình thức đặt hàng</a></span></li>\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"#lien-he\">Hình thức thanh toán</a></span></li>\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"http://shop2.ninhbinhweb.net/\">Sử dụng Voucher/ E-voucher</a></span></li>\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"http://shop2.ninhbinhweb.net/\">Phương thức vận chuyên</a></span></li>\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"http://shop2.ninhbinhweb.net/\">Chính sách đổi trả hàng</a></span></li>\n<li class=\"li_menu\"><span style=\"font-size: 90%;\"><a href=\"#\">Hướng dẫn sử dụng</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 90%; color: #50b848;\">Hotline liên hệ</span></h3>\n[featured_box img=\"411\" img_width=\"45\" pos=\"left\"]\n\n<p><span style=\"font-size: 110%;\"><strong><span style=\"color: #50b848;\">0909009009</span></strong></span><br />\n<span style=\"font-size: 80%;\">(Tất cả các ngày trong tuần)</span></p>\n\n[/featured_box]\n[gap height=\"27px\"]\n\n<h3><span style=\"font-size: 90%; color: #50b848;\">Kết nối với chúng tôi</span></h3>\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\" youtube=\"#\"]\n\n<p><span style=\"font-size: 90%;\">hoặc liên hệ: 0909009009 để được tư vấn về dịch vụ bất cứ lúc nào.</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 90%; color: #50b848;\">Địa chỉ xưởng sản xuất</span></h3>\n<p><span style=\"font-size: 90%;\">- Địa chỉ: 123 Ngọc Hồi, Long Biên, Tp. Hà Nội</span><br /><span style=\"font-size: 90%;\">- Số điện thoại: 0909009009</span></p>\n<h3><span style=\"font-size: 90%; color: #50b848;\">Thông báo</span></h3>\n[ux_image id=\"428\" image_size=\"original\" width=\"50\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2018-08-07 01:16:07","2018-08-06 18:16:07","","0","https://bizhostvn.com/w/vcheck/?post_type=blocks&#038;p=401","0","blocks","","0"),
("411","1","2018-08-07 01:05:15","2018-08-06 18:05:15","","hotline","","inherit","open","closed","","hotline","","","2018-08-07 01:05:15","2018-08-06 18:05:15","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/hotline.png","0","attachment","image/png","0"),
("428","1","2018-08-07 01:10:38","2018-08-06 18:10:38","","guarantee_img","","inherit","open","closed","","guarantee_img","","","2018-08-07 10:25:45","2018-08-07 03:25:45","","342","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/guarantee_img.jpg","0","attachment","image/jpeg","0"),
("432","1","2018-08-07 01:14:10","2018-08-06 18:14:10","","Untitled-1","","inherit","open","closed","","untitled-1","","","2018-08-07 01:14:10","2018-08-06 18:14:10","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/Untitled-1.jpg","0","attachment","image/jpeg","0"),
("467","1","2018-08-07 09:23:08","2018-08-07 02:23:08","Xin chào bạn – độc giả của <a href=\"#\">webdesign.com</a>,\n\nLời đầu tiên, cho phép webdesign được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://giuseart.com/\">webdesign.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, webdesign đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, webdesign chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho webdesign trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-08-07 09:23:08","2018-08-07 02:23:08","","0","https://bizhostvn.com/w/vcheck/?page_id=467","0","page","","0"),
("503","1","2018-08-07 10:09:11","2018-08-07 03:09:11"," ","","","publish","closed","closed","","503","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=503","2","nav_menu_item","","0"),
("504","1","2018-08-07 10:09:40","2018-08-07 03:09:40","","Blogs","","publish","closed","closed","","504","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=504","8","nav_menu_item","","0"),
("507","1","2018-08-07 10:16:25","2018-08-07 03:16:25","Xin chào bạn – độc giả của <a href=\"#\">webdesign.com</a>,\n\nLời đầu tiên, cho phép webdesign được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://giuseart.com/\">webdesign.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, webdesign đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, webdesign chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho webdesign trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Bảng giá","","publish","closed","closed","","bang-gia","","","2018-08-07 10:16:36","2018-08-07 03:16:36","","0","https://bizhostvn.com/w/vcheck/?page_id=507","0","page","","0"),
("509","1","2018-08-07 10:16:54","2018-08-07 03:16:54","Xin chào bạn – độc giả của <a href=\"#\">webdesign.com</a>,\n\nLời đầu tiên, cho phép webdesign được gửi tới quý khách, quý thân nhân và bạn bè lời chúc sức khỏe, thành đạt và hạnh phúc.\n\n<a href=\"http://giuseart.com/\">webdesign.com</a> được thành lập tháng 11/2016 dưới dạng Blog cá nhân, với mục đích ban đầu là nơi lưu trữ những <strong>bài viết kiến thức</strong> hoặc những<strong> sản phẩm sáng tạo</strong> trong quá trình học tập, làm việc.\n\nSau một thời gian hoạt động, website đã có những bước tiến đáng kể cả về chất lượng và hình thức. Số lượng khách truy cập website trở thành khách hàng sử dụng dịch vụ thiết kế tăng lên đáng kể. Từ việc chăm chút nội dung cho website theo sở thích, webdesign đã dần chinh phục khách hàng với những dịch vụ thiết kế sáng tạo uy tín và chất lượng.\n\nTự tin với khả năng đáp ứng mọi yêu cầu thiết kế của khách hàng, webdesign chính thức đem lại dịch vụ <strong>Thiết kế đồ họa</strong> và <strong>Thiết kế Website chuyên nghiệp </strong>từ đầu năm 2017.<strong> </strong>Sự ủng hộ và tin tưởng của khách hàng sẽ trở thành nguồn cảm hứng lớn lao cho webdesign trong quá trình phác họa những ý tưởng thiết kế được trở thành hiện thực.\n\nXin cám ơn sự tin tưởng và ủng hộ của quý khách trong thời gian qua.\n\nTrân trọng./.\n\nAdmin","Hợp tác","","publish","closed","closed","","hop-tac","","","2018-08-07 10:16:54","2018-08-07 03:16:54","","0","https://bizhostvn.com/w/vcheck/?page_id=509","0","page","","0"),
("511","1","2018-08-07 10:17:34","2018-08-07 03:17:34","[section bg=\"195\" bg_size=\"original\" padding=\"0px\"]\n\n[gap]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\" color=\"light\"]\n<h2>Câu hỏi thường gặp</h2>\nChúng tôi giúp bạn trả lời mọi câu hỏi của bạn. Hãy gõ vào dưới đây để tìm câu trả lời bạn cần\n\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[tabgroup style=\"tabs\" nav_style=\"normal\" nav_size=\"large\"]\n\n[tab title=\"Câu hỏi thường gặp\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n\n[/accordion]\n\n[/tab]\n[tab title=\"Quy trình in tem xác thực\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n\n[/accordion]\n\n[/tab]\n[tab title=\"Quản lý dịch vụ\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n\n[/accordion]\n\n[/tab]\n[tab title=\"Thiết kế - in ấn\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n[accordion-item title=\"QR-CODE là gì?\"]\n\nMã QR (Quick Response – Phản hồi nhanh) là loại mã vạch hai chiều, dạng ma trận, được phát minh năm 1994 bởi công ty Denso Wave, Nhật bản. Mã có hình vuông, bao gồm một mô hình điểm ảnh màu đen và trắng cho phép mã hóa lên đến 7,089 ký tự.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR hoạt động thế nào\"]\n\nMã QR là một công cụ mang dữ liệu, ở đó dữ liệu được mã hóa theo một quy tắc nhất định dưới dạng ma trận. Mã QR được tạo thành từ các module và có 40 phiên bản mã QR. Phiên bản 1 có 21 mô-đun và số lượng mô-đun tăng khi phiên bản tăng. Phiên bản 40 có 177 mô-đun.\n\nCác điện thoại thông minh và máy tính bảng ngày nay có thể quét và giải mã mã QR với tốc độ cực nhanh.\n\n[/accordion-item]\n[accordion-item title=\"Quét mã QR như thế nào?\"]\n\nĐể giải mã mã QR không cần gì hơn điện thoại di động hoặc máy tính bảng và trình đọc mã QR được cài đặt trên thiết bị đó. Những trình đọc mã QR này có sẵn và có thể tải xuống từ tất cả các Cửa hàng ứng dụng. Bạn có thểTìm trên kho ứng dụng iTunes hay Android Market từ khóa \"QR scanner\" để tải ứng dụng quét QR Code cho iPhone hay smartphone dùng Android. Để quét Mã, chỉ cần khởi chạy ứng dụng và chờ cho đến khi máy ảnh tự động phát hiện nó. Trong vài giây, nội dung được mã hoá được hiển thị trên màn hình. Để đánh giá cho chất lượng của ứng dụng, bạn có thể tham khảo xếp hạng đánh giá trung bình trong Cửa hàng ứng dụng.\n\n[/accordion-item]\n[accordion-item title=\"Tôi có thể làm gì với mã QR?\"]\n\nDo việc sử dụng rộng rãi điện thoại thông minh, mã QR được sử dụng cho mục đích tiếp thị di động ngày nay. Các nhà tiếp thị có thể tận dụng lợi ích từ mã QR bằng cách gắn thêm nội dung kỹ thuật số như trang web, video, tệp PDF, Gallery ảnh hoặc bất cứ loại nội dung kỹ thuật số nào vào mã QR và sử dụng mã QR đó trên các phương tiện truyền thông in ấn như tờ rơi, áp phích, catalog… Một số nội dung thậm chí không yêu cầu kết nối Internet trên điện thoại được sử dụng để quét mã QR. Ví dụ như thông tin liên lạc các nhân trên Business Card, lịch sự kiện, kết nối WiFi hoặc các ký tự cơ bản…\n\n[/accordion-item]\n[accordion-item title=\"Tạo mã QR như thế nào?\"]\n\nCó rất nhiều phần mềm tạo mã QR Code miễn phí trên mạng. Truy cập website qrcode-solution.com, bạn có thể dễ dàng tạo mã QR Code chỉ với 4 bước đơn giản:\n\n(1) chọn loại nội dung cho mã QR của bạn;\n\n(2) nhập nội dung theo form mẫu;\n\n(3) tùy chỉnh thiết kế để có một mã QR đẹp ấn tượng;\n\n(4) tải mã QR xuống và sử dụng.\n\nVới QR Code-marketing.vn, QR Code có thể được tạo ra chỉ với ba bước đơn giản. Lúc đầu, hãy chọn chức năng cho Mã QR của bạn. Thứ hai, nhập nội dung mà bạn muốn cung cấp cho khách hàng của mình và thiết kế lại nó một cách độc đáo bằng cách điều chỉnh màu sắc và tải lên một biểu tượng logo vào nó. Nếu bạn đã hoàn thành các bước trên, mã QR của bản đã hoạt động và tải nó xuống.\n\n[/accordion-item]\n[accordion-item title=\"Mã QR tĩnh và QR động khác nhau thế nào?\"]\n\nQR mã động có thể được chỉnh sửa ngay cả sau khi chúng đã được in. Điều này có nghĩa là bạn có thể thay đổi cả chức năng và nội dung của một QR QR động bất cứ lúc nào và thường xuyên như bạn muốn. Mã động sử dụng đường link URL ngắn để chuyển hướng người dùng đến trang đích mong muốn của bạn. Điều này cho phép thu thập số liệu thống kê về các số quét, địa điểm và ngày / thời gian, và hệ điều hành được sử dụng. Mã QR tĩnh không thể chỉnh sửa được sau khi đã in và không thu thập được bất kỳ thống kê quét nào.\n\n[/accordion-item]\n\n[/accordion]\n\n[/tab]\n\n[/tabgroup]\n\n[/col]\n\n[/row]\n\n[/section]","Câu hỏi thường gặp","","publish","closed","closed","","cau-hoi-thuong-gap","","","2018-08-07 10:50:38","2018-08-07 03:50:38","","0","https://bizhostvn.com/w/vcheck/?page_id=511","0","page","","0"),
("544","1","2018-08-07 10:50:52","2018-08-07 03:50:52","[section bg=\"195\" bg_size=\"original\" padding=\"0px\"]\n\n[gap]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\" color=\"light\"]\n<h2>Câu hỏi thường gặp</h2>\nChúng tôi giúp bạn trả lời mọi câu hỏi của bạn. Hãy gõ vào dưới đây để tìm câu trả lời bạn cần\n\n[/col]\n\n[/row]\n\n[/section]\n[row]\n\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"547\" image_size=\"original\" width=\"27\"]\n<p style=\"text-align: center;\"><span style=\"color: #000000;\">HDSD Tem QR Code Chống Giả\n<a href=\"http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf\">Xem</a> |<a href=\"#\"> Tải xuống</a></span></p>\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"547\" image_size=\"original\" width=\"27\"]\n<p style=\"text-align: center;\"><span style=\"color: #000000;\">Hướng Dấn Quét Mã QR Code\n<a href=\"http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf\">Xem</a> |<a href=\"#\"> Tải xuống</a></span></p>\n[/col]\n[col span=\"4\" span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"547\" image_size=\"original\" width=\"27\"]\n<p style=\"text-align: center;\"><span style=\"color: #000000;\">Hướng Dẫn Tạo QR Code\n<a href=\"http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf\">Xem</a> |<a href=\"#\"> Tải xuống</a></span></p>\n[/col]\n\n[/row]","Tài liệu hướng dẫn","","publish","closed","closed","","tai-lieu-huong-dan","","","2018-08-07 10:55:44","2018-08-07 03:55:44","","0","https://bizhostvn.com/w/vcheck/?page_id=544","0","page","","0"),
("547","1","2018-08-07 10:53:45","2018-08-07 03:53:45","","pdf-icon","","inherit","open","closed","","pdf-icon","","","2018-08-07 10:53:45","2018-08-07 03:53:45","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/pdf-icon.jpg","0","attachment","image/jpeg","0"),
("553","1","2018-08-07 10:58:54","2018-08-07 03:58:54"," ","","","publish","closed","closed","","553","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=553","3","nav_menu_item","","0"),
("554","1","2018-08-07 10:58:54","2018-08-07 03:58:54"," ","","","publish","closed","closed","","554","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=554","4","nav_menu_item","","0"),
("555","1","2018-08-07 10:58:54","2018-08-07 03:58:54"," ","","","publish","closed","closed","","555","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=555","6","nav_menu_item","","0"),
("556","1","2018-08-07 10:58:54","2018-08-07 03:58:54"," ","","","publish","closed","closed","","556","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=556","7","nav_menu_item","","0"),
("557","1","2018-08-07 10:59:33","2018-08-07 03:59:33","[section class=\"lien-he-section\" bg=\"195\" bg_size=\"original\" padding=\"10px\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\"]\n<h2 style=\"text-align: center;\">Liên hệ</h2>\n<p style=\"text-align: center;\">Thông tin liên hệ của chúng tôi</p>\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\"]\n<h3>Chi tiết liên hệ</h3>\n<ul>\n 	<li><span style=\"font-size: 90%;\"><strong>Địa chỉ:</strong> Số 29 ngõ 18 Lương Ngọc Quyến, Hà Đông, Hà Nội</span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Liên hệ:</strong> Mr.An</span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Phone:</strong> 0909009009</span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Email:</strong> demo@gmail.com</span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Website:</strong> webdesign.com</span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Flickr:</strong><a href=\"http://\"> </a></span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Behance:</strong> <a href=\"\"></a></span></li>\n 	<li><span style=\"font-size: 90%;\"><strong>Pintesest:</strong><a href=\"\"> </a></span></li>\n</ul>\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[ux_image id=\"566\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n\n[/section]","Liên hệ","","publish","closed","closed","","lien-he","","","2018-08-07 11:04:14","2018-08-07 04:04:14","","0","https://bizhostvn.com/w/vcheck/?page_id=557","0","page","","0"),
("566","1","2018-08-07 11:01:54","2018-08-07 04:01:54","","follow (1)","","inherit","open","closed","","follow-1","","","2018-08-07 11:01:54","2018-08-07 04:01:54","","0","https://bizhostvn.com/w/vcheck/wp-content/uploads/2018/08/follow-1.png","0","attachment","image/png","0"),
("571","1","2018-08-07 11:04:47","2018-08-07 04:04:47"," ","","","publish","closed","closed","","571","","","2018-08-07 14:09:42","2018-08-07 07:09:42","","0","https://bizhostvn.com/w/vcheck/?p=571","9","nav_menu_item","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("17","2","0"),
("22","2","0"),
("333","1","0"),
("336","1","0"),
("339","1","0"),
("342","1","0"),
("342","3","0"),
("503","2","0"),
("504","2","0"),
("553","2","0"),
("554","2","0"),
("555","2","0"),
("556","2","0"),
("571","2","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","4"),
("2","2","nav_menu","","0","9"),
("3","3","post_tag","","0","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Tin tức","tin-tuc","0"),
("2","Main-menu","main-menu","0"),
("3","Tem chống giả","tem-chong-gia","0");




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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:2:{s:64:\"f341ed9e49919115355ada97185b4c9ff1245120fea311df22e5b63129a48d7f\";a:4:{s:10:\"expiration\";i:1558151309;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557978509;}s:64:\"0869b23911a6346171f8d0cad4d35449ecea8b8cf8172d70cd693611f96c1fde\";a:4:{s:10:\"expiration\";i:1558169536;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557996736;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","583"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("21","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("22","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("23","1","bz_user-settings-time","1557996732"),
("24","1","show_try_gutenberg_panel","0"),
("26","1","nav_menu_recently_edited","2"),
("28","1","_yoast_wpseo_profile_updated","1533729024"),
("29","1","duplicator_pro_created_format","1");




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
("1","admin","$P$BOjHp/FUjFY2nCGW29RzGpUy5udAjZ/","admin","demobz@gmail.com","","2018-08-02 14:39:09","","0","admin");




CREATE TABLE `bz_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_links VALUES
("3","#","507","0","external"),
("4","http://giuseart.com/","507","0","external"),
("5","#","509","0","external"),
("6","http://giuseart.com/","509","0","external"),
("7","https://giuseart.com","342","0","external"),
("218","#","511","0","internal"),
("219","#","511","0","internal"),
("220","#","511","0","internal"),
("221","#","511","0","internal"),
("222","#","511","0","internal"),
("223","#","511","0","internal"),
("224","#","511","0","internal"),
("225","#","511","0","internal"),
("226","#","511","0","internal"),
("227","#","511","0","internal"),
("228","#","511","0","internal"),
("229","#","511","0","internal"),
("230","#","511","0","internal"),
("231","#","511","0","internal"),
("232","#","511","0","internal"),
("233","#","511","0","internal"),
("234","#","511","0","internal"),
("235","#","511","0","internal"),
("236","#","511","0","internal"),
("237","#","511","0","internal"),
("238","#","511","0","internal"),
("239","#","511","0","internal"),
("240","#","511","0","internal"),
("241","#","511","0","internal"),
("242","#","511","0","internal"),
("243","#","511","0","internal"),
("244","#","511","0","internal"),
("245","#","511","0","internal"),
("246","#","511","0","internal"),
("247","#","511","0","internal"),
("248","#","511","0","internal"),
("249","#","511","0","internal"),
("250","#","511","0","internal"),
("251","#","511","0","internal"),
("252","#","511","0","internal"),
("253","#","511","0","internal"),
("254","#","511","0","internal"),
("255","#","511","0","internal"),
("256","#","511","0","internal"),
("257","#","511","0","internal"),
("258","#","511","0","internal"),
("259","#","511","0","internal"),
("260","#","511","0","internal"),
("261","#","511","0","internal"),
("262","#","511","0","internal"),
("263","#","511","0","internal"),
("264","#","511","0","internal"),
("265","#","511","0","internal"),
("322","http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf","544","0","external"),
("323","#","544","0","internal"),
("324","http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf","544","0","external"),
("325","#","544","0","internal"),
("326","http://qrcode-solution.com/wp-content/uploads/2018/03/HDSD-Tem-QR-Code-chong-gia-pdf.pdf","544","0","external"),
("327","#","544","0","internal"),
("334","http://","557","0","external"),
("335","","557","0","external"),
("336","","557","0","external"),
("397","#","59","0","internal"),
("398","#","59","0","internal"),
("399","#","59","0","internal"),
("400","#","59","0","internal"),
("401","#","59","0","internal"),
("402","#","59","0","internal"),
("403","https://bizhostvn.com/w/vcheck/2018/08/07/tem-chong-hang-gia-ap-dung-cong-nghe-ba-chieu-2dkc-3dkc/","59","342","internal"),
("404","https://bizhostvn.com/w/vcheck/2018/08/07/vietcombank-muon-giu-khach-hang-chiu-trach-nhiem-ve-vi-pham-an-ninh/","59","339","internal"),
("405","https://bizhostvn.com/w/vcheck/2018/08/07/vina-chg-nhung-nguoi-tien-phong-trong-cuoc-chien-chong-hang-gi/","59","336","internal"),
("406","https://bizhostvn.com/w/vcheck/2018/08/07/tai-xe-bi-bat-coc-buon-lau-san-xuat-tai-hong-kong-vao-da-lat/","59","333","internal");




CREATE TABLE `bz_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_yoast_seo_meta VALUES
("1","0","0"),
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("11","0","0"),
("12","0","0"),
("15","0","0"),
("16","0","0"),
("18","0","0"),
("19","0","0"),
("20","0","0"),
("21","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","0"),
("28","0","0"),
("29","0","0"),
("30","0","0"),
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
("47","0","0"),
("48","0","0"),
("49","0","0"),
("50","0","0"),
("51","0","0"),
("52","0","0"),
("53","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("58","0","0"),
("59","10","0"),
("60","0","0"),
("61","0","0"),
("62","0","0"),
("63","0","0"),
("65","0","0"),
("68","0","0"),
("69","0","0"),
("71","0","0"),
("72","0","0"),
("73","0","0"),
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
("103","0","0"),
("104","0","0"),
("105","0","0"),
("106","0","0"),
("107","0","0"),
("108","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("113","0","0"),
("114","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("115","0","0"),
("116","0","0"),
("117","0","0"),
("118","0","0"),
("119","0","0"),
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0"),
("126","0","0"),
("127","0","0"),
("128","0","0"),
("129","0","0"),
("131","0","0"),
("132","0","0"),
("133","0","0"),
("134","0","0"),
("135","0","0"),
("136","0","0"),
("137","0","0"),
("138","0","0"),
("140","0","0"),
("141","0","0"),
("142","0","0"),
("143","0","0"),
("145","0","0"),
("147","0","0"),
("148","0","0"),
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
("164","0","0"),
("165","0","0"),
("166","0","0"),
("167","0","0"),
("168","0","0"),
("169","0","0"),
("170","0","0"),
("171","0","0"),
("173","0","0"),
("175","0","0"),
("176","0","0"),
("178","0","0"),
("180","0","0"),
("181","0","0"),
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
("194","0","0"),
("196","0","0"),
("198","0","0"),
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
("224","0","0"),
("225","0","0"),
("227","0","0"),
("228","0","0"),
("230","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("234","0","0"),
("235","0","0"),
("237","0","0"),
("238","0","0"),
("240","0","0"),
("241","0","0"),
("242","0","0"),
("244","0","0"),
("245","0","0"),
("246","0","0"),
("247","0","0"),
("248","0","0"),
("249","0","0"),
("250","0","0"),
("251","0","0"),
("252","0","0"),
("254","0","0"),
("256","0","0"),
("257","0","0"),
("258","0","0"),
("260","0","0"),
("261","0","0"),
("262","0","0"),
("263","0","0"),
("264","0","0"),
("265","0","0"),
("266","0","0"),
("267","0","0"),
("268","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("273","0","0"),
("274","0","0"),
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
("316","0","0"),
("317","0","0"),
("318","0","0"),
("319","0","0"),
("321","0","0"),
("323","0","0"),
("325","0","0"),
("326","0","0"),
("328","0","0"),
("329","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("333","0","1"),
("335","0","0"),
("336","0","1"),
("338","0","0"),
("339","0","1"),
("341","0","0"),
("342","0","1"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("348","0","0"),
("349","0","0"),
("350","0","0"),
("351","0","0"),
("352","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
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
("388","0","0"),
("390","0","0"),
("393","0","0"),
("394","0","0"),
("395","0","0"),
("396","0","0"),
("397","0","0"),
("398","0","0"),
("399","0","0"),
("400","0","0"),
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
("429","0","0"),
("430","0","0"),
("431","0","0"),
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
("460","0","0"),
("461","0","0"),
("462","0","0"),
("463","0","0"),
("464","0","0"),
("465","0","0"),
("466","0","0"),
("468","0","0"),
("470","0","0"),
("471","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
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
("505","0","0"),
("506","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","48","0"),
("512","0","0"),
("513","0","0"),
("514","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("519","0","0"),
("520","0","0"),
("521","0","0"),
("522","0","0"),
("523","0","0"),
("524","0","0"),
("525","0","0"),
("526","0","0"),
("527","0","0"),
("528","0","0"),
("529","0","0"),
("530","0","0"),
("531","0","0"),
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
("544","3","0"),
("545","0","0"),
("546","0","0"),
("548","0","0"),
("549","0","0"),
("550","0","0"),
("551","0","0"),
("552","0","0"),
("557","0","0"),
("558","0","0"),
("559","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("563","0","0"),
("564","0","0"),
("565","0","0"),
("567","0","0"),
("568","0","0"),
("569","0","0"),
("570","0","0"),
("572","0","0"),
("573","0","0"),
("574","0","0"),
("575","0","0"),
("576","0","0"),
("577","0","0"),
("578","0","0"),
("579","0","0"),
("580","0","0");
INSERT INTO bz_yoast_seo_meta VALUES
("581","0","0"),
("582","0","0"),
("583","0","0"),
("584","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;