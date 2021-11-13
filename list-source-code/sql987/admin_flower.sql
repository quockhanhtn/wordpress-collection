SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w155`
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
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2017-03-17 09:48:26","2017-03-17 09:48:26","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=7409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/flower","yes"),
("2","home","https://bizhostvn.com/w/flower","yes"),
("3","blogname","flower","yes"),
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
("21","default_pingback_flag","1","yes"),
("22","posts_per_page","10","yes"),
("23","date_format","j F, Y","yes"),
("24","time_format","g:i a","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:231:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:48:\"(([^/]+/)*yeu-thich)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:31:\"(([^/]+/)*yeu-thich)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:11:\"san-pham/?$\";s:27:\"index.php?post_type=product\";s:41:\"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"san-pham/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"san-pham/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:11:\"sidebars/?$\";s:27:\"index.php?post_type=sidebar\";s:41:\"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:36:\"sidebars/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:28:\"sidebars/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=sidebar&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"danh-muc-san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:36:\"sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sidebars/([^/]+)/embed/?$\";s:40:\"index.php?sidebar=$matches[1]&embed=true\";s:29:\"sidebars/([^/]+)/trackback/?$\";s:34:\"index.php?sidebar=$matches[1]&tb=1\";s:49:\"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:44:\"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:37:\"sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&paged=$matches[2]\";s:44:\"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&cpage=$matches[2]\";s:34:\"sidebars/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?sidebar=$matches[1]&wc-api=$matches[3]\";s:40:\"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sidebar=$matches[1]&page=$matches[2]\";s:25:\"sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:9:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:3;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:6;s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:27:\"woosidebars/woosidebars.php\";i:9;s:34:\"yith-woocommerce-wishlist/init.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("40","template","flatsome","yes"),
("41","stylesheet","flatsome","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:7:\"Hotline\";s:4:\"text\";s:185:\"Gọi mua hàng <strong>1800.1060</strong> (7:30 - 22:00)<br>\nGọi thuê hoa <strong>1800.1062</strong> (8:00 - 21:30)<br>\nGọi điện hoa <strong>1800.1064</strong> (8:00 - 21:00)\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes"),
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","WPLANG","vi","yes"),
("95","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("100","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:4:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:28:\"ultimatefacebookpageplugin-2\";}s:12:\"shop-sidebar\";a:4:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:22:\"woocommerce_products-2\";i:3;s:31:\"woocommerce_product_tag_cloud-2\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO bz_options VALUES
("101","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_nav_menu","a:3:{i:2;a:2:{s:5:\"title\";s:10:\"Thông tin\";s:8:\"nav_menu\";i:12;}i:3;a:2:{s:5:\"title\";s:12:\"Sản phẩm\";s:8:\"nav_menu\";i:12;}s:12:\"_multiwidget\";i:1;}","yes"),
("105","cron","a:16:{i:1558051115;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558052269;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558054701;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558077636;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558086508;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558086509;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558086551;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558093710;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558096404;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099236;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099246;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558110036;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558112400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558113528;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("106","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489744288;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("146","current_theme","Flatsome","yes"),
("147","theme_mods_flatsome","a:64:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Fri, 17 Mar 2017 09:51:32 +0000\";s:18:\"custom_css_post_id\";i:58;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:12;s:14:\"primary_mobile\";i:12;s:11:\"top_bar_nav\";i:21;}s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";}s:9:\"type_size\";s:3:\"100\";s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";}s:9:\"site_logo\";s:74:\"https://bizhostvn.com/w/flower/wp-content/uploads/2017/07/BIZHOST-DEMO.png\";s:10:\"logo_width\";s:3:\"200\";s:12:\"logo_padding\";s:1:\"0\";s:10:\"grid_style\";s:5:\"grid1\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:17:\"add_to_cart_style\";s:7:\"outline\";s:22:\"sale_bubble_percentage\";s:1:\"1\";s:13:\"color_primary\";s:7:\"#2EA3F2\";s:15:\"color_secondary\";s:7:\"#69BD43\";s:11:\"color_links\";s:7:\"#2EA3F2\";s:17:\"color_links_hover\";s:7:\"#0088CC\";s:20:\"category_title_style\";s:15:\"featured-center\";s:27:\"category_header_transparent\";s:1:\"0\";s:15:\"breadcrumb_size\";s:5:\"small\";s:17:\"header_top_height\";s:2:\"30\";s:9:\"topbar_bg\";s:7:\"#EEEEEE\";s:17:\"nav_height_bottom\";s:2:\"16\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:11:\"topbar_left\";s:75:\"<strong class=\"uppercase\">Xin lỗi em chỉ là cô gái bán hoa</strong>\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:13:\"header_height\";s:3:\"100\";s:8:\"nav_size\";s:6:\"medium\";s:16:\"footer_left_text\";s:118:\"<div style=\"padding-top: 15px\"><a href=\"#\" target=\"_blank\">Thiết kế web</a> bởi <strong>webdesign</strong></div>\";s:16:\"type_size_mobile\";s:3:\"100\";s:13:\"color_success\";s:7:\"#FF9200\";s:18:\"category_row_count\";s:1:\"4\";s:15:\"dropdown_border\";s:7:\"#FFFFFF\";s:17:\"dropdown_nav_size\";s:3:\"100\";s:17:\"footer_2_bg_color\";s:7:\"#222222\";s:19:\"footer_bottom_color\";s:7:\"#171717\";s:12:\"topbar_color\";s:5:\"light\";s:13:\"nav_style_top\";s:7:\"divided\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("148","theme_switched","","yes"),
("149","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("150","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("152","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1489744777;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("153","woosidebars-version","1.4.3","yes"),
("154","woocommerce_default_country","VN","yes"),
("155","woocommerce_allowed_countries","all","yes"),
("156","woocommerce_all_except_countries","a:0:{}","yes"),
("157","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("158","woocommerce_ship_to_countries","","yes"),
("159","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("160","woocommerce_default_customer_address","geolocation","yes"),
("161","woocommerce_calc_taxes","no","yes"),
("162","woocommerce_demo_store","no","yes"),
("163","woocommerce_demo_store_notice","This is a demo store for testing purposes &mdash; no orders shall be fulfilled.","no"),
("164","woocommerce_currency","VND","yes"),
("165","woocommerce_currency_pos","right_space","yes"),
("166","woocommerce_price_thousand_sep",".","yes"),
("167","woocommerce_price_decimal_sep",",","yes"),
("168","woocommerce_price_num_decimals","0","yes"),
("169","woocommerce_weight_unit","kg","yes"),
("170","woocommerce_dimension_unit","cm","yes"),
("171","woocommerce_enable_review_rating","yes","yes"),
("172","woocommerce_review_rating_required","yes","no"),
("173","woocommerce_review_rating_verification_label","yes","no"),
("174","woocommerce_review_rating_verification_required","no","no"),
("175","woocommerce_shop_page_id","7","yes"),
("176","woocommerce_shop_page_display","","yes"),
("177","woocommerce_category_archive_display","","yes"),
("178","woocommerce_default_catalog_orderby","menu_order","yes"),
("179","woocommerce_cart_redirect_after_add","no","yes"),
("180","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("181","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"178\";s:6:\"height\";s:3:\"178\";s:4:\"crop\";i:1;}","yes"),
("182","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("183","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:2:\"60\";s:6:\"height\";s:2:\"60\";s:4:\"crop\";i:1;}","yes"),
("184","woocommerce_enable_lightbox","yes","yes"),
("185","woocommerce_manage_stock","yes","yes"),
("186","woocommerce_hold_stock_minutes","60","no"),
("187","woocommerce_notify_low_stock","yes","no"),
("188","woocommerce_notify_no_stock","yes","no"),
("189","woocommerce_stock_email_recipient","cuongiview@gmail.com","no"),
("190","woocommerce_notify_low_stock_amount","2","no"),
("191","woocommerce_notify_no_stock_amount","0","yes"),
("192","woocommerce_hide_out_of_stock_items","no","yes"),
("193","woocommerce_stock_format","","yes"),
("194","woocommerce_file_download_method","force","no"),
("195","woocommerce_downloads_require_login","no","no"),
("196","woocommerce_downloads_grant_access_after_payment","yes","no"),
("197","woocommerce_prices_include_tax","no","yes"),
("198","woocommerce_tax_based_on","shipping","yes"),
("199","woocommerce_shipping_tax_class","","yes"),
("200","woocommerce_tax_round_at_subtotal","no","yes"),
("201","woocommerce_tax_classes","Reduced Rate\nZero Rate","yes"),
("202","woocommerce_tax_display_shop","excl","yes"),
("203","woocommerce_tax_display_cart","excl","no"),
("204","woocommerce_price_display_suffix","","yes"),
("205","woocommerce_tax_total_display","itemized","no"),
("206","woocommerce_enable_shipping_calc","yes","no"),
("207","woocommerce_shipping_cost_requires_address","no","no"),
("208","woocommerce_ship_to_destination","billing","no"),
("209","woocommerce_enable_coupons","yes","yes"),
("210","woocommerce_calc_discounts_sequentially","no","no"),
("211","woocommerce_enable_guest_checkout","yes","no"),
("212","woocommerce_force_ssl_checkout","no","yes"),
("213","woocommerce_unforce_ssl_checkout","no","yes"),
("214","woocommerce_cart_page_id","8","yes"),
("215","woocommerce_checkout_page_id","9","yes"),
("216","woocommerce_terms_page_id","","no"),
("217","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("218","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("219","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("220","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("221","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("222","woocommerce_myaccount_page_id","10","yes"),
("223","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("224","woocommerce_enable_myaccount_registration","no","no"),
("225","woocommerce_enable_checkout_login_reminder","yes","no"),
("226","woocommerce_registration_generate_username","yes","no"),
("227","woocommerce_registration_generate_password","no","no"),
("228","woocommerce_myaccount_orders_endpoint","orders","yes"),
("229","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("230","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("231","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("232","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("233","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("234","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("235","woocommerce_logout_endpoint","customer-logout","yes"),
("236","woocommerce_email_from_name","Shop Thực Phẩm 2","no"),
("237","woocommerce_email_from_address","cuongiview@gmail.com","no"),
("238","woocommerce_email_header_image","","no"),
("239","woocommerce_email_footer_text","Shop Thực Phẩm 2 - Powered by WooCommerce","no"),
("240","woocommerce_email_base_color","#557da1","no");
INSERT INTO bz_options VALUES
("241","woocommerce_email_background_color","#f5f5f5","no"),
("242","woocommerce_email_body_background_color","#fdfdfd","no"),
("243","woocommerce_email_text_color","#505050","no"),
("244","woocommerce_api_enabled","yes","yes"),
("248","woocommerce_db_version","2.6.14","yes"),
("250","yit_recently_activated","a:0:{}","yes"),
("255","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012680;}","yes"),
("256","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("257","yith_wcwl_frontend_css_colors","s:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";","yes"),
("261","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("262","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("263","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("264","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("265","widget_woocommerce_price_filter","a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Lọc theo giá\";}s:12:\"_multiwidget\";i:1;}","yes"),
("266","widget_woocommerce_product_categories","a:2:{i:2;a:7:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("267","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("268","widget_woocommerce_product_tag_cloud","a:2:{i:2;a:1:{s:5:\"title\";s:23:\"Từ khóa sản phẩm\";}s:12:\"_multiwidget\";i:1;}","yes"),
("269","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:24:\"Sản phẩm giảm giá\";s:6:\"number\";i:5;s:4:\"show\";s:6:\"onsale\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("270","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("271","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("272","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("273","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("274","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("277","woocommerce_meta_box_errors","a:0:{}","yes"),
("278","yith_wcwl_enabled","yes","yes"),
("279","yith_wcwl_wishlist_title","My wishlist on Shop Thực Phẩm 2","yes"),
("280","yith_wcwl_wishlist_page_id","6","yes"),
("281","yith_wcwl_redirect_cart","no","yes"),
("282","yith_wcwl_remove_after_add_to_cart","yes","yes"),
("283","yith_wcwl_add_to_wishlist_text","Add to Wishlist","yes"),
("284","yith_wcwl_browse_wishlist_text","Browse Wishlist","yes"),
("285","yith_wcwl_already_in_wishlist_text","The product is already in the wishlist!","yes"),
("286","yith_wcwl_product_added_text","Product added!","yes"),
("287","yith_wcwl_add_to_cart_text","Add to Cart","yes"),
("288","yith_wcwl_price_show","yes","yes"),
("289","yith_wcwl_add_to_cart_show","yes","yes"),
("290","yith_wcwl_stock_show","yes","yes"),
("291","yith_wcwl_show_dateadded","no","yes"),
("292","yith_wcwl_repeat_remove_button","no","yes"),
("293","yith_wcwl_use_button","no","yes"),
("294","yith_wcwl_custom_css","","yes"),
("295","yith_wcwl_frontend_css","yes","yes"),
("296","yith_wcwl_rounded_corners","yes","yes"),
("297","yith_wcwl_add_to_wishlist_icon","none","yes"),
("298","yith_wcwl_add_to_cart_icon","fa-shopping-cart","yes"),
("299","yith_wcwl_share_fb","yes","yes"),
("300","yith_wcwl_share_twitter","yes","yes"),
("301","yith_wcwl_share_pinterest","yes","yes"),
("302","yith_wcwl_share_googleplus","yes","yes"),
("303","yith_wcwl_share_email","yes","yes"),
("304","yith_wcwl_socials_title","My wishlist on Shop Thực Phẩm 2","yes"),
("305","yith_wcwl_socials_text","","yes"),
("306","yith_wcwl_socials_image_url","","yes"),
("307","yith_wfbt_enable_integration","yes","yes"),
("308","yith-wcwl-page-id","6","yes"),
("309","yith_wcwl_version","2.0.16","yes"),
("310","yith_wcwl_db_version","2.0.0","yes"),
("311","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("312","yith_wcwl_general_videobox","a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:117:\"http://localhost/vifonic/shop_thuc_pham_2/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}","yes"),
("323","woocommerce_paypal-ec_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("324","woocommerce_stripe_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("325","woocommerce_paypal_settings","a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:20:\"cuongiview@gmail.com\";}","yes"),
("326","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("327","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("328","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("329","_transient_shipping-transient-version","1489745303","yes"),
("338","woocommerce_allow_tracking","no","yes"),
("354","_transient_product_query-transient-version","1490144614","yes"),
("355","_transient_product-transient-version","1490144614","yes"),
("363","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}","yes"),
("369","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("469","_transient_woocommerce_cache_excluded_uris","a:6:{i:0;s:3:\"p=8\";i:1;s:10:\"/gio-hang/\";i:2;s:3:\"p=9\";i:3;s:12:\"/thanh-toan/\";i:4;s:4:\"p=10\";i:5;s:11:\"/tai-khoan/\";}","yes"),
("470","category_children","a:0:{}","yes"),
("1381","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531264660;}","no"),
("2090","dbprefix_old_dbprefix","wp_","yes"),
("2091","dbprefix_new","bz_","yes"),
("4440","widget_ultimatefacebookpageplugin","a:2:{i:2;a:10:{s:5:\"title\";s:9:\"Facebook \";s:4:\"name\";s:8:\"Facebook\";s:4:\"href\";s:47:\"https://www.facebook.com/FacebookforDevelopers/\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"200\";s:10:\"hide_cover\";s:5:\"false\";s:4:\"face\";s:4:\"true\";s:6:\"header\";s:4:\"true\";s:4:\"post\";s:4:\"true\";s:4:\"lang\";s:5:\"en_US\";}s:12:\"_multiwidget\";i:1;}","yes"),
("4444","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4445","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4446","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4447","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4448","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("7138","recovery_keys","a:0:{}","yes"),
("7140","_transient_timeout_wc_term_counts","1560062226","no"),
("7141","_transient_wc_term_counts","a:9:{i:7;s:1:\"5\";i:9;s:1:\"5\";i:8;s:1:\"5\";i:11;s:1:\"4\";i:6;s:1:\"8\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";}","no"),
("7142","_transient_timeout_wc_shipping_method_count_1_1489745303","1559910400","no"),
("7143","_transient_wc_shipping_method_count_1_1489745303","0","no"),
("7169","_transient_timeout_wc_products_onsale","1560062226","no"),
("7170","_transient_wc_products_onsale","a:4:{i:0;i:16;i:1;i:18;i:2;i:26;i:3;i:28;}","no"),
("7198","_transient_timeout_external_ip_address_103.131.71.89","1558224676","no"),
("7199","_transient_external_ip_address_103.131.71.89","103.74.117.155","no"),
("7214","_transient_timeout_external_ip_address_103.131.71.72","1558295640","no"),
("7215","_transient_external_ip_address_103.131.71.72","103.74.117.155","no"),
("7217","_transient_timeout_external_ip_address_103.131.71.73","1558295657","no"),
("7218","_transient_external_ip_address_103.131.71.73","103.74.117.155","no"),
("7221","_transient_timeout_external_ip_address_103.131.71.81","1558295940","no"),
("7222","_transient_external_ip_address_103.131.71.81","103.74.117.155","no"),
("7248","_transient_timeout_external_ip_address_103.131.71.87","1558395915","no"),
("7249","_transient_external_ip_address_103.131.71.87","103.74.117.155","no"),
("7250","_transient_timeout_external_ip_address_103.131.71.75","1558395929","no");
INSERT INTO bz_options VALUES
("7251","_transient_external_ip_address_103.131.71.75","103.74.117.155","no"),
("7267","_transient_timeout_wc_related_24","1558137493","no"),
("7268","_transient_wc_related_24","a:9:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:2:\"22\";i:4;s:2:\"26\";i:5;s:2:\"28\";i:6;s:2:\"30\";i:7;s:2:\"31\";s:50:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=24\";a:8:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:2:\"22\";i:4;s:2:\"26\";i:5;s:2:\"28\";i:6;s:2:\"30\";i:7;s:2:\"31\";}}","no"),
("7283","_transient_timeout_wc_related_31","1558076596","no"),
("7284","_transient_wc_related_31","a:8:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:2:\"22\";i:4;s:2:\"24\";i:5;s:2:\"26\";i:6;s:2:\"28\";i:7;s:2:\"30\";}","no"),
("7292","wp_page_for_privacy_policy","0","yes"),
("7293","show_comments_cookies_opt_in","1","yes"),
("7294","db_upgraded","","yes"),
("7297","_transient_timeout_wc_related_18","1558076696","no"),
("7298","_transient_wc_related_18","a:8:{i:0;s:2:\"16\";i:1;s:2:\"20\";i:2;s:2:\"22\";i:3;s:2:\"24\";i:4;s:2:\"26\";i:5;s:2:\"28\";i:6;s:2:\"30\";i:7;s:2:\"31\";}","no"),
("7311","_transient_timeout_yit_panel_sidebar_remote_widgets","1558233642","no"),
("7312","_transient_yit_panel_sidebar_remote_widgets","a:0:{}","no"),
("7313","_transient_timeout_yit_panel_sidebar_remote_widgets_update","1558098984","no"),
("7314","_transient_yit_panel_sidebar_remote_widgets_update","1","no"),
("7315","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558617385","no"),
("7316","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("7317","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558617386","no"),
("7318","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("7319","_transient_timeout_wc_report_sales_by_date","1558098986","no"),
("7320","_transient_wc_report_sales_by_date","a:7:{s:32:\"bfb42b335747ed181961647f9cbcd426\";a:0:{}s:32:\"d585ab3263b99d0b7992f8c0ac189af6\";a:0:{}s:32:\"eac21d54baaafb92d39aef9fb2cc4cee\";a:0:{}s:32:\"38c4f9f75968095ef7b36fd03d699dd0\";N;s:32:\"38d6a3245faf30c0639a9c45011866a0\";a:0:{}s:32:\"7eb3df42ef4ec2023592fa1d7a8d9a02\";a:0:{}s:32:\"c9f9acdbb275ce175d3f1e3c0b4d6386\";a:0:{}}","no"),
("7321","_transient_timeout_wc_admin_report","1558098986","no"),
("7322","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("7323","_transient_timeout_wc_low_stock_count","1560604586","no"),
("7324","_transient_wc_low_stock_count","0","no"),
("7325","_transient_timeout_wc_outofstock_count","1560604586","no"),
("7326","_transient_wc_outofstock_count","0","no"),
("7327","can_compress_scripts","0","no"),
("7328","_transient_timeout_plugin_slugs","1558099081","no"),
("7329","_transient_plugin_slugs","a:10:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:3;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:6;s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:27:\"woosidebars/woosidebars.php\";i:9;s:34:\"yith-woocommerce-wishlist/init.php\";}","no"),
("7330","_transient_timeout_wc_upgrade_notice_2.6.14","1558099030","no"),
("7331","_transient_wc_upgrade_notice_2.6.14","","no"),
("7338","nsl-version","3.0.20","yes"),
("7339","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("7343","_transient_timeout_external_ip_address_113.173.5.101","1558617635","no"),
("7344","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("7345","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("7346","current_theme_supports_woocommerce","yes","yes"),
("7347","woocommerce_queue_flush_rewrite_rules","no","yes"),
("7350","woocommerce_store_address","","yes"),
("7351","woocommerce_store_address_2","","yes"),
("7352","woocommerce_store_city","","yes"),
("7353","woocommerce_store_postcode","","yes"),
("7354","woocommerce_placeholder_image","144","yes"),
("7355","woocommerce_enable_reviews","yes","yes"),
("7356","woocommerce_shipping_debug_mode","no","yes"),
("7357","woocommerce_erasure_request_removes_order_data","no","no"),
("7358","woocommerce_erasure_request_removes_download_data","no","no"),
("7359","woocommerce_allow_bulk_remove_personal_data","no","no"),
("7360","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("7361","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("7362","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("7363","woocommerce_trash_pending_orders","","no"),
("7364","woocommerce_trash_failed_orders","","no"),
("7365","woocommerce_trash_cancelled_orders","","no"),
("7366","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("7367","woocommerce_show_marketplace_suggestions","yes","no"),
("7368","woocommerce_single_image_width","600","yes"),
("7369","woocommerce_thumbnail_image_width","300","yes"),
("7370","woocommerce_checkout_highlight_required_fields","yes","yes"),
("7371","product_cat_children","a:0:{}","yes"),
("7372","default_product_cat","31","yes"),
("7373","woocommerce_version","3.6.2","yes"),
("7375","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("7376","_transient_timeout__woocommerce_helper_subscriptions","1558013737","no"),
("7377","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("7378","_transient_timeout__woocommerce_helper_updates","1558056037","no"),
("7379","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558012837;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("7382","_transient_timeout_external_ip_address_103.74.117.155","1558617639","no"),
("7383","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("7386","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558051096;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("7388","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558051099;s:7:\"checked\";a:1:{s:8:\"flatsome\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("7394","_transient_timeout_wc_related_20","1558106316","no"),
("7395","_transient_wc_related_20","a:1:{s:50:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=20\";a:8:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"22\";i:3;s:2:\"24\";i:4;s:2:\"26\";i:5;s:2:\"28\";i:6;s:2:\"31\";i:7;s:2:\"30\";}}","no"),
("7398","_transient_timeout_wc_related_28","1558112293","no"),
("7399","_transient_wc_related_28","a:1:{s:50:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=28\";a:8:{i:0;s:2:\"16\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:2:\"22\";i:4;s:2:\"24\";i:5;s:2:\"26\";i:6;s:2:\"31\";i:7;s:2:\"30\";}}","no"),
("7400","_transient_timeout_wc_shipping_method_count_legacy","1560617895","no"),
("7401","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1489745303\";s:5:\"value\";i:0;}","no"),
("7406","_site_transient_timeout_theme_roots","1558052898","no"),
("7407","_site_transient_theme_roots","a:1:{s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("7408","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558051100;s:7:\"checked\";a:9:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:49:\"nextend-google-connect/nextend-google-connect.php\";s:5:\"1.6.1\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.20\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"2.2.10\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.20\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.20.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"2.2.10\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.10.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("4","5","_form","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]"),
("5","5","_mail","a:8:{s:7:\"subject\";s:37:\"Shop Thực Phẩm 2 \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <cuongiview@gmail.com>\";s:4:\"body\";s:200:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop Thực Phẩm 2 (http://localhost/vifonic/shop_thuc_pham_2)\";s:9:\"recipient\";s:20:\"cuongiview@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("6","5","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:37:\"Shop Thực Phẩm 2 \"[your-subject]\"\";s:6:\"sender\";s:43:\"Shop Thực Phẩm 2 <cuongiview@gmail.com>\";s:4:\"body\";s:142:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop Thực Phẩm 2 (http://localhost/vifonic/shop_thuc_pham_2)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: cuongiview@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("7","5","_messages","a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}"),
("8","5","_additional_settings",""),
("9","5","_locale","vi"),
("10","8","_edit_lock","1489745462:1"),
("11","8","_edit_last","1"),
("12","8","_wp_page_template","default"),
("13","9","_edit_last","1"),
("14","9","_wp_page_template","default"),
("15","9","_edit_lock","1489745473:1"),
("16","10","_edit_last","1"),
("17","10","_wp_page_template","default"),
("18","10","_edit_lock","1489771730:1"),
("19","7","_edit_last","1"),
("20","7","_wp_page_template","default"),
("21","7","_edit_lock","1489771853:1"),
("22","2","_edit_lock","1531268169:1"),
("23","2","_edit_last","1"),
("24","2","_footer","normal"),
("25","16","_edit_last","1"),
("26","16","_edit_lock","1490144499:1"),
("29","16","_visibility","visible"),
("30","16","_stock_status","instock"),
("31","16","_thumbnail_id","89"),
("32","16","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("33","16","total_sales","0"),
("34","16","_downloadable","no"),
("35","16","_virtual","no"),
("36","16","_purchase_note",""),
("37","16","_featured","no"),
("38","16","_weight",""),
("39","16","_length",""),
("40","16","_width",""),
("41","16","_height",""),
("42","16","_sku",""),
("43","16","_product_attributes","a:0:{}"),
("44","16","_regular_price","16000000"),
("45","16","_sale_price","15000000"),
("46","16","_sale_price_dates_from",""),
("47","16","_sale_price_dates_to",""),
("48","16","_price","15000000"),
("49","16","_sold_individually",""),
("50","16","_manage_stock","no"),
("51","16","_backorders","no"),
("52","16","_stock",""),
("53","16","_upsell_ids","a:0:{}"),
("54","16","_crosssell_ids","a:0:{}"),
("55","16","_product_version","2.6.14"),
("56","16","_product_image_gallery",""),
("57","18","_edit_last","1"),
("58","18","_edit_lock","1490144470:1"),
("59","18","_visibility","visible"),
("60","18","_stock_status","instock"),
("61","18","_thumbnail_id","88"),
("62","18","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("63","18","_downloadable","no"),
("64","18","_virtual","no"),
("65","18","_purchase_note",""),
("66","18","_featured","no"),
("67","18","_weight",""),
("68","18","_length",""),
("69","18","_width",""),
("70","18","_height",""),
("71","18","_product_attributes","a:0:{}"),
("72","18","_regular_price","160000"),
("73","18","_sale_price","120000"),
("74","18","_sale_price_dates_from",""),
("75","18","_sale_price_dates_to",""),
("76","18","_price","120000"),
("77","18","_sold_individually",""),
("78","18","_manage_stock","no"),
("79","18","_backorders","no"),
("80","18","_stock",""),
("81","18","_upsell_ids","a:0:{}"),
("82","18","_crosssell_ids","a:0:{}"),
("83","18","_product_version","2.6.14"),
("84","18","_product_image_gallery",""),
("88","16","_wc_rating_count","a:0:{}"),
("89","16","_wc_average_rating","0"),
("92","18","total_sales","0"),
("93","18","_sku",""),
("94","20","_edit_last","1"),
("95","20","_edit_lock","1490144472:1"),
("98","20","_visibility","visible"),
("99","20","_stock_status","instock"),
("100","20","_thumbnail_id","90"),
("101","20","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("102","20","total_sales","0"),
("103","20","_downloadable","no"),
("104","20","_virtual","no"),
("105","20","_purchase_note",""),
("106","20","_featured","no"),
("107","20","_weight",""),
("108","20","_length",""),
("109","20","_width",""),
("110","20","_height",""),
("111","20","_sku","");
INSERT INTO bz_postmeta VALUES
("112","20","_product_attributes","a:0:{}"),
("113","20","_regular_price",""),
("114","20","_sale_price",""),
("115","20","_sale_price_dates_from",""),
("116","20","_sale_price_dates_to",""),
("117","20","_price",""),
("118","20","_sold_individually",""),
("119","20","_manage_stock","no"),
("120","20","_backorders","no"),
("121","20","_stock",""),
("122","20","_upsell_ids","a:0:{}"),
("123","20","_crosssell_ids","a:0:{}"),
("124","20","_product_version","2.6.14"),
("125","20","_product_image_gallery",""),
("126","18","_wc_rating_count","a:0:{}"),
("127","18","_wc_average_rating","0"),
("128","20","_wc_rating_count","a:0:{}"),
("129","20","_wc_average_rating","0"),
("130","22","_edit_last","1"),
("131","22","_edit_lock","1490144471:1"),
("134","22","_visibility","visible"),
("135","22","_stock_status","instock"),
("136","22","_thumbnail_id","87"),
("137","22","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("138","22","total_sales","0"),
("139","22","_downloadable","no"),
("140","22","_virtual","no"),
("141","22","_purchase_note",""),
("142","22","_featured","no"),
("143","22","_weight",""),
("144","22","_length",""),
("145","22","_width",""),
("146","22","_height",""),
("147","22","_sku",""),
("148","22","_product_attributes","a:0:{}"),
("149","22","_regular_price","600000"),
("150","22","_sale_price",""),
("151","22","_sale_price_dates_from",""),
("152","22","_sale_price_dates_to",""),
("153","22","_price","600000"),
("154","22","_sold_individually",""),
("155","22","_manage_stock","no"),
("156","22","_backorders","no"),
("157","22","_stock",""),
("158","22","_upsell_ids","a:0:{}"),
("159","22","_crosssell_ids","a:0:{}"),
("160","22","_product_version","2.6.14"),
("161","22","_product_image_gallery",""),
("162","24","_edit_last","1"),
("163","24","_edit_lock","1490144325:1"),
("166","24","_visibility","visible"),
("167","24","_stock_status","instock"),
("168","24","_thumbnail_id","89"),
("169","24","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("170","24","total_sales","0"),
("171","24","_downloadable","no"),
("172","24","_virtual","no"),
("173","24","_purchase_note",""),
("174","24","_featured","no"),
("175","24","_weight",""),
("176","24","_length",""),
("177","24","_width",""),
("178","24","_height",""),
("179","24","_sku",""),
("180","24","_product_attributes","a:0:{}"),
("181","24","_regular_price",""),
("182","24","_sale_price",""),
("183","24","_sale_price_dates_from",""),
("184","24","_sale_price_dates_to",""),
("185","24","_price",""),
("186","24","_sold_individually",""),
("187","24","_manage_stock","no"),
("188","24","_backorders","no"),
("189","24","_stock",""),
("190","24","_upsell_ids","a:0:{}"),
("191","24","_crosssell_ids","a:0:{}"),
("192","24","_product_version","2.6.14"),
("193","24","_product_image_gallery",""),
("194","26","_edit_last","1"),
("195","26","_edit_lock","1490144275:1"),
("198","26","_visibility","visible"),
("199","26","_stock_status","instock"),
("200","26","_thumbnail_id","87"),
("201","26","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("202","26","total_sales","0"),
("203","26","_downloadable","no"),
("204","26","_virtual","no"),
("205","26","_purchase_note",""),
("206","26","_featured","no"),
("207","26","_weight",""),
("208","26","_length",""),
("209","26","_width",""),
("210","26","_height",""),
("211","26","_sku",""),
("212","26","_product_attributes","a:0:{}"),
("213","26","_regular_price","200000"),
("214","26","_sale_price","190000"),
("215","26","_sale_price_dates_from",""),
("216","26","_sale_price_dates_to",""),
("217","26","_price","190000");
INSERT INTO bz_postmeta VALUES
("218","26","_sold_individually",""),
("219","26","_manage_stock","no"),
("220","26","_backorders","no"),
("221","26","_stock",""),
("222","26","_upsell_ids","a:0:{}"),
("223","26","_crosssell_ids","a:0:{}"),
("224","26","_product_version","2.6.14"),
("225","26","_product_image_gallery",""),
("226","24","_wc_rating_count","a:0:{}"),
("227","24","_wc_average_rating","0"),
("228","22","_wc_rating_count","a:0:{}"),
("229","22","_wc_average_rating","0"),
("230","26","_wc_rating_count","a:0:{}"),
("231","26","_wc_average_rating","0"),
("232","28","_edit_last","1"),
("233","28","_edit_lock","1490143860:1"),
("236","28","_visibility","visible"),
("237","28","_stock_status","instock"),
("239","28","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("240","28","total_sales","0"),
("241","28","_downloadable","no"),
("242","28","_virtual","no"),
("243","28","_purchase_note",""),
("244","28","_featured","no"),
("245","28","_weight",""),
("246","28","_length",""),
("247","28","_width",""),
("248","28","_height",""),
("249","28","_sku",""),
("250","28","_product_attributes","a:0:{}"),
("251","28","_regular_price","250000"),
("252","28","_sale_price","220000"),
("253","28","_sale_price_dates_from",""),
("254","28","_sale_price_dates_to",""),
("255","28","_price","220000"),
("256","28","_sold_individually",""),
("257","28","_manage_stock","no"),
("258","28","_backorders","no"),
("259","28","_stock",""),
("260","28","_upsell_ids","a:0:{}"),
("261","28","_crosssell_ids","a:0:{}"),
("262","28","_product_version","2.6.14"),
("263","28","_product_image_gallery",""),
("264","30","_edit_last","1"),
("265","30","_edit_lock","1490144275:1"),
("266","30","_visibility","visible"),
("267","30","_stock_status","instock"),
("268","30","_thumbnail_id","88"),
("269","30","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("270","30","total_sales","0"),
("271","30","_downloadable","no"),
("272","30","_virtual","no"),
("273","30","_purchase_note",""),
("274","30","_featured","no"),
("275","30","_weight",""),
("276","30","_length",""),
("277","30","_width",""),
("278","30","_height",""),
("279","30","_sku",""),
("280","30","_product_attributes","a:0:{}"),
("281","30","_regular_price","490000"),
("282","30","_sale_price",""),
("283","30","_sale_price_dates_from",""),
("284","30","_sale_price_dates_to",""),
("285","30","_price","490000"),
("286","30","_sold_individually",""),
("287","30","_manage_stock","no"),
("288","30","_backorders","no"),
("289","30","_stock",""),
("290","30","_upsell_ids","a:0:{}"),
("291","30","_crosssell_ids","a:0:{}"),
("292","30","_product_version","2.6.14"),
("293","30","_product_image_gallery",""),
("294","31","_edit_last","1"),
("295","31","_edit_lock","1490144195:1"),
("296","31","_visibility","visible"),
("297","31","_stock_status","instock"),
("298","31","_thumbnail_id","85"),
("299","31","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("300","31","total_sales","0"),
("301","31","_downloadable","no"),
("302","31","_virtual","no"),
("303","31","_purchase_note",""),
("304","31","_featured","no"),
("305","31","_weight",""),
("306","31","_length",""),
("307","31","_width",""),
("308","31","_height",""),
("309","31","_sku",""),
("310","31","_product_attributes","a:0:{}"),
("311","31","_regular_price",""),
("312","31","_sale_price",""),
("313","31","_sale_price_dates_from",""),
("314","31","_sale_price_dates_to",""),
("315","31","_price",""),
("316","31","_sold_individually",""),
("317","31","_manage_stock","no"),
("318","31","_backorders","no"),
("319","31","_stock",""),
("320","31","_upsell_ids","a:0:{}");
INSERT INTO bz_postmeta VALUES
("321","31","_crosssell_ids","a:0:{}"),
("322","31","_product_version","2.6.14"),
("323","31","_product_image_gallery",""),
("324","30","_wc_rating_count","a:0:{}"),
("325","30","_wc_average_rating","0"),
("326","28","_wc_rating_count","a:0:{}"),
("327","28","_wc_average_rating","0"),
("328","31","_wc_rating_count","a:0:{}"),
("329","31","_wc_average_rating","0"),
("330","10","_footer","normal"),
("331","6","_edit_lock","1489771764:1"),
("332","6","_edit_last","1"),
("333","6","_footer","normal"),
("334","6","_wp_page_template","default"),
("335","35","_menu_item_type","post_type"),
("336","35","_menu_item_menu_item_parent","0"),
("337","35","_menu_item_object_id","2"),
("338","35","_menu_item_object","page"),
("339","35","_menu_item_target",""),
("340","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("341","35","_menu_item_xfn",""),
("342","35","_menu_item_url",""),
("344","36","_menu_item_type","post_type"),
("345","36","_menu_item_menu_item_parent","0"),
("346","36","_menu_item_object_id","7"),
("347","36","_menu_item_object","page"),
("348","36","_menu_item_target",""),
("349","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("350","36","_menu_item_xfn",""),
("351","36","_menu_item_url",""),
("353","37","_menu_item_type","taxonomy"),
("354","37","_menu_item_menu_item_parent","36"),
("355","37","_menu_item_object_id","6"),
("356","37","_menu_item_object","product_cat"),
("357","37","_menu_item_target",""),
("358","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("359","37","_menu_item_xfn",""),
("360","37","_menu_item_url",""),
("362","38","_menu_item_type","taxonomy"),
("363","38","_menu_item_menu_item_parent","36"),
("364","38","_menu_item_object_id","9"),
("365","38","_menu_item_object","product_cat"),
("366","38","_menu_item_target",""),
("367","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("368","38","_menu_item_xfn",""),
("369","38","_menu_item_url",""),
("371","39","_menu_item_type","taxonomy"),
("372","39","_menu_item_menu_item_parent","36"),
("373","39","_menu_item_object_id","7"),
("374","39","_menu_item_object","product_cat"),
("375","39","_menu_item_target",""),
("376","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("377","39","_menu_item_xfn",""),
("378","39","_menu_item_url",""),
("380","40","_menu_item_type","taxonomy"),
("381","40","_menu_item_menu_item_parent","36"),
("382","40","_menu_item_object_id","8"),
("383","40","_menu_item_object","product_cat"),
("384","40","_menu_item_target",""),
("385","40","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("386","40","_menu_item_xfn",""),
("387","40","_menu_item_url",""),
("389","41","_menu_item_type","taxonomy"),
("390","41","_menu_item_menu_item_parent","36"),
("391","41","_menu_item_object_id","11"),
("392","41","_menu_item_object","product_cat"),
("393","41","_menu_item_target",""),
("394","41","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("395","41","_menu_item_xfn",""),
("396","41","_menu_item_url",""),
("407","43","_menu_item_type","custom"),
("408","43","_menu_item_menu_item_parent","0"),
("409","43","_menu_item_object_id","43"),
("410","43","_menu_item_object","custom"),
("411","43","_menu_item_target",""),
("412","43","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("413","43","_menu_item_xfn",""),
("414","43","_menu_item_url","#"),
("416","44","_menu_item_type","custom"),
("417","44","_menu_item_menu_item_parent","0"),
("418","44","_menu_item_object_id","44"),
("419","44","_menu_item_object","custom"),
("420","44","_menu_item_target",""),
("421","44","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("422","44","_menu_item_xfn",""),
("423","44","_menu_item_url","#"),
("507","16","_wc_review_count","0"),
("510","20","_wc_review_count","0"),
("536","28","_wp_old_slug","macbook-pro"),
("537","85","_wp_attached_file","2017/03/hoa-khai-truong.jpg"),
("538","85","_wp_attachment_metadata","a:5:{s:5:\"width\";i:530;s:6:\"height\";i:530;s:4:\"file\";s:27:\"2017/03/hoa-khai-truong.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"hoa-khai-truong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hoa-khai-truong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoa-khai-truong-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"hoa-khai-truong-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("539","28","_thumbnail_id","85"),
("540","87","_wp_attached_file","2017/03/hoa-dep.jpg"),
("541","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:359;s:6:\"height\";i:359;s:4:\"file\";s:19:\"2017/03/hoa-dep.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoa-dep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoa-dep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"hoa-dep-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"hoa-dep-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("542","88","_wp_attached_file","2017/03/sp-2.jpg"),
("543","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:539;s:6:\"height\";i:539;s:4:\"file\";s:16:\"2017/03/sp-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"sp-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"sp-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"sp-2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"sp-2-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("544","89","_wp_attached_file","2017/03/gio-hoa.jpg"),
("545","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:583;s:6:\"height\";i:583;s:4:\"file\";s:19:\"2017/03/gio-hoa.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"gio-hoa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"gio-hoa-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"gio-hoa-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"gio-hoa-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("546","90","_wp_attached_file","2017/03/hoa-1.jpg"),
("547","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:361;s:6:\"height\";i:361;s:4:\"file\";s:17:\"2017/03/hoa-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hoa-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hoa-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"hoa-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"hoa-1-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("548","31","_wp_old_slug","samsung-galaxy-5s"),
("549","30","_wp_old_slug","apple-ipad"),
("550","26","_wp_old_slug","laptop-macbook-pro"),
("551","24","_wp_old_slug","apple-ipad-mini"),
("552","22","_wp_old_slug","blackberry-porsche"),
("553","20","_wp_old_slug","samsung-galaxy-s5"),
("554","18","_wp_old_slug","apple-iphone-5"),
("555","16","_wp_old_slug","apple-iphone-6-16g"),
("566","99","_wp_attached_file","2017/03/slide.jpg"),
("567","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1045;s:6:\"height\";i:440;s:4:\"file\";s:17:\"2017/03/slide.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"slide-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"slide-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"slide-768x323.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"slide-1024x431.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"slide-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"slide-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"slide-600x440.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"SLT-A58\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1400332853\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("568","100","_wp_attached_file","2017/03/slide2.jpg"),
("569","100","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1045;s:6:\"height\";i:440;s:4:\"file\";s:18:\"2017/03/slide2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x323.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide2-1024x431.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"slide2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"slide2-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"slide2-600x440.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("572","103","_wp_attached_file","2017/03/slider.jpg"),
("573","103","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1045;s:6:\"height\";i:445;s:4:\"file\";s:18:\"2017/03/slider.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slider-768x327.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slider-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"slider-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"slider-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"slider-600x445.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("574","104","_wp_attached_file","2017/03/slider2.jpg"),
("575","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1045;s:6:\"height\";i:445;s:4:\"file\";s:19:\"2017/03/slider2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x327.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:327;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"slider2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider2-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x445.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("577","106","_wp_attached_file","2017/03/blog1.jpg"),
("578","106","_wp_attachment_metadata","a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1298;s:4:\"file\";s:17:\"2017/03/blog1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog1-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog1-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"blog1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"blog1-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"blog1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("579","107","_wp_attached_file","2017/03/blog-thumb.jpg"),
("580","107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:330;s:6:\"height\";i:160;s:4:\"file\";s:22:\"2017/03/blog-thumb.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-thumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-thumb-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-thumb-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-thumb-178x160.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("581","109","_wp_attached_file","2017/03/blog-thumb2.jpg"),
("582","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:330;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2017/03/blog-thumb2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"blog-thumb2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"blog-thumb2-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-thumb2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"blog-thumb2-178x160.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("583","110","_wp_attached_file","2017/03/blog-thumb3.jpg"),
("584","110","_wp_attachment_metadata","a:5:{s:5:\"width\";i:330;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2017/03/blog-thumb3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"blog-thumb3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"blog-thumb3-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-thumb3-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"blog-thumb3-178x160.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("591","31","_wc_review_count","0"),
("594","1","_edit_lock","1490151504:1"),
("595","1","_edit_last","1"),
("596","1","_thumbnail_id","100"),
("599","1","_wp_old_slug","chao-moi-nguoi"),
("600","123","_edit_last","1"),
("601","123","_edit_lock","1490151546:1"),
("602","124","_wp_attached_file","2017/03/cuc-hoa-mi.jpg"),
("603","124","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:22:\"2017/03/cuc-hoa-mi.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cuc-hoa-mi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cuc-hoa-mi-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"cuc-hoa-mi-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cuc-hoa-mi-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("604","123","_thumbnail_id","124"),
("607","126","_edit_last","1"),
("608","126","_edit_lock","1490151600:1"),
("609","127","_wp_attached_file","2017/03/hoa-mong-cop.jpg"),
("610","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:469;s:4:\"file\";s:24:\"2017/03/hoa-mong-cop.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"hoa-mong-cop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"hoa-mong-cop-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"hoa-mong-cop-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"hoa-mong-cop-178x178.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"hoa-mong-cop-600x469.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("611","126","_thumbnail_id","127"),
("614","129","_edit_last","1"),
("615","129","_edit_lock","1506568082:1"),
("616","129","_thumbnail_id","99"),
("621","132","_menu_item_type","custom"),
("622","132","_menu_item_menu_item_parent","0"),
("623","132","_menu_item_object_id","132"),
("624","132","_menu_item_object","custom"),
("625","132","_menu_item_target",""),
("626","132","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("627","132","_menu_item_xfn",""),
("628","132","_menu_item_url","#"),
("630","133","_menu_item_type","custom"),
("631","133","_menu_item_menu_item_parent","0"),
("632","133","_menu_item_object_id","133"),
("633","133","_menu_item_object","custom"),
("634","133","_menu_item_target",""),
("635","133","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("636","133","_menu_item_xfn",""),
("637","133","_menu_item_url","#"),
("639","18","_wc_review_count","0"),
("640","28","_wc_review_count","0"),
("641","30","_wc_review_count","0"),
("642","24","_wc_review_count","0"),
("643","26","_wc_review_count","0"),
("644","22","_wc_review_count","0"),
("647","137","_wp_attached_file","2017/07/1.png"),
("648","137","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:75;s:4:\"file\";s:13:\"2017/07/1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:11:\"1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:12:\"1-178x75.png\";s:5:\"width\";i:178;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("653","140","_wp_attached_file","2017/07/BIZHOST-DEMO.png"),
("654","140","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/07/BIZHOST-DEMO.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"BIZHOST-DEMO-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-178x75.png\";s:5:\"width\";i:178;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("655","144","_wp_attached_file","woocommerce-placeholder.png"),
("656","144","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2017-03-17 09:48:26","2017-03-17 09:48:26","Cắm hoa không chỉ là nghệ thuật, nó còn mang đến niềm vui cuộc sống cho người phụ nữ. Nếu là một người yêu hoa hoặc muốn học loại nghệ thuật này, đừng bỏ qua 10 cách cắm hoa cơ bản sau đây.\n\n1. Cắm hoa hình kim tự tháp (chóp nón)\n\nĐây là cách cắm hoa cơ bản và phổ biến nhất trong các kiểu cắm hoa để bàn. Khi cắm hoa theo hình chóp nóng, các bông hoa sẽ được sắp xếp theo hướng nhọn và rất cao, chúng sẽ được cắm theo độ cao từ cao xuống thấp dần.\n\n2. Mô hình kiểu cắm hoa hình tam giác\n\nTrong quá trình cắm, các bông hoa chính sẽ được phân bổ đều, các hoa phụ sẽ được cắm xen thấp hơn và cắm sát ở phía dưới chân.<strong></strong>","10 cách cắm hoa đẹp bạn không ngờ tới","","publish","open","open","","10-cach-cam-hoa-dep-ban-khong-ngo-toi","","","2017-03-22 10:00:44","2017-03-22 03:00:44","","0","http://localhost/vifonic/shop_thuc_pham_2/?p=1","0","post","","1"),
("2","1","2017-03-17 09:48:26","2017-03-17 09:48:26","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n<h3 class=\"alt-font\">Quốc tế Phụ nữ</h3>\n[divider margin=\"3px\" color=\"rgb(255, 255, 255)\"]\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[title style=\"center\" text=\"bó hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[ux_banner height=\"200px\" bg=\"106\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h4 class=\"uppercase\"><strong>dịch vụ điện hoa</strong></h4>\nGọi ngay cho chúng tôi để đem đến món quà và sự bất ngờ cho người bạn yêu thương!\n\n[button text=\"Liên hệ ngay\" icon=\"icon-heart-o\" icon_pos=\"left\"]\n\n[/text_box]\n\n[/ux_banner]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","publish","closed","open","","trang-chu","","","2018-07-11 07:18:13","2018-07-11 00:18:13","","0","http://localhost/vifonic/shop_thuc_pham_2/?page_id=2","0","page","","0"),
("5","1","2017-03-17 09:59:36","2017-03-17 09:59:36","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nShop Thực Phẩm 2 \"[your-subject]\"\n[your-name] <cuongiview@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop Thực Phẩm 2 (http://localhost/vifonic/shop_thuc_pham_2)\ncuongiview@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nShop Thực Phẩm 2 \"[your-subject]\"\nShop Thực Phẩm 2 <cuongiview@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop Thực Phẩm 2 (http://localhost/vifonic/shop_thuc_pham_2)\n[your-email]\nReply-To: cuongiview@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.","Contact form 1","","publish","closed","closed","","contact-form-1","","","2017-03-17 09:59:36","2017-03-17 09:59:36","","0","http://localhost/vifonic/shop_thuc_pham_2/?post_type=wpcf7_contact_form&p=5","0","wpcf7_contact_form","","0"),
("6","1","2017-03-17 10:02:33","2017-03-17 10:02:33","[yith_wcwl_wishlist]","Yêu thích","","publish","closed","closed","","yeu-thich","","","2017-03-18 00:31:32","2017-03-17 17:31:32","","0","http://localhost/vifonic/shop_thuc_pham_2/wishlist/","0","page","","0"),
("7","1","2017-03-17 17:07:07","2017-03-17 10:07:07","","Sản phẩm","","publish","closed","closed","","san-pham","","","2017-03-18 00:30:53","2017-03-17 17:30:53","","0","http://localhost/vifonic/shop_thuc_pham_2/shop/","0","page","","0"),
("8","1","2017-03-17 17:07:08","2017-03-17 10:07:08","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2017-03-17 17:11:01","2017-03-17 10:11:01","","0","http://localhost/vifonic/shop_thuc_pham_2/cart/","0","page","","0"),
("9","1","2017-03-17 17:07:08","2017-03-17 10:07:08","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2017-03-17 17:11:13","2017-03-17 10:11:13","","0","http://localhost/vifonic/shop_thuc_pham_2/checkout/","0","page","","0"),
("10","1","2017-03-17 17:07:08","2017-03-17 10:07:08","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2017-03-18 00:31:10","2017-03-17 17:31:10","","0","http://localhost/vifonic/shop_thuc_pham_2/my-account/","0","page","","0"),
("11","1","2017-03-17 17:11:01","2017-03-17 10:11:01","[woocommerce_cart]","Giỏ hàng","","inherit","closed","closed","","8-revision-v1","","","2017-03-17 17:11:01","2017-03-17 10:11:01","","8","http://localhost/vifonic/shop_thuc_pham_2/2017/03/17/8-revision-v1/","0","revision","","0"),
("12","1","2017-03-17 17:11:13","2017-03-17 10:11:13","[woocommerce_checkout]","Thanh toán","","inherit","closed","closed","","9-revision-v1","","","2017-03-17 17:11:13","2017-03-17 10:11:13","","9","http://localhost/vifonic/shop_thuc_pham_2/2017/03/17/9-revision-v1/","0","revision","","0"),
("13","1","2017-03-17 17:11:35","2017-03-17 10:11:35","[woocommerce_my_account]","Tài khoản của tôi","","inherit","closed","closed","","10-revision-v1","","","2017-03-17 17:11:35","2017-03-17 10:11:35","","10","http://localhost/vifonic/shop_thuc_pham_2/2017/03/17/10-revision-v1/","0","revision","","0"),
("14","1","2017-03-17 17:11:45","2017-03-17 10:11:45","","Cửa hàng","","inherit","closed","closed","","7-revision-v1","","","2017-03-17 17:11:45","2017-03-17 10:11:45","","7","http://localhost/vifonic/shop_thuc_pham_2/2017/03/17/7-revision-v1/","0","revision","","0"),
("15","1","2017-03-17 17:12:25","2017-03-17 10:12:25","","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-17 17:12:25","2017-03-17 10:12:25","","2","http://localhost/vifonic/shop_thuc_pham_2/2017/03/17/2-revision-v1/","0","revision","","0"),
("16","1","2017-03-18 00:21:11","2017-03-17 17:21:11","","Giỏ hoa tặng em","","publish","open","closed","","gio-hoa-tang-em","","","2017-03-22 08:03:33","2017-03-22 01:03:33","","0","http://localhost/flatsome/?post_type=product&#038;p=16","0","product","","0"),
("18","1","2017-03-18 00:21:20","2017-03-17 17:21:20","","Lẵng hoa đẹp","","publish","open","closed","","lang-hoa-dep","","","2017-03-22 08:03:04","2017-03-22 01:03:04","","0","http://localhost/flatsome/product/apple-iphone-5/","0","product","","0"),
("20","1","2017-03-18 00:23:48","2017-03-17 17:23:48","","Hoa mừng sinh nhật","","publish","open","closed","","hoa-mung-sinh-nhat","","","2017-03-22 08:02:25","2017-03-22 01:02:25","","0","http://localhost/flatsome/?post_type=product&#038;p=20","0","product","","0"),
("22","1","2017-03-18 00:25:10","2017-03-17 17:25:10","","Hoa đẹp tặng mẹ","","publish","open","closed","","hoa-dep-tang-me","","","2017-03-22 08:01:52","2017-03-22 01:01:52","","0","http://localhost/flatsome/?post_type=product&#038;p=22","0","product","","0"),
("24","1","2017-03-18 00:26:44","2017-03-17 17:26:44","","Giỏ hoa tình yêu","","publish","open","closed","","gio-hoa-tinh-yeu","","","2017-03-22 08:01:04","2017-03-22 01:01:04","","0","http://localhost/flatsome/?post_type=product&#038;p=24","0","product","","0"),
("26","1","2017-03-18 00:28:19","2017-03-17 17:28:19","","Khúc hát mừng sinh nhật","","publish","open","closed","","khuc-hat-mung-sinh-nhat","","","2017-03-22 08:00:13","2017-03-22 01:00:13","","0","http://localhost/flatsome/?post_type=product&#038;p=26","0","product","","0"),
("28","1","2017-03-18 00:29:23","2017-03-17 17:29:23","","Giỏ hoa đẹp","","publish","open","closed","","gio-hoa-dep","","","2017-03-22 07:51:42","2017-03-22 00:51:42","","0","http://localhost/flatsome/?post_type=product&#038;p=28","0","product","","0"),
("30","1","2017-03-18 00:29:58","2017-03-17 17:29:58","","Giỏ hoa đẹp 8-3","","publish","open","closed","","gio-hoa-dep-8-3","","","2017-03-22 07:59:29","2017-03-22 00:59:29","","0","http://localhost/flatsome/?post_type=product&#038;p=30","0","product","","0"),
("31","1","2017-03-18 00:30:25","2017-03-17 17:30:25","","Lẵng hoa khai trương","","publish","open","closed","","lang-hoa-khai-truong","","","2017-03-22 07:58:53","2017-03-22 00:58:53","","0","http://localhost/flatsome/?post_type=product&#038;p=31","0","product","","0"),
("32","1","2017-03-18 00:30:53","2017-03-17 17:30:53","","Sản phẩm","","inherit","closed","closed","","7-revision-v1","","","2017-03-18 00:30:53","2017-03-17 17:30:53","","7","http://localhost/flatsome/2017/03/18/7-revision-v1/","0","revision","","0"),
("33","1","2017-03-18 00:31:10","2017-03-17 17:31:10","[woocommerce_my_account]","Tài khoản","","inherit","closed","closed","","10-revision-v1","","","2017-03-18 00:31:10","2017-03-17 17:31:10","","10","http://localhost/flatsome/2017/03/18/10-revision-v1/","0","revision","","0"),
("34","1","2017-03-18 00:31:32","2017-03-17 17:31:32","[yith_wcwl_wishlist]","Yêu thích","","inherit","closed","closed","","6-revision-v1","","","2017-03-18 00:31:32","2017-03-17 17:31:32","","6","http://localhost/flatsome/2017/03/18/6-revision-v1/","0","revision","","0"),
("35","1","2017-03-18 00:39:29","2017-03-17 17:39:29"," ","","","publish","closed","closed","","35","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=35","1","nav_menu_item","","0"),
("36","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","36","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=36","2","nav_menu_item","","0"),
("37","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","37","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=37","6","nav_menu_item","","0"),
("38","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","38","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=38","3","nav_menu_item","","0"),
("39","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","39","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=39","4","nav_menu_item","","0"),
("40","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","40","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=40","5","nav_menu_item","","0"),
("41","1","2017-03-18 00:39:30","2017-03-17 17:39:30"," ","","","publish","closed","closed","","41","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=41","7","nav_menu_item","","0"),
("43","1","2017-03-18 00:39:30","2017-03-17 17:39:30","","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=43","8","nav_menu_item","","0"),
("44","1","2017-03-18 00:39:30","2017-03-17 17:39:30","","Liên hệ","","publish","closed","closed","","lien-he","","","2017-03-22 08:05:55","2017-03-22 01:05:55","","0","http://localhost/flatsome/?p=44","9","nav_menu_item","","0"),
("58","1","2017-03-18 01:06:59","2017-03-17 18:06:59","/*\nBạn có thể thêm CSS ở đây.\n\nBấm biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.box-image {\nborder: solid 1px #e2e2e2\n}\n.box-image:hover {\nborder-color: #2EA3F2;\n}\n.badge-container {\nmargin-top: 10px; left: 0px\n}\n.is-outline {\ncolor: #08c\n}\n.widget {\nmargin-bottom: 50px\n}","flatsome","","publish","closed","closed","","flatsome","","","2017-03-22 09:46:04","2017-03-22 02:46:04","","0","http://localhost/flatsome/flatsome/","0","custom_css","","0"),
("59","1","2017-03-18 01:06:59","2017-03-17 18:06:59","/*\nBạn có thể thêm CSS ở đây.\n\nBấm biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.box-image {\nborder: solid 1px #ddd\n}\n.box-image:hover {\nborder-color: #08c;\n}\n.badge-container {\nmargin-top: 10px; left: 0px\n}\n.is-outline {\ncolor: #08c\n}","flatsome","","inherit","closed","closed","","58-revision-v1","","","2017-03-18 01:06:59","2017-03-17 18:06:59","","58","http://localhost/flatsome/58-revision-v1/","0","revision","","0"),
("64","1","2017-03-18 12:53:29","2017-03-18 05:53:29","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Delivery</strong> World Wide* <a href=\"#\">Learn more</a></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\">Loved by our Customers. <strong>5000+</strong> Reviews</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Returns</strong> and <strong>Free Shipping</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 12:53:29","2017-03-18 05:53:29","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("65","1","2017-03-18 12:57:17","2017-03-18 05:57:17","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>DEAL GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"xem ngay\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 12:57:17","2017-03-18 05:57:17","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("69","1","2017-03-18 13:03:53","2017-03-18 06:03:53","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 13:03:53","2017-03-18 06:03:53","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("72","1","2017-03-18 13:30:45","2017-03-18 06:30:45","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 13:30:45","2017-03-18 06:30:45","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("73","1","2017-03-18 13:31:52","2017-03-18 06:31:52","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 13:31:52","2017-03-18 06:31:52","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("74","1","2017-03-18 13:32:25","2017-03-18 06:32:25","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 13:32:25","2017-03-18 06:32:25","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("75","1","2017-03-18 13:33:04","2017-03-18 06:33:04","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 13:33:04","2017-03-18 06:33:04","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("79","1","2017-03-18 15:08:09","2017-03-18 08:08:09","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\" icon=\"icon-gift\" icon_pos=\"left\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 15:08:09","2017-03-18 08:08:09","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("80","1","2017-03-18 15:11:24","2017-03-18 08:11:24","[ux_banner_grid height=\"400\"]\n\n[col_grid]\n\n[ux_slider]\n\n[ux_image id=\"63\" image_size=\"original\"]\n\n[ux_image id=\"62\" image_size=\"original\" margin=\"-80px 0px 0px 0px\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm bán chạy\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[title text=\"ĐANG GIẢM GIÁ\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"NỔI BẬT TRONG TUẦN\" link_text=\"XEM TẤT CẢ\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"68\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>GIỜ VÀNG GIÁ SỐC</strong></h2>\n<h4 class=\"lead uppercase\">Giảm tới <strong>50%</strong> tất cả các sản phẩm điện thoại</h4>\n[ux_countdown bg_color=\"#FF9200\" year=\"2017\"]\n\n[button text=\"MUA NGAY\" icon=\"icon-heart\" icon_pos=\"left\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"normal\" type=\"row\" image_height=\"107%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-18 15:11:24","2017-03-18 08:11:24","","2","http://localhost/flatsome/2-revision-v1/","0","revision","","0"),
("83","1","2017-03-18 15:22:22","2017-03-18 08:22:22","/*\nBạn có thể thêm CSS ở đây.\n\nBấm biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.box-image {\nborder: solid 1px #ddd\n}\n.box-image:hover {\nborder-color: #08c;\n}\n.badge-container {\nmargin-top: 10px; left: 0px\n}\n.is-outline {\ncolor: #08c\n}\n.widget {\nmargin-bottom: 50px\n}","flatsome","","inherit","closed","closed","","58-revision-v1","","","2017-03-18 15:22:22","2017-03-18 08:22:22","","58","http://localhost/flatsome/58-revision-v1/","0","revision","","0"),
("84","1","2017-03-22 07:49:47","2017-03-22 00:49:47","","Giỏ hoa đẹp","","inherit","closed","closed","","28-autosave-v1","","","2017-03-22 07:49:47","2017-03-22 00:49:47","","28","http://flower.fonicweb.com/28-autosave-v1/","0","revision","","0"),
("85","1","2017-03-22 07:51:21","2017-03-22 00:51:21","","OLYMPUS DIGITAL CAMERA","OLYMPUS DIGITAL CAMERA","inherit","open","closed","","olympus-digital-camera","","","2017-03-22 07:51:21","2017-03-22 00:51:21","","28","http://flower.fonicweb.com/wp-content/uploads/2017/03/hoa-khai-truong.jpg","0","attachment","image/jpeg","0"),
("86","1","2017-03-22 07:58:35","2017-03-22 00:58:35","","Lẵng hoa khai trương","","inherit","closed","closed","","31-autosave-v1","","","2017-03-22 07:58:35","2017-03-22 00:58:35","","31","http://flower.fonicweb.com/31-autosave-v1/","0","revision","","0"),
("87","1","2017-03-22 07:58:36","2017-03-22 00:58:36","","hoa-dep","","inherit","open","closed","","hoa-dep","","","2017-03-22 07:58:36","2017-03-22 00:58:36","","31","http://flower.fonicweb.com/wp-content/uploads/2017/03/hoa-dep.jpg","0","attachment","image/jpeg","0"),
("88","1","2017-03-22 07:58:36","2017-03-22 00:58:36","","sp-2","","inherit","open","closed","","sp-2","","","2017-03-22 07:58:36","2017-03-22 00:58:36","","31","http://flower.fonicweb.com/wp-content/uploads/2017/03/sp-2.jpg","0","attachment","image/jpeg","0"),
("89","1","2017-03-22 07:58:37","2017-03-22 00:58:37","","gio-hoa","","inherit","open","closed","","gio-hoa","","","2017-03-22 07:58:37","2017-03-22 00:58:37","","31","http://flower.fonicweb.com/wp-content/uploads/2017/03/gio-hoa.jpg","0","attachment","image/jpeg","0"),
("90","1","2017-03-22 07:58:38","2017-03-22 00:58:38","","hoa-1","","inherit","open","closed","","hoa-1","","","2017-03-22 07:58:38","2017-03-22 00:58:38","","31","http://flower.fonicweb.com/wp-content/uploads/2017/03/hoa-1.jpg","0","attachment","image/jpeg","0"),
("91","1","2017-03-22 08:00:05","2017-03-22 01:00:05","","Khúc hát mừng sinh nhật","","inherit","closed","closed","","26-autosave-v1","","","2017-03-22 08:00:05","2017-03-22 01:00:05","","26","http://flower.fonicweb.com/26-autosave-v1/","0","revision","","0"),
("92","1","2017-03-22 08:01:28","2017-03-22 01:01:28","","Hoa đẹp tặng me","","inherit","closed","closed","","22-autosave-v1","","","2017-03-22 08:01:28","2017-03-22 01:01:28","","22","http://flower.fonicweb.com/22-autosave-v1/","0","revision","","0"),
("93","1","2017-03-22 08:03:31","2017-03-22 01:03:31","","Giỏ hoa tặng em","","inherit","closed","closed","","16-autosave-v1","","","2017-03-22 08:03:31","2017-03-22 01:03:31","","16","http://flower.fonicweb.com/16-autosave-v1/","0","revision","","0"),
("99","1","2017-03-22 08:47:50","2017-03-22 01:47:50","","slide","","inherit","open","closed","","slide","","","2017-03-22 08:47:50","2017-03-22 01:47:50","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/slide.jpg","0","attachment","image/jpeg","0"),
("100","1","2017-03-22 08:50:05","2017-03-22 01:50:05","","slide2","","inherit","open","closed","","slide2","","","2017-03-22 08:50:05","2017-03-22 01:50:05","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/slide2.jpg","0","attachment","image/jpeg","0"),
("101","1","2017-03-22 08:51:31","2017-03-22 01:51:31","","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 08:51:31","2017-03-22 01:51:31","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("103","1","2017-03-22 09:01:04","2017-03-22 02:01:04","","slider","","inherit","open","closed","","slider","","","2017-03-22 09:01:04","2017-03-22 02:01:04","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/slider.jpg","0","attachment","image/jpeg","0"),
("104","1","2017-03-22 09:04:58","2017-03-22 02:04:58","","slider2","","inherit","open","closed","","slider2","","","2017-03-22 09:04:58","2017-03-22 02:04:58","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/slider2.jpg","0","attachment","image/jpeg","0"),
("105","1","2017-03-22 09:11:23","2017-03-22 02:11:23","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"3862\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"3833\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM NỔI BẬT\"]\n\n[ux_products products=\"14\" show=\"featured\"]\n\n[title style=\"center\" text=\"BÁN CHẠY NHẤT\"]\n\n[ux_products products=\"8\" orderby=\"sales\"]\n\n[gap height=\"40px\"]\n\n[row col_style=\"divided\"]\n\n[col span=\"4\"]\n\n[featured_box img=\"8685\" img_width=\"46\" pos=\"center\" title=\"Free Shipping on all ordres\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8686\" img_width=\"46\" pos=\"center\" title=\"Amazing customer service\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8687\" img_width=\"46\" pos=\"center\" title=\"No Customs or Duty Fees!\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>We pay these fees so you don’t have to! The total billed at checkout is the final amount you pay, inclusive of VAT, with no additional charges at the time of delivery!</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"40px\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"Latest News\" size=\"undefined\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:11:23","2017-03-22 02:11:23","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("106","1","2017-03-22 09:15:02","2017-03-22 02:15:02","","blog1","","inherit","open","closed","","blog1","","","2017-03-22 09:15:02","2017-03-22 02:15:02","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/blog1.jpg","0","attachment","image/jpeg","0"),
("107","1","2017-03-22 09:19:34","2017-03-22 02:19:34","","blog-thumb","","inherit","open","closed","","blog-thumb","","","2017-03-22 09:19:34","2017-03-22 02:19:34","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/blog-thumb.jpg","0","attachment","image/jpeg","0"),
("108","1","2017-03-22 09:20:08","2017-03-22 02:20:08","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"3862\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"3833\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM NỔI BẬT\"]\n\n[ux_products products=\"14\" show=\"featured\"]\n\n[title style=\"center\" text=\"BÁN CHẠY NHẤT\"]\n\n[ux_products products=\"8\" orderby=\"sales\"]\n\n[gap height=\"40px\"]\n\n[row col_style=\"divided\"]\n\n[col span=\"4\"]\n\n[featured_box img=\"8685\" img_width=\"46\" pos=\"center\" title=\"Free Shipping on all ordres\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8686\" img_width=\"46\" pos=\"center\" title=\"Amazing customer service\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8687\" img_width=\"46\" pos=\"center\" title=\"No Customs or Duty Fees!\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>We pay these fees so you don’t have to! The total billed at checkout is the final amount you pay, inclusive of VAT, with no additional charges at the time of delivery!</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"40px\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"Latest News\" size=\"undefined\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:20:08","2017-03-22 02:20:08","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("109","1","2017-03-22 09:21:59","2017-03-22 02:21:59","","blog-thumb2","","inherit","open","closed","","blog-thumb2","","","2017-03-22 09:21:59","2017-03-22 02:21:59","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/blog-thumb2.jpg","0","attachment","image/jpeg","0"),
("110","1","2017-03-22 09:23:59","2017-03-22 02:23:59","","blog-thumb3","","inherit","open","closed","","blog-thumb3","","","2017-03-22 09:23:59","2017-03-22 02:23:59","","0","http://flower.fonicweb.com/wp-content/uploads/2017/03/blog-thumb3.jpg","0","attachment","image/jpeg","0"),
("111","1","2017-03-22 09:24:30","2017-03-22 02:24:30","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM NỔI BẬT\"]\n\n[ux_products products=\"14\" show=\"featured\"]\n\n[title style=\"center\" text=\"BÁN CHẠY NHẤT\"]\n\n[ux_products products=\"8\" orderby=\"sales\"]\n\n[gap height=\"40px\"]\n\n[row col_style=\"divided\"]\n\n[col span=\"4\"]\n\n[featured_box img=\"8685\" img_width=\"46\" pos=\"center\" title=\"Free Shipping on all ordres\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8686\" img_width=\"46\" pos=\"center\" title=\"Amazing customer service\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>Get Free Shipping on all orders over $75 and free returns to our UK returns centre! Items are dispatched from the US and will arrive in 5-8 days.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\"]\n\n[featured_box img=\"8687\" img_width=\"46\" pos=\"center\" title=\"No Customs or Duty Fees!\" icon_border=\"2\" icon_color=\"rgb(182, 182, 182)\" margin=\"0px 0px 0px 0px\"]\n\n<p>We pay these fees so you don’t have to! The total billed at checkout is the final amount you pay, inclusive of VAT, with no additional charges at the time of delivery!</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"40px\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"8011\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"Latest News\" size=\"undefined\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:24:30","2017-03-22 02:24:30","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("112","1","2017-03-22 09:35:54","2017-03-22 02:35:54","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM NỔI BẬT\"]\n\n[ux_products products=\"14\" show=\"featured\"]\n\n[title style=\"center\" text=\"BÁN CHẠY NHẤT\"]\n\n[ux_products products=\"8\" orderby=\"sales\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"103\" bg_size=\"orginal\" bg_pos=\"center\" hover=\"zoom\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"104\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"103\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:35:54","2017-03-22 02:35:54","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("113","1","2017-03-22 09:39:39","2017-03-22 02:39:39","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"103\" bg_size=\"orginal\" bg_pos=\"center\" hover=\"zoom\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"104\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"103\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:39:39","2017-03-22 02:39:39","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("115","1","2017-03-22 09:43:23","2017-03-22 02:43:23","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"103\" bg_size=\"orginal\" bg_pos=\"center\" hover=\"zoom\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"104\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"103\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:43:23","2017-03-22 02:43:23","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("118","1","2017-03-22 09:46:04","2017-03-22 02:46:04","/*\nBạn có thể thêm CSS ở đây.\n\nBấm biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.box-image {\nborder: solid 1px #e2e2e2\n}\n.box-image:hover {\nborder-color: #2EA3F2;\n}\n.badge-container {\nmargin-top: 10px; left: 0px\n}\n.is-outline {\ncolor: #08c\n}\n.widget {\nmargin-bottom: 50px\n}","flatsome","","inherit","closed","closed","","58-revision-v1","","","2017-03-22 09:46:04","2017-03-22 02:46:04","","58","http://flower.fonicweb.com/58-revision-v1/","0","revision","","0"),
("119","1","2017-03-22 09:47:20","2017-03-22 02:47:20","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Thay lời Muốn nói</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[title style=\"center\" text=\"bó hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[ux_slider timer=\"2000\"]\n\n[ux_banner height=\"300px\" bg=\"103\" bg_size=\"orginal\" bg_pos=\"center\" hover=\"zoom\" parallax=\"1\"]\n\n[text_box width=\"78\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"128\" name=\"Lucy Anderson\" company=\"Facebook\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"104\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"117\" name=\"Rebecca Smith\" company=\"Twitter\" stars=\"3\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"300px\" bg=\"103\" parallax=\"1\"]\n\n[text_box width=\"80\" position_x=\"50\" position_y=\"50\"]\n\n[testimonial image_width=\"131\" name=\"Jenny Brooks\" company=\"LinkedIn\"]\n\n<p>PBR kogi VHS commodo, single-origin coffee selvage kale chips. Fugiat try-hard ad aesthetic, tofu master cleanse typewriter tote bag accusamus sustainable ennui hella small batch cliche.</p>\n\n[/testimonial]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:47:20","2017-03-22 02:47:20","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("121","1","2017-03-22 09:59:35","2017-03-22 02:59:35","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Quốc tế Phụ nữ</h3>\n[divider margin=\"3px\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[title style=\"center\" text=\"bó hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[ux_banner height=\"200px\" bg=\"106\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<br />\n<h3 class=\"uppercase\"><strong>dịch vụ điện hoa</strong></h3>\n<p>Gọi ngay cho chúng tôi để đem đến món quà và sự bất ngờ cho người bạn yêu thương!</p>\n[button text=\"Liên hệ ngay\" icon=\"icon-heart-o\" icon_pos=\"left\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 09:59:35","2017-03-22 02:59:35","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("122","1","2017-03-22 10:00:44","2017-03-22 03:00:44","Cắm hoa không chỉ là nghệ thuật, nó còn mang đến niềm vui cuộc sống cho người phụ nữ. Nếu là một người yêu hoa hoặc muốn học loại nghệ thuật này, đừng bỏ qua 10 cách cắm hoa cơ bản sau đây.\n\n1. Cắm hoa hình kim tự tháp (chóp nón)\n\nĐây là cách cắm hoa cơ bản và phổ biến nhất trong các kiểu cắm hoa để bàn. Khi cắm hoa theo hình chóp nóng, các bông hoa sẽ được sắp xếp theo hướng nhọn và rất cao, chúng sẽ được cắm theo độ cao từ cao xuống thấp dần.\n\n2. Mô hình kiểu cắm hoa hình tam giác\n\nTrong quá trình cắm, các bông hoa chính sẽ được phân bổ đều, các hoa phụ sẽ được cắm xen thấp hơn và cắm sát ở phía dưới chân.<strong></strong>","10 cách cắm hoa đẹp bạn không ngờ tới","","inherit","closed","closed","","1-revision-v1","","","2017-03-22 10:00:44","2017-03-22 03:00:44","","1","http://flower.fonicweb.com/1-revision-v1/","0","revision","","0"),
("123","1","2017-03-22 10:01:26","2017-03-22 03:01:26","Cúc họa mi là loài hoa nhỏ thường mọc hoang, có những cánh trắng ngần, từ giữa tỏa ra như hình nan hoa quanh một nhụy vàng tươi. Ở Anh, cúc họa mi còn được gọi là cúc trẻ em.\nChẳng hẹn mà lên, mùa này phố phường Hà Nội lại ngập tràn những bông cúc họa mi bé nhỏ đồng đều, trắng muốt chụm vào nhau, rung rinh trong từng cơn gió lạnh, đẹp đến nao lòng…\nCúc họa mi còn được gọi là Baby’s pet hay Bairnwort có nghĩa là hoa của trẻ em\nCúc họa mi sẽ không được chú ý nhiều đến thế nếu như không phải vì thời điểm xuất hiện, vào những ngày chớm đông, đến thật nhanh và đi cũng thật nhanh. Hoa cúc họa mi chỉ nở có 1 mùa duy nhất trong thời gian rất ngắn 2,3 tuần rồi lại hết. Có nhà vườn cố trồng sớm hơn nhưng vẫn đúng đến thời điểm đó hoa mới nở.\nCúc họa mi là loài hoa nhỏ thường mọc hoang, có những cánh trắng ngần, từ giữa tỏa ra như hình nan hoa quanh một nhụy vàng tươi. Trẻ em ở những vùng quê thường thích hái hoa cúc này để kết thành bó hay xâu thành chuỗi làm trang điểm cho mình.\nTrong những ngày, Hà Nội tuyệt đẹp với nắng hanh vàng, trời xanh, gió hiu hiu mát mẻ, đủ để các thiếu nữ làm duyên với tấm khăn quàng mỏng, khoác thêm chiếc áo ấm khi ra đường, cũng là lúc cả phố phường được cúc họa mi tô điểm.","Ý nghĩa hoa cúc họa mi","","publish","open","open","","y-nghia-hoa-cuc-hoa-mi","","","2017-03-22 10:01:26","2017-03-22 03:01:26","","0","http://flower.fonicweb.com/?p=123","0","post","","0"),
("124","1","2017-03-22 10:01:20","2017-03-22 03:01:20","","cuc-hoa-mi","","inherit","open","closed","","cuc-hoa-mi","","","2017-03-22 10:01:20","2017-03-22 03:01:20","","123","http://flower.fonicweb.com/wp-content/uploads/2017/03/cuc-hoa-mi.jpg","0","attachment","image/jpeg","0"),
("125","1","2017-03-22 10:01:26","2017-03-22 03:01:26","Cúc họa mi là loài hoa nhỏ thường mọc hoang, có những cánh trắng ngần, từ giữa tỏa ra như hình nan hoa quanh một nhụy vàng tươi. Ở Anh, cúc họa mi còn được gọi là cúc trẻ em.\nChẳng hẹn mà lên, mùa này phố phường Hà Nội lại ngập tràn những bông cúc họa mi bé nhỏ đồng đều, trắng muốt chụm vào nhau, rung rinh trong từng cơn gió lạnh, đẹp đến nao lòng…\nCúc họa mi còn được gọi là Baby’s pet hay Bairnwort có nghĩa là hoa của trẻ em\nCúc họa mi sẽ không được chú ý nhiều đến thế nếu như không phải vì thời điểm xuất hiện, vào những ngày chớm đông, đến thật nhanh và đi cũng thật nhanh. Hoa cúc họa mi chỉ nở có 1 mùa duy nhất trong thời gian rất ngắn 2,3 tuần rồi lại hết. Có nhà vườn cố trồng sớm hơn nhưng vẫn đúng đến thời điểm đó hoa mới nở.\nCúc họa mi là loài hoa nhỏ thường mọc hoang, có những cánh trắng ngần, từ giữa tỏa ra như hình nan hoa quanh một nhụy vàng tươi. Trẻ em ở những vùng quê thường thích hái hoa cúc này để kết thành bó hay xâu thành chuỗi làm trang điểm cho mình.\nTrong những ngày, Hà Nội tuyệt đẹp với nắng hanh vàng, trời xanh, gió hiu hiu mát mẻ, đủ để các thiếu nữ làm duyên với tấm khăn quàng mỏng, khoác thêm chiếc áo ấm khi ra đường, cũng là lúc cả phố phường được cúc họa mi tô điểm.","Ý nghĩa hoa cúc họa mi","","inherit","closed","closed","","123-revision-v1","","","2017-03-22 10:01:26","2017-03-22 03:01:26","","123","http://flower.fonicweb.com/123-revision-v1/","0","revision","","0"),
("126","1","2017-03-22 10:02:04","2017-03-22 03:02:04","Hoa Champion\nHoa Champion chỉ được tìm thấy ở Gibraltar. Các nhà khoa học cho rằng hoa Campion đã tuyệt chủng vào năm 1992. Tuy nhiên tới năm 1994, một bông hoa duy nhất đã được phát hiện bởi một người leo núi trên những vách đá xung quanh thành phố Gibraltar.\nHoa Jade Vine (Hoa móng cọp)\nJade Vine thuộc họ đậu và có màu xanh tuyệt đẹp. Những bông hoa có hình móng vuốt dài và thân cây có thể dài tới hơn 18m. Jade Vine chỉ được thụ phấn nhờ dơi và được tìm thấy trong các khu rừng ở Philippines.","Những loài hoa đẹp nhất hành tinh","","publish","open","open","","nhung-loai-hoa-dep-nhat-hanh-tinh","","","2017-03-22 10:02:04","2017-03-22 03:02:04","","0","http://flower.fonicweb.com/?p=126","0","post","","0"),
("127","1","2017-03-22 10:02:01","2017-03-22 03:02:01","","hoa-mong-cop","","inherit","open","closed","","hoa-mong-cop","","","2017-03-22 10:02:01","2017-03-22 03:02:01","","126","http://flower.fonicweb.com/wp-content/uploads/2017/03/hoa-mong-cop.jpg","0","attachment","image/jpeg","0"),
("128","1","2017-03-22 10:02:04","2017-03-22 03:02:04","Hoa Champion\nHoa Champion chỉ được tìm thấy ở Gibraltar. Các nhà khoa học cho rằng hoa Campion đã tuyệt chủng vào năm 1992. Tuy nhiên tới năm 1994, một bông hoa duy nhất đã được phát hiện bởi một người leo núi trên những vách đá xung quanh thành phố Gibraltar.\nHoa Jade Vine (Hoa móng cọp)\nJade Vine thuộc họ đậu và có màu xanh tuyệt đẹp. Những bông hoa có hình móng vuốt dài và thân cây có thể dài tới hơn 18m. Jade Vine chỉ được thụ phấn nhờ dơi và được tìm thấy trong các khu rừng ở Philippines.","Những loài hoa đẹp nhất hành tinh","","inherit","closed","closed","","126-revision-v1","","","2017-03-22 10:02:04","2017-03-22 03:02:04","","126","http://flower.fonicweb.com/126-revision-v1/","0","revision","","0"),
("129","1","2017-03-22 10:02:50","2017-03-22 03:02:50","Hoa Champion\nHoa Champion chỉ được tìm thấy ở Gibraltar. Các nhà khoa học cho rằng hoa Campion đã tuyệt chủng vào năm 1992. Tuy nhiên tới năm 1994, một bông hoa duy nhất đã được phát hiện bởi một người leo núi trên những vách đá xung quanh thành phố Gibraltar.\nHoa Jade Vine (Hoa móng cọp)\nJade Vine thuộc họ đậu và có màu xanh tuyệt đẹp. Những bông hoa có hình móng vuốt dài và thân cây có thể dài tới hơn 18m. Jade Vine chỉ được thụ phấn nhờ dơi và được tìm thấy trong các khu rừng ở Philippines.","Vẻ đẹp của loài hoa bất tử","","publish","open","open","","ve-dep-cua-loai-hoa-bat-tu","","","2017-03-22 10:02:50","2017-03-22 03:02:50","","0","http://flower.fonicweb.com/?p=129","0","post","","0"),
("130","1","2017-03-22 10:02:50","2017-03-22 03:02:50","Hoa Champion\nHoa Champion chỉ được tìm thấy ở Gibraltar. Các nhà khoa học cho rằng hoa Campion đã tuyệt chủng vào năm 1992. Tuy nhiên tới năm 1994, một bông hoa duy nhất đã được phát hiện bởi một người leo núi trên những vách đá xung quanh thành phố Gibraltar.\nHoa Jade Vine (Hoa móng cọp)\nJade Vine thuộc họ đậu và có màu xanh tuyệt đẹp. Những bông hoa có hình móng vuốt dài và thân cây có thể dài tới hơn 18m. Jade Vine chỉ được thụ phấn nhờ dơi và được tìm thấy trong các khu rừng ở Philippines.","Vẻ đẹp của loài hoa bất tử","","inherit","closed","closed","","129-revision-v1","","","2017-03-22 10:02:50","2017-03-22 03:02:50","","129","http://flower.fonicweb.com/129-revision-v1/","0","revision","","0"),
("132","1","2017-03-22 10:04:46","2017-03-22 03:04:46","","Mua hoa","","publish","closed","closed","","mua-hoa","","","2017-03-22 10:04:46","2017-03-22 03:04:46","","0","http://flower.fonicweb.com/?p=132","1","nav_menu_item","","0"),
("133","1","2017-03-22 10:04:46","2017-03-22 03:04:46","","Điện hoa","","publish","closed","closed","","dien-hoa","","","2017-03-22 10:04:46","2017-03-22 03:04:46","","0","http://flower.fonicweb.com/?p=133","2","nav_menu_item","","0"),
("134","1","2017-03-22 10:06:08","2017-03-22 03:06:08","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Quốc tế Phụ nữ</h3>\n[divider margin=\"3px\" color=\"rgb(255, 255, 255)\"]\n\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"http://localhost:8888/test/blog/\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[title style=\"center\" text=\"bó hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[ux_banner height=\"200px\" bg=\"106\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<p></p>\n<h4 class=\"uppercase\"><strong>dịch vụ điện hoa</strong></h4>\n<p>Gọi ngay cho chúng tôi để đem đến món quà và sự bất ngờ cho người bạn yêu thương!</p>\n[button text=\"Liên hệ ngay\" icon=\"icon-heart-o\" icon_pos=\"left\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2017-03-22 10:06:08","2017-03-22 03:06:08","","2","http://flower.fonicweb.com/2-revision-v1/","0","revision","","0"),
("137","1","2017-07-04 07:26:16","2017-07-04 00:26:16","","1","","inherit","open","closed","","1","","","2017-07-04 07:26:16","2017-07-04 00:26:16","","0","http://bizhostvn.com/w/flower/wp-content/uploads/2017/07/1.png","0","attachment","image/png","0"),
("140","1","2017-07-17 22:18:12","2017-07-17 15:18:12","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2017-07-17 22:18:12","2017-07-17 15:18:12","","0","http://alahap.com/w/flower/wp-content/uploads/2017/07/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("143","1","2018-07-11 07:18:13","2018-07-11 00:18:13","[ux_slider]\n\n[ux_banner height=\"445px\" bg=\"103\" bg_overlay=\"rgba(0, 0, 0, 0.02)\" bg_pos=\"58% 63%\"]\n\n[text_box width=\"70\" width__sm=\"100\" animate=\"flipInY\" position_x=\"50\" position_y=\"50\"]\n<h3 class=\"alt-font\">Quốc tế Phụ nữ</h3>\n[divider margin=\"3px\" color=\"rgb(255, 255, 255)\"]\n<h1 class=\"h-large uppercase\"><span style=\"font-size: 160%;\"><strong>big sale</strong></span></h1>\n<h1 class=\"uppercase\"><span style=\"font-size: 100%;\"><strong>70%</strong></span></h1>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[button text=\"hoa đẹp\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"quà tặng\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[button text=\"điện hoa\" color=\"white\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"445px\" bg=\"104\" bg_overlay=\"rgba(0, 0, 0, 0.03)\" bg_pos=\"72% 6%\"]\n\n[text_box width=\"61\" width__sm=\"85\" animate=\"fadeInLeft\" position_x=\"50\" position_x__sm=\"50\" position_y=\"50\"]\n<h3 class=\"alt-font\">Điện hoa</h3>\n<h2 class=\"uppercase\" data-animate=\"fadeInLeft\" data-animated=\"true\"><strong>TRAO YÊU THƯƠNG</strong></h2>\n<h3><strong>Chỉ từ 500k</strong></h3>\n[divider color=\"rgb(251, 251, 251)\"]\n\n[button text=\"GỌI NGAY\" color=\"white\" style=\"outline\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"center\" text=\"giỏ hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[title style=\"center\" text=\"hoa khai trương\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\" orderby=\"sales\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"107\" bg_size=\"orginal\" bg_pos=\"55% 11%\" hover=\"zoom-fade\" link=\"blog\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">Blog HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"109\" hover=\"zoom-fade\" link=\"\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">ĐIỆN HOA</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"160px\" bg=\"110\" bg_pos=\"71% 0%\" hover=\"zoom-fade\" link=\"about-us\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h2><strong><span class=\"uppercase\">SẢN PHẨM</span></strong></h2>\n[divider color=\"rgb(255, 255, 255)\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"hoa sinh nhật\"]\n\n[ux_products type=\"row\" columns=\"5\" products=\"5\"]\n\n[title style=\"center\" text=\"bó hoa đẹp\"]\n\n[ux_products type=\"row\" columns=\"5\" cat=\"8\" products=\"5\"]\n\n[ux_banner height=\"200px\" bg=\"106\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n<h4 class=\"uppercase\"><strong>dịch vụ điện hoa</strong></h4>\nGọi ngay cho chúng tôi để đem đến món quà và sự bất ngờ cho người bạn yêu thương!\n\n[button text=\"Liên hệ ngay\" icon=\"icon-heart-o\" icon_pos=\"left\"]\n\n[/text_box]\n\n[/ux_banner]\n[title style=\"center\" text=\"blog Tin tức\"]\n\n[blog_posts columns__sm=\"1\" animate=\"fadeInLeft\" posts=\"4\" image_height=\"70%\"]","Trang Chủ","","inherit","closed","closed","","2-revision-v1","","","2018-07-11 07:18:13","2018-07-11 00:18:13","","2","https://bizhostvn.com/w/flower/2-revision-v1/","0","revision","","0"),
("144","1","2019-05-16 20:20:36","2019-05-16 13:20:36","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 20:20:36","2019-05-16 13:20:36","","0","https://bizhostvn.com/w/flower/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




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
("1","20","0"),
("16","2","0"),
("16","6","0"),
("16","7","0"),
("16","8","0"),
("18","2","0"),
("18","6","0"),
("18","7","0"),
("18","8","0"),
("20","2","0"),
("20","6","0"),
("20","8","0"),
("20","9","0"),
("22","2","0"),
("22","6","0"),
("22","7","0"),
("22","9","0"),
("24","2","0"),
("24","6","0"),
("24","8","0"),
("24","11","0"),
("24","16","0"),
("24","17","0"),
("24","18","0"),
("24","19","0"),
("26","2","0"),
("26","6","0"),
("26","7","0"),
("26","9","0"),
("26","11","0"),
("28","2","0"),
("28","6","0"),
("28","11","0"),
("30","2","0"),
("30","7","0"),
("30","9","0"),
("30","11","0"),
("31","2","0"),
("31","6","0"),
("31","8","0"),
("31","9","0"),
("35","12","0"),
("36","12","0"),
("37","12","0"),
("38","12","0"),
("39","12","0"),
("40","12","0"),
("41","12","0"),
("43","12","0"),
("44","12","0"),
("123","20","0"),
("126","20","0"),
("129","20","0"),
("132","21","0"),
("133","21","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","0"),
("2","2","product_type","","0","9"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_cat","","0","8"),
("7","7","product_cat","","0","5"),
("8","8","product_cat","","0","5"),
("9","9","product_cat","","0","5"),
("11","11","product_cat","","0","4"),
("12","12","nav_menu","","0","9"),
("14","14","product_tag","","0","0"),
("15","15","product_tag","","0","0"),
("16","16","product_tag","","0","1"),
("17","17","product_tag","","0","1"),
("18","18","product_tag","","0","1"),
("19","19","product_tag","","0","1"),
("20","20","category","","0","4"),
("21","21","nav_menu","","0","2"),
("22","22","product_visibility","","0","0"),
("23","23","product_visibility","","0","0"),
("24","24","product_visibility","","0","0"),
("25","25","product_visibility","","0","0"),
("26","26","product_visibility","","0","0"),
("27","27","product_visibility","","0","0"),
("28","28","product_visibility","","0","0"),
("29","29","product_visibility","","0","0"),
("30","30","product_visibility","","0","0"),
("31","31","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","6","order","0"),
("2","7","order","0"),
("3","6","product_count_product_cat","8"),
("4","7","product_count_product_cat","5"),
("5","8","order","0"),
("6","8","product_count_product_cat","5"),
("7","9","order","0"),
("8","9","product_count_product_cat","5"),
("9","9","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("10","9","display_type",""),
("11","9","thumbnail_id","0"),
("16","11","order","0"),
("17","11","product_count_product_cat","4"),
("23","6","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("24","11","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("26","6","display_type",""),
("27","6","thumbnail_id","25"),
("28","11","display_type",""),
("29","11","thumbnail_id","27"),
("30","14","product_count_product_tag","0"),
("31","15","product_count_product_tag","0"),
("32","16","product_count_product_tag","1"),
("33","17","product_count_product_tag","1"),
("34","18","product_count_product_tag","1"),
("35","19","product_count_product_tag","1"),
("36","7","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("37","7","display_type",""),
("38","7","thumbnail_id","0"),
("39","8","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("40","8","display_type",""),
("41","8","thumbnail_id","0");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("2","simple","simple","0"),
("3","grouped","grouped","0"),
("4","variable","variable","0"),
("5","external","external","0"),
("6","Hoa tình yêu","hoa-tinh-yeu","0"),
("7","Hoa bó","hoa-bo","0"),
("8","Hoa khai trương","hoa-khai-truong","0"),
("9","Hoa giỏ","hoa-gio","0"),
("11","Hoa sinh nhật","hoa-sinh-nhat","0"),
("12","Main Menu","main-menu","0"),
("14","samsung","samsung","0"),
("15","galaxy","galaxy","0"),
("16","điện thoại","dien-thoai","0"),
("17","apple","apple","0"),
("18","ipad","ipad","0"),
("19","tablet","tablet","0"),
("20","Tin tức","tin-tuc","0"),
("21","Top menu","top-menu","0"),
("22","exclude-from-search","exclude-from-search","0"),
("23","exclude-from-catalog","exclude-from-catalog","0"),
("24","featured","featured","0"),
("25","outofstock","outofstock","0"),
("26","rated-1","rated-1","0"),
("27","rated-2","rated-2","0"),
("28","rated-3","rated-3","0"),
("29","rated-4","rated-4","0"),
("30","rated-5","rated-5","0"),
("31","Chưa phân loại","chua-phan-loai","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","admin"),
("2","1","first_name",""),
("3","1","last_name",""),
("4","1","description",""),
("5","1","rich_editing","true"),
("6","1","comment_shortcuts","false"),
("7","1","admin_color","fresh"),
("8","1","use_ssl","0"),
("9","1","show_admin_bar_front","true"),
("10","1","locale",""),
("11","1","bz_capabilities","a:1:{s:13:\"administrator\";b:1;}"),
("12","1","bz_user_level","10"),
("13","1","dismissed_wp_pointers","wp496_privacy"),
("14","1","show_welcome_panel","0"),
("15","1","session_tokens","a:2:{s:64:\"0a13d18ec064c4fa7a4c78855e9866ae88c08181c6a55b473a7f9e1b77157d3d\";a:4:{s:10:\"expiration\";i:1558184892;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012092;}s:64:\"863165d238a85ca0064593093e5684770acfa3e664e8ed2a9971cc3d347e6767\";a:4:{s:10:\"expiration\";i:1558185380;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012580;}}"),
("16","1","bz_dashboard_quick_press_last_post_id","145"),
("17","1","closedpostboxes_dashboard","a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:36:\"woocommerce_dashboard_recent_reviews\";i:3;s:28:\"woocommerce_dashboard_status\";}"),
("18","1","metaboxhidden_dashboard","a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}"),
("19","1","meta-box-order_dashboard","a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:105:\"dashboard_quick_press,dashboard_primary,woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}"),
("20","1","manageedit-shop_ordercolumnshidden","a:1:{i:0;s:15:\"billing_address\";}"),
("21","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","bz_user-settings-time","1558012581"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:10:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:27:\"add-post-type-featured_item\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:20:\"add-block_categories\";i:6;s:15:\"add-product_tag\";i:7;s:26:\"add-featured_item_category\";i:8;s:21:\"add-featured_item_tag\";i:9;s:30:\"woocommerce_endpoints_nav_link\";}"),
("25","1","closedpostboxes_nav-menus","a:0:{}"),
("26","1","billing_first_name",""),
("27","1","billing_last_name",""),
("28","1","billing_company",""),
("29","1","billing_address_1",""),
("30","1","billing_address_2",""),
("31","1","billing_city",""),
("32","1","billing_postcode",""),
("33","1","billing_country",""),
("34","1","billing_state",""),
("35","1","billing_phone",""),
("36","1","billing_email",""),
("37","1","shipping_first_name",""),
("38","1","shipping_last_name",""),
("39","1","shipping_company",""),
("40","1","shipping_address_1",""),
("41","1","shipping_address_2",""),
("42","1","shipping_city",""),
("43","1","shipping_postcode",""),
("44","1","shipping_country",""),
("45","1","shipping_state",""),
("46","1","last_update","1493000243"),
("47","1","nav_menu_recently_edited","21"),
("48","1","wp_media_library_mode","list"),
("49","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("50","1","_woocommerce_tracks_anon_id","woo:V0TN3W4WShvnIlRkFl2AUdjA");




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
("1","admin","$P$BwHNDmyEdDpT/G4gXEISqEaJ3BZbXp.","admin","demobz@gmail.com","","2017-03-17 09:48:24","","0","vifonic_admin");




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
  KEY `attribute_name` (`attribute_name`(191))
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
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
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
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  KEY `meta_key` (`meta_key`(191))
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("6","1ba93238dbd7195e9f3379ee0cbd0e3d","a:21:{s:4:\"cart\";s:311:\"a:1:{s:32:\"6f4922f45568161a8cdf4ad2299f6d23\";a:9:{s:10:\"product_id\";i:18;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";d:120000;s:8:\"line_tax\";i:0;s:13:\"line_subtotal\";i:120000;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:23:\"coupon_discount_amounts\";s:6:\"a:0:{}\";s:27:\"coupon_discount_tax_amounts\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:19:\"cart_contents_total\";d:120000;s:5:\"total\";d:120000;s:8:\"subtotal\";i:120000;s:15:\"subtotal_ex_tax\";i:120000;s:9:\"tax_total\";i:0;s:5:\"taxes\";s:6:\"a:0:{}\";s:14:\"shipping_taxes\";s:6:\"a:0:{}\";s:13:\"discount_cart\";i:0;s:17:\"discount_cart_tax\";i:0;s:14:\"shipping_total\";N;s:18:\"shipping_tax_total\";i:0;s:9:\"fee_total\";i:0;s:4:\"fees\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:0:\"\";s:8:\"customer\";s:445:\"a:14:{s:8:\"postcode\";s:1:\"0\";s:4:\"city\";s:9:\"sài gòn\";s:9:\"address_1\";s:22:\"thành phố sài gòn\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:1:\"0\";s:13:\"shipping_city\";s:9:\"sài gòn\";s:18:\"shipping_address_1\";s:22:\"thành phố sài gòn\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;}\";}","1558163039"),
("7","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:730:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2017-04-24T02:17:23+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558185635"),
("8","187a4bd0dbbe4f148b63d1e6b51adcce","a:8:{s:4:\"cart\";s:418:\"a:1:{s:32:\"33e75ff09dd601bbe69f351039152189\";a:11:{s:3:\"key\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:10:\"product_id\";i:28;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:220000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:220000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:6:\"220000\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"220000\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"220000\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558198695");




CREATE TABLE `bz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
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
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
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
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_yith_wcwl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_yith_wcwl_lists` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `wishlist_token` (`wishlist_token`),
  KEY `wishlist_slug` (`wishlist_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;