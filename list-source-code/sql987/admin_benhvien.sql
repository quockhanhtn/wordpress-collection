SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w46`
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
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/benhvien\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1544457184,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960270,\"initial_activation_timestamp\":1544457195,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025858,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=2104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/benhvien","yes"),
("2","home","https://bizhostvn.com/w/benhvien","yes"),
("3","blogname","benhvien","yes"),
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
("22","posts_per_page","10","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:100:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:18:\"khong-phan-loai/?$\";s:39:\"index.php?category_name=khong-phan-loai\";s:35:\"khong-phan-loai/page/([0-9]{1,})/?$\";s:57:\"index.php?category_name=khong-phan-loai&paged=$matches[1]\";s:53:\"khong-phan-loai/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_name=khong-phan-loai&feed=$matches[1]\";s:16:\"lich-hoi-thao/?$\";s:37:\"index.php?category_name=lich-hoi-thao\";s:33:\"lich-hoi-thao/page/([0-9]{1,})/?$\";s:55:\"index.php?category_name=lich-hoi-thao&paged=$matches[1]\";s:51:\"lich-hoi-thao/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?category_name=lich-hoi-thao&feed=$matches[1]\";s:23:\"suc-khoe-thuong-thuc/?$\";s:44:\"index.php?category_name=suc-khoe-thuong-thuc\";s:40:\"suc-khoe-thuong-thuc/page/([0-9]{1,})/?$\";s:62:\"index.php?category_name=suc-khoe-thuong-thuc&paged=$matches[1]\";s:58:\"suc-khoe-thuong-thuc/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?category_name=suc-khoe-thuong-thuc&feed=$matches[1]\";s:19:\"thong-tin-uu-dai/?$\";s:40:\"index.php?category_name=thong-tin-uu-dai\";s:36:\"thong-tin-uu-dai/page/([0-9]{1,})/?$\";s:58:\"index.php?category_name=thong-tin-uu-dai&paged=$matches[1]\";s:54:\"thong-tin-uu-dai/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?category_name=thong-tin-uu-dai&feed=$matches[1]\";s:10:\"tin-tuc/?$\";s:31:\"index.php?category_name=tin-tuc\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:49:\"index.php?category_name=tin-tuc&paged=$matches[1]\";s:45:\"tin-tuc/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?category_name=tin-tuc&feed=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:27:\"woosidebars/woosidebars.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","0","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:95:\"/home/tppone/domains/tppone.com/public_html/demo/benhvien/wp-content/themes/benh-vien/style.css\";i:1;s:99:\"/home/tppone/domains/tppone.com/public_html/demo/benhvien/wp-content/themes/benh-vien/functions.php\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","benh-vien","yes"),
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
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:7:\"Fanpage\";s:4:\"text\";s:412:\"<p><iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe></p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("96","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("101","sidebars_widgets","a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"vertical-menu\";a:1:{i:0;s:10:\"nav_menu-3\";}s:12:\"sidebar-main\";a:9:{i:0;s:8:\"search-2\";i:1;s:13:\"media_image-2\";i:2;s:13:\"media_image-3\";i:3;s:13:\"media_image-4\";i:4;s:13:\"media_image-5\";i:5;s:13:\"media_image-6\";i:6;s:13:\"media_image-7\";i:7;s:23:\"flatsome_recent_posts-2\";i:8;s:6:\"text-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("102","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_image","a:7:{i:2;a:15:{s:13:\"attachment_id\";i:332;s:3:\"url\";s:91:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/dat-lich-kham-button-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:15:\"/dat-lich-kham/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:333;s:3:\"url\";s:91:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/lich-hoi-thao-button-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:15:\"/lich-hoi-thao/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:331;s:3:\"url\";s:94:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/thong-tin-uu-dai-button-300x64.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:18:\"/thong-tin-uu-dai/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:340;s:3:\"url\";s:79:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/banner5-300x250.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:6;a:15:{s:13:\"attachment_id\";i:343;s:3:\"url\";s:79:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/banner6-300x150.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:7;a:15:{s:13:\"attachment_id\";i:345;s:3:\"url\";s:79:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/banner7-300x250.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_nav_menu","a:2:{i:3;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","cron","a:6:{i:1557907540;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557907570;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557907571;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557908511;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557910323;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("112","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539072681;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("145","WPLANG","vi","yes"),
("146","new_admin_email","webdemo@gmail.com","yes"),
("151","ai1wm_updater","a:0:{}","yes"),
("154","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027556;s:30:\"db-prefix-change/db_prefix.php\";i:1557026800;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025858;}","yes"),
("157","current_theme","Bệnh viện","yes"),
("158","theme_mods_flatsome","a:30:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.0\";s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 09 Oct 2018 08:11:21 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539072705;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("159","theme_switched","","yes"),
("160","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:18:\"Tin đọc nhiều\";s:6:\"number\";i:8;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("161","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("163","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("164","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("165","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("166","flatsome_wup_buyer","trannguyen886","yes"),
("167","allowedthemes","a:1:{s:9:\"benh-vien\";b:1;}","no"),
("168","fl_has_child_theme","benh-vien","yes"),
("170","theme_mods_benh-vien","a:99:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:0:{}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:0:{}s:28:\"header_mobile_elements_right\";a:0:{}s:26:\"header_mobile_elements_top\";a:0:{}s:14:\"mobile_sidebar\";a:3:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:6:\"html-2\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:135:\"-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:1:{s:11:\"font-family\";s:14:\"Dancing Script\";}s:19:\"flatsome_db_version\";s:5:\"3.6.0\";s:18:\"nav_menu_locations\";a:3:{s:6:\"footer\";i:11;s:10:\"banner-nav\";i:2;s:14:\"primary_mobile\";i:2;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 09 Oct 2018 08:12:35 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:7173:\".top-bar-1 .slide-logo{margin-top:-100px !important; padding:0 !important} \n.top-bar-1 .logo-chinh .img .img-inner{background:white; z-index:999; padding:0; width:140px}.top-bar-1 .col{padding-bottom:0 !important}\n.top-bar-1 .flickity-prev-next-button svg, .flickity-prev-next-button .arrow{    fill: #d8d8d8;}\n.top-bar-1 ul, .top-bar-1 p{margin-bottom:5px}.top-bar-1 ul li{border-bottom:0; padding:0 20px}\n.slider-row .cot1{    padding: 20px 0 !important;flex-basis:20%; max-width:20%;    background: #0059ab;}\n.slider-row .cot2{flex-basis:80%; max-width:80%}\n.slider-row .cot1 .widget_nav_menu{margin-left:0}\n.slider-row .cot1 ul li a{padding-left: 15px !important;display: block;\n    width: 100%;\n    text-transform: uppercase;\n    font-size: 13px;\n    color: white;padding: 12px 0\n}.slider-row ul li+li{border-top: 1px solid #147bbf;}\n.slider-row .widget .toggle i{color:white;transform: rotate(-90deg);right: 5px;}\n.slider-row .cot1 ul li li:hover{background: #80c82d}\n.menu-item-has-children:hover >ul.sub-menu {margin: 0 !important;\n    padding-left: 0;\n    display: block !important;\n    position: absolute;\n    left: 100%;\n    z-index: 99;\n    background: #0059ab;    margin-left: 0;\n}.widget .toggle{margin: 0;}\n.section-title-normal{border-bottom:0}.section-title-normal span {font-size:16px; \n    margin-right: 15px;\n    padding-bottom: 7.5px;\n    border-bottom: 0;\n    margin-bottom: 0;\n    BACKGROUND: #0059ab;\n    PADDING: 5px 10PX;\n    BORDER-LEFT: 7px solid #80c82d;\n    color: white;\n	padding-right: 30px;    border-bottom: 1px solid #0059ab;}.section-title-normal:after{content: \"\";\n    display: table;\n    clear: both;\n    border: 18px solid #0059ab;\n    margin-left: 110px;\n    position: absolute;\n    border-right-color: rgba(255,255,255,0.08);}\n.body-web .cot8 .post-item .box-text .post-title{font-weight: 600;\n    color: #0b66a2;\n    margin-bottom: 15px;\n    margin-top: 10px;line-height: 20px;}.box-blog-post .is-divider, .blog-single .entry-category, .blog-single .is-divider, .blog-archive .breadcrumb, .page .flatsome_recent_posts {display:none}\n.body-web .cot8 .cot8-2 .post-item .box-text .post-title{    margin: 0;    padding-bottom: 0;\n    padding-right: 0;\n    line-height: 20px;\n	font-size: 12px;}\n.body-web .cot8 .cot8-2 .post-item .box-text{padding-top:0; padding-bottom:0;padding-left: 10px;\n    padding-right: 0;}\n.body-web .cot8 .cot8-2 .post-item {padding-bottom:20px}\n\n.tieu-de-cot .vien-duoi{display: block;\n    background: #80c82d;\n    height: 6px;\n    margin-top: -17px;}\n.tieu-de-cot .text-tieu-de-cot{background:white; padding-right:20px;font-size: 15px;\n	color: #0b66a2; text-transform:uppercase}.body-web .row2 .post-item, .body-web .row2 .list-bai-viet .post-item {padding-bottom:0}hr{margin:0}\n.body-web .cot8 .row2 .list-bai-viet .post-item .box-text .post-title{margin:0; font-weight:normal; color:black}\n.body-web .cot8 .row2 .list-bai-viet .post-item .box-text{padding-bottom:5px; padding-left: 15px;}\n.body-web .cot8 .row2 .list-bai-viet .post-item:before{content: \'\';\n    margin-left: 0px;\n    background: url(/wp-content/uploads/2018/10/i6.jpg);\n    width: 6px;\n    height: 6px;\n    background-size: 6px 6px;\n    margin-right: 0;\n    float: left;\n    margin-top: 14px;}\n.body-web .cot8 .row2 .col{padding-bottom:5px}\n.absolute-footer ul {\n    border-bottom: 1px solid #e6e6e6;\n    font-size: 11px;\n    text-transform: none;\n    letter-spacing: 0;\n    color: black;\n}.absolute-footer{font-size:12px}\n.body-web .cot8 .cot8-2 .post-item .box-image img{border: 5px solid #f1f1f1;}\n.body-web .cot4 .call-to-action-button .img .img-inner:hover{box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);}\n.form-flat input:not([type=\"submit\"]), .form-flat textarea, .form-flat select{border-color: white;}\n.banner-post .banner-post-inner{background-color: #0059ab;display: inline-block;margin-bottom:20px}\n .banner-post .left{    float: left;\n    width: 200px;\n    padding-top: 40px;}\n .banner-post .right{background:url(/wp-content/uploads/2018/10/t6.jpg); height:139px;float: right;\n	width: 940px;}\n .banner-post .clearboth{clear:both}.blog-single {padding-top:0}\n .banner-post .tieu-de-menu{text-transform: uppercase;\n    color: whtie;\n    color: white;\n    font-weight: bold;\n   background: url(/wp-content/uploads/2018/10/menu-pc.png) no-repeat 30px 10px;\n    padding-left: 75px;\n    padding-right: 34px;\n    padding-top: 15px;\n    padding-bottom: 18px;\n    font-size: 14px;display: block;\n    width: 100%;}\n\n .banner-post .menu{ display:none ;  position: absolute;\n    background: #0059ab;\n    z-index: 9999;}\n .banner-post .left:hover> .menu{display:block !important}\n .banner-post .menu li a{padding-left:15px; padding:12px; color:white; font-size:13px; text-transform:uppercase}\n .banner-post .menu li+li{    border-top: 1px solid #0269b6;} .banner-post .menu li:hover{background: #80c82d}\n .banner-post .toggle{width:20px;transform: rotate(-90deg);    color: white;\n    font-size: 9px;}\n.banner-post .entry-category{  display:block !important;  padding-top: 60px;\n    color: white;\n    padding-left: 120px;}\n .banner-post .entry-category a{    color: white;\n    font-size: 20px;\n    opacity: 100;}\n .breadcrumb .container-inner{border-bottom: 2px solid #f7f7f7;\n    padding-bottom: 5px;\n    margin-bottom: 20px;\n    font-size: 13px;\n    text-transform: uppercase;\n    color: gray;\n} .breadcrumb .container-inner a{color: #0059ab;\n    font-size: 13px;}\n.blog-single .entry-title{    color: #0059ab;\n	font-size: 18px;} .blog-single .entry-header-text-top{padding-bottom:0}\n.blog-single  {font-size:14px}\n.blog-single .blog-share{text-align:left} \n.blog-single .blog-share .button.is-outline{border:0}\n.blog-single .post-sidebar, .blog-archive .post-sidebar{padding-left:0}\n.blog-archive .taxonomy-description{font-size:14px; text-align:left}\n.blog-archive .post-item .from_the_blog_excerpt {font-size:12px}.blog-archive .post-item .box-text .post-title{    font-size: 16px;\n    margin-bottom: 17px;\n    color: #0059ab;}\n.blog-single .large-12{padding-bottom:0}\n.page-left-sidebar .large-3{padding-right:0; border-right:0}.page-wrapper{font-size:14px}\n.page-wrapper .dat-lich-kham .row1, .page-wrapper .dat-lich-kham .row2, .page-wrapper .dat-lich-kham .row3{width: 100%;display:inline-block}.page-wrapper #content{padding-left:30px}.page-wrapper \n.page-wrapper .dat-lich-kham .row1, .page-wrapper .dat-lich-kham .row2, .page-wrapper .dat-lich-kham .row3{width: 100%;display:inline-block}.page-wrapper #content{padding-left:30px}.page-wrapper \n.page-wrapper .dat-lich-kham .row1, .page-wrapper .dat-lich-kham .row2, .page-wrapper .dat-lich-kham .row3{width: 100%;display:inline-block}.page-wrapper #content{padding-left:30px}.page .banner-post .entry-category{padding-top:55px; font-size:20px; text-transform:uppercase}\n.page-wrapper form .dat-lich-kham .row1 .left, .page-wrapper form .dat-lich-kham .row2 .left, .page-wrapper form .dat-lich-kham .row3 .left{width:50%; float: left}.page-wrapper form .dat-lich-kham .row1 .right, .page-wrapper form .dat-lich-kham .row2 .right, .page-wrapper form .dat-lich-kham .row3 .right{width:50%; float: right; padding-left:20px}.page-wrapper{padding-top:0}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:554:\".slider-row .cot1, #top-bar, .banner-post .left, .page #secondary{display:none}\n.slider-row .cot2, .banner-post .right{flex-basis:100%; max-width:100%}\n.box-vertical .box-image{flex-basis:25%; max-width:25%; float: left}\n.box-vertical .box-text{flex-basis:75%; float:left;max-width:75%; padding-left:10px} .container{padding-left:0 !important}.breadcrumb .container-inner,.page-wrapper #content{padding-left:15px}\n.html-before-comments .post-item {flex-basis:50%; max-width:50%}\n.blog-single .post-sidebar, .blog-archive .post-sidebar{padding-left:15px}\n\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:24:\"Bạn cần tìm gì?...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:9:\"type_size\";s:2:\"97\";s:16:\"type_size_mobile\";s:3:\"100\";s:13:\"header_height\";s:3:\"100\";s:22:\"topbar_elements_center\";a:0:{}s:17:\"header_top_height\";s:2:\"50\";s:12:\"topbar_color\";s:5:\"light\";s:14:\"header-block-1\";s:6:\"topbar\";s:9:\"topbar_bg\";s:7:\"#ffffff\";s:13:\"topbar_sticky\";b:1;s:13:\"header_sticky\";b:0;s:16:\"bottombar_sticky\";b:0;s:20:\"header_height_sticky\";s:2:\"70\";s:9:\"site_logo\";s:72:\"https://bizhostvn.com/w/benhvien/wp-content/uploads/2019/05/benhvien.png\";s:10:\"logo_width\";s:3:\"242\";s:12:\"logo_padding\";s:1:\"0\";s:19:\"header_search_style\";s:8:\"dropdown\";s:24:\"header_search_form_style\";s:4:\"flat\";s:19:\"header_search_width\";s:2:\"59\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:8:\"footer_1\";b:0;s:8:\"footer_2\";b:0;s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"footer_bottom_color\";s:7:\"#f2f2f2\";s:16:\"footer_left_text\";s:156:\"Copyright [ux_current_year] © <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>  |  <a href=\"http://webdemo.com\" target=\"blank\">Webdemo.net</a> \";s:17:\"footer_right_text\";s:46:\"Dựng web bởi Webdemo.com | Flatsome theme\n\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:23:\"blog_single_header_meta\";b:0;s:11:\"color_texts\";s:7:\"#0a0a0a\";s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_after_post\";s:300:\"<h3 class=\"tieu-de-cot\"><span class=\"text-tieu-de-cot\">Một số bài viết khác:</span></h3>\n[gap height=\"20px\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"3\" columns__md=\"1\" posts=\"6\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"65%\" text_align=\"left\" text_size=\"small\"]\";s:13:\"color_primary\";s:7:\"#0059ab\";s:15:\"color_secondary\";s:7:\"#80c82d\";s:11:\"topbar_left\";s:0:\"\";s:20:\"header_height_mobile\";s:2:\"60\";s:8:\"nav_push\";s:1:\"0\";s:20:\"header_bottom_height\";s:2:\"55\";s:17:\"html_after_header\";s:254:\"[lightbox auto_open=\"true\" auto_timer=\"3000\" auto_show=\"once\" id=\"thong-bao\" width=\"600px\" padding=\"20px\" style=\"color:red; font-size:25px; text-align:center\"]\n  Xin lưu ý: đây là website demo, không phải web bán hàng chính thức!\n[/lightbox]\";s:11:\"topbar_show\";b:1;}","yes"),
("172","envato_setup_complete","1539072762","yes"),
("210","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1539307604;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("211","woosidebars-version","1.4.5","yes"),
("212","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("261","category_children","a:0:{}","yes"),
("279","duplicator_pro_package_active","{\"Created\":\"2018-12-10 15:55:34\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.8\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.32\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20181210_mauwebgioithieubenhvienni\",\"Hash\":\"e34b7c36a685f1824787_20181210155534\",\"NameHash\":\"20181210_mauwebgioithieubenhvienni_e34b7c36a685f1824787_20181210155534\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/benhvien\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20181210_mauwebgioithieubenhvienni_e34b7c36a685f1824787_20181210155534_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\",\"Size\":74624757,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/benhvien\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\",\"utf8_general_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_paxen\",\"tablesBaseCount\":33,\"tablesFinalCount\":33,\"tablesRowCount\":9679,\"tablesSizeOnDisk\":4603904,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1681","wordfence_version","7.1.18","yes"),
("1682","wordfence_case","1","yes"),
("1683","wordfence_installed","1","yes"),
("1684","wordfenceActivated","0","yes"),
("1685","wf_plugin_act_error","","yes"),
("1941","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960317;}","no"),
("1961","db_upgraded","","yes"),
("1966","can_compress_scripts","0","no"),
("1968","dbprefix_old_dbprefix","wp_","yes"),
("1969","dbprefix_new","bz_","yes"),
("2009","recovery_keys","a:0:{}","yes"),
("2028","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557887033;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("2029","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557887037;s:7:\"checked\";a:2:{s:9:\"benh-vien\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("2060","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557887037;s:7:\"checked\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2078","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558321730","no"),
("2079","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("2080","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558321731","no"),
("2081","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("2101","_site_transient_timeout_theme_roots","1557888836","no"),
("2102","_site_transient_theme_roots","a:2:{s:9:\"benh-vien\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("14","10","_edit_last","1"),
("15","10","_edit_lock","1540480704:1"),
("17","15","_wp_attached_file","2018/10/vingroup.png"),
("18","15","_wp_attachment_metadata","a:5:{s:5:\"width\";i:143;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2018/10/vingroup.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("19","19","_wp_attached_file","2018/10/vineco.png"),
("20","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/10/vineco.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("21","21","_wp_attached_file","2018/10/almaz.png"),
("22","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2018/10/almaz.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("23","23","_wp_attached_file","2018/10/quythientam.png"),
("24","23","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:23:\"2018/10/quythientam.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("25","25","_wp_attached_file","2018/10/vingroupcard.png"),
("26","25","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2018/10/vingroupcard.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("27","27","_wp_attached_file","2018/10/vinhomes.png"),
("28","27","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2018/10/vinhomes.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("29","29","_wp_attached_file","2018/10/vinpearl.png"),
("30","29","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2018/10/vinpearl.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("31","31","_wp_attached_file","2018/10/vinpearlland.png"),
("32","31","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2018/10/vinpearlland.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("33","33","_wp_attached_file","2018/10/vinmec.png"),
("34","33","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/10/vinmec.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("35","35","_wp_attached_file","2018/10/vinschool.png"),
("36","35","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2018/10/vinschool.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("37","37","_wp_attached_file","2018/10/vincom.png"),
("38","37","_wp_attachment_metadata","a:5:{s:5:\"width\";i:90;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2018/10/vincom.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("102","77","_wp_attached_file","2018/10/logo.png"),
("103","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2018/10/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("108","80","_wp_attached_file","2018/10/cropped-logo.png"),
("109","80","_wp_attachment_context","site-icon"),
("110","80","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/10/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("117","2","_edit_lock","1539078846:1"),
("118","2","_edit_last","1"),
("119","2","_footer","normal"),
("132","89","_edit_last","1"),
("133","89","_edit_lock","1539307482:1"),
("134","89","_sidebar_to_replace","sidebar-main"),
("135","90","_menu_item_type","post_type"),
("136","90","_menu_item_menu_item_parent","0"),
("137","90","_menu_item_object_id","2"),
("138","90","_menu_item_object","page"),
("139","90","_menu_item_target",""),
("140","90","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("141","90","_menu_item_xfn",""),
("142","90","_menu_item_url",""),
("144","91","_menu_item_type","custom"),
("145","91","_menu_item_menu_item_parent","0"),
("146","91","_menu_item_object_id","91"),
("147","91","_menu_item_object","custom"),
("148","91","_menu_item_target",""),
("149","91","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("150","91","_menu_item_xfn",""),
("151","91","_menu_item_url","/gioi-thieu/"),
("153","92","_menu_item_type","custom"),
("154","92","_menu_item_menu_item_parent","0"),
("155","92","_menu_item_object_id","92"),
("156","92","_menu_item_object","custom"),
("157","92","_menu_item_target",""),
("158","92","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("159","92","_menu_item_xfn",""),
("160","92","_menu_item_url","/he-thong-benh-vien/"),
("162","93","_menu_item_type","custom"),
("163","93","_menu_item_menu_item_parent","92"),
("164","93","_menu_item_object_id","93"),
("165","93","_menu_item_object","custom"),
("166","93","_menu_item_target",""),
("167","93","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("168","93","_menu_item_xfn",""),
("169","93","_menu_item_url","#"),
("171","94","_menu_item_type","custom"),
("172","94","_menu_item_menu_item_parent","92"),
("173","94","_menu_item_object_id","94"),
("174","94","_menu_item_object","custom"),
("175","94","_menu_item_target",""),
("176","94","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("177","94","_menu_item_xfn",""),
("178","94","_menu_item_url","#"),
("180","95","_menu_item_type","custom"),
("181","95","_menu_item_menu_item_parent","92"),
("182","95","_menu_item_object_id","95"),
("183","95","_menu_item_object","custom"),
("184","95","_menu_item_target",""),
("185","95","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("186","95","_menu_item_xfn",""),
("187","95","_menu_item_url","#"),
("207","98","_menu_item_type","custom"),
("208","98","_menu_item_menu_item_parent","532"),
("209","98","_menu_item_object_id","98"),
("210","98","_menu_item_object","custom"),
("211","98","_menu_item_target",""),
("212","98","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("213","98","_menu_item_xfn",""),
("214","98","_menu_item_url","#"),
("225","100","_menu_item_type","custom"),
("226","100","_menu_item_menu_item_parent","0"),
("227","100","_menu_item_object_id","100"),
("228","100","_menu_item_object","custom"),
("229","100","_menu_item_target",""),
("230","100","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("231","100","_menu_item_xfn","");
INSERT INTO bz_postmeta VALUES
("232","100","_menu_item_url","#"),
("243","102","_menu_item_type","custom"),
("244","102","_menu_item_menu_item_parent","100"),
("245","102","_menu_item_object_id","102"),
("246","102","_menu_item_object","custom"),
("247","102","_menu_item_target",""),
("248","102","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("249","102","_menu_item_xfn",""),
("250","102","_menu_item_url","#"),
("252","103","_menu_item_type","custom"),
("253","103","_menu_item_menu_item_parent","0"),
("254","103","_menu_item_object_id","103"),
("255","103","_menu_item_object","custom"),
("256","103","_menu_item_target",""),
("257","103","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("258","103","_menu_item_xfn",""),
("259","103","_menu_item_url","#"),
("261","104","_menu_item_type","custom"),
("262","104","_menu_item_menu_item_parent","103"),
("263","104","_menu_item_object_id","104"),
("264","104","_menu_item_object","custom"),
("265","104","_menu_item_target",""),
("266","104","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("267","104","_menu_item_xfn",""),
("268","104","_menu_item_url","#"),
("270","105","_menu_item_type","custom"),
("271","105","_menu_item_menu_item_parent","103"),
("272","105","_menu_item_object_id","105"),
("273","105","_menu_item_object","custom"),
("274","105","_menu_item_target",""),
("275","105","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("276","105","_menu_item_xfn",""),
("277","105","_menu_item_url","#"),
("279","106","_menu_item_type","custom"),
("280","106","_menu_item_menu_item_parent","103"),
("281","106","_menu_item_object_id","106"),
("282","106","_menu_item_object","custom"),
("283","106","_menu_item_target",""),
("284","106","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("285","106","_menu_item_xfn",""),
("286","106","_menu_item_url","#"),
("288","107","_menu_item_type","custom"),
("289","107","_menu_item_menu_item_parent","103"),
("290","107","_menu_item_object_id","107"),
("291","107","_menu_item_object","custom"),
("292","107","_menu_item_target",""),
("293","107","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("294","107","_menu_item_xfn",""),
("295","107","_menu_item_url","#"),
("297","108","_menu_item_type","custom"),
("298","108","_menu_item_menu_item_parent","103"),
("299","108","_menu_item_object_id","108"),
("300","108","_menu_item_object","custom"),
("301","108","_menu_item_target",""),
("302","108","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("303","108","_menu_item_xfn",""),
("304","108","_menu_item_url","#"),
("306","2","_thumbnail_id",""),
("309","113","_wp_attached_file","2018/10/Slider.jpg"),
("310","113","_wp_attachment_metadata","a:5:{s:5:\"width\";i:900;s:6:\"height\";i:315;s:4:\"file\";s:18:\"2018/10/Slider.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Slider-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Slider-768x269.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("377","150","_wp_attached_file","2018/10/slider2.jpg"),
("378","150","_wp_attachment_metadata","a:5:{s:5:\"width\";i:900;s:6:\"height\";i:315;s:4:\"file\";s:19:\"2018/10/slider2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x269.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("379","152","_wp_attached_file","2018/10/slider3.jpg"),
("380","152","_wp_attachment_metadata","a:5:{s:5:\"width\";i:900;s:6:\"height\";i:315;s:4:\"file\";s:19:\"2018/10/slider3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x269.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("400","166","_edit_last","1"),
("401","166","_edit_lock","1539315943:1"),
("404","168","_wp_attached_file","2018/10/post1.jpg"),
("405","168","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("406","166","_thumbnail_id","168"),
("409","170","_edit_last","1"),
("410","170","_edit_lock","1539315939:1"),
("411","171","_wp_attached_file","2018/10/post2.jpg"),
("412","171","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","170","_thumbnail_id","171"),
("418","170","_wp_old_slug","09-10-2018-1023-voi-phuong-phap-chan-doan-sang-loc-tien-lam-to-trong-ho-tro-sinh-san-pgd-trung-tam-ho-tro-sinh-san-benh-vien-da-khoa-quoc-te-vinmec-times-city-da-giup-cac-cap-vo-chong-mang-gen-ben"),
("419","175","_wp_attached_file","2018/10/post3.jpg"),
("420","175","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","174","_edit_last","1"),
("422","174","_thumbnail_id","175"),
("425","174","_edit_lock","1539311597:1"),
("428","177","_edit_last","1"),
("429","177","_edit_lock","1539315936:1"),
("430","179","_wp_attached_file","2018/10/post4.jpg"),
("431","179","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("432","177","_thumbnail_id","179"),
("435","182","_wp_attached_file","2018/10/post5.jpg"),
("436","182","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("437","181","_edit_last","1"),
("438","181","_thumbnail_id","182"),
("441","181","_edit_lock","1539326611:1"),
("442","185","_wp_attached_file","2018/10/post6.jpg"),
("443","185","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post6-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("444","184","_edit_last","1"),
("445","184","_thumbnail_id","185"),
("448","184","_edit_lock","1539311902:1"),
("449","187","_edit_last","1"),
("450","187","_edit_lock","1539315950:1"),
("451","188","_wp_attached_file","2018/10/post7.jpg"),
("452","188","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post7-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("453","187","_thumbnail_id","188");
INSERT INTO bz_postmeta VALUES
("456","190","_edit_last","1"),
("457","190","_edit_lock","1539315932:1"),
("458","191","_wp_attached_file","2018/10/post8.jpg"),
("459","191","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:359;s:4:\"file\";s:17:\"2018/10/post8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post8-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("460","190","_thumbnail_id","191"),
("559","267","_wp_attached_file","2018/10/i6.jpg"),
("560","267","_wp_attachment_metadata","a:5:{s:5:\"width\";i:4;s:6:\"height\";i:7;s:4:\"file\";s:14:\"2018/10/i6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("562","267","_edit_lock","1539314616:1"),
("585","285","_wp_attached_file","2018/10/icon1.png"),
("586","285","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2018/10/icon1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("587","288","_wp_attached_file","2018/10/ICON2.jpg"),
("588","288","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2018/10/ICON2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("593","298","_wp_attached_file","2018/10/ICON6.png"),
("594","298","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2018/10/ICON6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("595","300","_wp_attached_file","2018/10/ICON-5.png"),
("596","300","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2018/10/ICON-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("597","307","_wp_attached_file","2018/10/banner1.jpg"),
("598","307","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:202;s:4:\"file\";s:19:\"2018/10/banner1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("599","308","_wp_attached_file","2018/10/banner2.jpg"),
("600","308","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:202;s:4:\"file\";s:19:\"2018/10/banner2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("604","314","_menu_item_type","post_type"),
("605","314","_menu_item_menu_item_parent","0"),
("606","314","_menu_item_object_id","2"),
("607","314","_menu_item_object","page"),
("608","314","_menu_item_target",""),
("609","314","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("610","314","_menu_item_xfn",""),
("611","314","_menu_item_url",""),
("613","315","_menu_item_type","custom"),
("614","315","_menu_item_menu_item_parent","0"),
("615","315","_menu_item_object_id","315"),
("616","315","_menu_item_object","custom"),
("617","315","_menu_item_target",""),
("618","315","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("619","315","_menu_item_xfn",""),
("620","315","_menu_item_url","#"),
("622","316","_menu_item_type","custom"),
("623","316","_menu_item_menu_item_parent","0"),
("624","316","_menu_item_object_id","316"),
("625","316","_menu_item_object","custom"),
("626","316","_menu_item_target",""),
("627","316","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("628","316","_menu_item_xfn",""),
("629","316","_menu_item_url","#"),
("631","317","_menu_item_type","custom"),
("632","317","_menu_item_menu_item_parent","0"),
("633","317","_menu_item_object_id","317"),
("634","317","_menu_item_object","custom"),
("635","317","_menu_item_target",""),
("636","317","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("637","317","_menu_item_xfn",""),
("638","317","_menu_item_url","#"),
("640","318","_menu_item_type","custom"),
("641","318","_menu_item_menu_item_parent","0"),
("642","318","_menu_item_object_id","318"),
("643","318","_menu_item_object","custom"),
("644","318","_menu_item_target",""),
("645","318","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("646","318","_menu_item_xfn",""),
("647","318","_menu_item_url","#"),
("667","331","_wp_attached_file","2018/10/thong-tin-uu-dai-button.png"),
("668","331","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:64;s:4:\"file\";s:35:\"2018/10/thong-tin-uu-dai-button.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"thong-tin-uu-dai-button-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"thong-tin-uu-dai-button-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("669","332","_wp_attached_file","2018/10/dat-lich-kham-button.png"),
("670","332","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:64;s:4:\"file\";s:32:\"2018/10/dat-lich-kham-button.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"dat-lich-kham-button-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"dat-lich-kham-button-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("671","333","_wp_attached_file","2018/10/lich-hoi-thao-button.png"),
("672","333","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:64;s:4:\"file\";s:32:\"2018/10/lich-hoi-thao-button.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"lich-hoi-thao-button-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"lich-hoi-thao-button-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("678","340","_wp_attached_file","2018/10/banner5.jpg"),
("679","340","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2018/10/banner5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner5-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("680","343","_wp_attached_file","2018/10/banner6.jpg"),
("681","343","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:150;s:4:\"file\";s:19:\"2018/10/banner6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner6-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("682","345","_wp_attached_file","2018/10/banner7.jpg"),
("683","345","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2018/10/banner7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner7-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("696","358","_wp_attached_file","2018/10/t6.jpg"),
("697","358","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:139;s:4:\"file\";s:14:\"2018/10/t6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"t6-150x139.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"t6-300x41.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:41;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"t6-768x104.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:104;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"t6-1024x139.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("698","358","_edit_lock","1539319456:1"),
("714","366","_wp_attached_file","2018/10/menu-pc.png"),
("715","366","_wp_attachment_metadata","a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2018/10/menu-pc.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("716","366","_edit_lock","1539320379:1"),
("935","468","_edit_last","1"),
("936","468","_edit_lock","1539329415:1"),
("937","468","_footer","normal"),
("938","468","_wp_page_template","page-left-sidebar.php"),
("946","474","_form","<div class=\"dat-lich-kham\">\n<div class=\"row1\">\n<h3>Thông tin khách hàng</h3>\n<span>Vui lòng điền thông tin bên dưới để đăng kí đặt lịch. Vinmec sẽ liên lạc với quý khách trong thời gian sớm nhất để tư vấn và bố trí lịch khám vào các khung giờ còn trống</span>\n<div class=\"left\">\n<label>Họ và tên (*)</label>\n[text* text-312 placeholder \"Họ và tên...\"]\n<label>Số điện thoại (*)</label>\n[tel* tel-610 placeholder \"Số điện thoại...\"]\n<label>Giới tính (*)</label>\n[checkbox* checkbox-372 \"Nam\" \"Nữ\"]\n</div>\n<div class=\"right\">\n<label>Ngày sinh</label>\n[date date-12 min:2018-10-03 placeholder \"Ngày sinh\"]\n<label>Địa chỉ email</label>\n[email email-231 placeholder \"Địa chỉ email\"]\n</div>\n<div class=\"clearboth\"></div>\n</div>\n\n<div class=\"row2\">\n<h3>Thông tin hẹn khám</h3>\n<div class=\"left\">\n<label>Ngày hẹn khám (*):</label>\n[date* date-14 min:2018-10-01 max:2018-10-31 placeholder \"Ngày hẹn khám\"]\n<label>Nội dung khám bệnh (*):</label>\n[textarea* textarea-8167 placeholder \"Nội dung khám bệnh...\"]\n</div>\n<div class=\"right\">\n<label>Bác sỹ:</label>\n[text text-318 placeholder \"Bác sỹ\"]\n<label>Giờ (*):</label>\n[text* text-316 placeholder \"Giờ: Ví dụ: 14:00-15:00\"]\n\n</div>\n<div class=\"clearboth\"></div>\n</div>\n<div class=\"row3\">\n[acceptance acceptance-584 optional] Chấp nhận điều khoản & điều kiện [/acceptance]\n</div>\n[submit \"Gửi đăng ký\"]\n</div>"),
("947","474","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:48:\"Mẫu web giới thiệu bệnh viện - Webdemo\";s:6:\"sender\";s:32:\"<wordpress@benhvien.webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:507:\"Có người mới đăng ký khám chữa bệnh, thông tin như sau:\n- Họ và tên: [text-312]\n- Số điện thoại: [tel-610]\n- Giới tính: [checkbox-372]\n- Ngày sinh: [date-12]\n- Địa chỉ email: [email-231]\n- Ngày hẹn khám: [date-14]\n- Giờ: [text-316]\n- Yêu cầu bác sỹ: [text-318]\n- Nội dung khám bệnh: [textarea-8167]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web giới thiệu bệnh viện - Webdemo (https://bizhostvn.com/w/benhvien)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("948","474","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:65:\"Mẫu web giới thiệu bệnh viện - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:81:\"Mẫu web giới thiệu bệnh viện - Webdemo <wordpress@benhvien.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:198:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web giới thiệu bệnh viện - Webdemo (https://bizhostvn.com/w/benhvien)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("949","474","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("950","474","_additional_settings",""),
("951","474","_locale","vi"),
("953","468","_thumbnail_id",""),
("1054","527","_edit_last","1"),
("1055","527","_edit_lock","1539332654:1"),
("1056","527","_footer","normal"),
("1057","527","_wp_page_template","page-left-sidebar.php"),
("1058","530","_edit_last","1"),
("1059","530","_edit_lock","1539332693:1"),
("1060","530","_footer","normal"),
("1061","530","_wp_page_template","page-left-sidebar.php"),
("1062","532","_menu_item_type","taxonomy"),
("1063","532","_menu_item_menu_item_parent","0"),
("1064","532","_menu_item_object_id","3");
INSERT INTO bz_postmeta VALUES
("1065","532","_menu_item_object","category"),
("1066","532","_menu_item_target",""),
("1067","532","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1068","532","_menu_item_xfn",""),
("1069","532","_menu_item_url",""),
("1071","533","_menu_item_type","taxonomy"),
("1072","533","_menu_item_menu_item_parent","532"),
("1073","533","_menu_item_object_id","10"),
("1074","533","_menu_item_object","category"),
("1075","533","_menu_item_target",""),
("1076","533","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1077","533","_menu_item_xfn",""),
("1078","533","_menu_item_url",""),
("1080","534","_menu_item_type","taxonomy"),
("1081","534","_menu_item_menu_item_parent","532"),
("1082","534","_menu_item_object_id","8"),
("1083","534","_menu_item_object","category"),
("1084","534","_menu_item_target",""),
("1085","534","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1086","534","_menu_item_xfn",""),
("1087","534","_menu_item_url",""),
("1089","535","_menu_item_type","taxonomy"),
("1090","535","_menu_item_menu_item_parent","532"),
("1091","535","_menu_item_object_id","12"),
("1092","535","_menu_item_object","category"),
("1093","535","_menu_item_target",""),
("1094","535","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1095","535","_menu_item_xfn",""),
("1096","535","_menu_item_url",""),
("1098","536","_menu_item_type","post_type"),
("1099","536","_menu_item_menu_item_parent","100"),
("1100","536","_menu_item_object_id","468"),
("1101","536","_menu_item_object","page"),
("1102","536","_menu_item_target",""),
("1103","536","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1104","536","_menu_item_xfn",""),
("1105","536","_menu_item_url",""),
("1126","553","_edit_lock","1557031673:1"),
("1127","553","_wp_trash_meta_status","publish"),
("1128","553","_wp_trash_meta_time","1557031702"),
("1129","554","_edit_lock","1557032035:1"),
("1130","554","_wp_trash_meta_status","publish"),
("1131","554","_wp_trash_meta_time","1557032070"),
("1132","555","_wp_trash_meta_status","publish"),
("1133","555","_wp_trash_meta_time","1557133392"),
("1134","556","_wp_attached_file","2019/05/benhvien.png"),
("1135","556","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:85;s:4:\"file\";s:20:\"2019/05/benhvien.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"benhvien-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1136","557","_wp_trash_meta_status","publish"),
("1137","557","_wp_trash_meta_time","1557137438"),
("1138","559","_wp_trash_meta_status","publish"),
("1139","559","_wp_trash_meta_time","1557717022");




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
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2018-10-09 08:05:39","2018-10-09 08:05:39","[row style=\"collapse\" class=\"slider-row\"]\n\n[col span=\"4\" span__sm=\"12\" align=\"left\" class=\"cot1\"]\n\n[ux_sidebar id=\"vertical-menu\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" class=\"cot2\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"113\" image_size=\"original\" height=\"34%\"]\n\n[ux_image id=\"150\" image_size=\"original\" height=\"34%\"]\n\n[ux_image id=\"152\" image_size=\"original\" height=\"34%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[section label=\"Body website\" class=\"body-web\"]\n\n[row style=\"small\"]\n\n[col span=\"9\" span__sm=\"12\" class=\"cot8\"]\n\n[title text=\"TIN TỨC\"]\n\n[row_inner label=\"Tin tức - block lớn\" style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"1\" show_date=\"text\" excerpt_length=\"50\" comments=\"false\" image_height=\"72%\" image_size=\"original\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" class=\"cot8-2\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"3\" posts=\"5\" offset=\"1\" show_date=\"text\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"100%\" image_width=\"19\" image_size=\"medium\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col_inner]\n\n[/row_inner]\n[row_inner label=\"2 cột tin tức\" style=\"small\" class=\"row2\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"tieu-de-cot\">\n<span class=\"text-tieu-de-cot\">Lịch hội thảo</span><span class=\"vien-duoi\"></span></h2>\n[blog_posts style=\"vertical\" type=\"row\" columns=\"1\" columns__md=\"1\" cat=\"8\" posts=\"1\" show_date=\"text\" comments=\"false\" image_height=\"79%\" image_width=\"35\" text_pos=\"middle\" text_align=\"left\" text_size=\"xsmall\"]\n\n<hr />\n[row_inner_1 label=\"List posts\" style=\"small\" class=\"list-bai-viet\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"xsmall\"]\n\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"tieu-de-cot\">\n<span class=\"text-tieu-de-cot\">Sức khỏe thường thức</span><span class=\"vien-duoi\"></span></h2>\n[blog_posts style=\"vertical\" type=\"row\" columns=\"1\" columns__md=\"1\" cat=\"10\" posts=\"1\" show_date=\"text\" comments=\"false\" image_height=\"79%\" image_width=\"35\" text_pos=\"middle\" text_align=\"left\" text_size=\"xsmall\"]\n\n<hr />\n[row_inner_1 label=\"List posts\" style=\"small\" class=\"list-bai-viet\"]\n\n[col_inner_1 span__sm=\"12\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"1\" columns__md=\"1\" cat=\"10\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"xsmall\"]\n\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/col_inner]\n\n[/row_inner]\n[row_inner label=\"Nhận xét của khách hàng\" class=\"row2\"]\n\n[col_inner span__sm=\"12\"]\n\n<h2 class=\"tieu-de-cot\">\n<span class=\"text-tieu-de-cot\">Góc tri ân</span><span class=\"vien-duoi\"></span></h2>\n[gap height=\"10px\"]\n\n[ux_slider nav_pos=\"outside\" nav_size=\"normal\" nav_style=\"simple\" nav_color=\"dark\" bullet_style=\"simple\"]\n\n[row_inner_1]\n\n[col_inner_1 span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"298\" pos=\"left\"]\n\n<p><span style=\"font-size: 75%; color: #282828;\">Cảm ơn giám đốc bệnh viện Vinmec, đội ngũ điều dưỡng và y bác sĩ đặc biệt là bác sĩ Hà, Bs Thành đã mổ tim và bác sĩ Chinh đã hết lòng chăm sóc tôi.<br /><em><b>Khách hàng Vũ Văn Quyết - Quảng Ninh</b></em><br /></span></p>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"300\" pos=\"left\"]\n\n<p><span style=\"font-size: 75%; color: #282828;\"> Thay mặt em gái tôi có con sinh ngày 1/10 bị thoát vị cơ hoành bẩm sinh, cám ơn GS Nguyễn Thanh Liêm đã tư vấn và giúp đỡ để cháu được phẫu thuật. <br /><em><b>Mai Giang - Tp. HCM</b></em><br /></span></p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n[row_inner_1]\n\n[col_inner_1 span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"285\" pos=\"left\"]\n\n<p><span style=\"font-size: 75%; color: #282828;\">Cho phép tôi được thay mặt gia đình xin gửi lời cảm ơn chân thành, sâu sắc nhất đến các bác sĩ, y sĩ, y tá khoa sản nói riêng và bệnh viện Vinmec nói chung.<br /><em><b>Sản phụ Đinh Thùy Dương</b></em><br /></span></p>\n\n[/featured_box]\n\n[/col_inner_1]\n[col_inner_1 span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"288\" pos=\"left\"]\n\n<p><span style=\"font-size: 75%; color: #282828;\"> Xin bày tỏ sự cảm ơn và dành những tình cảm và lòng ngưỡng mộ tới các bác sĩ, điều dưỡng tại Vinmec..<br /><em><b>Vinmec đã mang lại an toàn cho cháu tôi</b></em><br /></span></p>\n\n[/featured_box]\n\n[/col_inner_1]\n\n[/row_inner_1]\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n[gap]\n\n[row_inner label=\"Banner cuối trang\" class=\"row2\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"308\" image_size=\"original\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"307\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" class=\"cot4\"]\n\n[row_inner label=\"3 NÚT CALL TO ACTION\" class=\"call-to-action-button\"]\n\n[col_inner span__sm=\"12\"]\n\n[ux_image id=\"332\" image_size=\"original\" link=\"/dat-lich-kham/\" target=\"_blank\"]\n\n[ux_image id=\"333\" image_size=\"original\" link=\"/lich-hoi-thao/\" target=\"_blank\"]\n\n[ux_image id=\"331\" image_size=\"original\" link=\"/thong-tin-uu-dai/\" target=\"_blank\"]\n\n[ux_image id=\"340\" image_size=\"original\"]\n\n[ux_image id=\"343\" image_size=\"original\"]\n\n[ux_image id=\"345\" image_size=\"original\"]\n\n<p><iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2018-10-12 07:58:45","2018-10-12 07:58:45","","0","https://tppone.com/demo/benhvien/?page_id=2","0","page","","0"),
("3","1","2018-10-09 08:05:39","2018-10-09 08:05:39","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/benhvien.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2018-10-09 08:05:39","2018-10-09 08:05:39","","0","https://tppone.com/demo/benhvien/?page_id=3","0","page","","0"),
("10","1","2018-10-09 08:21:58","2018-10-09 08:21:58","[row label=\"Logo chính\" style=\"small\" class=\"logo-chinh\"]
("15","1","2018-10-09 08:23:17","2018-10-09 08:23:17","","vingroup","","inherit","open","closed","","vingroup","","","2018-10-09 08:23:17","2018-10-09 08:23:17","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vingroup.png","0","attachment","image/png","0"),
("19","1","2018-10-09 08:25:13","2018-10-09 08:25:13","","vineco","","inherit","open","closed","","vineco","","","2018-10-09 08:25:13","2018-10-09 08:25:13","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vineco.png","0","attachment","image/png","0"),
("21","1","2018-10-09 08:25:51","2018-10-09 08:25:51","","almaz","","inherit","open","closed","","almaz","","","2018-10-09 08:25:51","2018-10-09 08:25:51","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/almaz.png","0","attachment","image/png","0"),
("23","1","2018-10-09 08:26:08","2018-10-09 08:26:08","","quythientam","","inherit","open","closed","","quythientam","","","2018-10-09 08:26:08","2018-10-09 08:26:08","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/quythientam.png","0","attachment","image/png","0"),
("25","1","2018-10-09 08:28:51","2018-10-09 08:28:51","","vingroupcard","","inherit","open","closed","","vingroupcard","","","2018-10-09 08:28:51","2018-10-09 08:28:51","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vingroupcard.png","0","attachment","image/png","0"),
("27","1","2018-10-09 08:29:06","2018-10-09 08:29:06","","vinhomes","","inherit","open","closed","","vinhomes","","","2018-10-09 08:29:06","2018-10-09 08:29:06","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vinhomes.png","0","attachment","image/png","0"),
("29","1","2018-10-09 08:29:22","2018-10-09 08:29:22","","vinpearl","","inherit","open","closed","","vinpearl","","","2018-10-09 08:29:22","2018-10-09 08:29:22","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vinpearl.png","0","attachment","image/png","0"),
("31","1","2018-10-09 08:29:41","2018-10-09 08:29:41","","vinpearlland","","inherit","open","closed","","vinpearlland","","","2018-10-09 08:29:41","2018-10-09 08:29:41","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vinpearlland.png","0","attachment","image/png","0"),
("33","1","2018-10-09 08:29:56","2018-10-09 08:29:56","","vinmec","","inherit","open","closed","","vinmec","","","2018-10-09 08:29:56","2018-10-09 08:29:56","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vinmec.png","0","attachment","image/png","0"),
("35","1","2018-10-09 08:30:12","2018-10-09 08:30:12","","vinschool","","inherit","open","closed","","vinschool","","","2018-10-09 08:30:12","2018-10-09 08:30:12","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vinschool.png","0","attachment","image/png","0"),
("37","1","2018-10-09 08:30:32","2018-10-09 08:30:32","","vincom","","inherit","open","closed","","vincom","","","2018-10-09 08:30:32","2018-10-09 08:30:32","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/vincom.png","0","attachment","image/png","0"),
("77","1","2018-10-09 09:46:59","2018-10-09 09:46:59","","logo","","inherit","open","closed","","logo","","","2018-10-09 09:46:59","2018-10-09 09:46:59","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/logo.png","0","attachment","image/png","0"),
("80","1","2018-10-09 09:47:44","2018-10-09 09:47:44","https://bizhostvn.com/w/benhvien/wp-content/uploads/2018/10/cropped-logo.png","cropped-logo.png","","inherit","open","closed","","cropped-logo-png","","","2018-10-09 09:47:44","2018-10-09 09:47:44","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/cropped-logo.png","0","attachment","image/png","0"),
("89","1","2018-10-12 01:27:03","2018-10-12 01:27:03","","Vertical Menu","","publish","closed","closed","","vertical-menu","","","2018-10-12 01:27:03","2018-10-12 01:27:03","","0","https://tppone.com/demo/benhvien/?post_type=sidebar&#038;p=89","0","sidebar","","0"),
("90","1","2018-10-12 01:32:20","2018-10-12 01:32:20"," ","","","publish","closed","closed","","90","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=90","1","nav_menu_item","","0"),
("91","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=91","2","nav_menu_item","","0"),
("92","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Hệ thống bệnh viện","","publish","closed","closed","","he-thong-benh-vien","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=92","3","nav_menu_item","","0"),
("93","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Hệ thống bệnh viện 1","","publish","closed","closed","","he-thong-benh-vien-1","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=93","4","nav_menu_item","","0"),
("94","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Hệ thống bệnh viện 2","","publish","closed","closed","","he-thong-benh-vien-2","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=94","5","nav_menu_item","","0"),
("95","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Hệ thống bệnh viện 3","","publish","closed","closed","","he-thong-benh-vien-3","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=95","6","nav_menu_item","","0"),
("98","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Tin tức 2","","publish","closed","closed","","tin-tuc-2","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=98","8","nav_menu_item","","0"),
("100","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Hướng dẫn","","publish","closed","closed","","huong-dan","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=100","12","nav_menu_item","","0"),
("102","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Bảo hiểm","","publish","closed","closed","","bao-hiem","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=102","14","nav_menu_item","","0"),
("103","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Gói dịch vụ","","publish","closed","closed","","goi-dich-vu","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=103","15","nav_menu_item","","0"),
("104","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Thai sản trọn gói","","publish","closed","closed","","thai-san-tron-goi","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=104","16","nav_menu_item","","0"),
("105","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Gói máu cuống rốn","","publish","closed","closed","","goi-mau-cuong-ron","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=105","17","nav_menu_item","","0"),
("106","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Thẻ bảo hiểm","","publish","closed","closed","","the-bao-hiem","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=106","18","nav_menu_item","","0"),
("107","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Gói chuyên sâu","","publish","closed","closed","","goi-chuyen-sau","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=107","19","nav_menu_item","","0"),
("108","1","2018-10-12 01:32:20","2018-10-12 01:32:20","","Gói khám tổng quát","","publish","closed","closed","","goi-kham-tong-quat","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=108","20","nav_menu_item","","0"),
("113","1","2018-10-12 01:35:59","2018-10-12 01:35:59","","Slider","","inherit","open","closed","","slider","","","2018-10-12 01:35:59","2018-10-12 01:35:59","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/Slider.jpg","0","attachment","image/jpeg","0"),
("150","1","2018-10-12 02:18:09","2018-10-12 02:18:09","","slider2","","inherit","open","closed","","slider2","","","2018-10-12 02:18:09","2018-10-12 02:18:09","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/slider2.jpg","0","attachment","image/jpeg","0"),
("152","1","2018-10-12 02:19:17","2018-10-12 02:19:17","","slider3","","inherit","open","closed","","slider3","","","2018-10-12 02:19:17","2018-10-12 02:19:17","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/slider3.jpg","0","attachment","image/jpeg","0"),
("166","1","2018-10-12 02:31:12","2018-10-12 02:31:12","Cả nửa bữa cơm, chị Lê Thị Ngọc Lan (34 tuổi, ở huyện Mỹ Xuyên, Sóc Trăng) chỉ ngồi ngắm con ăn. Sau khi được ghép gan, lần đầu tiên trong hơn 10 năm qua, bé Nguyễn Trường Sinh mới có thể tự ăn hết cả bát cơm ngon lành. Rồi bé tự ngủ ngon lành chứ không trằn trọc như mọi khi. Những dấu hiệu phục hồi đó của bé Sinh là niềm hạnh phúc, có thể bù đắp mọi nỗi vất vả không nói nên lời của người mẹ đã đi khắp nơi chạy chữa bệnh tim bẩm sinh và đã hiến 1 phần thân thể cứu con.
("168","1","2018-10-12 02:30:52","2018-10-12 02:30:52","","post1","","inherit","open","closed","","post1","","","2018-10-12 02:30:52","2018-10-12 02:30:52","","166","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post1.jpg","0","attachment","image/jpeg","0"),
("170","1","2018-10-12 02:32:31","2018-10-12 02:32:31","<strong>Với phương pháp chẩn đoán sàng lọc tiền làm tổ trong hỗ trợ sinh sản (PGD), Trung tâm hỗ trợ sinh sản Bệnh viện Đa khoa Quốc tế Vinmec Times City đã giúp các cặp vợ chồng mang gen bệnh Thalassemia sinh được những em bé khỏe mạnh, loại trừ được nguy cơ mắc bệnh di truyền trong tương lai.</strong>
("171","1","2018-10-12 02:32:27","2018-10-12 02:32:27","","post2","","inherit","open","closed","","post2","","","2018-10-12 02:32:27","2018-10-12 02:32:27","","170","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post2.jpg","0","attachment","image/jpeg","0"),
("174","1","2018-10-12 02:35:29","2018-10-12 02:35:29","<div class=\"dnews18 clearfix\">
("175","1","2018-10-12 02:35:26","2018-10-12 02:35:26","","post3","","inherit","open","closed","","post3","","","2018-10-12 02:35:26","2018-10-12 02:35:26","","174","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post3.jpg","0","attachment","image/jpeg","0"),
("177","1","2018-10-12 02:36:56","2018-10-12 02:36:56","<p><em><strong>ơn 3 năm qua, ông Vũ Văn Đương (53 tuổi, Tiên Lãng, Hải Phòng) phải sống trong cảnh “chân dài, chân ngắn” do tiêu chỏm xương đùi gây nên, khiến việc sinh họat và lao động gặp nhiều khó khăn. Tuy nhiên, chỉ 10 ngày sau ca phẫu thuật thay khớp háng tại Bệnh viện Đa khoa Quốc tế Vinmec Hải Phòng, ông Đương đã có thể tự tin đi lại và sinh hoạt bình thường.</strong></em></p>\n<p>Trước đây, ông Đương luôn bị hành hạ bởi những cơn đau háng trái, dù đã đi khám và điều trị nhiều nơi nhưng tình trạng vẫn không thuyên giảm mà tệ hơn, các cơn đau ngày một tăng dần, khiến bệnh nhân phải đi tập tễnh.</p>\n<p><img src=\"https://vinmec.com//uploaded/phau-thuat-thay-khop-hang-vinmec-hai-phong%203-resized.jpg\" alt=\"\" width=\"467\" height=\"700\" /><em>Ông Đương trước đây luôn phải chịu đựng cơn đau khớp háng và khó có thể đứng vững, đi lại.</em></p>\n<p>Theo BSCKI Nguyễn Đức Hòa, người trực tiếp thăm khám và phẫu thuật cho ông Đương cho biết, bệnh nhân vào viện trong tình trạng tỉnh táo và huyết áp ổn định. Sau khi khám lâm sàng nhận thấy háng trái của bệnh nhân đau kiểu cơ học, cơn đau tăng dần khi vận động, khiến đi lại rất khó khăn, chân trái ngắn hơn chân phải khoảng 2,5 cm. Bệnh nhân có tiền xử gút mạn, rỗi loạn mỡ máu và uống rượu nhiều năm, ngoài ra, việc không được chữa trị từ sớm khiến tình trạng bệnh ngày một trầm trọng. Kết quả chụp MRI (Cộng hưởng từ) cho thấy hai bên chỏm xương đùi của bệnh nhân đều đang bị hoại tử, bên trái ở giai đoạn 6 và bên phải đang ở giai đoạn 1 (Theo phân độ ARCO 1993). Từ kết quả thăm khám, bác sĩ Hòa đã đưa ra chỉ định phẫu thuật thay toàn bộ khớp háng trái không xi măng bằng kỹ thuật ít xâm lấn.</p>\n<p>Sau khi đo đạc trên phim X-quang trước mổ và trên chân của người bệnh, các bác sĩ đã tính toán được kích thước của khớp háng nhân tạo thay phù hợp nhất với tình trạng bệnh của bệnh nhân, đảm bảo hai chân sau mổ dài bằng nhau mà không gây liệt chân trái. Đặc biệt, kỹ thuật mổ ít xâm lấn giúp giảm thiểu tối đa tổn thương mô mềm quanh khớp, giúp bộc lộ chính xác vào ổ khớp cần thay và giúp bệnh nhân phục hồi nhanh sau mổ, ít đau đớn.</p>\n<p>Ca mổ đã diễn ra thành công, kết hợp với kỹ thuật giảm đau ưu việt tại bệnh viện Vinmec, ông Đương đã hồi phục nhanh chóng, mất hẳn cơn đau ở háng trái, vết mổ liền tốt, các chỉ số sức khỏe đều ổn định. Đặc biệt, sau phẫu thuật, 2 bên chân của ông đều dài bằng nhau, điều này không chỉ giúp ông đi lại tự nhiên, chỉnh lại dáng đi xấu mà còn giúp bên chân phải tránh được những đau đơn sau này. Chỉ sau 2 ngày, bện nhânh đã có thể bắt đầu tập phục hồi chức năng, ngày thứ 4 đi lại bình thường với sự hỗ trợ của khung đỡ và đến ngày thứ 10 ông Đương có thể tự đi lại nhẹ nhàng, sinh hoạt cá nhân bình thường.</p>\n<p><img src=\"https://vinmec.com//uploaded/phau-thuat-thay-khop-hang-vinmec-hai-phong%201-resized.jpg\" alt=\"\" width=\"525\" height=\"700\" /></p>\n<p><em>Sau ca phẫu thuật, hai chân của ông Đương đã dài bằng nhau và ông có thể đi lại, sinh hoạt cá nhân bình thường</em></p>\n<p>Trước khi tiến hành phẫu thuật bác sĩ Hòa cùng ekip cũng đưa ra một số nhận định về những khó khăn có thể mắc phải trong quá trình điều trị. Tình trạng hoại tử vô khuẩn chỏm xương đùi trái rất nặng, có nguy cơ khiến ca phẫu thuật diễn ra khó khăn. Ngoài ra, chân trái ngắn hơn chân phải khoảng 2,5 cm dẫn đến nguy cơ sau mổ là hai chân dài không bằng nhau hoặc nếu cố sửa cho hai chân bằng nhau với sự chênh lệch dài ngắn hai chân ban đầu nhiều sẽ ảnh hưởng đến thần kinh tọa có thể gây nên tình trạng liệt ở chân mổ. Tuy nhiên, bằng kinh nghiệm dày dặn và tay nghề cao, bác sĩ Đức Hòa cùng ekip đã loại bỏ được các khó khăn và rủi ro trong quá trình phẫu thuật, điều đó đã giúp ca mổ thành công và bệnh nhân phục hồi nhanh chóng.</p>\n<p><img src=\"https://vinmec.com//uploaded/phau-thuat-thay-khop-hang-vinmec-hai-phong%202-resized.jpg\" alt=\"\" width=\"700\" height=\"467\" /></p>\n<p><em>Bác sĩ Đức Hòa đã mang đến cho ông Đương cơ hội được sinh hoạt và đi lại bình thường sau 3 năm tập tễnh</em></p>\n<p>Được biết, kỹ thuật ít xâm lấn trong phẫu thuật thay toàn bộ khớp háng là một kỹ thuật chuyên sâu có nhiều ưu điểm đối với bệnh nhân, do đó đòi hỏi bác sĩ phẫu thuật phải có trình độ chuyên môn cao, đưa ra những chỉ định chính xác trước và sau khi mổ để tránh các rủi ro có thể xảy ra. Tại bệnh viện Đa khoa Quốc tế Vinmec Hải Phòng, không chỉ sở hữu đội ngũ bác sĩ chuyên môn cao, trang thiết bị máy móc hiện đại mà còn luôn cập nhật các phương pháp, kỹ thuật trong điều trị các bệnh lý phức tạp để giảm thiểu đau đớn, biến chứng cho người bệnh; giúp người bệnh mau chóng hồi phục và tự tin quay trở lại cuộc sống.</p>\n[title text=\"Một số bài viết khác\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"3\" columns__md=\"1\" posts=\"6\" show_date=\"text\" excerpt=\"false\" comments=\"false\" image_height=\"60%\" image_size=\"medium\" text_align=\"left\" text_size=\"small\"]","[VINMEC HẢI PHÒNG] THOÁT CẢNH \"CHÂN DÀI, CHÂN NGẮN\" SAU 3 NĂM BỊ HOẠI TỬ CHỎM XƯƠNG ĐÙI","","publish","open","open","","vinmec-hai-phong-thoat-canh-chan-dai-chan-ngan-sau-3-nam-bi-hoai-tu-chom-xuong-dui","","","2018-10-12 06:40:17","2018-10-12 06:40:17","","0","https://tppone.com/demo/benhvien/?p=177","0","post","","0"),
("179","1","2018-10-12 02:36:53","2018-10-12 02:36:53","","post4","","inherit","open","closed","","post4","","","2018-10-12 02:36:53","2018-10-12 02:36:53","","177","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post4.jpg","0","attachment","image/jpeg","0"),
("181","1","2018-10-12 02:37:57","2018-10-12 02:37:57","<strong>Cuối tháng 9/2018, chị Nguyễn Thị Tuyết Nhung (39 tuổi, ở Hà Nội) nhất định cùng gia đình ra sân bay tiễn người con trai duy nhất sang Nhật du học. Chiều theo ý chị, gia đình ai cũng mừng cho cả hai mẹ con: Chị Nhung vừa trải qua hơn 1 tháng phẫu thuật ung thư đại trực tràng giai đoạn cuối nhưng đã phục hồi sức khỏe rất nhanh. Con trai chị, sau gần 1 năm cùng mẹ chiến đấu với căn bệnh ung thư, giờ cũng đã trưởng thành, để chị có thể yên tâm cho con đi học xa.</strong>
("182","1","2018-10-12 02:37:53","2018-10-12 02:37:53","","post5","","inherit","open","closed","","post5","","","2018-10-12 02:37:53","2018-10-12 02:37:53","","181","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post5.jpg","0","attachment","image/jpeg","0"),
("184","1","2018-10-12 02:40:27","2018-10-12 02:40:27","<div class=\"dnews18 clearfix\">
("185","1","2018-10-12 02:40:24","2018-10-12 02:40:24","","post6","","inherit","open","closed","","post6","","","2018-10-12 02:40:24","2018-10-12 02:40:24","","184","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post6.jpg","0","attachment","image/jpeg","0"),
("187","1","2018-10-12 02:41:45","2018-10-12 02:41:45","<em><strong>“Cha mẹ là thầy cô tuyệt vời nhất của con”</strong> </em>– các chuyên gia về trẻ tự kỷ đã khẳng định như vậy. Bởi ngoài những giờ học trên lớp, những người gần gũi con nhất là cha mẹ sẽ giúp con tiến bộ, nếu như được đào tạo và hướng dẫn bài bản.
("188","1","2018-10-12 02:41:35","2018-10-12 02:41:35","","post7","","inherit","open","closed","","post7","","","2018-10-12 02:41:35","2018-10-12 02:41:35","","187","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post7.jpg","0","attachment","image/jpeg","0"),
("190","1","2018-10-12 02:42:46","2018-10-12 02:42:46","Ưu đãi <strong>MIỄN PHÍ</strong> KHÁM CHUYÊN KHOA (trị giá 690.000đ) khi tham dự Hội thảo
("191","1","2018-10-12 02:42:43","2018-10-12 02:42:43","","post8","","inherit","open","closed","","post8","","","2018-10-12 02:42:43","2018-10-12 02:42:43","","190","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/post8.jpg","0","attachment","image/jpeg","0"),
("267","1","2018-10-12 03:25:09","2018-10-12 03:25:09","","i6","","inherit","open","closed","","i6","","","2018-10-12 03:25:09","2018-10-12 03:25:09","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/i6.jpg","0","attachment","image/jpeg","0"),
("285","1","2018-10-12 03:56:43","2018-10-12 03:56:43","","icon1","","inherit","open","closed","","icon1","","","2018-10-12 03:56:43","2018-10-12 03:56:43","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/icon1.png","0","attachment","image/png","0"),
("288","1","2018-10-12 03:57:57","2018-10-12 03:57:57","","ICON2","","inherit","open","closed","","icon2","","","2018-10-12 03:57:57","2018-10-12 03:57:57","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/ICON2.jpg","0","attachment","image/jpeg","0"),
("298","1","2018-10-12 04:01:35","2018-10-12 04:01:35","","ICON6","","inherit","open","closed","","icon6","","","2018-10-12 04:01:35","2018-10-12 04:01:35","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/ICON6.png","0","attachment","image/png","0"),
("300","1","2018-10-12 04:01:48","2018-10-12 04:01:48","","ICON-5","","inherit","open","closed","","icon-5","","","2018-10-12 04:01:48","2018-10-12 04:01:48","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/ICON-5.png","0","attachment","image/png","0"),
("307","1","2018-10-12 04:05:18","2018-10-12 04:05:18","","banner1","","inherit","open","closed","","banner1","","","2018-10-12 04:05:18","2018-10-12 04:05:18","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/banner1.jpg","0","attachment","image/jpeg","0"),
("308","1","2018-10-12 04:05:18","2018-10-12 04:05:18","","banner2","","inherit","open","closed","","banner2","","","2018-10-12 04:05:18","2018-10-12 04:05:18","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/banner2.jpg","0","attachment","image/jpeg","0"),
("314","1","2018-10-12 04:08:44","2018-10-12 04:08:44"," ","","","publish","closed","closed","","314","","","2018-10-12 04:08:44","2018-10-12 04:08:44","","0","https://tppone.com/demo/benhvien/?p=314","1","nav_menu_item","","0"),
("315","1","2018-10-12 04:08:44","2018-10-12 04:08:44","","Gói khám cơ bản","","publish","closed","closed","","goi-kham-co-ban","","","2018-10-12 04:08:44","2018-10-12 04:08:44","","0","https://tppone.com/demo/benhvien/?p=315","2","nav_menu_item","","0"),
("316","1","2018-10-12 04:08:44","2018-10-12 04:08:44","","Gói khám yêu cầu","","publish","closed","closed","","goi-kham-yeu-cau","","","2018-10-12 04:08:44","2018-10-12 04:08:44","","0","https://tppone.com/demo/benhvien/?p=316","3","nav_menu_item","","0"),
("317","1","2018-10-12 04:08:44","2018-10-12 04:08:44","","Cơ sở vật chất","","publish","closed","closed","","co-so-vat-chat","","","2018-10-12 04:08:44","2018-10-12 04:08:44","","0","https://tppone.com/demo/benhvien/?p=317","4","nav_menu_item","","0"),
("318","1","2018-10-12 04:08:44","2018-10-12 04:08:44","","Liên hệ","","publish","closed","closed","","lien-he","","","2018-10-12 04:08:44","2018-10-12 04:08:44","","0","https://tppone.com/demo/benhvien/?p=318","5","nav_menu_item","","0"),
("331","1","2018-10-12 04:23:39","2018-10-12 04:23:39","","thong-tin-uu-dai-button","","inherit","open","closed","","thong-tin-uu-dai-button","","","2018-10-12 04:23:39","2018-10-12 04:23:39","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/thong-tin-uu-dai-button.png","0","attachment","image/png","0"),
("332","1","2018-10-12 04:23:40","2018-10-12 04:23:40","","dat-lich-kham-button","","inherit","open","closed","","dat-lich-kham-button","","","2018-10-12 04:23:40","2018-10-12 04:23:40","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/dat-lich-kham-button.png","0","attachment","image/png","0"),
("333","1","2018-10-12 04:23:41","2018-10-12 04:23:41","","lich-hoi-thao-button","","inherit","open","closed","","lich-hoi-thao-button","","","2018-10-12 04:23:41","2018-10-12 04:23:41","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/lich-hoi-thao-button.png","0","attachment","image/png","0"),
("340","1","2018-10-12 04:26:22","2018-10-12 04:26:22","","banner5","","inherit","open","closed","","banner5","","","2018-10-12 04:26:22","2018-10-12 04:26:22","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/banner5.jpg","0","attachment","image/jpeg","0"),
("343","1","2018-10-12 04:27:42","2018-10-12 04:27:42","","banner6","","inherit","open","closed","","banner6","","","2018-10-12 04:27:42","2018-10-12 04:27:42","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/banner6.jpg","0","attachment","image/jpeg","0"),
("345","1","2018-10-12 04:28:13","2018-10-12 04:28:13","","banner7","","inherit","open","closed","","banner7","","","2018-10-12 04:28:13","2018-10-12 04:28:13","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/banner7.jpg","0","attachment","image/jpeg","0"),
("358","1","2018-10-12 04:45:33","2018-10-12 04:45:33","","t6","","inherit","open","closed","","t6","","","2018-10-12 04:45:33","2018-10-12 04:45:33","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/t6.jpg","0","attachment","image/jpeg","0"),
("366","1","2018-10-12 05:00:42","2018-10-12 05:00:42","","menu-pc","","inherit","open","closed","","menu-pc","","","2018-10-12 05:00:42","2018-10-12 05:00:42","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2018/10/menu-pc.png","0","attachment","image/png","0"),
("468","1","2018-10-12 07:32:26","2018-10-12 07:32:26","[contact-form-7 id=\"474\"]","Đặt lịch khám","","publish","closed","closed","","dat-lich-kham","","","2018-10-12 07:45:52","2018-10-12 07:45:52","","0","https://tppone.com/demo/benhvien/?page_id=468","0","page","","0"),
("474","1","2018-10-12 07:43:02","2018-10-12 07:43:02","<div class=\"dat-lich-kham\">
("527","1","2018-10-12 08:26:17","2018-10-12 08:26:17","Xin chào bạn – độc giả của <a href=\"https://Webdemo.com/\">Webdemo.com</a>,
("530","1","2018-10-12 08:27:16","2018-10-12 08:27:16","Bệnh viện Đa khoa Quốc tế Vinmec Times City là Bệnh viện đầu tiên trong chuỗi Hệ thống Y tế Vinmec được đưa vào vận hành.
("532","1","2018-10-12 08:28:27","2018-10-12 08:28:27"," ","","","publish","closed","closed","","532","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=532","7","nav_menu_item","","0"),
("533","1","2018-10-12 08:28:27","2018-10-12 08:28:27"," ","","","publish","closed","closed","","533","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=533","9","nav_menu_item","","0"),
("534","1","2018-10-12 08:28:27","2018-10-12 08:28:27","What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","","","publish","closed","closed","","534","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=534","11","nav_menu_item","","0"),
("535","1","2018-10-12 08:28:27","2018-10-12 08:28:27"," ","","","publish","closed","closed","","535","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=535","10","nav_menu_item","","0"),
("536","1","2018-10-12 08:28:27","2018-10-12 08:28:27"," ","","","publish","closed","closed","","536","","","2018-10-12 08:28:45","2018-10-12 08:28:45","","0","https://tppone.com/demo/benhvien/?p=536","13","nav_menu_item","","0"),
("542","1","2018-10-25 15:19:42","2018-10-25 15:19:42","[row label=\"Logo chính\" style=\"small\" class=\"logo-chinh\"]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"15\" image_size=\"original\" width=\"15\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n[section label=\"Slider logo\" class=\"slide-logo\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_slider freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"19\" height=\"75px\" link=\"http://webdemo.com\" target=\"_blank\"]\n\n[logo img=\"21\" height=\"70px\"]\n\n[logo img=\"23\" height=\"70px\" link=\"http://webdemo.com\"]\n\n[logo img=\"25\" hover=\"color\" height=\"70px\"]\n\n[logo img=\"27\" height=\"70px\" link=\"http://webdemo.com\"]\n\n[logo img=\"19\" height=\"75px\"]\n\n[logo img=\"29\" height=\"70px\" link=\"http://webdemo.com\"]\n\n[logo img=\"31\" height=\"70px\"]\n\n[logo img=\"33\" height=\"70px\" link=\"http://webdemo.com\"]\n\n[logo img=\"35\" height=\"70px\"]\n\n[logo img=\"37\" height=\"70px\" link=\"http://webdemo.com\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<ul>\n<li class=\"bullet-star\"><span style=\"color: #008000; font-size: 85%;\">Giao diện website giới thiệu Cơ sở y tế - Webdemo.com</span></li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\" align=\"right\"]\n\n<p style=\"text-align: right;\"><strong><span style=\"color: #ff0000; font-size: 85%;\">Hotline:  - 0963.123.456</span></strong></p>\n[lightbox auto_open=\"true\" auto_timer=\"3000\" auto_show=\"once\" id=\"thong-bao\" width=\"600px\" padding=\"20px\" font-size=\"25px\" color=\"red\" text-align=\"center\"]\n  Xin luu ý: dây là website demo, không ph?i web bán hàng chính th?c!\n[/lightbox]\n\n[/col]\n\n[/row]\n\n[/section]","Topbar","","inherit","closed","closed","","10-revision-v1","","","2018-10-25 15:19:42","2018-10-25 15:19:42","","10","https://tppone.com/demo/benhvien/10-revision-v1/","0","revision","","0"),
("543","1","2018-10-25 15:20:46","2018-10-25 15:20:46","[row label=\"Logo chính\" style=\"small\" class=\"logo-chinh\"]
("553","1","2019-05-05 04:48:22","2019-05-05 04:48:22","{\n    \"benh-vien::topbar_elements_center\": {\n        \"value\": [\n            \"block-1\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:48:22\"\n    },\n    \"benh-vien::header-block-1\": {\n        \"value\": \"topbar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:47:06\"\n    }\n}","","","trash","closed","closed","","99a5c9bb-0e54-4d1a-96da-3a752921a334","","","2019-05-05 04:48:22","2019-05-05 04:48:22","","0","https://tppone.com/demo/benhvien/?p=553","0","customize_changeset","","0"),
("554","1","2019-05-05 04:54:30","2019-05-05 04:54:30","{\n    \"benh-vien::topbar_elements_left\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:49:23\"\n    },\n    \"benh-vien::topbar_elements_center\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:53:23\"\n    },\n    \"benh-vien::topbar_show\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:49:23\"\n    },\n    \"benh-vien::header_top_height\": {\n        \"value\": \"50\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:49:23\"\n    },\n    \"benh-vien::header_elements_right\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:53:23\"\n    },\n    \"benh-vien::header_mobile_elements_top\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:53:23\"\n    },\n    \"benh-vien::header_mobile_elements_left\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:53:23\"\n    },\n    \"benh-vien::header_mobile_elements_right\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-05 04:53:23\"\n    }\n}","","","trash","closed","closed","","bbb47c7c-1167-436b-a3bc-5613400558cc","","","2019-05-05 04:54:30","2019-05-05 04:54:30","","0","https://tppone.com/demo/benhvien/?p=554","0","customize_changeset","","0"),
("555","1","2019-05-06 09:03:12","2019-05-06 09:03:12","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:03:12\"\n    }\n}","","","trash","closed","closed","","90f0bd01-a179-492d-aaa6-ac28a43604e7","","","2019-05-06 09:03:12","2019-05-06 09:03:12","","0","https://tppone.com/demo/benhvien/90f0bd01-a179-492d-aaa6-ac28a43604e7/","0","customize_changeset","","0"),
("556","1","2019-05-06 10:08:56","2019-05-06 10:08:56","","benhvien","","inherit","open","closed","","benhvien","","","2019-05-06 10:08:56","2019-05-06 10:08:56","","0","https://tppone.com/demo/benhvien/wp-content/uploads/2019/05/benhvien.png","0","attachment","image/png","0"),
("557","1","2019-05-06 10:10:38","2019-05-06 10:10:38","{\n    \"benh-vien::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/benhvien/wp-content/uploads/2019/05/benhvien.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:10:38\"\n    }\n}","","","trash","closed","closed","","6ddfd687-b3d1-4ad5-953f-bae644f084f0","","","2019-05-06 10:10:38","2019-05-06 10:10:38","","0","https://tppone.com/demo/benhvien/6ddfd687-b3d1-4ad5-953f-bae644f084f0/","0","customize_changeset","","0"),
("558","1","2019-05-13 03:08:52","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-13 03:08:52","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/benhvien/?p=558","0","post","","0"),
("559","1","2019-05-13 03:10:22","2019-05-13 03:10:22","{\n    \"benh-vien::footer_right_text\": {\n        \"value\": \"D\\u1ef1ng web b\\u1edfi Webdemo.com | Flatsome theme\\n\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-13 03:10:22\"\n    }\n}","","","trash","closed","closed","","06472b7c-9ab0-4739-a558-23e12b5d23c3","","","2019-05-13 03:10:22","2019-05-13 03:10:22","","0","https://bizhostvn.com/w/benhvien/06472b7c-9ab0-4739-a558-23e12b5d23c3/","0","customize_changeset","","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("90","2","0"),
("91","2","0"),
("92","2","0"),
("93","2","0"),
("94","2","0"),
("95","2","0"),
("98","2","0"),
("100","2","0"),
("102","2","0"),
("103","2","0"),
("104","2","0"),
("105","2","0"),
("106","2","0"),
("107","2","0"),
("108","2","0"),
("166","3","0"),
("166","4","0"),
("166","10","0"),
("170","3","0"),
("170","4","0"),
("170","5","0"),
("170","10","0"),
("174","3","0"),
("174","4","0"),
("177","3","0"),
("177","6","0"),
("177","10","0"),
("181","3","0"),
("181","4","0"),
("184","3","0"),
("184","7","0"),
("187","8","0"),
("187","9","0"),
("187","10","0"),
("190","8","0"),
("190","9","0"),
("190","10","0"),
("314","11","0"),
("315","11","0"),
("316","11","0"),
("317","11","0"),
("318","11","0"),
("532","2","0"),
("533","2","0"),
("534","2","0"),
("535","2","0"),
("536","2","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","0"),
("2","2","nav_menu","","0","20"),
("3","3","category","","0","6"),
("4","4","post_tag","","0","4"),
("5","5","post_tag","","0","1"),
("6","6","post_tag","","0","1"),
("7","7","post_tag","","0","1"),
("8","8","category","What is Lorem Ipsum?
("9","9","post_tag","","0","2"),
("10","10","category","","0","5"),
("11","11","nav_menu","","0","5"),
("12","12","category","","0","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("2","Vertical Menu","vertical-menu","0"),
("3","Tin tức","tin-tuc","0"),
("4","Bệnh viện Vinmech","benh-vien-vinmech","0"),
("5","Công nghệ mới","cong-nghe-moi","0"),
("6","Vật lí trị liệu","vat-li-tri-lieu","0"),
("7","Phẫu thuật","phau-thuat","0"),
("8","Lịch hội thảo","lich-hoi-thao","0"),
("9","Hội thảo khoa học","hoi-thao-khoa-hoc","0"),
("10","Sức khỏe thường thức","suc-khoe-thuong-thuc","0"),
("11","Footer","footer","0"),
("12","Thông tin ưu đãi","thong-tin-uu-dai","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:1:{s:64:\"8b1e1b4d6f58313f392434a585c89d13501300f0b17e1ab91c0a76770b04bdbd\";a:4:{s:10:\"expiration\";i:1557889727;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557716927;}}"),
("17","1","bz_dashboard_quick_press_last_post_id","558"),
("18","1","show_try_gutenberg_panel","0"),
("19","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.161.51.0\";}"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1557446811"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("25","1","nav_menu_recently_edited","2"),
("26","1","duplicator_pro_created_format","1");




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
("1","admin","$P$BkyEh.IvW49KkdodNqwAnRaUYzt99C1","admin","demobz@gmail.com","","2018-10-09 08:05:39","","0","admin");




CREATE TABLE `bz_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_wfblocks7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `expiration` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parameters` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `IP` (`IP`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO bz_wfconfig VALUES
("activatingIP","42.114.60.212","yes"),
("actUpdateInterval","2","yes"),
("addCacheComment","0","yes"),
("adminNoticeQueue","a:0:{}","yes"),
("adminUserList","b:0;","yes"),
("advancedCommentScanning","1","yes"),
("ajaxWatcherDisabled_admin","0","yes"),
("ajaxWatcherDisabled_front","0","yes"),
("alertEmails","webdemo@gmail.com","yes"),
("alertOn_adminLogin","1","yes"),
("alertOn_block","1","yes"),
("alertOn_breachLogin","1","yes"),
("alertOn_critical","1","yes"),
("alertOn_firstAdminLoginOnly","0","yes"),
("alertOn_firstNonAdminLoginOnly","0","yes"),
("alertOn_loginLockout","1","yes"),
("alertOn_lostPasswdForm","1","yes"),
("alertOn_nonAdminLogin","0","yes"),
("alertOn_throttle","0","yes"),
("alertOn_update","0","yes"),
("alertOn_warnings","1","yes"),
("alertOn_wordfenceDeactivated","1","yes"),
("alert_maxHourly","0","yes"),
("allowed404s","/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml","yes"),
("allowed404s6116Migration","1","yes"),
("allowHTTPSCaching","0","yes"),
("allowMySQLi","1","yes"),
("allScansScheduled","a:0:{}","yes"),
("apiKey","ccb4602a7eef1f51a1f1f145259ea4d437d031b98c4ff37ecb77fe3fe962a106148153f31d959fa5853387d6c8c205a1f068213b654286f0e954e28e1aea413243553a4c67cf07ff76be3a932466ece0","yes"),
("autoBlockScanners","1","yes"),
("autoUpdate","0","yes"),
("autoUpdateAttempts","0","yes"),
("autoUpdateChoice","1","yes"),
("bannedURLs","","yes"),
("betaThreatDefenseFeed","0","yes"),
("blockCustomText","","yes"),
("blockedTime","300","yes"),
("blockFakeBots","0","yes"),
("blocks702Migration","1","yes"),
("cacheType","disabled","yes"),
("cbl_action","block","yes"),
("cbl_bypassRedirDest","","yes"),
("cbl_bypassRedirURL","","yes"),
("cbl_bypassViewURL","","yes"),
("cbl_cookieVal","5c0952281c23c","yes"),
("cbl_loggedInBlocked","","yes"),
("cbl_redirURL","","yes"),
("cbl_restOfSiteBlocked","1","yes"),
("checkSpamIP","1","yes"),
("config701Migration","1","yes"),
("coreHashes","�\0\0\0\0\0\0\0��a:2:{s:4:\"hash\";s:64:\"9ff1301b71ef32de64172e2a268bc8663e343739aae8a2c686791f76f977603f\";s:6:\"hashes\";s:122880:\"\0���W7���ht#�	��q��)��d���$\0��\0(����Z�Y�Y�@�Iq��ȗ#��T���@\04ߗ�t��\\v�Q��޹��\'_���ajx�Ҧ�\0E=j���ȋ|�p8.�½���֤��SGp�\0Eq�x����Pa���>bv�D��o4V�G;a<��\0^N��弘a�e|K��-��ܰ��ɜ=�\0b�&F�����%|w��*Qr;�|/�=(A���<�\0���#�B�5��j��$#��j!����bN��j�\0�ۧ��4(�K�I|���0��qD.^�v�\0�>|�;(߯\\W*�7?��\n�N��2=�7[Uo\0��i��ք�\"����]�^��XD��2](\0���/��o)��:4]��_���+̔�c���\0�e�*�@�t���\"��q	ȐN��5��H�\0�T|̅_��S�8��O0μ�¸0����6�\0��-bs�G�\n(hr.�n���!e��z.Yx��U�i��5G���$P��u�v�AT���ʦD�I�XV�f�EW��e���G�]���q)6��	�j���nNؤ^}0[P�KXs��+ȉa�w�S���[�U`|WS�PD�羟Nh��b!���#�8i�>kq6�R�E�5��:�\"�iq�U��w��|t� �E�@
�����~��\"j�\\�粃h_E�V\"���R��҆c���}��o�iӿFp�&K�IPʽ�D��[�����E=3iJ[a��x�(aB�tg�P	��B����\"��(�QG�<C�<�����Fm_=|�k�Bô��4��>]F�fw\'�������欚��Evm8���a�Ć�J����Hڢ#e���R��7\"d���|����C��C0����v��0K�
("currentCronKey","","yes"),
("dashboardData","a:4:{s:9:\"generated\";i:1544376724;s:3:\"tdf\";a:3:{s:9:\"community\";i:5667;s:7:\"premium\";i:5671;s:9:\"blacklist\";i:8033;}s:10:\"attackdata\";a:3:{s:3:\"24h\";a:24:{i:0;a:2:{s:1:\"t\";i:1544288400;s:1:\"c\";i:352636;}i:1;a:2:{s:1:\"t\";i:1544292000;s:1:\"c\";i:398499;}i:2;a:2:{s:1:\"t\";i:1544295600;s:1:\"c\";i:377515;}i:3;a:2:{s:1:\"t\";i:1544299200;s:1:\"c\";i:399229;}i:4;a:2:{s:1:\"t\";i:1544302800;s:1:\"c\";i:364175;}i:5;a:2:{s:1:\"t\";i:1544306400;s:1:\"c\";i:348477;}i:6;a:2:{s:1:\"t\";i:1544310000;s:1:\"c\";i:339926;}i:7;a:2:{s:1:\"t\";i:1544313600;s:1:\"c\";i:365731;}i:8;a:2:{s:1:\"t\";i:1544317200;s:1:\"c\";i:1128339;}i:9;a:2:{s:1:\"t\";i:1544320800;s:1:\"c\";i:3301554;}i:10;a:2:{s:1:\"t\";i:1544324400;s:1:\"c\";i:4085694;}i:11;a:2:{s:1:\"t\";i:1544328000;s:1:\"c\";i:3954617;}i:12;a:2:{s:1:\"t\";i:1544331600;s:1:\"c\";i:4185751;}i:13;a:2:{s:1:\"t\";i:1544335200;s:1:\"c\";i:4086538;}i:14;a:2:{s:1:\"t\";i:1544338800;s:1:\"c\";i:4135641;}i:15;a:2:{s:1:\"t\";i:1544342400;s:1:\"c\";i:4217114;}i:16;a:2:{s:1:\"t\";i:1544346000;s:1:\"c\";i:4330287;}i:17;a:2:{s:1:\"t\";i:1544349600;s:1:\"c\";i:4383554;}i:18;a:2:{s:1:\"t\";i:1544353200;s:1:\"c\";i:4209074;}i:19;a:2:{s:1:\"t\";i:1544356800;s:1:\"c\";i:4322638;}i:20;a:2:{s:1:\"t\";i:1544360400;s:1:\"c\";i:4442377;}i:21;a:2:{s:1:\"t\";i:1544364000;s:1:\"c\";i:4543148;}i:22;a:2:{s:1:\"t\";i:1544367600;s:1:\"c\";i:4526831;}i:23;a:2:{s:1:\"t\";i:1544371200;s:1:\"c\";i:4530106;}}s:2:\"7d\";a:7:{i:0;a:2:{s:1:\"t\";i:1543708800;s:1:\"c\";i:111274009;}i:1;a:2:{s:1:\"t\";i:1543795200;s:1:\"c\";i:117089367;}i:2;a:2:{s:1:\"t\";i:1543881600;s:1:\"c\";i:127860908;}i:3;a:2:{s:1:\"t\";i:1543968000;s:1:\"c\";i:120996973;}i:4;a:2:{s:1:\"t\";i:1544054400;s:1:\"c\";i:119239104;}i:5;a:2:{s:1:\"t\";i:1544140800;s:1:\"c\";i:116056049;}i:6;a:2:{s:1:\"t\";i:1544227200;s:1:\"c\";i:71927925;}}s:3:\"30d\";a:30:{i:0;a:2:{s:1:\"t\";i:1541721600;s:1:\"c\";i:111473502;}i:1;a:2:{s:1:\"t\";i:1541808000;s:1:\"c\";i:113347448;}i:2;a:2:{s:1:\"t\";i:1541894400;s:1:\"c\";i:110104308;}i:3;a:2:{s:1:\"t\";i:1541980800;s:1:\"c\";i:125342782;}i:4;a:2:{s:1:\"t\";i:1542067200;s:1:\"c\";i:123594090;}i:5;a:2:{s:1:\"t\";i:1542153600;s:1:\"c\";i:116533628;}i:6;a:2:{s:1:\"t\";i:1542240000;s:1:\"c\";i:123446399;}i:7;a:2:{s:1:\"t\";i:1542326400;s:1:\"c\";i:118800822;}i:8;a:2:{s:1:\"t\";i:1542412800;s:1:\"c\";i:110706878;}i:9;a:2:{s:1:\"t\";i:1542499200;s:1:\"c\";i:109532174;}i:10;a:2:{s:1:\"t\";i:1542585600;s:1:\"c\";i:107859711;}i:11;a:2:{s:1:\"t\";i:1542672000;s:1:\"c\";i:102855380;}i:12;a:2:{s:1:\"t\";i:1542758400;s:1:\"c\";i:101765190;}i:13;a:2:{s:1:\"t\";i:1542844800;s:1:\"c\";i:106423716;}i:14;a:2:{s:1:\"t\";i:1542931200;s:1:\"c\";i:106569040;}i:15;a:2:{s:1:\"t\";i:1543017600;s:1:\"c\";i:103907166;}i:16;a:2:{s:1:\"t\";i:1543104000;s:1:\"c\";i:101277492;}i:17;a:2:{s:1:\"t\";i:1543190400;s:1:\"c\";i:105175158;}i:18;a:2:{s:1:\"t\";i:1543276800;s:1:\"c\";i:103757711;}i:19;a:2:{s:1:\"t\";i:1543363200;s:1:\"c\";i:104133251;}i:20;a:2:{s:1:\"t\";i:1543449600;s:1:\"c\";i:103743230;}i:21;a:2:{s:1:\"t\";i:1543536000;s:1:\"c\";i:114037234;}i:22;a:2:{s:1:\"t\";i:1543622400;s:1:\"c\";i:110527622;}i:23;a:2:{s:1:\"t\";i:1543708800;s:1:\"c\";i:111274009;}i:24;a:2:{s:1:\"t\";i:1543795200;s:1:\"c\";i:117089367;}i:25;a:2:{s:1:\"t\";i:1543881600;s:1:\"c\";i:127860908;}i:26;a:2:{s:1:\"t\";i:1543968000;s:1:\"c\";i:120996973;}i:27;a:2:{s:1:\"t\";i:1544054400;s:1:\"c\";i:119239104;}i:28;a:2:{s:1:\"t\";i:1544140800;s:1:\"c\";i:116056049;}i:29;a:2:{s:1:\"t\";i:1544227200;s:1:\"c\";i:71927925;}}}s:9:\"countries\";a:1:{s:2:\"7d\";a:10:{i:0;a:2:{s:2:\"cd\";s:2:\"CN\";s:2:\"ct\";i:131999877;}i:1;a:2:{s:2:\"cd\";s:2:\"US\";s:2:\"ct\";i:70315124;}i:2;a:2:{s:2:\"cd\";s:2:\"IE\";s:2:\"ct\";i:69491156;}i:3;a:2:{s:2:\"cd\";s:2:\"UA\";s:2:\"ct\";i:67300778;}i:4;a:2:{s:2:\"cd\";s:2:\"RU\";s:2:\"ct\";i:47904527;}i:5;a:2:{s:2:\"cd\";s:2:\"TR\";s:2:\"ct\";i:33966258;}i:6;a:2:{s:2:\"cd\";s:2:\"PL\";s:2:\"ct\";i:32491554;}i:7;a:2:{s:2:\"cd\";s:2:\"IN\";s:2:\"ct\";i:29209235;}i:8;a:2:{s:2:\"cd\";s:2:\"FR\";s:2:\"ct\";i:27724817;}i:9;a:2:{s:2:\"cd\";s:2:\"BR\";s:2:\"ct\";i:26833918;}}}}","yes"),
("dbTest","a:1:{s:5:\"nonce\";s:64:\"4456627beddae8e4890678646741bc4a7ae3bf91de6092dc50f9d732716ea7cc\";}","no"),
("dbVersion","10.2.16-MariaDB","yes"),
("debugOn","0","yes"),
("deleteTablesOnDeact","0","yes"),
("detectProxyNextCheck","1544719526","no"),
("detectProxyNonce","31eda5347df99f52dde9de50ff202fbcd1744fb446956ab998f110b7cf94d830","no"),
("detectProxyRecommendation","DEFERRED","no"),
("diagnosticsWflogsRemovalHistory","[]","no"),
("disableCodeExecutionUploads","0","yes"),
("disableConfigCaching","0","yes"),
("disableWAFIPBlocking","0","yes"),
("dismissAutoPrependNotice","1","yes"),
("displayAutomaticBlocks","1","yes"),
("displayTopLevelBlocking","0","yes"),
("displayTopLevelLiveTraffic","0","yes"),
("displayTopLevelOptions","1","yes"),
("emailedIssuesList","a:3:{i:0;a:2:{s:7:\"ignoreC\";s:32:\"867f33c46dd6981bb51a31028813736e\";s:7:\"ignoreP\";s:32:\"867f33c46dd6981bb51a31028813736e\";}i:1;a:2:{s:7:\"ignoreC\";s:32:\"9a43b3918908dfac355e51a6d844dae4\";s:7:\"ignoreP\";s:32:\"9a43b3918908dfac355e51a6d844dae4\";}i:2;a:2:{s:7:\"ignoreC\";s:32:\"2c89eab809a673b804b8d82215f12544\";s:7:\"ignoreP\";s:32:\"2c89eab809a673b804b8d82215f12544\";}}","yes"),
("email_summary_dashboard_widget_enabled","1","yes"),
("email_summary_enabled","1","yes"),
("email_summary_excluded_directories","wp-content/cache,wp-content/wflogs","yes"),
("email_summary_interval","weekly","yes"),
("encKey","33f788c7953a1d67","yes"),
("fileContentsGSB6315Migration","1","yes"),
("firewallEnabled","1","yes"),
("geoIPVersionHash","e79c78994b3b6b57e0bd98f37ce5b1eebe6238434e98e5f72fa758474369d0c5","yes"),
("howGetIPs","","yes"),
("howGetIPs_trusted_proxies","","yes"),
("isPaid","1","yes"),
("keyType","free","yes"),
("lastBlockAggregation","1544377717","yes"),
("lastDailyCron","1544377714","yes"),
("lastDashboardCheck","1544377716","yes"),
("lastEmailHash","1544456923:4bd32720f6146775fc3e436c1cc37aa5","yes"),
("lastNotificationID","14","no"),
("lastPermissionsTemplateCheck","1544432111","yes"),
("lastScanCompleted","ok","yes"),
("lastScanFailureType","","yes"),
("lastScheduledScanStart","1544418004","yes"),
("liveActivityPauseEnabled","1","yes"),
("liveTrafficEnabled","1","yes"),
("liveTraf_displayExpandedRecords","0","no"),
("liveTraf_ignoreIPs","","yes"),
("liveTraf_ignorePublishers","1","yes"),
("liveTraf_ignoreUA","","yes"),
("liveTraf_ignoreUsers","","yes"),
("liveTraf_maxAge","30","yes"),
("liveTraf_maxRows","2000","yes");
INSERT INTO bz_wfconfig VALUES
("loginSecurityEnabled","1","yes"),
("loginSec_blockAdminReg","1","yes"),
("loginSec_breachPasswds","admins","yes"),
("loginSec_breachPasswds_enabled","1","yes"),
("loginSec_countFailMins","240","yes"),
("loginSec_disableAuthorScan","1","yes"),
("loginSec_disableOEmbedAuthor","0","yes"),
("loginSec_enableSeparateTwoFactor","","yes"),
("loginSec_lockInvalidUsers","0","yes"),
("loginSec_lockoutMins","240","yes"),
("loginSec_maskLoginErrors","1","yes"),
("loginSec_maxFailures","20","yes"),
("loginSec_maxForgotPasswd","20","yes"),
("loginSec_requireAdminTwoFactor","0","yes"),
("loginSec_strongPasswds","pubs","yes"),
("loginSec_strongPasswds_enabled","1","yes"),
("loginSec_userBlacklist","","yes"),
("longEncKey","2a4700a748781482a4c96b2d6a85afa6d2c0c123d80e909a58635d66d754926c","yes"),
("lowResourceScansEnabled","0","yes"),
("lowResourceScanWaitStep","","yes"),
("malwarePrefixes","�\0\0\0\0\0\0�y8�\0�ٗ�Ν;˽sIYJ��BR$RI%Q�D�ZHJ!I+�J��H����i!*)�EE+�&~����y�y��3��3>�ǌ�\no>^��\'�_wB�x�1�uO��� �%�e
�ʦ[re��s�~����~pHWA�s�fusWor�[��ʯk���������ڸ돓���܍�4W;6��Y{������Uqw�Nquh&wO��3b�{��r�l��\n�Ñ���9g��QW_�kx��{t��k\\��kx�=+_�=�õ,��3b���2��g?����2�6�vژk�Y̵��>�\'�ci��l�1]����:�p��ݟ�����u5����}�t羖��\'vp]����C�չ��֪�+��g���7<�����p&�q��r�8s}��p}���ڄ�����!<�Z�CR��.L�Gz<�Q��w	5�Q�	��o籧n<��\'G��I�\"^4��m��E{�x�ÿ����%�N�R�^�S�K��TFO��\nx4��L���xEIO�l���sy��m������y��g��l=��k�U\'�����_����:s���?��7��!G���N��S~󆧵x�2~��_��L~Ğ ~�{��r�7I+�M:��QF��ѱ�����4�oZ�Λ>�ď���������͔���S���p�bzo�k�[�i�-u��W��V�8�jl\"o��	?�f??�-��Pn�[�o�mjLy۠��w��)��=���%����Ϟ�O�O�Y�O)��;��������3����s�i�)��H�e�-�e�����û���3D��y����C��c��j~�~V/»����2�������y-n�|�����K������������^[C��\'G�+\'��N�����wJ��� �?ʄ������~[���#�U���`��:`��k8\"_χ��!���o/�Plz�v���l���L�#b���g~�Z�9�_�/���G��##��Q_\n������T^�oju�7uM�7Gf�[v�4��[���~�����,>n�A>�<��K����������|��o�+�����D�+���6���T%�B��ݦ3�=��^� �O�S���-����|ZA�V��?�U�g��Ye�����|��>��4��v	�Sp�ϩ��iS�1�w��U:��2>����.\'������\'w����z����������*�`�_pm_�8�/h��Om�O���_��G��.�K~�Eu�|QgI��5���%�����	�ف�|q�;�$2�/)ß{_�_�j�/4M��L��eG\0��!�����_���Wv����d��+�N�zjm��ZG݅�g�7�b�[-e�m�`�vsgxg�߭���\'U����V��.;�?,�ׯ;����7���7�~�7���?���\'�
��	V\\�\0V�����V�����V.���K`�:���0X��:���Ju�J	��O���N��ThÞ��aO�o���c�2���{��\0k�kh�
��F�1Dcd=��h\0����wѤ�hr� Z.�\"�!u�N�Uī� ����W�]r��O5o�A������}A�
	�^�u�FlM�^�)�N�Ic�JcRPҸ�ai|I�d,M�n\'M[Jo`¤����
��͓M�_3�V�	B57�
("manualScanType","onceDaily","yes"),
("max404Crawlers","DISABLED","yes"),
("max404Crawlers_action","throttle","yes"),
("max404Humans","DISABLED","yes"),
("max404Humans_action","throttle","yes"),
("maxExecutionTime","0","yes"),
("maxGlobalRequests","DISABLED","yes"),
("maxGlobalRequests_action","throttle","yes"),
("maxMem","256","yes"),
("maxRequestsCrawlers","DISABLED","yes"),
("maxRequestsCrawlers_action","throttle","yes"),
("maxRequestsHumans","DISABLED","yes"),
("maxRequestsHumans_action","throttle","yes"),
("migration636_email_summary_excluded_directories","1","no"),
("needsGeoIPSync","1","no"),
("needsNewTour_blocking","1","yes"),
("needsNewTour_dashboard","1","yes"),
("needsNewTour_firewall","1","yes"),
("needsNewTour_livetraffic","1","yes"),
("needsNewTour_scan","0","yes"),
("needsUpgradeTour_blocking","0","yes"),
("needsUpgradeTour_dashboard","0","yes"),
("needsUpgradeTour_firewall","0","yes"),
("needsUpgradeTour_livetraffic","0","yes"),
("needsUpgradeTour_scan","0","yes"),
("neverBlockBG","neverBlockVerified","yes"),
("noc1ScanSchedule","a:3:{i:0;i:1544416200;i:1;i:1544675400;i:2;i:1544934600;}","yes"),
("notification_blogHighlights","1","yes"),
("notification_productUpdates","1","yes"),
("notification_promotions","1","yes"),
("notification_scanStatus","1","yes"),
("notification_securityAlerts","1","yes"),
("notification_updatesNeeded","1","yes"),
("onboardingAttempt1","skipped","yes"),
("onboardingAttempt2","","no"),
("onboardingAttempt3","","no"),
("onboardingAttempt3Initial","0","yes"),
("originalScheduledScanStart","1544416200","yes"),
("other_blockBadPOST","0","yes"),
("other_bypassLitespeedNoabort","0","yes"),
("other_hideWPVersion","0","yes"),
("other_pwStrengthOnUpdate","1","yes"),
("other_scanComments","1","yes"),
("other_scanOutside","0","yes"),
("other_WFNet","1","yes"),
("previousWflogsFileList","[\"GeoLite2-Country.mmdb\",\"ips.php\",\"config.php\",\".htaccess\",\"config-transient.php\",\"attack-data.php\",\"rules.php\",\"config-synced.php\",\"template.php\",\"config-livewaf.php\"]","yes"),
("scanFileProcessing","","yes"),
("scansEnabled_checkGSB","1","yes"),
("scansEnabled_checkHowGetIPs","1","yes"),
("scansEnabled_checkReadableConfig","1","yes"),
("scansEnabled_comments","1","yes"),
("scansEnabled_core","1","yes"),
("scansEnabled_coreUnknown","1","yes"),
("scansEnabled_diskSpace","1","yes"),
("scansEnabled_dns","1","yes"),
("scansEnabled_fileContents","1","yes"),
("scansEnabled_fileContentsGSB","1","yes"),
("scansEnabled_highSense","0","yes"),
("scansEnabled_malware","1","yes"),
("scansEnabled_oldVersions","1","yes"),
("scansEnabled_options","1","yes"),
("scansEnabled_passwds","1","yes"),
("scansEnabled_plugins","0","yes"),
("scansEnabled_posts","1","yes"),
("scansEnabled_scanImages","0","yes"),
("scansEnabled_suspectedFiles","1","yes"),
("scansEnabled_suspiciousAdminUsers","1","yes"),
("scansEnabled_suspiciousOptions","1","yes"),
("scansEnabled_themes","0","yes"),
("scansEnabled_wpscan_directoryListingEnabled","1","yes"),
("scansEnabled_wpscan_fullPathDisclosure","1","yes"),
("scanStageStatuses","a:11:{s:13:\"spamvertising\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:1;s:8:\"finished\";i:1;s:8:\"expected\";i:1;}s:4:\"spam\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:1;s:8:\"finished\";i:1;s:8:\"expected\";i:1;}s:9:\"blacklist\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:1;s:8:\"finished\";i:1;s:8:\"expected\";i:1;}s:6:\"server\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:4;s:8:\"finished\";i:4;s:8:\"expected\";i:4;}s:7:\"changes\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:2;s:8:\"finished\";i:2;s:8:\"expected\";i:2;}s:6:\"public\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:2;s:8:\"finished\";i:2;s:8:\"expected\";i:2;}s:7:\"malware\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:2;s:8:\"finished\";i:2;s:8:\"expected\";i:2;}s:7:\"content\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:3;s:8:\"finished\";i:3;s:8:\"expected\";i:3;}s:8:\"password\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:1;s:8:\"finished\";i:1;s:8:\"expected\";i:1;}s:13:\"vulnerability\";a:4:{s:6:\"status\";s:16:\"complete-warning\";s:7:\"started\";i:1;s:8:\"finished\";i:1;s:8:\"expected\";i:1;}s:7:\"options\";a:4:{s:6:\"status\";s:16:\"complete-success\";s:7:\"started\";i:2;s:8:\"finished\";i:2;s:8:\"expected\";i:2;}}","no"),
("scanTime","1544418162.6615","yes"),
("scanType","standard","yes"),
("scan_exclude","","yes"),
("scan_include_extra","","yes"),
("scan_maxDuration","","yes"),
("scan_maxIssues","1000","yes"),
("schedMode","auto","yes");
INSERT INTO bz_wfconfig VALUES
("schedStartHour","3","yes"),
("scheduledScansEnabled","1","yes"),
("serverDNS","1544402380;3600;31.220.110.178","yes"),
("showAdminBarMenu","1","yes"),
("signatureUpdateTime","1542995151","yes"),
("spamvertizeCheck","1","yes"),
("ssl_verify","1","yes"),
("startScansRemotely","0","yes"),
("supportContent","{\"top\":[{\"title\":\"I am locked out of my site\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/rate-limiting\\/#i-am-locked-out-of-my-site\",\"order\":0},{\"title\":\"Wordfence 7\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/troubleshooting\\/wordfence-7\\/\",\"order\":1},{\"title\":\"Wordfence Web Application Firewall (WAF)\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/\",\"order\":2},{\"title\":\"Scan Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/troubleshooting\\/\",\"order\":3},{\"title\":\"Optimizing The Firewall\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/optimizing-the-firewall\\/\",\"order\":4},{\"title\":\"Scan Results\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scan-results\\/\",\"order\":5},{\"title\":\"PHP Fatal error: Failed opening required wordfence-waf.php\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/#php-fatal-error-failed-opening-required-wordfence-waf-php\",\"order\":6}],\"all\":[{\"title\":\"Wordfence and GDPR - General Data Protection Regulation\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/general-data-protection-regulation\\/\",\"excerpt\":\"Defiant, the company behind Wordfence, has updated its terms of use, privacy policies and software, as well as made available a data processing agreement to meet GDPR compliance. Customers must review and agree to updated terms in order to continue using our products and services. We also provide a data processing agreement if you qualify as a data controller under the GDPR.\",\"order\":0},{\"title\":\"Dashboard\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/\",\"excerpt\":\"The Wordfence Dashboard provides insight into the current state of your site’s security.\",\"children\":[{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/options\\/\",\"order\":0},{\"title\":\"Alerts\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/alerts\\/\",\"order\":1}],\"order\":1},{\"title\":\"Firewall\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/\",\"excerpt\":\"The Wordfence Web Application Firewall is a PHP based, application level firewall that filters out malicious requests to your site. \",\"children\":[{\"title\":\"Optimizing\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/optimizing-the-firewall\\/\",\"order\":0},{\"title\":\"Learning Mode\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/learning-mode\\/\",\"order\":1},{\"title\":\"Statistics\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/statistics\\/\",\"order\":2},{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/options\\/\",\"order\":3},{\"title\":\"Brute Force Protection\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/brute-force\\/\",\"order\":4},{\"title\":\"Rate Limiting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/rate-limiting\\/\",\"order\":5},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/troubleshooting\\/\",\"order\":6}],\"order\":2},{\"title\":\"Blocking\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/\",\"excerpt\":\"Aside from the Firewall rules that protect against SQL-injection, XSS and more, Wordfence also has custom features for additional blocking. \",\"children\":[{\"title\":\"Blocked or Locked Out\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/blocked-or-locked-out\\/\",\"order\":0},{\"title\":\"Country Blocking\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/country-blocking\\/\",\"order\":1},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/troubleshooting\\/\",\"order\":2}],\"order\":3},{\"title\":\"Scan\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/\",\"excerpt\":\"A Wordfence scan examines all files on your WordPress website looking for malicious code, backdoors, shells that hackers have installed, known malicious URLs and known patterns of infections.\",\"children\":[{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/options\\/\",\"order\":0},{\"title\":\"Results\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scan-results\\/\",\"order\":1},{\"title\":\"Scheduling\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scheduling\\/\",\"order\":2},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/troubleshooting\\/\",\"order\":3}],\"order\":4},{\"title\":\"Tools\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/\",\"excerpt\":\"Wordfence Tools include Two Factor Authentication, Whois Lookup, Password Audit, Live Traffic and Diagnostics.\",\"children\":[{\"title\":\"Import\\/Export\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/import-export\\/\",\"order\":0},{\"title\":\"Password Auditing\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/password-auditing\\/\",\"order\":1},{\"title\":\"Whois Lookup\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/whois-lookup\\/\",\"order\":2},{\"title\":\"Diagnostics\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/diagnostics\\/\",\"order\":3},{\"title\":\"Live Traffic\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/live-traffic\\/\",\"order\":4},{\"title\":\"Two Factor Authentication\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/two-factor-authentication\\/\",\"order\":5}],\"order\":5},{\"title\":\"Advanced\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/\",\"excerpt\":\"If you want to know more about the technical details of Wordfence, you\'ll find the answers in this section.\",\"children\":[{\"title\":\"System requirements\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/system-requirements\\/\",\"order\":0},{\"title\":\"Changelog\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/changelog\\/\",\"order\":1},{\"title\":\"Remove or Reset\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/remove-or-reset\\/\",\"order\":2},{\"title\":\"Technical Details\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/technical-details\\/\",\"order\":3},{\"title\":\"Constants\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/constants\\/\",\"order\":4},{\"title\":\"Wordfence API\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/wordfence-api\\/\",\"order\":5},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/troubleshooting\\/\",\"order\":6}],\"order\":6},{\"title\":\"Wordfence Premium\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/premium\\/\",\"excerpt\":\"Wordfence Premium comes with an IP Blacklist, Real Time Protection and much more.\",\"children\":[{\"title\":\"Pricing\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/premium\\/pricing\\/\",\"order\":0},{\"title\":\"License Key\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/premium\\/api-key\\/\",\"order\":1}],\"order\":7},{\"title\":\"Site Cleaning and Security Audits\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/security-services\\/\",\"excerpt\":\"Let one of our Security Analysts help you clean your infected site or inspect it for vulnerabilities.\",\"order\":8}]}","yes"),
("supportHash","0bf12bea418313344a0c16e4efaa966deca9e2d0c4d2f6e6b483da90b4b014be","yes"),
("timeoffset_wf","0","yes"),
("timeoffset_wf_updated","1544456923","yes"),
("totalAlertsSent","1","yes"),
("totalLoginHits","2","yes"),
("totalScansRun","8","yes"),
("touppBypassNextCheck","0","yes"),
("touppPromptNeeded","","yes"),
("useNoc3Secure","1","yes"),
("vulnerabilities_plugin","a:4:{i:0;a:4:{s:4:\"slug\";s:14:\"contact-form-7\";s:11:\"fromVersion\";s:5:\"5.0.5\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:1;a:4:{s:4:\"slug\";s:11:\"woosidebars\";s:11:\"fromVersion\";s:5:\"1.4.5\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:2;a:4:{s:4:\"slug\";s:9:\"wordfence\";s:11:\"fromVersion\";s:6:\"7.1.18\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:3;a:4:{s:4:\"slug\";s:9:\"wp-rocket\";s:11:\"fromVersion\";s:6:\"2.11.3\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}}","yes"),
("vulnerabilities_theme","a:1:{i:0;a:4:{s:4:\"slug\";s:8:\"flatsome\";s:9:\"toVersion\";s:5:\"3.7.1\";s:11:\"fromVersion\";s:5:\"3.6.2\";s:10:\"vulnerable\";b:0;}}","yes"),
("wafAlertInterval","600","yes"),
("wafAlertOnAttacks","1","yes"),
("wafAlertThreshold","100","yes"),
("wafAlertWhitelist","","yes"),
("wfKillRequested","0","no"),
("wfPeakMemory","46137344","no"),
("wfScanStartVersion","4.9.8","yes"),
("wfsd_engine","","no"),
("wfStatusStartMsgs","a:23:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";i:9;s:0:\"\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:0:\"\";i:13;s:0:\"\";i:14;s:0:\"\";i:15;s:0:\"\";i:16;s:0:\"\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:0:\"\";i:22;s:0:\"\";}","yes"),
("wf_dnsA","benhvien.webdemo.com points to 31.220.110.178","yes"),
("wf_dnsCNAME","","yes"),
("wf_dnsLogged","1","yes"),
("wf_dnsMX","","yes"),
("wf_scanLastStatusTime","0","yes"),
("wf_scanRunning","","yes"),
("wf_summaryItems","a:8:{s:12:\"scannedPosts\";i:12;s:15:\"scannedComments\";i:0;s:12:\"scannedFiles\";i:4064;s:14:\"scannedPlugins\";i:4;s:13:\"scannedThemes\";i:2;s:12:\"scannedUsers\";i:1;s:11:\"scannedURLs\";i:4394;s:10:\"lastUpdate\";i:1544418163;}","yes"),
("whitelisted","","yes"),
("whitelistedServices","{}","yes"),
("whitelistHash","5e121e57dc0a53613708299e0085cbe680301579aa30648e4f2278ac58068183","yes"),
("whitelistPresets","{\"wordfence\":{\"n\":\"Wordfence\",\"h\":true,\"d\":true,\"f\":true,\"r\":[\"69.46.36.0\\/27\",\"2605:2400:0104:0100::\\/56\"]},\"sucuri\":{\"n\":\"Sucuri\",\"d\":true,\"r\":[\"97.74.127.171\",\"69.164.203.172\",\"173.230.128.135\",\"66.228.34.49\",\"66.228.40.185\",\"50.116.36.92\",\"50.116.36.93\",\"50.116.3.171\",\"198.58.96.212\",\"50.116.63.221\",\"192.155.92.112\",\"192.81.128.31\",\"198.58.106.244\",\"192.155.95.139\",\"23.239.9.227\",\"198.58.112.103\",\"192.155.94.43\",\"162.216.16.33\",\"173.255.233.124\",\"173.255.233.124\",\"192.155.90.179\",\"50.116.41.217\",\"192.81.129.227\",\"198.58.111.80\",\"162.216.19.183\"]},\"facebook\":{\"n\":\"Facebook\",\"d\":true,\"r\":[\"204.15.20.0\\/22\",\"69.63.176.0\\/20\",\"66.220.144.0\\/20\",\"66.220.144.0\\/21\",\"69.63.184.0\\/21\",\"69.63.176.0\\/21\",\"74.119.76.0\\/22\",\"69.171.255.0\\/24\",\"173.252.64.0\\/18\",\"69.171.224.0\\/19\",\"69.171.224.0\\/20\",\"103.4.96.0\\/22\",\"69.63.176.0\\/24\",\"173.252.64.0\\/19\",\"173.252.70.0\\/24\",\"31.13.64.0\\/18\",\"31.13.24.0\\/21\",\"66.220.152.0\\/21\",\"66.220.159.0\\/24\",\"69.171.239.0\\/24\",\"69.171.240.0\\/20\",\"31.13.64.0\\/19\",\"31.13.64.0\\/24\",\"31.13.65.0\\/24\",\"31.13.67.0\\/24\",\"31.13.68.0\\/24\",\"31.13.69.0\\/24\",\"31.13.70.0\\/24\",\"31.13.71.0\\/24\",\"31.13.72.0\\/24\",\"31.13.73.0\\/24\",\"31.13.74.0\\/24\",\"31.13.75.0\\/24\",\"31.13.76.0\\/24\",\"31.13.77.0\\/24\",\"31.13.96.0\\/19\",\"31.13.66.0\\/24\",\"173.252.96.0\\/19\",\"69.63.178.0\\/24\",\"31.13.78.0\\/24\",\"31.13.79.0\\/24\",\"31.13.80.0\\/24\",\"31.13.82.0\\/24\",\"31.13.83.0\\/24\",\"31.13.84.0\\/24\",\"31.13.85.0\\/24\",\"31.13.86.0\\/24\",\"31.13.87.0\\/24\",\"31.13.88.0\\/24\",\"31.13.89.0\\/24\",\"31.13.90.0\\/24\",\"31.13.91.0\\/24\",\"31.13.92.0\\/24\",\"31.13.93.0\\/24\",\"31.13.94.0\\/24\",\"31.13.95.0\\/24\",\"69.171.253.0\\/24\",\"69.63.186.0\\/24\",\"31.13.81.0\\/24\",\"179.60.192.0\\/22\",\"179.60.192.0\\/24\",\"179.60.193.0\\/24\",\"179.60.194.0\\/24\",\"179.60.195.0\\/24\",\"185.60.216.0\\/22\",\"45.64.40.0\\/22\",\"185.60.216.0\\/24\",\"185.60.217.0\\/24\",\"185.60.218.0\\/24\",\"185.60.219.0\\/24\",\"129.134.0.0\\/16\",\"157.240.0.0\\/16\",\"204.15.20.0\\/22\",\"69.63.176.0\\/20\",\"69.63.176.0\\/21\",\"69.63.184.0\\/21\",\"66.220.144.0\\/20\",\"69.63.176.0\\/20\",\"2620:0:1c00::\\/40\",\"2a03:2880::\\/32\",\"2a03:2880:fffe::\\/48\",\"2a03:2880:ffff::\\/48\",\"2620:0:1cff::\\/48\",\"2a03:2880:f000::\\/48\",\"2a03:2880:f001::\\/48\",\"2a03:2880:f002::\\/48\",\"2a03:2880:f003::\\/48\",\"2a03:2880:f004::\\/48\",\"2a03:2880:f005::\\/48\",\"2a03:2880:f006::\\/48\",\"2a03:2880:f007::\\/48\",\"2a03:2880:f008::\\/48\",\"2a03:2880:f009::\\/48\",\"2a03:2880:f00a::\\/48\",\"2a03:2880:f00b::\\/48\",\"2a03:2880:f00c::\\/48\",\"2a03:2880:f00d::\\/48\",\"2a03:2880:f00e::\\/48\",\"2a03:2880:f00f::\\/48\",\"2a03:2880:f010::\\/48\",\"2a03:2880:f011::\\/48\",\"2a03:2880:f012::\\/48\",\"2a03:2880:f013::\\/48\",\"2a03:2880:f014::\\/48\",\"2a03:2880:f015::\\/48\",\"2a03:2880:f016::\\/48\",\"2a03:2880:f017::\\/48\",\"2a03:2880:f018::\\/48\",\"2a03:2880:f019::\\/48\",\"2a03:2880:f01a::\\/48\",\"2a03:2880:f01b::\\/48\",\"2a03:2880:f01c::\\/48\",\"2a03:2880:f01d::\\/48\",\"2a03:2880:f01e::\\/48\",\"2a03:2880:f01f::\\/48\",\"2a03:2880:1000::\\/36\",\"2a03:2880:2000::\\/36\",\"2a03:2880:3000::\\/36\",\"2a03:2880:4000::\\/36\",\"2a03:2880:5000::\\/36\",\"2a03:2880:6000::\\/36\",\"2a03:2880:7000::\\/36\",\"2a03:2880:f020::\\/48\",\"2a03:2880:f021::\\/48\",\"2a03:2880:f022::\\/48\",\"2a03:2880:f023::\\/48\",\"2a03:2880:f024::\\/48\",\"2a03:2880:f025::\\/48\",\"2a03:2880:f026::\\/48\",\"2a03:2880:f027::\\/48\",\"2a03:2880:f028::\\/48\",\"2a03:2880:f029::\\/48\",\"2a03:2880:f02a::\\/48\",\"2a03:2880:f02b::\\/48\",\"2a03:2880:f02c::\\/48\",\"2a03:2880:f02d::\\/48\",\"2a03:2880:f02e::\\/48\",\"2a03:2880:f02f::\\/48\",\"2a03:2880:f030::\\/48\",\"2a03:2880:f031::\\/48\",\"2a03:2880:f032::\\/48\",\"2a03:2880:f033::\\/48\",\"2a03:2880:f034::\\/48\",\"2a03:2880:f035::\\/48\",\"2a03:2880:f036::\\/48\",\"2a03:2880:f037::\\/48\",\"2a03:2880:f038::\\/48\",\"2a03:2880:f039::\\/48\",\"2a03:2880:f03a::\\/48\",\"2a03:2880:f03b::\\/48\",\"2a03:2880:f03c::\\/48\",\"2a03:2880:f03d::\\/48\",\"2a03:2880:f03e::\\/48\",\"2a03:2880:f03f::\\/48\",\"2401:db00::\\/32\",\"2a03:2880::\\/36\",\"2803:6080::\\/32\"]},\"uptimerobot\":{\"n\":\"Uptime Robot\",\"d\":true,\"r\":[\"69.162.124.224\\/28\",\"63.143.42.240\\/28\"]},\"statuscake\":{\"n\":\"StatusCake\",\"d\":true,\"r\":[\"103.194.112.70\",\"104.131.247.151\",\"104.131.248.65\",\"104.131.248.78\",\"104.156.229.24\",\"104.156.255.184\",\"104.206.168.26\",\"104.238.164.105\",\"107.150.1.135\",\"107.155.104.182\",\"107.155.108.234\",\"107.155.125.29\",\"107.161.28.219\",\"107.170.197.248\",\"107.170.219.46\",\"107.170.227.23\",\"107.170.227.24\",\"107.170.240.141\",\"107.170.53.191\",\"107.191.47.131\",\"107.191.57.237\",\"108.61.119.153\",\"108.61.162.214\",\"108.61.205.201\",\"108.61.212.141\",\"108.61.215.179\",\"125.63.48.239\",\"128.199.222.65\",\"138.197.130.232\",\"138.197.130.235\",\"138.197.140.243\",\"138.204.171.136\",\"138.68.24.115\",\"138.68.24.136\",\"138.68.24.207\",\"138.68.24.60\",\"138.68.80.10\",\"138.68.80.173\",\"139.59.15.79\",\"139.59.155.26\",\"139.59.190.241\",\"139.59.22.109\",\"139.59.26.85\",\"139.59.29.167\",\"149.154.157.61\",\"149.255.59.100\",\"151.236.10.238\",\"151.236.18.80\",\"151.80.175.223\",\"151.80.175.226\",\"154.127.60.23\",\"154.127.60.59\",\"158.255.208.76\",\"159.203.182.22\",\"159.203.182.60\",\"159.203.186.225\",\"159.203.31.18\",\"162.243.247.163\",\"162.243.71.56\",\"162.248.97.72\",\"162.253.64.104\",\"162.253.64.87\",\"176.56.230.110\",\"178.62.101.57\",\"178.62.104.137\",\"178.62.106.84\",\"178.62.109.7\",\"178.62.40.233\",\"178.62.41.44\",\"178.62.41.49\",\"178.62.41.52\",\"178.62.65.162\",\"178.62.71.227\",\"178.62.78.199\",\"178.62.80.93\",\"178.62.86.69\",\"178.73.210.99\",\"181.41.201.117\",\"181.41.214.137\",\"185.112.157.185\",\"185.12.45.70\",\"185.47.129.168\",\"185.60.135.86\",\"188.166.158.224\",\"188.166.253.148\",\"188.226.139.158\",\"188.226.158.160\",\"188.226.169.228\",\"188.226.171.58\",\"188.226.184.152\",\"188.226.185.106\",\"188.226.186.199\",\"188.226.203.84\",\"188.226.247.184\",\"188.68.238.79\",\"192.241.221.11\",\"193.124.178.54\",\"193.124.178.61\",\"193.182.144.105\",\"193.182.144.147\",\"199.167.128.80\",\"209.222.30.242\",\"213.183.56.107\",\"217.148.43.188\",\"217.148.43.202\",\"31.220.7.237\",\"37.157.246.146\",\"37.235.48.42\",\"37.235.52.25\",\"37.235.53.240\",\"37.235.55.205\",\"37.97.188.103\",\"45.32.128.80\",\"45.32.145.79\",\"45.32.151.21\",\"45.32.160.172\",\"45.32.166.195\",\"45.32.171.24\",\"45.32.192.198\",\"45.32.195.186\",\"45.32.195.93\",\"45.32.212.56\",\"45.32.36.158\",\"45.32.7.22\",\"45.63.121.159\",\"45.63.26.78\",\"45.63.51.63\",\"45.63.61.213\",\"45.63.76.68\",\"45.63.78.84\",\"45.63.86.120\",\"45.63.88.213\",\"45.76.1.44\",\"45.76.192.50\",\"45.76.3.112\",\"46.101.0.24\",\"46.101.110.32\",\"46.101.110.43\",\"46.101.110.45\",\"46.101.20.96\",\"46.101.238.182\",\"46.101.238.189\",\"46.101.240.208\",\"46.101.27.186\",\"46.101.61.83\",\"46.101.74.251\",\"5.45.179.103\",\"50.2.139.16\",\"82.221.95.161\",\"91.236.116.163\"]}}","yes"),
("wp_home_url","https://bizhostvn.com/w/benhvien","yes"),
("wp_site_url","https://bizhostvn.com/w/benhvien","yes");




CREATE TABLE `bz_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO bz_wfcrawlers VALUES
("\0\0\0\0\0\0\0\0\0\0��B�O�","�����>�b0�oQ1��","verified","1544402380","crawl-66-249-79-181.googlebot.com"),
("\0\0\0\0\0\0\0\0\0\0��B�O�","�����>�b0�oQ1��","verified","1544379636","crawl-66-249-79-183.googlebot.com");




CREATE TABLE `bz_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL,
  PRIMARY KEY (`filenameHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO bz_wffilemods VALUES
("\0�@u���2��X�","wp-content/plugins/contact-form-7/modules/date.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��]�5?�?���S9","�/��N�
("\0�\'��(��	����X!","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-init.php","0","��IdFA��~�K$��","��IdFA��~�K$��","�o�5�5��FV�B���f�Xd	��#�yUS=<","","0","?"),
("\00��#�9���Z4�j$","wp-admin/network/user-edit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��?aO��\'��	","�nF�#���V}�^�L��Ku����","","0","?"),
("\05g���꫔c�0�\"D","wp-includes/css/media-views-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","7k6|[M ϋ�K���","-y�4N7W�W��b�^��\"q�X���\'�$","","0","?"),
("\0C_\n��jD��@k","wp-admin/network/index.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","T�����e**�d��","�PPߜf��*Ч<ȘW�pS�i���`�C","","0","?"),
("\0Id�s)6�.m���s�Z","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-palette.php","0","��0��|9@~���
("\0Jkw�2pĹ�sNG","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/ControlStructures/ElseIfDeclarationUnitTest.php","0","����\'P�*�����L��","����\'P�*�����L��","�dC��`5�6��ӭ���)Z�\n�������","","0","?"),
("\0^�n,{/�1A�2�~��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Commenting/FunctionCommentSniff.php","0","������/�U�)�Y","������/�U�)�Y","�f���u���S6|U�mA�M��4:Ŭ&1h","","0","?"),
("\0`Y�ϭrG����","wp-includes/SimplePie/Restriction.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","*qhd�s�;�y","���u��\\����Qi窍g���DH	;\0��","","0","?"),
("\0i�1�\nD��o�gdd��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/ObjectOperatorSpacingUnitTest.php","0","����@Rf���xh��Eg","����@Rf���xh��Eg","+�,��Sߝ)Q���O�,(I�W���eh�zu�","","0","?"),
("\0z�<�q�M*�V��","wp-content/themes/flatsome/assets/img/payment-icons/icon-quick.svg.php","0",">�\\�%���H��",">�\\�%���H��","�����[��~��;�i�M�J��,Ͻ","","0","?"),
("\0���;f��Q�=*Ǖ�","wp-includes/js/wp-emoji.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Ě��F̏�=�o��",":+��/nL�o˳�ĥI�&�b>Y6�mE�����R","","0","?"),
("\0�|9��u�e���@��","wp-admin/includes/image.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L���]��⏨{","I�ӂ\0�v�����,�	�K8{��:%���Z�","","0","?"),
("\0�D�`�8R��ɲ%��","wp-content/plugins/wordfence/waf/wfWAFIPBlocksController.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","m�\n�f|���`����","���\nn!�c^��,�)r�h���@tع","","0","?"),
("\0�)�ٽV���z��n","wp-content/themes/flatsome/template-parts/posts/featured-posts.php","0","QE׾�����\\���lt","QE׾�����\\���lt","C�c���^�s��������O����eo�|�","","0","?"),
("\0�lDd���u^��Y��","wp-admin/user/privacy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'�׼n
("\0�H���Ғo�y��3�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/Billing/Subscriptions/Zones.php","0","�@���`���=��n","�@���`���=��n","2
("\0��P*��������L!","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Exception/AuthenticationException.php","0","�O�H9�/�}�ieA�K","�O�H9�/�}�ieA�K","��g�]�������g%\')t�P9R *��i","","0","?"),
("-��O[���(��Z�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewReturnTypeDeclarationsSniff.php","0","�)����2)7�`{VA","�)����2)7�`{VA","��ܜ����A5}��Gyja(��u�mU�q�","","0","?"),
(">���{����-��b","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/RestrictedFunctionsSniff.php","0","z��P^ǣ���V�{�","z��P^ǣ���V�{�","�c�<#������馄߰n�T�E=I���j�","","0","?"),
("NQ�\"*hz�r�w|�","wp-admin/images/media-button-other.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ƴk�|��,O�\"�","�\n6��b+d�1�m㗡_��z�т�3��<�}","","0","?"),
("X�ɘy_�7�XN/","wp-content/plugins/wordfence/views/scanner/issue-diskSpace.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������.*:î�+�1","�����ޔ�eg�)��QRC��A�m����","","0","?"),
("]��j��R���X","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Exception/AddressNotFoundException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��//R�����j���.","��3\'�X
("c�|���������","wp-content/themes/flatsome/template-parts/portfolio/single-portfolio-top.php","0","���BE���Z}n �","���BE���Z}n �","9���ifL�PÉ��=��`2���}~C\\Qs","","0","?"),
("q^��\"6l��G����U","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/Files/ClosingTagUnitTest.php","0","�8\0�IeY�Ɯ�=B_L","�8\0�IeY�Ɯ�=B_L","$$��ia�Q������\'��Ǔfi����","","0","?"),
("�z�K@l�/����v","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/PostStatementCommentUnitTest.php","0","(���+W�mu֗J�pE","(���+W�mu֗J�pE","�jc�Y���^���I%���-���\nc�un�","","0","?"),
("�T�h���zP��r�","wp-admin/widgets.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[(�5<��a�Q��j�","5�FT����I_�B��1�*rm�j%#c�x��{","","0","?"),
("��ӭ�K�D9!Kŷ","wp-content/themes/flatsome/woocommerce/single-product/tabs/sections.php","0","2���,�ɠ�֪3��","2���,�ɠ�֪3��","<W_�OZv:�r�%��ӤQ�O��Ց�P*�e�w	","","0","?"),
("�XN�K���}�A�F�?","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/hu.js","0","�q��tt���<\0��","�q��tt���<\0��",",�@�\"wS�]l�:Ѥ��$����;�>���","","0","?"),
("���vq~}u��:x��","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-code.php","0","n�)V��k6��N�5H�","n�)V��k6��N�5H�","$*���j��@�U=ܦ_ä�}��&��^c:�","","0","?"),
(">A�X��a�s�(~","wp-content/plugins/contact-form-7/admin/js/scripts.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","V�����`�\\�>%�","�&f`�z��\0o^�j�j��:�O�f������","","0","?"),
("t]�ٟu��u���j�","wp-admin/images/menu-vs.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","q���L�,_�;1/�E�","G�iH|��)��E;��\"_�;ԣ4Իw�ly�","","0","?"),
("��~�w`�5;F㮮","wp-includes/js/jquery/ui/effect-size.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�=�n�����2��Z%","��	�0��[�ȔsĪj��\'o�9�6�����x�","","0","?"),
("�=��q�
("%����� ��2T=?","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/DisallowInlineIfUnitTest.js","0","c�6h)Amy�L̸�z","c�6h)Amy�L̸�z","q}ei.�YB�\\�G�ّy��ڍ�j~H-���","","0","?"),
("&�S�y
("<)8T*.�SuS�ĺ�","wp-includes/SimplePie/Cache/MySQL.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���B�C�H�xV�","t���A��B٠�B=)��RhO��\"��g�;","","0","?"),
("HC���!���\"(�","wp-includes/js/tinymce/plugins/compat3x/css/dialog.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�11h�+ezK���k�\"","*3�U�#\n]�]uho
("J�
("R�&9�,�}H��o��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/arrow-down.svg","0","�
("en�<� �Λ�U�a","wp-content/themes/flatsome/template-parts/header/header-bottom.php","0","Eav�k
("u��s��y6\'v,��=","wp-includes/js/tinymce/plugins/wordpress/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","@�ŧ/6�cu��~&�M","xT`�\n7�9E�NK6PԌ���\0�MwlUn","","0","?"),
("v��=MbՑ���E�m/","wp-content/themes/flatsome/inc/shortcodes/ux_products.php","0","i�b�֭��?���~","i�b�֭��?���~","J�#�{_x4�r�Z:i��8Ʋ����[��>","","0","?"),
("�\"�qUy���9�%Q�","wp-includes/class-wp-matchesmapregex.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%[��.�^㡇M�y","�甾��e\'��a]��Ⴏ�Z�v\\ޘnj_
("��d�(44į��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/map.svg","0","\"�j��N��C���~�a","\"�j��N��C���~�a","�{���fCv�ďK#\\6���A�OBK�77�","","0","?"),
("��7�L�����A�5","wp-content/themes/benh-vien/template-parts/posts/partials/entry-header.php","0","P�CM~b͚�g�}�=","P�CM~b͚�g�}�=","I�����,\nQ�b:���n��������+P","","0","?"),
("���o^*��խ�%z�m","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/LowercasePHPFunctionsSniff.php","0","���%�[�z4\0�+�].6","���%�[�z4\0�+�].6","`�ޱgwrS�Gվl�&�����qo��t���l","","0","?"),
("̪6���� gA%","wp-content/themes/flatsome/inc/builder/core/server/actions/iframe.php","0","�f�SM��>O�P�-","�f�SM��>O�P�-","�uZY����.\nZ9j�s�)�
("����7�&��Ȁ","wp-includes/js/tinymce/skins/lightgray/content.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���{~�_I˵�O�K@","%�\\�.�\"�UҚV�&�9�\\]��^d%���zg$","","0","?"),
("�85\\R��qo�-���=","wp-content/plugins/wordfence/vendor/maxmind/web-service-common/src/Exception/WebServiceException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h����$x /�����","�<b��ob����nA���E���7_��GK","","0","?"),
("��0r�H\"�YK]T�","wp-admin/css/site-icon-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�;�w�}�k�2�z��","��αa��	Xgkf�8j�nѪ��=�&`sا","","0","?"),
("�]�#����.2б�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Organizations/Invites.php","0","T흆����_�4e���","T흆����_�4e���","Y[�ć�I�s�y�&��\"ʁ�?�g�ĊF]�","","0","?"),
("(���љ����\0H<_","wp-admin/includes/nav-menu.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W\'ަ�L��H��IO3A","A*����(TkX��F0�Q��8
("1̊��b	be1,��","wp-content/plugins/wordfence/js/wfpopover.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";�&m�A�hlMPZX","��_.V袏���X��4N�i_��k=��C3","","0","?"),
("<.��4�v��c�\"`�t","wp-includes/class-wp-simplepie-sanitize-kses.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�x!�F#��`���ؗ","����y����r�т��\'-%\n0($�-��","","0","?"),
("R�T��z\\7�* ��
("^��ckm�SbNۇ��","wp-content/wp-rocket-config/benhvien.webdemo.com.php","0","t1���]C����(�\"�","t1���]C����(�\"�","n�`*KX���(�j�Np����ұ4R��[c�Y","","0","?"),
("i��PÙ��ld\0��","wp-includes/css/jquery-ui-dialog.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���ij]ۨ,��\"�","M��*B����#��xx���V\'w��z�5O�","","0","?"),
("p�ԩK��0�\\z=�Q","wp-content/themes/flatsome/woocommerce/back-comp/layouts/w32-category.php","0","��5�rJRh�K��6�","��5�rJRh�K��6�","�K�9$�dHC�C�	(�*
("�k:j	^�(H?�1","wp-content/themes/flatsome/inc/builder/shortcodes/templates/ux_banner.html","0","�8��`�9�n�ѥ�","�8��`�9�n�ѥ�","]X�4�ɆA+!�`+�$B�5��ɇG48En�","","0","?"),
("�ۣ�N�Bti�J}�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/pt.js","0","$����Z%�������","$����Z%�������","��S��f׶���@V�l��)/���A","","0","?"),
("ՙ���x��X�
("��?������B��X�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/NonExecutableCodeUnitTest.php","0","Μ��A�qr��","Μ��A�qr��","�m�)nc��#�-A�J(E8� AK��q9�)ԇa","","0","?"),
("��2�_y�l�o��6","wp-content/plugins/wp-rocket/inc/admin/ui/enqueue.php","0","�����*�D
("!���@|�4��n���","wp-includes/class-http.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~�ir�Y��Zl��","���L/6?�}�?V�y�fȘȪ��JL�<?�-�","","0","?"),
("\"����1U�ߦ����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/CodeAnalysis/UnconditionalIfStatementSniff.php","0","λ�4{g	`����Xf�","λ�4{g	`����Xf�","$y�2�S�\"�,�P.��o)�+��%�~�z��","","0","?"),
("\'ڞ\0;��?�+VҪ�","wp-admin/network/edit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���JɈ2F�?\"��0","V��RMUv]�)��dX��ƈܶ�!���ݴ�","","0","?"),
(";pR9��+�qpծ","wp-admin/includes/options.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","KJ���c詢�cFTb�","-��V*K�:ZE�H*����r鑵�=1���<�","","0","?"),
("E�&��VN���\"N","wp-admin/css/ie.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","0��Op5�!�8��","��Mz���e���x�n޻�X�),��#��","","0","?"),
("Qy=qZa
("x��m���\0�~���","wp-includes/customize/class-wp-customize-nav-menus-panel.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ViT�?���5�8�","�|5~�V����AW�o*Q/iX=���AS","","0","?"),
("zݖ��`נ��Ek��","wp-content/themes/flatsome/inc/admin/options/header/options-header-sticky.php","0","ٝ�0X�ֽ�G�چ","ٝ�0X�ֽ�G�چ","dI�+a�W0�Fn5/�,c�8�P��b턗�","","0","?"),
("���\n�#�T��?׻��","wp-content/plugins/wordfence/views/scanner/issue-publiclyAccessible.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=3n.�ZK7�Rb~<��","L��ؖ�kn���HN�\n��$�����ʨ�#���","","0","?"),
("����\"@O�wQ_ܨ2M","wp-content/plugins/contact-form-7/includes/contact-form.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W�nzv%�GF��a�=��","{:Vc_T�ڂ����I��6&���x�oS%","","0","?"),
("�Ú2��d�=","wp-includes/rest-api.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","X�����V�������","�nD�vXo>������G1M�\0�u�����","","0","?"),
("��\'�a��a��Y�","wp-content/themes/flatsome/inc/admin/customizer/img/product-title-push.svg","0","��ӑ(�U��z����","��ӑ(�U��z����","��冯-����\'��$&zo �.�i0 n�!","","0","?"),
("�P\0\'�0l���v�#J<","wp-includes/js/jquery/ui/effect-fold.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�6^�����<��DEl","e��C6HT����8��Ҝ�_����","","0","?"),
("Ȅ���xy�����","wp-includes/js/tinymce/skins/wordpress/images/embedded.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����p�N��y~�n\"","�{��u�x�\'����J�º@i\"H;�]6h","","0","?"),
("ϴ 3P`#8^��Z","wp-admin/css/colors/coffee/colors.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Re��\"�I#$��4U","��e$v�Q-M
("��fyz���t�\"����","wp-content/themes/benh-vien/template-parts/posts/partials/single-featured.php","0","�B�&��EfB�6��HY�","�B�&��EfB�6��HY�","��ݤ��i>ee c��*��`q�O��]XE�w��","","0","?"),
("�������ݮ�p��","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/nb.js","0",">U?�Ws=���^�",">U?�Ws=���^�","���\0~lՁ����W^)|��g(t�w1A","","0","?"),
("��ř�z[	;�e���","wp-content/themes/flatsome/inc/builder/core/server/src/Options/Custom/ImageOption.php","0","?8e\0��~�c@RJ��F","?8e\0��~�c@RJ��F","���=��ea���cԛZ���WU @��SX","","0","?"),
("\"��N߬jj)��\0��N","wp-admin/images/menu-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","jG�����{�>�^;$��","�2]y��#h���2�9�> ^s�
("lmR���L��Kյ","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WhiteSpace/CastStructureSpacingSniff.php","0","��zu��_��\'�g`t","��zu��_��\'�g`t","BM)H��}Z�>)V�j�e�\n%槂�=~�","","0","?"),
("q���_\"�1�F","wp-includes/rest-api/endpoints/class-wp-rest-taxonomies-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�r��S%��`�w","I�;�
("tZQ��Yz0����跫","wp-admin/images/wordpress-logo.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ư�y��o�8��8S�`�","bx�L�PͰ��=^�����a�m���1i��","","0","?"),
("���k�5S�H���Ы","wp-includes/SimplePie/Author.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","4�q�_�A�%�Nw�1","n#�O/�jb��wP&i��#��_`���YО��","","0","?"),
("��EqZSmٞ�+�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/CodeAnalysis/UnusedFunctionParameterSniff.php","0","z9rC��*�c�}�","z9rC��*�c�}�","�藯7j;\\�������:��8�rޜ�{�̀","","0","?"),
("���e�bW�A0�d","wp-admin/images/comment-grey-bubble.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Y�*\'����t���F","7	��y�񮌬��U{����ԟ��`��]m��","","0","?"),
("�R����b�Xo6���","wp-content/themes/flatsome/assets/img/payment-icons/icon-payshop.svg.php","0","]�Y��:8�3;���#","]�Y��:8�3;���#","�1��n���N���3���^�6���]�","","0","?"),
("���\\^�s,�z(","wp-content/plugins/wordfence/lib/dashboard/widget_tdf.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2�����\'�p[Ua�H","��?�}���m�wD�qn��2R���\\�","","0","?"),
("`D�eH����[�K�p","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/ColonSpacingSniff.php","0","Rׅ�(U����Ζ�","Rׅ�(U����Ζ�","sS���5׵��W��n>2��u!�P{�(��ƇY","","0","?"),
("m�qPoD0�*��L","wp-content/plugins/wordfence/lib/wfRESTAPI.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\\8���H� �mi�+","+��+�Ɵ���0���͂b�=���[㜁��","","0","?"),
(" �,eO���z��Ñ�","wp-includes/customize/class-wp-customize-site-icon-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ؑ��z�����Ȼq�","Ęw�Pr�UitW�	�2G�׷*Bբ삀2SqE�n","","0","?"),
("(����)�Tؘ�1sa�","wp-content/themes/flatsome/inc/builder/shortcodes/ux_slider.php","0","$�iJ����lp=�ܺl","$�iJ����lp=�ܺl","c^��\n7.[�@�� |��|}�9�i�M�&��","","0","?"),
("2hV?
("9I�n�.�q�","wp-content/plugins/wp-rocket/licence-data.php","0","���Wp��C�F���;%","���Wp��C�F���;%","���!UW<;�W�`�Ƭ+~��a}��u��B^","","0","?"),
("Q� ��(;ؠ|~R8�b","wp-admin/includes/user.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","z
("T�]\\g���4źuP�;","wp-admin/css/admin-menu-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����G;��J9��","���A�]\n��\0����\\���B�{4Q�","","0","?"),
("a�� H��hR�Mq","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/MultipleStatementAlignmentUnitTest.js.fixed","0","�CC@GL�Ҁ03�1","�CC@GL�Ҁ03�1","��C�r��4���~ݞu����~���������","","0","?");
INSERT INTO bz_wffilemods VALUES
("b���p�A�+�-+ʉ","wp-admin/js/widgets/text-widgets.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2����p�+s��ා�","$2���҂��\0U�?��l���O�:|��od9","","0","?"),
("d����H}��u","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/WhiteSpace/ScopeIndentUnitTest.php","0","v�yBX������","v�yBX������","v�61����T+�7ۆ�gz4P�>��T��:","","0","?"),
("p�\n���S:8����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Files/IncludingFileUnitTest.php","0","\\EY�1 ��e�Q+�,�S","\\EY�1 ��e�Q+�,�S","��i�X�;�����g�Ģ�i�&��e��qR��","","0","?"),
("���%bQ�bM<�x","wp-includes/js/imgareaselect/border-anim-h.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Z��,�ntZ^6�{Lp�4","qs�c���h���m-�%�x�B��x�\'��E:","","0","?"),
("���D�(�@����g�\\","wp-content/themes/flatsome/inc/builder/shortcodes/values/nav-types-radio.php","0","V֭fR�*���((","V֭fR�*���((","�x�s��tӡ?qu�8D�(K��q����s���","","0","?"),
("�h�?2	���1ul�k","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/ControlStructures/InlineControlStructureUnitTest.js","0","?�Q�y�p��M�","?�Q�y�p��M�","��	j�n�Y����N�췙�R�dZh�&�я�","","0","?"),
("�c�u����I�","wp-content/themes/flatsome/inc/extensions/flatsome-infinite-scroll/class-flatsome-infinite-scroll.php","0","�xJ�-m���s��y�G�","�xJ�-m���s��y�G�","��zY�t�C���_:��92촏�3�{���","","0","?"),
("ѧ�_�4a!�F��","wp-admin/css/ie.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����+��o{�","ē�.�p!ih08��n�d�7M�l���T�R��","","0","?"),
("���&�|_d>��5�K","wp-content/themes/flatsome/inc/builder/shortcodes/templates/text_box.html","0","��9z��/1����","��9z��/1����","!�d�JoW�O��7�>M\'\'=��5+�ůx�","","0","?"),
("��i)33ܥ��s�*","wp-admin/includes/class-wp-ms-users-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�cy.
("]5Zc��x�Z��I�A|","wp-content/themes/flatsome/inc/builder/shortcodes/values/grids.php","0","{[ygn>�b�T�oT","{[ygn>�b�T�oT","U$?24鐋�?�ZT���g��c��3i6�9�","","0","?"),
("�7�l�&���Ѓ0_�","wp-content/plugins/wp-rocket/vendor/matthiasmullie/minify/src/Exception.php","0","���6/��	%ظGz3�","���6/��	%ظGz3�","�@����m��b�W����EM`�]��8","","0","?"),
("��fH@,�������","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/FileCommentUnitTest.1.js","0","Wj���u]ٲ���4��","Wj���u]ٲ���4��","���F�_-��Y
("�B�=�?��j�u�","wp-content/themes/benh-vien/template-parts/posts/layout-right-sidebar.php","0","#��JR��-�1�W|���","#��JR��-�1�W|���","��b4�B#��X���?}p�Ʌ��ذGEf��p�","","0","?"),
("�r��0=12 7�LT","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-sport-shop.php","0","\'#B�R�]���Io�","\'#B�R�]���Io�","�I\0���Z��XЀ��P�9���8(B�?���eT��","","0","?"),
("�x��|s����K�a�","wp-content/plugins/wordfence/views/common/page-help.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�2�o��\0X#�83�~","��$�>���\nW��)O��\0����(\n�ݮ�\08","","0","?"),
("��J6}g�m�!P�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewClosureSniff.php","0","�;�a��Ӡ^�<�","�;�a��Ӡ^�<�","[��F��Mh$^DE���*�b\\?�\'���|","","0","?"),
("�wǏ�G�y^Ϝ��\0,","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Commenting/DocCommentSniff.php","0"," gTV�֞\n���Ͳ\\�"," gTV�֞\n���Ͳ\\�","�=�	Q��L̕
("�O\"�9 �-Α
("��1���
("�^�Bq��A4��","wp-content/themes/flatsome/inc/admin/panel/sections/tab-tutorials.php","0","��-R�&���~��x�","��-R�&���~��x�","%83m�`|��6И����h#|�n�H�|O־V","","0","?"),
("���#����	>�7","wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�I��m���LWyݓH","�
("ņL�G��P(�Ή�ȯ","wp-admin/js/widgets/media-widgets.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","B`�׻`��c[+6�|","
("��t�3�E�!��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/Billing.php","0","Q�h� ���^��ŏ#R","Q�h� ���^��ŏ#R","AV���y���2gq �`5�����u]��,&","","0","?"),
("���R�oQ�~��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/mobile/wp-touch.php","0","����,y��Mƀ�","����,y��Mƀ�","4@k(t�É����Hjq����|]Zv���","","0","?"),
("#�7��r�Y�\0��i","wp-content/plugins/wordfence/views/common/status-tooltip.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%e
("&#�p�J��h��","wp-content/plugins/wordfence/views/scanner/site-cleaning-bottom.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,I��s0w4Q���","E����\"v�+���󴄏�b��o��}��xa{:@E","","0","?"),
(")�2	������DuHZ","wp-content/themes/flatsome/assets/img/payment-icons/icon-mastercard-2.svg.php","0","��:�xb�t��<�X���","��:�xb�t��<�X���",";�q��$���������?WY�vD��","","0","?"),
(")�^&X=o����\"&","wp-content/themes/flatsome/inc/admin/envato_setup/child-theme/child-theme-css.php","0","HQc\nbQ=c`3�`e��","HQc\nbQ=c`3�`e��","ܩ�Q!�8�k#Hw��I�j�05S4��Q���","","0","?"),
(",A�}2+/�x����ў","wp-content/plugins/contact-form-7/images/ajax-loader.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��+7w�D:w��k;z��","H����7;鸻��gۺ�]VC;y��2�s�","","0","?"),
("4��ہ��;�0�.*","wp-content/plugins/wordfence/views/blocking/country-modal.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-^A��?����","�ax��R;��,\'�K�����?Q��ߦ�H��","","0","?"),
(":뭲c���RPe(","wp-includes/rest-api/class-wp-rest-server.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\n(����ȞQeU�2��","ШE�F�>o!����7�i�~:�z����])","","0","?"),
("e؟�v���笪�Ej","wp-content/plugins/wordfence/lib/dashboard/widget_localattacks.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���/�]L/Gb���;","$y
("k\0���{ ݛ6�","wp-includes/rest-api/endpoints/class-wp-rest-comments-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",":�U3){��Ğ8t鑡","6q�߾�t�T��c��S-:z�%�����#!k","","0","?"),
("k����b��gS�","wp-includes/js/tinymce/plugins/wplink/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","V�����g�h�*s�9�","$2n֠���Ȍ.����+��.h���N4}�,M","","0","?"),
("l0�N(R-���B;b","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Operators/ValidLogicalOperatorsSniff.php","0","�^Ǚb�m�[\n���`�","�^Ǚb�m�[\n���`�","��S��zm- 3�_h��Q#g�pC9v=m�","","0","?"),
("�0�q�x}&D/K��D","wp-content/themes/flatsome/inc/shortcodes/price_table.php","0","V[�����0n6���","V[�����0n6���","k�i�U��K��L�b9�d�����.\\�d^B","","0","?"),
("���L��.�\n�w;[","wp-content/plugins/wordfence/lib/dashboard/widget_logins.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g����#���@Xs�","�ĪN2�9��W�DW��O�0ѽmG��N�","","0","?"),
("����g�~�w�hh","wp-admin/css/themes-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","@�b���{�_�I͵","�·g�x�U�8R�����\'�&�%x�z�p&?�)","","0","?"),
("����qd�#�\"�#","wp-content/themes/flatsome/inc/admin/customizer/img/category-box-label.svg","0","y��1�$��\'8As","y��1�$��\'8As","dk�־�,N�)�2�n7����-|?^���p�P","","0","?"),
("��bm�%����ڭ֫","wp-includes/Requests/Exception/HTTP/502.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|�:l��z��!{�G�i","�/���~UJO�.ŀ#��E���5�*�\'C�q","","0","?"),
("	QW���~-�\0d�","wp-includes/class-phpass.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","!��T������B","Z�����G�d�/�	���\'���*�Uy���(Y","","0","?"),
("	?������q�uM","wp-includes/js/mediaelement/mediaelementplayer.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2>�gH�799g�","^�I�Rb��h�i�6�ɴ,��pu��~ǩ�zS","","0","?"),
("	�Qf�X�+�uֲ�<","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-simple.svg","0","���լq����p=�","���լq����p=�","�ғV3,���SB��8%�_�]Q�h
("	 c��D I�H�\\�","wp-content/themes/flatsome/inc/builder/shortcodes/values/color-helpers.php","0","�\n�5�)�ڡS�0���","�\n�5�)�ڡS�0���","����k ��8��>��F?C��Ya�\\U��k�a6v�","","0","?"),
("	,��/Օ�!�gy�d","wp-includes/js/media-editor.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","y�Q��Y;z�{sx�Cdm","t)����8ܿ*�i������MP�ท��DM","","0","?"),
("	7�������f	`","wp-content/plugins/wordfence/images/sort_both.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�d�m	�8�f�|�Y��","~�%��ۉ�%���>����Bl�o�u�I)ȉ7g","","0","?"),
("	M���nM��C�B","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Functions/FunctionDeclarationUnitTest.php","0","���/ڈ^����\'a���","���/ڈ^����\'a���","(@t~QF���h;ƅ�X�m�\'Yꤢ�*y","","0","?"),
("	P=N>��b\"j:~[Q{�","wp-includes/js/tinymce/plugins/wpdialogs/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���[ߢ�9��Z�","$�\'���v�� �D7�7H���l_�c�d��N","","0","?"),
("	X�t\\4vNI5��j��","wp-admin/async-upload.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��T��=ƫ�����Jz","����4��Cs3R�!3)E��jx9�\\�u���","","0","?"),
("	~�a�������ݰ|","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/az.js","0","���<޻j�Ȭ\\f��","���<޻j�Ȭ\\f��","$=��\\dA�j�oo�\n0���\\�I�Rܻv^�4�","","0","?"),
("	�W�5q˺U����","wp-content/themes/flatsome/inc/admin/customizer/img/blog-inline.svg","0","Ɛ�`WY�r3�ݻ��/","Ɛ�`WY�r3�ݻ��/","�|M�\n��Ar\"�;�m�<���>�xF�ؿ~��","","0","?"),
("	�.��5ua�WkJ��","wp-includes/Requests/Exception/HTTP/413.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�<�]ɐY���XL��","
("	��7���ڹAq��u","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Hgblame.php","0","C*ȯвv�W�2���","C*ȯвv�W�2���","D����~��nΏo���?�~:�����n��","","0","?"),
("	�.[��F`E`�a���","wp-content/themes/flatsome/inc/builder/shortcodes/values/pixels.php","0","���|;��
("	�ɻQ��L��O���[�","wp-content/themes/flatsome/inc/woocommerce/structure-wc-product-box.php","0","\'�akm�/GxGW�h�","\'�akm�/GxGW�h�","���t�m�x�ؖ˰��32(��|O}���","","0","?"),
("	�9��fވU�f����","wp-includes/js/tinymce/tinymce.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��u�n{�ͣ��*���","H�f@��qg�os�e���������F ���޵","","0","?"),
("	�ma�#7�d���I","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/jetpack.php","0","�ӯN�i�+b��{���\\","�ӯN�i�+b��{���\\","�k��X�L#����x�+;\"�K9�E�1\"o�","","0","?"),
("	����09��-b��ͩW","wp-admin/network/users.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�`�����#`�dȯa","F��U��ew8Cs�r������R��; �ʖ","","0","?"),
("\n����f7r��}��","wp-content/themes/flatsome/inc/admin/options/header/options-header-mobile.php","0","�s\\ߡ�.�쪁��`�","�s\\ߡ�.�쪁��`�","=��� kn�>x{ޚ�X����dL{b���Q","","0","?"),
("\nn}��D�5�6�R�","wp-content/themes/flatsome/inc/admin/envato_setup/importer/parsers.php","0","��9֭����A��M8�r","��9֭����A��M8�r","�Mkw౏^G/Cʓ�V�/S<�ڀ��䊲�","","0","?"),
("\n@�����5]Q�D��","wp-content/themes/flatsome/inc/builder/shortcodes/page_meta.php","0","C0�<�0�.2*�;^X","C0�<�0�.2*�;^X","11�1�sF��$���椗Y��Ӂg>��}���","","0","?"),
("\nF���!mڛ�7��A�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/ControlStructureSpacingUnitTest.js.fixed","0","�Q�FV���1^(X","�Q�FV���1^(X","9�/���o��	{���e�y�l��kQ�d�{,�","","0","?"),
("\nP�)K��hՐ]�x�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-1-col.svg","0","W�U���6 �2�:��s","W�U���6 �2�:��s","�U��V	x3/�(z\\�V�����H�#���","","0","?"),
("\nT��/\\9$Y�U\n��͌","wp-includes/customize/class-wp-widget-form-customize-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��� >�ld���pg","���˘H���Z�Ah�_��l�+����?}�","","0","?"),
("\nf���Y��4&�L�","wp-admin/images/se.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ȔB�`��.}\'7:","Y������\"K��{�U���r�:2��JL���","","0","?"),
("\nj��}���GfBV�ƫ","wp-content/themes/flatsome/inc/builder/shortcodes/ux_image_box.php","0","\'��*���M�]�P�w�","\'��*���M�]�P�w�","�P�M��Q��Pr�7j�2�A��(ś����","","0","?"),
("\ns&�u��&�k$��","wp-content/themes/flatsome/inc/admin/customizer/img/blog-single.svg","0","_�e[-��p℮ڬh�","_�e[-��p℮ڬh�","tD���{]u� ӯ�����\0l�����}�","","0","?"),
("\nv+��9p\'�8�8�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/LoadBalancers/Monitors.php","0","��N8���`���.�","��N8���`���.�","u�|����m�R�޷�ɯ�����!��r�t�`��","","0","?"),
("\n}�2�������K�Y","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/InlineCommentUnitTest.php","0","lɼHR��5�������","lɼHR��5�������","�����t�&�x\'1s湜�_�lS�Ok���+�","","0","?"),
("\n��;R�7�}�[�","wp-content/themes/flatsome/inc/admin/advanced/index.php","0","J6��m�Az��e<�`P","J6��m�Az��e<�`P","�fl̽Ga9��/��;^��J�e���\\���OCb�","","0","?"),
("\n���f�Ӆ;{�t��","wp-includes/class-wp-role.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+�tq$�2@%ND�","\"���\nVI�w�>4l��</�4�̀����\0��","","0","?"),
("\n���b-�V�:��|m��","wp-admin/edit-link-form.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��`���uGDɡy�|","9i��< ��,�������K��h��vMxϱ","","0","?"),
("\n���`�F�4z��#�J","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/PHP/EvalObjectFactorySniff.php","0","�w$����Ȫ����","�w$����Ȫ����","���	�Q����_�e�O+�\n��P>�^R�","","0","?"),
("\n��NNM��ۑ4;�p�4","wp-includes/js/customize-models.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\"r`fl����(��[","N���з˦�[�7T	�T�_����2��","","0","?"),
("\n��5��=�IK�&{�P","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_454545_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�^Y�K#W9\'��D˲�","�\'Mܣ���_-�\n�0N1$�AЗ���l=�","","0","?"),
("\n��W�$�,������","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/IndentationUnitTest.php","0","ax��.���XR6
("\n�@�g��+T;V��","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/xmlrpc.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��f���
("\n�
("\n�Gƙn��@1+U]�","wp-admin/css/revisions.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d�f����7�7��y�","�/�s�d9���i�O��;��i�6LV��>�","","0","?"),
("ۯ�i�c�}0SqG�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/simple-buttons-right.svg","0","_%��F(��)
("�8�jD�.�m��D�","wp-content/plugins/wp-rocket/vendor/matthiasmullie/path-converter/src/Converter.php","0","4]�y�M>R��z�","4]�y�M>R��z�","����ª5c���A�V�ψB�-=�6�s","","0","?"),
("�*-(Y1�5\\Aq","wp-content/themes/flatsome/assets/img/payment-icons/icon-klarna.svg.php","0","\'��4�ǡ�WF����","\'��4�ǡ�WF����","��G�܊�M�Vd�*���R�j�Y=��4�j�","","0","?"),
("\"w%�_��K\\��u�","wp-admin/images/wpspin_light.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Nm�h����;@��","m5���^í%�n�4<E\"k��Xz�ӧ�=�","","0","?"),
("&c�YD�#�P{+��","wp-includes/js/jquery/ui/effect-blind.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����<O�mA�_;OL","���9S���\n�^�n�T��I�Y�ZdB#U�}~","","0","?"),
("4�T\n�b	��<��9","wp-content/themes/flatsome/inc/admin/kirki/assets/images/kirki-logo.svg","0","�I��<���g�m��N","�I��<���g�m��N","{4�	�\"-	v]�F���*Ş( <�ߔh�É>","","0","?"),
("B&�/�� �J\"a��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-right-large-dark.svg","0","�,��{�C�Y��\0","�,��{�C�Y��\0","k�
("Eq��8�T0Js`��","wp-content/themes/flatsome/inc/admin/customizer/img/layout-custom.svg","0","S���¯8�M)g�&d","S���¯8�M)g�&d","Bo�[������F�[�\\���_)+h��4","","0","?"),
("g\\S�P�9��\'�)","wp-content/themes/flatsome/inc/builder/core/server/helpers/misc.php","0","�ש�|\"f�t\n�#2��","�ש�|\"f�t\n�#2��","��z<� q��`	�Gq_E��Y�1:��:�JZ","","0","?"),
("�����Y����q�","wp-includes/customize/class-wp-customize-partial.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���l�t3Xf�t�","{�>��x�����H���\n�|AE�|ScOs/","","0","?"),
("���d)ubQ^7<�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/DisallowMultipleAssignmentsUnitTest.php","0","$Pb8γB�s������","$Pb8γB�s������","v�:��B%��C��vk�h�u�JWLjBmK","","0","?"),
("���,H(b�_F�O","wp-admin/admin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�e��g�ޢ�U�i�{","�ɝ�x��Y�����_R�YE��aQ1T^�Xe��y","","0","?"),
("��HVե�d��p�Vp","wp-includes/images/media/spreadsheet.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���4���\0T��̇?�","����v��)�\n�6Zl��2���В1�!+	�","","0","?"),
("�R���#�A�S�-��","wp-content/themes/flatsome/inc/extensions/flatsome-infinite-scroll/flatsome-infinite-scroll.js","0","�-�c��s�e&�?��","�-�c��s�e&�?��","r��?{B#�ū>L7��!�v�<��m���K��","","0","?"),
("���)q�h���3�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Formatting/MultiLineAssignmentSniff.php","0","��<|G��ύw�QE�%","��<|G��ύw�QE�%","�*�B�+AK����?<U����~�E��xh��","","0","?"),
("�r`���B����x�","wp-content/themes/flatsome/inc/structure/structure-admin.php","0","J��i�Z���L>~��5","J��i�Z���L>~��5","Ǒ���fQԅ.��D9ku����k|�4�5
("�d鏗�k*��v�m","wp-content/themes/flatsome/inc/admin/envato_setup/js/jquery.blockUI.js","0","���[��04F���b","���[��04F���b","���f?�O�=����*��c#/���f)ݢ�c���","","0","?"),
("ŃѢCD��/-g(�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SemicolonSpacingUnitTest.js","0","��8�m$�q�5}Bph�","��8�m$�q�5}Bph�","9��;����7���kI�ť,M�V���t","","0","?"),
("ٳ��([B�vv#��	\"","wp-content/themes/flatsome/single.php","0","�3���#�����o�","�3���#�����o�","6�nw��~]˚[���|��O�\\�~@� iU��","","0","?"),
("�{��Tna�����Y�","wp-content/plugins/wp-rocket/inc/functions/admin.php","0","\'Ufq��K��^6F<��","\'Ufq��K��^6F<��","L���t�ú����-�ș��/[4q,���*","","0","?");
INSERT INTO bz_wffilemods VALUES
("�y�]�Q������","wp-content/plugins/wp-rocket/inc/3rd-party/themes/avada.php","0","�y�pf�}�DM	塝VI","�y�pf�}�DM	塝VI","�x��~F�10���I�ǹ��ȃ�:�u���;�","","0","?"),
("�éE��\\��\\{�i`","wp-content/themes/flatsome/assets/img/payment-icons/icon-braintree.svg.php","0","��/d�]MtĮ�8<","��/d�]MtĮ�8<","IM��N2	�4O��7$�������VN��44�\"","","0","?"),
("�\n��UN~���\0m��","wp-includes/js/codemirror/csslint.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�;.��K����_	��Q","]�ih4F��ò�
("�c\"ml� �Ǟ>o","wp-admin/images/wordpress-logo.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�N�%�d���g���p","�\"�u�j-QE\0��[�gL�Z5�MD�:","","0","?"),
("$%#��_�U�_d�","wp-content/plugins/wordfence/views/options/option-toggled-select.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\"�p+�N�o�+T","X��q�?\'��Є,����U���эf[�@a�Wh�","","0","?"),
("*�O�������i","wp-includes/customize/class-wp-customize-media-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","`)����h#�	fSa��","�]���<5��l�c��-(��F,X~ꌀ�8w��","","0","?"),
("D�� �2��K|&�","wp-admin/css/nav-menus-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:�{�c����[�T3",":�;���2��$23C��������������","","0","?"),
("I�>擢����<�J
("`�P�U>ݮCw(�","wp-content/plugins/wp-rocket/inc/admin/ui/modules/database.php","0",",!q:6�	tK*%{��",",!q:6�	tK*%{��","�d~�g�Z&���	��\\�-��Ͱ6��ޚ��","","0","?"),
("x�`�@9�����n�a","wp-content/themes/flatsome/inc/admin/advanced/functions/functions.options.php","0","nO�h�[�&�T�==C�q","nO�h�[�&�T�==C�q","H�Y�8�r�x2��$���y�>T��J
("{�M��i�i2n��6�","wp-includes/js/jquery/ui/effect-highlight.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����*��øN���!","��y��W��7�L���f�/r��&ا�l�J�","","0","?"),
("�1�#4쉔����6�","wp-content/themes/flatsome/inc/admin/customizer/img/search-icon-outline-round.svg","0","��æ�M\'r&S�!6P","��æ�M\'r&S�!6P","�(�,:�`����:<��rMM:xU)`Ï2Du�","","0","?"),
("������>�Bb��KM","wp-content/themes/flatsome/inc/admin/customizer/img/nav-icon-left.svg","0","d�M�L���\n[D���","d�M�L���\n[D���","El�&���j�rv��	·\"��Lv��+m7�","","0","?"),
("�\n���0�{!����#","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Zend/Tests/NamingConventions/ValidVariableNameUnitTest.php","0","0rx����$��3\\�","0rx����$��3\\�","��]f
("�7�G���T�(�4?�","wp-content/themes/flatsome/inc/builder/shortcodes/woocommerce_cart.php","0","oM�a�e�g(!���`�","oM�a�e�g(!���`�","�H���\'~��`!JL�c?J��=�_{00�.��W","","0","?"),
("ȴ
("Ե�˪	��ŤJ7��","wp-content/themes/flatsome/inc/admin/envato_setup/envato_setup.php","0","t��]�nӪ�eB��G","t��]�nӪ�eB��G","�s2���x�IS�kF�K$��i��Y��V-�","","0","?"),
("ڷ&���B��mg���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/EndFileNewlineUnitTest.2.js","0","�@�_��#����{�","�@�_��#����{�","���8;б+=�9cڗ4gh\"�3ٺ�8&k�Q��","","0","?"),
("���.Q}3��T�","wp-includes/Requests/Hooker.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�@%�a[ў/4��","t
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("
("�a��U�2����","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-call-to-action.svg","0","Jx#���}\'","Jx#���}\'","~{D�iO�2�~�\'V16��;}=�\"��F�H","","0","?"),
("_�Ƈ�ˆ�??�L","wp-content/themes/flatsome/inc/integrations/wc-composite-products/composite-products.php","0","F�����P�Q{L0","F�����P�Q{L0","�D�#N@/5����)�����Ei
("&��OԶ��}�O����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/InlineIfDeclarationUnitTest.php","0","��翛)�R&�g�1�","��翛)�R&�g�1�","�G?�*�^�6A�\n���\n�W/;��I+�H����4","","0","?"),
("+�-e%Y��W�>G>�","wp-content/themes/flatsome/inc/admin/options/shop/options-shop-cart-checkout.php","0","��*�C��\\�!~���","��*�C��\\�!~���","6�`�[�:F^b�9����$&u���u�)c=","","0","?"),
("W7��{(��;:P���?","wp-admin/includes/class-bulk-upgrader-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~�;b��=,��JT6X","��ҕ:���ŵ�C)L�d�)Ѭ�JՕ���O","","0","?"),
("X��H奥(�:�Z��","wp-admin/admin-ajax.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","cø��¡`ՔGs�k�","���
("go�s�V�;����\n$","wp-includes/js/tinymce/plugins/compat3x/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+�n���1����oVb","C���T�(��N+�,��TN�C����`ީ���","","0","?"),
("h�8�nOf->t��v�\0","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-radio.php","0","�$s`����\nS�M��","�$s`����\nS�M��","%�f�(�P\n��*������*\"�`���(��X","","0","?"),
("l^Kah��l��*CUj\"","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/LineLengthUnitTest.php","0","��Y��M���e�i","��Y��M���e�i","HA��L�G�Ao2�,����=��a1
("v�9�CQC�*+�[�]�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/FileCommentSniff.php","0","�$����8bJL��&","�$����8bJL��&","�\"��R����r�5}h]�����s,[","","0","?"),
("�h�r����;%e�-x","wp-content/plugins/wordfence/css/images/ui-icons_444444_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�G�J��u;Q�Z6��","����\\MU��KhQ�w�C��i�V���J\'","","0","?"),
("�1U���\\�e?����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Classes/DuplicatePropertySniff.php","0","r��tkKl�hS>�g","r��tkKl�hS>�g","g^Ȩ�6�K��a��E�����OP֤�^]}","","0","?"),
("� ��C�Y���","wp-includes/pomo/entry.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","흁�����`�1L�a","�����{�vU������g`5]�^S0�o","","0","?"),
("�>�M�8� ٵ��|","wp-includes/images/crystal/archive.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�S������I0An�","L��%X����O�+��Aa�!�S�\\܉�&���","","0","?"),
("��\"
("!��\'��qK>bc(��","wp-content/plugins/wordfence/js/Chart.bundle.min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���5]��d����d�f�","��>��`������NN�`�N\"K�Ӟc�kG<;","","0","?"),
("6H3�����	�","wp-content/themes/flatsome/inc/admin/customizer/img/icon-top.svg","0","8Y��{����co��","8Y��{����co��","-��ìe�4��8�Z��Tk����o�j��","","0","?"),
("\\�����AV*籿","wp-includes/js/jquery/ui/slider.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����ZkCd�L��/�K","\'fe�)&B�oŷ���i����#]&�J����","","0","?"),
("�c��nx�Ժ|�","wp-includes/class-walker-category.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i\n����˟:�y�W\"","/�����o�mZ�D��e�%@����T��N","","0","?"),
("�ݡ=��Nx��K�`*","wp-content/plugins/wordfence/lib/wordfenceClass.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ze�*a���K�{��","2�:s\0�:T�ի�
("�~��7�[O�+�`�","wp-content/themes/flatsome/assets/img/payment-icons/icon-dancard.svg.php","0","���ףx�E�~u���0","���ףx�E�~u���0","y����� �A�W5�<��N��Ä͔MX�-�","","0","?"),
("��d��=��@hs�:k}","wp-content/plugins/wordfence/vendor/maxmind/web-service-common/src/Exception/AuthenticationException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","K#lJP��e0u�g�۔�","U�WM����slL����9#Tb�Wj?\\�u���","","0","?"),
("�rJ�<p>����Z�","wp-content/plugins/wordfence/views/scanner/issue-wfThemeUpgrade.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9�¡���^-,措Eg","�X0��
("�&/�db�d�q�2/","wp-admin/includes/class-wp-community-events.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�a�B�l�Yܒ ��iN","����t����[:�wj�R��{��gި@Ʊ�\0C�","","0","?"),
("\0��]�a�v���CY","wp-includes/class-wp-walker.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�%H[��|N����\0�","[�q�ڵ r_+�&5����X���碃��8��","","0","?"),
("���NVԱ��z�Z","wp-includes/js/jquery/ui/effect-shake.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","&�����3H�qˀ1","��H#X�{�$��T�8�exB��Q:���9��\n�","","0","?"),
("\"�!m�w.�}cA","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SemicolonSpacingUnitTest.php","0","�t1�Ӂ��|E9�r�","�t1�Ӂ��|E9�r�","��#E�Q�qAV_��?�;͇�P���N~�]i","","0","?"),
("#9
("$�H���� ���o�_","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/UnconditionalIfStatementUnitTest.php","0","=
(")��_���J�����","wp-includes/js/media-models.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R����o�O���-J�","�*�0�b�&H���x\nEڟ����+�Xba
("1GX�A�\nb�|�h�s�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/OperatorSpacingSniff.php","0","�bzTP����G��","�bzTP����G��","�\'*��+�5Wliw#�O��}[&`�H�@!��<5","","0","?"),
("2�9�_�%|8g]C�P�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/ux_video.svg","0","d����]c�@7Q��MS","d����]c�@7Q��MS","P����_��f��L�KރPx٩C����V@H","","0","?"),
("?�qD���2�>��A�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/simle-left-light.svg","0","8��A^k��?n{piw�L","8��A^k��?n{piw�L","����զ��n��7v��ߟC�6W�Y�H�}","","0","?"),
("?�g3,�g�L3O�$","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Functions/OpeningFunctionBraceBsdAllmanSniff.php","0","��]k��-S[�Fc�/�","��]k��-S[�Fc�/�","L���<���V����s�p��9R����C�\\�","","0","?"),
("`�&��锥~K3/d","wp-admin/css/login.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","3�kIg�]/k�)X�","���u��r��T��f�3
("yH�6uî2#6���","wp-content/themes/flatsome/inc/builder/shortcodes/text_box.php","0","uQ�ֺ��q�ql��","uQ�ֺ��q�ql��","c#�����Ҏ.��]�}��\nD�)D�l#p","","0","?"),
("����8���ѽb�v
("���ґ-���
("�~��L��*�,�<:�","wp-admin/includes/theme-install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W~{��Ua�{.�Ww","�)RS���t�h���ʛ���K	L�qI�Vh�/ؕ","","0","?"),
("��(A�~Ȏ�����ǐ","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/CodeAnalysis/EmptyStatementSniff.php","0","�[H3��eGU���[j","�[H3��eGU���[j","�?wk�\nmy��g�Ǝ.+eeS`��}�","","0","?"),
("�Sx��4�@o�w�N","wp-admin/js/widgets.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�uoVi\\5��M�w:r","��
("�t���I��zN��2�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/lt.js","0","|QX�Pv��H��\0(","|QX�Pv��H��\0(","W��&g}0f�J�ى�HG=��d�W�V���CV��K","","0","?"),
("���:m��[ݢ�:#","wp-includes/l10n.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","0�V�I���E��lGd{","s��nu����>�c?��t6��(۱����","","0","?"),
("�I��\\j���x���g","wp-admin/images/date-button-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",")R�,$k���)6C��c","�������Tl�pE��xQ��\'H9ow�{(|\n��","","0","?"),
("�Zm�+������\0V","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-color.php","0","�f�NU�� ϰ����","�f�NU�� ϰ����","����i���=_�x�I�����|��h��W","","0","?"),
("�]P�JQƀ6o֢��;","wp-includes/Requests/Exception/HTTP/428.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���i�B��}�^�t*","C�O�W%���tߏ�Y�|��&�0�V�\\�","","0","?"),
("���j7r[�,���Z��","wp-admin/upgrade.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���\0:��I�%��0\0�","������`�⦬�����<Fh��\'���","","0","?"),
("�G�@fS��c��_&��","wp-content/themes/flatsome/inc/admin/options/header/img/header-super-simple-dark.svg","0","G���k��|:yɖ","G���k��|:yɖ","�8~�3Q��t�g_��L#Ȥ��_HE!7x{p�","","0","?"),
("��lm����@��","wp-includes/customize/class-wp-customize-date-time-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\>�g�l�*4+�	FK��","��\'!̌�\0�U�{1�1��d7\'Mb8�P��","","0","?"),
("4����*;�z�	��","wp-content/themes/flatsome/inc/admin/customizer/img/blog-default.svg","0","�BVv��C#�B�,	7�","�BVv��C#�B�,	7�","ߧe�ؒ�h!��O�U���0\n��F!����","","0","?"),
("D�8hFޛBViR�","wp-admin/css/colors/blue/colors-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v\n�ѽ��,!:f�Q��","�]�:r3�N�1��^�ϘO�j�ؤ��q��K���","","0","?"),
("L�VK��;���f","wp-content/themes/flatsome/template-parts/posts/partials/entry-footer-single.php","0","Əh�w§B��Ϫ�6","Əh�w§B��Ϫ�6","�vf�5dP�*�@6�oNh;E��t9fE>��`","","0","?"),
("NSEɽ7�S�A-��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/aelia-prices-by-country.php","0",".*�7�_\0+����S",".*�7�_\0+����S",")Ӭ3�PYF*�qh5V���Ҳ�QעCp���","","0","?"),
("X,02� A�l��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/ControlStructures/ControlStructureSpacingUnitTest.php","0","�\'6Q�&� N�^V�h","�\'6Q�&� N�^V�h","�h�?˙������1m��Z\\I#,�`�=��","","0","?"),
("Zh�`�:\0�ݩV�6�","wp-content/themes/flatsome/template-parts/posts/partials/single-featured.php","0","�B�&��EfB�6��HY�","�B�&��EfB�6��HY�","��ݤ��i>ee c��*��`q�O��]XE�w��","","0","?"),
("]�)a��@����k�n","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/product_flipbook.svg","0","�
("j׻���q.�*;��2","wp-admin/css/colors/sunrise/colors-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d�2����(�y�Z","������{N���(�����`�J���ㅊ\'L;","","0","?"),
("��RJ��	d���o","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Sniffs/AbstractScopeSniff.php","0","tH��	�bꙑ�=cO","tH��	�bꙑ�=cO","�
("�Ը��%D�y�Z","wp-content/plugins/wordfence/lib/GeoLite2-Country.mmdb","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","X� r��~���L4a�","���Gc���sU*��:3�qG��1L@t)D4�5�","","0","?"),
("�Z���d*��Y��ژ�","wp-content/plugins/wordfence/views/options/block-all-options-controls.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","95I�B��\"a��","V��G3���7R��(���@�\n,\n�	���w�","","0","?");
INSERT INTO bz_wffilemods VALUES
("�ӎA}ҎWZ5=*t�","wp-content/plugins/wordfence/vendor/maxmind/web-service-common/src/WebService/Http/RequestFactory.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�b;v\'�g��~����k","m�!�M��J\"v�>,���0�\0՜ɫ� &jِ�","","0","?"),
("�r�W�3���᥾V","wp-admin/css/color-picker-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�U��������_T","#N����B$�6àK��v����NP�R�`�","","0","?"),
("�i�~�4Q��7\0","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/ForEachLoopDeclarationUnitTest.php","0","t��P�*0��t���R�","t��P�*0��t���R�","΂�-ZXѯ�L�DrN�,M
("��=���Á�K�1�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/PostStatementCommentSniff.php","0","w��\0ϐJ����O&�","w��\0ϐJ����O&�","\nK!��T���/�N�k��}\"&�f����/)","","0","?"),
("YIE��Tt2L��]","wp-content/plugins/contact-form-7/modules/file.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�K[~�������G","��m�~�-�����J2����ĕ�����I�","","0","?"),
("Nr��F6�J\'s|{w�","wp-content/themes/flatsome/assets/img/payment-icons/icon-googlewallet.svg.php","0","z����3�^#Т����","z����3�^#Т����","8�b��
(":�X��2�M���~��","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���2�4vLhN�!��2|","���3iA(���p���GD��ڔ������","","0","?"),
("L����8���\\�ݼ+","wp-admin/images/imgedit-icons-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",��\'��6U�������t","�?�؎)�.l�����%�<�(�_� 6�`^c7","","0","?"),
("a����5E�̿N[1","wp-content/themes/flatsome/inc/builder/shortcodes/share.php","0","�h�\0���Ua*!S��","�h�\0���Ua*!S��","X%�U6�/�Wn��� �z�_٤�~q���","","0","?"),
("bp�ٔ�:�L;�lX","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/ControlStructures/ControlSignatureSniff.php","0","�~\0��Bg[!�H","�~\0��Bg[!�H",";���\'���ϕ�O)0����4���Εq���","","0","?"),
("e�Y�\\-���C�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/DiscouragedFunctionsUnitTest.php","0","�f�����e	|�c��","�f�����e	|�c��","�%ʌǓG���b,����<ns�,�%����\n��","","0","?"),
("fo>ɝud��^E}%�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/CustomPages.php","0","U��S>K�\\n��}\'R","U��S>K�\\n��}\'R","X�����$Ґẜ|�^��tIUل��w2��~","","0","?"),
("m�ñ�~���R�?","wp-content/plugins/wordfence/views/tools/options-group-2fa.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\0e��j�j��C",":k����\0�\0�0ՊfS�Y�=��W�$B��g","","0","?"),
("p۞�2N<:Z�7�r�","wp-includes/js/tw-sack.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���������9>���","{�n]�\0ֈ��n�
("u�)8FG9�C�(���","wp-includes/js/wp-ajax-response.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," ��B!�d/�JnW�C]�","��̜��8`˙Rk�e�ԡ��x3�Xgh�","","0","?"),
("y�7�gC���v","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/da.js","0","�m<׽y?��nA�","�m<׽y?��nA�","��H��N�ma�� �WƊ�x=\'�a�Fա&RΡ","","0","?"),
("�JN��	\\���tR","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/ControlStructures/SwitchDeclarationUnitTest.php","0","����VvmN��ON��Ƕ","����VvmN��ON��Ƕ","�)B���}��dF��?07i��m�E�����","","0","?"),
("��I�\\Q�\0�Q��","wp-content/themes/flatsome/assets/img/payment-icons/icon-stripe.svg.php","0","0G-�~Щ��T�A\"�","0G-�~Щ��T�A\"�","B�3�mΜ�Q�\\Bk��6ͬ�O0�ƭ���Q","","0","?"),
("���c�����_��","wp-content/themes/flatsome/template-parts/portfolio/portfolio-title-breadcrumbs.php","0","���b.�|�g!�`V�oh","���b.�|�g!�`V�oh","J��M��%��Z<I�4V7��ɣR��lQd��#c","","0","?"),
("�����9�~\0{@���","wp-content/plugins/wordfence/views/scanner/site-cleaning-beta-sigs.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",�)R�q��y�|��4�.","�%U�<G�H���[��.!e˂t,g���sɄ","","0","?"),
("���Clo�������","wp-admin/nav-menus.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��2>���nA��J��wc","�c�[�)��-	u���C%��	��7Ck4���?S�q","","0","?"),
("����U���qW�","wp-content/themes/flatsome/inc/admin/options/header/options-header-presets.php","0","�f�\'hsUMI��[�R","�f�\'hsUMI��[�R","�kAv]��C�f��־y�D\0��gE�#�����","","0","?"),
("�G�L���*�g�q�","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-dashicons.php","0","ZL�j����
("�SB\0=o�wz��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/OneObjectStructurePerFileUnitTest.php","0","[\"�/|�]��l��","[\"�/|�]��l��","�զK3:�\'���/�����\n!�j�;tu\nA;","","0","?"),
("��-��i>bs��1�","wp-includes/js/jquery/ui/resizable.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\02|I,��|���","�3\0{i�2%�E����-�4����樢�jր�M","","0","?"),
("�d
(" ����.�g���w�","wp-content/plugins/contact-form-7/includes/validation.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�a�n��i��MA","�i�qZ������M�a��+���	�\"�","","0","?"),
("?�����f��\0z�/�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Functions/GlobalFunctionSniff.php","0","�OP&�q�������","�OP&�q�������","�UCM�9�
("�i���:�?o�Zk","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewScalarTypeDeclarationsSniff.php","0","���ܽ@�+�\n�\\��O<","���ܽ@�+�\n�\\��O<","�?~���L��� Shԃa�\\�v�E\n,Ћ+��d","","0","?"),
("��4r�%����j���","wp-includes/SimplePie/File.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���kU�6�\n�+�)%�","��a.�%e�5�+�p��3�d^�b��LL��T","","0","?"),
("��KS+�e׎A�@��","wp-admin/css/colors/light/colors.scss","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","H��G�#��<�^o","?=��ҏE�M�a�X���ĺJ\"s��k;�3","","0","?"),
("�����Fe�	57[�","wp-content/plugins/wordfence/lib/email_newIssues.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��sZ����W�i�x�@@","�Q�H�:����)YxU�(�<5�AڃO���","","0","?"),
("����UNEA�g�t","wp-includes/js/customize-selective-refresh.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R}	W��E�r����","κ��������|�������e-l�$�:TSU","","0","?"),
("�A�o�!�V��ų`v","wp-content/wflogs/ips.php","0","lC�db��.�˴�v","lC�db��.�˴�v","Z][W��P�}�,������7*�q��\n��Ƒ��","","0","?"),
("�0��5��mk��","wp-includes/js/wp-a11y.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","qI��\0SZ��?ǯ\n$ ","�u��_��H\"�Ȯ���V~	0���0�j�","","0","?"),
("ރE��|Ԅ�Ҡ���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/LowercasedFilenameUnitTest.php","0","���G}�$�ݻ�����","���G}�$�ݻ�����","�uR�?��H��\"#Wsa��Ҥ0���]oE�","","0","?"),
("��U>ǂ��%���","wp-content/themes/flatsome/template-parts/shortcodes/button.php","0","�0\'
("rFJ�n����9���","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-radio-buttonset.php","0",",�E\\-�Wߦ(���",",�E\\-�Wߦ(���","�w?����m�3I�w*l`��>OWο�fUML","","0","?"),
(" o��ƕ��t_��\0.�","wp-content/plugins/wordfence/views/options/option-switch.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","m�i�E�>W�c�Zaig","�&����՚�j:�g&*5�6yɨd�q4֙��","","0","?"),
("#�H
("%~WN82��Q�O���","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/Domain.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","n4�F��0JC� n��k","�Cb,���\"�\">j���Ŋ��AlD�","","0","?"),
("+L����G���=do","wp-content/themes/flatsome/inc/builder/shortcodes/templates/section.html","0","�}�;^X�A�/��\'x�","�}�;^X�A�/��\'x�","FN�9\\,dh$J�wPI�и&V[zG�&���","","0","?"),
("AZX�O J�e��!��","wp-content/themes/flatsome/inc/admin/customizer/img/nav-box.svg","0","���Է�]K�\\�","���Է�]K�\\�","G1MH��vׅ��6�k%���$;�o9\\r}4��","","0","?"),
("TH֢��0�A�Ge�B	","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/pt-BR.js","0","[�-&l�?����O`�K","[�-&l�?����O`�K","�e\nZ��xJu)\n7\n�2os{/1}CiF","","0","?"),
("^�����ƍ�ϵ","wp-content/themes/flatsome/page-blank-landingpage.php","0","�S�X��cN�QO","�S�X��cN�QO","�-���-p{�Ɇ}*b�q?��w�����","","0","?"),
("n\\����q���)<�","wp-content/themes/flatsome/inc/functions/function-maintenance.php","0","��ШT/T���5%��","��ШT/T���5%��","�~����A�w���\0��K�ک0�!f�f��N","","0","?"),
("�_��P;9�=���","wp-content/plugins/wp-rocket/inc/3rd-party/hosting/wp-serveur.php","0","۰-�fb1X����f�","۰-�fb1X����f�","C9�j�}<��S��(k9��*�x�\'�i+v�Q�y","","0","?"),
("�-��B��|tS^�","wp-includes/customize/class-wp-customize-nav-menu-section.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�qCtF	d�cx��F","��l���	�@�X����n0f��^�W���q�","","0","?"),
("��,:j�x��sf�1m�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/ForbiddenFunctionsSniff.php","0","���!
("�ECW��`�`��-�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/.php_cs","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_@�e���3�b��B","�L��ؤ@J�9OhG�@@���Z!��\08#l�(","","0","?"),
("�jM8Q+�3p�b�","wp-content/themes/flatsome/template-parts/posts/archive-list.php","0","{�����9���]n%� ","{�����9���]n%� ","铏�}��âK�O�$}�Nd���4�k�3�","","0","?"),
("�\"�clO? |d�H���","wp-content/themes/flatsome/woocommerce/single-product/w2-product-image-wide.php","0","��3�\\wd�Ѧ�(��","��3�\\wd�Ѧ�(��","R�>i�r�W�4���o���o|#�q^�d�y","","0","?"),
("��-tJ����IT��","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/CodeAnalysis/AssignmentInConditionSniff.php","0","�����.G@+�>򪽩/","�����.G@+�>򪽩/","1��Щ�Q�xc������>�s���б��ܒ","","0","?"),
("΢�S˪�\n��B�V\"","wp-includes/fonts/dashicons.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","xih�7�w#؟���","\n������ȾG@kJ	�\';�6�<�\"��","","0","?"),
("�����i�����7�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SuperfluousWhitespaceUnitTest.2.js","0","��;�6	F@i]�vҊ_","��;�6	F@i]�vҊ_","Kx%{��W��Fy�n�;M=���+\09D�8���","","0","?"),
("�*Q.	�-c�%�D","wp-content/plugins/wordfence/lib/flags.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�i��c�磭��c�-","8�Y��CO����0�j{�x��D�Ė��x�O�","","0","?"),
("��ܡ9�u_\\\n�9�\'","wp-admin/css/color-picker.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\"��8����8ax�.","[��yR��tUl���Z	&[�	tq���f��","","0","?"),
("�KU�g0MU�/��ʇ","wp-admin/admin-functions.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�F��$�s:�9�m%aF","?�!m�W��d<2�|7����SE�3��s\"","","0","?"),
("[�`��0CI$T��\'�","wp-content/plugins/wordfence/vendor/maxmind-db/reader/src/MaxMind/Db/Reader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9~��b���tPDe�|[","l����JJ:�{�(��#,�7��#��*b�","","0","?"),
("!���dj\'ER�\0�|�","wp-content/themes/flatsome/inc/admin/customizer/img/cart-icon-fill-round.svg","0","\0�U>�,5p\'��͇�e�","\0�U>�,5p\'��͇�e�","C�m��Oup�7����N/�=�;���C�dG","","0","?"),
("4;V��\'�/����f�","wp-includes/js/jquery/ui/effect-scale.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}0e,)����+m�T","��Ăj�hv����r�&����a��\0
(":�f�?bj���.���","wp-content/plugins/wordfence/views/blocking/block-list.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���L�YPͺK��\n�e�","�]�SO	�o����*+uX�:��ʆ���w��","","0","?"),
("T�Ę5VH���P{��","wp-includes/Requests/Exception.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����\0��3��RI","-@��g %�����uON\\}@l���f\'���","","0","?"),
("`�M�Tm��}n��Y�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/BacktickOperatorUnitTest.php","0","�\"�s�]�TO�!;�","�\"�s�]�TO�!;�","����k�^��ӍJg�F�Mj=�������","","0","?"),
("tn<	��%�ZpIK�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/wpshop.php","0","�s���\'�鳟N ","�s���\'�鳟N ","�Fv��Y�:�Q��2�PQ�E�A�����\"\\","","0","?"),
("���C\n���U���","wp-admin/js/custom-header.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2�\0X���`o���uf�","&����[/ߧQ�%X1���P��@Xe����
("��0l��j�0+%�","wp-includes/SimplePie/Source.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������S{�*���","����4��7Mj9����|\0i��&Ĩ��Lu!�J�","","0","?"),
("��{�\0��Rc��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Files/FileList.php","0","�X
("�/���C+�ƥ��","wp-content/themes/flatsome/woocommerce/content-single-product-custom.php","0","�A-�G\'��/C�����","�A-�G\'��/C�����","�`���@�2q��T�H�����s�?","","0","?"),
("���窒�u��
("�)����t
("	��9qK�\'���zb","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/DisallowSizeFunctionsInLoopsSniff.php","0","n���+14���5�J}","n���+14���5�J}","�٫V�9l��זc�q`�V���Ц��P�EY�","","0","?"),
("�ʱ�����Z;�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/OperatorSpacingUnitTest.js","0","��m�����f9��s","��m�����f9��s","��J�M�̨/�@%�ɧ�W����q&!Wo�","","0","?"),
("�?Ǆ����:\n��X","wp-includes/customize/class-wp-customize-theme-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�!8�2����o-w�~N","�Q߶e*��I���{�n��×�g�KЌ�Mq�","","0","?"),
("sio\"����M�3F\\","wp-content/themes/flatsome/inc/admin/admin-notice.php","0","�Ǧ3��Tg�����","�Ǧ3��Tg�����","۠�Ɨ��]1��M~�,M-Aj�r�1`W�2","","0","?"),
("3�d����yj�����V","wp-content/plugins/wordfence/lib/menu_firewall_blocking.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[?��� ?�����","�b}ST�����bcv�ʄ�������/�{�","","0","?"),
("Wl��y:�\0Vn`�d\0�","wp-includes/js/tinymce/plugins/wpview/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�k|�z5Hػ(���","[g����SmИ�c��2����?S�S�\"�ӵ��","","0","?"),
("Y�RÈv��HU4","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/ru.js","0","�F#�;���K�)�e��","�F#�;���K�)�e��","�(�rXa��,�����k+��@�L���<���","","0","?"),
("��@ؾH�&E�ї�R","wp-content/plugins/wp-rocket/inc/functions/files.php","0","��f7�:��+°���","��f7�:��+°���","c���L�U�;\0�:�G�����F��\0��8^�
("�,�4#��(�#","wp-signup.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'u�\0Ǚk�z����","��S�4�s,��������u�_�VL�","","0","?"),
("�p�fz����<-�ma�","wp-content/themes/flatsome/inc/admin/options/header/img/header-simple-dark.svg","0","k���Ȩ�Tυ-!�-�","k���Ȩ�Tυ-!�-�","����.���X��:@��]�A�.��R�","","0","?"),
("�\\:�ě�Y���2�Ce","wp-content/themes/flatsome/woocommerce/back-comp/layouts/w32-category-off-canvas.php","0","4G��Лe.���Fe","4G��Лe.���Fe","��S�w�Q.P����z���@�Qy���wbt��<","","0","?"),
("��˱��uݽ�	��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-text.php","0","݈�%����ځsNl�","݈�%����ځsNl�","d��ʪ��\0���sI.YeFMz�R)�>v0,","","0","?"),
("ď_�|b�/�R�","wp-content/themes/flatsome/woocommerce/back-comp/loop/w32-pagination.php","0","���}e�^i��%m)\\a","���}e�^i��%m)\\a","
("��ڔ��\"��L�v","wp-content/themes/flatsome/woocommerce/layouts/category-right-sidebar.php","0","��B��N��d)","��B��N��d)","@EZ���9!s;�rR�L\"q�\'|�pnQ�����\0","","0","?"),
("��y7��MA�@���","wp-includes/widgets/class-wp-widget-rss.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���Y@���>P�*�","Ί��T:�V	6zY��5������8g&-Xn��","","0","?"),
("
("a���ϰzN�b%D","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/SpaceAfterNotUnitTest.php","0","+	�� T$#{J�eWQ","+	�� T$#{J�eWQ","L}��5�&���2�S�^5��2B7աb��u","","0","?"),
("��hp#��:vJ�
("=݄�r}[�j��3Ӝ","wp-content/themes/flatsome/inc/admin/kirki/modules/post-meta/customize-preview.js","0","�V�D
("E�;Ř���T�Ѝ��","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/AbstractVariableRestrictionsSniff.php","0","y9
("JX�W��P+\n�L�Fo","wp-content/themes/flatsome/inc/shortcodes/ux_countdown/ux-countdown.js","0","�I�9h�^�c*�9R��","�I�9h�^�c*�9R��","hkF�����$O���l-�*%_<:�%�u���l","","0","?"),
("a�>ɂd3pR]�\0z","wp-content/themes/benh-vien/template-parts/posts/partials/entry-post-date.php","0","����91����n��","����91����n��","[B�PR\\-Ǖ�\"�\0])�W�o˝��eR�����","","0","?"),
("�`&%eF�g����d","wp-content/plugins/wordfence/models/block/wfBlock.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���z��n����K_�","����7Y�.�ڔ����n�!�ڒe���","","0","?"),
("�:8�Ia��øl�m","wp-admin/includes/class-ftp-pure.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","B�bE��E�>��R","\'M*i�*�D��\"�~�:�#*a���A�,n�SӠ","","0","?"),
("��0�DRԱ
("����KqM���{���","wp-admin/css/dashboard.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",")�����y:�)��ǧ","���.t��㆓�D̺Τ|�V�8�9<��Y","","0","?"),
("����Y,A�`�\n","wp-content/themes/flatsome/inc/admin/customizer/customizer-reset.php","0","��D�xYQI.�[�E","��D�xYQI.�[�E","�aB�PL��J�q2̭*�f��Bk�
("�TB��O>�v2��}Ea","wp-includes/SimplePie/Locator.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�s����;�uvf^��","<�Ό�:9�/(\\�֎tl�]�ǳ^82��","","0","?"),
("��\'��$��s�PFj7","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/disqus.php","0","�h�\'t�E��iՄ��","�h�\'t�E��iՄ��","�	)iV�Ϙ�#&s���9��e��\nT���la�","","0","?");
INSERT INTO bz_wffilemods VALUES
("�Uu#d�����x]E","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_75_ffffff_40x100.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�To�����	�i5��k","L����˵6��%����w����툄^����Q","","0","?"),
("��W�MF`3��$��","wp-includes/rest-api/fields/class-wp-rest-term-meta-fields.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�y^���������","Y	Q�FX��2�2�FW���)���fKSf�","","0","?"),
("䏊I+Y`�Z��RG","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/SpaceAfterNotUnitTest.js","0","�͠���:��dP��e","�͠���:��dP��e","��@���=&�)���,����|��i�","","0","?"),
("��*�7
("�iq��~��6���","wp-content/themes/flatsome/inc/functions/function-conditionals.php","0","�r0z�Z�k���e��9	","�r0z�Z�k���e��9	","���)��~B\\�K~�g��:�}�]���,4U/��","","0","?"),
("$K=�3�S�A}�?�$","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/Billing/Subscriptions/Apps.php","0","soË5�\"�El�Q2��J","soË5�\"�El�Q2��J","R��<k�zN8���j��{��5�\0+6x��M\"","","0","?"),
("+GI�]$n��o�R�","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_cd0a0a_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\ne��W�b~��M�v","#���|���K��O8�5L�~u}\"�Z�\0l~!�","","0","?"),
("F��e���}�(��","wp-includes/js/jquery/ui/dialog.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">͕���xQONi�^�b","�8m1J�tj}�#���zǏԒA��d�vd-","","0","?"),
("bG�Ù $�!�]�","wp-content/plugins/wp-rocket/inc/admin/ui/modules/tools.php","0","��Ei�F\0|���ė/�","��Ei�F\0|���ė/�","�+E���g�­�_!�Z=�gC;���͡�","","0","?"),
("i1��E~N�I�A͔��","wp-includes/Requests/Cookie/Jar.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�0_��&p��\"4�\\�","c��!�#B�i*+\"�
("s♼{DR�[�k�1�I","wp-content/plugins/wordfence/images/logo.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\'9%(wd��h��","�uM�/w`xG|w9���?�I�C�J^�fNv��","","0","?"),
("�����X/��\0��	","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���6�٤p��Ol^","L��*c�&��]�\n9uҐó�L�_��Qj&v�","","0","?"),
("�J���l��5��]Z","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/selectWoo.js","0","9~!��ץ�95��t�","9~!��ץ�95��t�","�B?���i0��s��
("�Jlz+��n���O�q","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Channels/IncludeOwnSystemSniff.php","0",";������m�߬VC�S",";������m�߬VC�S","^���.?���N����>7	��3�mL6�n","","0","?"),
("�\0�G��6�I�T�","wp-content/plugins/wp-rocket/vendor/matthiasmullie/minify/src/Minify.php","0","/���^v[(v��O维0","/���^v[(v��O维0","�0hn&�r}S.:��
("��_�*	V��ܬ��","wp-content/themes/flatsome/inc/admin/options/header/img/header-default-center.svg","0","�ڒ��c�B��B��:G","�ڒ��c�B��B��:G","�_���,�K�S�-�q=��`fj���Dkm�","","0","?"),
("�x(�ťܺ�.���Շ","wp-includes/class-wp-session-tokens.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���;!�fn7��iVK","��
("Ԓ��A�����r��^","wp-includes/js/wp-custom-header.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">-U�1���(!���#","_M ��:k^=Z�����\\���]���*B�O	�Y","","0","?"),
("�3ƹܕj�bi�Υ�","wp-includes/customize/class-wp-customize-nav-menu-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��?3����.��f>�","��m��\\W�\\��R��eq��&�GH��ӌ]}","","0","?"),
("���2�V���J�܌","wp-content/plugins/contact-form-7/includes/special-mail-tags.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","w�{^�=��Dކ��}","��L��a�y�M�����������L�ݯ�Q��","","0","?"),
("5�]4����3x]	
("SMr��j���~","wp-content/themes/flatsome/inc/builder/core/components/components.php","0","7�R�~)�\n%�D�r�`6","7�R�~)�\n%�D�r�`6","7��C4�!.�t�G��m܅Ĳ���#�0� \"","","0","?"),
("_S�x:��)(��%(�","wp-content/themes/flatsome/inc/admin/customizer/img/blog-two-col.svg","0","�e���nR�
("b���E�����4t=","wp-content/plugins/wordfence/views/dashboard/options-group-alert.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�?Y�Q���1Hp","�@�Ɯ�z��T^�6H�a^�u�qN)��CY�0�","","0","?"),
("�+�~[��#�R��QC�","wp-content/themes/flatsome/woocommerce/single-product/price.php","0",":|̠����	({�q@",":|̠����	({�q@","��З�����xny��Z�C�v����#��G#","","0","?"),
("��>�/ᡇ_�����","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�l([qא���D#��","\\sٶ�hb�2.;�m`F��r^&�H-w	�yV�~","","0","?"),
("�&UX
("��Cv㽚�$S��\\\0","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/SuperGlobalInputUsageSniff.php","0","=r��ʮ\"$�]*�].�","=r��ʮ\"$�]*�].�","q��D��?�굂��5�Hy���Oq�i3{","","0","?"),
("6�s��w*䞋���","wp-content/advanced-cache.php","0","�Y�mGX�
("T+�vDJn��ϔ","wp-content/themes/flatsome/template-parts/pages/page-title-breadcrumbs.php","0","\'dq�m+�M=|��Ɗ","\'dq�m+�M=|��Ɗ","A�7l<��w��	�_0��1�LG0��B�H� ��","","0","?"),
("W]�N�O�<Il
("��$Ĉ;G�%6�C�$","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/LowerCaseKeywordSniff.php","0","2״��O�~��@5Qs","2״��O�~��@5Qs","�{Zs���͞�kX4ٹ�=ζ�\n\0���1","","0","?"),
("��C_҃�� � �\n�","wp-content/themes/flatsome/assets/img/payment-icons/icon-giropay.svg.php","0","ԸŬ���n;��.�","ԸŬ���n;��.�","$�o_�K�t�/�#�8{�L�D�K�D����p","","0","?"),
("�;5�(��O�O�R�","wp-content/plugins/wordfence/lib/dashboard/widget_content_countries.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ȏ��c�P�\"������","זD䟹4����5��J��b�O�ɝH�R@�","","0","?"),
("������)qtsCI9","wp-includes/functions.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","7t\01Gt�ڍ>?\\�W=�","�;l�SZ�\n턟��ݞ2�K��+��B[��=-","","0","?"),
("�y��8R#O�y��","wp-admin/css/nav-menus-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","e�A���Gg�����P","��$�/�oGN��
("��ݽ�vNS��D0","wp-content/themes/flatsome/template-parts/posts/content-none.php","0","�HB�H$�����(�","�HB�H$�����(�","<k$���i��Řw$����A��-��ҋ9P�N�","","0","?"),
("��:\\��Rf�P�~3","wp-includes/class-wp-metadata-lazyloader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~%�.�yX:���Ve","=�o�~t�<i�c���\"ϰ����s�v�2","","0","?"),
("�ݢi�W�T&���6Ʀ","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/FileSystemWritesDisallowSniff.php","0","���-8�t�\0�$_���","���-8�t�\0�$_���","��ӟ�ܴ\'?��T �/b�
("�UE�s(���#E�p","wp-includes/images/smilies/icon_mrgreen.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���J����Rw��w��","�^��m~\0�����k�O�[�����:�`","","0","?"),
("G����.�9��D�k","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Commenting/DocCommentUnitTest.js","0","�(
("$?ד��&GZ����","wp-content/themes/flatsome/inc/admin/customizer/img/disabled.svg","0","0��%��mJ�|:��","0��%��mJ�|:��","��mbzx���#\0��\0��G]�O6y��i��L%","","0","?"),
("-��c�<���@�VsZ�","wp-includes/js/api-request.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��nyw��t�w3���p","�T�P�y��b�@?���r����!��0���gy.","","0","?"),
("D�s&� ��+��t�ݡ","wp-content/themes/flatsome/template-parts/pages/page-title-scroll-to-centered.php","0","�Z3�`�����[/���","�Z3�`�����[/���","�;3�����L1����25I��/saR���e��","","0","?"),
("L��Z� {;�V���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/LowerCaseConstantUnitTest.js","0","�}L\n[-x$ǟ�b�","�}L\n[-x$ǟ�b�","iUT1��y�W*IH7��Ҝ���Ի�l�[G�","","0","?"),
("b�N=���,��S��","wp-content/plugins/contact-form-7/modules/text.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��ի㔽C\\գw!�","�b�5��\0tV��X-�Φ�)3D�=S<�9�","","0","?"),
("v;�8@d����","wp-content/themes/flatsome/inc/builder/core/server/src/Transformers/Transformer.php","0","Z���\"o~VY��ѯ.O","Z���\"o~VY��ѯ.O","kbO�뚋Nj^;}bݐ!���Դ�����7","","0","?"),
("���V*��p��7L��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/ControlStructures/ElseIfDeclarationSniff.php","0","�*�>�Ƙ��`�{v#�","�*�>�Ƙ��`�{v#�","]��=�����Qɛ�³ۣK2H��7��@rs","","0","?"),
("�y���!�\0pZ�[A","wp-includes/js/mediaelement/mediaelement-and-player.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'�M�ʄ��h��E�","��I\0�ew7T.$�	�aZS��\0���1}v�\".","","0","?"),
("��쳜�+?Ɉ�.Ĭ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/EmptyStyleDefinitionSniff.php","0","\\���c<��h?;c�","\\���c<��h?;c�","�u0�`�*U\0���\\��u�@)��eQ_�&�2","","0","?"),
("��_\'jǵ,r�r+�","wp-content/themes/flatsome/template-parts/header/partials/element-cart-replace.php","0","�ͭ�YX>\0wX�\'J","�ͭ�YX>\0wX�\'J","U�p\n�9��C!�ܬ����;m���T`����om","","0","?"),
("�/��� ���K9r�","wp-content/themes/flatsome/inc/admin/customizer/img/account-icon-outline.svg","0","h�l�&�T���N͍��","h�l�&�T���N͍��","�����Ry&��W)�\\�D�5����(�\\�;F\\","","0","?"),
("�ı�킰{w{��","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewFunctionParametersSniff.php","0","\nGT-N�����p�Z��","\nGT-N�����p�Z��","�Ә\"�Ѷ�^	��}2�`�������bx�x","","0","?"),
("���ˋX�nɬ��V","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/Classes/ClassDeclarationUnitTest.php","0","����m~jkanIc","����m~jkanIc","a�s�d�E�>��zCf���M\n�rEA��OdH","","0","?"),
("�Qf���>�A��(�y","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Tokenizers/Comment.php","0","<�͍��n��O~Nx~�\n","<�͍��n��O~Nx~�\n","4�b�R�\0�y�3%j(��&��ݞH�+�b�ɩ-Z","","0","?"),
("ֻE\n�<�B�[�,","wp-includes/class-wp-ajax-response.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","4Ƈo_���i���,","_=Ƒ|��:��\"7Јq�>?���Y�4�C.��t�","","0","?"),
("���9n���hϥY��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/LowerCaseKeywordUnitTest.php","0","d�7�֎/a�g�|P","d�7�֎/a�g�|P","����n�D����scH�l>�羵�\'b�d�","","0","?"),
("�m��n9�F�6�","wp-admin/css/admin-menu-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N�m��4���lw09�","t��{�ߕ��w�լR����8���!��$��\0�","","0","?"),
(")�M��^�ûoz�","wp-admin/images/loading.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-[��t�P���d�","W�3p�la	��P����
("+V�l�I�������","wp-content/themes/flatsome/inc/admin/customizer/img/search-icon-plain.svg","0","��`�m,��[>5���","��`�m,��[>5���","Mw�Ú癦:(G�X欷Kp:�3�´\\���g\"","","0","?"),
("2����:6�I:-","wp-content/themes/benh-vien/template-parts/posts/archive-list.php","0","ѴSү%O�-��n�/�","ѴSү%O�-��n�/�","J��B��\0qn�\0セX�J��f���)�u","","0","?"),
("4%�IH�O��ʰ�L","wp-includes/css/media-views.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_��V�[��EL*zU","��B)2�ʛMw\"���&pjTF��F7�+����","","0","?"),
("C�/�;)��ّ�o","wp-admin/js/comment.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","H�u�3�.�\"���л�","[�h8����9h�t��<������`g3L���8","","0","?"),
("CQ% ��W��-#","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-left-dark.svg","0","�X�^\\h�����","�X�^\\h�����","�`�I��j�N�k�7���.��=9�S����","","0","?"),
("T�gslF���ʞ��Ly","wp-admin/js/set-post-thumbnail.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����8�կ!�1z[","�s���!�C�n���\0T�0t3��|��\"�","","0","?"),
("n<ό ���^̨��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/Plan.php","0","�9�;��u\"w�����","�9�;��u\"w�����","	��@�Sx�I��1OW��P��U���I؁&,g","","0","?"),
("t�j��V����+�R/","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-select.php","0","����Dz7۾��N�=","����Dz7۾��N�=","�|�޻�t�j�B�G^ x��V�*�񸀔=Z�","","0","?"),
("vs�%�z�����F�","wp-admin/css/ie-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L��������O�k","�FU����!}\\֊��_ȕ��o�/B�\\!","","0","?"),
("z�|*6�S\\5��3","wp-content/plugins/wordfence/lib/wordfenceScanner.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�(��U�+S�t�(3","l��xo�qc�!�$4 ^J�_q$��*n�����","","0","?"),
("���uTg(n&Ϭ�˫","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/ithemes-exchange.php","0","ds,;���Ғ�	���","ds,;���Ғ�	���","���Vb�c�Ri�I�c��ɠ��4�H]��4����","","0","?"),
("�Gx���A1�\n","wp-content/themes/flatsome/assets/img/payment-icons/icon-cashonpickup.svg.php","0","���&!�%S��Z�7","���&!�%S��Z�7","r	��8��T���}��x�I�<�)����[vG�","","0","?"),
("�a���^����#B","wp-content/plugins/wordfence/css/wf-roboto-font.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��]���O�uݵ�","�+�hJ~�ʆ��*��a*���Gb67�
("�\n$z�X�`�1Bw","wp-includes/js/tinymce/plugins/charmap/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L<�ue3�ӻ�Ώ���","1�HS�n���5���u2��E��YBV�6�]�W","","0","?"),
("��=b�6��hs���t","wp-admin/ms-themes.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R�K��$�IZ1�i%�","}��[v���0���	w��^!�*��TxW��","","0","?"),
("��\'��FE�A�vQMv","wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">
("�U	.�ɠ�t|}�̠�","wp-content/plugins/wordfence/js/date.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���j��P�ER�_�c�","��B=��0�dƩ\"B�tUc��^1�>�q&�","","0","?"),
("�c�������Q�A�R","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-number.php","0","nF>�>����c]�H[�","nF>�>����c]�H[�","���^%㶌f2�B]��A�A���\0�I������4","","0","?"),
("�k0B��a��`�","wp-includes/customize/class-wp-customize-nav-menu-setting.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��d>�D?����p","!TGQ�K�;�2������@^~ \0���R�١\ne","","0","?"),
("��r�΅��Qx��","wp-content/themes/flatsome/inc/functions/function-fonts-old.php","0","_� <%����ѐ�","_� <%����ѐ�","�A+���
("�
("�-=Q�Cw�tnL�#","wp-content/plugins/wordfence/lib/wfBrowscap.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","0�w�4�V�=�2�P��","���(��\n|�T�:]�Xr�s-�`.�\n��\n�M�","","0","?"),
("�8�O���g�h!","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Arrays/ArrayDeclarationUnitTest.php","0","Q8b�o�9��5�","Q8b�o�9��5�","%Kԭ����͎=���j�w�16[!�","","0","?"),
("��x���Bt�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Emacs.php","0","��]��dl��J��,�\n","��]��dl��J��,�\n","#��ܰ��UV��F8R��ISg�&Е���\0�U","","0","?"),
("\n��O�_��;]/^��","wp-includes/images/down_arrow.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","e��]:u�Wv���\"��","��ǘR�eO�:n��{���{x7�h�Pod�","","0","?"),
("G_bc�.,]&���","wp-admin/js/image-edit.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��ԱA��ϓl�w��","D�<O�`XѮ#�A�K,aH�i�G�I�!L","","0","?"),
(" 8M�����N�e�q�","wp-content/themes/flatsome/inc/builder/shortcodes/divider.php","0","�t��S���k+Nַ�}z","�t��S���k+Nַ�}z","�2;͢���P���F�ܹ3��	k���$q��","","0","?"),
("#J����LP���7}�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-left-large-dark.svg","0","�����L!2�8���","�����L!2�8���","1�C1e���EmP�����\"�F_S��c�(�i","","0","?"),
("%�t\n��,R/��TN;","wp-content/themes/flatsome/inc/builder/core/server/src/Ajax/Terms.php","0","�<1��Vg���*�","�<1��Vg���*�","_~e�NGb�f�_\0�E�j}X����E���","","0","?"),
("b*�j͗>N��.���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Functions/MultiLineFunctionDeclarationSniff.php","0","��)�IH����|0�","��)�IH����|0�","�M�̐mNy�u��5N�0[@�\0�g��� ZE-�","","0","?"),
("fMx�����	�+9�U�","wp-admin/js/customize-widgets.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'$�W\n\'ȧ�6�T|","&��1���9�{�>�{�%�H\0�I��W�","","0","?"),
("k������&c,R��!�","wp-content/themes/flatsome/inc/integrations/ubermenu/flatsome-ubermenu.php","0","����J�Y���0o���3","����J�Y���0o���3","�c���[,����ū��<�&_h�,�/\\3�pG","","0","?"),
("�%��\\��MA�����","wp-admin/images/wordpress-logo-white.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��qP�C��-SPD��","e�4�E��?�&�DsA���ʬ�;�)@�Xɒ","","0","?"),
("����J�}F��E\0�9�","wp-content/themes/index.php","0","gD,V�=\\�bP","gD,V�=\\�bP","k�����~	��UH��x�P��Ā��<��;X�","","0","?"),
("�5�y�\n�4�\'�dI�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-url.php","0","⟝�{���z`öVl","⟝�{���z`öVl","^Jni��Rw#�w�U��(�[�n�JȬP����","","0","?"),
("�=�}C���i��HT","wp-admin/network/profile.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ht�o�`�3v�","�_��!g�I�\\:�����K[�ߗ�CA","","0","?"),
("�g��I�!٭���_�","wp-includes/ms-blogs.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����2�$ɸl�4�ׁ","��7�c�B���큲���f�Y˘�w�G�\"[0�","","0","?"),
("���t�DX�m\0#�(�","wp-includes/customize/class-wp-customize-nav-menu-locations-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","A�]V�*uӎ��\\�/","�I�.�\n��%�t9����T���Q=e֥�","","0","?"),
("��]/~���q��XŎE","wp-includes/js/jquery/ui/button.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",�Ѝ�Q楎�����","i��O�Ϟ)+���b���x���!����5�","","0","?"),
("�g+���0H�)%��","wp-content/themes/flatsome/maintenance.php","0","���^�ŃT�g��b@[�","���^�ŃT�g��b@[�","AT�s��8��(͜I�̾��g�p5��9�","","0","?"),
("���̆,���$�","wp-content/themes/flatsome/inc/admin/envato_setup/presets/header-reset.php","0","�����������|�.","�����������|�.","���f�~8������X�(Eg���Gޓ�,","","0","?");
INSERT INTO bz_wffilemods VALUES
("��,��^s�S+��","wp-content/themes/flatsome/assets/img/payment-icons/icon-swish.svg.php","0","wңؿ=#��={�\'N","wңؿ=#��={�\'N","kF`}�߿0���iM�_\"�B�}�SMi�����_","","0","?"),
("ݎt����_�E��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Functions/CallTimePassByReferenceSniff.php","0","�G��̆>(���Ň","�G��̆>(���Ň","�ރ�����ݿ�+�_P�����~��I�C�b�","","0","?"),
("#��`;�d���{�*","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Objects/AssignThisUnitTest.js","0","�r�3�9loI���tK","�r�3�9loI���tK","�l[P�������~��V��~�m�*H��7�","","0","?"),
("#�0�ܳ|�@C�Ԙ","wp-content/themes/flatsome/inc/functions/function-fallbacks.php","0","�%+8����ER�\'�","�%+8����ER�\'�","Gg�F��f^��B0��YQ&�^���b�Y","","0","?"),
("R�\\�&��T	�|`","wp-includes/class-wp-user.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�E�^�x���d���_","��P�7� z�ы�l>���`�Z�.�o�","","0","?"),
("SOd#���
("]�d|�%���^.4n�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Metrics/CyclomaticComplexitySniff.php","0","6�+�����9�)Ͷ�L","6�+�����9�)Ͷ�L","���ke� ���b��&��Zk.��Em?F��b","","0","?"),
("wjl���/��L�tI","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/ControlStructureSpacingSniff.php","0","�$R��ik8�-��b �","�$R��ik8�-��b �","D�R�h&�Yw��0N<�N�F�p��͆v�","","0","?"),
("ynm�;�/�UsK	��","wp-includes/css/wp-embed-template-ie.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","7{WP�L�{H���I�","\\aWq1��+��Я�o�L�Y\0�K���%<","","0","?"),
("|�&;�r�Ls5��","wp-admin/includes/comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","З���O�>����
("���Ye�.�0s��","wp-admin/includes/class-wp-comments-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����}0�s�uX/t�","�&qK���J�b��o@��[ �F�F�U�dܷ�","","0","?"),
("�A�o
("�]#%`��S#�K���","wp-content/themes/flatsome/template-parts/footer/footer-simple.php","0","�},|���/V(w���","�},|���/V(w���","A�����	�����瓛�mt1\"�v�GJ�`�b��","","0","?"),
("�I-���\'��?�1�UB","wp-content/themes/flatsome/template-parts/header/partials/element-newsletter-sidebar.php","0","e�X�y�kr�p�ѐ�}","e�X�y�kr�p�ѐ�}","
("��\'-�p�-���f�","wp-admin/css/l10n-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i�R{峪,D�_��J�","���\"�X�\0���
("��y�I,�N����","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-3-col.svg","0","%�Ġ;Β>�f}�p�@w","%�Ġ;Β>�f}�p�@w","�9$��2X`1�]��Ԭ�Y\\�G������M�","","0","?"),
("1�5�.�P�P-�Y�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/DeprecatedPHP4StyleConstructorsSniff.php","0","*LЪ1��dV2�����","*LЪ1��dV2�����","U�%r=�#`��b[[ݿ �Pо��w�a
("5�s�H�	m3��","wp-content/plugins/wordfence/js/jquery.qrcode.min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Թ���Xp`me<","wP\0�p�zuYDS�z(W�ߥ��P�3$S����","","0","?"),
("G��[5x���I{_�G","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Api.php","0","F�`��P��Ϟ�ͰHJ","F�`��P��Ϟ�ͰHJ","�fH�C#�A��g\0*&�<��eXwk
("L��bP�-I׭1f�","wp-includes/theme-compat/header.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","0L@���%�\n����P$","K^
("N�d#R��+��r\0s[","wp-content/plugins/wordfence/views/reports/activity-report.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�O����.9֚���","i\'��M�wrX�LB���+z\"`N�d��gjʥL","","0","?"),
("O�s��?��l���p�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-2.svg","0","�����pKV8��l �","�����pKV8��l �","�[%���_`��5-���v�#�K�R�����","","0","?"),
("t������!��%\n","wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5�,}vĨ3��G��)�","E�r4@\0�ԡ$��z��3�$l���`i�ex�l�","","0","?"),
("v�)�$��Jk����V","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/PropertyLabelSpacingSniff.php","0","M;�5��u�<�ʢX","M;�5��u�<�ʢX",">�8j�2\0��U��<�׋���JTN�44","","0","?"),
("y��|8��\0�I�֗","wp-content/plugins/wp-rocket/inc/classes/class-rocket-background-critical-css-generation.php","0","\\|�c�B�;[��rO�","\\|�c�B�;[��rO�","m�d_d��c����6�B���d����|�U�7g�","","0","?"),
("��8�$	�|DV�5","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-right-dark.svg","0","��Nė1\\��mm@�H�","��Nė1\\��mm@�H�","���)I>�4�zGgdv���kұ+fp�<�ˮ9","","0","?"),
("�{��Y�\\�z錿�}c","wp-includes/images/smilies/rolleyes.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," ���O�2�Ofݣi�","fK�)�\n�d��!]
("��[�xT
("�0��hݩ����٦��","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-editor.php","0","�B�E�WȚN>F�m��","�B�E�WȚN>F�m��","9�i,wf(
("�=������\'\n�^��","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ConstantArraysUsingDefineSniff.php","0","|.)$�K��^�\\|���","|.)$�K��^�\\|���","��u���h�4��g�H�f��=>�|��o���$","","0","?"),
(" \'���_U;0�/<�","wp-admin/includes/class-bulk-theme-upgrader-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���LtQdz�LA��","�B��$N��Vi��p�����7E�\"�W���~�","","0","?"),
(" *@ADғ�=pu���E","wp-admin/user-new.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ǚp(�&�zO��[<}","A��V0r��-��>�|�M;��l\\_P�\"�}","","0","?"),
(" 1{;$����P���
(" 5��rD�g�籃�","wp-content/plugins/wordfence/views/dashboard/options-group-license.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Oaz���v��e�,��","�1��v��M8���m gI��4k\0y�;����/�","","0","?"),
(" <@�s����
(" vO�6��*�B�����","wp-content/themes/flatsome/assets/img/payment-icons/icon-six.svg.php","0","2�
(" ��P��GEYO","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/EmptyClassDefinitionSniff.php","0","���U2�ő�e�\'���","���U2�ő�e�\'���","~��`���_���4ܔ� ��P�Qb^��])3","","0","?"),
(" ��7$�Y\'������","wp-content/plugins/wp-rocket/inc/3rd-party/themes/studiopress.php","0","�4A�SQ�Uݢ�o�V","�4A�SQ�Uݢ�o�V","]4䑅\n=N��*q`,��0%�=���=�]���","","0","?"),
(" �����/a��u�Q/","wp-content/themes/flatsome/inc/classes/class-flatsome-options.php","0","�z�	M�|����6z","�z�	M�|����6z","-�����/u�H�A�to���MY�	 ���~�zG","","0","?"),
(" ˒�q�&�ZP�4","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ParameterShadowSuperGlobalsSniff.php","0","�)d�\n|V!�:k�w","�)d�\n|V!�:k�w","�U.����y�h�<�h�+��/O�1���΂�","","0","?"),
(" �
(" �o?��R�z}��l���","wp-content/themes/flatsome/inc/admin/kirki/modules/webfonts/class-kirki-fonts.php","0","��q�Ueav1��","��q�Ueav1��","%4��v�1+	Wų��ğBC�-��]�?���","","0","?"),
(" ��c̫)I�\np,͑��","wp-includes/css/jquery-ui-dialog-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�{����`?_��MP�","��,����\"}�1)��0n����ܴ���Q","","0","?"),
(" �<���c�ʆ�w�~","wp-content/themes/flatsome/inc/shortcodes/titles_dividers.php","0","_�d��r2�J���SV ","_�d��r2�J���SV ","�	,j�p�PN�j����f��Fjv���ˌ�","","0","?"),
(" �V�%˹ToZ�f","wp-content/themes/flatsome/template-parts/portfolio/portfolio-next-prev.php","0","v�\\�\"� >�B���r","v�\\�\"� >�B���r","l��A�w�J�s�/��h8ri�U-�Nl\no灈M","","0","?"),
(" ��
("!o�
("!#a��`r�l����\n�|","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/SpaceAfterNotUnitTest.js.fixed","0","���d��Z(O��ku],","���d��Z(O��ku],","��@���=&�)���,����|��i�","","0","?"),
("!1b݅9��*���\\��","wp-admin/admin-footer.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�T�ȭ����{��","6G�n�,zߔ���!�|L1����?���mrHu","","0","?"),
("!1��x\'��Ѡ�û","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenNamesAsInvokedFunctionsSniff.php","0","a�\'�Q��f��\0e��z","a�\'�Q��f��\0e��z","��ErlI��Ѧ�)Y�\n|�g�b�PT�j��","","0","?"),
("!33�|]׫���j&��","wp-content/themes/flatsome/template-parts/posts/archive-inline.php","0","��Ő�@A����^���","��Ő�@A����^���","O���]��ƀ��-�!*\\ե)YӘ�1����9","","0","?"),
("!C�9�e�{7�,.-","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/LowercasedFilenameSniff.php","0","�݃�ܘ%����k�|Y","�݃�ܘ%����k�|Y","��?�F���\\����:�ۘ�!_�#%l�7ԁ�","","0","?"),
("!F��{�R⠴\0��","wp-content/themes/flatsome/assets/img/payment-icons/icon-banktransfer.svg.php","0","4\"�ߧ��m�*F
("!I���m �e�T�B4�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Generators/Text.php","0","���&�-��5�3\0Ó�","���&�-��5�3\0Ó�","�k����r��Jz���љ5��992�+�/�","","0","?"),
("!_��輵p3p�n��L","wp-includes/images/smilies/icon_eek.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��_��s���jN��_z�","��*��M-r������m�����7��t�]","","0","?"),
("!h&�R�\n��zlqH�","wp-content/themes/flatsome/inc/functions/function-theme-mods.php","0","�R��b�S��mb�[z","�R��b�S��mb�[z","͖�\n�̞��]0�)P�$�?(����]�\0�","","0","?"),
("!|(�y�W�*1Oo2Cu","wp-includes/js/wp-api.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","$?�܎�ͳM6�˒ܺ","��?��u��5���p����f�=��D��=�","","0","?"),
("!��\\���
("!��y��\'U��b��#}","wp-content/plugins/wordfence/views/waf/options-group-rate-limiting.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ȁ)\\Q�q9�F���#","l�����$�DЦ��m���	���,�N8","","0","?"),
("!��
("!�##sw:
("!�x�Ϭ�Q|fˇ�\'�#","wp-content/themes/flatsome/inc/builder/core/server/src/Elements/ElementOptions.php","0","�_6������㆐{","�_6������㆐{","�ꁫ�Mw��yD;j�����.���|�`%��","","0","?"),
("!�/Q��SSe5�6Y\\7","wp-content/themes/flatsome/inc/admin/customizer/img/product-stacked.svg","0","%.c�j���I��","%.c�j���I��","�@��ۗrL��+�7��D�aެ��\'��!��","","0","?"),
("!�� W�d4��E�����","wp-content/themes/flatsome/inc/builder/shortcodes/commons/video.php","0","���;�8~�;�ѻ�","���;�8~�;�ѻ�","};n��cݕ#��ʦ$&��v\\(�Rg��N�jZ","","0","?"),
("!���8uR��ԧ�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/ux_banner.svg","0","u�\"l~���3��y�","u�\"l~���3��y�","Ԥ�@v�Q^������ ��>Cj���ө���I�R	","","0","?"),
("!�R���p�nL�w�m7","wp-includes/js/tinymce/plugins/lists/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," D��R�E��^\0�","�tY�δq������<�ӍL�S}M2��:�~�","","0","?"),
("!ګM~�!���¬��","wp-content/plugins/wp-rocket/vendor/matthiasmullie/minify/src/CSS.php","0","4�/�)a��)��J%","4�/�)a��)��J%","`�v�˼��&�k��\"7���&�rf��/��˺","","0","?"),
("!��Tۦ����	l�I�\n","wp-content/plugins/wordfence/lib/menu_tools_importExport.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","$^k���>��T�|�","���������k���^�XR1,� �c=�\\�","","0","?"),
("!�O�4�bCRR�fO�","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����6�HK�r���","���!_Nn>8�zK��Sx���9B��Ziy~Y�","","0","?"),
("!����Y0-z1�dm>�","wp-admin/js/plugin-install.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������\n��(�","�8OV���w�q]�ļ+�c���\'+�<
("!�B��l!�Z0��","wp-content/plugins/contact-form-7/modules/hidden.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��@���S�����|s","gZ���y
("!��Qӭ��3b����","wp-content/themes/flatsome/inc/admin/customizer/img/cart-icon-outline.svg","0","�H�_���|����bʮ","�H�_���|����bʮ","Z�%�Tl��X�ֹ�E�1ÌY��$4\n<J�|","","0","?"),
("\"Et�y�s����|g","wp-includes/js/tinymce/plugins/wptextpattern/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��	�J)U�s�����","�2sF����|�:U�4{j�(�#4oH.j���","","0","?"),
("\"S|Y��7��m�w ","wp-content/themes/flatsome/template-parts/posts/loop/partials/entry-post-date.php","0","����91����n��","����91����n��","[B�PR\\-Ǖ�\"�\0])�W�o˝��eR�����","","0","?"),
("\"(}G��r�	0��V(","wp-admin/ms-options.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'�\0�}��:��ㆯ�","J3l+�K��u\'��ƴ>
("\"0�rN1M���#����","wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�EӤ㭇��M��g��","Q���*\'���B�+E��ߞ��:��m��yu�W","","0","?"),
("\"8A\n=��ᇼfp5","wp-includes/theme-compat/embed-404.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��%\0��i���hq��","^=G_�z��b
("\"<o*)�L�vxI�d~mP","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/block.svg","0","Ӊ��By���I�/b","Ӊ��By���I�/b","�}ThOV%��1���t迵M3���
("\"IFn����@�a�}�9","wp-admin/includes/class-wp-themes-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E��s��BġxNHqN�","�@���D����SM�����������(��","","0","?"),
("\"P�*Z΀s�	����g�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Arrays/ArrayIndentationSniff.php","0","����Fw@�i]�D","����Fw@�i]�D","Q�i;E �L���9��[��\n([Ú��g�h��","","0","?"),
("\"Z1W�H���yReN�-","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Sniffs/AbstractVariableSniff.php","0","�Ȝѣ�5���NJ��","�Ȝѣ�5���NJ��","݄u��?���?���� %žG/�ɚh��R�","","0","?"),
("\"d��,��g�u.!ﷶ","wp-content/themes/flatsome/inc/admin/customizer/img/category-box.svg","0","{����]?|`�1PR","{����]?|`�1PR","����ߏ0��yv���u\\V��~�ͬ0�","","0","?"),
("\"���V	�;l��\n�;��","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-util.php","0","�1��EO���4G�\'}5v","�1��EO���4G�\'}5v","�
("\"���S~`/3��o�[","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/NamingConventions/CamelCapsFunctionNameSniff.php","0","�e��S��l�bFdv8�m","�e��S��l�bFdv8�m","}fad��G�Ib�N(�C��P�@{�<4��ՈF�","","0","?"),
("\"����b9��e�|�_�","wp-includes/feed-atom-comments.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","o1�C�\'�E��\'�","bn��|��/y��\'���Ec+ɹg;ǥ��lq","","0","?"),
("\"�����u>1�7���","wp-includes/class-pop3.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","KTQȩ:O!�@T��y","�h9�4�s��֤���L���~$`��-��!","","0","?"),
("\"�*�4QƱ��_�^��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-1-3-col.svg","0","��N�Q��r$�s�","��N�Q��r$�s�","��`��e��$�č9F)�-j���/�h2^�3)f","","0","?"),
("\"��6
("\"����l�X8M��\\��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/Methods/FunctionClosingBraceUnitTest.php","0","mB0��aǀj@�)�","mB0��aǀj@�)�","A6Q��jI�]�D��K��w�u��yEag�̡","","0","?"),
("\"�w��h����","wp-admin/includes/class-automatic-upgrader-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�t��]��c.*2�","W7k+��rן�x�Yxs���mf�	������<�|\n","","0","?"),
("\"���F��i<�9�*��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/Firewall/AccessRules.php","0","���PuI���xb�,1�","���PuI���xb�,1�","�[�Gr�s�4tȾ�L}���Yft��~�𡋛�","","0","?"),
("\"��+����ʑ��","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/Templates.php","0","y�8��l�c\"���SS","y�8��l�c\"���SS","	��274����J�t&�3�lRI�]�V9","","0","?"),
("#\n��/��PZ~h���","wp-content/plugins/wordfence/lib/email_genericAlert.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:�XD}�RL�C�$7C","%��_�~(#m=�KK63�L�N�\ng8+�hs^","","0","?"),
("#p�%:��_bmm�:\'","wp-content/themes/flatsome/inc/extensions/flatsome-infinite-scroll/templates/spinner.php","0","<?��Z�[�Ē��","<?��Z�[�Ē��","��:2R����,������j��?r��\0+���","","0","?"),
("#8춈����\']E$�j","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Objects/DisallowNewWidgetUnitTest.php","0","#�m�f���#D�g","#�m�f���#D�g","���p���{�FM��خX��8AǴ�c","","0","?"),
("#D�ń�����5%��","wp-includes/class-wp-hook.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�|��J�f>�~�V-","�R!h�y��|�Lߺ�l�*5�pV̷`�5��","","0","?"),
("#r���F$\0~s�aN��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-select2.php","0","�Yh���C�5Q���","�Yh���C�5Q���","mGӖ�<�T��_���j�v�D���YWfC3��","","0","?"),
("#y���t(�$NT��t�","wp-includes/Requests/Proxy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�@k7�\0��t�\\*��G","�w<PB��ZC�k�SI�Q!��\n}i","","0","?"),
("#|�s:8��+k��!ɉ","wp-content/themes/flatsome/inc/builder/core/server/src/Post/PostString.php","0","�H�}�	�{��R��","�H�}�	�{��R��","�#��<]e
("#�ɴ��.\n�I|+�ɼ�","wp-content/plugins/contact-form-7/modules/really-simple-captcha.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�g�qObn���aW0��","��5\"]&����59�J����p�N���w�o?K�","","0","?");
INSERT INTO bz_wffilemods VALUES
("#��I	�+������>","wp-content/themes/flatsome/inc/admin/customizer/img/dropdown-style-2.svg","0","�>���\0a$��J��","�>���\0a$��J��","���.r�&\"��x��up1�����b�t�C","","0","?"),
("#��� 1hMN�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button.svg","0","g��_~X�P�g%n-�","g��_~X�P�g%n-�","1-T����Gҗ䞗p}�T.�d<ko�","","0","?"),
("#�-g�\\L%3�S݋B#
("#���\'��F�/��S","wp-content/themes/flatsome/inc/builder/shortcodes/templates/message_box.html","0","�P�� �9��թ�U�<","�P�� �9��թ�U�<","�Z:W�x�+�5�^	���|��z���>;!��","","0","?"),
("$\n�7�񇟿� \n�NZU","wp-content/themes/flatsome/woocommerce/single-product/product-gallery-thumbnails.php","0","��^�u�#�\"�d��","��^�u�#�\"�d��","x�ߒټ��^D�&W?�����;n�́���W#�{","","0","?"),
("$7y���]���N�","wp-content/plugins/wordfence/views/scanner/issue-suspiciousAdminUsers.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P�<\0cA�F�L��N","R]`�[��2��#�X��Éi(�E\n`��rJ�","","0","?"),
("$Y(֤q�\0T��2","wp-content/themes/flatsome/woocommerce/content-product.php","0","�K�+H%mg���o�","�K�+H%mg���o�","[�üů�M�өu`+��u���J������y�","","0","?"),
("$����0S
("$��S�Ck��d�W�","wp-content/plugins/wordfence/views/scanner/issue-timelimit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J7^��њO���i","5Qg��wB��H.f��<�<Zh&�V�","","0","?"),
("$�{i����&h���ˇ","wp-content/themes/flatsome/inc/admin/customizer/img/category-left-sidebar.svg","0","ۃ�����l���IOH��","ۃ�����l���IOH��","�7\\Fӫp(�f��4o/�`�(j�;�_Gw","","0","?"),
("$����5@��Y(���&�","wp-content/themes/flatsome/inc/admin/customizer/img/featured-posts.svg","0","��6R��`���j\'I�","��6R��`���j\'I�","Nx�n��_���1�X�������,?�����","","0","?"),
("$���C����/�9��","wp-includes/class-wp.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����F��(��<��","W{�׿�>ݴ4�%��%\n���D�3z2�+�z","","0","?"),
("$����@�Y8�	Z=��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/simple-right-light.svg","0","�ޝseJ�\"�F�\n:�","�ޝseJ�\"�F�\n:�","|�q52����~_�*\n�nR�}72�?�\\��oH","","0","?"),
("$��-#q`�l�$W�ۉ","wp-content/plugins/wordfence/lib/live_activity.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2>(�]/@ꏞf�","�Qը���W`~��N�_w��ID$�J3�","","0","?"),
("$��|��c�� \\~��","wp-content/plugins/wordfence/views/scanner/issue-control-edit-comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," ;͏(vp��oq���","z-\0��A��j�����@� 8c����T&՞�","","0","?"),
("$�ϫ/����!��C�","wp-includes/IXR/class-IXR-introspectionserver.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2Ua�w�<�Iw�p�O7-","��\n����C����PEQ%�D
("%����7��娳�","wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�y�FH��\'\'n��ގ�","KD[Rஞ�� ��5�:grP7*X","","0","?"),
("%-?��3�����h�=d","wp-content/themes/flatsome/inc/admin/customizer/img/product-gallery.svg","0"," |�<�zl�g@֩9�"," |�<�zl�g@֩9�","�l\ng�R����/߹ɉ�z���(|a2z�Ɵ�W6","","0","?"),
("%2O�qT���C�8���v","wp-content/themes/flatsome/inc/builder/shortcodes/gap.php","0","HHQ�$�u��\'p�o�","HHQ�$�u��\'p�o�","�e��F-�$�>m�^�y??������臂","","0","?"),
("%<�oN�㈪�\"�Q�z","wp-content/themes/flatsome/woocommerce/checkout/header.php","0","���|]*�Ot��","���|]*�Ot��","fv�i�E>U�������~	ɉ�F����D@�2�","","0","?"),
("%B��\0<�fT���\0��","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-mega-shop.php","0","\\��4�*�	��T","\\��4�*�	��T","5h�X]*δL�2�Pw��zHzC<Oi����h)�","","0","?"),
("%D?�m1QZ\"�cAXQq�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/Insights.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�G���=���1\nV�0�","8}�>��k6`��uid���eH�P�^�","","0","?"),
("%u�v����T�u�6=��","wp-content/themes/flatsome/inc/integrations/wpml/flatsome-wpml.php","0","Ë���UI$���
("%���q4(\\D��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Railguns.php","0","�9�X�Ԥn�3�?��","�9�X�Ԥn�3�?��","oY�q���!��*�n9LQ#A4���5C�6*�Z","","0","?"),
("%���N\n*كG�7�","wp-content/themes/flatsome/inc/shortcodes/search.php","0","����,.�/Q22��z�","����,.�/Q22��z�","�]�g��m>�(�λ�ߖ#�02;���=","","0","?"),
("%�L�ݤ���Ild�B�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-multicolor.php","0","��#Z|U�
("%����8^�V<�t�","wp-admin/edit-tag-form.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�7?�^qH �m)ΰ�\\Y","eA`�d�JS���l
("%���:1k	����","wp-content/plugins/wp-rocket/vendor/composer/autoload_namespaces.php","0","5�,}vĨ3��G��)�","5�,}vĨ3��G��)�","E�r4@\0�ԡ$��z��3�$l���`i�ex�l�","","0","?"),
("%��=��SQ�!��_�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Debug/DebugCodeUnitTest.php","0","��X|=w	�(�d1K;","��X|=w	�(�d1K;","��8#����*Xw�{cs#d�Gϯ���XE穓","","0","?"),
("%��6Ҧ���L���1","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/LoadBalancers/GlobalPolicies.php","0","�\"$�]O��(�g�","�\"$�]O��(�g�","^Q��\"����]�C�ҋ��k���sʭ�x","","0","?"),
("%�Pb.���8�Gd�t�","wp-admin/css/media.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g�S��Q�R��\'+:=�","4�WC�j��셓Ij���_<y���F*�m8���{","","0","?"),
("%�[���!���oٵ","wp-content/plugins/wp-rocket/inc/functions/formatting.php","0","~!\0��ȦTL��I}","~!\0��ȦTL��I}","{B�`?&o����/q{�$�O�\'��������","","0","?"),
("&��?w�5��FS��Y","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/AbstractNewFeatureSniff.php","0","����n.�\nMud���","����n.�\nMud���","��}{Hi�E�����}󽡃��*Z���*�","","0","?"),
("&*���dĆָ�	�H5","wp-admin/images/align-center.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","	�ݶ�4y�dY1�e�","�놽N3�X!��lj�h`�����hA]��J�","","0","?"),
("&=�+t�\"�/k\'\n","wp-includes/js/jquery/jquery.form.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E4�G��n�4^0��	","2�;�,��k��?Lp�93L�ݜG�Dk_","","0","?"),
("&Ao4�I����Ǣ�l�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-palette.php","0","\\V]����D0%�
("&J�O̞A+�4m�Kmݮ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Formatting/MultipleStatementAlignmentSniff.php","0","b��9U�h �ł50","b��9U�h �ł50","�W/�d\"\\��b�	�xzm�
("&ee�\n3K���vZ��","wp-admin/ms-delete-site.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���`�ʡ����T�N","���yKY\"�\\�T5QT\\�	d�\"� �pE/�^","","0","?"),
("&fs2��p��x��Q","wp-content/themes/flatsome/assets/img/payment-icons/icon-paylife.svg.php","0","�;Yɯ9b������f","�;Yɯ9b������f",">���~��)�a�[�\0���D�V!�d��l�","","0","?"),
("&t!0^g��bJ�c,>3","wp-admin/upload.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�B}7R�g������","PzL�~k2������a	1o�0��(�R�v��","","0","?"),
("&���ɚ%��)�W&�i","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/RepresentedCountry.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">XVD����m�|P6\n","��l=�b:џ��	R�Z���	�����	��6","","0","?"),
("&�C{m�JS^R,\0m��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Arrays/DisallowLongArraySyntaxSniff.php","0","��U�����,_�o��g","��U�����,_�o��g","D��o�|�M�W	����/S�t�������ܣ","","0","?"),
("&�eP��o�\"�w��","wp-content/themes/flatsome/inc/admin/options/header/img/header-simple-center.svg","0","�+ +�����\\��q�","�+ +�����\\��q�","A:�\'7��D�5@\0t�c��t�-�k�","","0","?"),
("&���Rw?~�j�hJ�D","wp-includes/Text/Diff/Renderer/inline.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\n�n5�P�����B\'�","X�U.k⻺�@-(��5�N�����V","","0","?"),
("&�\nYm�K��=�7�","wp-content/plugins/woosidebars/assets/css/admin.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","
("&��]0W��\n)�=��","wp-includes/js/tinymce/plugins/directionality/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Er�HD��D��3��@","<����o�@�:����-�Eg����)6^Ѽ\'��","","0","?"),
("&�`�O�Q5�Q�43�","wp-admin/theme-editor.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�%[4V:%h!�=%w�","|?o�R(C=!8�&��c�u�ܭ��3Ͳ�a�ó�","","0","?"),
("&���	P�shcusS","wp-content/wflogs/attack-data.php","0","#ح\n���y�Ib�
("&�vA��Q��c��qw8,","wp-includes/theme-compat/header-embed.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g�+��x��&�wf�X��","��e�鿎i×���#�=�4�w�NrbQ","","0","?"),
("&������8xk^y|�L","wp-content/themes/flatsome/inc/extensions/flatsome-cart-refresh/flatsome-cart-refresh.js","0","~��49c�A`r��,","~��49c�A`r��,","����\\�T�%=vƚ&Ka\'�wI�֠�iլW:x","","0","?"),
("&�El�TH�����&1","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/EndFileNoNewlineUnitTest.1.js","0","��9	n�`�\'�K","��9	n�`�\'�K","���8;б+=�9cڗ4gh\"�3ٺ�8&k�Q��","","0","?"),
("&饱����W��؀�|�","wp-includes/widgets/class-wp-widget-links.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,j5�G_bo�-�!","�)�D5���1\'�\'\n��v�b*�j���x�9","","0","?"),
("&�Y���z�q�[F�f@�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/WebService/Client.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","*���k�������","�5W�F^���R߳#(��)ax����C","","0","?"),
("\'i����\'�ay�","wp-content/themes/flatsome/inc/integrations/sensei/sensei.php","0","u��|]���il9H","u��|]���il9H","2oO��[>��$�u���z�e�rh�P���\"�ND","","0","?"),
("\'IH�4g/~N̳","wp-content/themes/benh-vien/template-parts/posts/content-single.php","0","����l~�
("\'=!Za��a���jU�Q","wp-admin/css/site-icon.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���}�E���p0lu","i>Ӻ#�&�2Z�\'��K(*�����","","0","?"),
("\'Ac���,	~�6��ܦ�","wp-content/plugins/wordfence/views/onboarding/tour-overlay.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:��%� �);�\0","��\'ġ맪���.s\'��sd�4�^��I","","0","?"),
("\'M��w�񑍷���
("\'f!ސ,�\'��=!�m�","wp-content/themes/flatsome/template-parts/posts/partials/archive-title.php","0","��+��\'ܗH��C;�Z)","��+��\'ܗH��C;�Z)","���xN���Je�J\'
("\'���� �o���S��","wp-content/plugins/wordfence/images/icons/ajax3.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","mw�ߴtꍓ\'\n���s","�dz��\n�yK�Ʈ��\'#]�x	VJR��.=:","","0","?"),
("\'�Lz�bun\nB�]s�B@","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/DiscouragedPHPFunctionsSniff.php","0","\'��� ί��$j} ","\'��� ί��$j} ","
("\'�Z�^�|,��_+?t","wp-content/plugins/wp-rocket/inc/classes/background-processing.php","0","�/��e#8æ�<��,Z","�/��e#8æ�<��,Z","�$`:�j!k�l�N�����o-ŸC�X��6�","","0","?"),
("\'����_iYm1��R","wp-content/plugins/wordfence/views/scanner/scan-results.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������8΂��,�\\","��SHS�6��p����_2�*�
("\'����>�t�;7J�O","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/select2.js","0","9~!��ץ�95��t�","9~!��ץ�95��t�","�B?���i0��s��
("\'ᥜ�W��R�,Ҹ��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Arrays/ArrayBracketSpacingUnitTest.php","0","������O-�{�^��","������O-�{�^��","�f��n|*���@Ω�+��N�}�n���\\c�m^b","","0","?"),
("(��g%\0��4��l>��","wp-includes/js/jquery/jquery.schedule.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","&��T�k�f؞���","��?��vEʔ��wj���C�P՝��_��","","0","?"),
("(%n�/� �L9)D�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/CSS/BrowserSpecificStylesUnitTest.php","0","�6�n��H�Vk%�","�6�n��H�Vk%�","4�0�~,W�4���,b�K]#h�<���8��Q�","","0","?"),
("(/`i�M�o�6�K=�","wp-content/themes/flatsome/woocommerce/myaccount/account-links.php","0","��\0d�Ո�..�R}��","��\0d�Ո�..�R}��","�M��ZhM�����3U7n[t2���<�Yd","","0","?"),
("(?���>��S�N揚�&","wp-includes/images/media/default.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-����I�B�h�@���b",":�oL�JDj��$->�i��\'�6n֠��Ui","","0","?"),
("([d��������BQ��","wp-admin/js/updates.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-VR��NR���1{9","��1UK86��\nR)���+faR�e��u8?�P�]","","0","?"),
("(p��Ǯc���9�F","wp-content/themes/flatsome/inc/admin/customizer/img/cart-icon-fill.svg","0","���F�%;���a���","���F�%;���a���","��m:tݱ&��*t�A��/�FֲoN\\�D�fv","","0","?"),
("(x*J���,�LÛn�<K","wp-content/plugins/wordfence/images/icons/arrow_refresh.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","k�w�`�`�|�}$G��","u�/2/����@�H�_Ilh����/�aU:�	","","0","?"),
("(~6vqV�0�{�\"","wp-includes/ID3/readme.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����Ɯ���VLN[�","��>���/fq�����S�3#S����UO�","","0","?"),
("(���v|T�— ¥�","wp-admin/includes/screen.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�z\0�#�l�;�!�","a!�Mtd�����L���CɈ�k��z��EǑz","","0","?"),
("(�h�8�\'(���FO��H","wp-content/themes/flatsome/inc/admin/kirki/modules/post-meta/class-kirki-modules-post-meta.php","0","��C�]��q�� �<��","��C�]��q�� �<��","W��;�U�y��LVs!3�ێ���1�gy��)��\0","","0","?"),
("(���;qʋaY�ْ�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/FunctionCommentSniff.php","0","��
("(�,\0[�7����34","wp-content/plugins/contact-form-7/modules/count.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ǒ2K���U�T��ER","�).�>�,�S���c�����G�d�9���\\YO","","0","?"),
("(�^�3N������3","wp-includes/wp-diff.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Ң��IC����%
(")�	�騅�5�u�¾N","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/NamingConventions/UpperCaseConstantNameUnitTest.php","0","�_Y����]�y�z_","�_Y����]�y�z_","�F�rys]�kl��<|h�j�^.qM�z���<N�","","0","?"),
(")���|�{4�+]�X(","wp-includes/Requests/Exception/HTTP/411.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'�R��M�.�Z`G�","���U�^����9p��&���`�nM{� n�L","","0","?"),
(")_����~L��>���<","wp-content/themes/flatsome/inc/builder/helpers.php","0","�O�aW#�� �:�","�O�aW#�� �:�","&4�R�%� �\n�ԂV%�no�-ψ�^Ԁ�O�","","0","?"),
("){�jW-_�Q=?�GlҢ","wp-includes/media.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ޫ\n8F��U�dM��","(�^Rm��ė㋋
(")����ᔩ�ˍ�a�0","wp-content/themes/flatsome/inc/builder/core/server/helpers/templates.php","0","����R�@��*�ys","����R�@��*�ys","����|�(;`����
(")��2�(��b��P-3�","wp-content/themes/flatsome/woocommerce/myaccount/navigation.php","0","cL왡C)`D��3.�","cL왡C)`D��3.�","�=h)�Yr��@����4�}t��oī�Y?	","","0","?"),
(")�Oz=�u����˷","wp-includes/rewrite.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}�Y��*��*={�","(C����5��Ң+Lۑ�[�5\"��ۂ�","","0","?"),
(")�#\'�������bL�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Objects/ObjectInstantiationUnitTest.php","0","mS��@��*�����\'P","mS��@��*�����\'P","��7�>�?�פ��Q���wd\nf������","","0","?"),
(")�6#�_���̟SAF�","wp-content/plugins/wordfence/views/scanner/issue-control-repair.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","[о�ڰ��A9(�n","ߑJ[4���#�~H�8ȉB�9+��/mv��","","0","?"),
(")���]���Z$�P%","wp-includes/embed-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�>��EVJ{;6�!*","���OX[	˩�
(")�f><z0-AUi�","wp-admin/js/wp-fullscreen-stub.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��(�2Tq�\0�W��%�","�N��^�;��&:�����\nW1*U�yKe�","","0","?"),
(")�\"���n84\n;V�","wp-content/plugins/wp-rocket/inc/common/purge.php","0","n�~��4}XB�X!F�","n�~��4}XB�X!F�","8�1�6�\n���U�
("* a�F���4��u�vU","wp-admin/images/menu-vs-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J�ZY<�i�Y��b�","\'��F��єE\0����7�ɡ��#�>sePض","","0","?"),
("*?��2�հ{��٫)`j","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/LogicalOperatorSpacingUnitTest.php","0","�$9��Q�Ʒ0�","�$9��Q�Ʒ0�","�~
("*X�q�(\\R��;F��","wp-content/themes/flatsome/inc/admin/customizer/img/portfolio-title-breadcrumbs.svg","0","H c���z��w�� �","H c���z��w�� �","��C\'Tu!/(��k� ���	��Bt����`","","0","?"),
("*\\Tҝ)%]�yiD+","wp-includes/Requests/Exception/HTTP/402.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","`�Y�QP�\nz����G�","�g��NQ	�������/���	�y5������θc","","0","?"),
("*k,7lܛ1�~�p��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Formatting/OperatorBracketUnitTest.js","0","��!|�񭂷��ҡW","��!|�񭂷��ҡW","�g��O\0Q�Q��-�z\"R����
("*��h��c�I�6","wp-content/themes/flatsome/inc/init.php","0","Lr?�mX>����","Lr?�mX>����","�o$�EIH�
("*��-3�u��E�[�O#","wp-includes/images/down_arrow-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�s���$�6(�@�a","�L�\n��A�}]ز�C�\\�i����j���M�^","","0","?"),
("*��jx��7�X��","wp-content/themes/flatsome/archive-featured_item.php","0",">�a�~/-g��p*�",">�a�~/-g��p*�","nh{U�E�\"�B����I�)옂���Z��","","0","?"),
("*���L�m&&2��\nb","wp-includes/js/tinymce/utils/form_utils.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���l�U��T����Li","vL���us<*r�WҪ����.\0|�Rg����","","0","?"),
("*�m���C�˳�����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/ForLoopShouldBeWhileLoopUnitTest.php","0","�V-(�^	�X!fB�L","�V-(�^	�X!fB�L","��k\0aY�DMn�o�l�kh�.�$pZ�n�-8��","","0","?");
INSERT INTO bz_wffilemods VALUES
("*�v���%�
("*�07ѥ1O���َ8","wp-includes/js/json2.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s��{N�|EO�0�","q3�..�j G\\R�nݼI/T��-�","","0","?"),
("*�	�ą�����\\�","wp-content/plugins/wordfence/views/options/option-toggled.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","]KrY����w�B�","�k�nS	3�&Y�=����Ձ��_+?Hƪ�%","","0","?"),
("+\"���s����","wp-content/plugins/contact-form-7/admin/admin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","S�s\0��P�qxg�)�q","n��1��:�AP=&�������$9B����\"X","","0","?"),
("+���[�Uj�e5��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/LineEndingsSniff.php","0","�*ս\\n����J�v","�*ս\\n����J�v","!U��}kg�y�!b.�+霬:O����)�9N","","0","?"),
("+&D@�+�_݉���V","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-bottom.svg","0","�4����Y�t?+�2t","�4����Y�t?+�2t","؄	*s}\0�%=�x�l����z��6:��]���","","0","?"),
("+(���@�[�R��T","wp-content/themes/flatsome/inc/admin/customizer/img/product-title.svg","0","58cGri�*�8E�+�","58cGri�*�8E�+�","m�Ngm[��M�zi7~*�Y?vz&�=���W/�","","0","?"),
("++��u���V�67Sc�","wp-content/plugins/contact-form-7/admin/includes/tag-generator.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","M�V۹��am�Xu��(","���PFx����Ġ+
("+5;j����\n�9-���","wp-content/themes/flatsome/inc/builder/shortcodes/values/animate.php","0","��	�+����/�a�F","��	�+����/�a�F","�{�hR�U�Z���\n�\\��=&׬���h","","0","?"),
("+9���[BU�E�e","wp-admin/js/updates.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��� �h��4��j�","�[s�YJr/�2�9�X���+��J�6Ou{","","0","?"),
("+QM¤�Un�\\Ik�m","wp-content/themes/flatsome/inc/admin/customizer/js/customizer-reset.js","0","U��2���;=3��vC","U��2���;=3��vC","�.�$���n%���\"��S���C^�Q\'H$","","0","?"),
("+b\n��Df�X2���Y�C","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/ConnectionType.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d���S:�-N�!Q��0\"","�6�)?��^\"F�*�g|��&��R�Π��\0	","","0","?"),
("+b�zJW�o�`)�b���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Formatting/OperatorBracketSniff.php","0","�b؀$ni���ˌ%��","�b؀$ni���ˌ%��","0�}݊&ND|%]���C��1;撲S{�&%","","0","?"),
("+�~8��r9��
("+�%��)hE���(�)>","wp-content/themes/flatsome/woocommerce/single-product/layouts/product-right-sidebar.php","0","	��27��B;QE%Vx","	��27��B;QE%Vx","�e�t�����-\0Q=~\n{Иv1��h� ��","","0","?"),
("+�~ɘ�����V���r�","wp-content/plugins/wp-rocket/inc/front/js/lazyload-8.5.2.min.js","0","Q����]�~�(�","Q����]�~�(�","�j%�%���� g�G!�-KRT�F|�I+j6얓","","0","?"),
("+��G*#�������f�","wp-admin/network/site-info.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","z�9�\0��9ʞfn�]","mG�͆!|�KA-�wȭ
("+�D���Ze}��","wp-content/plugins/wordfence/views/onboarding/plugin-header.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��%�X8 mx>&��","�[�\0���?{K��E���3�@�#����%�/!}","","0","?"),
("+�>Z�o�{&��
("+���t�%R?������","wp-admin/network/credits.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��T%>r��l�1q\'��","<C�%�9>���� �=�����Č�Z�I�_�","","0","?"),
("+�5�jΈ�\0c%���t","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/WhiteSpace/ScopeClosingBraceUnitTest.php","0","���v#5�z���y�
("+�|��3I���jEDC��","wp-content/themes/flatsome/assets/img/payment-icons/icon-atm.svg.php","0","[�_���Xz]?V��,�","[�_���Xz]?V��,�",">(Srē���-	�d\\p氂�\'�R`�U�\\K\\GE","","0","?"),
("+���i<:,��.","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Commenting/ClassCommentUnitTest.php","0",",�{���_m���xg#�",",�{���_m���xg#�","��{��M�Z�0+�%�������u�]\n�","","0","?"),
(",��J\'�AWh��","wp-content/plugins/wordfence/views/options/option-label.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���`�L���gf�","��_�
(",��N����gt����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Arrays/ArrayDeclarationSniff.php","0","�m�W�U��/�ܷ��U","�m�W�U��/�ܷ��U","t�Z��5��b�RB׬�с\'$|���G��·","","0","?"),
(",R�<8���r��c��","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewLanguageConstructsSniff.php","0","��pJB���zm�2�
(",\"PD\\0ޣa{3��>C�","wp-content/themes/flatsome/inc/admin/customizer/img/icon-outline-round.svg","0","8z��:@AS	�.w(%��","8z��:@AS	�.w(%��","4�aĒ�i}]c��T��)Bp���S\'*Rp�","","0","?"),
(",<�� �?C]�0A�","wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ͷ���U裦�h�","��ehӧ�&έ��A�3�+WTh��\n)�?��","","0","?"),
(",E�cȌfy�*����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/ClassCommentUnitTest.php","0","R�i\0�_�\n�n�5��","R�i\0�_�\n�n�5��","N\\��3ӷ�=f_~����G��.�f����-ψ","","0","?"),
(",L���՘���rL\"ʐ�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/InlineCommentUnitTest.js.fixed","0","��C��Q����u
(",P5�Xp�˦6�M�G�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-2-col-full.svg","0","�׊:\"$jh�r�ad�","�׊:\"$jh�r�ad�","ծ�^�<�z�WVCPL2M��Գ-�:	��u��","","0","?"),
(",U�/P�c�>׵��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-link.php","0","��/\0��@�g���d�","��/\0��@�g���d�","�-�b��y<��R����^D�ܳ�&�!��3","","0","?"),
(",zS�S��Xn=�*���","wp-content/themes/flatsome/template-parts/header/partials/element-account-sidebar.php","0","Z!�k����\n��	l","Z!�k����\n��	l","��^5[L��r���rp\0�	q���LD�8�Q","","0","?"),
(",���@��hj�qrޒ�","wp-includes/ID3/module.tag.id3v2.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","zaǬ�/_���","-6��,��7ʎ��*�f��aì�ҎFS�z_�","","0","?"),
(",�hɃs?4B[�^՝","wp-includes/SimplePie/Cache/DB.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Y�OU���.�b���","���d�*Y�®��s��<!)܃��J��¬�","","0","?"),
("-���1�qq�l+p�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Scope/StaticThisUsageUnitTest.php","0","[�Q����{(\\���X","[�Q����{(\\���X","�G+��dέD���(��8�z4�G����Ô�t","","0","?"),
("-KT�+kb������i","wp-content/themes/flatsome/assets/img/payment-icons/icon-ogone.svg.php","0","i��S�2p�\"���Y6�","i��S�2p�\"���Y6�","\09@W+9VR����+��p����%����@�Q��","","0","?"),
("-8��]19͈ˁ<��f","wp-content/themes/flatsome/inc/admin/envato_setup/js/envato-setup.js","0","���ͪ`s�3�Z�%�I","���ͪ`s�3�Z�%�I","�ۚ���l���ogϪ�F�h�>�	_\'�","","0","?"),
("-J`�1
("-LTo�jU͖�=iIz�8","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Arrays/ArrayDeclarationSpacingSniff.php","0","���H�f��m��6�","���H�f��m��6�","�)����xv��$.��i��&�����hՓ�","","0","?"),
("-W�K��Q,�Q��z","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/slider/revslider.php","0","sj�@�A�쇣9�3>","sj�@�A�쇣9�3>"," �@��27�?h��A0�&���}\nh��Vc�","","0","?"),
("-Y��v��OɒX�lPp,","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewMagicClassConstantSniff.php","0","X�3��S/�0\"����","X�3��S/�0\"����","7�e�G+Ր�:��n���8E�dW9\\ER��","","0","?"),
("-`���nV1����A��","wp-content/themes/flatsome/inc/builder/shortcodes/map.php","0","N��䖄j��Nj��r�9","N��䖄j��Nj��r�9","D���K�{Z\"�-�_���(��#�w��mw","","0","?"),
("-jާ� �����~hyb","wp-content/plugins/wordfence/lib/menu_support.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�yy0�\'O�f��x2;�D","��.F�!x��,p���	��[\'�E�̻�,�","","0","?"),
("-kdϯ���X�w\\7���","wp-includes/admin-bar.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'c��O(Y��E�Re.�","���b�ڥ�Ҟ��Z�!�����","","0","?"),
("-����Ǹ�%w=��","wp-admin/css/colors/ocean/colors.scss","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|[���l�|ٱf%h","�ɮ��1�uZR�H�6��I��
("-�ABq��
("-��)7�5y�8c��Wv�","wp-admin/about.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\nq.���~�/[��2ATB","�Yp[��֯��OP���$�o&�����49�f","","0","?"),
("-�_��+��Yn��S","wp-includes/js/jquery/ui/tooltip.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","D?hi
("-��c��d�q��3��","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/fa.js","0","��
("-�f��4]�#\"u��l","wp-admin/css/colors/light/colors-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,��DDr@�����N�","�?�Ց��ӲX���U�A]*�2�Z;{|A","","0","?"),
("-��藂��Y{]ns�","wp-includes/css/wp-pointer.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\\�6��J��S�","*��y�����t����7,�\0W�,f�Gf�E^�","","0","?"),
("-͡EC#�D&H��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Formatting/SpaceAfterCastSniff.php","0","٫;R�ĐO�A1l","٫;R�ĐO�A1l","z����a��N����m��?��s��ŕ90RD","","0","?"),
(". �\0_oE�]A�_�0PJ","wp-includes/js/tinymce/plugins/wpautoresize/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d�\0Xc�O�@p��%�","�oL�N꼨�O���(�S�̓�w-�Qi���","","0","?"),
(".6�s���|�J[bK ","wp-content/themes/flatsome/inc/builder/core/server/helpers/templating.php","0","f2���WX�g1*]�3","f2���WX�g1*]�3","��#ɭ��y��ׁ��mشB��`���ԕ��U�","","0","?"),
(".IhU���3��+B��","wp-includes/images/admin-bar-sprite-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Q����8��o��","*E���Ts���al�^�p��X���Z\0��","","0","?"),
(".x��Ϯ��7����_�","wp-includes/js/mediaelement/mediaelement-and-player.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����x��6���T F�","�\0<�&\0��<J!6��q�Q��m���8��I","","0","?"),
(".�麉D0�u�L-c�","wp-content/plugins/wordfence/views/options/option-toggled-segmented.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","B�|ssGo1����x","\n9VW �����|:��]\\��)����d�^U�#","","0","?"),
(".�E�[J��l�x��","wp-content/plugins/wordfence/images/forward_disabled.jpg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","M_��Z?�N)�Ҋ�:�5","���/�<>O&�ȕJR݇e�}�(��m","","0","?"),
(".�����5��.��W�w","wp-content/plugins/wordfence/css/wf-ionicons.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Al��s���j�⯃","ג��4�ˮ�v�����M�`�V���Z�","","0","?"),
(".�h��Ā쌇`_9�","wp-content/themes/flatsome/woocommerce/notices/notice.php","0","��Mcx�Դh!
(".�N��T
(".�q�E9\'�漥X{�","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-settings.php","0","8�S����W�LgI���","8�S����W�LgI���","݁�x-8�)�C�[:���&�3�hNG2�8O�w","","0","?"),
("/<ا^ɼf}�\"���$�","wp-includes/images/media/document.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v�4�8�Αy�6�d�","��ø`��������f	I$ _Z�X�\"0
("/>�>v��.]�|�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/PostStatementCommentUnitTest.js","0","�R�������맘%^","�R�������맘%^","3U��;��%��<�4��_I~_ގ�b�J���","","0","?"),
("/R6�\\�=\n������","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/product_lookbook.svg","0","�a�A�I7E��W�","�a�A�I7E��W�","��)j���w����H�G������͒��a","","0","?"),
("/U!�kwL�-��?թ","wp-content/themes/flatsome/woocommerce/global/wrapper-end.php","0","�;7��^1)�b��?�QX","�;7��^1)�b��?�QX","�]zK$#m���٩�)98��F	ФG�\'�","","0","?"),
("/�9��
("/��h�_��#�v����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/OperatorSpacingUnitTest.js.fixed","0","b�<?��3�\'����Y","b�<?��3�\'����Y","��J�M�̨/�@%�ɧ�W����q&!Wo�","","0","?"),
("/�D�c��l��ޏ�","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_65_ffffff_1x400.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","H{pN����;��R�","�nn���zTM_�n�Ɯ<��B�@x6L��9(","","0","?"),
("/��}㦿L�;?�w\\","wp-includes/Requests/Exception/HTTP/401.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";*�������?�d��@","YV$����/���@=������V-��dc�","","0","?"),
("/�s��C4��������","wp-admin/network/setup.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�t�=$��l�y�2R","Q�\n��0.s��$�������c��\"tZ^�","","0","?"),
("/¬1�~5{�\"�f�Y(","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-image.php","0","�z1��\n��� ��\\�B","�z1��\n��� ��\\�B","v�\"�/q�m3-��Ls9���\0��I�D�","","0","?"),
("/�s����NF�>�6�","wp-content/plugins/contact-form-7/includes/css/styles-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P�P��;]W��׺p�h","��NzĊ�JeAς�J>0���vИ���P��3","","0","?"),
("/�෡���6ڃVf8�","wp-content/themes/flatsome/woocommerce/single-product/sale-flash.php","0","h����W������b","h����W������b","G:j���32[�k��l����_����X�","","0","?"),
("/�o�:��h��3�)�\\�","wp-content/themes/flatsome/inc/admin/options/header/img/header-wide-center-simple.svg","0","�cl0R���^�k��","�cl0R���^�k��","�\\�,uW��@�O]�m�	���(.���۷gi","","0","?"),
("/鹠���ΰ1�iw��","wp-includes/images/uploader-icons-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���&-��O��Õ�~","���r�\0����\'_>��6��QW��4ڠR��","","0","?"),
("/�+pud��I�\\\\S�g","wp-content/plugins/wp-rocket/inc/front/images.php","0","Q^��ѩ�_)�4�j�","Q^��ѩ�_)�4�j�","|�̶z�Lrb�A�o㵶$����7l��·","","0","?"),
("0+�`|�n������","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/forms.svg","0","�Q�B8�u.����-�","�Q�B8�u.����-�","�P���\0��Ux㷇�`�k��pS-�","","0","?"),
("043p��2�P>�Ҥ�>","wp-content/plugins/contact-form-7/includes/form-tag.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���M�#�ϻT�KR�","9�)�_�<���UQ�m���E��Vی�ʆ�","","0","?"),
("0<�����lڿ��J��","wp-includes/js/wp-backbone.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�x��\n%�6�h�)��9","��Cv�=��6Vzk��.�j���UaZ�J`(","","0","?"),
("0W!�\"��e�lH�o�{","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/ClassDefinitionOpeningBraceSpaceSniff.php","0","m�\"��W%�fh�0","m�\"��W%�fh�0","(:@�3����Q%x����i	��zG�O�","","0","?"),
("0]�qK\'�f�x����","wp-includes/js/tinymce/plugins/compat3x/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L�{��p�׶�Ҡ","��m�澑�[�S3��\'�J�*��Sts�j���","","0","?"),
("0`�������W\"�?","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-9.svg","0","�r��:g�а��
("0j�Vƽ�f:�5��`�\\","wp-includes/js/customize-selective-refresh.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���+/=�������","�Ó3{%a�bJ���������#�X?B|�\n","","0","?"),
("0���Cd�NUz
("0�#�w�9���
("0���E\00���X�H","wp-includes/js/colorpicker.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","� ��Y��b|$�@q-","#,�(UoދQ��r
("0�dۦZP��2��o�","wp-content/plugins/wordfence/lib/menu_firewall_waf_options.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��u��a�~�v��","��/[+��!)��f��h�fĳ�X�F8��/H7","","0","?"),
("0���&���M��Ue2j","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_dadada_1x400.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","do�4˨ȶH}& _�","޸{��\"W�hdZ~�ߧ�.og�{z	����","","0","?"),
("1?o�x��<�?���6","wp-content/plugins/wordfence/views/blocking/option-bypass-redirect.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\"��5y� \"�\'�f","�ag�LSSPU����:����̈�p5Q<�>Fr","","0","?"),
("1@,�\n�ӭ$AERY��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/FunctionClosingBraceSpaceUnitTest.js.fixed","0","ŀn�� �J�b�
("1C�E�3�k�J","wp-content/themes/flatsome/inc/builder/shortcodes/message_box.php","0","�1�(A0��D�\'�Q","�1�(A0��D�\'�Q","fԟ�T̖�_1���ܿ���#���J�&�3O�","","0","?"),
("1U3;���i�Y��D�p�","wp-content/themes/flatsome/assets/img/payment-icons/icon-payu.svg.php","0","p�|w�,\0(P�[l��Wa","p�|w�,\0(P�[l��Wa","J�p�^�*���X�eA��5��#�Mi\'\\TB[","","0","?"),
("1s�)6�Ӷ���C��Η","wp-admin/user/admin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","p-R �VEo������$","�٣j�t����������/��<��
("1�&(�)���_\"絚3�","wp-content/themes/flatsome/inc/admin/options/header/options-header-main.php","0","<~���E]PTu��ѱ","<~���E]PTu��ѱ","n�����Hx��<\0eI�,��.-*ea�y","","0","?"),
("1�ۻXo��������","wp-content/themes/flatsome/inc/builder/shortcodes/values/image-formats.php","0","w���5�)Ҧ!$�?)u�","w���5�)Ҧ!$�?)u�","�>T�����
("1���B����/���","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/AbstractFunctionRestrictionsSniff.php","0","���\\$��Ip�-�\"","���\\$��Ip�-�\"","�)��0��m�nܭ;��W��R��2�7^8:�V","","0","?"),
("1�s�}ވ=�d�
("1�EfQ�v#)�\n�0EkQ","wp-admin/images/media-button-image.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~���WÎ�@��b�rճ","�,��gw?{��6��U}iX�TH����%��ݬ�","","0","?");
INSERT INTO bz_wffilemods VALUES
("1��)��A���`7n�","wp-content/themes/flatsome/assets/img/payment-icons/icon-paybox.svg.php","0","$馚\\�z�r;d\0�","$馚\\�z�r;d\0�","GH��,��(�����@�1Eݰ�z�C�8�^�w@","","0","?"),
("1��Sc^��
("1��X�/�t60^Ҁ!�7","wp-includes/js/comment-reply.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","V�\'&�) {��/�z��","Z9����d��Y�ֆ��^�?\'��Kg���","","0","?"),
("2��2�*+{�#f","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-generic.php","0","��b�\"�M��bS�\n�","��b�\"�M��bS�\n�","��*xa0������YZ���g�M04��","","0","?"),
("24c������$�&WjK","wp-content/themes/flatsome/template-parts/header/partials/element-wishlist.php","0","�y�d G
("2<��!�)S@G���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Formatting/SpaceAfterNotSniff.php","0","cpV�3�4��6Оz�6","cpV�3�4��6Оz�6","����m>��Ef�V� Wu����v2	���&","","0","?"),
("2=\0k6,�l�l4ͻ�q","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-number.php","0","^���J�6�XK�","^���J�6�XK�","E��T��6���-Oپ9��W\"c�+�(��","","0","?"),
("2@�j�j\0�kӲ��Ә","wp-admin/includes/template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�n�|�߯4\0co{w�","?�\'�����\\֊`z�d/^��+ƗZ�� �Ή-","","0","?"),
("2C:��_�~�1�s��","wp-content/themes/flatsome/inc/admin/panel/sections/tab-support.php","0","���:�)�Yc��R�C","���:�)�Yc��R�C","�p_[A�t���Ғt�V���J��L�ot��{|","","0","?"),
("2j�L,���W
("2r}�V�ĥ$^���n/","wp-content/plugins/wordfence/css/images/ui-icons_777777_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h�^n=(��&��݂�N&","S��DIB�z�_-?(Y��pE�y�ƹA�","","0","?"),
("2���Ͽ�\\�$I4��","wp-content/themes/flatsome/inc/admin/options/pages/options-page-meta.php","0","���߲�z���BCCZP","���߲�z���BCCZP","OY/m���ғ�q̱?�Ȑ�Hj�������f�,","","0","?"),
("2��㺨a|F�l3]�","wp-includes/customize/class-wp-customize-new-menu-section.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","w�������v�D���b","�߿��.���eH��q��\"8=˹��A$�P","","0","?"),
("2�v��\'��9
("2ģ��_�D�x���","wp-content/plugins/wordfence/views/common/block-navigation-option.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_J<�=���HI/","��K�WxDQ���\'7���ϊ�ߕW��ǫ�","","0","?"),
("2�f��bG������{�","wp-content/themes/flatsome/inc/admin/customizer/img/blog-single-top.svg","0","EΰDuf��I�ZPQ�w�","EΰDuf��I�ZPQ�w�","����dlrz\'��Z<��.��T^6�A��","","0","?"),
("2�*�`o����#�A�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/security/secupress.php","0","e��#u�fHiK����","e��#u�fHiK����","�3�@��>T�� ɚ-Hşe��n�z��Lf��","","0","?"),
("2�0mK�:r²\\0\nB�","wp-content/plugins/wordfence/views/options/option-toggled-boolean-switch.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",+���[R���ֈ","l�����FV���jFl�V��˱�V�Ǟ��B`","","0","?"),
("2��^(��ʭ�-^x��","wp-includes/SimplePie/Enclosure.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",".�B�n΍K�s]","M�H�ڋ��TY�Q��6��c��f�|h�","","0","?"),
("2�㘙7�%��9��","wp-content/themes/flatsome/assets/img/payment-icons/icon-creditcard.svg.php","0","��\"�0������G1","��\"�0������G1","���j\0F�/�����\0����ܐi������m��c-","","0","?"),
("2�0��[�I��9�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Functions/FunctionDeclarationUnitTest.js","0","=mI@ǂ6	JT\0�bTa","=mI@ǂ6	JT\0�bTa","�n���/��\\`X���qe��	+��\n؀n�TM","","0","?"),
("37&��e�/�3R�","wp-content/themes/flatsome/inc/admin/options/header/img/header-wide-center-plain.svg","0","4`�g���O�@���A�\n","4`�g���O�@���A�\n","�YS�ݮSC��B���󣔀��W��>��0n<0","","0","?"),
("3�_�#��ӷN>XE�","wp-content/themes/flatsome/inc/admin/customizer/img/category-box-badge.svg","0","`;W?k�\'��\0��","`;W?k�\'��\0��","y���
("3+z��.���6Q~]y[","wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�.Ei�$Pwo�m��","�`�7_jׄ�\nl�v��+fU��}���+��X","","0","?"),
("3_��o��I����","wp-content/themes/flatsome/inc/builder/shortcodes/accordion.php","0","�#��fqjܖ�Т�dS","�#��fqjܖ�Т�dS","�FU�5�:�u���zҒ�!�L��4L�&P�","","0","?"),
("3k��oW�5	k[mq","wp-admin/includes/continents-cities.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W|lMnWFY7ٲ{e","2ɟ��tb;6@q\'��Q��H�j	��m���ѫ�","","0","?"),
("3y#�ȝ�eR�����e","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/NamingConventions/ValidHookNameSniff.php","0","����4�`3�˺�\n>","����4�`3�˺�\n>","�G��s�\"F�%�.&3�e�-@�(�����|�]","","0","?"),
("3z\'�O��v�J&�� ","wp-includes/rest-api/endpoints/class-wp-rest-posts-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","<�ɉ�\n0�J�}�Z","��p��(�[ϱ��]�����W8#3{�C�MqR��","","0","?"),
("3�>���z�s����*","wp-content/plugins/wp-rocket/inc/admin/upgrader.php","0","M�a��OoF7\n���\0�=","M�a��OoF7\n���\0�=","�!����YN%��56}�	6�����@!�","","0","?"),
("3��B�Hޗ�]��jb�K","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Filters/GitModified.php","0","�cj(�51����8q�","�cj(�51����8q�","v/��s���i�u9lB�MA<9T���3S��E","","0","?"),
("3��M���P
("3��q/��������(D","wp-content/themes/flatsome/inc/shortcodes/share_follow.php","0","B��l��L�)��a","B��l��L�)��a","��GuM�B�v�����Q���g{NLɐ�2��F�","","0","?"),
("3љ���ˣ�_j��*[","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/simple-white.svg","0","�*f*�@\0)OE���L","�*f*�@\0)OE���L","���ӴJ��dH�m�k-=��3%!�����ўM�","","0","?"),
("3���\'���RK�Bf�","wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���G���7�(tt�@�","ێ��/Ԋ�k�O�b��<���8��O��gm�W�","","0","?"),
("3��fQ3�h�5[��W�<","wp-includes/Text/Diff/Renderer.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�� �C0�Y7O�@�GS","EWj�+��\\��=����}.��1
("3�6#���a!�Tފ���","wp-content/themes/flatsome/inc/builder/shortcodes/templates/ux_banner_grid.html","0","7�m|��(��rm�tҾ","7�m|��(��rm�tҾ","6��/��g��#P5o~.�q4�,�P�A<��","","0","?"),
("3��ng\0��\\\0	�W","wp-includes/IXR/class-IXR-value.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��f�>�5l��j\0f�","�?h������͇ X��UP�O|H$�1���","","0","?"),
("3�n�r˝J�Q���t�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/MultipleStatementAlignmentUnitTest.php","0","8���j�l�vKErK1�","8���j�l�vKErK1�","�f:��ų?5Ѡ�-w�=a��Ϫ��=���","","0","?"),
("4\n��	m�]Ŀ�Њ��","wp-content/plugins/wordfence/views/scanner/issue-easyPassword.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[�+e��[e�ϙ�fW�","QA��u&�{Ai��XP�K�[�{0�Q�k��","","0","?"),
("4��L�Z_o�P�aW�","wp-content/themes/flatsome/inc/builder/shortcodes/ux_bestseller_products.php","0","z�fVW@E�/�l�*","z�fVW@E�/�l�*","#{�7�1
("4ړJ��3q;D����","wp-content/plugins/wordfence/js/jquery.tmpl.min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\\}�\"���7ڷ��DZ","�.I�H�g\0�H!7`��gޠZ�zȄ�ž6|","","0","?"),
("48�Vt���+^X�","wp-includes/pomo/mo.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�yL�ʄU.^z3/�e","�ů�7�NG��Q�/��nA�M�*C�","","0","?"),
("4;`߯z�?	�{Ǟ@","wp-content/plugins/wordfence/images/2fa-whole.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�M���E��*�g��SG","��S/�l�~�~)6�b�OB�5�C�ִѮ�+�","","0","?"),
("4>T?n��I�_��/�","wp-content/themes/flatsome/inc/classes/class-woocommerce-structured-data.php","0","�׫V��e��~ӋЉ","�׫V��e��~ӋЉ","]k�9$+�P��uN����}��Cwdؐ%�O","","0","?"),
("4AI�n09��7c`","wp-includes/js/tinymce/utils/validate.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","CL�1?o+;���{Y�","k�H��;�\0�kC�s�	\'K�#45+eE|���0","","0","?"),
("4RT=�u�˲�h���P","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WhiteSpace/SemicolonSpacingSniff.php","0","&,v�yd}
("4To���iE��t�","wp-content/plugins/wordfence/views/blocking/options-group-advanced-country.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","䜮�`Su��8���","��h]s��U��s�j=��(G�f��v��a�cS","","0","?"),
("4a��[I�}���H�m)","wp-admin/css/deprecated-media.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Y��{�������9C\nDG","�7^ ��8�(�_��j�����3UwfdZ�","","0","?"),
("4�ֺ��O�C~ˊ���	","wp-content/themes/flatsome/inc/builder/shortcodes/testimonial.php","0","�!UJ}+�ei[��&��","�!UJ}+�ei[��&��","\"��=��c��+��������}leNQ��;K","","0","?"),
("4�xTv��n�Փ9�[$","wp-content/themes/flatsome/inc/admin/kirki/upgrade-notifications.php","0","�\n�����#�6�.","�\n�����#�6�.","t)c�j$�l�o��[��Y#u��QZ7.5���F","","0","?"),
("4��ͳ���S��*{","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Functions/FunctionCallSignatureUnitTest.php","0","��]X��̋�V����","��]X��̋�V����","p�R5D���׾����`�\0���+����4�2��l","","0","?"),
("4�Y}����5ޭ\0�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Commenting/TodoUnitTest.js","0","�8�\n��o�������\\","�8�\n��o�������\\","T�û��^����=����%���NQ��{bى","","0","?"),
("4�/���w���$�J","wp-content/themes/flatsome/woocommerce/single-product/filter-button.php","0","�s�4�E�1CA�eql�","�s�4�E�1CA�eql�","�S@���7sY{��;Z��/~[�;N�ɑ�9b","","0","?"),
("4�r��J���\0�\'_�^","wp-content/plugins/wp-rocket/inc/admin/ui/modules/varnish.php","0","X�z�x�.ڈ����","X�z�x�.ڈ����","~l�U���U�\'�DI;����!�:� F�=��׋","","0","?"),
("4�Ra@���l�E��]","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/SAPIUsageSniff.php","0","�H�7\\�p���HGe�","�H�7\\�p���HGe�","G�S��RG��`���r��H�g0UI��Z;1��","","0","?"),
("4�_��9f��T���d:","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/WhiteSpace/ScopeIndentUnitTest.1.js.fixed","0","���u
("4ڂ��L$�,K[�u��","xmlrpc.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","lS��b������2ǅ","E�\'�oS�Y?��/OxH�m��7G��&�c>\0J","","0","?"),
("4��\"5]/�ה�E\'","wp-content/plugins/wp-rocket/vendor/a5hleyrich/wp-background-processing/classes/wp-async-request.php","0","���$8Ꮨ��A0","���$8Ꮨ��A0","�\n�V�V+��M���*�����4�/�H�:�R��","","0","?"),
("5�KW8�/����1�","wp-content/themes/flatsome/inc/admin/customizer/img/badge-circle-inside.svg","0",")qG0�:�]emh܀��",")qG0�:�]emh܀��","ۊQA����_�\n��̥#t.�_��|a�SM�*","","0","?"),
("5��[wGo���=-�","wp-content/themes/flatsome/inc/admin/customizer/img/logo-left.svg","0","AvuN�P��`�j��","AvuN�P��`�j��","�	rg�%P{Jdgz��}7���$�k��Z��~L","","0","?"),
("5�?��y��<�2�","wp-admin/css/dashboard-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Q0a�\0/X������","��}���+O�Ql���9#�ӹ=h�<��qXM","","0","?"),
("58�d�`S61K>ۮ�v","wp-admin/css/colors/blue/colors-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����lG\0;��j�","P�\n���V�hGH��:�s	#�D	�\\�YR��˴","","0","?"),
("5C�)\nWu�꽝/F�cK","wp-includes/js/plupload/wp-plupload.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","r:or1]�����Hԯ^","��T��B���|�\0
("5O��
("5S{�TƁ���e�/�","wp-includes/class-walker-page.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","/뇁��s�|��ء","?
("5Z����Sμ�v�`6�9","wp-includes/version.php","0","�[�b���C����@E�","�[�b���C����@E�","g�s;�����%�Ot���J�ߐA�����z","","0","?"),
("5\\h>��w	���N�","wp-includes/registration.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��3f�\\?�dK�","���j$-��h���$ĸ���ph:���#���G�","","0","?"),
("5^�)=�C��~�C","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-group-title.php","0","qЛJܝ�����JUV|6","qЛJܝ�����JUV|6","7�&-�3�B�L�M�P�����@�7ş�?(","","0","?"),
("5`�ƗX�J�՘\"p","wp-content/plugins/wordfence/css/wf-font-awesome.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'��M��ً�V���:","997dI�Ou�-����%enԻ�1�����I","","0","?"),
("5`�]\\ͭi\0���J�T","wp-includes/class-wp-embed.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�X[��SA�!�sin�a�","F�aS���vU����]��/�����Q+","","0","?"),
("5�7�N	C=��-��c�","wp-content/plugins/wordfence/images/sort_asc.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�&�D�K���zS§0","N�Q�*��TZ%P��%���jܑtZn/�","","0","?"),
("5�#t�5R�шK�����","wp-content/wflogs/config-livewaf.php","0","�u4�FC�T��L���","�u4�FC�T��L���","�P��==�\0X��9!����L1mkBH","","0","?"),
("5��<�8`=�p;��u","wp-content/plugins/wp-rocket/vendor/composer/autoload_static.php","0","���B�~�Sl2�B��","���B�~�Sl2�B��","��\0�Ƙ����,Ej{�ھ���\n�����P�/�","","0","?"),
("6����X/��HL","wp-includes/js/mediaelement/wp-playlist.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�5~}��}`U��","�&�M���+�,��㝉���B[�u�A9[�{�","","0","?"),
("62|���۝��͵�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/AbstractArrayAssignmentRestrictionsSniff.php","0","4��d*��f#5����","4��d*��f#5����","��6�_�?��w�W
("6;I(�H�m�%��f�","wp-admin/css/farbtastic-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����q�@!!�Ek�",":~ްX#^sI>&���\0�.��MKG^#��ގ1�","","0","?"),
("6<��7�y��/ZX
("6P)昪KC6�qCHg�","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/Components.php","0","����x2RF���0��O","����x2RF���0��O","��D�+���U=�g�	�5an��,rN�(u�","","0","?"),
("6[f�9�?�� _�","wp-content/plugins/wordfence/images/icons/bullet_yellow.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J&���Ɍ����ԔQ<","1���Nߗ����׍?*�i�í!F�Mp�9^.","","0","?"),
("6c�b��kk��i3�@�H","wp-content/plugins/wordfence/lib/menu_firewall_waf.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","e(# (�{�秡<��(s","%=�o�V��BkC��%��Ir��(���?ceC","","0","?"),
("6}�rm_F�g��~ч","wp-content/themes/flatsome/inc/shortcodes/ux_nav.php","0","*qCX�V��r,�Ϡ�","*qCX�V��r,�Ϡ�","̰�U�R0�U
("6�]j�v�W�k
("6��:�x��+�(�a�~]","wp-content/themes/flatsome/inc/admin/panel/sections/tab-plugins.php","0","ՔU�����G���","ՔU�����G���","�.~�y���KT���ڌ�y�Q�$����(&��","","0","?"),
("6��T��a������0","wp-content/themes/flatsome/inc/builder/shortcodes/templates/accordion_item.html","0","����L$/@�2N���","����L$/@�2N���"," �m{P�{�c.��v��H�	j�2&��OQ>�","","0","?"),
("6̠,��_���q���u�","wp-admin/includes/class-wp-filesystem-ftpext.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","o�s���`�@b�%�E","+�ĕ����̕� ��|>6�b�E�]�R�[w�","","0","?"),
("6٨	��:{�^D�","wp-includes/js/jquery/ui/accordion.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","3L/�o�o.� ��","r�0JJ�y;�\n�8���(�Pu��\'6Nq","","0","?"),
("7�����	�p��i�","wp-content/themes/flatsome/inc/admin/kirki/core/deprecated.php","0","��W?=���2�r����","��W?=���2�r����","�>�ek�S��8g�$��&_uT{���
("7i�>�p.ŏ+Jv�ah","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/InlineHTMLUnitTest.php","0","�b�!��b������","�b�!��b������","�����$�p
("7r��uF��@J,","wp-content/plugins/wordfence/lib/wfDateLocalization.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�4�K_J�2Cmcͭ�t�","D��jy��,�Lw�a� <U��� ����S","","0","?"),
("7|oOU���z\0Ef���","wp-admin/network/update-core.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���~�I\'�0Y�","q=��m˭1B�5���{������N�lR�","","0","?"),
("7��A�`�|\'�2`5�=","wp-content/plugins/contact-form-7/includes/config-validator.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���Lq�M�
("7����k!��D�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/ColourDefinitionUnitTest.php","0","�fz���I�`ޡ>�_","�fz���I�`ޡ>�_","���J��د�� V
("7�%Wy~׹P?�x��","wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�lzV6`wmZBs���","
("7�/�1�;�����IK�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/team_member.svg","0","C.���kX��@ݹ^c�","C.���kX��@ݹ^c�","��n�W��F���=�la!!�/�3�a$�j�","","0","?"),
("7�c�¢)��S�eb�","wp-includes/js/jquery/ui/menu.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���D��tc�]8�","�QɅrn�Yun�.k��_�Nx|�!��˫��","","0","?"),
("7�c�.$P!�\"�򹚆","wp-content/plugins/wordfence/images/sort_desc.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�<���j��_�ˊR�2","*���-�9�.���HGO6/�L�):�C�d�z�","","0","?"),
("893�V�����g>","wp-content/themes/flatsome/inc/admin/options/social/options-social.php","0","eJ߂j$8P��v���
("8=�I��a�%��k�~�","wp-admin/js/editor.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���jW���-`k��","S_7�m�eM_ `��C��w_�\n�&�΁�a","","0","?"),
("8?6B�
("8A�eC�(�|�\nP","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/DevelopmentFunctionsSniff.php","0","+6�lu�SE#��9}��","+6�lu�SE#��9}��","����[\'�Y��j����[��͚�-�","","0","?");
INSERT INTO bz_wffilemods VALUES
("8L�Q�Kh�gd�^","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Files/FileNameSniff.php","0","�Tw~ø�P���0^�b","�Tw~ø�P���0^�b","f8��y�`��q?t�������p/12��$��","","0","?"),
("8P֧��HGE}8�","wp-includes/Requests/Exception/HTTP/306.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Wsz�uNP�j���Xu","4�U���Q
("8b6Ϧ�2Ie���2�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/SessionFunctionsUsageSniff.php","0",":�
("8�\"L)Xw0���	�Ѧ","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-2-col.svg","0","�$B셤�:~
("8�R6�DH��q�-{�:`","wp-admin/includes/translation-install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","lI~�����	ޝ\"j��","������c�>�M�AW3IЊub\'�<��@���","","0","?"),
("8�@)��6yg[y�sQR","wp-admin/css/deprecated-media-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��xJr�0)zR��<�/","\0�ٯ�<�(\'��!\nNM�Aޓɲ���l@S�","","0","?"),
("8ÛZE�Q$}UP�T��","wp-content/plugins/wordfence/lib/wfCrawl.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,�03��
("8�\0\nb\0t5#0���p?","wp-content/themes/flatsome/inc/admin/options/styles/options-lightbox.php","0","!ۇ�����g�WH3�","!ۇ�����g�WH3�","Ye\\��ӛ!�M�0O��\\2�{����Jųh�","","0","?"),
("8�E)T7AW�\0k[P�","wp-content/themes/flatsome/inc/builder/core/server/filters/filters.php","0","Z��A��$0\0��T","Z��A��$0\0��T","~�?����fqV�	�^VgW9�}z���׹","","0","?"),
("8ܞt��w�Nxa��","wp-includes/class-wp-network.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��C�)�5����k��E�","$V�$�*I�.z�~p��ʴA&���3ڥ`9(�m","","0","?"),
("8��3z�B�x���Q�","wp-content/themes/benh-vien/template-parts/posts/featured-posts.php","0","QE׾�����\\���lt","QE׾�����\\���lt","C�c���^�s��������O����eo�|�","","0","?"),
("9�
("9ψ[�1d{���@","wp-includes/class.wp-styles.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Bz�K�P
("9:��d�o\n��p`Ry��","wp-includes/js/tinymce/langs/wp-langs-en.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�f�tS�uc�.k�7a7","��{h�@���D�0�K���cx,TMHd?�A-�","","0","?"),
("9|;\'C&���\n	l","wp-content/themes/flatsome/inc/admin/customizer/img/overlay-right.svg","0","x�+qi�mYC��L��ݞ","x�+qi�mYC��L��ݞ","����M�?�/�9��[$kK���bɇ/3�*�)�","","0","?"),
("9�g�<.�UC��e�t","wp-content/themes/flatsome/inc/functions/function-upgrade.php","0","�3��bP��\'1��","�3��bP��\'1��","8����R���Z2����
("9��eV�0j��V2��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/UselessOverridingMethodUnitTest.php","0","�{UϺ��G!%�\\�G","�{UϺ��G!%�\\�G","���ס�.��n��o�j�/�|6�R,��","","0","?"),
("9�-�4X��r�<e","wp-content/themes/flatsome/inc/builder/shortcodes/values/color-overlay-helpers.php","0","S�exĻi̹xۡg��7","S�exĻi̹xۡg��7","���j��ա�qO�6���!<vzl����3{","","0","?"),
("9�} B^��?	�\"�","wp-includes/script-loader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�������X�2��s>","���x�1ֈQ���NW�d�(�Y�M�K�j�	","","0","?"),
("9��Q��ұ.[���L�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenFunctionParametersWithSameNameSniff.php","0","��d�d\'/E��6�˂�","��d�d\'/E��6�˂�",":�j�5W!��xɻycmF�ݫ��ok�Z/2","","0","?"),
("9�I{l�)h�L�����","wp-content/themes/flatsome/inc/builder/shortcodes/ux_pages.php","0","�;������,n���A","�;������,n���A","�`�/�c�x2	V�H4>��i���!��5*","","0","?"),
("9ՍҢ��9��d
("9����7Vm��- �","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Zend/Sniffs/NamingConventions/ValidVariableNameSniff.php","0","�aL��	�g��NΘ","�aL��	�g��NΘ","���H(� u��l��H��� �[�}4t�]�¤�{","","0","?"),
("9��H�M%j�&�u","wp-content/plugins/contact-form-7/includes/js/scripts.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","O�i�
("9��;*EN��~�ך�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/DocCommentAlignmentUnitTest.js","0","�oO�����!��:�%","�oO�����!��:�%","�A��ȐTDC���f��(�t�?�5����,u��","","0","?"),
("9�/���$K.8i�� ","wp-content/plugins/wp-rocket/inc/admin/ui/modules/cloudflare.php","0","Ѭ� �R4�{�\'R�","Ѭ� �R4�{�\'R�","O�1�#	�-QKl�r���!�m;5+�28��6j)","","0","?"),
("9��s�3�SZ,p�8g","wp-includes/images/media/text.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","z��s��0�ȝ�Q�K","�g��?[��D*�p�8�q���Vѓ�>��N","","0","?"),
("9���||�O�E�kO�/","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/ControlStructures/InlineControlStructureSniff.php","0","&^�<e�9�?�QE��","&^�<e�9�?�QE��","��.J�ػ0��{1\0��#Tη���ͩ*~�]","","0","?"),
("9��m8�úG6�C���(","wp-content/themes/benh-vien/page-left-sidebar.php","0","��1�
("9�2�ד���s(Y��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-large-left.svg","0","~qL��5�iu����,�","~qL��5�iu����,�","	�[�P��.RS���w�w��4L�+°*wg(�C�","","0","?"),
(":{���{7�9����","wp-admin/link.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","nAs�C��5	���+","����Ѓ��S����Q�/�B�Ӎ(�p?��d��","","0","?"),
(":�|L�H6(��c�g��","wp-includes/ID3/module.audio.ogg.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Y�=��Z�VR궁��","jވu֘���� >��̰���\0��k����K�","","0","?"),
(":1�(�)p]V1�-ȩ�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/Continent.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�qDL���a�[	?�$","G�s\0��
(":<�$��0,w\"&e({","wp-includes/class-feed.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�)$k��3\\ ���2E�","��H�̼_%%�:Y���3j�M8\n�Wo�!�","","0","?"),
(":D�J�$��h��ǅ
(":S9g�>p8�p۰xY�","wp-content/themes/flatsome/assets/img/logo-icon.svg","0","��7��5G�=�*֎A","��7��5G�=�*֎A","�q�(��ҟd=�y$���2xQW������	","","0","?"),
(":]Θ5U-G��1��","wp-content/themes/flatsome/inc/functions/function-global.php","0","�$i����kZ}�d��>","�$i����kZ}�d��>","�`�[����)��fb��cÆ�d(�;G
(":mwvK
(":���%H`!���
(":�F��kz��R�\\r�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/NamingConventions/ConstructorNameSniff.php","0","g���3x�۫��7","g���3x�۫��7","U:��2Q����[�\\����7`\'6��Ӊ%�S�y","","0","?"),
(":��N8��P���+�n��","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/AbstractClassRestrictionsSniff.php","0","�^�u�Q6��犀�\'s","�^�u�Q6��犀�\'s","�E�<������W
(":���X%�x4�X࣢�","wp-content/themes/flatsome/inc/admin/options/header/img/header-simple-right.svg","0","/��c���Y�͕��$","/��c���Y�͕��$","�l�8�#�a-`��9�X�$�:@a��K�V��","","0","?"),
(":�A(�����ߚ�gp","wp-content/themes/flatsome/inc/admin/options/header/img/header-default.svg","0","G����8����E��Y�","G����8����E��Y�","�%�p�X��?���x�/ d�>���33�fC3","","0","?"),
(":�V�v�P�~G)yqg�X","wp-content/plugins/wp-rocket/wp-rocket.php","0","����]z@��\'H<U�","����]z@��\'H<U�","ߑ�P`�@l��wg���\0��\'��T���]�C�","","0","?"),
(":��ǒu�#�����_�","wp-content/themes/flatsome/inc/extensions/flatsome-live-search/flatsome-live-search.php","0","s,AO��]Jv��iJ_H","s,AO��]Jv��iJ_H","��$*��P7�\0���=�)߾�����..f���","","0","?"),
(":�{�)\"��\'\"��","wp-content/themes/flatsome/inc/admin/options/blog/options-blog-archive.php","0","
(":�Xqݝ�J\\�5P�4","wp-includes/images/spinner.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����1c~\'�dv�vHq","�I��9%���-�7C����P�<�r�\\c�\"x�{","","0","?"),
(":�n̣RM�ti#��=","wp-includes/images/media/audio.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�taCA����.��Z��","�L�>��$��\n�oixoj-\nL�����]G;q","","0","?"),
(";#�	n����%\"���","wp-includes/Requests/Exception/HTTP/404.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��c�Y\0�ys��<M","��-!V��>d�*jP�F�	�;QƵ��N1aG�(","","0","?"),
(";g,W�����","wp-includes/js/codemirror/jshint.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����P�!�Rqc��","�g�i\n�B�_��[�\0��7��4�w5���q��","","0","?"),
(";�b�fȖ0����x","wp-admin/css/colors/midnight/colors.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�;挂���!]����","D-�_�y5,)�������E�3��$eݮ<","","0","?"),
(";!�\'Ý.݈�^�D","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-architecture.php","0","���e%�@�R6���S:","���e%�@�R6���S:","<�w 4��7����G�Z�Ef�5�r�D2�","","0","?"),
(";_�
("; �M��H����\'7��","wp-content/themes/flatsome/inc/admin/options/options-depricated.php","0","\n럫�ƕ�=�a��$��","\n럫�ƕ�=�a��$��",":��v�5���d�Z2�Z�߷�h������T�i�","","0","?"),
(";1ы#�Y_N��t�","wp-settings.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��T�gϤ]�ާ8�","��A��R%c�0�b+.؀\"�;~o�Hx���K��","","0","?"),
(";6q�L\\b�S�����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/OneClassPerFileSniff.php","0","4c]���Y�υ���	�","4c]���Y�υ���	�","3%���9�ۮѱ����!�TS����&�rlX","","0","?"),
(";FR�*%el;s�vmġ�","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-custom.php","0","WM�UX��GSA�bV#�4","WM�UX��GSA�bV#�4","7z?����#�q�>�*2%�<��3�EC�QL7H","","0","?"),
(";R�GWؿ��m7$�E","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/aelia-tax-display-by-country.php","0","���y����9l���c�","���y����9l���c�","�����V@2;����\"\nzI����a�S�x\n�A","","0","?"),
(";R�yh���RxK�
(";~���=��W.�W","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Sniffs/Methods/MethodDeclarationSniff.php","0","@�Bg���i+���?�C","@�Bg���i+���?�C","�ю���i|�ٰ,�|�9�����-@���@�k�","","0","?"),
(";��ߍ�Q��R��J","wp-content/themes/flatsome/inc/builder/core/server/src/Options/OnChangeHandler.php","0","�Uj��S6��\n�]L�>","�Uj��S6��\n�]L�>","T1��S�}I�V��Bb.M��\"_K���M~","","0","?"),
(";���셂�D�4��","wp-content/themes/flatsome/inc/admin/options/header/img/header-wide-nav-light.svg","0","]��S��(̣�,��Q","]��S��(̣�,��Q","���IY�jl����v.V�o������w�4}�","","0","?"),
(";���0a�Y\\���=","wp-content/themes/flatsome/inc/builder/actions.php","0","ܥ���b�`�mu��o","ܥ���b�`�mu��o","�a���z�Ɛ�f��a��P����E/`�I","","0","?"),
(";�H!�+lF���n��","wp-content/themes/flatsome/inc/admin/customizer/img/nav-wide-center.svg","0","[���u�F�X,2��","[���u�F�X,2��","��zӦ�~�=�D�m��3�e�ZK�I!�Y��H�","","0","?"),
(";�Wct���*+��Br�","wp-includes/images/smilies/icon_surprised.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",")�r�����i
(";�<#\'��/�8_؆�Z","wp-content/themes/flatsome/inc/admin/kirki/modules/custom-sections/class-kirki-modules-custom-sections.php","0","F��/d͖A��,��","F��/d͖A��,��","��f�\nB����\"�۾���[bY�5�CИ��","","0","?"),
(";�Mֶ솄�:0�}�e","wp-content/themes/flatsome/inc/admin/advanced/assets/js/min/iris.min-min.js","0","\\�TPGC���>+T","\\�TPGC���>+T","=WU_\0����NI���^sZ��<5rHl:1�","","0","?"),
(";����*1n��4�","wp-includes/js/wp-emoji-loader.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\n�͒�?\0R�G�\\r��","�&�j3M���z7p6`8`\"n^�^dw��J�7","","0","?"),
("<ϫG��D������","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/StrictInArraySniff.php","0","�Tnt\0-l-S8�Wx>f","�Tnt\0-l-S8�Wx>f","�����B`4撩��b�41(ÿ~#���v�\n","","0","?"),
("<X��Vh��ܳ3�t7","wp-content/themes/flatsome/inc/admin/customizer/img/blog-three-col.svg","0","n툇�0K��]9[K�i","n툇�0K��]9[K�i","\\�d��g�D�P\\t�$R\"T�A�����ǧQ��9","","0","?"),
("<F���Pz�22��~","wp-includes/js/imgareaselect/imgareaselect.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","}(��()��3���󵕯","�q�!ݿJӇ��i\n�E�5s�!�
("<]ۤ�JB�L�WXM`","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/DiscouragedConstantsSniff.php","0","��)eSaF��ե","��)eSaF��ե","�ز=_��$,�GM><��i�j�ݠ�^�_","","0","?"),
("<rI��5���ٞ~","wp-content/themes/flatsome/inc/shortcodes/ux_translation.php","0","`-\\�2�\0�\'�	\'���","`-\\�2�\0�\'�	\'���","A��e�?7D@�\nw����8�1�sSg�x;","","0","?"),
("<��Q��%���Ʋ=���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/SemicolonSpacingSniff.php","0","�l���џ�҃	��Ё","�l���џ�҃	��Ё","������p.�7�d��6 ��`��<Ն","","0","?"),
("<��9�u�j����!�$","wp-admin/css/install.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2�L��0?��F�0�","��ky$݈���4��`/�Y	Oɧ��Y�v","","0","?"),
("<�К˪����\\��u","wp-content/themes/flatsome/inc/functions/function-custom-css.php","0","oq��<�Q��A=B��","oq��<�Q��A=B��","\\��a��4\"�@�j�2Zm���Ժr��}","","0","?"),
("<�hj�	�4���4a�2�","wp-includes/js/utils.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�4ċZ����0�p��","��F��eIl(x�,��!1X��_�&{01D","","0","?"),
("<��u꿖ܜ��Y�^","wp-includes/js/tinymce/plugins/wpeditimage/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'Sa�w��N�9X+�w",",ta�B�l�OK�T^^�4�8Im{��;$*�","","0","?"),
("=�H�Y��|AWb���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/LowercaseStyleDefinitionSniff.php","0","��ӣ�P�\\�,����N","��ӣ�P�\\�,����N","@oa�~�@x�y����V�>����Q	�x\\{�}�","","0","?"),
("=���f;V�dl\"��","wp-admin/css/code-editor-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v7��d�ܐi�?x33Y","}&�c�i)��oEbإ��_;\'��KT�гs�","","0","?"),
("=	]����}��*<.","wp-content/plugins/wordfence/views/waf/waf-install-manual.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","$�x��~)���[ڜz","7�R ��N�`n^�?��(��)���^R�ΚĖ","","0","?"),
("=#��l-I�yGXu�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/EmptyStatementUnitTest.php","0","r=�U�\"`��j��x","r=�U�\"`��j��x","�|���ͻz8�Q���G��������9��!4�m","","0","?"),
("=0P�/�\'���7��,","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/IndentationSniff.php","0","i8���c���Q	��;�","i8���c���Q	��;�","H�tT��Qm�TҒb�t�r|��r���:��t�>","","0","?"),
("=G�:�o���!�t�","wp-content/themes/flatsome/inc/admin/options/header/options-header-cart.php","0","�vЊj�H���m�clWC","�vЊj�H���m�clWC","�W��l�4R�P��!e��Fϙ�}u�ϓ�t�","","0","?"),
("=S�6�a��Xo�,�2","wp-content/plugins/wordfence/vendor/autoload.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ng��:o>q,rB","��Ǌ��L��\\�,
("=f�u�A><Th���@","wp-includes/js/jquery/ui/progressbar.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Mq�TٴA?�L}y\"i�","��\'x�ŬJ�,~���%�6a=���m","","0","?"),
("=�J�B��^���\"H","wp-content/themes/flatsome/inc/builder/shortcodes/commons/repeater-posts.php","0","7?�	�	���|�t�","7?�	�	���|�t�","���ϋ\\�f.�[L�_����r���z!�۟","","0","?"),
("=�s�$=S�-_��P�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/fontawesome/fonts/fontawesome-webfont.svg","0","�.�mur��I1��G�","�.�mur��I1��G�","Lr7D@y���ɂ]NK�(��ti�G9�����Tm=","","0","?"),
("=��k�[4��� ��=�","wp-includes/comment-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\n�D;�3*����y","��������:��k5�ܡ�$��^�B�L","","0","?"),
("=��{>���,҈e��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Classes/ValidClassNameSniff.php","0","��Ad��?;װ\"L�K(�","��Ad��?;װ\"L�K(�","�&�����M��~�k\0�|7�W?_K�˫E�����","","0","?"),
("=�~�2t����L�,�\'","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/selectWoo.min.js","0","�jS�y�YQ2��Mer��","�jS�y�YQ2��Mer��",".QH(*�6�X 1�ӷ*g��δ6��C�O�#","","0","?"),
("=�F�혣�Æ��K&�","wp-content/plugins/wordfence/views/scanner/issue-wfPluginRemoved.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�9�:7���]6hVo��","߫��/Lk����OT�bdS�EiL9���~8","","0","?"),
("=�ܒ�X�B�I�cOI","wp-content/plugins/wp-rocket/inc/admin/ui/js/options.js","0","�\0��~o�buw�n�","�\0��~o�buw�n�","<��NvO�m2@���S�m�#\'�H\"H2���","","0","?"),
(">M���U�[>�)","wp-content/themes/flatsome/inc/helpers/helpers-frontend.php","0","���5�k�m1����","���5�k�m1����","�YGS-�?�;m�|[�VM�p�3D� t���A�","","0","?"),
(">YNY��v��Ѡ��I{","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/LowercaseDeclarationUnitTest.php","0","\0�/���3�IT#��","\0�/���3�IT#��","q��o`\07[PƸ��Xoʛ��3{�\'�\\","","0","?"),
(">[���#����!fe��","wp-content/themes/flatsome/inc/builder/core/server/filters/public.php","0","V�Il��ȃ���_���","V�Il��ȃ���_���","�F^�Xޱ+Ҕw�0�����K.N|�7� T�","","0","?"),
(">hЩ�XX*�v1���","wp-includes/theme-compat/comments.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\"��b�=Q\n~C�}K","��x��R2S��z�\n��>��� p;�N�Z��^Ƴ","","0","?"),
(">ql�+�m�\05Ħ\"�^","wp-includes/js/customize-preview.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���W���\n2����[","��=Ӿ������Un.��T+�b)�dl�J","","0","?"),
(">u��ʸ�!4N2��","wp-content/plugins/wordfence/fonts/roboto-KFOlCnqEu92Fr1MmEU9fBBc-AMP6lQ.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,�;L�\'��dee��","�+G�T}�m)*��[���c5�Z�N-v>�","","0","?"),
(">����m��}��ѽk�m","wp-content/themes/flatsome/inc/admin/customizer/img/badge-border.svg","0","�=Lhqݶ���}7 /�","�=Lhqݶ���}7 /�","?�C�ZI<s�n{	�+�/���c�ʎ�]h�","","0","?");
INSERT INTO bz_wffilemods VALUES
(">�߬�42�0QB�1��","wp-content/themes/flatsome/woocommerce/single-product/headers/header-product-top.php","0","{Q��:��_�s�#�","{Q��:��_�s�#�","P��+k���L�cۑ\"��S��% [�wSP5�G","","0","?"),
(">��X�
(">��	_~zF��6����","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-repeater.php","0","(�v���J�o�n�
(">����z��ݙ��\"[��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Objects/DisallowObjectStringIndexUnitTest.js","0","�������q��E(","�������q��E(","m�W��|�Sm��yCHIy��6=E�����TM�0","","0","?"),
(">�䬝���WsӲ��","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/sr.js","0","ᚹs�F��\0%f`","ᚹs�F��\0%f`","�)̃�ܹX#ܘ��^\"w����L1���
(">纟�F���%~�6k","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/th.js","0","���������~�+y��","���������~�+y��","���2�y�F�xkU����A.�FI��c�","","0","?"),
(">�b�K�DV!�\"�]�ݓ","wp-content/plugins/wordfence/js/admin.ajaxWatcher.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��r�-c/#m��O�","v޶��#N��\0\"�kf��B{Δ��R�Ti","","0","?"),
("?2yT!s|��t���u}","wp-includes/random_compat/random_bytes_dev_urandom.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","f!ק�ӗ��A&��","O�u�\\
("?Yv�q_����ۮXO","wp-content/plugins/wordfence/images/sort_both.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��%�B�Qx�SV.D","����6��\"@X�g\'�W7��w��gJ���q","","0","?"),
("?]�P�.��1����2b","wp-includes/js/tinymce/plugins/textcolor/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��vI͖�[V�>>�","I�ض�B�
("?tA���ۃ�!�","wp-content/plugins/wordfence/css/iptraf.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+	���<�dq�7^�","L����aj��e\"�ʄ��м�lz�敎b�y�:","","0","?"),
("?��f/��qZ��)��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reporter.php","0","y�������5�$��","y�������5�$��","�\0$�^�����<L\nUB�����D��Py8�M","","0","?"),
("?�pҟħ�F��b`J","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-textarea.php","0","��>;��yI�]HL","��>;��yI�]HL","�W/)�T����]:�Om�;�!UW�H���hn","","0","?"),
("?���л8l��n��","wp-content/plugins/wp-rocket/inc/vendors/classes/class-minify-css-urirewriter.php","0",";2h�)\n�>�t�_8",";2h�)\n�>�t�_8","ķ�fQ>)�L�+��	�w�Ě0�5\'/��rU?","","0","?"),
("@\n��M;6D6F1���","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCSAliases.php","0","��5�N�H�Fr���","��5�N�H�Fr���","Ŵ�|��������?��4�@]��*f7�V��","","0","?"),
("@\n�F�}�\'\0^.�","wp-content/themes/flatsome/woocommerce/checkout/form-coupon.php","0","S w�Q�=;|bA~��4","S w�Q�=;|bA~��4","|n4��p���n~�a�@瀞��!�A���u�","","0","?"),
("@��.Q��3*�L�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/SuperfluousWhitespaceSniff.php","0","�T˖j�+�.�8�`","�T˖j�+�.�8�`","����7����i��D�\'�Ew�b��Z���3O�","","0","?"),
("@V�$�K���<�1*��","wp-includes/css/jquery-ui-dialog.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v�ҡ�������","�h,�^��=��e��4(��\n;\nDq�Z;�","","0","?"),
("@ZR��R�Y��V��","wp-content/plugins/wp-rocket/inc/classes/class-rocket-database-optimization.php","0","�[�os����Xj","�[�os����Xj","�K�2�X^�l��W�޾/�% [
("@k/�����I�?T,","wp-includes/js/jquery/ui/datepicker.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","϶=���S���������","R�P7ȚMQ�ӍԊ��\\��p�!�^��e,R","","0","?"),
("@��̘9�#�L�y(��","wp-includes/images/arrow-pointer-blue.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","w��b�·*L���[��","����fb�ZD1.���V��aw�4l?��p�G^�{","","0","?"),
("@�%�!�D��U���","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-image.php","0","���z�S�D���}9","���z�S�D���}9","�E�!�m�/�0��[l�
("@��l2Ӭ���FOuK","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-round copy.svg","0","
("@��!z��r���W��p","wp-content/plugins/wordfence/views/waf/option-rules.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��u\\m6����[%","o��9�N�l����\\٨݂��N^zj�_���a","","0","?"),
("@�XD\n�\nRN��t���","wp-admin/images/menu.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�
("@���<-=+f�ۡ�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Exception/UnauthorizedException.php","0","���c#Q���`�D!�n9","���c#Q���`�D!�n9","f�����^d��V���u��Cr�����}��J��","","0","?"),
("@�L��߯7�٭kقE","wp-content/plugins/wordfence/lib/menu_tools_twoFactor.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�t�9B��\"���o��","�f��������@��܈��x���\"5~ú�ϯ","","0","?"),
("@�;5�X��V��O�Z","wp-admin/images/mask.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���g~�\"��J��䩎�","��/<s�ԡ�)�\'�.�1��jkn�K9Q���","","0","?"),
("@�m����O��W","wp-admin/admin-header.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","t��9��RX�#ӏ�","��q5L<W7[Eǻ\"���Uk����Cu���","","0","?"),
("@�t�R>G�Hh��ס","wp-admin/css/revisions-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","H�Ǿ4���R��JN","{�2o���B����%�̢�g�.���Qd�*��%","","0","?"),
("@�s�Z��^����q�v","wp-admin/images/media-button-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","#�WI��\\��?��","�<�:��tn�kb�wi�&��	���R����","","0","?"),
("@��+�T΄\'����٤","wp-includes/ID3/module.audio.flac.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","P�|��sq��;�","����R�U��� o��H���~r휢ɕ��","","0","?"),
("A��\'l�:�n��","wp-content/plugins/wp-rocket/vendor/a5hleyrich/wp-background-processing/classes/wp-background-process.php","0","Dw)m���i-e���v","Dw)m���i-e���v","�@et�`B��sPnQ �A�*���]��oZ�\0","","0","?"),
("A�lA~i^����u�Ø","wp-admin/css/customize-nav-menus.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g�ӄ>O_K�4����j�","�(�-@\'d��&�\'\0�?�y�����V����4L","","0","?"),
("AE���[�`����","wp-includes/js/thickbox/thickbox.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��H�sTX{B$�٭6�",";�@������0(�{�o�ifK�Ϥ�EQ��","","0","?"),
("A\\Y������0d","wp-content/themes/flatsome/taxonomy-featured_item_category.php","0",">�a�~/-g��p*�",">�a�~/-g��p*�","nh{U�E�\"�B����I�)옂���Z��","","0","?"),
("Aa�@J������Ł�","wp-includes/js/tinymce/plugins/colorpicker/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[\nh��\\�z�ٮ���","�v|�/�>eZ��J�¯_z��\0u4@���Q","","0","?"),
("Ad��X��ߍ�	�Rn�-","wp-content/themes/flatsome/assets/img/payment-icons/icon-sage.svg.php","0",":f��Pcg��T�ߤH�",":f��Pcg��T�ߤH�","9)�h�Y�q�t�z >k^-}�I<�\\��,O�","","0","?"),
("Av,iɩ�z>����y��","wp-content/themes/flatsome/template-parts/header/partials/element-search.php","0","`�E��g2n��
("A{&� ��V>��Νs","wp-admin/css/login-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h�g_m��d�f� @E�","*d��Q`?�ư���1<�����%�Y�S�G","","0","?"),
("A{ߐ��P	MS�+�}A","wp-content/plugins/wordfence/js/wfselect2.min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J�������!�.���i","l�k}[��ZjA�.!��=+5�+�~q� 1","","0","?"),
("A�\0�\'U���������","wp-content/themes/flatsome/comments.php","0","�*3�=bB-D����-\n�","�*3�=bB-D����-\n�","\"���*0��ќ܃���⛡ڼ3� ��˝p*","","0","?"),
("A��B����������D","wp-content/themes/flatsome/page-checkout.php","0"," \n�lٰ��lEj�Г="," \n�lٰ��lEj�Г=","��~tN�욌�L$�Wm�g��\\����\\�]��","","0","?"),
("Aػ#���\"���j�","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W��^p������O�","l�@���e�Y|Ok@߉�����\02�3VY���3","","0","?"),
("A�u���ݻSCsf�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/RequiredOptionalFunctionParametersSniff.php","0","�ʉ��ܚ;~�վy","�ʉ��ܚ;~�վy","����Ă\'���n7\"ʗ[�}L�i�MT\'\n�A","","0","?"),
("B{��K������~","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/FunctionOpeningBraceSpaceUnitTest.js","0","=�(��x��ީS�9","=�(��x��ީS�9","��{�oM0$�i����,�s��!��Z۶���","","0","?"),
("BY�J�O����٢(C","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/GlobalKeywordUnitTest.php","0","���X���h�Br��1�","���X���h�Br��1�","G�ڥl�|W���/\n����v����9�ԁ��","","0","?"),
("B�ųJB�9��e!v�k","wp-content/themes/flatsome/inc/builder/shortcodes/col_grid.php","0","�I���k�-f�v|O","�I���k�-f�v|O","�v�H�U:GF�)��\0�|��u�����q�","","0","?"),
("B�� �~�X<�w0^�","wp-content/themes/benh-vien/template-parts/posts/content.php","0","1�;�:�i�d���G","1�;�:�i�d���G","��T߄�$���Z��Խ�%c�������k��","","0","?"),
("BJ��O������z�D�","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��{�1�MR�KE_��/","|q�UUѿÎ|z��G>*�ۜ\"���I����;�","","0","?"),
("BUj�v\\ѣ����(�","wp-content/plugins/wordfence/views/common/license.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","y^�@:F�g�q]p�!J","������Ѝ]�|\\͏\\G$�y[�\\��J�\"�","","0","?"),
("B��j�)��q�D�S","wp-admin/install-helper.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","dV�`����1&�l","�ɤ����=\"�{�N��t���{�\0�X�
�","","0","?"),
("B��{bB��71@CCf��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/scroll_to.svg","0","4��Ar��Ӂ�D��","4��Ar��Ӂ�D��","iT:�`������P�=�v�v\"Eq������n�","","0","?"),
("B����Q���aU�%","wp-content/plugins/wordfence/views/scanner/issue-knownfile.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�G^=�p�=$���2","�RK�6�����N\"3*\"�J�/0i�x0�","","0","?"),
("B�D���\01J�N��;�u","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/CodeAnalysis/JumbledIncrementerSniff.php","0","p���8��y�4���2�","p���8��y�4���2�","	�eGО?zy�R�a)��bf��.��8�p%","","0","?"),
("B�(b�avB�kYt���","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/custom-login.php","0","�*`�$:\"�{�\n?j�","�*`�$:\"�{�\n?j�","�s����T�9-�-�ƨ�p���t	Fg�,��","","0","?"),
("B�<�bD}�;W�ĝ>�/","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WhiteSpace/PrecisionAlignmentSniff.php","0","�&H;�~�!��Ǡ���","�&H;�~�!��Ǡ���",",�K�r0�������q�b���,SsVfG","","0","?"),
("B�S��³�R�<vӝi","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/FunctionCommentUnitTest.php","0","�c�Q��	^�y�j��","�c�Q��	^�y�j��","�$�zIm51/i�-����z�>8	����e","","0","?"),
("C -L]Q�ޢqL���
("C6�m�-�.B���r?","wp-content/themes/flatsome/inc/admin/customizer/img/dropdown-style-1.svg","0","�������śty�^V�","�������śty�^V�","K0���J[��G�9\n_��>�2���W0","","0","?"),
("CC�9�`�D�fi��xS","wp-content/themes/flatsome/woocommerce/product-searchform.php","0","�!�B�c�D�8����4","�!�B�c�D�8����4","j��>[+�ifA�\"��C�u[\\\\��	$]�M<K","","0","?"),
("Co}��N$i^��\\ʡ�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/FunctionClosingBraceSpaceUnitTest.js","0","`}�ɲb�y��`�","`}�ɲb�y��`�","��p �%[�5�cp�i��s،��Ht�i�_�P�(","","0","?"),
("Cc�iF��h�.n7�","wp-includes/rest-api/endpoints/class-wp-rest-settings-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�U�옛mZ<17����","�v�8�������.�e~��S��\'t�rr�i�G","","0","?"),
("C�ؚ�T�R�!vF{","wp-includes/customize/class-wp-customize-nav-menu-item-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�sF�a�tK�j��D��","�\03��:�5�C���Y8��Ǫ��*�B�[","","0","?"),
("CƲ�uI^;n�BDo&�","wp-content/themes/flatsome/inc/admin/customizer/img/align-right.svg","0","C+�[��{U;�w�T��","C+�[��{U;�w�T��","��f:N�\'5�sэ\'�p���n#�q�ߏ","","0","?"),
("C��s\\�\n���s��\'m","wp-content/plugins/wordfence/lib/menu_tools_whois.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\0JM(]���7w�","[:Qݔq�F/q�G;N�@K��q08�ΤO�`[�","","0","?"),
("C��\\UFsp�|�W1�KJ","wp-content/themes/flatsome/inc/builder/shortcodes/title.php","0","��#��V�s�	Px7�","��#��V�s�	Px7�","f��c�+s���J�=rB���vD�퀄F�����","","0","?"),
("Dm�\n��z�H��S���","wp-includes/images/crystal/document.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'^c�s���D��3T\\","g�t�( Ŏ�k`5͒��J��M5���:j�","","0","?"),
("D����u㓏0�Ȣ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Code.php","0","�H��L�����cA/","�H��L�����cA/","��{����([�2�Z��he�`�2?F2��1�","","0","?"),
("D#��� Wuh�٥�","wp-content/themes/flatsome/inc/builder/shortcodes/ux_countdown.php","0","w�.v8�4z��F�1","w�.v8�4z��F�1","\n �!�W�;��ȳ���3�H�bN�ֿϦ�","","0","?"),
("D.���:�\0��S�R8","wp-includes/ID3/module.audio-video.asf.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\n%
("D6m�e�r{pK�O�","wp-includes/locale.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","_�?>nY�xF���","�@ge;�6\0��P�u.xF�
("D:P�)�s�N��<]a","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenCallTimePassByReferenceSniff.php","0","� ����{�g�oU��","� ����{�g�oU��","Nλ/i]]��B�+`ڢdě���q����","","0","?"),
("DJn�岬l�sA9\"m","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Functions/GlobalFunctionUnitTest.php","0","�<5F�@�7n^�JKF�","�<5F�@�7n^�JKF�","D�s��Ls�EJ���:��=��������","","0","?"),
("Dg��D�t7�dl�Kd","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-simple-corporate.php","0","܋CR���R�eN�o�b�","܋CR���R�eN�o�b�","V��?=��ex�Q���ï!��kč͛M�","","0","?"),
("Dm��u�ϣ�!�I�5H�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/Isp.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��pٽ��P��]G���","�|�� )��Y�M��,3���0���*�9�p","","0","?"),
("D}K�+��;��?���","wp-content/themes/flatsome/template-parts/posts/partials/entry-header-bottom.php","0","z_Z���z�4����H","z_Z���z�4����H"," #1�i�G��W�K�9�\"���O�٧2)��","","0","?"),
("D����u�
("D����)ba�k��{��","wp-admin/includes/admin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\{�z�iP����q�","��b�h$w\"=c?.�/@}$��Z`ʨ","","0","?"),
("Dչ������$Oa����","wp-admin/css/colors/ectoplasm/colors-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","6���8�5��ȇk�","�X�ݯVf�|��L�OB7������ze��Lm�","","0","?"),
("D��9J��E�,J��D{","wp-content/themes/flatsome/inc/admin/customizer/img/nav-wide-left.svg","0","�
("D�T[�-���U����","wp-content/plugins/wordfence/views/options/option-toggled-textarea.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","눣�E	��xbH$��t","��F���m0���jC,W�$����=9��n�ԫ","","0","?"),
("D��5\n\'�\\��~W��","wp-includes/category.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�b��r�+è��x","�S�b�e�++?�&�R����.��#�����","","0","?"),
("E�����S�܂*S","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-dimensions.php","0","P��Pg)����t","P��Pg)����t","<ġ*f��q�a1I1�%�~�T�!�[��","","0","?"),
("E��_�󈔏���]*","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/box-left.svg","0","\"���@�8]�\\�5�
("E#���-v37�6�Ť","wp-content/plugins/wordfence/wordfence.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","]�[��fR�T�M&�","Xkb��:�9zH�1
("E4��fu
("E<V6;�N��K�_�lSk","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_222222_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L\'�AV��wo1�El�","�#/�r��`e�,�c�[���\'@��ˉ��Α˿","","0","?"),
("E`�0��Tr^�qOy��","wp-content/themes/flatsome/inc/admin/kirki/modules/postmessage/postmessage.js","0","Z�߄�o��Q��v>�~","Z�߄�o��Q��v>�~","����\"�1Խ^��F$�v@%N`�&u�p�. ","","0","?"),
("Ec�d�ip�����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/ScopeClosingBraceUnitTest.php","0","�����%9\n�aF+��","�����%9\n�aF+��","&�B���B#SkR0�5�2໨;�M��K�9�","","0","?"),
("Eh���������@aq��","wp-includes/session.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�EaΠ��:`���Zv5�","�Gon^p�~�!w��k+��9KA������Ҁ�","","0","?"),
("E{\\���dC��n��qN!","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/LowerCaseConstantUnitTest.js.fixed","0","��]�z���G�\"_}","��]�z���G�\"_}","�C�R	S�fG0���..�+�`0�/9����7","","0","?"),
("E��(�zRA1;eN�qD3","wp-content/plugins/wordfence/index.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2��e��ª��\\��og","�� ��o���M�J#�A|�ߎ�(��;6R\n�","","0","?"),
("E���{�;F`���","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/ko.js","0","<�G5�`픉fS%��","<�G5�`픉fS%��","[�X�`5rQL�����&�\"�z�Jqŝ9X=e","","0","?"),
("E�ı�\n�Ah����]","wp-content/themes/flatsome/template-parts/posts/partials/entry-footer.php","0",")�\nU��&�!�u�zMZ",")�\nU��&�!�u�zMZ","
("E��X��f�1L�-_m","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Files/FileExtensionSniff.php","0","�1A�K=1�{7�^mW","�1A�K=1�{7�^mW","�
("E�}�~��M��-�]�a","wp-admin/css/widgets.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Rc03�N�\'��T�x","����4!/���5#K{�͛���>���k�,#!;�","","0","?"),
("E�d�����ZE�Z�w","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�?#�\\���K�UtN",".Y�C�#(�*��w���_�9#.�#tV߂�\'","","0","?"),
("E�V���,�%��,SM=","wp-admin/ms-edit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�/�Ħý��:E�","���敔L`;�Ai�^�O��~���M��:e�\"�","","0","?"),
("E��Y��I���f�)v�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Debug/FirebugConsoleUnitTest.php","0","A_�f��=I��N���","A_�f��=I��N���","�+��/ʟ��y͉���uӦk尿����","","0","?");
INSERT INTO bz_wffilemods VALUES
("F�Hȝl�e��#�","wp-includes/js/tinymce/skins/wordpress/images/more-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","l,��r�%�^x�%","���Y=�_�b��|ʧ&f,��<�������","","0","?"),
("F	��A�T�a����O","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/product.svg","0","�*��af$�:Io�5�","�*��af$�:Io�5�","��w��G
("F��Oۣ������g�","wp-content/plugins/wordfence/images/wordfence-logo-32x32.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��@ۯI����uU�","�\\9B�H�o>�߶�Y�Ss9v���*�q�(\0","","0","?"),
("F
("FCw
("FF�v��V;v�8/�
("FH���30m�:��s��","wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","xR�	�Y�X���ݤ���","m���c���ĭ��]���[��^�P��w","","0","?"),
("F[%�DµEp8��|�B","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Functions/FunctionCallSignatureSniff.php","0",".��D|o�h��A�	|",".��D|o�h��A�	|","��W*R���Q@��ƹG��F��ts��Jثp�@","","0","?"),
("F��_=^���a��E��}","wp-content/plugins/contact-form-7/admin/edit-contact-form.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",���f�W��z�","�;-�����Ǵ�=
("F�\\�C?�Z�����","wp-includes/css/customize-preview-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\�P���e[Hdgw","���l�.%��e^%�r��#�8�\\�*K_F�","","0","?"),
("F���Ã\\�O�fg�","wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��1����v��R","N3G�\'�`���+R>�P]E��γg/�b?���UX","","0","?"),
("F�\'�B�/�4{J�{w","wp-admin/js/edit-comments.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�xHՑE��>ٱ�","\"�ךJx�@TE���H!�n���aS@�C�N�","","0","?"),
("F����WaA.K���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/ControlSignatureUnitTest.js","0","Y�Z���P�ت�\0�c","Y�Z���P�ت�\0�c","�x�#w��sH;�U��L>�?��fp���","","0","?"),
("F���?�C;$��H
("F�8*\"ڹ�pEm�&-�j","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_888888_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�<g\"���<�!���uU","�^���,��9��T��~�̠�=X�q�tِ|,�","","0","?"),
("G�(���T�h��D6[","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-8.svg","0","3�D K���r#0��(","3�D K���r#0��(","�f��������4o�)�ȧ��c�!54��\0��","","0","?"),
("G Xe��x��w0\\�o8","wp-includes/Requests/Response/Headers.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ÂҶ�A-��>c�`","�E�\n�F	�	���M���%{��a���`,�","","0","?"),
("G6U�2\01R������J","wp-admin/js/theme.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���D���)B��x;Z��","3�����N*ރ�Б>�Ś�z\\��p`�S�%","","0","?"),
("G:Z��]Y!tI����\"","wp-content/plugins/wordfence/fonts/roboto-KFOlCnqEu92Fr1MmWUlfBBc-AMP6lQ.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�jI78�{��r�P�","Uk�������ZM=OEw�D���w�� |I�;","","0","?"),
("G\\�Y��U�\'x?el__","wp-content/themes/flatsome/inc/admin/customizer/img/align-center.svg","0","��g�5,���VQ�F","��g�5,���VQ�F","�O�U���rq��V��Iv���j�R�\'3���N","","0","?"),
("Gm��:�MľV��LЉ","wp-includes/js/tinymce/utils/editable_selects.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�J��q2��I\'�J�9�E","�v��Gjs��f��	e�d�&�g��+���","","0","?"),
("Gu��������ʭ�","wp-includes/class-wp-meta-query.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��U?h����35�^Z�","�V�>��\nB�i�+��
("Gu�^�/1��ՁS�7","wp-includes/atomlib.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","bJ3�֔�ek�e�\'[","�{�)��N�RK�߬�<�ʚ�EYG�����","","0","?"),
("G�9q���=ʥ[3?a�","wp-admin/images/bubble_bg-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R=[����;��c��","�}�n�vB.����ֺ\'��l��aD�a�sM��k","","0","?"),
("G�7��I&:�x","wp-admin/edit-form-comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|@^����r!���","��_���;�8;w爴\'qA&p�������n�","","0","?"),
("G�hk�+�ҮF��nqP","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/PHP/GetRequestDataSniff.php","0","\\�>�4�R\'�*U_��f�","\\�>�4�R\'�*U_��f�","Q�r�m����ԗM&�^d<{��1_�L��p�","","0","?"),
("G�[^��m���q�\n�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Functions/FunctionDeclarationSniff.php","0","1\0�&�6k��[#�\"vY","1\0�&�6k��[#�\"vY","_Iw��T2�ѼQ�EHV~����a�nM�tG","","0","?"),
("G�c����t�k�?�\n{","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/SwitchDeclarationUnitTest.php","0","] �/�OO�d��%I~","] �/�OO�d��%I~","�d˪S{~�\01��c�w��wr��y�n�`�5","","0","?"),
("G���g��}
("H��Y�fUH�u�pd","wp-includes/Requests/Exception/HTTP/400.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Q�n���VJ�R�x�5��","�d�>�����	�i�H����b$�&�n���6�p","","0","?"),
("H!b��݋����U/U:","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-sanitize-values.php","0","-+�d?[�O�]e~\"��","-+�d?[�O�]e~\"��","�ss�씝�\"W�=���PF0�KR����Q�U","","0","?"),
("H+�E~�}�1Q���","wp-includes/js/wp-util.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���9��-���ر�,","��sfV?b���L.���O��o��B��[���`4�","","0","?"),
("H6����*Ȍ��8z","wp-content/themes/flatsome/inc/structure/structure-sidebars.php","0","�{�0��F�X²�֮Z?","�{�0��F�X²�֮Z?","�}\nS\n����\"���T����7�mDut�&�r�O","","0","?"),
("HA���f�,���$F-�","wp-admin/css/customize-nav-menus-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�N� �F�>�i��","��˻!-�M͙t��1�4��x�Ҿ�-��","","0","?"),
("HGh\'��x�R���~\n","wp-admin/js/customize-nav-menus.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��U^���7�|�A�C�","~e��GO��I�^�2.�n�X4}��<7�d~>","","0","?"),
("HLE�͈�#����~�","wp-content/themes/flatsome/page-blank-sub-nav-vertical.php","0","�qc��鴕Nӫ�","�qc��鴕Nӫ�","�3&�p�}[��#��D��C�5S#�k<�w���","","0","?"),
("HU��|F��_��:|�","wp-content/plugins/wp-rocket/inc/3rd-party/hosting/godaddy.php","0","����X�H�>l;��@�","����X�H�>l;��@�","�Gߦ�s݃ֈs��0cK�+_s�~��Zx�","","0","?"),
("H`�\\� �r���Y�C","wp-admin/includes/class-theme-upgrader-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","_J�W;���ס��^�","]�{����`a��b\n�	-Z���2L�l0�P�-l�","","0","?"),
("H�	ڍ�Q���$�?9��","wp-content/plugins/contact-form-7/admin/includes/admin-functions.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���o$C��
("H�\\��E3ޢR�4	G4","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR1/Sniffs/Classes/ClassDeclarationSniff.php","0","��.�t���\"ة��_�","��.�t���\"ة��_�",">:<��2�`\0�βc�m���d�G�<��Y2","","0","?"),
("Hý��i�Z�U,H�L","wp-admin/includes/meta-boxes.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�GJ[GZ��~!0","��]��sW�؝h���czP�~�B�\'��n�@�]�","","0","?"),
("I�7�(���X�\\���","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/DeprecatedNewReferenceSniff.php","0","U��̈������*M","U��̈������*M","�0{V�@Ule�� uSQ�u�0C����C_","","0","?"),
("I�[]�x�?dۻ�IO","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-sortable.php","0","W(�_[�L�=�h�q�6","W(�_[�L�=�h�q�6","�:��g6�����Ŀ�8��6�R��ӿ�","","0","?"),
("I%w\n��Iu������","wp-content/themes/flatsome/woocommerce/content-product-small.php","0","�`$]�,L�+�̋��","�`$]�,L�+�̋��","�r0Y}h�s�4z8hx�Χ�3\"�Y����7K��","","0","?"),
("I0��S�$2�T��B*","wp-includes/widgets/class-wp-widget-calendar.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���~\\R��QA
("I6.:\n(���i\0B��","wp-includes/rest-api/fields/class-wp-rest-user-meta-fields.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�H
("I6U�
("IO/g\"��%4e<i��","wp-content/themes/flatsome/template-parts/header/partials/element-languages-sidebar.php","0","6����鼽�jC�Qz�","6����鼽�jC�Qz�","��a�9S�����$	xҐl>R��:�:Rm��","","0","?"),
("IQ
("IZ�Ǯ�<�\n�j�[M","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Functions/ValidDefaultValueSniff.php","0","�S�����3�d����","�S�����3�d����","7�%��W�\':Ҝ�p���8[6 &k@���","","0","?"),
("IrY \n��Y��E\0�G","wp-content/themes/flatsome/inc/admin/customizer/img/slider-focus.svg","0","�A�*�u�\\�3�%��","�A�*�u�\\�3�%��","�l[(�ͯI{9��x	����k�V�R�j\n]���","","0","?"),
("I~4���C���I��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User.php","0","�q��4��q�/�)�","�q��4��q�/�)�","X���������]3ݠ�l����TL�F��","","0","?"),
("I���[�٬��:Z�gr","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-radio-image.php","0","e���]��yX��!","e���]��yX��!","Y�1��4����k�iv����,Oך���0Բ","","0","?"),
("I��:Bs�#����@�","wp-blog-header.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��taMm?�%,=t�z�","5Cz��0�ې�u�X��I��!��X�处","","0","?"),
("I�t\0L�{�\n����","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-grid-style-1.php","0","��X�v���O&(Ԯk","��X�v���O&(Ԯk","��l���������E���H�8P�UX쁆�Y)�","","0","?"),
("Í�Ǌ}��5�l���","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/mobile/amp.php","0","�2�3e҃f.��pNiP","�2�3e҃f.��pNiP","W*ɽi/`���o�:��Gm:�?������","","0","?"),
("I�V/��6�s���","wp-admin/js/editor-expand.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E\0J&�;sv���\\y","v�Lfv��iv�(��?�ܶ�P�q�C�o��","","0","?"),
("J�%.��~�q�l�","wp-includes/class-wp-text-diff-renderer-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","T�����%ug�|m|�","@�$�џ�K�~�=\\����I�*���и�[�","","0","?"),
("J?#�͌$M�7�c�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/AbstractPlaceRecord.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","`�I.:���`PR�","#z��R�HU���>B�nP,���\'�eT�tߺ","","0","?"),
("Jf�3?���_r�C�","wp-admin/images/w-logo-white.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","n���Jvۢ~�y�\\�","n��D��� _�;�!G�םcV�0M9i�=�","","0","?"),
("J��E[�7U���~","wp-includes/js/plupload/handlers.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","z�����6տ��u�a��","^����<K׏�+�s	e��l{�;2	\'�a{)��","","0","?"),
("J�o��-IXU6�*�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/share.svg","0","�ĝ�@�(���(�","�ĝ�@�(���(�","�̲�@P�3��!�<ޯ����YI��27oiKE","","0","?"),
("J\'�T���R�o<{G�0","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-3-col-full.svg","0","��r�7��HI���","��r�7��HI���","�,��R�P�K\\�����x�Ug�6ao��T	�","","0","?"),
("J-l��E�߸ᤆ�k�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/FunctionCommentThrowTagUnitTest.php","0","�#~]/FV����˯�","�#~]/FV����˯�","޷9�\'�.8n{�^�+�u��+6T�ܓ����O�(m","","0","?"),
("J/��=�TTn��$C(","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Fixer.php","0","�\'c���\0��� ���BD","�\'c���\0��� ���BD","��$أ���v����$�#�l�,I\"�3܄ �","","0","?"),
("J4H�0���\0����5","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SuperfluousWhitespaceUnitTest.3.js.fixed","0","�d��╫^D�f","�d��╫^D�f","Kx%{��W��Fy�n�;M=���+\09D�8���","","0","?"),
("J?��4�Y��h�e!>O","wp-content/plugins/contact-form-7/modules/submit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d�7���p)53+�}�","��wdi\na�Bl��Y�lo�7�|mi�e80j�","","0","?"),
("JH���lEp]&e3�0�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/woocommerce-multilingual.php","0","���Z��r��p�ޫg�","���Z��r��p�ޫg�","m�ᠶ�M���]�FI����\02��D�,\n�G","","0","?"),
("JR��oyz�\'g��}","wp-content/themes/flatsome/inc/builder/shortcodes/values/masks.php","0","�#b2�;\04t�\'�󘬲","�#b2�;\04t�\'�󘬲","�h��:��Dz@�JAT#���T��ux(@H","","0","?"),
("JlT6���nt@�X�;","wp-content/themes/flatsome/assets/js/customizer-frontend.js","0","T��U�9�bj���Q","T��U�9�bj���Q","]�˒Gg��h�:	X>���Q�$;>�ڢ�{<","","0","?"),
("Jl���1������","wp-content/plugins/wordfence/models/.htaccess","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�E\"xK��{�8�dS�","C����\'r�9��@�K�ކt�����w#@k�","","0","?"),
("JvUo/ևH_�d��.�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/WhiteSpace/DisallowSpaceIndentUnitTest.php","0","�\n2;�p��곭�","�\n2;�p��곭�","_Y�SM��$xp%�Q`�����
("J{�ֹZi^ùx�I","wp-admin/media-new.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�o��V���h	٨\n�","*unEW�u�)���e]�xWW}��<\\����","","0","?"),
("J�v��?�\0~0����","wp-content/themes/flatsome/template-parts/header/partials/element-search-form.php","0","룐_mx�uN0�؈�","룐_mx�uN0�؈�","�p�}D���K��]+����㧡8t�����","","0","?"),
("J�>�����\"��/","wp-includes/Requests/Auth.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","1��R��W��ÔO[��J","bO�Q�wù�LѠâ��������9Q��lrl","","0","?"),
("J��j=P6���Q��@","wp-content/plugins/wp-rocket/inc/common/emoji.php","0","V�\',V�k�K��a�","V�\',V�k�K��a�","�@��:�\0��%��;4�<cA*n�t��1Q\"","","0","?"),
("J�\n>�� G���^+:","wp-content/themes/flatsome/inc/builder/core/server/src/Services/Container.php","0","�[��5t���U1�i","�[��5t���U1�i","���I?��j����8��3���x�rW��~�","","0","?"),
("J򾁬��Oh���sDؾ","wp-includes/js/zxcvbn.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��/,��YB��[P��","K�uP� �K��\0��YA,Qשԣ�[�u","","0","?"),
("J�&@��>B)�Y�o\"","wp-content/themes/flatsome/inc/admin/customizer/img/product-box-add-to-cart-tools.svg","0","�v�����p����_�","�v�����p����_�","C
("J��O^�u%3��1+I�","wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","89�\"��zz��Vv*��]","�ۆ%%l�:J�f<�bq��P���Pt˯}ߝ\"�f","","0","?"),
("K����ߺ�b�","wp-content/plugins/wordfence/lib/compat.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">����z�x��C�}","�Nܓ�#d�t�B!\"M՞�==�@o��","","0","?"),
("K\'ȴ�i6+��\0q","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/GlobalKeywordSniff.php","0","�҅��MP�`���k","�҅��MP�`���k","���E���nP�\\�BGtA&�=�C��-651�EC","","0","?"),
("K2P��^�`X����","wp-content/plugins/wp-rocket/inc/admin/ui/meta-boxes.php","0","�:��K~<�D!/","�:��K~<�D!/","Ӭ����½7gW�q���t�(�$螧R�-I","","0","?"),
("K4�p�Ww�2��c� �","wp-content/themes/flatsome/inc/shortcodes/team_members.php","0","0�{�_U}�kVH��1�","0�{�_U}�kVH��1�","�/�}��4S��#8�i����|ޣ\0���Ů","","0","?"),
("KKOf�Sd�iB0Ov��","wp-content/plugins/wordfence/views/scanner/scanner-status.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ޑ��[.ɕ���l\\:","&��k0l��c�X*��*?���
("KW Cv����5T�b%m","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Sniffs/Files/EndFileNewlineSniff.php","0","�^\0���G�bC5�y�","�^\0���G�bC5�y�","��߷�;�1��\'�t�\'{�k�,U�_~��k�","","0","?"),
("K~9A�S��{$X�a�Q","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/LongConditionClosingCommentSniff.php","0","a[��uqX�[�\\(�","a[��uqX�[�\\(�",",������=�5=J0�p���d��^�d�","","0","?"),
("K�nҋD&sR�WU(�","wp-admin/css/farbtastic.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","#�^�:�G�(���:k\n","4��7V�f�� �/��������D��W3p","","0","?"),
("K��X�LH\\���","wp-content/themes/flatsome/inc/admin/options/blog/options-blog.php","0","]��qLEQ�oV$�","]��qLEQ�oV$�","��R�ҥ�Mv�R�rϡM�G����BC�ı��$","","0","?"),
("K�c��#2s�/(�\"�","wp-includes/widgets/class-wp-widget-pages.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��3��񢢮���s","���\nJ���j���YP-����6�C��","","0","?"),
("K��<�H<7�E�,l��","wp-content/plugins/wordfence/views/waf/options-group-brute-force.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��ٻ�D�;ѩcۺ","�RA{����Rda�w�3�J�\\j��p��","","0","?"),
("K��]C��l7:�D\0","wp-admin/js/widgets/media-audio-widget.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����	V#�Ʃ�>�H�"," 7�h$�҅ ��l\"��j����r�Q�j�","","0","?"),
("K��W�&\0\0K�\06�G�","wp-admin/js/set-post-thumbnail.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+QSWm�@�~��Q","ҀO��֜\04̛�X%�,~���@���3�","","0","?"),
("K�K+��2�	aeZ�e","wp-includes/class-walker-comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," ¼�K�;\\����y��","�#EV1CG4���i�l��~#�tW?�ZDq�9{&","","0","?"),
("LVb\'�ٍQⶍ]�","wp-content/themes/flatsome/inc/admin/customizer/img/product-box-center.svg","0","�4(;:��C����=W��","�4(;:��C����=W��","1Pe��X�9�׸KȊNp���+���ʃ@�^ԾK","","0","?"),
("L<#�������}","wp-includes/js/tinymce/skins/lightgray/img/loader.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9K���M�:�Tf�9","��;���T��O`(6��,�sk�Z���c�R��+","","0","?"),
("L#��/۰*��3���
("L(���n�9[2�C6�","wp-includes/js/zxcvbn-async.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","1��p9	�9�~��","DM��V!�zl��ۖ�\\̉�� �j����U�","","0","?"),
("LR7Q��ToG|�{","wp-content/plugins/wordfence/lib/viewFullActivityLog.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","@lM��3Jt�OF�@","[��`��\\��pǣ���T�b>=���Pi�vO�","","0","?"),
("Lc�n=ǯ��Y�~M�X","wp-content/themes/flatsome/inc/widgets/widget-upsell.php","0","�:�g����GJ���","�:�g����GJ���","ԇ�|���[\\�\"Ǜ��5�� \"��h�wP�","","0","?");
INSERT INTO bz_wffilemods VALUES
("LsЇś\n�c}>�K��","wp-includes/css/editor.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",".�HS�$��$�<�	���","Y����@��%\n!E2�*��4�!�����uOH","","0","?"),
("Lz����Z���#�<","wp-includes/class-wp-locale-switcher.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","W ��۷�1K� ","�����P	\n����X�E�1�q �o�{\0U\'$��","","0","?"),
("L��@$���+��s�","wp-content/themes/flatsome/woocommerce/single-product/layouts/product-left-sidebar-full.php","0","6��}�����Įp�","6��}�����Įp�","��+���}к����n���^�#�%w�t�/�","","0","?"),
("L�G7M�A ;U	���r","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-multicolor.php","0","�FQ�G3��/%M��","�FQ�G3��/%M��","|9	�G����L���@c;�}T��;�sKtH	<ť","","0","?"),
("L��e�t\"pc(	�e�","wp-includes/wp-db.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","uԲ��8S.�.�=���","��K��(���A&g��\n��T��mWK���7��","","0","?"),
("L�sfͭ*�ࡓ�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/DB/RestrictedFunctionsSniff.php","0","�������y�96��5","�������y�96��5",">|�i��*u>������</��L
("L��ϖ\0�y\"P��","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�v�������|���","&����Y@f����{y�=�F��#Fs��aͮ�","","0","?"),
("L�>t���N�����","wp-admin/css/colors/blue/colors.scss","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��5Iה�g,)Z�YM�","�\\k��S�뚑�n wW��	�!�*�~�v��","","0","?"),
("L��)��a$�D-�Ӯ�J","wp-includes/js/tinymce/plugins/wplink/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i�\'6�n�4��I�l�","ON��(Ts�Y�zvŽ�:&K��d-�p��g","","0","?"),
("M\0��x��h��J~���","wp-content/themes/flatsome/inc/builder/shortcodes/ux_gallery.php","0","���Ԑ��<�\'�,��","���Ԑ��<�\'�,��","���}��=\"�5M�A�pk\"���K(�B����","","0","?"),
("Mx1ǋTm�R_2o","wp-content/plugins/wordfence/views/dashboard/global-status.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�.1���(>��VE~","�Ih������棗ht�;���a6�N*�z","","0","?"),
("M [w�j�Q�u~��","wp-content/themes/flatsome/inc/shortcodes/ux_slider.php","0","ф���3�O�j�Q�","ф���3�O�j�Q�","Vܱ�{��2��SG/���y�Dr�1�R�","","0","?"),
("M!q\'\\h�%�|,�hi�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Classes/LowercaseClassKeywordsSniff.php","0","	�����q��T�R","	�����q��T�R","\n�1l&*d�4u!���5��\"�@]&Cm��3�~","","0","?"),
("M?,5�*�����K*�f","wp-admin/js/post.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����C����ϖe!q","�؎�������h��9�xnR�P���7","","0","?"),
("MO{�\n�~2�#f�8�͐","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewArrayStringDereferencingSniff.php","0","���2���xR���T","���2���xR���T","���jIG��ş��)T��K��y�8N\"Mz%�","","0","?"),
("MU�b7-��]$�R%��(","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/ClassDefinitionNameSpacingSniff.php","0","#2�|����f�9���","#2�|����f�9���","8.W�\0�=G�x1M���Y��\\`P}D�3T�$��","","0","?"),
("MW�	���:��ي","wp-admin/images/align-none.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�eqd2���u����
("MY��G��\\tX����/","wp-includes/customize/class-wp-customize-color-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s�X�oI���`�8N","C�U�]sMu�f�-z�I�\0�=�;p���r�̎�","","0","?"),
("M^�Io�o+�IR�r�zx","wp-content/themes/flatsome/inc/builder/core/server/src/Elements/ElementOption.php","0","l��j�x����O�4k","l��j�x����O�4k","���\n��桋�C���P�����~d�����9.","","0","?"),
("Me�f�Ǵ��ر�<K","wp-content/themes/flatsome/template-parts/footer/footer-transparent.php","0","sO��~|*�ZXSrM","sO��~|*�ZXSrM","�t�/�`�8��2\\N��<�,\'��y��OHa ","","0","?"),
("Moc�U�&��S  �:","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Channels/UnusedSystemUnitTest.php","0","~p̵�gc���ˮ�|S","~p̵�gc���ˮ�|S","�1�Y��ʈQ���咤Q#.�J�ۥIܿ","","0","?"),
("Mo�%����S�\0�Xx�
("M�(?�H��e�B�j�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Util/Tokens.php","0","&�%��M���@�t��","&�%��M���@�t��","{�����0nm���w���!T�dUD?�AW�t","","0","?"),
("M�\nmK�*��LV^T]","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Objects/DisallowNewWidgetSniff.php","0","��C�ܾ��tpB�9�","��C�ܾ��tpB�9�","���lrh��e����N�%0�V�A�����]","","0","?"),
("M�&��=�7,Mv.�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenNamesAsDeclaredSniff.php","0","�b����F��IA�YU","�b����F��IA�YU","�+aj��H�����mX}B	�u*�8#ҵT�78(","","0","?"),
("M�>��q���15��I","wp-content/themes/flatsome/inc/admin/customizer/img/portfolio-shade.svg","0","�w���ٛ�o`y��Vo","�w���ٛ�o`y��Vo",":�0Kl�&H5�Y\\|��!MQ\n��%��","","0","?"),
("MР\0�A���9Q�+��","wp-includes/js/admin-bar.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��3���\nȗM�i��","Ó�sFU*�I����SAkk�X��2�6�{թ","","0","?"),
("M�;C�����8Yyﲏ","wp-includes/js/twemoji.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","G\0�a��Ҩ�
("M�)ģԄ�oDb#\\u","wp-content/themes/flatsome/template-parts/header/partials/element-departments.php","0","��0�$��J]����","��0�$��J]����","eF75U9���b���-���f�a;�9\n|s-","","0","?"),
("M���I�M����rD��-","wp-includes/post-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�eg���\"�d���","v�e���	�?i�N�G�-z�I@�l���s�ҧ","","0","?"),
("N�ˀ�<���3��K��","wp-content/themes/flatsome/inc/admin/customizer/img/cart-icon-cart.svg","0","K��wճ������z�j","K��wճ������z�j","
("N j�el���in^r","wp-content/themes/flatsome/inc/shortcodes/commons/border.php","0","�\"��o;?\n�#�T´,","�\"��o;?\n�#�T´,","_�\nOQ*�JUO��0%(�\\+����`��^]","","0","?"),
("N(� }��fݙޫ�)","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/CapitalPDangitSniff.php","0","\'b�\'�s4�m#8�8�,�","\'b�\'�s4�m#8�8�,�","���@B�G�M�oQ���\"Ӣwec��ӂv
("N7�A�\0�nnV�֑�","wp-content/plugins/wordfence/images/checkbox.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\"��G
("N|�Jв�zn��sw","wp-includes/pluggable-deprecated.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�c��d��\0��~�5j�","�yJ���\n#xt�T�/z�W��k��՞a��b","","0","?"),
("N�3�j@pu5����^��","wp-includes/js/tinymce/skins/wordpress/images/more.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\n�\nm\0;�˫�z","$��v��o^���U� �A\0���:�\\C�u��","","0","?"),
("N��d����m�|8��`","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/DB/RestrictedClassesSniff.php","0",".n\\����o�g2�c�",".n\\����o�g2�c�","�瀀Wa��y��!��m��
("N���HV����}�4G","wp-admin/css/customize-widgets-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�pT���uD�x���","�Z
("O	��S����#��Yi�v","wp-admin/includes/class-wp-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=���T����ڀ�eJ","ꙗ��\'7�3�I+֔:OHo���:�R��r","","0","?"),
("O\\@���\\U�����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Classes/DuplicateClassNameSniff.php","0","�������5�jNA�","�������5�jNA�","�17���|���V=�z�,���;���/����d","","0","?"),
("O =(�:��<�	�1F�","wp-includes/class-wp-feed-cache-transient.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\"�@a�LW(@�",":��;h�!xE�z��P+�dV�0����D�","","0","?"),
("O=��h�\0}O��rL�b","wp-content/plugins/wordfence/vendor/composer/ca-bundle/src/CaBundle.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Z�U��~�L5�@VU","/�r��T�rm����G�с�
("OS�Y�Wz!8�ʣj�","wp-content/plugins/wordfence/views/gdpr/banner.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","*K�`�;\0�}��",",�cn9��۝$O���`��&�p�T�OX�iس�","","0","?"),
("Oc��f�h���n��r�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Objects/AssignThisSniff.php","0","�wC�l�Y��E�?q}�","�wC�l�Y��E�?q}�","� ڵ^�/�v{��w��K��2��������g|","","0","?"),
("Oc��%�`d׊�%?W","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/cookies/eu-cookie-law.php","0","aˑ^�?��
("Of$�(DBA��=��","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/zh-CN.js","0","��tn,��_�r�","��tn,��_�r�","��.��>ڸ�É���`~@�����dF\n��b�","","0","?"),
("OlqCcێ���������","wp-admin/css/forms-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�d����!g2^��#�","8G�4��衫�;E�nu����Ғ<Iǣ��yv","","0","?"),
("Oy�}Ma���_���I","wp-includes/Requests/Exception/HTTP/504.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�m�̪Db� ��*�","�<����!B�|$k���݈�# �e�i%0","","0","?"),
("Oy�gt�$=�.�H !�","wp-content/plugins/wp-rocket/inc/front/js/lazyload-1.0.5.js","0","6ܫj8B�<w��n^FZ","6ܫj8B�<w��n^FZ","CԷ�9�kV�$r�h0�AJ71�*��s����","","0","?"),
("O��\\���P5���{�R�","wp-admin/plugins.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(�Զ���ڮ��)�^","��э�	\0~�?��k�˛1Ơį���}f=�[Y","","0","?"),
("O�궭���܈>�i�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Channels/IncludeSystemSniff.php","0","��P��Ӈ�ݑ�Ŵ","��P��Ӈ�ݑ�Ŵ","�ld�{_Bّ�T�j��Ѱ-o_��o\0L��_!","","0","?"),
("O�������R$\'�-E","wp-content/themes/flatsome/inc/admin/envato_setup/envato_setup_init.php","0","��z
("O����&�r�蓏�� ","wp-admin/freedoms.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��_�L)w�M=�l@~�","��_�pJU���	����GUQl{�0��\0��","","0","?"),
("O����R�r����D�?�","wp-admin/js/postbox.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\'��s{����	i","�׵�*RB���E����K^��v�l�;�n�X�","","0","?"),
("O�3\"B&��^(�w��j�","wp-content/themes/flatsome/woocommerce/single-product/title.php","0","s�f2@�su�y��yͅ3","s�f2@�su�y��yͅ3","����S@�YOB�K=�ja=���f
("O�����y ��k	b�","wp-admin/css/customize-nav-menus-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'���?B��	�","u��[n�M8JKx$c��K��_(QFɍ�2�","","0","?"),
("O�����HI!K!0[�","wp-content/plugins/wordfence/lib/menu_scanner_options.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�
("O�5e���;hz�w@�W","wp-content/plugins/wordfence/vendor/maxmind-db/reader/src/MaxMind/Db/Reader/Metadata.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Z<����{~G�f(","��,ב[����@�+���?x���P��А�","","0","?"),
("O���_!���FѫD5","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/BreakpointTest.php","0","{�v7�/PS�u�;][�","{�v7�/PS�u�;][�","DkX5O,ҵ�d��y�l{�Ӊ��5{Zd�","","0","?"),
("O�hu�G���&\0�L�","wp-includes/Text/Diff/Engine/native.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�S���
("P�u�}zI���X5�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Formatting/NoSpaceAfterCastSniff.php","0","�x��?%$�	/�","�x��?%$�	/�","^�����0�7\n΄�~A\'TD��f�\0��$a","","0","?"),
("PE۫�7r|oI�6��>","wp-includes/js/backbone.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�cݾR�^{�3�&���","͜��QI��{�x!_�+��\0�f�d*���\"֞","","0","?"),
("P&_#�\'�zT���s","wp-includes/Requests/Exception/HTTP/417.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Bpj�hO^�c\\G #","���L�T��Ҙ$xDs�^�h_!kC�\"1\'��_�","","0","?"),
("P\'�(���?+�z��$�","wp-admin/js/postbox.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��÷�����T�FS","!�Sr�������!�0	����?����x�l�","","0","?"),
("P73o�	��\0�=��","wp-admin/js/word-count.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\4�;n�1B�R�zQ��\n","�u��*�4Iy�^xj�(�w��{��N�M=�","","0","?"),
("PE!+E���t�|��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/ControlStructures/SwitchDeclarationSniff.php","0","��Ht��^!]*�Q�","��Ht��^!]*�Q�","��n	L��2$V􊱧�G���N:�/�d��j2","","0","?"),
("PJ�~]��; ��`y","wp-includes/widgets/class-wp-widget-media-image.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","a�y�����>�G�!+","�����8���l���]\'f15�j�aĆ��?","","0","?"),
("PW����`$�E���f","wp-content/themes/benh-vien/template-parts/posts/content-search.php","0","���l\nx{�_Mi�E2�","���l\nx{�_Mi�E2�","�������ˈ���8n��7/�W�W 8s���s","","0","?"),
("Pf���s ������1f","wp-content/themes/flatsome/assets/img/payment-icons/icon-elo.svg.php","0","9]���]�m��i���I","9]���]�m��i���I","�o;�vd��JO ٬���I�\"~709�","","0","?"),
("Pk�[��L����yX�","wp-content/themes/flatsome/woocommerce/single-product/layouts/product-no-sidebar.php","0","�1A5?:����*��","�1A5?:����*��","d!�0���v_!�ԗ�-ɴh\n��	�0:�","","0","?"),
("Pl�f�{�=�bGBt��","wp-content/themes/flatsome/inc/builder/shortcodes/woocommerce_checkout.php","0","�E:�&���(��ad�X","�E:�&���(��ad�X","_��4o��vx
("PsA$���D.LV)X","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/PHP/EvalObjectFactoryUnitTest.php","0","E@�����#o�jq�\"","E@�����#o�jq�\"","
("P�L �υ6�X#��Dz","wp-content/themes/flatsome/assets/img/payment-icons/icon-cashondelivery.svg.php","0","��n�_v$��(�UU\\n","��n�_v$��(�UU\\n","��\"#�k�6���1FR��e�}o	��`
("P��[�D�XP��a���","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/Subdivision.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���;u�S���l","�M>:
("P��iz�t�a�}�a","wp-admin/users.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�sO̘�G�$�Q��i","��Ǧ��񇪼<�̾�)�!�4�������","","0","?"),
("P���󞎽E~�${���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Functions/LowercaseFunctionKeywordsSniff.php","0","�#i\"����KE�\'�\n","�#i\"����KE�\'�\n","a,*d�b��O��([fE�d����Sq?[�\"","","0","?"),
("P���`��؛��\\y�J�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/select2.full.js","0","�$�}4���$Ȁ?1�v","�$�}4���$Ȁ?1�v","���2�.TX�P��~�\"A���LS�M/-","","0","?"),
("P��@���;b<\n�c�","wp-includes/class-wp-oembed-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�4|%Y���8Th","44�j��\\B3l���y�y��T�ᶇ�+�s=�","","0","?"),
("P�M��I̸�ݭY`r","wp-content/plugins/wordfence/lib/wfHelperString.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�OV�FaD�V�4�4ܪ","2�-7��na5A�>�cִNA-�p{�Qn���","","0","?"),
("P�1$���\\*�C","wp-admin/images/stars-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��A���#�S�Me.^","[��耿�_(
("P��0��a��R�z= ","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ҒV�]{���[�p�","���5����Ww�q�4�)&�\nd@���f�","","0","?"),
("P��g���凵WSD","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Debug/JSHintSniff.php","0","�����-4��_��","�����-4��_��","g%�����\"y�/��Js��%k�7+�쑆b��)","","0","?"),
("Q;���(����Mp*�","wp-admin/js/widgets/media-widgets.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���rk�jYYh���J","f2s�	�\n-��&7
("QT���*�f�P��.�","wp-admin/includes/file.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ŕ�	#���{��ǾY","	�H����	?�.��] Y���k���*�2","","0","?"),
("QY��1�Tl��Vr<","wp-includes/js/customize-views.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","a�v�����1�!��","I�Xg̱�eJ\"�r�sz�X���rW��q�B�\n","","0","?"),
("Qh�p0�nɁsR@�d�","wp-content/themes/flatsome/inc/functions/fl-template-functions.php","0","P�MŅ
("QuoPX��\0��Sڞ","wp-admin/images/bubble_bg.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=,����(��2cV� 8","r��qMCY&�fp�3@�-�5��V{�<�M","","0","?"),
("Q|�E��qf�a!h�#�","wp-content/themes/flatsome/inc/builder/core/server/helpers/page.php","0","Md\\�/����c","Md\\�/����c","�Q���0L�T-�ar7�C���(�l�)�","","0","?"),
("Q��cm�uX3�B+��X","wp-content/plugins/wordfence/views/gdpr/disabled-overlay.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�!�*�o��2¯�$","T���CWD9�-Χ�0�(�J�i�������","","0","?"),
("Q�����-Z-fZz�1y","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/EmptyCatchCommentSniff.php","0","jmf+����Y����V","jmf+����Y����V","x��t��]ϛ�����/�_�Ts\'��7","","0","?"),
("Q���6K4������H","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","l�{	��+p��\n�p","����KӖ�v( ś�j�o�^u���\\�","","0","?"),
("Q�`���8�M�8","wp-admin/press-this.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��W����b���ʯ�6","̺����7���\nkU:�!�Q+�ÌT۵[=&�Q","","0","?"),
("Q��t=����0�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/Analytics.php","0","	5�eP�m��y*","	5�eP�m��y*","(��4��\n�Q�7Q���L�q�+t%(T�r���)","","0","?"),
("Q�.ì�\\����XeOI","wp-content/plugins/wordfence/views/dashboard/options-group-general.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�J-^P�/Y��z�w","���̎F�/��6��^D���c���5�ͪ0�6","","0","?"),
("Q������l��g�-��","wp-admin/js/comment.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�6�
("R�A���b%�(T","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-generic.php","0","
("R3�Us�3��}T���","wp-includes/js/autosave.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�uM\'�W�K�h�zJ��","��8��J�{��i6��\0>���M�q�����","","0","?"),
("RA����t�Of��Ņ�","wp-content/themes/flatsome/inc/builder/core/server/src/Ajax/WpAttachment.php","0","�y��\"������3��","�y��\"������3��","e���\'	�3- <XY���M��׹J�]e��3","","0","?"),
("RH�yp/|tExy�Y$O=","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Objects/ObjectMemberCommaUnitTest.js","0","�(�>B��p��X�2W��","�(�>B��p��X�2W��","d?ה>�%W�zb��S�A�Q=n�IU������","","0","?"),
("RK_���j|����o�","wp-content/themes/flatsome/inc/admin/options/header/img/header-simple.svg","0","3�p\\}�F-�f�?t","3�p\\}�F-�f�?t","�q�Cc�\0m�k2]�Ǌ�x�U�,��$ơ�a�","","0","?");
INSERT INTO bz_wffilemods VALUES
("RQ�
("RQ�b7f�� |~ۓ�(","wp-admin/js/widgets.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�U]�]�:B3F~D���","7�Q�]^0.K�vD�(;�\0-<7N2��5
("R�̛l�bu�X%f�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/EvalSniff.php","0","��( F��g�v$w\\L(","��( F��g�v$w\\L(","&���O�ƈcw��i�ĭ�ע��S���V�u�ù�","","0","?"),
("R���1?���Y�VDt�","wp-content/plugins/wordfence/lib/.htaccess","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�E\"xK��{�8�dS�","C����\'r�9��@�K�ކt�����w#@k�","","0","?"),
("R�x�4Mp@�9u\n֊ p","wp-includes/images/wpspin.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Nm�h����;@��","m5���^í%�n�4<E\"k��Xz�ӧ�=�","","0","?"),
("R��|Rx/�bzn9\0*�J","wp-admin/includes/plugin-install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�bfQnl3��s~��","D}�^ YZ.�9���L�ВS�%������","","0","?"),
("R�\\SC�|ju�9��A","wp-includes/js/media-grid.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��5����\"�SҲ�","�ނ+���7P�Ԛ��{���D�Jg���_�8�","","0","?"),
("R¥�����Le�q	�&�","wp-admin/js/user-suggest.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","3)��()ݰ4}\n�","�g<�/o�@��l�F���o�\n��I��V&_�a�","","0","?"),
("R���|��r��¹b털","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/DiscourageGotoSniff.php","0","�|	�Z�R�9[�n	","�|	�Z�R�9[�n	","�w�/h�W��������*>p�6�?Y�]�@I�","","0","?"),
("R�H
("S����Jn�ux�
("S�,���nŷ�u�B��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Sniffs/Classes/PropertyDeclarationSniff.php","0","媆<�8c��-Z�c1�n","媆<�8c��-Z�c1�n","YzF��[ȧӟ������fao|_�&��~Q0�1�","","0","?"),
("S���>��	���","wp-content/themes/flatsome/assets/img/payment-icons/icon-wirecard.svg.php","0","C����=e?h�e���","C����=e?h�e���","*q�%zR������k*%��쵹�\0ljN���/","","0","?"),
("S.FȫA�j���(�:","wp-includes/js/hoverIntent.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P\nޅL1A�Wb��\0","�\\�T8�if���Q�0i���`��M��x�","","0","?"),
("S0�־��K/17u���","wp-includes/js/jquery/ui/selectmenu.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}�˪2�9Zhxi\"6�","�1�V�^��F7J<\0M���f��X�Rn�Ϝ�5","","0","?"),
("SC�$�0��ÑH��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/easy-digital-downloads.php","0","���\"�Հ�6��\n���","���\"�Հ�6��\n���","���;=���׾,�QiS̴�%#:�Ȓl�po","","0","?"),
("SI�x����dDb�\"7","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Metrics/NestingLevelUnitTest.php","0","@�`)ɜe{����UE","@�`)ɜe{����UE","\n�E����?�U��~z͂fFZ��bU+�����","","0","?"),
("SX+7��1?����-","wp-includes/js/jcrop/Jcrop.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Z��7e�����Q�%K","!��@��X�7JŃ����p�3K�;S*!���L","","0","?"),
("SZ;tׯ0��ȍ�`�f�","wp-content/themes/flatsome/inc/admin/customizer/img/product-box-add-to-cart-button.svg","0",",zUp��0E+�	�>",",zUp��0E+�	�>","@⥢nRn�z����j�q�qAoe�	� ��|i","","0","?"),
("SgԦ0h~; ��","wp-content/plugins/wp-rocket/inc/admin/ui/modules/basic.php","0","�欦o]hZ�44|\\��","�欦o]hZ�44|\\��","�4S�C����׼
("Smw�q�T]���eM6�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Operators/IncrementDecrementUsageUnitTest.php","0","�C���tkD]��7�	","�C���tkD]��7�	","�X��ɰ��+�+��	rZ��tN(r��®<","","0","?"),
("S����p�>��Wr�YE","wp-comments-post.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5���1��W�=\0���B","�sI=b��6����ꌺ���5�3*X��0f","","0","?"),
("S�ϟ;$2��߼Z$z","wp-content/themes/flatsome/inc/integrations/contact-form-7/contact-form-7.php","0","-iK��j/-�osbG��","-iK��j/-�osbG��","(nb�CNH��=�=��������@��r��~","","0","?"),
("S��Smg:�&�����","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewMagicMethodsSniff.php","0","����Ի�o��M�[","����Ի�o��M�[","R4u���4__d�o�o���߾a�=���-���","","0","?"),
("S��&�az8�Jض9�","wp-includes/widgets.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�a�9]��O�1#h%+","�\n��7L�3�T�z8ߖ�5�O$]�D�b�Ry�W","","0","?"),
("S�^�7jK5I6K�2!","wp-includes/Requests/Cookie.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ѝC���(�2+�y`��","T<�!�M��,�z�[�~>V�2��#}��E)��","","0","?"),
("T���gn�H�M��<","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/BlockCommentSniff.php","0","0���\0�x�P9QU","0���\0�x�P9QU","���q����1�>��5�/(�n���N�Q���9","","0","?"),
("T�r���~�W]�","wp-includes/class-wp-comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9x����v�&�CB}","�\"1�h�\0CB�}/bע�&\n.smc6;GT�~)","","0","?"),
("T��K���x���5�","wp-content/themes/flatsome/template-parts/header/header-wrapper.php","0","���](į�B���eQ�","���](į�B���eQ�","UX��\'�r���b��٧)Ӥ�<����<^�Ч�","","0","?"),
("Tr�=4f���","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/sl.js","0","�c��C]]!X�x���","�c��C]]!X�x���","�N�ȣ�F3ôP\'�j��h�|�W��O��","","0","?"),
("T,\0����fu9���m","wp-content/cache/min/1/1500df545ec29c16c9adc50c8bead8ba.js","0","G�z�x��ɼ�/�D��","G�z�x��ɼ�/�D��","q�B��&z�w�������u>�P��SU�Y\"","","0","?"),
("T6K?���s� �7(�","wp-includes/customize/class-wp-customize-sidebar-section.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�N7Ĉ����?�","��{#�i�`��\0����j���` pǍ+�fF�","","0","?"),
("T<+��\")B;̲�<s","wp-content/themes/flatsome/template-parts/posts/layout.php","0","�h���ۉ���Kars�","�h���ۉ���Kars�","i�D$B8;xb q��L�$2X%o*#8$v�","","0","?"),
("T?�?:q׮P��ah\'��","wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N�Ad�D�1���7Q��","�\'7{~���g�?�\nh
("TM�����l������","wp-admin/includes/class-wp-screen.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","	\"QK�}�m��qp��","�]à�Q[�h��T���mi��7P|ܫ�\"*","","0","?"),
("TPa�χ�Kx\"�","wp-content/themes/flatsome/inc/shortcodes/ux_instagram_feed.php","0","�q����6ٳ\"]��","�q����6ٳ\"]��","lq\"�l�J�O�\'맡%\"Bt볝�\0v������","","0","?"),
("TPÚq�i�6������","wp-content/themes/flatsome/woocommerce/single-product-reviews.php","0","::�o��nK%��][�J","::�o��nK%��][�J","T��$��譕+��Y\\z/~�#�:	W\\]u�","","0","?"),
("TZ���� R繇�7","wp-content/themes/flatsome/inc/admin/customizer/img/nav-icon-nav-outline-round.svg","0","��
("T�.o@Ψ2�w�v��X�","wp-includes/js/jcrop/jquery.Jcrop.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","/a��Lru�4��","���Ϸ��yd�ix�{�p+��n�eځ��f�","","0","?"),
("T���vm?,�a���T4�","wp-includes/ID3/module.audio-video.quicktime.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��cSe	t{n�曑��","��Z���ˤ��I�LZ�~b�|�{�	��","","0","?"),
("T�4����ԍ�z��˱","wp-content/themes/flatsome/woocommerce/single-product/product-image-stacked.php","0","e]:.��w�;��ƹ�k","e]:.��w�;��ƹ�k","�ϒ���`֕�!��Ia,J�ڏ\'�k.�3�Ui","","0","?"),
("T�-����m�����$�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/DisallowSizeFunctionsInLoopsUnitTest.js","0","^��o�my,Ot&r�g�","^��o�my,Ot&r�g�","0K1�b��l��	x�\"*Mܰ���
("T�0���<�?�GH��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Tokenizers/CSS.php","0","���e۸�Lw=ҋ�","���e۸�Lw=ҋ�","�璲	7������}��yJޢ	Q��#�Fvfľ�","","0","?"),
("T��.��)m�&����I","wp-content/plugins/wordfence/vendor/maxmind/web-service-common/src/Exception/HttpException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�41l#}�p���zk1","��h��	�_��֚����!E��4�v��F��","","0","?"),
("T܌�7`\0�����(�","wp-includes/js/mediaelement/renderers/vimeo.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N>��D�6/~�F�y�","|>��
("T�o�眡m�Iy҅NC�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Commenting/DocCommentUnitTest.php","0","�*��HY��b�-p��","�*��HY��b�-p��"," Swa�?j�Nx�L\0t��γ��\0�EF��D\n�]R","","0","?"),
("Ub�G��+Fؽ/y߬","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Classes/ClassFileNameSniff.php","0","C_
("U�\\p{J��O�Q�&","wp-includes/SimplePie/Cache/Base.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�C�����2]�]#|j","�o�o����kj�\\0���[-�d8���;3","","0","?"),
("U9I\0�(cͿ��ݸ�","wp-content/themes/flatsome/inc/admin/envato_setup/child-theme/functions.php","0","
("UI�_����Ym���_","wp-content/plugins/wordfence/lib/menu_tools_livetraffic.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v`t���(�C��̇n�","���a�ўE˗�~��.��U-c�A�+a�5�J�","","0","?"),
("UW��r\nY`�w`�-`�","wp-content/themes/flatsome/inc/builder/core/server/templates/iframe-frontend.php","0","N[�f�6>�ʨT��b","N[�f�6>�ʨT��b","ŧ��\\�5Q����g��k������S�5�ؼ�\0�","","0","?"),
("U]�[Sݓ+�t7)��x","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/InternalInterfacesSniff.php","0","[�\\2%��z�D�Y��","[�\\2%��z�D�Y��","��x.%6�l��]��)%\n.�%~�dٵ:��|�","","0","?"),
("Ut6 ����{���<","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Commenting/FixmeSniff.php","0","HM(��RU#�]��a","HM(��RU#�]��a","�3дѣ��R�pһ�Bk��`��.��W�ޜ�","","0","?"),
("U� $A=�He�|�zȖ(","wp-includes/Requests/SSL.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","&Pg�\'A6�(�07TO","\n�Q���4Hw@��8<Sn-G�aM�RAӯ��","","0","?"),
("U�nɓb4lZ,I","wp-admin/css/about-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","G
("U���$i\"u��&���9","wp-includes/images/crystal/video.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����l��ڤ�;�=","��S
("V\n��U`�_�5���8","wp-includes/js/customize-base.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�6�ڤ����$���","�B�G/,Ԩ\0�n����_v���l���p��3","","0","?"),
("V%��z�	���b�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/UnusedFunctionParameterUnitTest.php","0",";)�6eK ��*`�0�",";)�6eK ��*`�0�","ER���~��,��13x/��Ņ?��Ld3","","0","?"),
("VJ*f�5��n>9�>��","wp-content/themes/flatsome/template-parts/portfolio/single-portfolio-top-full.php","0","��~!��:�X���!�","��~!��:�X���!�","O�Z��R�u�8ٱ�Z�.�+3��Ķ�G����*","","0","?"),
("VL6�7G^l%D5z3��","wp-includes/default-widgets.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��4kp�w�?*���",",A��(�&aN���̶rcGFǄ�u�s�:�LC�","","0","?"),
("VOb%v\'����!�f	�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-3-shadow-col.svg","0","���i���晝��R�x�","���i���晝��R�x�","r��(0v�\\���4�%���W	�����V0�","","0","?"),
("Vba\'��=�(9�
("Vg	?�ȝ�WI�`","wp-content/themes/flatsome/inc/admin/admin-init.php","0",">���S������",">���S������","^dʈ��_tupf���S���l��Q,D�w��h�K�","","0","?"),
("Vne!�z0u1?��","wp-includes/shortcodes.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_�V1������N","�k�����P��\n�R�0�Gq��a��0�O","","0","?"),
("Vrm�KE�p�j��6�","wp-admin/images/w-logo-blue.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[N�W��_p�w�0","ޣ^Q�t�3�H�unU❻��~�\'�T2","","0","?"),
("V�����댏$�x","wp-admin/js/post.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�R�`r̰� �$�È�","\\��h����7)k`�b��<�gBW67�.�r0","","0","?"),
("V��U륮@�#�2�ݻ","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/Collection.php","0","<p�1�x���/٣%xp","<p�1�x���/٣%xp","��ƶ�M���	tu�4tk�b�f���qa8,","","0","?"),
("V̀I���s�C���]","wp-content/themes/flatsome/inc/builder/core/server/src/Transformers/StringToArray.php","0","!kwHrg�4+�Y�","!kwHrg�4+�Y�","G�æ�{�����7�Z���G���-�ǻs\n#","","0","?"),
("Vԑ�\'UY�L���C\\?","wp-content/themes/flatsome/inc/admin/kirki/modules/webfonts/class-kirki-modules-webfonts.php","0","C�Yck��lgL�ŉ	","C�Yck��lgL�ŉ	","b��7���f#�
("V׀��\'h��Ĉ+:��","wp-admin/includes/network.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","6��͙���Nm�C8Ҹ","��)�B P� ��v��R
("Vڵ5�(�$�ʇ�>�3","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-outline-circle.svg","0","� 6$z��[��#��I","� 6$z��[��#��I","�ZY�aeIG<V#�{H}]E�I	���o�`�=/�","","0","?"),
("Ws�$8�~��Nȁ-�@","wp-includes/js/mediaelement/mediaelementplayer.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}��\"r�r\\�6���W","b�0�!�O��a���2��!ީd��E��62؆","","0","?"),
("W@�o�FR3߹+4�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/XSS/EscapeOutputSniff.php","0","]#�1o����\"�P�q+b","]#�1o����\"�P�q+b","e�E�����y����)ou��~o7�Y|�[��","","0","?"),
("Wk��m��`�^ScV�G","wp-content/plugins/contact-form-7/includes/capabilities.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%�A߬l�Q����͵�","���Q~�GEh�cwldc�n��K���o���7�","","0","?"),
("W&�ִ �)+�ڱ���","wp-admin/includes/class-plugin-installer-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\n3Y��cD���","�Ū��	�Q�p�ɒu��Е�7Sl��=xs","","0","?"),
("WC<R���X�|�f�!V","wp-content/themes/flatsome/inc/builder/core/server/src/Options/Options.php","0","�\nD<���\\��A���G","�\nD<���\\��A���G","O���B��.�q�4Qr{hB�2���V�9{eT�","","0","?"),
("Ws��{N�hP�r�㼱","wp-content/plugins/wordfence/lib/dashboard/widget_ips.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","cQ\n�bd�7�,Ze","Z��L�)�1����-|�Y(|@.N�_�ϋ�u","","0","?"),
("W{�g- X���\'=n8","wp-admin/moderation.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","TB���YR��\"4�o�","O1oBzŢ��������G�%�A��+[��","","0","?"),
("W})Ӗ7���e�}5�9,","wp-admin/load-styles.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+��r���~��Q{��","�0	V��[&	&U��2�v�tD$n2��$�\nzW�","","0","?"),
("W��/	[_��շ��_","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/image-bottom.svg","0","�H�)�����훣d","�H�)�����훣d","S)���,�M��+�|[|B�92J������$��","","0","?"),
("W��?�Abe����e\"l","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/buddypress.php","0","/1aђ�]Ae,�","/1aђ�]Ae,�",".S;u��a����p0{pw�J����ٚ���","","0","?"),
("W��Ê�`%�p:I��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/sime-right.svg","0","�e��.�.���tt","�e��.�.���tt","c��ٞ���ܐ����^�Sv3i�R�","","0","?"),
("W�P
("W�\"�6M���J��oe","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NonStaticMagicMethodsSniff.php","0","�Y���u\0�P����","�Y���u\0�P����","�膡\0u�K�P�nE��%�9�ɅXDY����ci","","0","?"),
("W�l�Oq���l�V��b","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/EmptyClassDefinitionUnitTest.php","0","[���r�ҟ����}","[���r�ҟ����}","96��K�����fbS=��oS�(\0��s��h�","","0","?"),
("X\0�ϟy�p�\"�a�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewHeredocInitializeSniff.php","0","O�n�2I�F�\n�{�H","O�n�2I�F�\n�{�H","O����4��������i��KO5��z��<3��","","0","?"),
("X��\\shv]�iB�","wp-content/plugins/wordfence/waf/wfWAFGeoIP2.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","݇�(�0,m�G_Y�3","^�)o�B������f�g�*�V�P�?�~��u:","","0","?"),
("X,�E�Cj$_��8I��0","wp-includes/images/smilies/icon_cool.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�F~��ߢ.���>t8","Y}�c
("XH����$��̣��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/ElseIfDeclarationUnitTest.php","0","�/\\���ֆ���","�/\\���ֆ���","�޼Öc�s�d�ʫ[#��/~���i��m�.�","","0","?"),
("XI��Z��*\\%�\"΁","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/LowerCaseConstantSniff.php","0","]�<�R2�q}�$� ݉�","]�<�R2�q}�$� ݉�","�\0K^aq ���q�{S\\�
("XM���\\3�-����L","wp-content/themes/flatsome/inc/admin/panel/sections/tab-changelog.php","0","���ـ�a�\n��-�Y�","���ـ�a�\n��-�Y�","_W��S�{����Ha�cG=�!����ZE�d�D�","","0","?"),
("X]Y�c�݁\"�(�","wp-content/plugins/wordfence/css/jquery-ui.min.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}O�^�0tGG��Q","�ٍ$rb=p�h�x�K��5]8�Q���R��jn4","","0","?"),
("XxT8����;�L���","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-1.svg","0","��L�5��AE�i#+W","��L�5��AE�i#+W","ё{�A����w�ô�$�9�Є��x5A�w","","0","?"),
("Xz����z;eO)��Gq!","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewFunctionsSniff.php","0","��0Mź_5b���^I","��0Mź_5b���^I","˯�����\\�;�_ߢ�`�݈�����Ń[|","","0","?"),
("X��M����xڳ�J��","wp-includes/Requests/Hooks.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",�� ���gx�i���","�՚���� Q�憐D�P��؂_?y�`�����","","0","?"),
("X�:8+˓2>V]��8�","wp-admin/images/sort-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","nQ&�] �0�-����","�-���4X�Nz�P+q�5�U�B���qəy��O","","0","?"),
("X���P���T˧�kc�","wp-content/plugins/wp-rocket/inc/front/process.php","0","a臏�&�w�\'�~","a臏�&�w�\'�~","��.�#܉T?�%Ѣ�iU���<3�+�A}","","0","?"),
("X���v�ƒ��\"�$","wp-includes/Requests/Exception/HTTP/409.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Z�i�~*=������","���_M��8U���.pF����w�:E`�MB����","","0","?"),
("X��Flد�fő�o�","wp-content/themes/flatsome/inc/functions/function-fonts.php","0",";mE�sM���PĞF�?�",";mE�sM���PĞF�?�","�p;)��(�<��4֊�3.p$(�L*���2","","0","?"),
("X�[⋘H�n��̖	$","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","<Y�J��Q����#,","��\n��7�Q�v d�HJ�$��j]K���Ye","","0","?");
INSERT INTO bz_wffilemods VALUES
("X���G������z�X","wp-admin/includes/class-wp-upgrader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+���e&���ڏ�k�","�y��U��Pp�uX�ȸ�����J�*��h5>�","","0","?"),
("X�~�Vzl!_�]/�-3","wp-content/plugins/wordfence/models/firewall/wfFirewall.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v䇙n���v�%��p","Y�ی�Fty�.��{#]K�:�V�R���","","0","?"),
("X�=�2h4�/{�+","wp-includes/spl-autoload-compat.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","_��L�pZ&ۥ���h�u","T.%�&鶻Dc�S�K5b!�Y]�RXt��Wk\0f","","0","?"),
("X�@���O�.caB�w","wp-content/themes/flatsome/inc/shortcodes/tabs.php","0","gb��I�7����\\�~+l","gb��I�7����\\�~+l","N�v�և��ڡ�\0���9[x`7	{�]�7x�","","0","?"),
("Y����bڧ,���J","wp-includes/Requests/Exception/HTTP/405.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�8т�m!�Ҭ����","j�b�횄��^U�sv8�$b����M�3y�","","0","?"),
("Y+�h6ռ��Xh,","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/WAF/Packages/Rules.php","0","�Ε��b�#`�׉�$�","�Ε��b�#`�׉�$�","��M87mb?0��Q>$��@e�e͊�lu�_s�\0","","0","?"),
("Y,Qp�gmu#�e���~","wp-includes/widgets/class-wp-nav-menu-widget.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�z���^�3U����dI�",",#�>�<�X˞+b+�
("Y�La���h�(","wp-admin/edit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s>��e|�[�2:�R","I��\0N���Bd�tMTʈ��5����ڤ��{F�C","","0","?"),
("Y�,�e�A��w�`���","wp-includes/images/media/archive.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9����h�\0��ì�u","\0�Bb�3��\'��\'��)JG ��](G�9Pr2 s","","0","?"),
("Y�68�H;%,�_c\n�","wp-includes/css/wp-auth-check.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�˹�Mː��N�<pb&","_F�}\0N�Z}����?\n�V>l��9@�@�L","","0","?"),
("Y�J��|��[D��y�Y","wp-content/plugins/wordfence/waf/.htaccess","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�E\"xK��{�8�dS�","C����\'r�9��@�K�ކt�����w#@k�","","0","?"),
("Y����]���ŞI���","wp-includes/js/jquery/ui/effect-slide.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�#G_��MVژ�y�","҈gRpf=����)A&���­Q�]jA=��Vf","","0","?"),
("Y֝��U����}�r/","wp-includes/SimplePie/Cache.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","y���:�oMh�vL�4","w!�ے�?���ER��S^R�L���K����A�","","0","?"),
("Y��)�^�n\'�����n\\","wp-content/themes/flatsome/inc/admin/options/header/options-header-refresh.php","0","X{z�&@��0��6P�","X{z�&@��0��6P�","��2 �oY����ZD�$��An�g\'\'����?","","0","?"),
("Y�°�V�n���B�o�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-multicheck.php","0","�B��e����\"�\'\"�","�B��e����\"�\'\"�","z���G��k��oa!��a�1\\ 
("Z]ȗ�d�J-,:#qN","wp-content/themes/flatsome/assets/img/payment-icons/icon-visa.svg.php","0","X�mk�j��,g��+�","X�mk�j��,g��+�","8ƀ����.q��d�~��ת�v��+�","","0","?"),
("Z2�t۔[yCU|P8�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/countdown.svg","0","�
("Z3ʹ��A���s��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-round.svg","0","�Ǌ_��%:��HM��","�Ǌ_��%:��HM��","\n-������j\n:�=�u�(�W�&DP9��|Z","","0","?"),
("Z4<n?e�����","wp-content/plugins/wordfence/lib/wfConfig.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�b���\n����-v�~","�\'����>�#AP�&�խ��|/�����;t�","","0","?"),
("ZD�:-h�${�ma�","wp-content/plugins/wordfence/images/sort_desc.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��?զ�)X�?�N�","b�EԚ�B�#:�(�#�=_(����|��U�#�","","0","?"),
("ZN���d��c��ɮ�R","wp-content/themes/flatsome/inc/shortcodes/gap.php","0","�����J���H","�����J���H","�-�\0��*�z�������t
("Zi���@�����","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Organizations/Railguns.php","0","�I��wt��(h��6��","�I��wt��(h��6��","�/��CH�r)�D��m�c��ʓ%�F3V��","","0","?"),
("Zx��1�2K�Z�,��","wp-includes/customize/class-wp-customize-header-image-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","۷k#���X�\"N�%(","���a�,��\'�jy>窭ګ�r���m�o8�","","0","?"),
("ZҌ�[��\nv���	F","wp-includes/SimplePie/gzdecode.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�8��a��al�4�","93��Eu�f\0���/�\\T�k&��o��H","","0","?"),
("Z��ՑY+��EXe���","wp-content/themes/flatsome/template-parts/portfolio/single-portfolio-bottom-full.php","0","����0��]*����b","����0��]*����b","�tJ���Y�s�O[qϵшpo�n��pt!Ɋ��","","0","?"),
("Z�R��R��b���","wp-content/themes/flatsome/inc/builder/shortcodes/commons/background.php","0","�I�;4rUh\0�=E��","�I�;4rUh\0�=E��","����Dw�]K���,ԭ=K��pͱ�������","","0","?"),
("Z�_\"��~�J������","wp-includes/js/wp-custom-header.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�+�_`��$Y��)�","��H*�`K��zP�Y��gV�}�SW�[q�E���","","0","?"),
("Z����� %/�Z�z9��","wp-admin/includes/taxonomy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","6/1�?F,�Ȫ��0�[","��\n��5�)����%��ݑ�w���~��w/6","","0","?"),
("Z�\0��Y���� æfg","wp-includes/js/crop/marqueeVert.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\0���9��R���","K�cg$�e���2\\p�$�1z�����`CkJ�","","0","?"),
("Z�
("ZÏ��ts���&~ʍ�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Classes/OpeningBraceSameLineUnitTest.php","0","Y\\����UcҦY�","Y\\����UcҦY�","��i�JӃ���\0f��G�=J���5�B)�7�","","0","?"),
("Zє)T��9����1^�","wp-content/plugins/wp-rocket/inc/admin/ui/img/logo-imagify.svg","0","[z�[q�&���,o(\'","[z�[q�&���,o(\'","C������B\'��7�b���anѹع���d","","0","?"),
("Zל�����Կ�GH�","wp-content/themes/flatsome/inc/admin/customizer/img/product-title-featured-center.svg","0","⼎��M��8Dlx�eS","⼎��M��8Dlx�eS","%<�\0����uڏp����z�>�~p�_B>�
("Z��=ӧ�rc\"��y�","wp-includes/IXR/class-IXR-date.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��=�\'=c.ا��ig","�`�H���_�+ڦbg�D�jd�%�/","","0","?"),
("Z�3�(猍�����","wp-content/themes/flatsome/inc/admin/customizer/img/layout-left-full.svg","0","�3�֖��i�����X�","�3�֖��i�����X�","�sk~��@�r����X�nqe5	o�#","","0","?"),
("[R�6:�:�e�G��","wp-content/themes/flatsome/template-parts/portfolio/portfolio-summary-full.php","0","��
("[Kڟ�L�rJ�%�; \'","wp-content/themes/flatsome/inc/admin/advanced/functions/functions.admin.php","0","����j<�+I��a8A�","����j<�+I��a8A�","��X����gYBd�\'%�J�L��\\����!9�m�","","0","?"),
("[$_Wwr��)��^�o","wp-content/themes/flatsome/template-parts/header/page-loader.php","0","��&\\�8�[+���","��&\\�8�[+���","R�󔬶��$���̃$�&�><����veQ","","0","?"),
("[,*�m4��F(�ã���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/ClosingPHPTagUnitTest.php","0","-�n�r*�J?cn[�","-�n�r*�J?cn[�","��;oϛ\'j������1(7$��[����g����","","0","?"),
("[5���Y�Nh���K�M�","wp-includes/customize/class-wp-widget-area-customize-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�u�͹�7s�q����","<��v���D~�%�纙�������X<���","","0","?"),
("[;�;�@G�|t�WT_#","wp-content/themes/flatsome/inc/admin/customizer/img/product-page-title-featured-center.svg","0",",�L��_�XE��E��ػ",",�L��_�XE��E��ػ","wۻS\':���>�K������@Ac�MgE��Q","","0","?"),
("[S��D��w�����H�","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-fullscreen-fashion.php","0","X�*�ƕ��ƻ)�S","X�*�ƕ��ƻ)�S","d���yaM()���DE�NxG(KY�6�o<���WL","","0","?"),
("[q�q�\\�㑕�$�	�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewConstVisibilitySniff.php","0","g�{�[����1�� �","g�{�[����1�� �","Sq:m��;-9M9)^��%b���$q�h���0>","","0","?"),
("[yd�d����?��O�L","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-2-3-col.svg","0","\n����ĉ�~�f\'�(","\n����ĉ�~�f\'�(","�;NqD`l����+��駿Ub�����K��F","","0","?"),
("[�
("[��#ܧ>]��<�","wp-admin/css/colors/ectoplasm/colors.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�|Fi�+W�F�m�%","��c�bUv`W�����mM�UөQ����<�","","0","?"),
("[�|M\"� o�n\\����6","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/box-right.svg","0","�?P�HVFY�X��YQ","�?P�HVFY�X��YQ","c�}
("[�>�x�;�wn/t�H","wp-includes/js/wp-emoji.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���R6����A�x�","!DO��_��m��މ��	0+g���Wė��@�","","0","?"),
("[���5�~��&ם��","wp-content/themes/flatsome/inc/admin/customizer/img/layout-full-gallery.svg","0","K�a���ИvNf�	͆","K�a���ИvNf�	͆","���%� ��65ތ=���րka�D3�MϢ��","","0","?"),
("[���1�YAdk�,","wp-includes/SimplePie/Sanitize.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Bظ��F�إ�H��u","�D��>�Ι+�N��F��|#4�m=����9cu","","0","?"),
("[��ۨ����Ua�\'��","wp-content/themes/flatsome/woocommerce/single-product/layouts/product-left-sidebar-small.php","0","�p��̳�!]��ݭ","�p��̳�!]��ݭ","��b̋���h��A�n�	N���uY�����","","0","?"),
("[�Y��44�Or��l0�","wp-includes/Requests/Exception/HTTP/414.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��]U�@���)��#h","��H�������i���c�!��I).eh������","","0","?"),
("[̡Fe���\nw�^0","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Functions/FunctionDeclarationUnitTest.php","0","6��n�x�.ʨ�\0P","6��n�x�.ʨ�\0P","�j����a��+=���y\\���vq�V��iq�d��","","0","?"),
("[Ηz���9@�M�ܡ","wp-content/plugins/wp-rocket/inc/functions/htaccess.php","0","^��?��4&[�/o�","^��?��4&[�/o�","M<>�_�H�ŗ��.T�T�y��6-�j�?]","","0","?"),
("[�kW�&@��@Ĳ�","wp-content/themes/flatsome/inc/admin/advanced/assets/js/smof.js","0","�H�7A�THPbڻ����","�H�7A�THPbڻ����","��^uf�*���q$\n]�ġ)!�p��^2�F�","","0","?"),
("[ꠏ�|K�o�یb7�","wp-admin/user/index.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������-x���Nb��","ݹM�Z�X*h���V�\0g��c!��+5�#5","","0","?"),
("\\\n�;:�I�\"�@�Oh�","wp-content/plugins/contact-form-7/modules/response.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ն���(���.�;","���Z�b����nK�v��c��M��?���9","","0","?"),
("\\� \n7��� �F","wp-content/themes/flatsome/inc/shortcodes/google_maps.php","0","荓s�i����P2F�","荓s�i����P2F�","r/�g�b�yC�A\nڴ�F�g��-��^Xg��","","0","?"),
("\\�����9������","wp-admin/ms-upgrade-network.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|��&\"�S�m��8h�m","Q���{�O��������J{SN�-�(�t�","","0","?"),
("\\�\")��:��-�t�l9","wp-content/themes/flatsome/template-parts/posts/partials/entry-image.php","0","zz�Ќ�hKX`����","zz�Ќ�hKX`����","�D�W:ڪ��2���s;X��oD;��K��r","","0","?"),
("\\$�j0F�b�{	","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-parallax-shop.php","0","K��oՖJ����)","K��oՖJ����)","�aoid���ڏ�=6�=�U�s&�E�.o�","","0","?"),
("\\<� +%W�����G��","wp-content/themes/flatsome/inc/builder/shortcodes/team_member.php","0","ؘ�%��g~x�	S�","ؘ�%��g~x�	S�","]R_��c��Ôt&m^U�l�	�Gi��u���1�n","","0","?"),
("\\H���:��u3�%�Fw","wp-content/plugins/wordfence/views/waf/waf-install-success.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�{r����b^���?�","��/��\\2��Ce���L+���:�p���Z","","0","?"),
("\\JcvR�LR�$|�r","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ShortArraySniff.php","0",";-%��i�ӼY��",";-%��i�ӼY��","
("\\[��i%Ͱ<��e�>�","wp-includes/css/wp-pointer-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��崭���X���","td��!\0���c��ȿ�8r?��eX�g�O�&�a��","","0","?"),
("\\j��`z�i�ޫ9�v","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/EnqueuedResourcesSniff.php","0","����\n0����T�","����\n0����T�","�89i�T�ˏV�&yM���nqɻDZ���(=\n","","0","?"),
("\\p Y3G;H�EO��","wp-content/plugins/woosidebars/assets/images/icon-settings.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N��[�7n����.*xT","��S�&���kg�����)�F=���=�","","0","?"),
("\\������7���Q�o","wp-content/plugins/wordfence/css/images/ui-icons_cc0000_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|��%;w���Q�8��@","wi>�6�Ƭ�4��.N�C����4�IO��","","0","?"),
("\\�т�?$�̈́8����","wp-admin/includes/dashboard.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\\��2��@e%]","�/�̞&��*�2H�\\x�����m݅\"�*m\0�~","","0","?"),
("\\��0��/z����G","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-3-collapse-col.svg","0","�8��<\0�Y��]�","�8��<\0�Y��]�","�\'e����>4g��:�a����Og͛�3","","0","?"),
("\\�
("\\��Pw�J��	N�G:","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/NamingConventions/ConstructorNameUnitTest.php","0","��\\��T��\n�&�Z�","��\\��T��\n�&�Z�","ّ�<�%��/ky������*=Ī.c�����","","0","?"),
("\\�~��� F��QrޯE�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/ByteOrderMarkSniff.php","0",";��3^�1	�����;#",";��3^�1	�����;#","\0�y&���e�ch1��2yJ�m񯽋K/�{$�","","0","?"),
("\\�\0��>�+���Fb��","wp-admin/revision.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|ru�H38��hܳ","2T�~V6>r������	�%%�ais7Y�y,","","0","?"),
("]4/s����C�|�2A","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/rating/wp-postratings.php","0","Ÿ�=��L��;��p�A","Ÿ�=��L��;��p�A","F�Փc��-�3m���\\�\np݂r~�n��7","","0","?"),
("](R�&!��1;�3��","wp-includes/js/wp-ajax-response.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","A4��VJ���l��wY","_0�9q�\\[x�_ݫ�A�-k.\'y����z��cr","","0","?"),
("].t�\'=6
("]B#�2�z���bU��/","wp-includes/Text/Diff.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","lp՞��n��7q��*","�7��	�i�Hꗓ��M2��33}� E�҈��","","0","?"),
("]C����~��2��A","wp-content/plugins/wp-rocket/inc/admin/ui/modules/preload.php","0","����K�dg�ů�&8F
("]L0���eE�\"u� ��","wp-includes/js/mediaelement/mediaelement-migrate.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","?���(\"\n1���0p�","8+�I�����o��O��:�^�j��8g��Q��","","0","?"),
("]~�y9c�?9R�|_�.","wp-content/themes/flatsome/woocommerce/content-product_cat.php","0","�2D��P���+\\1��","�2D��P���+\\1��","��F\"#�Ok��T��S	��5�X>�q","","0","?"),
("]���N��Jjӎe���","wp-includes/widgets/class-wp-widget-media.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","� �8nHtA����c�","s�ٞ�GE\\��Va\'`;��_m&���i�I","","0","?"),
("]���r�:@��I�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/Enterprise.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���6:����2kP3���","%u���Mp����,.\0�@�Zq��r��/����Q","","0","?"),
("]��P���Tkvt��8A","wp-admin/network/menu.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","H<%qp��V��xA	��","�W�?����D4��6F`�IcW�ব3�Q�����[","","0","?"),
("]���*������J�","wp-content/plugins/wordfence/images/icons/email_go.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��j��E��H)�.��","��& �qC1QU�_.O��3����1!&��۴��","","0","?"),
("]�����\"}[�Y�R�","wp-admin/css/edit-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P#��h[���R��� ","b|�.ql���&*�|g�R�	;l����r","","0","?"),
("]��HA����p|){�","wp-content/plugins/wordfence/js/knockout-3.3.0.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��_���B8lc^��","5�J�9h��ALg��@�`�uw�o��3��\0I>","","0","?"),
("]������e2��K��&e","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-agency.php","0","�����������|�.","�����������|�.","���f�~8������X�(Eg���Gޓ�,","","0","?"),
("]项?5ٍ�oM7�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewExecutionDirectivesSniff.php","0","8%�
("]�;���\'������","wp-content/themes/flatsome/inc/admin/envato_setup/create_childtheme.php","0",";��\0wzk�Be��<#�",";��\0wzk�Be��<#�","�[�T�n�Ejd�(�$�:!�h�Ν\0�s�><","","0","?"),
("]��������d!��","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/CustomSSL.php","0","DU�\\[ޚ*��E�f4","DU�\\[ޚ*��E�f4","���
("]��z�U��I�!r�","wp-content/plugins/wp-rocket/inc/admin/ui/js/vendors/sweetalert2.min.js","0","(�	)If�Y|U��.�","(�	)If�Y|U��.�","�u0��]a����weధ����5	\n�R�","","0","?"),
("^U���Bp�II���Uu","wp-content/themes/flatsome/inc/woocommerce/structure-wc-category-page-header.php","0","�7*Ӆ����{�+���","�7*Ӆ����{�+���","\'���}ppv͠��kmZ*�F|��;j-�p�=","","0","?"),
("^�4�j�|��I��","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Exception/OutOfQueriesException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5��H*f��$��ʝӐ","���Ɲic�z�P��1�\"ݢӛo�TWry�*F","","0","?"),
("^9(-(Ų�y ���0q*","wp-admin/user/about.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\0ڍ�KN� ���N�-","�g�R�\nz�?��9?Y������ �b݂f͗","","0","?"),
("^@ղ{\'��_���92","wp-admin/upgrade-functions.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h
("^D�V����!o�$+","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_2e83ff_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�QR�\"$\\������","�\n����3��N?|�c6��m��Y5���a1�","","0","?"),
("^H\0�B|��4�@z��","wp-includes/IXR/class-IXR-error.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g6\"���u\\\'3����b�","*?�ۧU�=�?�,]��0=C�����Z-�6Dq.�G","","0","?"),
("^U�.i��ypG���","wp-includes/js/mediaelement/mediaelementplayer-legacy.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Os�J76����1N","{RDo��]��!9���\'G\\6�&����~�9��p","","0","?"),
("^Y�/���_�ř:Q�pI","wp-content/themes/flatsome/woocommerce/single-product/related-old.php","0","%�{���7��1k&!��M","%�{���7��1k&!��M","���S��S4��\01�ذe��:���a��p �v�","","0","?");
INSERT INTO bz_wffilemods VALUES
("^yG=ڜFg;3�á�","wp-content/plugins/wordfence/images/button-grad-grey.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��RC���Ty��?�","D������H�~����Ϩ�P�_�{�!��","","0","?"),
("^�Ð����+�y|�","wp-includes/images/crystal/spreadsheet.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5�9�Т1�T��n��","e
("^�j�_RΟ��\n.���","wp-content/plugins/wordfence/css/wfselect2.min.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�c����3,B�V���","��ڑ�t4U��\"�;�t�7��Jy�rb@","","0","?"),
("^���R�\n#v
("^�N����)XJ�?_�","wp-content/themes/flatsome/inc/admin/customizer/img/category-featured.svg","0","�i.���a�����:�z`","�i.���a�����:�z`","a/�*� ��LFo{>1�oݾ�_��N�&�K","","0","?"),
("^�h����u��qvx","wp-content/themes/flatsome/assets/libs/float-labels.min.js","0","��]c�f��Hp��1","��]c�f��Hp��1","Dj@U�E�@���τ],#�B=F��D���K��C","","0","?"),
("^��^\\Q��=(w��","wp-includes/js/imagesloaded.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����vR�fW���7dB","vxe�խr��)L�z�/@U�-@�\")��}\\","","0","?"),
("_�\0��d �MP~��D","wp-includes/revision.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�J�WXV��/�uO���","�{�P��.���h��~���_�ŋ�b���w��","","0","?"),
("_�k4���!*}��݄ ","wp-content/plugins/wordfence/vendor/composer/ClassLoader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","{�X�-���[�p��w","���p{/��[�j��ߐ·����~�e","","0","?"),
("_*�⽞L�0�>
("_j���_��/���yӱ","wp-includes/load.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Q�L��a&�� >���","�۽<�=�0O�~�㄁�/>�[?-y̡*�%","","0","?"),
("_u�d`8ϖ�=�a,z","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Functions/FunctionDeclarationUnitTest.js.fixed","0","�qwm��[��r�","�qwm��[��r�","�n���/��\\`X���qe��	+��\n؀n�TM","","0","?"),
("_�hl���.?���#S�","wp-content/themes/flatsome/assets/js/builder/core/content.js","0","u��̳�.�}�t�","u��̳�.�}�t�"," }_��x���R� A����m|���r*���","","0","?"),
("_�W\0���H�c4a�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/divider.svg","0","�}v�ן�V�:*�G","�}v�ן�V�:*�G","�Ѥ�%W���]���F�c|�2/բ*�g��>�*","","0","?"),
("_�|��T�M^���J","wp-includes/css/editor.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","4x\\)��k-�]%ք�","%�?�=0=�L�Ͽ����N��� ���*�8_","","0","?"),
("_���4�3���=��","wp-includes/images/uploader-icons.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\\M�����m��","�p������+/������i��!Z�ţ6�m�","","0","?"),
("_�(�C���M6�9�","wp-admin/includes/class-wp-links-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\0_���b��8y~��","6�Y�3�$�s�o\n1b����~�B�|���.p��","","0","?"),
("_�����8}���?�","wp-includes/css/media-views-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Cۥl(��0��W�=}","�R�v`�1~3Լ>��S��}�:Sy��D(����","","0","?"),
("_�|Θy1�H�b���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Functions/CallTimePassByReferenceUnitTest.php","0","txAI�m��E��cz","txAI�m��E��cz","{>��v�#������ޝ��~�\'\"ܛ5>��f�","","0","?"),
("`����p꺨�@�\'","wp-content/themes/flatsome/assets/img/payment-icons/icon-mastercard.svg.php","0","�Bv\0V��}��GV%(�","�Bv\0V��}��GV%(�","8�f\0���C���?�<Qf2��v�ᔘ��c�d","","0","?"),
("`���S�`NI�^G�","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(�i@�G�g���0�p","G��<�/�14Ņ�L��5�������!","","0","?"),
("`%�ֽ�j��\'��P��","wp-admin/js/edit-comments.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�u�sl������i���","s�{o�Q�?1��¹\n6�G9ew{
("`�2	#�\\���Z$���","wp-content/themes/flatsome/inc/builder/core/server/helpers/components.php","0","Ժo|b��h�jj��0","Ժo|b��h�jj��0","�:-v��R�T_lF�=�{�)�;p�C
("`���\n���2����","wp-admin/css/code-editor-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��o���?S1�.`","���}U�)������J�B�>XY���7`T�","","0","?"),
("`���40���t.�NO�","wp-content/themes/flatsome/inc/builder/shortcodes/values/filters.php","0","�ZVɨ�X�̎�(�,","�ZVɨ�X�̎�(�,","i藟���~��/�[\0�X<�j\"��и�,�4�m","","0","?"),
("`�c0���\\���3�","wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�O�\"%é�O�DZ�j","���Z?=b�\0��D�Z�\'�˿_p�w�ѻ,:","","0","?"),
("`��������]��#","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-l10n.php","0","`s����b�lJ�V��","`s����b�lJ�V��","���m��R\'Z�l���1^diu֍f�(","","0","?"),
("`���;�\"�-���+~;","wp-includes/js/tinymce/plugins/media/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ay�F�qU��ɓ","K\\q�h�[�!����%M�zR�\\�%0g�#4b","","0","?"),
("`��U�2���mdW","wp-includes/class-wp-customize-nav-menus.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h�\\�0$Ѡ�,�ڛ�","���ϻ�p�V	�
("a��)6����ю�","wp-includes/js/plupload/moxie.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�#C
("a@��l��p3Ur�U�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Strings/ConcatenationSpacingUnitTest.php","0","Z\0H
("a)�TMW�Oo��Q�|�","wp-admin/images/media-button.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����6@p�z^ye��","_�����SjזY ����V�Z��Gen�_","","0","?"),
("a.I��c�tR��s.�","wp-content/plugins/contact-form-7/includes/controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��_حx1�&�N�Å#","�?*O�m~7p��8G.*�ic���.��7�","","0","?"),
("a\\c,I\"5T��#̋�","wp-admin/images/media-button-music.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��]�2\\Z�/��ޕ","He�}�K��ۭX�YW��/$�e����is�","","0","?"),
("ak����X�
("a���^�����:c","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/ClosingPHPTagSniff.php","0","gm��-x��ڢh)","gm��-x��ڢh)","�0[<����!�q_�h�|���l�+�=�S��","","0","?"),
("a�?��_�ˢ��6j��X","readme.html","0","U��y�%���)�D","U��y�%���)�D","�3�5��C�J5�E�6�=}��ʾջH��?\"�","","0","?"),
("a��6M�_�k�0�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/ScopeClosingBraceSniff.php","0","�+���y�!�g;��","�+���y�!�g;��","zb��+��+�m�������4��?t�po�C�R�R","","0","?"),
("a�*g��D����	:��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/DocCommentAlignmentSniff.php","0","T3�|Z݅d��H\ni�","T3�|Z݅d��H\ni�","E�.˸�zpW��ԃS�d l���Y�fdK�H","","0","?"),
("a�����(m�EB�l�","wp-includes/media-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=����+�Q\'�","97Ɋ�q-�1�<*���$�H`����e�dӷ8�\\","","0","?"),
("a�c�CH
("a��5���YѓO~","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/ClosingDeclarationCommentUnitTest.php","0","`)ͤ2rEN4��HA$3","`)ͤ2rEN4��HA$3","���c����s|T�(PY����մ9��7��!/","","0","?"),
("a�ai�G����}�� �","wp-includes/rest-api/endpoints/class-wp-rest-attachments-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","M-��m#�\n�� �K�","i��S\".TJ��ͧ{E O��F����l�vq<D,�","","0","?"),
("b!*�g�|\n�lhA","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/RemovedAlternativePHPTagsSniff.php","0","2��gҤCW�ʫtd�0","2��gҤCW�ʫtd�0",">|��T���=P��6�\"�]��+	`8�M�_b","","0","?"),
("b2�DI�*V�@��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Scope/MethodScopeSniff.php","0","ˁ��t��9.;���H","ˁ��t��9.;���H","VÎ/}3iP�]:Ci
("b>��m�r���J�","wp-content/themes/flatsome/inc/admin/customizer/img/portfolio-overlay.svg","0","U!�G�S2lf�?��]x","U!�G�S2lf�?��]x","�Cn�\'���uhO%���*�Sm�Xi᳚81","","0","?"),
("bW�q���Ġ�.\\c6","wp-content/plugins/wp-rocket/inc/front/js/lazyload-8.2.js","0",",��kc�@�1�QNB�",",��kc�@�1�QNB�","��Ӈ.6�t�����\\�uێ�S_ -�x��","","0","?"),
("bY�,��ϥY�r۝�;�","wp-includes/js/crop/cropper.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ky5�ni*M(��","�ٸ�T��ޝO���wL��y=}�gTl������","","0","?"),
("b�EN�֙D��","wp-content/themes/flatsome/inc/builder/core/shortcodes/gallery.php","0","��Ƅ\\������g�","��Ƅ\\������g�","\n*�*�2�_���boɮv=�O_R%\0�]N��","","0","?"),
("b���Â	���d�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/OpacityUnitTest.php","0","��ۗŠ�\0�h#�\"0v","��ۗŠ�\0�h#�\"0v","u|t�,0�c/A��\n��]k,�@�vfxl�g^`�","","0","?"),
("b���HzfW����gw�","wp-content/plugins/wordfence/lib/wfSchema.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�h��i�K:�pWq.�","T�`n�!�J�!���ToD��\\�tm�9n","","0","?"),
("b��8�q�#��v:","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-editor.php","0","8�j��S�i��\nų6�","8�j��S�i��\nų6�","�G�^�S-X�\\��5K��^�A����8","","0","?"),
("b�����Ҍ &�?�{","wp-includes/js/customize-loader.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","1���(��=�Ò/�!a�","}Pր,���Y��vx��\n����X�\0�X�m���","","0","?"),
("b��+ƴݟ�3�","wp-includes/customize/class-wp-customize-nav-menu-location-control.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","f�ῠ3/~�pҘC�9�","6p����[xۈLI�������:4�&�P��c/","","0","?"),
("c餟��(Ok1�!͂","wp-admin/privacy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�	ǀ�)h.y$k�H0ps","4ݥ!>XZA��*�@��7�ӯSE��	0�0�","","0","?"),
("c�u�7�e��\"x��|","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/testimonials.svg","0","\0��9�o[��$P><9","\0��9�o[��$P><9","���Y�CՋ�/pV��v1V�0zBZ�U����`","","0","?"),
("c�4L]�˞��Mc","wp-admin/includes/class-wp-post-comments-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\4�Z����eN]%�D","Z�uE�><�;��7)AJO�E?���B�C-�V�","","0","?"),
("c��c�%XSźA(l�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR1/Sniffs/Methods/CamelCapsMethodNameSniff.php","0","ҡԃ;�q��$��n�","ҡԃ;�q��$��n�","�wh����F���t�Pt	&}��+0���L_�9��","","0","?"),
("c��r �te�\\-����","wp-content/plugins/wp-rocket/inc/common/admin-bar.php","0","�O~�tbߑ�[Z�","�O~�tbߑ�[Z�","y��Z�$f������d��BtL7~�b_�	��","","0","?"),
("c,���[xޫ�3�\n�@","wp-includes/js/jquery/jquery.masonry.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��@`���&n|�}A��","�\\ۙ����	}M�g� �$�0� [���B","","0","?"),
("c1��}H
("c42j���x�c��d","wp-includes/Requests/Session.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","7��݆��Ζ���}l�","e`݆�.�΃:��j�E��Ұ���5��)","","0","?"),
("c[�:k��i8�~t","wp-content/themes/flatsome/inc/admin/customizer/img/nav-line.svg","0","��	a�J��&�(�T@�","��	a�J��&�(�T@�","�6\\�1cU���y�����2D�]��","","0","?"),
("cl���cZL��ևȊۘ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/HeredocUnitTest.php","0","(�ݻR^i�e\'�-�_","(�ݻR^i�e\'�-�_","���v\\�b����0H^���,1����Ɍ��9k��","","0","?"),
("cm�t��W�2[̀�","wp-content/themes/flatsome/woocommerce/checkout/layouts/checkout-focused.php","0","��J�;p}L�	1��","��J�;p}L�	1��","��L��S��Wg���F��:�e� u���*","","0","?"),
("c�.������aMl�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/CodeAnalysis/ForLoopWithTestFunctionCallSniff.php","0","��\\�/0TU� �E��","��\\�/0TU� �E��","��vo|���	8H�R�T%f��FO���2���","","0","?"),
("c�U�w`������>�","wp-content/themes/flatsome/template-parts/posts/archive-2-col.php","0","�*]sm4bCY��k�C","�*]sm4bCY��k�C","2�҇g��_�R~�+�\'�N��Ƹ����E","","0","?"),
("c�c������gu���","wp-content/plugins/wordfence/vendor/geoip2/geoip2/LICENSE","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";��8e_�T��ƽW","ݬ�IS�P\"�a�� 7J�6�QSv���_��y�","","0","?"),
("c�d��m賴���v��+","wp-content/themes/flatsome/inc/builder/core/server/helpers/urls.php","0","�\nP $�\n6Bx��&��j","�\nP $�\n6Bx��&��j","ot�3�E3���2:GXO
("c�d	\n�M��)�wk�HZ","wp-content/themes/flatsome/assets/img/payment-icons/icon-amazon.svg.php","0","T�x��7�eL+��|��","T�x��7�eL+��|��","�K<v�L;�hZ�JRHd-���o�T_5����t","","0","?"),
("c�6](�4��U\"\\��p","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-checkbox.php","0","��Jى��b����a�","��Jى��b����a�","�Kt�4��CaV��n3|,�m.�J����x�(P","","0","?"),
("c��[b]���ݽ�JF","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�~�����4�>ӥ$","�Q6�;�f�]��Q��:�,W���ѭ��y$","","0","?"),
("d��:w���O�І","wp-includes/ID3/getid3.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","}�
("d��1�쵓-�;O��","wp-admin/js/custom-background.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">\"�\'��Wq��ޑV�","���nC6.b]!��)�N�Ee��Ԧfc�L>�","","0","?"),
("d;������Ao�yA�!�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Functions/FunctionDeclarationSniff.php","0","x�S!S:�Gʳ�Q�","x�S!S:�Gʳ�Q�","\"��6�h����伏p-���@�O�TD���z","","0","?"),
("d<��
("da�2���dO�0�]�","wp-content/themes/flatsome/inc/admin/customizer/img/portfolio.svg","0","ڶ��RǨ�4����F�","ڶ��RǨ�4����F�","��O5hKw7{	�x��<���>����[�,��","","0","?"),
("dq���6�{ɇ�nD�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/text.svg","0","ѭ�U�\nq=�,9","ѭ�U�\nq=�,9","�H�g��
("dy2K���;\\��y��","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewUseConstFunctionSniff.php","0","4r�?�c���1�M�c�","4r�?�c���1�M�c�","&pr��Y�3S^�p{�Ѣt��T0_C�kw��8�","","0","?"),
("d��ɢ4ЪU��S�t,l","wp-content/themes/flatsome/inc/admin/customizer/img/layout-wide-gallery.svg","0","D܍pf�I|U��/)�","D܍pf�I|U��/)�","����Iϴm+vG�z��u��S�:�T4F","","0","?"),
("d�(��%J���@�G�","wp-admin/options.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","U�̼���}nZ<D\n�","������K�/Ov�r�����G�eN$^�","","0","?"),
("d�hħ{q4�2�K\"�","wp-includes/SimplePie/Rating.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=p�m	�K�دat�","�
("d�;\"EFf��$��","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/OrderByRandSniff.php","0","�{��\0ds�v�L��","�{��\0ds�v�L��","�U�+/Gba��<Ʊ�/�6zi�zk��VzJc�","","0","?"),
("d�4�j�2U�V��$�P","wp-admin/css/wp-admin.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�佐5\0���!��*[","k��[i��|2��������Ek��x/c�","","0","?"),
("d�@!��d�J����","wp-includes/js/mediaelement/mejs-controls.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�.۷Z#e0�<�l���","�X�*����X�(�Z!�Ƚ��D2aB","","0","?"),
("d��1�����-���","wp-content/themes/flatsome/inc/builder/shortcodes/templates/divider.html","0","���eg����څi.","���eg����څi.","�*/h�ȿ�[5�J����\n31_j~c�ҙ","","0","?"),
("d�,��vp���\\","wp-content/plugins/wp-rocket/inc/functions/bots.php","0","�&�3u1e���k","�&�3u1e���k","u��k�E�����0o�{�|�`��.SkG�r�","","0","?"),
("e\0����h�L���щ��","wp-content/plugins/wordfence/lib/email_unsubscribeRequest.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�#}�_�*mD×cv�W","�m�$G��+59TE�x7B{��/��,u��7�","","0","?"),
("e
("e���Xǌ.\\�(&�d","wp-content/plugins/wordfence/views/scanner/issue-coreUnknown.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�رm:h�
("e�B�h�y:R�$��","wp-content/themes/flatsome/inc/builder/shortcodes/templates/ux_image.html","0","Ѩ�ӟ�6Tq�%vv�U","Ѩ�ӟ�6Tq�%vv�U","���4
("e.PȴNB�Sx[�&��","wp-admin/includes/class-wp-plugin-install-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","|_��ޅR<��2���","V��V�\"u�5���i?-HJ`�xPّWU7��","","0","?"),
("e1C_HR]l|�UTR�.S","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/ControlStructures/SwitchDeclarationUnitTest.js","0","�����I�܂���XW�","�����I�܂���XW�","[�;Z�Q�H̖pC���ʂ��N����d�,T","","0","?"),
("e9T�9��FMt��","wp-content/themes/flatsome/inc/admin/customizer/img/icon-plain.svg","0","�Qq�Q��E�t�!","�Qq�Q��E�t�!","*�b���XE�ظ��o�2��w.�]@ 7me�","","0","?"),
("e>3|\\���2[d�i","wp-content/themes/flatsome/template-parts/header/partials/element-social.php","0","�Ü�k��\'��K�2�","�Ü�k��\'��K�2�","��vC��<$�
("ei��y���,:���T�)","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Model/Country.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\0�Q�#2Џ���R���","~G)�R���7i-�#��R 9H��ǫ� b","","0","?"),
("eiԅ��VTwv�H��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/seo/all-in-one-seo-pack.php","0","��J)s����Ddm{o","��J)s����Ddm{o","<����v��Oprk}�3V���$���hs��","","0","?"),
("ep
("e}0wTnv_�g�~","wp-content/plugins/wordfence/views/scanner/options-group-basic.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�,�z7\n�ɲ�ߞ","A���b.hN��h��|���:H-�=��(�1f�J","","0","?"),
("e��XT�=h�e2麙2K","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Strings/ConcatenationSpacingSniff.php","0","��0�S��D/�YA>","��0�S��D/�YA>","fK��p��oC���1teŅ|������$�","","0","?");
INSERT INTO bz_wffilemods VALUES
("e��[�d�W5��>YM<","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/Settings.php","0","�j���ʠ��ՙ#�~","�j���ʠ��ՙ#�~","b�U���\nR��.���\'�>� ��=\\\n]","","0","?"),
("e��__�%��x���","wp-includes/class-snoopy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s�\\�Ņ���ϼ�.�	`","���4	*�\0������\n���;0r�����ɷw�","","0","?"),
("e�w\n��@�*���4�Q�","wp-content/themes/flatsome/inc/builder/shortcodes/commons/visibility.php","0","��\n��lI5h���\0��","��\n��lI5h���\0��","�>0�{�,�t]g����\n���~N��s)գ�","","0","?"),
("e�^#|ۍ�TЩ��z","wp-includes/Text/Diff/Engine/xdiff.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ֹ�b�t�X8�GX","�[<�0�ą��aD)tJ�h��(C�[uH}sҘi�","","0","?"),
("eȜ)\n��Gs��","wp-content/themes/flatsome/assets/img/payment-icons/icon-ideal.svg.php","0","�e������B�Qq�","�e������B�Qq�","��J\'���Ϧ>��B�
("e�<V\"�M�F���","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WhiteSpace/ArbitraryParenthesesSpacingSniff.php","0","`��bmj2��	�A[��","`��bmj2��	�A[��","ہ�K�.�2�)����/�w��޷\0@0]e��","","0","?"),
("e�A�.z�N��ks�1S","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/rating/kk-star-ratings.php","0","�!tz�KT��A���Y�","�!tz�KT��A���Y�","#>�>�9�=���\'a@�_~�$@gl","","0","?"),
("f���<�\n����","wp-content/themes/flatsome/woocommerce/checkout/header-small.php","0",",��#<��&r�",",��#<��&r�","�4ۈ�~��Y���as��b���\"�E��","","0","?"),
("fW�C��H	�&vM�f�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-code.php","0","��$1ݖ\0w��{S[","��$1ݖ\0w��{S[","-�N�W��\nes�
("fZO+e�̉�^���","wp-content/themes/flatsome/inc/admin/options/shop/options-shop-store-notice.php","0","�aG9�p����M5","�aG9�p����M5","�S���!�d�8���Z�k����5����","","0","?"),
("fZ�O�ݖ���ξ#�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/NamingConventions/ValidFunctionNameUnitTest.php","0","|\"�
("fp������j�H�\'","wp-content/plugins/wordfence/views/blocking/blocking-status.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ˮ_�������Xk��","����4�>1�^���f�s�{�q\'	ީM�����","","0","?"),
("f�u3\n�M\\�}6*0�","wp-includes/class-wp-customize-setting.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","V�{�����%*ɬ","6�����X��0�c61V���H�f���W_�&","","0","?"),
("f�xݿ��J1�Fa���r","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Source.php","0","��#��ٝ�l����ly","��#��ٝ�l����ly","���{�x&|�w>d�`{�b��X�����b","","0","?"),
("f�霰f؟|h��U�L","wp-admin/includes/ms.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��sh-�V�3�Uv","_�âUA&���R�{>�[�J?�z_��x���","","0","?"),
("f�-߹RZ�r~���<�","wp-content/themes/flatsome/inc/admin/kirki/modules/webfonts/class-kirki-modules-webfonts-async.php","0",":t�U~��#B1=�#=",":t�U~��#B1=�#=","m-�B�R`��c/���?�oK��o����V","","0","?"),
("f����B�D�Fr
("f����J��c��5K�o","wp-content/themes/flatsome/inc/builder/shortcodes/commons/repeater-cats.php","0","��ُ\0��	���B~","��ُ\0��	���B~","��B�����șo�$\'�A�d��L���xR�U","","0","?"),
("f�����e��R�)�","wp-includes/SimplePie/Item.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E�!�Cz�\0�c<ܧ","1K��6]��L��ݲ��]`r�S{��Ul","","0","?"),
("fֈ�����V�Թ)�9","wp-includes/theme-compat/embed-content.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","_�!x}~�4l\0����s","�EK��_��T�� ID^\\��.����ֳi�","","0","?"),
("f�;��Bi�&���A�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/WhiteSpace/ScopeIndentSniff.php","0","w��LJ��9�# �[","w��LJ��9�# �[","���3�\0���yjI����p�P��2JnQ�D��","","0","?"),
("f��4�O��\"p�4","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/SyntaxUnitTest.php","0","{����h�K�9/","{����h�K�9/","��%���y�8�؇��z�h��?���cw)�","","0","?"),
("g#�,vM������:��","wp-includes/js/jquery/jquery.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��?�v@���̒N","������/�˅���
("g&N�T��V��7�xF","wp-content/themes/flatsome/inc/shortcodes/custom-product.php","0","۫b�\"�]�n��wǽ<","۫b�\"�]�n��wǽ<","���`<m��G5��\\�G0�Ù���OM��","","0","?"),
("g*�f(�e\"Fg�A�Y","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/MultipleStatementAlignmentUnitTest.js","0","R���)m7��Қ���","R���)m7��Қ���","��C�r��4���~ݞu����~���������","","0","?"),
("g+yr���q����D��/","wp-includes/vars.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����?\n�y�o7��","�Qj�N�*#I�oX5�W%��p�h���F","","0","?"),
("g1Z� �=���o���Ѵ","wp-content/themes/flatsome/inc/builder/shortcodes/values/box-layouts.php","0","�/<����A�&	D�f��","�/<����A�&	D�f��","GpH� �WW��^`K_��L����h���7","","0","?"),
("g=H�K��w�Z�^�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-background.php","0","��ئ�4�x�*���k�","��ئ�4�x�*���k�","���l�+�J�2|��@l\n����+��x��r}5@","","0","?"),
("g_&��z��nͲ85\'��","wp-content/plugins/wp-rocket/inc/3rd-party/hosting/wpengine.php","0","���m1iE��","���m1iE��","�<`��H��,����E#E�ۼ��U","","0","?"),
("gb�H��*�i�M�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Exceptions/DeepExitException.php","0","|�$;��ql,C�Hs�","|�$;��ql,C�Hs�","c+[��\n%%���[��А��T��ܰ��+{","","0","?"),
("gr0��wߞg�u3��","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-cute-shop.php","0","�$�+\\�������t��","�$�+\\�������t��","Z<$���r`��A�@������s�i&]�","","0","?"),
("g|y_�o4\"��X�N���","wp-includes/images/smilies/mrgreen.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-5��^����J�j���","���M��g�$��+;��\0�5����H&\\E6%w","","0","?"),
("g�$G\\��;�r���1X","wp-includes/images/wpicons.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","dS��uq��V_���a�","���cZ_��?n�_��K��6��1�\\}r","","0","?"),
("g�f�1�۶�y�;�_","wp-includes/class-wp-http-proxy.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�=����M{�8)v�","�`.1��\'G�\"�\'0T2gCEO�\\@|!UF�p�","","0","?"),
("g�s��)��m��%","wp-content/plugins/wordfence/views/waf/options-group-whitelisted.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Vi�K�۹v�?���","-�L#��sy�ܥ�j��sw�Bt�\'ш�;�8=","","0","?"),
("g�]e��!^��(PK���","wp-content/plugins/wordfence/models/common/wfTab.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2�T�}�HW\'<}\\","Z¥|�s�S�8e��3�Eؗ�$����ܜ-h�","","0","?"),
("g��~)�~�s�ʞ��I","wp-admin/includes/class-language-pack-upgrader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","򡋽�L�9H�u�f%","�h��
("g��d-L��0+\'n�k$","wp-content/themes/flatsome/inc/admin/customizer/img/align-left.svg","0","�3��+!�\"�ΠZ�eE","�3��+!�\"�ΠZ�eE",";7x�F�Ϭh\0�L����<�&�s�;c+�1��","","0","?"),
("g��� ��\"�p��\'","wp-content/themes/flatsome/inc/admin/customizer/img/nav-icon-fill-round.svg","0","�ؤ��hd&�F��ǝ�","�ؤ��hd&�F��ǝ�","��[�޼��~�K�;�O�����]f���n���","","0","?"),
("g��a \"^����1V�","wp-content/themes/flatsome/inc/admin/options/header/img/header-wide-nav-dark.svg","0","�iI_�Gk��0��","�iI_�Gk��0��","e����ܨ�g!x՝:�+a��:�Cj�m��","","0","?"),
("g��]bR%� Z��E�","wp-includes/js/shortcode.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:#�n��Q���8","M҄�������G�-�����W,{�ʺ","","0","?"),
("g�Ed��1��D}�����","wp-includes/js/jquery/ui/autocomplete.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��>�bXeså̐���","�n��}|p��9j���B�?+*W�!��F%R�","","0","?"),
("h�v\n~�/���^c6x$","wp-content/themes/flatsome/template-parts/pages/page-title-centered.php","0",":n	,z����p	���",":n	,z����p	���","����Y���ڱR���U!j!�O~��� Dn�<��","","0","?"),
("h\n�(�Y�:�?\0�T��p","wp-content/themes/benh-vien/template-parts/posts/partials/entry-video.php","0","`6Y���1�O*
("hOhl��_��Lm/�","wp-includes/class-wp-customize-manager.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," c���K�H��","v�eΨk*�3�L����4Q}�{/!�ŏ","","0","?"),
("h d��껅2��_�r","wp-includes/functions.wp-styles.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�e�J�8�Z�W�2��","lv]y1���t?S������d��BT��R�1","","0","?"),
("h0X-�i����^�G`8","wp-includes/pluggable.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��z���ݯ�����","�ʱ�&7��s�ÈA��&��+D�=��@��","","0","?"),
("h4���#3�`�-݈�\"�","wp-admin/profile.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���?���>z�ͩ��z&",",�6I;�G+�p�b��lZd����yc�\0","","0","?"),
("h@Z�%�R�F�;ti\\m","wp-admin/css/login-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�4H֞2����O�","{���:����W\\�T���ի#X��$,T���","","0","?"),
("hCgd\0�9ߋ��we�","wp-content/themes/flatsome/inc/admin/kirki/controls/js/dist/script.js","0",">����܌��p�zG\"�",">����܌��p�zG\"�","�L�U�C󃻼�c{�*�.Wv�߹?������","","0","?"),
("h|hE��f:Ʊ2��~","wp-admin/network/theme-install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","b���p�B&�#���","�d��\'&�Q����
("h���ĿϭE:ڙ�C2","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Commenting/FunctionCommentSniff.php","0","�X��8\"�j�~�g�!","�X��8\"�j�~�g�!","����C<�J�0o����U����N2��\0
("h��7�3��%������Y","wp-content/themes/flatsome/woocommerce/cart/cart-empty.php","0","^9rz\0[�y�e2����","^9rz\0[�y�e2����","H����!�g\'�0~{;���<�^�\nM�`","","0","?"),
("h�H�h��0�ꞓ\'�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/MissingColonUnitTest.php","0","�+������j�i�","�+������j�i�","���$�=�x+�.�|N��d��Kkq����J�","","0","?"),
("h�<�]���OpNCƴ�","wp-content/plugins/wordfence/lib/wordfenceURLHoover.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���b��x�Rh`��","��X|ڮ�rHh�(�����5�b�\0�^","","0","?"),
("h��Ȍ�S��j�Ə���","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/ms.js","0","R.�_K�����+��I","R.�_K�����+��I","�܉�zu�}���,f�����T��4�<%GT�","","0","?"),
("h��?Ɩ�D�l�%�f","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/WhiteSpace/ScopeIndentUnitTest.1.js","0","jt�\0�H宜cVɹ�","jt�\0�H宜cVɹ�","�2�j��L�N�v�W���*5�9�2�`}U+","","0","?"),
("i����kmCx�ʷ���","wp-content/plugins/wordfence/lib/wfDashboard.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�E/�X:���w�9�","�@��ܔ0��~o{A���/��.�@E~>��2��","","0","?"),
("i�ڶ�N�P���ߞ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Full.php","0","��#lD�����Չ?","��#lD�����Չ?","�ܺ���#��n�X]��,�� ����	�]","","0","?"),
("i��;��&��o�?","wp-includes/IXR/class-IXR-base64.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�*6���D�T�e��","?F]L�2}���
("i,���sX�Z�N�}\'��","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-typography.php","0","��s�s���-\"^C�ΦC","��s�s���-\"^C�ΦC","���a��dQ�͢�2��(Q|�������7�h","","0","?"),
("i@#�o��6SDXc","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/eu.js","0","%pǱ�i]�*����","%pǱ�i]�*����","NC��Ohm�#�f#m�)��`��rd�F�Ȋf","","0","?"),
("iI<Iv=��V7�\";s","wp-content/plugins/wp-rocket/inc/classes/class-rocket-background-database-optimization.php","0","���ʮ%��� 	�[�h�","���ʮ%��� 	�[�h�","�[0��V�^{\'�����HCQ�H�\n�\"F��","","0","?"),
("iN��/��u(�?r","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Strings/DoubleQuoteUsageUnitTest.php","0","���^Va�y�����^","���^Va�y�����^","��̄`��r�*��#�)�.7O��%���Rɏ��b","","0","?"),
("iZ2$��^���h�#R�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/ar.js","0","4)��\0�-\"z����","4)��\0�-\"z����","���H�4�ZK�2VzN.�ᡨ���uE�5w:","","0","?"),
("iy���tC��(�
("i�rE	jWGC���\n0F","wp-content/themes/flatsome/inc/extensions/flatsome-cart-refresh/flatsome-cart-refresh.php","0","�%&(�v���IDL��","�%&(�v���IDL��","wR>˓J�9�X3�(��J@�K�D�J9T","","0","?"),
("i�%���C1o�ȴ�ǚ ","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/slider/layerslider.php","0","̀U�4�6��n��!�","̀U�4�6��n��!�","�D���u�O��Aq��gh�sj�\n�(�","","0","?"),
("i���x�ZS[J�W�","wp-content/themes/flatsome/inc/builder/shortcodes/ux_hotspot.php","0","wUaJr������p��","wUaJr������p��","�����1��w�_��tL��D���[S�ck","","0","?"),
("i��ɘH�������","wp-content/themes/flatsome/inc/admin/customizer/customizer-config.php","0","p�(]��`U9�9gΆ","p�(]��`U9�9gΆ","�R�
("i�-��X�8V[~E�","wp-admin/css/install-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'QЇQ��H�v�x�	a",".U@A�&�EO��N,ZL���x*m�\'��E�o","","0","?"),
("i�\\����=X�h$","wp-admin/js/language-chooser.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","	�P�V0��tJ�J","�X�֨�+�ܤ�Y��`|a�{���P��L)��","","0","?"),
("i֧�`\0����\"Ͷ��)","wp-content/themes/flatsome/inc/admin/envato_setup/importer/envato-content-import.php","0","h�(�̶���q�ã��","h�(�̶���q�ã��","&�g��<��#��t��	�46�f6�*ŷ{�3I�","","0","?"),
("i�^ͩ&xK���5J","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Formatting/OperatorBracketUnitTest.js.fixed","0","�Z��)�8�z�F�\0�","�Z��)�8�z�F�\0�","e��`HRM/ޚ@�P?����WΓ^DY<�{�","","0","?"),
("i޳\'Tw�㨿;�:`%T","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Arrays/MultipleStatementAlignmentSniff.php","0","8���#λ��\"����R�","8���#λ��\"����R�","�d�w�5V�Z����ͺ\'9h��3�=�_","","0","?"),
("i�k���C��T,�","wp-content/plugins/wordfence/lib/wfIPWhitelist.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������H�b\'��
("j�ß��r���U���","wp-content/themes/flatsome/woocommerce/notices/success.php","0","�^ʆ~l�<��A-�!","�^ʆ~l�<��A-�!","ߩ�T�h��T���@��e����l�~N�L","","0","?"),
("j�㓶G~�����P=","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Organizations/Roles.php","0","+��ѫ��\0Ֆ^?H","+��ѫ��\0Ֆ^?H","�W����5H�	��<.l3��1������Er�","","0","?"),
("j&�V1���6�4����","wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���r��9 �#��{�","ﾱ��n�ѿ�0c~N��r��Au�g~Δ���I","","0","?"),
("j\'¶hM���j��,","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/WhiteSpace/ScopeClosingBraceSniff.php","0","V���\'ɨ���+D��I�","V���\'ɨ���+D��I�","�O��X�>�ݽߗ@�*#�}W�03w@�}��","","0","?"),
("j>e+|~^��}�B�!i","wp-content/themes/flatsome/assets/img/payment-icons/icon-bitcoin.svg.php","0","�!���B\"s��0��_56","�!���B\"s��0��_56","a�ZLAD^SxJU(>�5�.$�Q�3WYT�� ","","0","?"),
("jAy^����Wx���y","wp-content/plugins/wp-rocket/vendor/matthiasmullie/minify/src/Exceptions/IOException.php","0","WN�x�� �Q8�e61w","WN�x�� �Q8�e61w","���VpOBϼ�)�������x\'�@!���","","0","?"),
("jF��A��M��;�n6�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewHashAlgorithmsSniff.php","0","9���~;zE>��y�6","9���~;zE>��y�6","�sw�P5t�rr�\\�=�H�)u�s@
("jQ���e���;�e","wp-includes/css/wp-pointer-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","?���f��7���?�","׫��Ӝ�,������!�\'��M�첉��$ ","","0","?"),
("jmE��AX�uw�>܆","wp-admin/css/colors/ectoplasm/colors-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\"����T�~����6","�M���IcK���M�ث}��=-K�ʼh��S��","","0","?"),
("jo�\"����������","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/CSS/MissingColonSniff.php","0","�`��*Dl29�`�","�`��*Dl29�`�","׆�7��D�҈�|��Kb������tj	�+��","","0","?"),
("jt��Z��ܿ�,��","wp-content/plugins/wordfence/fonts/roboto-KFOkCnqEu92Fr1Mu51xIIzQXKMny.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","r�����a�a��i","{J�L���ͻ&��{��{��T:������B","","0","?"),
("j{��[\\lź����5�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/YodaConditionsSniff.php","0","#�����0��w����\'","#�����0��w����\'","���������a�J��ށ�e6Nz���l��","","0","?"),
("j~I{��Lb�Bk�,�","wp-content/themes/flatsome/inc/admin/customizer/img/product-page-title-featured.svg","0","\\.�x��U�}KX��
("j�䱋����%���]�","wp-includes/class-wp-xmlrpc-server.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�u,vg2��W��a�","�~�)z*u�!o����1��L^��������7�","","0","?"),
("j���)n�Q8ޮ�D�","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��s��{۞P� ���","�>��\"ݻ�$��>����:Z�UN��\\","","0","?"),
("j�����5F+���o","wp-includes/images/crystal/interactive.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�R�m`���`�9��","$����멘<x1��Փ��IR�V-VZ\\jg.���","","0","?"),
("j���en��7[��kO","wp-content/themes/flatsome/woocommerce/cart/continue-shopping.php","0","O����|�x@��f���J","O����|�x@��f���J","�j����|RE=�dR~
("j��4-�O Մ��rL\n","wp-content/plugins/wordfence/models/block/wfRateLimit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���W�|C���ǎW��P","��;����@#31�N����|9�����^S>","","0","?"),
("j�0��x �	�d�A/","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/page-builder/visual-composer.php","0","_�:\"qTU�FON�p=","_�:\"qTU�FON�p=","nQ�&��[�/���:M��\\��);�!�(^�","","0","?"),
("j�gs�66�$��8*�E�","wp-includes/class-wp-dependency.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��PCb����B���","���Վ��=��kqS�(��t_֙ȟ����Z","","0","?"),
("jڿ�t��1u���}���","wp-content/plugins/wordfence/images/wordfence-logo-64x64.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v^�I�N/��g@��\\u","8�V����ݏǃ4p��]cy�\\����","","0","?"),
("j�
("k	���<�(G�w���","wp-content/plugins/contact-form-7/modules/number.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��m�2~��$�","�|�ٍ���Nl�=�Λ��͍��q\"�Ǒq","","0","?"),
("k���$6O��-N�x�","wp-includes/js/tinymce/plugins/charmap/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","=B�쟄��P
INSERT INTO bz_wffilemods VALUES
("k%�
("k2?S+��qd�\n5v�","wp-content/themes/flatsome/inc/builder/core/server/helpers/elements.php","0","�V��J�=E{ڝ:E�_","�V��J�=E{ڝ:E�_","c�p���?�����b��En�|��87�U��","","0","?"),
("k6���*���H�	�u١","wp-content/plugins/wordfence/lib/dashboard/widget_notifications.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","A�p����������Rn","�Ս>�jc&�l
("kM�������̙Ysp","wp-admin/credits.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E7Y��z��<(~�","T�O���+}
("kN��(l�Zf��E\"Lm�","wp-content/plugins/contact-form-7/wp-contact-form-7.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ۅ�\\ݨ���ƃk�","&d�U��LΥ\n
("km�|��Kma0�\"*�k","wp-admin/js/tags-suggest.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��勼�eO�l	rl���","�K:��/��£�:���~�š�j�����","","0","?"),
("k}:�����VN����G","wp-content/plugins/wordfence/vendor/composer/ca-bundle/LICENSE","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","x>P��H�e6�[GF�5�","��q!�홐��%ހP٧��H��r�.�L��~","","0","?"),
("k��1���/�͓ݐ%=�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/MaxMind.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Dq�d6�+\"��U���","�I�����s;֮����i����k���E�@�)","","0","?"),
("k����FRG�R�\n>^�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Commenting/InlineCommentSniff.php","0","Ҹ&����5Qa����","Ҹ&����5Qa����","���E=���P ��u���%_vI^��Y1��?�","","0","?"),
("k������x��EzX�&","wp-content/themes/flatsome/inc/admin/customizer/img/icon-fill-round.svg","0","K/
("k�_�V\"H�Uf\"7z","wp-content/plugins/wordfence/js/jquery.colorbox-min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Y5�=���q��)����","H��4\\��v��/X�G��K����:gkl","","0","?"),
("k��B˞�b=y��","wp-includes/user.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�7&D�4<\n�KQrS�	","��DL�pR�&��Ό���&�2&W������","","0","?"),
("k���1]��XKP��*","wp-content/themes/flatsome/template-parts/header/partials/element-account.php","0","��VxD?���ZQg��","��VxD?���ZQg��","i~.\0���E�\"C@,��3�;���rh�u�","","0","?"),
("l�Å>4�\"��i��\\","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Strings/JoinStringsUnitTest.php","0","rogG`z�ޑzH/","rogG`z�ޑzH/","{�o\np�Ĵ���Q�dY����1��7(","","0","?"),
("l��a�K]Ɍ��%|","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/NamingConventions/CamelCapsFunctionNameUnitTest.php","0","���-x���m�Jb��","���-x���m�Jb��","?���\n6�I�,A�~�E;{��خ�\\K�ڥ","","0","?"),
("l,(�ީ�.��DUA�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Functions/FunctionDuplicateArgumentSniff.php","0","=\0���1�ٳ*Hqv|2,","=\0���1�ٳ*Hqv|2,","|a)\\���D���\nԟ�͆$OT���L(9o�v","","0","?"),
("l/\n�Ԁ�W�ͱ-c�","wp-includes/widgets/class-wp-widget-recent-posts.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v�������\njqU�X]","�z�y�ԎA*aC�)eg����VxR�˿���=�","","0","?"),
("l/{�zי�i��M%!","wp-content/themes/flatsome/inc/admin/customizer/img/icon-outline.svg","0","½?��
("l9��=��h�,>���&","wp-content/plugins/wordfence/lib/wfDiagnostic.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","X�	:p[��#6X�N","]�fb�K�N7��:����7���e�2l�","","0","?"),
("lH���S�ԍ\"M�f^","wp-content/themes/flatsome/page-blank.php","0","������Ș��5B�","������Ș��5B�","�����V�8_懇�n%*+ՙ��$�I","","0","?"),
("l���f�-��w��K5)�","wp-content/themes/flatsome/inc/admin/admin-bar.php","0","�!o�ĵ������R��","�!o�ĵ������R��","P��:u�KXO��R��0+Aŏ:��qnk?S@","","0","?"),
("l�_<�I욏<�,��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Formatting/NoSpaceAfterCastUnitTest.php","0","1Q�S2���<�m&�u","1Q�S2���<�m&�u","8k�Ki?d�28E\n�\nm���b�ܝ��pi�","","0","?"),
("l�����ݰ�����lB","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniff.php","0","���X��c7�	�Ҩp","���X��c7�	�Ҩp","�� ��ȵh�]�P�:jں�\ny��QC�r7","","0","?"),
("l��a�Bv��t=!ĽK","wp-content/themes/flatsome/assets/libs/ie-flexibility.js","0","�K²�薋�2=l�*�b","�K²�薋�2=l�*�b","�{ƈ��ϒk�7�(	����ls����\"�/n","","0","?"),
("mD��T�ms���A�}","wp-includes/certificates/ca-bundle.crt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�{޽�A��6��Xi,","L#V�O�� \\H�Ȩ�\0)K�8�)I","","0","?"),
("mq+�Qz�%�6�>�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Functions/MultiLineFunctionDeclarationUnitTest.js","0"," ^+?,+H����E�-��"," ^+?,+H����E�-��","C�BE��	���UG �
("m%�)�T�o�P��fy�","wp-content/themes/flatsome/inc/functions/function-update.php","0","�A�_
("mA��Y�����Rb|�S�","wp-includes/ms-default-constants.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","U�ظ�̓HA�N���","O����&���63�8��.�� ���v,��ok","","0","?"),
("mE������\\�)��o�","wp-includes/js/jquery/ui/spinner.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",":�2�a+�R!����e��","I�)`߹*�N��V�j��d̲����c�Z朸S","","0","?"),
("mG ��\\	b�YC��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/ControlStructures/MultiLineConditionUnitTest.js","0","��Q��ʰ/�>�","��Q��ʰ/�>�","f�c.nf��L�փ��+q�%���n��	R�RG","","0","?"),
("mJS�|uq�n��!=","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/NamingConventions/ValidVariableNameSniff.php","0","|�l������˜��","|�l������˜��","�@둕s~�l1���ie�z΃���j�`$F�","","0","?"),
("mO�!�dvX=�o �O","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniff.php","0","�pA\n#;�u��","�pA\n#;�u��","qӚR,�+^l\nŖyL����HHK�ASl<","","0","?"),
("mY����}ɽ��?","wp-includes/js/jquery/jquery.ui.touch-punch.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L�m�Q4փ��]�","k>jT@���z�����՜.OB��j�0\'��t","","0","?"),
("mqr��6i*v#[E3oJ","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/simple-left.svg","0","p�LT�K��4ta.���","p�LT�K��4ta.���","\0��7ܤE�����,z�f�h6	��u����","","0","?"),
("ms��aq�h�l���&ͨ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Reports/Svnblame.php","0","�:]E*5�y2�[��{","�:]E*5�y2�[��{","��z1Ҵ�s%���\"�z�N�Ldq��J�0��","","0","?"),
("m��-m1�����w��","wp-includes/js/jquery/ui/sortable.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(���~���k�k�","��i�/U՜��jK\ns�>�zTa�s���Uu^�v","","0","?"),
("m�a0�D��B�n�L�k","wp-content/themes/benh-vien/template-parts/posts/archive.php","0","�����ð����� �Q4","�����ð����� �Q4","�s���1��`6�:�5k��%����يQc�","","0","?"),
("m��:\\�e;�����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/ControlStructures/ControlSignatureSniff.php","0","y�ԛ�-V������","y�ԛ�-V������","�v2A�a��!���h\'�P�s�+��w���","","0","?"),
("m�83�r2��!�p���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/DeprecatedFunctionsSniff.php","0","��Q��k����4����","��Q��k����4����","^n|�u��Խa@4�DmX=�ql�J&��<��","","0","?"),
("m�2�okZ��C�b��","wp-content/themes/flatsome/inc/admin/customizer/img/category-title.svg","0","�?�3{x���,�,\0","�?�3{x���,�,\0","����2ŋ��/���W���K�j�2Pw}��","","0","?"),
("nQ��ʒ\'�k��\"%�","wp-includes/js/mediaelement/mediaelementplayer-legacy.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��0�!��d\n�V���","2�i3�g%�RN�$���G��ñ#��vĀ��","","0","?"),
("n]�j7<3ISsQ�","wp-admin/images/post-formats32-vs.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�t.E���5G�N��v","(Z�,���Im�Y,·�ԗ��tG��������a","","0","?"),
("n[	X���}�0�","wp-content/plugins/wordfence/views/scanner/issue-spamvertizeCheck.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��%ؘ5��a�O�_��","�3½}�߈�6��-������x%�uv�","","0","?"),
("n�s�\n��5����qr","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/POSIXFunctionsSniff.php","0","K�VЈʪ�@��P6@","K�VЈʪ�@��P6@","7��^ܟ�2����;*�-L�-N;�J]����� ","","0","?"),
("nԐB!S�4P1v��7","wp-content/plugins/wp-rocket/inc/front/lazyload.php","0","��?�>Q��D@�3jB�","��?�>Q��D@�3jB�","���_<⒖oeH�5^�~�@G)!���?ᄂ�r","","0","?"),
("n#�t=�\'�����b]{�","wp-includes/js/tinymce/themes/modern/theme.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","z6�C	��Q̵=�)C","�r\\�\'^��*R��W:�A\\\'2t*	>&�!��
("n\'��*�x U��]j�","wp-content/themes/flatsome/inc/builder/shortcodes/commons/repeater-slider.php","0","�w\"kQA�E5Һy��1","�w\"kQA�E5Һy��1","�?���;�iQeVmzt!��%�!��U�@aċ�","","0","?"),
("nAj+�u��VG7d","wp-content/plugins/wordfence/views/waf/status-tooltip-learning-mode.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ُ8l�����%��","!]`_.���\\��?�� ��.�b��ɐGQ�e)m","","0","?"),
("nG�EfI\"�S���\na4","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Zend/Sniffs/Debug/CodeAnalyzerSniff.php","0","�\0�\n0�F��n��[�","�\0�\n0�F��n��[�","�Qul���B&p�b�����ޯ\\��j�c�Φex","","0","?"),
("nZ/1T:{&^�/n���","wp-admin/js/media-gallery.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ѐ�H�M#N5��e�q\n","H-PG��Z��=���\"�pa���(l���΢","","0","?"),
("nef���A@���R�?��","wp-includes/js/jquery/ui/position.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J��X�~�C:�/b","[B������<�s��*��;�չC�]+���S�s","","0","?"),
("n��6�:4�#����","wp-content/plugins/woosidebars/woosidebars.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","3�(^˯bjW�R�X�","��Y3���V|�~*r��H(�:t�j�9`N1�0","","0","?"),
("n��o��~�pT뎵�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/envira-gallery.php","0","�X%N�:�L����J�","�X%N�:�L����J�","��\n�\\�+�>G��C}P�)Z��^�Q�W�","","0","?"),
("n��(c�#��ȏ","wp-content/themes/flatsome/template-parts/posts/loop/post-simple.php","0","/����^��EA�OHD","/����^��EA�OHD","�!�]���fa�S��rw��_X�mk
("n���:�Q��gқhvJ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Util/Cache.php","0","�a�<5>�_Q�Y���","�a�<5>�_Q�Y���","���η,)k��{�������L/`��=�W�?�","","0","?"),
("n����@��A��F�","wp-admin/network/sites.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�|q�#封��FZ","6���ٓ{�ɽI�ʐ�E���ڀ�@���o<s.6","","0","?"),
("n��ƴ���Uׂ_�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/DisallowShortOpenTagSniff.php","0","Ր㢾O���5��i��","Ր㢾O���5��i��","�Z�8��B�/h#�Gf\n����=+��2��x�","","0","?"),
("n�@\\!�i{ˌS�Y\0","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/scripts/build-phar.php","0","\n�0%C��s�Oi�4�[","\n�0%C��s�Oi�4�[","�:#��|㋌��cʸ氊�K�߿�G��[","","0","?"),
("n��N�����K�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Organizations/Firewall/AccessRules/Rules.php","0","9X��ӱl�`��","9X��ӱl�`��","�ߢ+��/��lxAh�0�POǟ��n����<","","0","?"),
("nŢ�)�c���q^\"","wp-includes/Requests/Exception/HTTP/503.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9�RaßC�`\0�UT�","�}��=3x�A9����l��p\0�ư�9e.O","","0","?"),
("n�к���v�nj=ͮ","wp-admin/includes/class-bulk-plugin-upgrader-skin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","4����8������ߧ","&��ڪ&��@�s����2��%�ù�/��-G�","","0","?"),
("n���0�9j�v8�\"","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ܡt}��s��wN�",".^qe�,Q�C�	������Ő�;�����_���","","0","?"),
("o�o��ר$���C��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-color-alpha.php","0",",0�e+\0��߿����",",0�e+\0��߿����","NS���U�P�1v��G6CKQ@S�jT�,�","","0","?"),
("o����&���I����}","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/Pagerules.php","0","D�¹0��0���O�w","D�¹0��0���O�w","�n9�+L�1���k�,�\\�z�Q�S�|`~l�","","0","?"),
("o\'RD-��\0���o��","wp-content/plugins/wordfence/images/support.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Cl�$��r����n<.","��$�M��Ԯ�&���(ᩘs��^	Ϣ*N��","","0","?"),
("oP��c����o�.�r","wp-includes/js/tinymce/skins/lightgray/img/object.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�rdP�E}u\n/M�A�� ","��#;!��I��.�>�uʍ�SV��m{|�e-","","0","?"),
("oZ0�������<c�0","wp-includes/SimplePie/IRI.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","n� �憒�;a{�_6�","�`VCS5Iٮ;&>�x�$����-�&z+","","0","?"),
("o}�C܊8�E��G�","wp-content/plugins/wordfence/views/scanner/site-cleaning-high-sense.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�sTD�z���ҧ�m�","�5��؄�:\"�sx��4��Ҹ\0���9`i�?�","","0","?"),
("o�ن�eR�xP�1p.ъ","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenNegativeBitshiftSniff.php","0","t�k�S�\']Rx�y�N","t�k�S�\']Rx�y�N","�����2����]-�L�I���:t�z��","","0","?"),
("o�q�%S��;�d�J�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/ForLoopWithTestFunctionCallUnitTest.php","0","�;��\0!����ɡ��>","�;��\0!����ɡ��>","�uS�O|J��1�`�,s�ūH��4l���č��","","0","?"),
("o�S�F˟1T9�x�b�L","wp-content/plugins/woosidebars/integrations/integration-woocommerce.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","7��*��Ȫ[rJ�\'","�P^�
("o�c~90a�}��7�&�","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-color-palette.php","0","�ϐ��=~.�AFU�s=","�ϐ��=~.�AFU�s=","�x}P�F����o�sUt�ho��+�,��l1","","0","?"),
("oЃ*��\\�� ː�","wp-content/themes/flatsome/inc/admin/options/shop/options-shop-product-page.php","0","��~z	�� �ZЊ	","��~z	�� �ZЊ	","G�*���B�ժ��?A��=P�y�3","","0","?"),
("o㮚-�;?X:��pҡ","wp-trackback.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�.0���忍��","�<��T�s��	��a�8�x^����;���","","0","?"),
("o�����Y��څ��X�","wp-content/plugins/wordfence/images/flags.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�/��\'\\�q�s8-NG","������={�.\'\\�x��݉��K5z�1?�n","","0","?"),
("o�[��n3u��ʹ�P5","wp-admin/options-general.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","b��֖s:���Bу��","���{�o�5mS%_���~��?\\F���.Hۛ�","","0","?"),
("o�^��52+e����G","wp-content/plugins/wp-rocket/inc/admin/ui/notices.php","0","܂��4U��0��&>s","܂��4U��0��&>s","Z]C�S:4(���lP�W!��Uk�<l������","","0","?"),
("o�_(�2���R�����","wp-content/themes/flatsome/inc/admin/customizer/img/product-title-featured.svg","0","�/���89��3P��","�/���89��3P��","Q�\0{-�����¦Ft�\0lm�|	U%B�����H","","0","?"),
("o�04�X�b,��X�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/DeprecatedIniDirectivesSniff.php","0","�0\")�D��?���&","�0\")�D��?���&","�Megΰk�Q�w��Z�����Eb�����v��","","0","?"),
("o���L�ї5�ٯa�x�","wp-content/themes/flatsome/inc/builder/core/server/filters/post-options.php","0","O`�K�(;
("p��7u�L�_{2Û�","wp-includes/js/jquery/ui/draggable.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","D<\'w����I\0՜6�","�PRA`5�;��[�Cb))�*� kM��Le��z ","","0","?"),
("p{
("p:�,�`OlL�(�A","wp-content/plugins/wordfence/views/waf/waf-uninstall-success.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����������*sf2","�|
("pI���:S����v��u","wp-content/plugins/contact-form-7/includes/formatting.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�k�ܐ��ԁH�-W�","]l{E>@�Y�\"&ہ�����<���ͭf\0�","","0","?"),
("pUy�a	�b��va�;�8","wp-includes/js/comment-reply.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","8S����w��rpY","m��R	��*õbu4�3^�PuU���zw","","0","?"),
("prhcj������","wp-content/themes/flatsome/inc/admin/kirki/modules/field-dependencies/field-dependencies.js","0","���#�yB8���9\'��","���#�yB8���9\'��","�*����݌ZU��QU��I{m�.���B��b","","0","?"),
("pw��Q�F�c�ߠb*","wp-content/plugins/wordfence/fonts/roboto-KFOmCnqEu92Fr1Mu4mxMKTU1Kg.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","@$�qG�2k5$��z�","ֆF*`�\'�O t�riR:�j0��W�=�j��","","0","?"),
("p��.а��[ÍD�","wp-includes/deprecated.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ıY�Z�#n�V��\n","������������~��AdAP�pc����R�","","0","?"),
("p���9a�x���g���","wp-content/plugins/wp-rocket/inc/functions/options.php","0","U⟮�-�z���f�o","U⟮�-�z���f�o","z�+P�1��F$
("p��R�Ju,� m���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Debug/JavaScriptLintUnitTest.js","0"," \\i�b.{�G��i"," \\i�b.{�G��i","�\00���ޡ�u@���D�4ն�SZ�E�8�=Z","","0","?"),
("p̓0�2@��PF�tk","wp-content/plugins/wordfence/views/common/unsubscribe.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�}�}���sJ���K�","a�\0�k5���	�-��\0oDx۠8u��%\'","","0","?"),
("qqC��$�������@","wp-content/plugins/wordfence/views/common/page-title.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��aA\'4��=��G�g","R{�h�C;�_��	����G+Rz�rT��z`�4","","0","?"),
("q\"�co���>�2Rh�]","wp-admin/includes/plugin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�/K�˦�*@L�A�","5��ƶ9�Ԁ�[{��r`�t0�Ʒ�j","","0","?"),
("qh�665�y|�=�?S	","wp-includes/js/jquery/jquery.serialize-object.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\\)������J�l<�\"","��D{zp�
("qm���Cʟ�0�T�}","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/ControlStructureSpacingUnitTest.php","0","p�i�,���Dΰ7�|\"","p�i�,���Dΰ7�|\"","EQ�~�&9m��U�I���]sQ��zpʍ�Ɗ","","0","?"),
("qz�@�:�.r��E���","wp-content/themes/flatsome/inc/admin/options/header/options-header-newsletter.php","0","���WX��\n�Q:�b��>","���WX��\n�Q:�b��>","�>G�_���Z�ێ���~���5\"\'+�����","","0","?"),
("q�s���ƞ�ù��","wp-includes/rest-api/endpoints/class-wp-rest-post-types-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�߉�Q\n+�5�ćU�","�K�\\��b��;��j<f������j�Ǘ�","","0","?"),
("q��5@�*=�&��\\X�","wp-content/plugins/wordfence/lib/wfHelperBin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";��!�ȍ��4Q��X#","��չ%-�^�q��U�q�M��eY����","","0","?"),
("q���D��V㚔�-5�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Debug/JSLintUnitTest.js","0"," \\i�b.{�G��i"," \\i�b.{�G��i","�\00���ޡ�u@���D�4ն�SZ�E�8�=Z","","0","?"),
("r��h��v��Lk/��","wp-admin/network/upgrade.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P�
INSERT INTO bz_wffilemods VALUES
("r�q�W4�ZOO,��","wp-content/themes/flatsome/inc/functions/function-plugins.php","0","Ƒ��WK���$n���","Ƒ��WK���$n���","�*��Ő���0Ёi9^�_x�os�_A󎩼�-","","0","?"),
("rD:�Ϧ���y?��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/Classes/ClassDeclarationUnitTest.php","0","���s6kg3Q� �,�s","���s6kg3Q� �,�s","�K#�=G5 nQ�+�ܘA�c��Ҏ`��Y���PH","","0","?"),
("r+zk;� 4��WI","wp-includes/js/tinymce/themes/modern/theme.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���\n\'Ҏy6�V��O","^�^�����7]����~��$�ex���rfhu�","","0","?"),
("r1iV������0	�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/NoSilencedErrorsUnitTest.php","0","�����{��=:������","�����{��=:������","�cM`m6qŵ��LV�\0�������p��","","0","?"),
("rI\0yg�E!���2\0C","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503-lockout.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N��`A=�<I��S�",")-A��Q4�l��6Wo�	0�!�ja��
("rN1�b篤�p�L|.","wp-content/themes/flatsome/inc/admin/customizer/img/nav-icon-fill.svg","0","z�J�m�.���:ލ�","z�J�m�.���:ލ�","?Z*K$��}=.&z7ܪ����6�Tf¡*�>","","0","?"),
("r_��[\"hM��P��i�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/WAF/Packages/Groups.php","0","�~<��Kg [","�~<��Kg [","�UKnOc�Xv����(���Ů��XP�O�","","0","?"),
("riN<h�E9d��wܠ","wp-content/themes/flatsome/inc/admin/options/styles/options-css.php","0","��F��?������A9�","��F��?������A9�","��W��`�p$����3���4z���a5�>U|","","0","?"),
("rt�����CU�5���#�","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/SSL/Analyze.php","0","���E�QA�-�d�","���E�QA�-�d�","8#�����k��ԉ_�6�7�P�l(��#��w","","0","?"),
("ry��&�\'G&��	","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenSwitchWithMultipleDefaultBlocksSniff.php","0","d���G;@2�w�m�S","d���G;@2�w�m�S","�����{pnA�{��
("r������P/��","wp-content/themes/flatsome/inc/extensions/flatsome-infinite-scroll/templates/image.php","0","�#)��Ys����S","�#)��Ys����S","�9\0��o��yK��4ef�7�SB0��R�(","","0","?"),
("r�d|���L2��]\0�","wp-content/themes/flatsome/template-parts/header/header-main.php","0","�­4D��\\Ŧ�y�5\'�","�­4D��\\Ŧ�y�5\'�","T˶�������K��L����&�*����VH�","","0","?"),
("r�(n՞���j��b\"","wp-admin/js/media.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ٿa�A���72>�p-","y\n�@��$5:K�LAXć�ao�C�e�=m�{","","0","?"),
("r�3���mHLH[{�","wp-content/themes/flatsome/template-parts/posts/single.php","0","���K��\nx��x�8�r","���K��\nx��x�8�r","�drA�Is��,Bsob�՚E1ܵ6���&�","","0","?"),
("r�x,��Ьd����k�","wp-content/plugins/wordfence/js/jquery.tools.min.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:-��Eՠx�$�B",",�4�~aT�lS �fQO	f���Tӵ��;��)","","0","?"),
("r�*��\'�Tp�N�!�","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-values.php","0","�B���z���-G�<Q","�B���z���-G�<Q","(�3�\\���[Ё�N��z�yr��_XK!��Q>r","","0","?"),
("r�_�/��HG=�%�<�","wp-includes/images/arrow-pointer-blue-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%m�rތ]4�9c�","��{&DO�z��A�f�/��gá������A]~�(�","","0","?"),
("r�9���\"�-Hjm�","wp-content/plugins/woosidebars/readme.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","M�X�kBA�/","x�a�[ʹ\'�ho�-���>݅����_ߖ�","","0","?"),
("r��r�(J�g�(�y�t","wp-includes/js/mce-view.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��lè�?m�d[ˑ","Z���Ie��D�0��e������*�~��pF*�","","0","?"),
("r���]N܀���箱�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/DB/PreparedSQLPlaceholdersSniff.php","0","��A�NZ��f�����%","��A�NZ��f�����%","O��a���!�O͟��=�,$��a��s���","","0","?"),
("r��\n��b��#��","wp-admin/css/media-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i������ہ���","��|��Y�Np�fS9��
("r�7��/y*�aڛP] 0","wp-content/plugins/wordfence/views/blocking/blocking-create.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���4�J��PЩ�s�B�","����r~�5\n���̊�4�G�șA��","","0","?"),
("s�As�Y����D]","wp-content/plugins/wordfence/views/scanner/options-group-advanced.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R��YtO`6qz���","�cV*����}��z��c*(�6�`�=9n��o${","","0","?"),
("sv,{X�Ĉ�TK]�i�","wp-content/themes/flatsome/inc/builder/shortcodes/values/col-spacing.php","0","&���\'[��1}�����","&���\'[��1}�����","6iB��[��}J�g��[��!mhTp�&��٩�=�","","0","?"),
("s��4V�Շ��UU�","wp-content/themes/flatsome/assets/img/payment-icons/icon-skrill.svg.php","0","q�fhJ�ݜ�Fyz�","q�fhJ�ݜ�Fyz�","��!�R�}���&x�cy�N��s(E��L�e","","0","?"),
("s��2K\n��l�F��u/G","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ʔ��?�2K�I���","�V1��������\nck�����e�!��d","","0","?"),
("s�E�Ξq�p�B���","wp-admin/css/widgets-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����n�5�����","�ݳ���*�p�	��9���\'��r�����D","","0","?"),
("s�C�����*�e0��b","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Classes/ClassDeclarationSniff.php","0","���a	X,V�6��2�H","���a	X,V�6��2�H","ɪ�Ry��h�ng�@����t�&?��r�J","","0","?"),
("s��ז��:����h�S","wp-content/plugins/contact-form-7/includes/functions.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����k\"6/`?ɾ%�","�rܺ}C��\\zNl(Y5�������6:���","","0","?"),
("s�ŏU\'���e@�d�","wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","1T)W����dY�","����uG4?m;`�ß7��-��F���
("s��˱�Y*u���O�","wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�*q��BIt�ӟA<\"","6qQ���`�d!cf��.���Bxq","","0","?"),
("s��\\Z)��23�h�l","wp-content/themes/flatsome/page-blank-title-center.php","0","Մl(O� ������۩","Մl(O� ������۩","�*�[��\\��|�J�T1%k\0r��莰a���","","0","?"),
("s�C4M�*��*B�)�","wp-includes/css/wp-pointer.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�O�
("t*�3�d_`yC�w�","wp-content/themes/flatsome/inc/helpers/helpers-icons.php","0","�逦1����q�b�","�逦1����q�b�","!�S-�~�$�`�ADȶ֤B�\\߬�O��@","","0","?"),
("t3�ڝ��O4���","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewIniDirectivesSniff.php","0","�uP=l�W�@��G���","�uP=l�W�@��G���","n�O���j��VT_�U}���X���D�\\�","","0","?"),
("t6��O�
("t8����p�̋�z{jDp","wp-includes/css/buttons-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N�,�>!5����NҠ7","���f����	e�	|�d�+��������&�","","0","?"),
("tIV�:�܁)�N����","wp-content/themes/flatsome/inc/admin/envato_setup/create_child_theme.php","0","M�wKR7�-����","M�wKR7�-����","�B���ʲ����u��n.�@;�`��S�I����","","0","?"),
("tU�/Ds�Iڤ�st�","wp-includes/js/wp-auth-check.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��z}j����o)��","��	�4�_�]˱�j��6�M.���1��q7�","","0","?"),
("tm6ۗ�q���.��=j","wp-admin/css/colors/blue/colors.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","X�.�(�.�U�.�w","?�m�Ъ0�I���/��~��!,t_�1�I��","","0","?"),
("t}.��}\"��#�|��b","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/SSL/CertificatePacks.php","0","��No`&�4�T��","��No`&�4�T��","\\�����u@�]�����9����=Db�W","","0","?"),
("tM���S�d�E�
("t�����.�Õ�81�","wp-includes/random_compat/random_bytes_com_dotnet.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R�$
("t�U��=��_��ܮ&","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Sniffs/Namespaces/UseDeclarationSniff.php","0","sv���2}Xz�M�7إw","sv���2}Xz�M�7إw","������\n@�0!O���|\0�4�� �v~\\X�","","0","?"),
("t�@��a���>l-����","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-4-col.svg","0",".S���j|4B�wx�q�",".S���j|4B�wx�q�","�Kjxv����٫��|�ͽ�`1P*��K{���","","0","?"),
("t�㡏�9+���ք��","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/PostAttributesOptions.php","0","p��ksy+��;���m","p��ksy+��;���m","ܲ��S=��L��[�fOyRk9ة�&8!�TƇ","","0","?"),
("u�6��4E~��:��","wp-content/plugins/wordfence/images/icons/working-indicator.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����VF���{N	�\'G","�fX��RZ�|:O�b��=f�[y���5 ~	","","0","?"),
("u҈�f�U�΢=���","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/I18nSniff.php","0","�A��U�دN,�����","�A��U�دN,�����","\'}D�4���\"�(�0��1\0���|��C�k","","0","?"),
("ue�,\"\n	�h�g.","wp-admin/css/colors/_mixins.scss","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�iƢT����ȶ(","��U9�æ�l��W�?9T�c��䫁�:h(","","0","?"),
("u����[������D","wp-content/plugins/wordfence/views/waf/waf-modal-wrapper.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�nγUǩ�7P�F���","f���4���֒p.�Օ*���^Nl�8���A","","0","?"),
("u��3!pA�f�)R�M�","wp-includes/js/tinymce/plugins/wpgallery/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�H4PD�����DM\\I","�#l�����Lx�)�$�3�xRѺ*\\9-�","","0","?"),
("u�U��Ob�C_�t���P","wp-content/themes/flatsome/template-parts/posts/loop/partials/entry-footer-single.php","0","Əh�w§B��Ϫ�6","Əh�w§B��Ϫ�6","�vf�5dP�*�@6�oNh;E��t9fE>��`","","0","?"),
("u̥i��(�| ��	0O3","wp-content/themes/flatsome/assets/img/payment-icons/icon-sofort.svg.php","0","i��e么ɘ���","i��e么ɘ���","����O}�x��ٟ4�J�O6��G�A��qE�o6","","0","?"),
("u�qg\0�8�hԭ�\0�","wp-admin/custom-header.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ԩ5��w���g
("u�&a7L�5\\R�߀�l�","wp-content/themes/flatsome/inc/shortcodes/ux_countdown/countdown-script-min.js","0","�#+��M\'t","�#+��M\'t","����7q���~��BV-[�-�yz��[�t���","","0","?"),
("v�}ؚ�E�M7J5Z#","wp-content/themes/flatsome/woocommerce/single-product/w2-product-image-vertical.php","0","��f�����q̽��","��f�����q̽��","pa�Z����а7��3U�{N���<�1�u�","","0","?"),
("vڴ����V���K��P","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d\"w���D�k�t�УX","W�2��`�jT;Zaͨd]��qܱ�XO���Z��","","0","?"),
("v�)F��~q���?b","wp-admin/includes/class-plugin-upgrader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Q���,>:��QK��","��r�+���L/�������`6�u\0`w�Xğ","","0","?"),
("vK;@�s�aU1;�	^�","wp-config.php","0","��r��O�nw^;2","��r��O�nw^;2","2C�s�U����+%�,0gl���`R�!�����","","0","?"),
("vP$џ�y�d��`���","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-modules.php","0","ch���k�M�Xx&�c","ch���k�M�Xx&�c","�{M>�s	|�>5����]��.s�qP(�6","","0","?"),
("vv��!���y4�/","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewMultiCatchSniff.php","0","i��q�Y�\'�1LgkN��","i��q�Y�\'�1LgkN��","l�\0���@M�eh������)�c��Q��(ܣ","","0","?"),
("vw��@�H��z�F�","wp-admin/ms-admin.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���@�ͯE�b6�","��BHT��`C�
("v{�#�;���L��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/ControlStructures/MultiLineConditionUnitTest.js.fixed","0","����5�����s(","����5�����s(","�#��
("v]�z������3�tB","wp-admin/includes/class-wp-importer.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","d�p��c������#�","�}���K�&����`�m���kO����l�","","0","?"),
("v�X�#?Nu�$ߣ��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/badge.svg","0","$��C�O=�α�[u�","$��C�O=�α�[u�","�	�\0(R��\"O{���M��.䁴�=�ƈ/0�","","0","?"),
("v��ޣ��R�","wp-includes/js/jquery/jquery-migrate.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","lW�bX��[5y�^l6�","Oͭz��%(�s!?,�e�����\n���\'ɀ��+","","0","?"),
("v�����ƛ`o����2","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/ColonSpacingUnitTest.php","0","`��iz\nu�����#R","`��iz\nu�����#R","�]+d�V���I}���؀X��_��2Ҍ[","","0","?"),
("vâ,\\�+Q�����֧","wp-admin/css/l10n-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����|�\0yJ�=��","TE,ͱ��!��LbE��^li0Ka��P�","","0","?"),
("v�G�.�g�A��#�r�","wp-admin/images/align-right-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h�l�>r�]�lW��x","�V:�h���#ȆBT�5i\0�?��c�Bc���","","0","?"),
("v����4�|>�<����","wp-admin/js/xfn.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���$�N�%����rf","��F]$�/-��h�AAJ�b¢���\'f�5��Ƒ�","","0","?"),
("v�{#��l��b\0}��B","wp-admin/css/colors/light/colors.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",".]�%����4j���","\n�%�ײ�UJ�df!ӌ��8e�+�|h��d��V","","0","?"),
("v�Ҹ);�D��~J\"��q","wp-includes/js/jquery/jquery.form.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Њn=i���f���5]","�5\\�\'=\'�*m%,�kC!<���2�m=�","","0","?"),
("wu�l|��p��Q","wp-includes/js/autosave.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�6k}�}	f���%","��:��� jj�{I�hy1�>+7@�qC�2c","","0","?"),
("wB���j{�z)��j�\0","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/LowercaseStyleDefinitionUnitTest.php","0","9~���\\����+\'K","9~���\\����+\'K","n�e�W<-\\B���Q_e{���U]s	%\'z��","","0","?"),
("wC%qԚ/N�Xi	��	","wp-content/themes/flatsome/inc/builder/shortcodes/ux_image.php","0","$��hzL�E�B9�","$��hzL�E�B9�","߅���4��\n�\nPG	E-1�����8�","","0","?"),
("we��j�Z��q�I�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/City.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(�,�����Eڎ�;","5+�S�sY>%�r9�7�5[I�=�`<2M��","","0","?"),
("wx�pP��g�x��u�","wp-content/themes/flatsome/woocommerce/single-product/product-image.php","0","8?b��&�E���F\"B�","8?b��&�E���F\"B�","�i�ښP/t�2���~0�H���^���{p��","","0","?"),
("w���@��9V��I","wp-content/themes/flatsome/inc/admin/kirki/controls/js/dist/script-legacy.js","0","4�`�)\'m~��Nz�cO%","4�`�)\'m~��Nz�cO%","��nה��U�^�=�硨��Җ�L��޻��","","0","?"),
("w�\\�ޯ,�z�B;>�w�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Arrays/ArrayAssignmentRestrictionsSniff.php","0","Y\'[��y;�-S����","Y\'[��y;�-S����","��,�C��wfB�3e�4���A�l���	��E,","","0","?"),
("w���L��0���]r.","wp-includes/images/crystal/code.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","`�1������1�9",";�67����
("w��`M��>�{���","wp-admin/includes/noop.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�0�xF�a#P�|D3��","��_^]-��r�Ijl�|��E
("w��٧�ݲ�x�Z+","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Commenting/FixmeUnitTest.php","0","�oq_sϗ��$�.��","�oq_sϗ��$�.��","\'�5a��@)�1�N���6���B�Y��{Ok^�","","0","?"),
("w��Ҁ�O���Bt�","wp-content/themes/flatsome/inc/admin/kirki/controls/js/dist/script-legacy.min.js","0","<���_����T��","<���_����T��",")}�F$8�ڊIa�94I,z���h<��y	�","","0","?"),
("w�M<;2�Uk==k��","wp-content/themes/flatsome/inc/woocommerce/structure-wc-product-page.php","0","u�Y���̾���K7","u�Y���̾���K7","?��ӿ�G�%�x�j�
("w��0+J����lXu�QL","wp-content/themes/flatsome/woocommerce/layouts/category-off-canvas.php","0","���tqqJzC�Y��","���tqqJzC�Y��","�d��0��
("w������:}V��P","wp-admin/js/common.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","lX�!E��A�6��","�n�첱���3t[�$����y��R:��L\0","","0","?"),
("x�>���E\\��Q;�\\","wp-content/plugins/contact-form-7/modules/flamingo.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�e�(;a
("x	G!N�$�.�d�Tb�","wp-includes/ID3/module.audio-video.flv.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%d��D����Azi�3",":�R`>:�����,?hdC ��kft!��2�","","0","?"),
("x9@^6��ߑ��o��","wp-includes/images/w-logo-blue.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[N�W��_p�w�0","ޣ^Q�t�3�H�unU❻��~�\'�T2","","0","?"),
("x<1�$2�����8�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-radio-buttonset.php","0","~!I(�]�R��0���","~!I(�]�R��0���","lp�<y��y��;Z^*$�)�~.����6�","","0","?"),
("xIH�.�9�Y��BO","wp-admin/css/colors/coffee/colors.scss","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","9~8 �z#C0�^%a�","\0{�Z�r~��d0|B��|]ׄ��j��܌�I�x>","","0","?"),
("xT������!���","wp-content/themes/flatsome/woocommerce/global/quantity-input.php","0","k�&k�b�Lq�{B��8","k�&k�b�Lq�{B��8","����x�c��EnGLm2�*2a����]�U4�C7","","0","?"),
("xV�M��>�n�{O�ǟ","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-blacklist.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�[F�Yϩ?�h,��-Z7","�c��#�͇]���\0WmeN�z�B��p=�:\\���","","0","?"),
("xWW��ؐtf-h��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/simple-left-light.svg","0","��ȁ
("x^:�@߫�fP�O�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/ScopeKeywordSpacingSniff.php","0","��:-������VJE","��:-������VJE","��w/����
("xe0�\\�ǁ�0�]���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/ClassDefinitionClosingBraceSpaceUnitTest.php","0","6w&�|Ead�㟋","6w&�|Ead�㟋","�x�}�#\n���?�r�ӕ����(r���3�[�A","","0","?"),
("xu��i�ۻ���>G+","wp-content/themes/flatsome/assets/img/payment-icons/icon-unionpay.svg.php","0","�v\0�_���{�q�I|/�","�v\0�_���{�q�I|/�","g:5]�n}�r�1��b���1*<��]�b=�","","0","?"),
("xy�!���q�)�.ˉ\"","wp-content/plugins/wordfence/images/sort_desc_disabled.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�m����͟��r�� 9",";	�_�Y���t�7K��s��mC��
("x�h,�w��Fn/�ъ�","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-vendor-shop.php","0","3�n{K�?1fc��2��","3�n{K�?1fc��2��","H�4Ĭ�������K��F�Ҍ�+�S�)���","","0","?"),
("x�^m�]̲�/��L4vU","wp-admin/includes/revision.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���*�B�u������Z","v�{@ۉsMӒ!9���
INSERT INTO bz_wffilemods VALUES
("x�V*�QT͑�9U4��B","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/portfolio.svg","0","��$�igz��7��ͳ>","��$�igz��7��ͳ>",":����毈��ar�FHKb�L�������|�","","0","?"),
("x�Z�����*�","wp-content/plugins/woosidebars/assets/images/success-off.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\n�J(����FB.�-","�s�J����b4(���`5N���Ls��","","0","?"),
("x�`��(PYh��EU��","wp-content/themes/flatsome/template-parts/posts/content-search.php","0","���l\nx{�_Mi�E2�","���l\nx{�_Mi�E2�","�������ˈ���8n��7/�W�W 8s���s","","0","?"),
("xߜ5��L��� ��9F","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/PHP/GetRequestDataUnitTest.php","0","���/�]]O<8�F","���/�]]O<8�F","!��JEU������1X���\'��[��0H��","","0","?"),
("x�(�H�%��Ή9i","wp-content/themes/flatsome/inc/admin/envato_setup/importer/wordpress-importer.php","0","�+H�\"�5�;e�,�&","�+H�\"�5�;e�,�&","�a�D��O�L$�F�J# 
("x덂��@}Y��i�+","wp-includes/js/tinymce/plugins/tabfocus/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�&vi9Į�cv��","l����X�Hd��:����&�hHPa�5��K","","0","?"),
("x�\"I��D~�SP�~","wp-content/themes/flatsome/inc/admin/advanced/functions/functions.php","0","��ُ\0��	���B~","��ُ\0��	���B~","��B�����șo�$\'�A�d��L���xR�U","","0","?"),
("y���1��-�/fIנ","wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","#��%y]��-bd��","�aSH�o��y��(e�	�0��J:��|f��","","0","?"),
("y��K�I}�w����","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Variables/VariableRestrictionsSniff.php","0","�>}S�p�Z�O�& �","�>}S�p�Z�O�& �","�0�\"�P&q{��1K�Z%���\'KZ,t�<","","0","?"),
("yA��0���Xz(��\'\\","wp-admin/js/widgets/media-gallery-widget.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","?����ܡR�8G���","ۅP�{,a��\\�	�J�U��(�#B$����","","0","?"),
("yA�p\"�}S�K7���E�","wp-content/themes/flatsome/inc/woocommerce/structure-wc-product-page-header.php","0","=[�Z����(\\_�m!)","=[�Z����(\\_�m!)","�y�G�
("ykڜ�r=�j��I��~","wp-content/plugins/wp-rocket/inc/functions/minify.php","0","E	(ɽ���K;ϧ�","E	(ɽ���K;ϧ�","�w܉
("y��\n�,\nC�|[i","wp-includes/customize/class-wp-customize-selective-refresh.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�)l��CF\'\n��,f�","Tc�1h��UN�Zu���/Zǻ��J��Ǩ$","","0","?"),
("y����A�9E\0�$/h","wp-content/themes/flatsome/woocommerce/loop/filter-button.php","0","��M�	/�|l��:��+","��M�	/�|l��:��+","g��I����%��Л���%�}�h[ٓ���","","0","?"),
("y���E�a��:�[\0","wp-includes/class.wp-dependencies.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�{j����$����3/\"","��O��.q��L9z�y�2A�\'`�T��Uoy^�","","0","?"),
("y���G�\\`����MR�","wp-admin/network/site-new.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���gC��!i6n�Y�3?","ǉn p�ӡ@\0r�ed֒��cJl�,�Q��K","","0","?"),
("zɐ���@�/�/@�","wp-content/plugins/wordfence/views/waf/options-group-advanced-firewall.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�I�N��~��d�F�e�","lBo�S����)ޥ9��o��!ǻm��#$","","0","?"),
("z����r��S�","wp-content/themes/flatsome/inc/extensions/flatsome-wc-quick-view/flatsome-quick-view.php","0","&=�m�a�ˌ��}H�","&=�m�a�ˌ��}H�","lVL��ͦ$��o\n�;o�e���G�2���","","0","?"),
("z.[��D8�R�","wp-includes/js/codemirror/jsonlint.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","I)fy��kT�+��<՟","�$D;;����0���F�~p��GғF�ˁ��","","0","?"),
("z;j2WD�6��[�V","wp-admin/js/accordion.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�?�=L�/�%NZ�\\�\n","�d�LVq��qa-��P�&uͧ�l:0�M","","0","?"),
("zI	zs�#ܞם1���","wp-content/plugins/woosidebars/index.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�t��:s\nY.�2�9N","�� ��o���M�J#�A|�ߎ�(��;6R\n�","","0","?"),
("zo��ܲ�~��b","wp-content/plugins/wordfence/lib/wfAdminNoticeQueue.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���K
("z��k�{���a�`+��","wp-content/themes/flatsome/inc/builder/shortcodes/values/image-hover.php","0","*p�\"Ѣ�E��)�","*p�\"Ѣ�E��)�","5\\\0��r�yIs�O\'�������\nU(f","","0","?"),
("z���we�r�u�a�\"","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/SyntaxSniff.php","0","TY�t�!
("z�5�*ADZCk��j��","wp-content/plugins/wordfence/images/icons/magnifier.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���uO�{:qcV��\'","� at��v��dQ��0(�Ij�Ɩ�O��$e(*","","0","?"),
("z����8 L�{���q","wp-content/plugins/wordfence/lib/menu_scanner.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\0k���jBxQ߻�","  ]Z^�ȅ�����oi�Ѝ�������","","0","?"),
("z��Q<��\'��U~�R\\","wp-includes/css/wp-embed-template.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J�VXtIOSG���","5���[N9U�\'6��o��AKC��؆73�(3","","0","?"),
("z����JX�w{!
("z��Xܼ����*�l","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Functions/MultiLineFunctionDeclarationUnitTest.php","0","��1�o�Y~����N�","��1�o�Y~����N�","��S���6��̰�X\0�ĳ�ce	`��R7Ū��","","0","?"),
("z�ZUU���`��ؕDD�","wp-content/themes/flatsome/page-featured-items-4col.php","0","�_���:Li�M�\'��","�_���:Li�M�\'��",",#�2��~�E��M�E
("{\n���R�o��R=\'g�","wp-admin/js/widgets/custom-html-widgets.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���#G��d�rD���	","�mu�����4&��i�?w�K-���K&O�","","0","?"),
("{N���2�Q�u��=	�","wp-admin/network/theme-editor.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","^)���ŭw���qB","4(Vt\n�ڢn�8D[�q��lp\"������<���","","0","?"),
("{Z��=��&pm|:�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Debug/ClosureLinterSniff.php","0","��0�<�8
("{&Rv9�0\'@��@u	�o","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/products-list.svg","0","ُa��� ]�$�g�b","ُa��� ]�$�g�b","h����aX�>N��Xy$��E�̚<�o��G�","","0","?"),
("{8MHE�W!��Vz�)","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/he.js","0","<\nz6�����j��&","<\nz6�����j��&","��m*�Md4�Q\\ȅdC8h��g��{_ؖ��[�","","0","?"),
("{W�y�e拐��`�O\0","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Classes/LowercaseClassKeywordsUnitTest.php","0","(��B�����k�$X\'","(��B�����k�$X\'","��Оa�Փ�ҡv �nN�A�*�YF�XH90i","","0","?"),
("{[�/����ڑ���","wp-content/plugins/wordfence/views/dashboard/option-howgetips.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Ϥ�SZ2=��ǌ�^","�\0��Ԋ�w��)��6�Zp�-�lP-�N�D�","","0","?"),
("{t�E~��P�A�1��","wp-admin/js/tags.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Pd�\0x��+��","�~0���d��bw�U[pON��h�q��5�y��","","0","?"),
("{y\"�ҵ��ݩ�{���","wp-admin/includes/class-walker-category-checklist.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������@����@�1.","�=��i�i�a��Ȼ�|�e�}��J�","","0","?"),
("{�)�4e4p:�fW�","wp-includes/js/jquery/jquery.query.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";�Xz�ǰ����wC","�u�g^���+��i��m���G
("{�{��u���v$$��","wp-content/themes/flatsome/inc/admin/options/blog/options-blog-global.php","0","����;�sOy���7��","����;�sOy���7��","`����Ur���t������z�(UBmV�=o��","","0","?"),
("{�U������b]\0R��","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/cs.js","0","���|���ĉ��","���|���ĉ��","��JJȆ��8��:������酝�!_M�","","0","?"),
("{���ODz��P�V�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/image_box.svg","0","���^%����","���^%����","�����\\viL�j��ZJ���}ۤ�䲺u/.\07","","0","?"),
("{�RC���.*\"�Q","wp-includes/feed.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E�@�������Z~�","d��%ia��^��宩(�2tq6���@��B�","","0","?"),
("{�
("{���?����
("|j��x7�(Q}�0�\'�","wp-admin/css/list-tables.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�PmM�O�L/ԗ(O�","�
("|/ڒ�\0[*4��x��","wp-includes/js/admin-bar.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�z���A擒�ZG�=�","5( o��K�E�\n�{E{�C�����<���J��","","0","?"),
("|@䩪�,Ef�\n�-j%v","wp-content/themes/flatsome/woocommerce/myaccount/dashboard-links.php","0","�@�+%r&)�sΪI�","�@�+%r&)�sΪI�","E��C�L}>[\nK��QQ������ɠ� s8�","","0","?"),
("|N!�;x�N&�g��m�","wp-admin/js/widgets/media-image-widget.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�*��hݿ��w��@x<","����=���8t���M�.�2���G�(@B��","","0","?"),
("|�� �4�x�\\��M�n","wp-admin/js/code-editor.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",":U�\n0�V�m�|�pX","��c��+_%TL�^��a�6�D2ܵ\\�}��","","0","?"),
("|��T]��:Y$=\'h�","wp-content/plugins/wordfence/views/scanner/issue-wfUpgrade.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���DOۏ~�*s�/�","��c�^\0��]*ζ�ז��\\�T1msd#� �^U�","","0","?"),
("|��Y�>���	�Ɔ�","wp-admin/link-add.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","������!q�!T	ʢ�","_l��&q�d*��^���w�	V�*f�-�_z�L�","","0","?"),
("}j�=R��S�ݡѵ��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-dimension.php","0","8�ݐ*D}M5uX�E�","8�ݐ*D}M5uX�E�","��τ��U��-��o\0��hQ���H�wf(�\"�fp","","0","?"),
("}ĉ=�t�����","wp-includes/images/toggle-arrow-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","F���\\����CDr�","-��N������7~@�}�_�=���V�_@A�","","0","?"),
("}~p��]3�b�~kñ","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/EndFileNewlineUnitTest.php","0","u~������D\':�","u~������D\':�","�KzE.t�xMOIJY�u�r2�+�5N�oA�A�","","0","?"),
("}C�8�7Ez�1�x��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/ControlStructures/ForEachLoopDeclarationSniff.php","0",";}cF7i�l[<��",";}cF7i�l[<��","�9<�4�U�����+���6��e��^dq\'}`","","0","?"),
("}DD5����uc�0�<�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/advanced-custom-fields.php","0","@0�`��b &���:","@0�`��b &���:","��
("}K��hx�9P6��P�","wp-content/themes/flatsome/inc/builder/shortcodes/ux_banner_grid.php","0","���SJ�:kg��","���SJ�:kg��","�θ+���lk�]�.w��N17��mhz+D��g3�","","0","?"),
("}\\�5�
("}`��g\"P�2��V��","wp-includes/images/spinner-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\q��9)hdxR���]l","Z�\\�J��)���q1C����睤�9��~&{","","0","?"),
("}q0���w��Ei䃂�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Classes/ClassFileNameUnitTest.php","0","I=�(X��]0��
("}v}c�:���ͺ�m�","wp-content/themes/flatsome/inc/builder/core/server/helpers/states.php","0","8�H<�_��;	Èǅu","8�H<�_��;	Èǅu","Y�VlE�h��-�����0�ٽL6�mR��A~<","","0","?"),
("}v�ڤ�iZݍ-8އ
("}��ήxyE�Wʑ��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/HeredocSniff.php","0","�Z���_Z ���@��","�Z���_Z ���@��","z	`���<lr��}�.��^���a�0���Q","","0","?"),
("}�����(ݨ�^�پ�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/Classes/PropertyDeclarationUnitTest.php","0","ޛZ��������)�","ޛZ��������)�","�j�[�ad%�n�#޺�^�!t�j����;","","0","?"),
("}�#>ӥY�֭]�P[!","wp-content/themes/flatsome/page-transparent-header-light.php","0","�%3�+���iQ���դ","�%3�+���iQ���դ","k���71D�zJ��&Ң���GN�-o_�H�OaE�","","0","?"),
("}�h~�\"�Ѡ�㨨p�L","wp-content/themes/flatsome/woocommerce/single-product/headers/header-product-featured-center.php","0","�\"�9D�@�m>�Ay�","�\"�9D�@�m>�Ay�","�@Vc��}�yxZZ�\0���Ds��=�I�x}�w�","","0","?"),
("}����Y��a�f�-","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/VIP/PluginMenuSlugSniff.php","0","gBr̒�̶�yE%�	","gBr̒�̶�yE%�	","pGIs~XAA2��\'1j���B�ܵ\nE�i�!I�","","0","?"),
("}�1-�`�-�����&","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR1/Tests/Classes/ClassDeclarationUnitTest.php","0","��o��[�Ѓ*	��","��o��[�Ѓ*	��","y�~^!�8�$�il��	��\"=�b����E3\n�","","0","?"),
("}�7 ޘ�DHD�Pl","wp-includes/SimplePie/Registry.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ȣ����1v9�d\0�ٸ","�٘���Ǎ+���+�N���T�bR���s��","","0","?"),
("}Ů)���4�t�޸ q","wp-content/themes/flatsome/inc/builder/shortcodes/tab.php","0","�Z1l�<�����w","�Z1l�<�����w","A%&������\\��q_��#X�X�aH6<","","0","?"),
("}�t��\0gj��x��=33","wp-content/themes/flatsome/template-parts/portfolio/archive-portfolio-title-featured.php","0","y��*=x	W0ט�@M�","y��*=x	W0ט�@M�","62�H����R�hg�^���Ȑ9d��F��K�","","0","?"),
("}�ll��\0�Z�Q����","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/simple-center.svg","0","��H�#_��\n㡵����","��H�#_��\n㡵����","Y\nR~t5d�5v8!9w��)��{����W��","","0","?"),
("}�Ȑ�\\L��`���i)","wp-includes/ID3/license.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5ي����hQ3fQ��k�","?\ng�=�2�.�U�[zi����K�����","","0","?"),
("}���{RҢ����\"","wp-includes/default-constants.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","a�?��xePs����~","6ϫ��{fb���Ɩ�=���@�QM��","","0","?"),
("~�E\\�eo׼��<23","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Strings/UnnecessaryStringConcatUnitTest.php","0","\'�m��{�\"����J�","\'�m��{�\"����J�","Ǻ��N�~ܿ�p�돝��R�[�gp�\\l�_��","","0","?"),
("~�}�	�p�pUl��`","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/EmbeddedPhpUnitTest.php","0","\'3�����G$o���","\'3�����G$o���","���4���}�af�j�}��L{��L�߼��͵","","0","?"),
("~Ⱦ/�m�ր�!��","wp-content/plugins/wordfence/views/dashboard/options-group-dashboard.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�&�m:7��v��=��","��\n�����q�Y��ۡ>h����_��P��","","0","?"),
("~�Q��zŕXjTm��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/age-verify.php","0","�*���̀�X+�\\��k","�*���̀�X+�\\��k","���8���Z�83ǂ1�ؐ]��b�	ؐ��x�8","","0","?"),
("~?�J�I�b*׺�e�C","wp-admin/images/resize.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","?�D�$�
("~A�H�g����KT��","wp-includes/Requests/Utility/CaseInsensitiveDictionary.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��:��R�K�ro�H2z","9yԆ&/AX�H�i{b����7f���rw���=m","","0","?"),
("~F��㫎>dy��j�","wp-includes/css/jquery-ui-dialog-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","΅�[lL�0ao��<1","Q��T��kf\\_��]�L�t��z,����r��","","0","?"),
("~P�6%�� �쩭�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/WhiteSpace/ObjectOperatorIndentUnitTest.php","0","��+��t�Ē|=b8","��+��t�Ē|=b8","\n��Ik�1��8y�d<v�m����*7��","","0","?"),
("~V��Xa]�7p�|R","wp-includes/class-wp-post-type.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��.�$W���6ef��","�>�2�Ç�Ls�g�U�x�e��Mo�C�W�e\"[��","","0","?"),
("~i�I�;ݭ]�A��S","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/cacert.pem","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","8�w��)�n.Z�C{v28","c�\"3��
("~lL�����
("~w鳣l{��HOܥ\\","wp-content/themes/flatsome/header.php","0","i�G�<����������","i�G�<����������","�8��Anc�ÉA��;{��[��~ڀH�n�","","0","?"),
("~}�{ ��>D�}�<","wp-admin/css/code-editor.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","rå�9�3�v;ݏ��",";�d�i�vE�)����(T7>����$�8n���;","","0","?"),
("~���lL�R�L]dK!i�","wp-content/themes/flatsome/inc/builder/shortcodes/section.php","0","ְ��6g[\n��� �","ְ��6g[\n��� �","S�Xipn04tU�aJPwEP5�����Od�6҉7","","0","?"),
("~��ReOX�f2��`�","wp-includes/class-wp-post.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","/0]a1JՇn��\\��","wS߉R���ОH�V}m���m\'���w�� 2��","","0","?"),
("~����	0��`y�[","wp-content/themes/flatsome/inc/admin/customizer/img/badge-outline.svg","0","جo+Ǧmr	��q���","جo+Ǧmr	��q���","�:Z/�J.����e�z�����|�!�ɿ�\"","","0","?"),
("~�;X\';���̻py","wp-content/themes/flatsome/inc/admin/customizer/img/account-icon-plain.svg","0","�g�+U�����%�","�g�+U�����%�","8�0{��
("~ť�s\0�1y�$�L}h","wp-config-sample.php","0","�I��?Ie� V���","�I��?Ie� V���","����j�b�CJ7�����/z���,F>�","","0","?"),
("~�Ӹbc��$�@$��*","wp-content/plugins/wordfence/vendor/composer/autoload_real.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+>r*������mI","E��\0�.�����¿¯�1F�(Df�u�v��˔","","0","?"),
("~�\0�P�0�^.[��1�","wp-content/themes/flatsome/inc/admin/options/styles/options-colors.php","0","����	c�͓�qn�","����	c�͓�qn�","9��ej1��1���������)ػ�+N^\\�91","","0","?"),
("MyL��)�#D�-w��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-kirki-generic.php","0","<����9�r�sh�̼","<����9�r�sh�̼","�H�>�ԏ���k�ȑ��EK��*�M2T��e","","0","?"),
("(�b���c\'�����","wp-content/themes/flatsome/inc/builder/shortcodes/price_table.php","0","��>�~`��<e��`","��>�~`��<e��`","Y�U�!\\�.���\"��~Z城���m}}h�","","0","?"),
("@��4dֽ&Kx� K&","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/DisallowBooleanStatementSniff.php","0","��d9��l\0�G6:m�","��d9��l\0�G6:m�",".�X�JH��|[��8�S���ug��)z̄��","","0","?"),
("ch%�neVM_i��{�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Commenting/FileCommentSniff.php","0","�6�w�s�����|�4�","�6�w�s�����|�4�","��<�����(ȅ���xZ��w\0P��f��n","","0","?");
INSERT INTO bz_wffilemods VALUES
("j&��^����b����","wp-includes/ms-settings.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","p7�zQ��GKX��ԣ","����X�	
("w�\'�Pe��F�+��V\0","wp-includes/Requests/Proxy/HTTP.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���/2��������)","J�6d��A��l{��Й\0������J����h","","0","?"),
("��%G]f�@�%�Z��","wp-content/plugins/wordfence/views/common/section-subtitle.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�K�c��D��Ã��۬","Z�J��wsh5�M������Eu/jg�[���-��","","0","?"),
("�СqD֚?�i�X","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�OoB�74 �wV�","�	�\\��t��qk���g��h�-����a&�","","0","?"),
("�K�Q�}U&;&���Q","wp-includes/meta.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","^}՗i>\"v��l�R��","���4���ˏǔ�#n}�	Y��`N��-h��P�","","0","?"),
("�tr�εF_� ���","wp-includes/js/wp-emoji-loader.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","g\"_\"�v���j\'�","��Lf�>��Om?�!�E$W<�F\"vMW)�/���","","0","?"),
("���l�\n8vRA(�","wp-content/plugins/wordfence/css/jquery-ui.theme.min.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","b�K�0�b��xљ]","4�����\n�c�E2=V�{�+�\\goЅ�O��","","0","?"),
("�9z��~J�����","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/selectWoo.full.js","0","�$�}4���$Ȁ?1�v","�$�}4���$Ȁ?1�v","���2�.TX�P��~�\"A���LS�M/-","","0","?"),
("�Gԟ�����Cs����","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/wp-offload-s3-assets.php","0","��
("�LcN-Q�L4]�$E�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenClosureUseVariableNamesSniff.php","0","H� �yx#�eRѫ\\\0�","H� �yx#�eRѫ\\\0�","q\'m���hͧ�
("�LqNq1Q���ˆ��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/FunctionCommentThrowTagSniff.php","0","��i�Av�d���+,�","��i�Av�d���+,�","�g�f�\0a�O�r�C��+�S��W.�#�MG�","","0","?"),
("�S�vEGzP��?Q\0","wp-content/themes/flatsome/inc/admin/kirki/kirki.php","0","�ʀB�r�cP���)N","�ʀB�r�cP���)N","���5��uo#ſ�+��E!�ih�+����u","","0","?"),
("�at���66��qVy<","wp-content/themes/flatsome/assets/img/payment-icons/icon-afterpay.svg.php","0","8�U&�����}Mq<NV=","8�U&�����}Mq<NV=","���#n��+�����nQh�A����Fѩ�R","","0","?"),
("�a��nFh #ۈ���","wp-content/plugins/contact-form-7/modules/acceptance.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~TTKKY��Tfl����","�i}�\0�?\\���{��a��J*�
("�w��?a=��7�w4","wp-content/themes/flatsome/assets/img/payment-icons/icon-verisign.svg.php","0","�g�n96�X���","�g�n96�X���","V`З��!g��N�o��ӕ6����b�:�t\'�*","","0","?"),
("���Hl���I�dG���","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/User/LoadBalancers/Notifiers.php","0","Ю�8s����j:���","Ю�8s����j:���","��VR#�b��?�s!�U��8ثw#QS<a�(�(","","0","?"),
("��ah�#��8�c���","wp-includes/js/tinymce/themes/inlite/theme.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�-�n�-��#z�u�$","E4&/=NFf�X��#+��/��K6徑R#b�\n�","","0","?"),
("��m��?DS��r��4","wp-content/themes/flatsome/woocommerce/single-product/layouts/product.php","0","WA�{�g��Γ��p�","WA�{�g��Γ��p�","��ޖ�a\\��D[\'����\n��u����8��8","","0","?"),
("���SP�;^ƭz��I","wp-content/plugins/wordfence/lib/conntest.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��q
("��_�4��q�^�_�","wp-content/plugins/wp-rocket/inc/admin/ui/modules/support.php","0","�h7��<*;A��䥕","�h7��<*;A��䥕","R�g0��]�le�\\��mhyKB
("��:wp	;�fSN�","wp-content/themes/flatsome/inc/builder/shortcodes/templates/col.html","0","��%�;ttF\'�d�x;?","��%�;ttF\'�d�x;?","gOK`]�,�z̐b4&��mk1s�ĝiB�}�M","","0","?"),
("��ں�u���M���[
("�ԥ�J{�\"7>�
("��Nx��ډ�8yH\\�","wp-admin/js/theme-plugin-editor.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�բ����#;�U�^�","Q�[6ĩ줳/.�R%�����e:�aC� �","","0","?"),
("��sSk�i�<4\'c�-6","wp-includes/js/wp-embed.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��O9�$�?��","����c	�zI@��k;��ܜ;q:d�>F���","","0","?"),
("��\'��z/��M��?<�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Operators/ComparisonOperatorUsageSniff.php","0","�=|4~}���Lo","�=|4~}���Lo","/�{ͣ#��0��Z�Yo�����	Zzڠ?�","","0","?"),
("����e��97�aJS","wp-includes/images/smilies/icon_smile.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��G)ö��u��\\\nM","��I+x�����#�i���T;W�͗�1�Ex߱","","0","?"),
("��XQ���d9r�ڼ��","wp-includes/customize/class-wp-customize-themes-section.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��[q��^߁�鰜�\\�","��b25�˄4�E9s�kHz$n��K��\'����","","0","?"),
("�a��D�`���N,9��","wp-content/plugins/wordfence/js/jquery.colorbox.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(O�0%6�9�e�3�j","{�L�#�
("�el�5�s��E�úQ�","wp-admin/js/media-upload.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","� N�=�u&M�T0�	�","�zr���w\'���0��5$����`��\'���D9��","","0","?"),
("�~�NNTWi�,�� �","wp-content/themes/flatsome/inc/admin/kirki/modules/postmessage/class-kirki-modules-postmessage.php","0","i6��!wҳъv`2r","i6��!wҳъv`2r","�E���\'i��g重��:�7��H�ۅǁ","","0","?"),
("��,CUU����9i-","wp-includes/css/wp-auth-check.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��؎�N�z�����","��a�a�_�蘰~Y�H	�W�c��/�gt","","0","?"),
("��i�!�[�8$\"�","wp-content/plugins/wordfence/vendor/maxmind-db/reader/LICENSE","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";��8e_�T��ƽW","ݬ�IS�P\"�a�� 7J�6�QSv���_��y�","","0","?"),
("���>��\n��j��V�v","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-explore.php","0","��WV�u���߻~b�","��WV�u���߻~b�","��o+�w�=��1<�{�V��aȂ:&uo","","0","?"),
("�ȉV?	��]�)A","wp-includes/js/media-views.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�?���ŀ�B��U��","��G菇V��%��/�ؚu�Yl�\"�\n_]?","","0","?"),
("���W����=�ԘHd�z","wp-includes/class-wp-site-query.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��K�y������ՠ�","�⸸cnf:��l�����Q��,�������n�","","0","?"),
("��X����-�4�J�_�3","wp-content/plugins/wordfence/lib/wordfenceHash.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��mWW5��.���w","D�@>���<�2���½V�,*�̙�@���O�gG","","0","?"),
("�����\'>�[��·�","wp-admin/js/user-profile.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~�J�	�HĴ��\n!","-����%$
("��ƶS������|G","wp-content/themes/flatsome/inc/admin/options/global/options-js.php","0","\0��`��>L�5;-","\0��`��>L�5;-","�[�T�n�Ejd�(�$�:!�h�Ν\0�s�><","","0","?"),
("��Nϒ!eD�(���rK","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/EndFileNoNewlineUnitTest.php","0","@YC��w��>�p��","@YC��w��>�p��","��77��!�VTU���*\\U�_����","","0","?"),
("���Pd������c�3","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��
("��s��nC@ϋ�<��`","wp-content/plugins/wordfence/css/jquery-ui.structure.min.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","#�/��h<��U���","�n�����i��뗅�N�vX�7�Y]�����D","","0","?"),
("�O�X��g]<f@�","wp-admin/css/farbtastic-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�S@��[�\\,�3|��!","�Sm�\'�;d`��e�M�0i=�?>����?{","","0","?"),
("�)\n�{��%�g�i��\\","wp-content/themes/flatsome/inc/admin/customizer/img/account-icon-fill.svg","0","���-�,�M����","���-�,�M����","ߋ��T����a�F���3����/ɏ\\�HR\n�","","0","?"),
("�3��Ƈe�(ú9�","wp-includes/js/jquery/suggest.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s\\+A)���n.;��","I<�{\04�`��<!j��Z8돲��D�HW��","","0","?"),
("��\\�(��wB��I�","wp-admin/network/update.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�������GTw��","C�ـQ}N�(z{|/��B��ss������%�L","","0","?"),
("�(tTlDά7&��MP.�","wp-includes/js/tinymce/tiny_mce_popup.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","B7�I1�0�����d�","���\'З��/!�a!�~�)��1D��","","0","?"),
("�=��>���(>��\"��","wp-content/themes/flatsome/inc/builder/shortcodes/values/slider-styles.php","0","_�i�8VI�˘Ta�D","_�i�8VI�˘Ta�D","�Q�j��~Yܠ���#7���:����n\"���^","","0","?"),
("�@�F �Ӡ(���e*[","wp-admin/js/theme-plugin-editor.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","R
("�B��ه�v<Sv稳","wp-includes/SimplePie/Parse/Date.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���
("�F� �GJ��B��s7�","wp-includes/js/media-models.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�1­փ�F�3�","R�{b0�w�����D��TBD���-��_S��(K�6","","0","?"),
("�`�VZ�G5�.
("�j�7��&E�neH�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/title.svg","0","c�q�Jߢ���e�\0T","c�q�Jߢ���e�\0T","�pI�_e�Bd/�i�y3��������%���","","0","?"),
("�w��5�����)���","wp-includes/css/wp-embed-template-ie.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�)6��	؞мq ���","�o��+8]�Su��H.�C�g��R9�&�+���\\W�","","0","?"),
("��h!\"�U��wk,8","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/mailchimp.php","0","���\\��N�2/�3P�","���\\��N�2/�3P�","�F�P�u\\+[3rƫ�?�3b܇߶��d�Mż","","0","?"),
("���OnO쿸�~C#","wp-content/themes/flatsome/inc/builder/shortcodes/scroll_to.php","0","4�H�;�6��?;:n�","4�H�;�6��?;:n�","���P�Ӛ(��Guo��ӫ��;\'3Z�[V|","","0","?"),
("��\0���+OW+�","index.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�%0;��s��Dm\\�:[","׀]�H���o�&��Y\0Yɱ	�������=K","","0","?"),
("�����A���1�;�","wp-includes/rss.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�m��[�\0�lJ���;","���^��]�\"��ˌ|a�>|�Ī�.��pNX","","0","?"),
("����SfJ�\nl��s�R","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Classes/DuplicatePropertyUnitTest.php","0","�����r��[˞��H","�����r��[˞��H","{I�Ж�/�����\'�Ȓ@�;ʡ\n��V}逍","","0","?"),
("�ͦ0d���W�*Q","wp-content/themes/flatsome/inc/admin/panel/panel.php","0","�f���r�Y�OG�","�f���r�Y�OG�",",��{�Ax�r���:�����f��K8��K��l+�","","0","?"),
("��0��zI��N�;�","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-settings-repeater-setting.php","0","=�Q^�颺�X\0M��","=�Q^�颺�X\0M��","cW��!5W�jr�݁��/��v6�W��`����","","0","?"),
("����v�A\nGr�3C9`","wp-admin/includes/class-wp-internal-pointers.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��%�N10���[N�","0��C=���Ttǟ[�[雷7I�\\w��&�","","0","?"),
("��;�Za��ß	�X��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/CodeAnalysis/UnnecessaryFinalModifierUnitTest.php","0","揬J0�`C�O�)SQt","揬J0�`C�O�)SQt","x4KڍX��Rό����^�B顸�����","","0","?"),
("�Ebl8�y���}����","wp-includes/js/tinymce/plugins/link/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��9i��Y?\"O�����","X�7���{3�b<���m~8:u��ŭlM��|","","0","?"),
("�JZa�O�I�8�ۮ��","wp-content/themes/flatsome/template-parts/posts/loop/partials/entry-header-bottom.php","0","z_Z���z�4����H","z_Z���z�4����H"," #1�i�G��W�K�9�\"���O�٧2)��","","0","?"),
("�V�3A�E�P\n�M�","wp-content/themes/flatsome/inc/admin/options/header/img/header-wide-nav.svg","0","�A��MU�������/�","�A��MU�������/�","���.h�l��!⥍�lWR�.��鶌�e","","0","?"),
("�j����Z�o���z���","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Organizations.php","0","\n�C?1:d�@7�@�`�","\n�C?1:d�@7�@�`�","1�t;2����k{�h�5Z�{gp��P�riĠ��","","0","?"),
("�m>�\0��0X&�^�Q","wp-content/plugins/wordfence/vendor/maxmind/web-service-common/src/WebService/Http/CurlRequest.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��pKz��`�)9_@�","��aғYe�q�7YTc�Ȋi$�W�ت�/�!�,","","0","?"),
("��?���z6���aDz","wp-content/plugins/wordfence/images/loading.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","K:�����m𙗣P�","j*�e����doX�~�7��&���N�9�|L���","","0","?"),
("����rm���$�W��","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-radio-image.php","0","�A�0(]�ʝ���w;�d","�A�0(]�ʝ���w;�d","����`(��H\'S�3�a������@����","","0","?"),
("�и+:3�XnN�tex�X","wp-content/plugins/wordfence/fonts/roboto-KFOlCnqEu92Fr1MmSU5fChc-AMP6lbBP.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����{W�7h>���","�	2m��w��3�)zWg��v{Af��Hu`Co","","0","?"),
("���ʆ��n�D㮖�(","wp-admin/css/install.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���l�=��Z|YaH�","�yA����\06��#M\0�\'�Y��a]sݏl","","0","?"),
("��j����5��f�j�","wp-content/plugins/wordfence/views/tools/options-group-live-traffic.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�5_+������EG","��s}RB|K��zI����[�Y�)r���","","0","?"),
("��P���}\\��s]O1k�","wp-content/themes/flatsome/template-parts/portfolio/portfolio-title-featured.php","0","F;�|��a�Ѝ8-.L�","F;�|��a�Ѝ8-.L�","�Mhm�I\\������Z�қ�y�]t��\n��","","0","?"),
("��f�N�d�����L��","wp-content/plugins/wordfence/lib/cronview.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�e�(���t@n�r��","��Z�4,�hz=>M�}�G/[�0�l�\"�iK","","0","?"),
("���s�y��s_\0r�F#","wp-content/themes/flatsome/inc/builder/core/server/src/Transformers/StringToArrayTest.php","0",".ԟ�>�y:�i�6���\n",".ԟ�>�y:�i�6���\n","�����Ф^�)��,�5�-,�$l`�Z�WC;","","0","?"),
("��WiWy��g�U~","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/DisallowComparisonAssignmentSniff.php","0","C���\n�3��Gr����","C���\n�3��Gr����","߃�b�b.s��r
("�\"�\\�N��$�*w-�b","wp-content/themes/flatsome/inc/shortcodes/ux_image.php","0","n.7YEU�o1x<$_��D","n.7YEU�o1x<$_��D","��q�<2�� �6H�x�_a+�<apN ��c�G","","0","?"),
("�(®�;����{N�e","wp-content/themes/flatsome/inc/shortcodes/lightbox.php","0","}R�\\($ #\0}[�","}R�\\($ #\0}[�","z������O������uA�V\\��I��إ","","0","?"),
("�)ũ��2[�	�4�_a","wp-includes/class-walker-category-dropdown.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���p&��g�}U% �(
("�:+[��g��CZ���","wp-includes/template-loader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�EOE�ty��U��","yV*T*g���/��ύ`�i�����H��\\�
("�a�>e��\"��C�A","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/AlternativeFunctionsSniff.php","0","�\\��(L�U=�\\-�","�\\��(L�U=�\\-�","��;���M���0���B��ƺ���5��m,�","","0","?"),
("���P���M�˝�=U","wp-content/plugins/wordfence/views/dashboard/status-payment-expiring.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","raX\'��z\05+�\"�7","v�$�r�_s�y�Y����U{ؘ?��C","","0","?"),
("��9�h�a�1ws<;\no","wp-content/themes/flatsome/inc/admin/customizer/img/featured-posts-top.svg","0","�K�-ͳ���s�{","�K�-ͳ���s�{","�6�[�p��9*�^���pc���T�H��\'lr","","0","?"),
("��nv��Z�YV����","wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��&\"�a��ֶ�m��","��u�[��y�#�D|�؊^P��z-�e6�;Y","","0","?"),
("�Z��D��l�=�컫","wp-content/plugins/wordfence/views/waf/waf-install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","s���c\0|�1��J�R(","E�#W���_䦷2\0L>ռ\0\n���N#-LH|ӱ","","0","?"),
("�&�~�E��\0�X�K","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/ux_hotspot.svg","0","i0�f���ɒ�cne","i0�f���ɒ�cne","�危��\\<ż����J��\"��	���\"�/_F","","0","?"),
("��5���S�켆q","wp-content/themes/flatsome/inc/builder/shortcodes/values/show-hide.php","0","J��@ �L�خ �(j","J��@ �L�خ �(j","8�ڻ��s���,U\\>Xpѻ\nuP�!��mL5��","","0","?"),
("�.}~|�����A{s","wp-content/themes/flatsome/inc/admin/customizer/img/product-gallery-vertical.svg","0","�?�����r�P�4��","�?�����r�P�4��","�o��H��pv�L������~�wp�q�3��","","0","?"),
("�B%v6�I\"Jb��4ӡT","wp-admin/link-manager.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","?]���l�%�,���","�\'hm�7��2��2ұ�
("�C��L�/�\0�=�~�,","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Scope/MemberVarScopeUnitTest.php","0","��b�
("�aBL�P����0�\nA","wp-content/themes/flatsome/inc/builder/shortcodes/row.php","0","�s��;�	H��B�","�s��;�	H��B�","f\\�)��u�S&�����zl����yL6��","","0","?"),
("��>�A�B�7�Sz!�e","wp-admin/includes/export.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�K���qc*.\n��=�","?Aw&��_�\'{�2�f��{v�5����,��","","0","?"),
("���.³�D�`ʖ�<L","wp-content/themes/flatsome/assets/img/payment-icons/icon-paysafe.svg.php","0","NM�}^�K�,/],*;","NM�}^�K�,/],*;","������3b��k�Z��XW����0����׆�","","0","?"),
("���_��R`e`l��.c","wp-content/themes/flatsome/inc/builder/filters.php","0","�@�q\\�}����[�","�@�q\\�}����[�","�[�T�n�Ejd�(�$�:!�h�Ν\0�s�><","","0","?"),
("�ʌ��­uA�Pq�5]�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WhiteSpace/DisallowInlineTabsSniff.php","0","I,�1�>���J��","I,�1�>���J��","��C�A:���+�k5b���!<57d�R�i","","0","?"),
("��z�0,E�k�����","wp-content/themes/benh-vien/template-parts/posts/archive-2-col.php","0","�*]sm4bCY��k�C","�*]sm4bCY��k�C","2�҇g��_�R~�+�\'�N��Ƹ����E","","0","?"),
("��X������a͟�l","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/mobile/wp-appkit.php","0","BpA_����M�R���[q","BpA_����M�R���[q","�3k�M/��Yg�S�z�Be��|G������?","","0","?"),
("���T�양�:t[��","wp-includes/Requests/Exception/HTTP/410.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","q�O47ߺݥ/8X!��","��9�f/3MM;#GڪWO&�tS�O���Ƙ�","","0","?"),
("��Y,�ԕ����f�","wp-content/themes/flatsome/inc/builder/core/server/src/Application.php","0","�i�|�yC���H��e","�i�|�yC���H��e","\'��sf�$�~�����s2��M.\\J�\0H�g�","","0","?");
INSERT INTO bz_wffilemods VALUES
("�ϕ\"�)r���","wp-content/themes/flatsome/template-parts/posts/partials/entry-header.php","0","P�CM~b͚�g�}�=","P�CM~b͚�g�}�=","I�����,\nQ�b:���n��������+P","","0","?"),
("�)����Yh�.�;��š","wp-includes/Requests/Exception/HTTP/412.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","%��Iܷ��=�7��V�","S�A�4c\\D�56-��#��d*���ҽӾ�R���","","0","?"),
("�1�eU��MV��^��","wp-admin/includes/misc.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ksA<Շ��!�4�F�","�\"�F9ZM�\\�j�)Q����eUJ����9椹","","0","?"),
("�5�d�4�N��\"��d�","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-helper.php","0","F3nzHu0i�@UE��","F3nzHu0i�@UE��","
("�F_q���C�F!o4p��","wp-content/plugins/wordfence/views/scanner/scan-starter.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","E��� ��`b{{v
("�Y�������EvD�","wp-content/plugins/wp-rocket/inc/front/dns-prefetch.php","0","]	K�����݆.�c4�","]	K�����݆.�c4�","HT)\0��y[��j��\nd�J�y��������","","0","?"),
("��\0�>#����z(","wp-includes/bookmark.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��2����ߵ��I��;","%�$0d�74�\0u��R7�	7@��&]�:-�&��","","0","?"),
("��*b� ��\\@��T��","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/simple-custom-css.php","0","�`H9\n�a����m�dq","�`H9\n�a����m�dq","V��yB��|h��#g���$4�]}���\0�","","0","?"),
("���������}��","wp-admin/media-upload.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ʹi����\"�>","\'Z��VSSD��n��̽`�߰��u��=lg[","","0","?"),
("����$;K+x�M�%�","wp-content/plugins/wp-rocket/vendor/matthiasmullie/minify/src/Exceptions/FileImportException.php","0","KN#��_�>L��1�","KN#��_�>L��1�","�Lܧ+�:y�^J[ݫ����E�z��;�","","0","?"),
("����+(�����+�Z=","wp-content/themes/flatsome/inc/admin/customizer/img/badge-circle.svg","0","�k��q�a��Ct","�k��q�a��Ct","���JR�����+L:�\n0�<T�1�:��a�","","0","?"),
("��̚���M\'0p9\n","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenNamesSniff.php","0","��yt��\"�+t��hu˝","��yt��\"�+t��hu˝","[��GS��T6����e{&���=�G��^�p$�","","0","?"),
("�����;�Ӓ�\0k","wp-content/themes/flatsome/inc/admin/customizer/img/layout-right-full.svg","0",">�2�_��¶��ax)�",">�2�_��¶��ax)�","�]qbT[��Z����p-��N��`�*L7I�","","0","?"),
("���P�w���0�h�9","wp-includes/js/tinymce/plugins/fullscreen/plugin.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�q�Lp�Q��\'.�I","1����[�V����D���\"��5?3@��㾅�","","0","?"),
("�5�g~o�Cfӆx\'+","wp-content/themes/flatsome/woocommerce/content-product-flipbook.php","0","2�5�7��\'�r��iҐ","2�5�7��\'�r��iҐ"," C!*
("�>vȉU�B`����","wp-content/themes/flatsome/inc/builder/shortcodes/values/align-h.php","0","�7�D��dVbc;�Q=�","�7�D��dVbc;�Q=�","oR�3~sۂM�,Zb�E�H�ro�s��K@$��0\\","","0","?"),
("�?���H�����u3","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Functions/OpeningFunctionBraceKernighanRitchieUnitTest.php","0","��uU��+33��7�!�","��uU��+33��7�!�","qm1�g���k�/u��Q�W]X���N�$+���","","0","?"),
("�B y�w�+���|t��","wp-includes/class-wp-http-requests-response.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�K���]���c{�z","T���\0���5؛����C!0i�����:�i�","","0","?"),
("�J�&_#��3S�q���","wp-admin/images/spinner-2x.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\q��9)hdxR���]l","Z�\\�J��)���q1C����睤�9��~&{","","0","?"),
("�Sy���U��ȂC��/","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/PHP/AjaxNullComparisonSniff.php","0","3�����F$m�","3�����F$m�","R��q.9&�~�C�P;b�.�@��u�Ʒ","","0","?"),
("�V+@�0���p�ɏhi","wp-includes/rest-api/class-wp-rest-response.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\'���������R�1i","�o$G�����\\�����P^ז�CVR\0�i","","0","?"),
("�b~5�a���I@)*�","wp-includes/class-wp-site.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��[�D����Ŏ�N��","��ǻ�O~[ŗݞ��J<l%���k~�]t��","","0","?"),
("�c0�G8��������e","wp-content/plugins/wp-rocket/inc/3rd-party/3rd-party.php","0","\')wA
("�hhWB��uڟ�>t2","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Arrays/CommaAfterArrayItemSniff.php","0","y�#�dv����@Obl","y�#�dv����@Obl","3CҦ �/N�L�H�>i~�x ��=�ݓ�zA*","","0","?"),
("�}Wؤ&7%�n7�","wp-content/themes/flatsome/inc/builder/core/server/src/Ajax/AjaxManager.php","0","�� ��:�\\N\n��","�� ��:�\\N\n��","����[dmi���>���j���LOi�_#W��,�","","0","?"),
("��\\:��ڈ��)g,\\","wp-includes/images/smilies/icon_twisted.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","b���.�8|`�Q�LF","���t/
("��!��E��S7�x����","wp-content/wflogs/rules.php","0","
("������>2\\o�)���","wp-includes/Requests/Exception/HTTP/Unknown.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�dl᫁�2�A��\nW�","@����3�#ж/*t
("���3v�U�3�P�^O ","wp-admin/css/widgets-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","}B�rx�y��&��"," ��t��-BG.��Ёv6��/��{�D�6�","","0","?"),
("��L �U����f��u�<","wp-admin/images/icons32-vs.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",",�P*���{>v��Uf","�����?U��z��P\\��@�`�8g;
("��k{�I��z��
("���o�w���Ў�696I","wp-includes/random_compat/cast_to_int.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_vtZ��;�f�0�\\�","��T�x�{��\\7��R��Ag����[:��	c","","0","?"),
("�ج� �deL��Z>","wp-content/themes/flatsome/inc/builder/core/server/src/Elements/ElementOptionsTest.php","0","�J�Ȱ[�p�3�d","�J�Ȱ[�p�3�d","m���O�5���Q�)ꗑD�4�窋E����\0��","","0","?"),
("��!c�+��������","wp-content/themes/flatsome/inc/shortcodes/ux_sidebar.php","0","�\\��|�P�����U��","�\\��|�P�����U��","Z�i����	��(:l��r�H&)&�|]vħ��","","0","?"),
("���ķ����ҹhڀ","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/badge-bubble.svg","0","T�]�~�+IȞ~L8|1�","T�]�~�+IȞ~L8|1�","��5@5�u�P\0�؉c�.��+���|�+��x","","0","?"),
("���Iy-�\n�ń��","wp-includes/Requests/Exception/Transport/cURL.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�6T�g*�:	�x7��","�]����0֙8���p#�~��\\o�Ӂ=1��","","0","?"),
("�/?=\"781��5�ޕ[","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/image-top.svg","0","]%��`����-&p��i","]%��`����-&p��i","�\n�l���r���GU�ZM���l��Y|�]�Ў�","","0","?"),
("�:=�%�����M�۵","wp-includes/template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","#�\"d`ۏ��Ŀ1�","Ťs��f��\\����`��1��G!s0\'���","","0","?"),
("�EY#>�#�L�F�؊","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-dimensions.php","0","�݄BSɁ��BK��-�","�݄BSɁ��BK��-�","&��U.\\7�Q�c��KHhD���;���@�\'G","","0","?"),
("�I�{�?��r�]��7","wp-admin/images/resize-rtl.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ےc�ZY�6��","�̒��̑\0��Cb��Ć�<� ��QPz���S��","","0","?"),
("�q3��<+g�U�","wp-content/themes/flatsome/assets/libs/packery.pkgd.min.js","0","DӁ�=}%2؎~�","DӁ�=}%2؎~�","d��oN��w2���r��hmU3�����@G","","0","?"),
("����n�\n�\0܁-i","wp-content/plugins/wordfence/images/blocking.svg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'-H�f���<1","A5�Y9���\0��O�tq�ЖL\\�}�a��&�","","0","?"),
("����}�嫝፹m>","wp-content/themes/flatsome/inc/admin/options/styles/options-global.php","0","W���qxL��g2N��","W���qxL��g2N��","u�y��}�����QE��[�A�e��|	���j�9�w","","0","?"),
("��*[�I:���	%T�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/EndFileNoNewlineUnitTest.3.js","0","�����ё5�EA�߯��","�����ё5�EA�߯��","���8;б+=�9cڗ4gh\"�3ٺ�8&k�Q��","","0","?"),
("���z�{E��c2�g","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-outline-round.svg","0","W\"L&�o�oE��D�","W\"L&�o�oE��D�",")r��R��{��6b*ߤ�54z�:&�Ԟ����","","0","?"),
("�̩�[���#���ӓ]","wp-content/plugins/wp-rocket/inc/front/js/lazyload-10.3.5.min.js","0","�i\'-�%>\\�U5��*h","�i\'-�%>\\�U5��*h","q;ty���EPn���8̈́����4L`�龹@","","0","?"),
("���t�V��<��C��","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/Traits.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",";HoĴ`��׳m�%�","�(��l]�h��Юa	y�fh��0v\'u�vm�","","0","?"),
("��$�1H�s\0���Y�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Commenting/InlineCommentSniff.php","0","�UH\0��t�eU��c","�UH\0��t�eU��c","�$���z���^*�U�\\�\n+�04���s�.�3","","0","?"),
("�����!y��G��","wp-content/themes/flatsome/template-parts/footer/footer.php","0","�1~A:�j�B��,��","�1~A:�j�B��,��","x��U����Q@?��s�7��^UJcvQ�C>��","","0","?"),
("�G+A,^�v���z�\0","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/varnish-http-purge.php","0","��#z�p���C�A�UR�","��#z�p���C�A�UR�","Wq�_?�S*�l�N\"�v
("�.��x��Q}�t\np�","wp-includes/rest-api/endpoints/class-wp-rest-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","(�Y�.:�u�,-��C","�C�(��|2��`�I��K(�:�#�@u��","","0","?"),
("�7*���\"{��\n�K<","wp-admin/includes/ms-deprecated.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���՜7�ٖ�]��q�","V��N@\\�x���]��9���Q(�� �","","0","?"),
("�?�8������Z��N�","wp-includes/ID3/module.tag.lyrics3.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���S�V8��gU�:","�߆��
("�j��I���<꟟��iU","wp-includes/category-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���GL���2\"��","�\"�u�Dܭ�8hߞ��z��ݡ{������7E�","","0","?"),
("�p����A��?@�X��","wp-content/plugins/wp-rocket/inc/domain-mapping.php","0","iu�|d��`q]C2aI","iu�|d��`q]C2aI","M�A�OC�~]�}���F�����5�N�B[�","","0","?"),
("�zv��*U�5 H׼K","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Tokenizers/Tokenizer.php","0","��?�nd��F�5rZ�","��?�nd��F�5rZ�","���M^��a�|Q�4�����a�S�Gju̶��o","","0","?"),
("���&���}?�s`�","wp-includes/js/wp-sanitize.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","`����oЏ{���]�","z�jlj����x,Ώ�ƭ�L�cfmjD$υ","","0","?"),
("���Q��Ws�A7d\n","wp-admin/css/site-icon-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�`_?ބ=�|���+�d�","���M���S����>j/���\"K%qޣ��~","","0","?"),
("���?Ȝ���G��-�J","wp-content/themes/flatsome/inc/builder/shortcodes/values/row-layouts.php","0","i��W���_��#�7?�","i��W���_��#�7?�","q��������\'g��Y���C�;:p{y�Ğ�%�","","0","?"),
("��e�\\��1�tƋ�<	�","wp-content/plugins/wordfence/lib/wfUpdateCheck.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�v��kv)Ւ�i�j","��ío���n�U�ߨVU����Z�2��w7LB�","","0","?"),
("��ސͣu3����&�","wp-content/themes/flatsome/inc/admin/panel/sections/tab-guide.php","0","u���E����������","u���E����������","V���^N���s������z+̈́\\��A�ޱ�","","0","?"),
("��B]nȄ�8�7g��","wp-includes/images/smilies/icon_rolleyes.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Ȼ�_�Ҹ*>,�!j","q_�ݷ^��e}���	�Hu�D�襞\n�iY�Ff","","0","?"),
("��=����z���Ժw�","wp-content/plugins/wp-rocket/vendor/matthiasmullie/path-converter/src/NoConverter.php","0","S��.3|��F׆+��","S��.3|��F׆+��","����%\0��H��/�سSܫ|�OJQ�Qc","","0","?"),
("��Y|檵U���ky�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Tests/Methods/FunctionCallSignatureUnitTest.php","0","w��6���Yغ","w��6���Yغ","ev�;/2gʁ��u�Y.f7|\n�%��k��t�","","0","?"),
("��.�K^��e���H�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/nl.js","0","d9n��<C�柉f��","d9n��<C�柉f��","(�=����HJmrO�م���L�4�U#2ȝ��","","0","?"),
("���h�%T����4��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Tokenizers/PHP.php","0","5ɤ�iFb�0���&","5ɤ�iFb�0���&","��QK�w$�r:,V	Ur��wV��<��}��","","0","?"),
("�����;�\0�ʔ��","wp-content/themes/flatsome/inc/admin/options/blog/options-blog-layout.php","0","Ǚ�{�Z_A�@���","Ǚ�{�Z_A�@���","B����7.h��S<�\'�`��%x#�.�OL�","","0","?"),
("�
("�#p~=��\'�,D=d","wp-content/themes/flatsome/inc/integrations/wc-yith-wishlist/yith-wishlist.php","0","%����N���=��","%����N���=��","2S��Y�,��^��_r���Pw\"�t�wIBԬ��","","0","?"),
("�/��6��Z>��B�","wp-content/themes/flatsome/inc/integrations/wc-yith-wishlist/wishlist.js","0","h�2��پ�*݀�2","h�2��پ�*݀�2","�%I.U}@NE���yɇrw��IƬ��`","","0","?"),
("�Mj�A�M��O�\"If","wp-includes/SimplePie/Net/IPv6.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Fy!j�ـ�����","�i��*8���.y����P�B����Y�e���","","0","?"),
("�`NSr�a�6+\\���","wp-content/themes/flatsome/inc/admin/envato_setup/presets/layout-grid-style-2.php","0","��\0�)��rt���{k�","��\0�)��rt���{k�","�4=�k]��b��!�k�������?b","","0","?"),
("�dA��ΰP���^�J","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/woocommerce.php","0","l�Z��2���oF��8","l�Z��2���oF��8","�^\'\0S���Lqm$��3^&)D�izxo��{�","","0","?"),
("�k�3�dg��g B�e��","wp-content/themes/benh-vien/template-parts/posts/partials/entry-header-bottom.php","0","z_Z���z�4����H","z_Z���z�4����H"," #1�i�G��W�K�9�\"���O�٧2)��","","0","?"),
("�w��d�Ϣ��
("�~@��\"G$����\"��","wp-content/themes/flatsome/inc/builder/shortcodes/follow.php","0","9���y�b�4�6����","9���y�b�4�6����","�6���3A ��p�Q\n��>�p�Bgl.^","","0","?"),
("���$�^��E-�e","wp-content/cache/wp-rocket/benhvien.webdemo.com/index.html","0",";#��[=�4��y��x",";#��[=�4��y��x","e\nH%\\�
("�����jybD�/���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/CodeAnalysis/AssignmentInConditionSniff.php","0","�pU\\h\'+�_�|��","�pU\\h\'+�_�|��","��\nn���P�_����T�v����Dp�Ֆ��","","0","?"),
("����^4�}zza�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/i18n/wpml.php","0",",�����	3��Bߝ�w",",�����	3��Bߝ�w","�8\n�\'�>�]=#+�	<�WI��2�ܐ�D��","","0","?"),
("��}tv���D�c���","wp-content/plugins/wp-rocket/inc/admin/options.php","0","�k@�\0b��x��z�n","�k@�\0b��x��z�n","Ig�Pm�X1����h��d�h&�/���u�Q�","","0","?"),
("��$��xM1>�_8P\0","wp-includes/js/swfupload/swfupload.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��#����9��>&YRg","��ݙ���R�YY-�ҕ�&qW1(�K��","","0","?"),
("���<hB⾅��O(","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/autoload.php","0","J��4v%�Z,499\"̠","J��4v%�Z,499\"̠","�hP3�9d�����:{h������Nn�qΦ�","","0","?"),
("��G�O;�|\0�JuV���","wp-content/themes/flatsome/inc/builder/shortcodes/contactform7.php","0","O#�t�\0ۓǲV�I_","O#�t�\0ۓǲV�I_","���%���Ej����e��n͘�ܷ>��A�","","0","?"),
("���ѯeZ�u/�Ƈ9","wp-content/themes/flatsome/inc/shortcodes/text_box.php","0",">�cM��__�z�~@�W",">�cM��__�z�~@�W","��>��F�a$�+�#Q���mT�ӹ�A	����)h�","","0","?"),
("��Qs|�c�L؜VH�)","wp-admin/includes/class-walker-nav-menu-checklist.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���!즳>�O9��.�","�ᦳ�������=����,����=Z���","","0","?"),
("�$��GJ�}r`���^","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/ForbiddenBreakContinueOutsideLoopSniff.php","0","lfO��}�\"MS��","lfO��}�\"MS��","ˢ�GU�`(�F>?H�; ;�W�	-G�>�","","0","?"),
("�[��ek7�e��
("�n97�I.O�ҝ޿�","wp-includes/js/heartbeat.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","6L+�g�A�\'�\'��K","��ԯ6ZUF��V�]�֫�V�bb������]","","0","?"),
("�|Bl�IHҼ�OSƱ","wp-includes/js/mediaelement/mediaelement-migrate.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","<�C�_hz�3��<7",",b#0�!a�OVc,��ؕSԏI�л%��p)��","","0","?"),
("��27�;�&��K;","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/CharacterBeforePHPOpeningTagSniff.php","0","��єb�\\�~��V�I","��єb�\\�~��V�I","C&Z�3;�
("��O�X~���^R�$","wp-content/themes/flatsome/inc/woocommerce/structure-wc-helpers.php","0","Y�fݒi�(��_�","Y�fݒi�(��_�","�ɇP����d�����F�[͇�ӫ�����B","","0","?"),
("��M�Ӽ��7T�~���","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Record/AbstractRecord.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","$�kA�`�lw���y�","7
("������c��7�&`","wp-content/themes/flatsome/template-parts/header/partials/element-menu-icon.php","0","�z������
("����h+��B����","wp-includes/js/tw-sack.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�D�N�k�P\n�~h�","\'!,r���!qܺ��p]^k,.�A�
("��F�\"��vh�$Lb��","wp-includes/js/imgareaselect/border-anim-v.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"," �z!�<�7������*�","��>����d��:����j1�<�!4�6�g��","","0","?"),
("����qO�Z�Oo����","wp-content/themes/flatsome/inc/builder/shortcodes/commons/slide.php","0","	qҀ��ݑ�n�>t�","	qҀ��ݑ�n�>t�","K\0��HIr;uP��
("��yc�0O�g)ρ�Mf�","wp-admin/network/site-settings.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","8�S\'`q7����c","�?G2�p����:�N\"D���������","","0","?"),
("��U�]R���)Y��m","wp-content/plugins/wordfence/fonts/roboto-KFOmCnqEu92Fr1Mu7GxMKTU1Kvnz.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","n�j����0�����9","���Ҩ2�#��s:�Р\n		v��Ø+l�","","0","?"),
("�tǱ%������F","wp-content/plugins/wordfence/lib/wfNotification.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\0Ǎ V2�(���dhVD","S�a��Y�����gj+|�� ��J��M8��","","0","?"),
("��Fj]p� ���Ac
INSERT INTO bz_wffilemods VALUES
("�0����]�Va#���Td","wp-content/plugins/wp-rocket/vendor/composer/autoload_psr4.php","0","�䓏0g�q���m�>�^","�䓏0g�q���m�>�^","\'�A[�z���oA�e�����7R�V��YO�J�","","0","?"),
("�1��ϣ�����I�","wp-content/plugins/wordfence/lib/wfImportExportController.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�H���M��.����","�ƌ�Z�>��2��ì����<
("�<�-�!E���`","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-setting-user-meta.php","0","O�Wv��ɾV�y�)�O","O�Wv��ɾV�y�)�O","�6�,^���\n�����Q:�*/6ٺB+���","","0","?"),
("�<��|~E.�Y^�!�]","wp-admin/js/widgets/media-audio-widget.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�7ފ4�sF��>�֓","�-Yrf�pi�RU�>��Z֪�Jӊ�t��","","0","?"),
("�>�ӑ�!\'S�K�.S","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/WhiteSpace/ObjectOperatorSpacingSniff.php","0","�?ZΈ����t�,��","�?ZΈ����t�,��","�DA���M|�t~%
("�?�\n5��H�?������","wp-admin/css/customize-controls.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","N�3�p�JF0���ќ\"t","�cR�	?�\0}O7.q���YO��V���X�:","","0","?"),
("�D�C��ә\0~�3��:�","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/RemovedHashAlgorithmsSniff.php","0","���!Xr�̶�JH�mR","���!Xr�̶�JH�mR","��E�V: �]3]��X��qck�\n��H�x","","0","?"),
("�s�	������;1ѵ","wp-content/themes/benh-vien/template-parts/posts/single.php","0","���K��\nx��x�8�r","���K��\nx��x�8�r","�drA�Is��,Bsob�՚E1ܵ6���&�","","0","?"),
("�����juGCtO����","wp-admin/css/colors/coffee/colors-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Һ�C�<��Ր�`�","*�@��bn:��oޥ��s��\\����","","0","?"),
("��Mgq@���H��@��V","wp-content/themes/benh-vien/template-parts/posts/partials/entry-title.php","0","\n�ݷ9�(��o�,a","\n�ݷ9�(��o�,a","
("��l�.H|S���{��","wp-includes/js/jquery/ui/effect-transfer.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ި\0w}����n�","�����UT��$�F�t�uu����oO�΄","","0","?"),
("�ɂb��ES_hD�Z]�\\","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/InlineHTMLSniff.php","0","s�<��6�t��)O�>","s�<��6�t��)O�>","���G��s��ɑ:�]���E����7���","","0","?"),
("�ʚ�{�(���\\i�7.","wp-includes/Requests/Exception/HTTP/431.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��s|b$��ѓ<��","�ꅱ��/Y6_���w�pk�w���0���","","0","?"),
("��}�^72������","wp-includes/Requests/Exception/HTTP/415.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","X��Tb�̮�JU�","v%�_�\0�b$m�&`���(�=�m<�bo0p","","0","?"),
("����JNI�z~k�*R","wp-content/plugins/wordfence/css/diff.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","I6OG�jL�?��v�B�","����1t\\��a��P.�E��ed�ˎ�3m��","","0","?"),
("���an���V=Ty X�","wp-includes/SimplePie/Copyright.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��h�T��	Ù���j","��b_$4�_�m2���B��J�\\�5�ߏ\"%	N","","0","?"),
("�\'�9EӷJy���w\n","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Classes/ValidClassNameUnitTest.php","0","(]�M�Kn�Ba�i�","(]�M�Kn�Ba�i�","~Fi��mD�԰�JJ2Q]����i��.�.","","0","?"),
("�F����ѯ�,�x�%","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/NonExecutableCodeSniff.php","0","y!6Ʋ�ta��0�^�[","y!6Ʋ�ta��0�^�[","�o��ت3]�K#��3��N��O��7�w���]��","","0","?"),
("�O��Yk;j��i��;v*","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-slider.php","0","N�Y<¤V�lf����","N�Y<¤V�lf����","bc-(����Yzp���x����zO�o�","","0","?"),
("�^�C\0��iMԱfw[�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Sniffs/Commenting/ClassCommentSniff.php","0","��؝�|��L\'�7�j","��؝�|��L\'�7�j","��l��(�%��S�We¦��/�#���^՞","","0","?"),
("�n�vn��`�J0��x","wp-content/themes/flatsome/inc/admin/customizer/img/blog-single-full.svg","0","��R������Y���","��R������Y���","�Aƿ:�*��\0z�b��
("�p�Q_�!��\"��M�Y^","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-upload.php","0","L7���b�Ɂ�iK�Z","L7���b�Ɂ�iK�Z","�k�V��%��{�d\0�����I\\@���","","0","?"),
("�} �yT��Z�H�cDJ","wp-admin/js/custom-background.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","5.�P3֎���~?","Qq��S`	]ӫu��J��L]��x�ס��4�","","0","?"),
("����{���ϿtmC�}","wp-content/themes/flatsome/template-parts/posts/archive-3-col.php","0","��k��iW\0���c�\"�","��k��iW\0���c�\"�","kn���f�F�	��)YҢT0,T(Qw>�$?","","0","?"),
("��{�0l(Ʋu9,wS�u","wp-includes/js/media-audiovideo.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\"�<STQ�颛`�",":;�����H�ܷoM��j��EZ[�����7�.�","","0","?"),
("���^P��fV���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/PHP/DiscouragedFunctionsSniff.php","0","�\\[�N7u�U>�S��","�\\[�N7u�U>�S��","��&H�*���%�&M���fgƹ,V�v�","","0","?"),
("��e�u���]�G&���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/ControlStructures/InlineControlStructureUnitTest.php","0","|�QL�mEĘ&�>&�b","|�QL�mEĘ&�>&�b","�gk�`ܙ0�+LN��Fnu�LoQ��]�z<�\"","","0","?"),
("����r`8`4�	�H{�","wp-content/themes/flatsome/inc/admin/options/global/options-general.php","0","|�����Ü\\,6","|�����Ü\\,6","����Ůi�C���?4����x��M�����ʡO","","0","?"),
("��|�P_�R?r�s�I*�","wp-content/themes/benh-vien/template-parts/posts/archive-inline.php","0","��Ő�@A����^���","��Ő�@A����^���","O���]��ƀ��-�!*\\ե)YӘ�1����9","","0","?"),
("��g�\0}^��ҡ�:�ݝ","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/ecommerce/jigoshop.php","0","x#�ˤ�a��{^�;","x#�ˤ�a��{^�;",",�^]�x#����Ģ\"��ҺW�[�y*:�S.�","","0","?"),
("��4o��G�h��7a�","wp-content/themes/flatsome/inc/admin/kirki/modules/webfonts/class-kirki-modules-webfonts-link.php","0",".!�׹;â����O#�/",".!�׹;â����O#�/","��L� ���J�f�WM\0+���g��T��e","","0","?"),
("���L��V�Y���*","wp-includes/js/plupload/moxie.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h��[���i��pb�\\","�୪�P��d\0�%�0��xT@�36m��Q�","","0","?"),
("��5M��h�y;���*","wp-content/themes/flatsome/assets/css/icons/fl-icons.svg","0","�(-�M}4~9���Ω","�(-�M}4~9���Ω","�0��e���Ė�0	��\0JcP1�*.I�@��","","0","?"),
("� �A$ۤfC�N��37","wp-includes/query.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","rEUdp��`_�G�","��D�zL�n?�4?�\0+K����h��	ْ yb9","","0","?"),
("�(���ה�W�h@=a","wp-includes/images/smilies/icon_mad.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","׾�iec�{��0",";{g�ҽ�*w|�&~�N:���z>�W�3
("�4/ڍ�+���x9(","wp-content/themes/flatsome/inc/woocommerce/structure-wc-category-page.php","0","Db�<^j���|L�","Db�<^j���|L�","SB����쭑 =�ƕ���\0y�O\0Tz��","","0","?"),
("�W4�pv8��K��ޖ�","wp-content/themes/flatsome/inc/admin/customizer/img/logo-right.svg","0","�Gduƞ�2X�iy�J��","�Gduƞ�2X�iy�J��","d���[�-G&��?�k�Q)�ut��m�=���C��","","0","?"),
("�s��ҵkB��xF�Q�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-left-large.svg","0","N��f�p��FCoO`","N��f�p��FCoO`","[�!e�^��{������a wx�e�Q����","","0","?"),
("����v���ό�Y9�","wp-includes/ID3/getid3.lib.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�f1`8cw�\0��:","�͚B.�t��m���ٓ/�g��b�GDd�ZX�","","0","?"),
("��1;�K�5�Kc�	�y�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-image-right-large.svg","0","�#-
("���X����H�o�v�","wp-admin/css/common-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",")����(LGQ����z","ەC,�t(�k7���6\0�ң��=��`�Z���","","0","?"),
("��֗]NR���S{qv?�","wp-admin/css/wp-admin-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","t�������fo�,i�s�","M��Ǒu�l��2��Փ��\"�>�Z��: ~�;+","","0","?"),
("����!~�@ 0�c_�","wp-content/plugins/wordfence/js/wfdashboard.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Խ�P����`�{i�","=P�z�r���!�?w�/d!��LӪ��1!�","","0","?"),
("��,z���Ґ�U�","wp-includes/rest-api/endpoints/class-wp-rest-terms-controller.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","-;�F�?�nqc�n","���Wb��@D�<ݙ�o�BY�eQ������.�","","0","?"),
("��q5�$;s��O","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/circle-right.svg","0","�E�QH?����\'��","�E�QH?����\'��","��J(��lٻ�,��!+��湹�Lc���\"��","","0","?"),
("��O܎$8��J�e��","wp-content/plugins/wordfence/models/scanner/wfScanner.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","kn`Ӻ�H{q����","l�w��վ�5�M\n\nm��*��}����K��xx��","","0","?"),
("�K�Mp-�hs�y�d�","wp-content/themes/flatsome/woocommerce/layouts/headers/category-title.php","0","K���I�2�/��!4","K���I�2�/��!4","�Jͥ���?�,�B�x��f*�;��J��S?�","","0","?"),
("�� �R����[�\'�>","wp-content/plugins/wordfence/css/images/ui-icons_777620_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�J�\\c7�y�x�гl","�~��qV����*\'�1�����]3�^�����m","","0","?"),
("�$�����j�X�])D:","wp-load.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����QޘC/���ZVc","%�PNϮT�iy�EV+m�KVvN_![�2�`��o","","0","?"),
("�%nT,��ތPk���","wp-content/themes/flatsome/woocommerce/layouts/category-none.php","0","`�{F#�>��,��f�","`�{F#�>��,��f�","�|�Aŵ]�E����qR�3HT�?&!���]","","0","?"),
("�G{?0��)��:�k�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/woo_products.svg","0","0>
("�]	%��íQ�t{i��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/message_box.svg","0","�u4=kQ��B�\"�C","�u4=kQ��B�\"�C","{���u�X�^]xJ�\\�~�<��.�9���]�f","","0","?"),
("�j%M�ɍ��p)Z��","wp-admin/images/generic.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����\'�[#98!�","�{u���K[g͆Ex�{�:߼��lͨG��","","0","?"),
("��y�0�8��C��ԧY","wp-content/themes/flatsome/inc/admin/customizer/img/portfolio-bottom-full.svg","0"," �{�7�U�4ң!`�"," �{�7�U�4ң!`�","�<E��M°�X�J��_v�wfhn�}Ut�h��","","0","?"),
("�Ȱ/�s\'�H%k�[","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/LowercasePHPFunctionsUnitTest.php","0","�v�%�4oõ�2����","�v�%�4oõ�2����",":�|��@ܴdB��H#�����c$KO��v�","","0","?"),
("��;(Xp`ҙ��pݷ","wp-includes/js/plupload/handlers.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��B�);��
("�겄hyaQ:�z�*3�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/ForbiddenFunctionsSniff.php","0","J7�S�2w����z�4�","J7�S�2w����z�4�","��������F� ����t�(O�j_EѬ�?��","","0","?"),
("����+�cd����V��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Exceptions/TokenizerException.php","0","!(�uT��\n�6
("��t�0�g�a�/���","wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","~��-�������x\'�	","��{ڋ��N�o��#X�+Xe\'�����_����>","","0","?"),
("�\n�qo�qZVyX��9","wp-admin/includes/menu.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�l2��ql�m+�?L�v","�xA�^|
("�`�@������YE�!","wp-includes/Requests/Transport/cURL.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��87a`CZ��","hI���� x<�������%��ji�����$","","0","?"),
("��Ư	\'CԻ��ګ","wp-includes/images/admin-bar-sprite.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","S���:�W����^","��rN!�`VO�c��K��viՀ{Fn��le","","0","?"),
("��퓧u��.惍@�","wp-content/plugins/wp-rocket/vendor/composer/ClassLoader.php","0","),��c���7���K�","),��c���7���K�","���W	8W��\\��m4�uS�{��|�Л0x��Z","","0","?"),
("��\"�Z0\0ؿe�Ԧp�","wp-admin/css/admin-menu.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","+N��+[_�R�����","��h9�e���8dN]�wf���!G�UFk��F�P","","0","?"),
("������F!��#[�","wp-content/themes/flatsome/page-blank-featured.php","0","�\">�[�gh�	��","�\">�[�gh�	��","�t�S�Ӆ�`������`����r��ЌM�)p","","0","?"),
("���{�pd�Z�����","wp-content/themes/flatsome/assets/img/payment-icons/icon-paymill.svg.php","0","z��;7����;WB��$","z��;7����;WB��$","Ҝt�\n�G��J��2\'�ݺ��΀��{f","","0","?"),
("����x8[!>�X","wp-admin/includes/class-wp-users-list-table.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","h�WW>���߀�o�","�~���>�u�ȵH+�hVm�8](\\=��\\��h","","0","?"),
("�U��M�<��6p��","wp-content/plugins/wp-rocket/inc/front/cdn.php","0","�$rrO!�|�9�l�","�$rrO!�|�9�l�","Fjg���,V�:]ͻ���/_��4��Q0��0�","","0","?"),
("��_
("�/��0)����","wp-content/plugins/wordfence/views/scanner/issue-database.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","[�� \n�Ro�N7�|","~��❃gd�&w[�u������o��|t��}","","0","?"),
("�S����KK2iɈ","wp-includes/comment.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��KK���w�r�*�N","G�=\\�l	��6!��OC� ����$$H","","0","?"),
("�j{�8T�#ε�4�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/SAPIUsageUnitTest.php","0",";]�� IêO[D���",";]�� IêO[D���","�l�@��-�h�\n�n�ʰa����,�}@���","","0","?"),
("�x�_,[��5����","wp-content/plugins/wordfence/images/sort_asc_disabled.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��Ǐ#a]2������","����[8l�Y����ckl��	��u#KV���n","","0","?"),
("�y�g��zaU\"�	XKG","wp-includes/js/hoverIntent.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ʳY�C��c�On�כ","����3���8�����	#οY��!о��Z","","0","?"),
("������\"�zdy�9��","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-switch.php","0","s�o���i��U@���","s�o���i��U@���","g�1��;/�%�@v����n���f��GM�","","0","?"),
("��ѿ���8�i3Ϗ","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-4.svg","0","4�|Wo�?�n��!��","4�|Wo�?�n��!��","_�\\:z.ղ��]���cx0����^� �@����","","0","?"),
("�����<Gumk�i#�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/select2.min.js","0","�jS�y�YQ2��Mer��","�jS�y�YQ2��Mer��",".QH(*�6�X 1�ӷ*g��δ6��C�O�#","","0","?"),
("���\'?h�������=U�","wp-content/themes/flatsome/inc/shortcodes/ux_hotspot.php","0","����BM}��x8�m�","����BM}��x8�m�","��(@��?�t��mԂGr2��q���cUd","","0","?"),
("��Է5�B\\�y��x�","wp-content/themes/flatsome/template-parts/posts/loop/partials/entry-image.php","0","zz�Ќ�hKX`����","zz�Ќ�hKX`����","�D�W:ڪ��2���s;X��oD;��K��r","","0","?"),
("���NTZt�o
("����{�i��3��o�","wp-content/themes/flatsome/woocommerce/myaccount/account-user.php","0","��&?�)[���z$�p","��&?�)[���z$�p","��k�K���!�Tz����Ȣ3�z厴��","","0","?"),
("�	�<k}��Ƞ���%&	","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Objects/DisallowObjectStringIndexUnitTest.php","0","��b����]T�T�s�","��b����]T�T�s�","$4d-v?�����\\οM̚�(G��_�T�)�","","0","?"),
("�/�ɘ�]�^�W\\�q","wp-includes/css/wp-embed-template.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ar>,&�i�\'4t$","��7Y��)�^��K�f�Ý�X�*���X��C","","0","?"),
("�lA\'�M�����Lb�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/fi.js","0","��2�����Ƕ\\�7","��2�����Ƕ\\�7","͐��\\ʉ�b&�朻,-��l����>�8e","","0","?"),
("�o�wwЬV�V6N
("�v{L�Jlō�Yz�`�(","wp-includes/js/thickbox/thickbox.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i֪[���-��G��","�1��
("���W���l{����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SuperfluousWhitespaceUnitTest.3.js","0","�d��╫^D�f","�d��╫^D�f","Kx%{��W��Fy�n�;M=���+\09D�8���","","0","?"),
("���퇴���u��4�6","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Exception/HttpException.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�l�fk��<��
("����4B�OC0�W�","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-color-palette.php","0","��3�陣�C��
("��b}	V&���:i��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/Files/OneInterfacePerFileSniff.php","0","����m\\�@Cٯ��N�*","����m\\�@Cٯ��N�*","}����o��]�ٮK�%T~!x�;w�EԲ","","0","?"),
("��V��Q��6·���","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sidebar.svg","0","��Tɲje.<��?C�","��Tɲje.<��?C�","�\\V���L^��/�.�l[�^MXx�~��>R��","","0","?"),
("�X�VטO|8}���","wp-includes/theme.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��R�e���K�Ȟ*�R","�\nY��`���;0��P��,��A�Ci/�<�c�D","","0","?"),
("�B�H*mz��N83��","wp-admin/css/edit-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��ĩU��m��9��","����Q����Qx̩B�p<]�742Am�4","","0","?"),
("�D�+T�����a","wp-content/plugins/wordfence/js/wfglobal.1543941426.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�`�ӱ\0
("�V}�P���m�/�|I*�","wp-includes/js/customize-loader.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�ȶ$����J�Gf�","u8���I�̸��D�fx1��\\�..�(�>X��m�","","0","?"),
("�_Kr��c���gB�o","wp-content/themes/flatsome/woocommerce/loop/breadcrumbs.php","0","o/�H�ne�H����","o/�H�ne�H����","F����&������e0���KL���Nvr��R","","0","?"),
("�y�FA��4q�R�A","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/ForbiddenStylesUnitTest.php","0","�hG_Y���L��$x","�hG_Y���L��$x","MF0�s�`�x#��I{R���Է+X�е\\�H�","","0","?"),
("���D�����Ɔnx�l*","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Operators/ValidLogicalOperatorsUnitTest.php","0","�wSm|^�`�}򈌾��","�wSm|^�`�}򈌾��","��#)�\n&�,68S~\0���ԟ�\'�����$�v,","","0","?"),
("��.��v8-rJŕ�qQ","wp-includes/js/wp-auth-check.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P
("��7��E#�wŧj���","wp-admin/includes/image-edit.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",">˓�C4@�Zw�","��e{9��_\"���X	񝲉�@��wl����","","0","?");
INSERT INTO bz_wffilemods VALUES
("��I\"K���5��+���@","wp-content/plugins/wp-rocket/vendor/jamesryanbell/cloudflare/src/CloudFlare/Zone/Railgun.php","0","^���{<W?�D���1","^���{<W?�D���1","�85�p~3o�
("��v���|�-��","wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","^�plPg+�E���","V�H��hs~����_nu�*;�Ƶ�<��S","","0","?"),
("�_\'�\'��l��Ժ.$","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/NamingConventions/ValidVariableNameSniff.php","0","h�&����V��i!�","h�&����V��i!�","z����Hʃ_��\0�(��hw��Q�|�\n���+","","0","?"),
("�!HUN&�\"����z��","wp-admin/css/widgets.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�cJ`:<���6�Ѝd5","��4�g�u�!��˗rnޥ�36�����+���e","","0","?"),
("�:��4O#izv��CVY�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/Objects/ObjectInstantiationSniff.php","0","l4y���<U�r:2\'PP","l4y���<U�r:2\'PP","��S�������7D�v�!�AˌSY�p^V��","","0","?"),
("�>����!�Hv#ܪ��","wp-content/plugins/wordfence/css/main.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����蚑�
("�a�tU�q�^!�0ƣl�","wp-includes/post-formats.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","2���{v�q�5]�","�Ş_\n�;��ͪ��̓9<׼k2��$�","","0","?"),
("�k���zߣ����bo�R","wp-admin/post-new.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�Ĺ��V8���Ņ��$)",">$-�.�\"rBc�û� U ����?�CC	�vIP","","0","?"),
("�l��2JŤ,�0��t#","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/PHP/ForbiddenFunctionsUnitTest.php","0"," 	�����E>�\0qm)"," 	�����E>�\0qm)","f�;B�5Πqԟ��i ��jCw�>�$( ","","0","?"),
("�n�T^\0ꇽAĆ�m_","wp-content/themes/flatsome/inc/builder/core/server/helpers/shortcodes.php","0","����F��X�R�U\"��","����F��X�R�U\"��","4+׍RQP��x�K`�@j�ܽia52��W��","","0","?"),
("�vO��#�J�N��+쁁","wp-content/plugins/wordfence/css/images/ui-icons_ffffff_256x240.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Aa+JD$�2��J��","�/#?T�iOLyv��u��TK���ɤ��\\ػ�","","0","?"),
("�|7�<�<Y��:��{B�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PEAR/Tests/NamingConventions/ValidVariableNameUnitTest.php","0","���J�l�g�����","���J�l�g�����","���%���A�R�C��+��<�RoRf${;yW","","0","?"),
("��s��8�	�@�7�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/simple-light.svg","0","���捲.`0\08UN�g�","���捲.`0\08UN�g�","f��k��R��N2<ƴC#2]���5�c?Ǎ٣�","","0","?"),
("���~����\\��H��","wp-content/themes/flatsome/inc/builder/shortcodes/block.php","0","7P��q`C�zG�\0","7P��q`C�zG�\0","�Q����<�Xa6��J|�^:���8��¾�Ǘ","","0","?"),
("��@��{�J��5䷴X","wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","U,�:)��؋\"�QqY","\"�Oo�ۈ���<��oES-MO÷�YN�!��","","0","?"),
("����L��6	���׳","wp-includes/ID3/module.audio.ac3.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�T�tK섀�1	��#t","�~��T\'a�Hl����>\0|c�A�`Џ","","0","?"),
("��\0�?n������^,}�","wp-content/plugins/wp-rocket/inc/3rd-party/hosting/nginx.php","0","�WSr\"��d���m�eT�","�WSr\"��d���m�eT�","y?0�f��q@���ѝ:�D�)�L6�h�<��(x","","0","?"),
("��T��V�����\\��","wp-admin/import.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���Z�b��=r�~","�I��_��@�B��f�Fc����D�6","","0","?"),
("���¯�(���ףk�|!","wp-content/themes/flatsome/inc/admin/customizer/img/nav-outline.svg","0","��o��래N5��\\��","��o��래N5��\\��","��.��
("����Nt�K��U��","wp-includes/Requests/Exception/HTTP/407.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�����v����j&�Ƶ",">���]ƚ�B̏Xv�ذc����.N2�NҹЯ","","0","?"),
("�ܵ[Ҳm%�6�S8:D","wp-includes/images/toggle-arrow.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��·�a��;�d��*�","[b���;�]�f�0���s|:�����%","","0","?"),
("��o%䯊Ej�s*�MK","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/km.js","0",":P���e>#垒a",":P���e>#垒a","��,�)=Vܯ�<�5��j*bNv��^��]","","0","?"),
("����!ެ��߳���p","wp-includes/images/crystal/default.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","A�>)*/��!�-�","���n$���_�u	�$Q3��E�׏r�|Jm�","","0","?"),
("�/�8���J8��f�L","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-outline.svg","0","��v6��O�����","��v6��O�����","�Ўyc�\0K�j��7|,V~g}��}oh:m�$\"u","","0","?"),
("�;�5e9�+X�3��T","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Zend/Sniffs/Files/ClosingTagSniff.php","0","�;�K,?�_����V��","�;�K,?�_����V��","Q���]N���	O�?��f��\\��u�^<��","","0","?"),
("�h�����FuQe� �","wp-includes/images/wlw/wp-comments.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","L�6]P����.s���","�zl��C��D�����#�a�N��3\'XZ�","","0","?"),
("�k\'�`�T�XpH>^�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/slider.svg","0","��8T�bۗ5�&��/�","��8T�bۗ5�&��/�","�� Y@!��q��pE����g=֖E��G_�~��","","0","?"),
("�kk��B|����@�F�","wp-content/themes/benh-vien/template-parts/posts/archive-3-col.php","0","��k��iW\0���c�\"�","��k��iW\0���c�\"�","kn���f�F�	��)YҢT0,T(Qw>�$?","","0","?"),
("��ς��S�)x���Q","wp-content/themes/flatsome/inc/admin/customizer/img/nav-bottom-center.svg","0","?��Z�!Z�C��A�{ɯ","?��Z�!Z�C��A�{ɯ","�3ĸ�l���+�A�P9n��a�2P(�Qc7","","0","?"),
("����kϊTy�`f�,t","wp-content/themes/flatsome/woocommerce/share.php","0","�_yvuX��@Jcv_��","�_yvuX��@Jcv_��","�����«>���m���I��kc{��","","0","?"),
("��(.�/�L��P��ȑ","wp-content/themes/flatsome/inc/admin/kirki/controls/php/class-kirki-control-dimension.php","0","bݥ_<�HR�Y�O�8","bݥ_<�HR�Y�O�8","69f����\\��j�����w�`����.,����1","","0","?"),
("����xc,=�|��","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/CSRF/NonceVerificationSniff.php","0","��_�����sj2�Z","��_�����sj2�Z","������t�뗰MRȅ�����j��Y�z\0","","0","?"),
("�ǀ3�<��&��YĆ","wp-includes/class-wp-roles.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Yp�r�Z�b�\n�p1","ږ��cw侦��%e��:[�?\'8LL��#j^","","0","?"),
("��f0��ͭ��~�)","wp-includes/fonts/dashicons.woff","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�_rY+ʂ;�","��yU�]f��8���t������l�L.","","0","?"),
("��.�IOI�P��%�)","wp-includes/Requests/Transport.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��;�k���K\\Vl�","ɯO3e���F��㛆��v+����.r/�>�,","","0","?"),
("��MO,���s���
("��T�)gх6&��]","wp-content/themes/flatsome/template-parts/pages/page-title-sub-nav-centered.php","0","k�:^�#�8�6��[","k�:^�#�8�6��[","1{�N&�����]��p��_,��	-����S","","0","?"),
("�6�|;�;8�Q�4�k��","wp-admin/install.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ސ��b�o)9>�L��","g?;94Y,6�����x�RI��~�r��pq)","","0","?"),
("�9�e�E��bݾl�3�","wp-includes/js/wp-lists.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","}�B��˪Pg�oW��k","�]�q�E��P�~�g�W%�b�̘�r\\-��","","0","?"),
("�A�W��O.Af���-b","wp-content/themes/flatsome/inc/admin/panel/sections/tab-activate.php","0","��dT�����4\0","��dT�����4\0","v�l)/��b;)�l��A}�\'��jR�\n����?","","0","?"),
("�G~����?��8dܐm�","wp-content/themes/flatsome/inc/admin/options/header/img/header-simple-signup.svg","0","�P�1F��LD�3�","�P�1F��LD�3�","���D���DsH�zKv�ab@y&�C{3�i�","","0","?"),
("�x&���=� >�
("��;7\"%�|�	&
("����)���q�O�g","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/button-call-to-action-large.svg","0","�SL��<zӶ�gV�9^�","�SL��<zӶ�gV�9^�","�6�}�H��r���3��$�f�\"> �G%����","","0","?"),
("��5o��#R\'/��l","wp-includes/fonts/dashicons.eot","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","0���!_����y�H","��_�=���L���P�i��b�)�*�5/","","0","?"),
("����E�?��Юᾠ","wp-includes/js/media-views.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��0��S�������","�!5ݽ%�ڭ�+�<���p���\"�g��X�B","","0","?"),
("��$n��[�TMֻ���","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR1/Sniffs/Files/SideEffectsSniff.php","0","��L$|��������","��L$|��������","�wb�4�L�OǺ&\'��.I�?�X�_Ւ\\����N","","0","?"),
("��Cg����}|�E��","wp-admin/js/word-count.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�P_��J\'䓖AE��","�n}�X~�2�^_�zh��NL��ݪ���)2�F","","0","?"),
("�	v�O.�|ߤҵ�","wp-includes/js/tinymce/license.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","o�����x:�`����","Y��#wO�g^\'�b��:�^�	=跨|���","","0","?"),
("��i��D_̺�B�@","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/Functions/FunctionCallSignatureNoParamsSniff.php","0","�x
("�*pTɍ�k�\\��\n��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Tests/Objects/CreateWidgetTypeCallbackUnitTest.php","0","l��&��ק��!NnB","l��&��ק��!NnB","�r|R\n����A��MRP.�zEԌ�~YhN:","","0","?"),
("�1�鵿�Y�l�TKe","wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�pGK����3+�d��","��~ԣHd�V�A<�̦��4�:,d���L��OV","","0","?"),
("�D�:��:�@���Öl","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Commenting/FileCommentUnitTest.js","0","�������ټŨ��","�������ټŨ��","����i��w՚�>i1>8a2�9��Z�D�","","0","?"),
("�K�����Jo�,�kL�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Sniffs/ControlStructures/ForLoopDeclarationSniff.php","0","aG�?b~O��{���%","aG�?b~O��{���%","�kn����b=��ܬ�� ����e�*&�yv","","0","?"),
("�Lߨ�Ϥ�(��R�","wp-admin/css/code-editor.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","F3��Ů�`}X����","|N�*��}Ǔ^�t܀ ��(���8h���{y�","","0","?"),
("�e��w��Z`o���!z�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SuperfluousWhitespaceUnitTest.php","0","�#�%�r==k0^x|�","�#�%�r==k0^x|�","֒��$�f�@^]�.�)�����U���d��R���","","0","?"),
("�k�|DD��*@4�","wp-content/plugins/wordfence/vendor/geoip2/geoip2/src/Database/Reader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��\nAgv��1P�ص","����0o*
("�lP����_�k�q�#","wp-content/themes/flatsome/assets/img/payment-icons/icon-postepay.svg.php","0","��4���0��x�6iL�","��4���0��x�6iL�","AP4}��)�Rnjz��얽�\0�-G�~���F }","","0","?"),
("�l^5���Cg̅���5","wp-content/themes/flatsome/inc/builder/shortcodes/ux_sidebar.php","0","f}j�o;%�u<�_","f}j�o;%�u<�_","\n��ɷ���ٙT��>˕S�
("��\'+��iD�Ӣ","wp-content/plugins/wp-rocket/vendor/wimg/php-compatibility/PHPCompatibility/Sniffs/PHP/NewAnonymousClassesSniff.php","0","ΰ@�ݥO	�⥞��","ΰ@�ݥO	�⥞��","Lʢ�W,U�7��>���B������gTʱ","","0","?"),
("����Z�Ab�V���","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/grids/grid-7.svg","0","��3�A;F̝Q���?y","��3�A;F̝Q���?y","3�K8*��T�f��뛬8N����L�)
("���\0��������7\n�","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/slider/meta-slider.php","0","�L�f>�(���r��V","�L�f>�(���r��V","e�H�CLu\\/X�X��I���YW�OH��x�","","0","?"),
("�������3Q�4","wp-content/themes/flatsome/template-parts/overlays/overlay-menu.php","0","�K�D�1uՐD�l�","�K�D�1uՐD�l�","�?!|\'�R���j�V���d��,�Lf�!`��\\�","","0","?"),
("��N�P������6r","wp-content/themes/flatsome/template-parts/posts/partials/entry-title.php","0","\n�ݷ9�(��o�,a","\n�ݷ9�(��o�,a","
("��?���c��rF\n�H�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/gap.svg","0","˞�6�i8�^$B\0���.","˞�6�i8�^$B\0���.","�Q��2h?\'���w+`�\\���WB�����;�$","","0","?"),
("��b�������|e~�","wp-admin/css/customize-widgets.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���cա��2s�UXp�/","G�pH;��iE)�T�m=K��4���0���","","0","?"),
("�����/��w��8�!�","wp-content/themes/benh-vien/template-parts/posts/partials/archive-title.php","0","-y:�P�bQ7D�r��","-y:�P�bQ7D�r��","�¸?���}\'�I_?	�SK>b�\n �.kG","","0","?"),
("���K�r8�p6�^\n�","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/WP/DeprecatedFunctionsSniff.php","0","<W�VO��Bv���\"c�","<W�VO��Bv���\"c�","���:���\'*o7*��_�����ݮ��>4","","0","?"),
("���D�>k2�)�x�","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-top.svg","0","��O^^ك,�����","��O^^ك,�����",";���))�$@�ߗ!���/��ڙؓmw��r[\'","","0","?"),
("���al�V�?�f�ё�","wp-includes/IXR/class-IXR-server.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��w�\\xT�>��:��","��TE��UȚ�5$Y����������`q��","","0","?"),
("�\0h�Kf��\0��","wp-content/plugins/wordfence/images/forward_enabled.jpg","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","U\0/3e4e������","0��Q7018�ު9-�z9ؽq��SrĒ�P��","","0","?"),
("�
("������H�06�","wp-admin/images/browser.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","����K\\�b�$�F","&$�ĉ9�����~_SH�_�̓�%L���\'&�","","0","?"),
("����8(�j�Z]}","wp-includes/js/jquery/ui/effect-pulsate.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��o S@Z*���p!�","�m	�!��Ƚ���S�QF_��P���q\"!�","","0","?"),
("�%+�Q�)M�sG^�h","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/MySource/Sniffs/Channels/DisallowSelfActionsSniff.php","0","����P<h��x�0��","����P<h��x�0��","?�ˍ���!�.{?o���~y�ܩ+�:�]��","","0","?"),
("�F6��]e仗\'�`�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/CommentedOutCodeUnitTest.php","0","gt��l��<I7�L`","gt��l��<I7�L`","����ݛ���i�a�`ٺ�P��AGW>8j��*�","","0","?"),
("�T�ak�
("�W�P�AW/�%���z�","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/uk.js","0","�盌x��vL
("�X����g5����(�=c","wp-includes/js/tinymce/skins/lightgray/img/trans.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��7I �1F�Gu�j^","�� �û���ͥJ��O�mO�:ϙ���l�W�5","","0","?"),
("�`��_f�3G��0�","wp-content/themes/flatsome/inc/admin/advanced/assets/js/iris.min.js","0","����\0�����{1.","����\0�����{1.","n�MzRP�\0>�j$�\nKW�`A,?h�k���","","0","?"),
("�pt_ Y����7L�Kt","wp-admin/css/deprecated-media-rtl.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","v�4rJ��⇤؝�B�","+�5m��3djh�D��R,0@T�m�Fv��|U��","","0","?"),
("����T��D��F�K1�","wp-admin/css/media.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�:� �L�f��YȨ�","��!X�|���7b[���B�m6��\"ڲ","","0","?"),
("��
("���,l���`^c�
("��bP\"~Ι�\'�>�,��","wp-content/plugins/wordfence/css/activity-report-widget.1543941426.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","J�^x;y�����c���","�ӡ��f�aM�Wv+�W�%}��`D�N��","","0","?"),
("��\\s��J!�G����z","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/CSS/ClassDefinitionNameSpacingUnitTest.php","0","Ey4�isyY��W�_���","Ey4�isyY��W�_���","PNRm�@r6�.L�o�;� �\"��7�d�t%:��","","0","?"),
("����_RfV��Ԛ��O","wp-content/themes/flatsome/woocommerce/myaccount/header.php","0","�W��Z?�f�ڭ�Զ5�","�W��Z?�f�ڭ�Զ5�","��*֢��.�Ɵq2�0�H偦t�l7eO\\#","","0","?"),
("��{�ڸ��E����","wp-content/plugins/wp-rocket/inc/3rd-party/plugins/autoptimize.php","0","�X�����*w@��3��","�X�����*w@��3��","�;9�i����UR���{��g1xg�@Ð�(�","","0","?"),
("��/GΞӶ[�ǜ��C","wp-admin/js/gallery.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","xϩe�9e���m嵫�","���坨W?[D���5���=|�J�4�|.�","","0","?"),
("���[�/�9}�`:w�P","license.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�H�R��_��s`� �","�O�� ����$:�c�8WJGH2�5��U��?�f","","0","?"),
("�ک��ԍ?�Xņ��b","wp-content/themes/flatsome/inc/builder/shortcodes/video_button.php","0","�A�ո��_���\\k�d","�A�ո��_���\\k�d","�)�\n��8��Hҝ��H7�K�-%��ģ�i��","","0","?"),
("���9l��Q�������","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/WhiteSpace/SuperfluousWhitespaceUnitTest.1.js","0","wD\"�[�}2&�K��;�i","wD\"�[�}2&�K��;�i","�`�9�h�s�����i�p�ߋ��cP���3{ ","","0","?"),
("�\0�����.}�fwA","wp-includes/date.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","i�.\\��`�VY۞���","�~����|��1��ո,Xb�	�z�0Y�","","0","?"),
("�[���QH\"pS1Ȫ�c","wp-admin/images/arrows-2x.png","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","� Q��}��ydb#6�","�,c�˿�i(~���)����\'��8[A�/�I��x","","0","?"),
("�c�X̰�~M�u�d�","wp-content/themes/flatsome/inc/admin/customizer/img/category-title-featured.svg","0","gu�蓍��d��$G�<","gu�蓍��d��$G�<","`��}Ԭ.$?~�O�����\'����� �V��ˡ","","0","?"),
("��[ixT�q��~Wv�e","wp-admin/network/plugin-editor.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","e��Kw�5UZ����Sj","a|i%�L?����!�E��:P�x����
("��z��4�{\'*����","wp-content/plugins/wp-rocket/vendor/wp-coding-standards/wpcs/WordPress/Sniffs/PHP/RestrictedPHPFunctionsSniff.php","0","�2S�5ZA�\n��r��","�2S�5ZA�\n��r��","ד�ѿ�-��1+I\'��)�)�Ċo��+K","","0","?"),
("��F~���y�c7v-","wp-includes/js/customize-preview-nav-menus.min.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","RiR�z3�\'o]��lQv","��#R�Q��L����\\����D�\'��l$v�T��%","","0","?"),
("��&\'���Q�b�]��[","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/sections/media-right-large.svg","0","�>�>�ӈ
("��B�>���!��Vr��","wp-content/themes/flatsome/inc/builder/shortcodes/ux_banner.php","0","W�<0�<�d���c�","W�<0�<�d���c�","���>�������!�Nc��=[=tFG1l��]","","0","?");
INSERT INTO bz_wffilemods VALUES
("�-��x7��(A�4���","wp-includes/js/swfupload/license.txt","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��[�`�^�-�o�QWz","��:)��6�a\"3r��
("��e/O�\"{�U����","wp-content/themes/flatsome/image.php","0","h�nu�Bؑ�r�h�~˸","h�nu�Bؑ�r�h�~˸","$��;Gj3�x����1VLP_�h����? �x","","0","?"),
("�1W;c�����N��\"�u","wp-includes/pomo/streams.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��s�|�-�<i�p�","�~O�%Μ�ll$_]џ{<B���[�Qr�y�dd","","0","?"),
("�J��B�GT�;,l��T","wp-includes/images/smilies/icon_exclaim.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\�qE�!HY__=�{_�","|��}r�h(X�GU�Լ]\\F^W�MR�����","","0","?"),
("�V�^�3��m6�._P","wp-includes/customize/class-wp-customize-background-image-setting.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",")�@�t��j23��W","�4���0^+�u*�:ޓ4q[#��O��m�&�","","0","?"),
("�_aD�/�ӄ�V�7�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR2/Sniffs/Methods/FunctionClosingBraceSniff.php","0","�d=1�=\"��k�yZǵ","�d=1�=\"��k�yZǵ","�F	�5B6����C�Dd�(6���@C","","0","?"),
("�g�\\����m�K�|�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Tests/Files/OneInterfacePerFileUnitTest.php","0","nT4�K@w,3���-�<�","nT4�K@w,3���-�<�","?�/�3ͬ�6�i7��uM���W�4�p�DHo","","0","?"),
("��,ao�:Y�
("��\\�b��D\\���X��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/PSR1/Tests/Methods/CamelCapsMethodNameUnitTest.php","0","�\'�p�\\|`E\\!^ՙ","�\'�p�\\|`E\\!^ՙ","�ql.p7[7j>�b<�9HtGeg^��)���T@p","","0","?"),
("�����[���D?_�[�","wp-includes/random_compat/random_bytes_libsodium.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","\\/�g��������$
("����-��!?���\\�b","wp-content/themes/flatsome/template-parts/header/partials/element-cart-mobile.php","0","&�Y�C�\0d%7�*�","&�Y�C�\0d%7�*�","��џFʸ���*ji�~�P�9U��$w�1�","","0","?"),
("���7�M3�$��","wp-includes/images/smilies/icon_question.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�\'u��&E�qA���mN�","���f�3�1a�	Yr�@�P�G�������U��}","","0","?"),
("�������>�P(����","wp-content/plugins/wp-rocket/inc/vendors/ip_in_range.php","0","3�A����-ėx�l\"","3�A����-ėx�l\"","��{R�b0Z\0^��#(a�v�ko��\0[ 7B��v�","","0","?"),
("����2@�k�w>K�2","wp-includes/feed-atom.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","г�@1p�Y���PU4�","@ފ>��9�]�^J6+\'��P�\ng@��c���","","0","?"),
("�����H\0ۙ��h�C��","wp-admin/css/colors/ectoplasm/colors.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","q�X�x�B7�^�QM%","n�*�{[$��#\';�oI]P�z�9�`pw","","0","?"),
("��wt�H���-s�\0�n","wp-includes/js/wplink.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","ec Ƶ\n6�rI���","E�U� ȓMTZ@�1��&|��OV�H���p5��","","0","?"),
("����=֬H�@-i��","wp-includes/css/admin-bar-rtl.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","��7#4!%�t����","!�al��l���jz!Bu����x^�uR}","","0","?"),
("�������1��:","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/banners/huge-sale.svg","0","�0#5	���Ϟr,�","�0#5	���Ϟr,�","���E��k���c.q��)�eWzB��k4,","","0","?"),
("�֔��ߚy(qD�w�","wp-content/plugins/wordfence/models/common/wfGeoIP2.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�YJs@j���r�jtm","�3ÑѲs��
("����+6����SW��i#","wp-content/themes/flatsome/inc/functions/function-setup.php","0","��A5�������-","��A5�������-","�(�\n1�~��N���Q���4:����q���","","0","?"),
("���p!��g����U�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/Scope/MethodScopeUnitTest.php","0",")%���������{U",")%���������{U","N\"�jn��ڰ_Ne*�H�udH�r@X���I:�W","","0","?"),
("��h�L���JH�X#0","wp-content/plugins/wordfence/lib/wfUnlockMsg.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","&�|��\'�\"��5Is�","����:��%�����oz���N�]	�&��4U�","","0","?"),
("��)K�W&\'E��F%�","wp-content/plugins/contact-form-7/includes/l10n.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","K�7b�\"և�q���Z","�W�C�i�vt���\'P\'��Ȩ_˺���q[M2","","0","?"),
("���^��\'�q���0��","wp-links-opml.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","U���Od\'\"�I�F��b","N~8}:�!�ʺZ�Ο*����03�","","0","?"),
("�8�ac�=#��a�J�","wp-content/themes/flatsome/woocommerce/layouts/headers/category-title-featured.php","0","�4\"��p!���(�","�4\"��p!���(�","r��7>���h2��9X�p�։F�n��\'�O","","0","?"),
("�%n��Tߒ	^�gXΰ","wp-admin/js/inline-edit-post.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�W�=�N5�Ԕ�!e\n","�_�~)<�=�pŚ�Z��b�/H��WNc�","","0","?"),
("�0\'A\"6,�j�B�T��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/nav.svg","0","�Q�S�BKQ��KRa��","�Q�S�BKQ��KRa��","��\'7�Ve���<�8?R.W�z[XM�ْe�","","0","?"),
("�2m¥�i�Nec^�i\\","wp-content/themes/flatsome/inc/admin/kirki/field/class-kirki-field-custom.php","0","��Q�
("�3��aD�w�P����q","wp-admin/includes/class-theme-upgrader.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���h�?�:�ԡ��","d�o8�w:Ϣ�y��ܷ;�h=t3��h��)��","","0","?"),
("�a��>Fb#`u�O�","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Generic/Sniffs/PHP/BacktickOperatorSniff.php","0","��\\P��~�.Ws�","��\\P��~�.Ws�","P��2`��\'G(X5�!\0!�Y|f,���_�","","0","?"),
("�f�)
("���֬�{�_����*;","wp-content/themes/flatsome/inc/admin/kirki/core/class-kirki-field.php","0","Vg����
("��C���Z���f�q�ŗ","wp-content/plugins/wp-rocket/vendor/composer/autoload_real.php","0","�1[�p��� ���D","�1[�p��� ���D","�PMՔ�XF�pQb��W�Ϯ�W��N�Ei�d","","0","?"),
("�����\0����d�+��","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/price_table.svg","0","�I����]�1j�}","�I����]�1j�}","n�쇭�fy�z۲$X!`7������{@X�","","0","?"),
("��n&���n�!崬�","wp-admin/css/site-icon.min.css","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","l�ˁx�J��TG���","�+���W���V��3�(qF����r;�|^�@��","","0","?"),
("������m��?p<	3","wp-content/themes/flatsome/woocommerce/single-product/w2-product-image.php","0","�bW��D�g���@i�","�bW��D�g���@i�","����J=hJ�A����٘�~��dӒƎz","","0","?"),
("��Z���V���WI.�","wp-content/themes/flatsome/inc/admin/customizer/img/nav-pills.svg","0","�����*\nw�*�o","�����*\nw�*�o","
("������4�7F��H��","wp-content/themes/flatsome/inc/builder/shortcodes/values/line-height.php","0","�3E�%�40�pcթ`u","�3E�%�40�pcթ`u","a>\\F�.���
("���F���0ۂ^����","wp-content/plugins/wp-rocket/inc/admin/updater.php","0","օ�]�b)�]��( ?","օ�]�b)�]��( ?","�U�l����z�B~�����jq0�l�#��2�؄m-","","0","?"),
("�⡦�9G�Øc�*^�","wp-content/themes/flatsome/inc/builder/core/server/src/Collections/Elements.php","0","��4�DL5�U�Ф_","��4�DL5�U�Ф_","��6�Hɤ�]�����?�H]�&���Dt","","0","?"),
("��h�~���֓(�9","wp-content/themes/flatsome/inc/builder/core/server/helpers/options.php","0","��᭠�`��&
("���]j�l�\'����/x5","wp-includes/js/wp-sanitize.js","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�-�4	�f���\"��_!","v�3��]�?ȏ����C�r�it�!bH]��B\"","","0","?"),
("��:q$�/,e4?;","wp-content/themes/flatsome/inc/admin/kirki/assets/vendor/selectWoo/js/i18n/sv.js","0","�=�1���2f�J\0}�","�=�1���2f�J\0}�","qx���s%l�j\n��Ϊ;zĚ!�c$�Ї@)�#","","0","?"),
("��l7`\'��Zj����","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Standards/Squiz/Tests/PHP/ForbiddenFunctionsUnitTest.php","0","�Ғ�� ��|�+*�","�Ғ�� ��|�+*�","#�:ٚ����9��۰���ɋ_RE�1iSk�1*","","0","?"),
("�%����� ��J|","wp-content/themes/flatsome/woocommerce/global/breadcrumb.php","0","����5��t���","����5��t���","�����2U�qQ�f����z{�|�Oa�[�","","0","?"),
("�-�,�z����Թ�h\n","wp-content/themes/flatsome/inc/shortcodes/buttons.php","0","R}4�J����0u�eS","R}4�J����0u�eS","=�O�w\n(��럎	�v��g6�.��`X","","0","?"),
("�2X69G3��+}A�6","wp-content/plugins/wordfence/views/waf/option-whitelist.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","Ψ��-˯��3��w�","G�_`8�B���؎P\n���\",�\'��H���Ũ","","0","?"),
("�5����
("�8�������P5aĨ�	","wp-includes/images/smilies/icon_wink.gif","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","�O�Z���g9�4�","�[�mHM�R��6Jb�K��r����m�K���M","","0","?"),
("�?��D�A�c<qsNr","wp-content/themes/flatsome/inc/builder/shortcodes/thumbnails/row-3-col-dashed.svg","0","]��^fu%)�����","]��^fu%)�����","���U�&w�.�.��6\\�S��vja~,�	)�v","","0","?"),
("�A��4�;P��>+��","wp-content/themes/flatsome/inc/admin/customizer/img/text-top.svg","0","���§I�Wzm\"J","���§I�Wzm\"J","P ;�&��F�όi�34���}45��","","0","?"),
("�I���}��\'L��","wp-content/plugins/wp-rocket/vendor/squizlabs/php_codesniffer/src/Generators/HTML.php","0","�����!�D��}n�甍","�����!�D��}n�甍","*���<k��y��LY�Ө/��2���\0��f","","0","?"),
("�R�0���t���]��","wp-content/plugins/contact-form-7/includes/contact-form-template.php","1","\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0","���_��i/Y�����","4��/#��Oh�i�-\n\\�z�����","","0","?"),
("�[9)�>��������v","wp-content/themes/flatsome/assets/js/builder/core/editor.js","0","��\"A���]0j�q�Q","��\"A���]0j�q�Q","�B~<+�	\0E�S��` ���x�h4�p�","","0","?"),
("�
("�