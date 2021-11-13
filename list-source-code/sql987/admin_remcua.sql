SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w148`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_comments VALUES
("1","1","A WordPress Commenter","wapuu@wordpress.example","https://wordpress.org/","","2017-04-20 04:45:40","2017-04-20 04:45:40","Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","1","rèm cửa","remcuakimtien@gmail.com","http://mancuakimtien.com/rem-cua.html","27.74.159.33","2017-10-29 08:36:45","2017-10-29 08:36:45","up bài dùm admin","0","0","Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36","","0","0");




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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/remcua","yes"),
("2","home","https://bizhostvn.com/w/remcua","yes"),
("3","blogname","remcua","yes"),
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
("23","date_format","F j, Y","yes"),
("24","time_format","g:i a","yes"),
("25","links_updated_date_format","F j, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes"),
("29","rewrite_rules","a:234:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:11:\"sidebars/?$\";s:27:\"index.php?post_type=sidebar\";s:41:\"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:36:\"sidebars/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:28:\"sidebars/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=sidebar&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"danh-muc-san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:40:\"sản phẩm/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"sản phẩm/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"sản phẩm/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"sản phẩm/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"sản phẩm/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:33:\"sản phẩm/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:53:\"sản phẩm/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:48:\"sản phẩm/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:41:\"sản phẩm/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:48:\"sản phẩm/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:38:\"sản phẩm/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:44:\"sản phẩm/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"sản phẩm/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"sản phẩm/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:29:\"sản phẩm/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"sản phẩm/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"sản phẩm/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"sản phẩm/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:36:\"sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sidebars/([^/]+)/embed/?$\";s:40:\"index.php?sidebar=$matches[1]&embed=true\";s:29:\"sidebars/([^/]+)/trackback/?$\";s:34:\"index.php?sidebar=$matches[1]&tb=1\";s:49:\"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:44:\"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:37:\"sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&paged=$matches[2]\";s:44:\"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&cpage=$matches[2]\";s:34:\"sidebars/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?sidebar=$matches[1]&wc-api=$matches[3]\";s:40:\"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sidebar=$matches[1]&page=$matches[2]\";s:25:\"sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("4869","_transient_timeout_yit_panel_sidebar_remote_widgets","1558233675","no"),
("4935","_transient_timeout__woocommerce_helper_subscriptions","1558013355","no"),
("4936","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("4937","_transient_timeout__woocommerce_helper_updates","1558055655","no"),
("4938","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558012455;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("4947","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558041352;s:7:\"checked\";a:1:{s:8:\"flatsome\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("4953","_site_transient_timeout_theme_roots","1558043151","no"),
("4954","_site_transient_theme_roots","a:1:{s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("4955","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558041354;s:7:\"checked\";a:10:{s:30:\"db-prefix-change/db_prefix.php\";s:3:\"1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:9:\"hello.php\";s:3:\"1.6\";s:49:\"nextend-google-connect/nextend-google-connect.php\";s:5:\"1.6.1\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.20\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"2.2.10\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.20\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.20.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"2.2.10\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.10.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:9:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:30:\"db-prefix-change/db_prefix.php\";i:3;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:4;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:5;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:6;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:27:\"woosidebars/woosidebars.php\";i:9;s:34:\"yith-woocommerce-wishlist/init.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","0","yes"),
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
("58","thumbnail_size_w","200","yes"),
("59","thumbnail_size_h","150","yes"),
("60","thumbnail_crop","1","yes"),
("61","medium_size_w","400","yes"),
("62","medium_size_h","300","yes"),
("63","avatar_default","mystery","yes"),
("64","large_size_w","1024","yes"),
("65","large_size_h","768","yes"),
("66","image_default_link_type","","yes"),
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
("79","widget_text","a:4:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:10:\"LIÊN HỆ\";s:4:\"text\";s:317:\"<p><i class=\"fa fa-map-marker\"></i> Địa chỉ: Phòng 506 nhà CT2 KĐT Mễ Trì Thượng, Nam Từ Liêm, Hà Nội</p>\n<p><i class=\"fa fa-phone\"></i> Hotline: 0909 009 009</p>\n<p><i class=\"fa fa-envelope\"></i> Email: contact@gmail.vn</p>\n<p><i class=\"fa fa-globe\"></i> Website: <a href=\"#\">webdesign</a></p>\";s:6:\"filter\";b:0;}i:3;a:3:{s:5:\"title\";s:11:\"BẢN ĐỒ\";s:4:\"text\";s:361:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7649793780665!2d105.80438751438622!3d21.002055986012866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac986e5eba13%3A0xf87023d7fdebb9ad!2zQ2jhu6MgTmjDom4gQ2jDrW5o!5e0!3m2!1svi!2s!4v1492077486486\" width=\"400\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","4","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes");
INSERT INTO bz_options VALUES
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("95","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("99","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:4:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"nav_menu-3\";i:3;s:6:\"text-3\";}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("100","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_nav_menu","a:3:{i:2;a:2:{s:5:\"title\";s:10:\"THÔNG TIN\";s:8:\"nav_menu\";i:23;}i:3;a:2:{s:5:\"title\";s:12:\"SẢN PHẨM\";s:8:\"nav_menu\";i:23;}s:12:\"_multiwidget\";i:1;}","yes"),
("104","cron","a:15:{i:1558046893;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558048601;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558050459;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558051200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558068340;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558068359;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558068384;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558077254;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558096315;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558098854;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558098864;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558109654;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558119508;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("105","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1492664421;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("167","woocommerce_default_country","VN","yes"),
("168","woocommerce_allowed_countries","all","yes"),
("159","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1492663716;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("4870","_transient_yit_panel_sidebar_remote_widgets","a:0:{}","no"),
("4871","_transient_timeout_yit_panel_sidebar_remote_widgets_update","1558098680","no"),
("4902","_transient_timeout_external_ip_address_113.173.5.101","1558617253","no"),
("4903","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("4904","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("4906","woocommerce_queue_flush_rewrite_rules","no","yes"),
("4941","_transient_timeout_external_ip_address_103.74.117.155","1558617257","no"),
("4934","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("4909","woocommerce_store_address","","yes"),
("4910","woocommerce_store_address_2","","yes"),
("4911","woocommerce_store_city","","yes"),
("4912","woocommerce_store_postcode","","yes"),
("4913","woocommerce_placeholder_image","191","yes"),
("4914","woocommerce_enable_reviews","yes","yes"),
("4915","woocommerce_erasure_request_removes_order_data","no","no"),
("4916","woocommerce_erasure_request_removes_download_data","no","no"),
("4917","woocommerce_allow_bulk_remove_personal_data","no","no"),
("4918","woocommerce_registration_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].","yes"),
("4919","woocommerce_checkout_privacy_policy_text","Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].","yes"),
("4920","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("4921","woocommerce_trash_pending_orders","","no"),
("4922","woocommerce_trash_failed_orders","","no"),
("4923","woocommerce_trash_cancelled_orders","","no"),
("4924","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("4925","woocommerce_allow_tracking","no","no"),
("4926","woocommerce_show_marketplace_suggestions","yes","no"),
("4927","woocommerce_single_image_width","600","yes"),
("4928","woocommerce_thumbnail_image_width","300","yes"),
("4929","woocommerce_checkout_highlight_required_fields","yes","yes"),
("4886","_transient_timeout_plugin_slugs","1558098742","no"),
("4887","_transient_plugin_slugs","a:11:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:30:\"db-prefix-change/db_prefix.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";i:4;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:5;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:27:\"woosidebars/woosidebars.php\";i:10;s:34:\"yith-woocommerce-wishlist/init.php\";}","no"),
("4872","_transient_yit_panel_sidebar_remote_widgets_update","1","no"),
("4873","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558617081","no"),
("4874","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("4875","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558617082","no"),
("4876","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("4765","recovery_keys","a:0:{}","yes"),
("4877","_transient_timeout_wc_report_sales_by_date","1558098682","no"),
("4878","_transient_wc_report_sales_by_date","a:7:{s:32:\"3ca37b8f75b32be5596f4c4602501801\";a:0:{}s:32:\"9cca1a6d2c7183e3bd66d1364e771899\";a:0:{}s:32:\"6f27da90b621a0bfe82d2908d6262d48\";a:0:{}s:32:\"9a540590caa0dad18065ca2d3fc9606f\";N;s:32:\"8ba54a2aa6da3a9b2a928fef32befa11\";a:0:{}s:32:\"965b1f9ca34abe7a050516d9488bb612\";a:0:{}s:32:\"98c2cc117a6345717c8051d5ae705f0e\";a:0:{}}","no"),
("1071","dbprefix_old_dbprefix","vf_","yes"),
("1072","dbprefix_new","bz_","yes"),
("4754","_transient_timeout_wc_term_counts","1559933910","no"),
("4755","_transient_wc_term_counts","a:2:{i:17;s:1:\"2\";i:15;s:1:\"6\";}","no"),
("4945","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558041350;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("4942","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("137","WPLANG","vi","yes"),
("150","current_theme","Flatsome","yes"),
("151","theme_mods_flatsome 2.0","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 20 Apr 2017 04:47:49 +0000\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1492664409;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("152","theme_switched","","yes"),
("153","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("154","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("165","woosidebars-version","1.4.3","yes"),
("160","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012340;}","yes"),
("425","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531247483;}","no"),
("169","woocommerce_all_except_countries","","yes"),
("170","woocommerce_specific_allowed_countries","","yes"),
("171","woocommerce_ship_to_countries","","yes"),
("172","woocommerce_specific_ship_to_countries","","yes"),
("173","woocommerce_default_customer_address","geolocation","yes"),
("174","woocommerce_calc_taxes","no","yes"),
("175","woocommerce_demo_store","no","yes"),
("176","woocommerce_demo_store_notice","This is a demo store for testing purposes &mdash; no orders shall be fulfilled.","no"),
("177","woocommerce_currency","VND","yes"),
("178","woocommerce_currency_pos","right_space","yes"),
("179","woocommerce_price_thousand_sep",",","yes"),
("180","woocommerce_price_decimal_sep",".","yes"),
("181","woocommerce_price_num_decimals","0","yes"),
("182","woocommerce_weight_unit","kg","yes"),
("183","woocommerce_dimension_unit","cm","yes"),
("184","woocommerce_enable_review_rating","yes","yes"),
("185","woocommerce_review_rating_required","yes","no"),
("186","woocommerce_review_rating_verification_label","yes","no"),
("187","woocommerce_review_rating_verification_required","no","no"),
("188","woocommerce_shop_page_id","8","yes"),
("189","woocommerce_shop_page_display","","yes"),
("190","woocommerce_category_archive_display","","yes"),
("191","woocommerce_default_catalog_orderby","menu_order","yes"),
("192","woocommerce_cart_redirect_after_add","no","yes"),
("193","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("194","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}","yes"),
("195","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("196","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:3:\"114\";s:6:\"height\";s:3:\"130\";s:4:\"crop\";i:1;}","yes"),
("197","woocommerce_manage_stock","yes","yes");
INSERT INTO bz_options VALUES
("198","woocommerce_hold_stock_minutes","60","no"),
("199","woocommerce_notify_low_stock","yes","no"),
("200","woocommerce_notify_no_stock","yes","no"),
("201","woocommerce_stock_email_recipient","cuongphan1408@gmail.com","no"),
("202","woocommerce_notify_low_stock_amount","2","no"),
("203","woocommerce_notify_no_stock_amount","0","yes"),
("204","woocommerce_hide_out_of_stock_items","no","yes"),
("205","woocommerce_stock_format","","yes"),
("206","woocommerce_file_download_method","force","no"),
("207","woocommerce_downloads_require_login","no","no"),
("208","woocommerce_downloads_grant_access_after_payment","yes","no"),
("209","woocommerce_prices_include_tax","no","yes"),
("210","woocommerce_tax_based_on","shipping","yes"),
("211","woocommerce_shipping_tax_class","inherit","yes"),
("212","woocommerce_tax_round_at_subtotal","no","yes"),
("213","woocommerce_tax_classes","Reduced rate\nZero rate","yes"),
("214","woocommerce_tax_display_shop","excl","yes"),
("215","woocommerce_tax_display_cart","excl","no"),
("216","woocommerce_price_display_suffix","","yes"),
("217","woocommerce_tax_total_display","itemized","no"),
("218","woocommerce_enable_shipping_calc","yes","no"),
("219","woocommerce_shipping_cost_requires_address","no","no"),
("220","woocommerce_ship_to_destination","billing","no"),
("221","woocommerce_shipping_debug_mode","no","no"),
("222","woocommerce_enable_coupons","yes","yes"),
("223","woocommerce_calc_discounts_sequentially","no","no"),
("224","woocommerce_enable_guest_checkout","yes","no"),
("225","woocommerce_force_ssl_checkout","no","yes"),
("226","woocommerce_unforce_ssl_checkout","no","yes"),
("227","woocommerce_cart_page_id","9","yes"),
("228","woocommerce_checkout_page_id","10","yes"),
("229","woocommerce_terms_page_id","","no"),
("230","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("231","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("232","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("233","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("234","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("235","woocommerce_myaccount_page_id","11","yes"),
("236","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("237","woocommerce_enable_myaccount_registration","no","no"),
("238","woocommerce_enable_checkout_login_reminder","yes","no"),
("239","woocommerce_registration_generate_username","yes","no"),
("240","woocommerce_registration_generate_password","no","no"),
("241","woocommerce_myaccount_orders_endpoint","orders","yes"),
("242","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("243","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("244","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("245","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("246","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("247","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("248","woocommerce_logout_endpoint","customer-logout","yes"),
("249","woocommerce_email_from_name","Rèm cửa, rèm cửa đẹp","no"),
("250","woocommerce_email_from_address","cuongphan1408@gmail.com","no"),
("251","woocommerce_email_header_image","","no"),
("252","woocommerce_email_footer_text","Rèm cửa, rèm cửa đẹp - Powered by WooCommerce","no"),
("253","woocommerce_email_base_color","#96588a","no"),
("254","woocommerce_email_background_color","#f7f7f7","no"),
("255","woocommerce_email_body_background_color","#ffffff","no"),
("256","woocommerce_email_text_color","#3c3c3c","no"),
("257","woocommerce_api_enabled","yes","yes"),
("283","woocommerce_meta_box_errors","a:0:{}","yes"),
("2682","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:9:\"moderated\";s:1:\"1\";s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("261","woocommerce_db_version","3.0.3","yes"),
("4932","woocommerce_version","3.6.2","yes"),
("340","_transient__flatsome_activation_redirect","1","yes"),
("263","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("267","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("268","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("269","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("270","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("271","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("272","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("273","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("274","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("275","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("276","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("277","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("278","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("279","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("280","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4931","default_product_cat","25","yes"),
("288","yit_recently_activated","a:0:{}","yes"),
("293","yith_wcwl_frontend_css_colors","s:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";","yes"),
("294","yith_wcwl_wishlist_title","My wishlist on Rèm cửa, rèm cửa đẹp","yes"),
("295","yith-wcwl-page-id","7","yes"),
("296","yith_wcwl_wishlist_page_id","7","yes"),
("297","yith_wcwl_version","2.1.0","yes"),
("298","yith_wcwl_db_version","2.0.0","yes"),
("299","yith_wcwl_general_videobox","a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:103:\"http://localhost:81/curtain/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}","yes"),
("300","yith_wcwl_enabled","yes","yes"),
("301","yith_wcwl_redirect_cart","no","yes"),
("302","yith_wcwl_remove_after_add_to_cart","yes","yes"),
("303","yith_wcwl_add_to_wishlist_text","Add to Wishlist","yes"),
("304","yith_wcwl_browse_wishlist_text","Browse Wishlist","yes"),
("305","yith_wcwl_already_in_wishlist_text","The product is already in the wishlist!","yes"),
("306","yith_wcwl_product_added_text","Product added!","yes"),
("307","yith_wcwl_add_to_cart_text","Add to Cart","yes"),
("308","yith_wcwl_price_show","yes","yes"),
("309","yith_wcwl_add_to_cart_show","yes","yes"),
("310","yith_wcwl_stock_show","yes","yes");
INSERT INTO bz_options VALUES
("311","yith_wcwl_show_dateadded","no","yes"),
("312","yith_wcwl_repeat_remove_button","no","yes"),
("313","yith_wcwl_share_fb","yes","yes"),
("314","yith_wcwl_share_twitter","yes","yes"),
("315","yith_wcwl_share_pinterest","yes","yes"),
("316","yith_wcwl_share_googleplus","yes","yes"),
("317","yith_wcwl_share_email","yes","yes"),
("318","yith_wcwl_socials_title","My wishlist on Rèm cửa, rèm cửa đẹp","yes"),
("319","yith_wcwl_socials_text","","yes"),
("320","yith_wcwl_socials_image_url","","yes"),
("321","yith_wfbt_enable_integration","yes","yes"),
("322","yith_wcwl_use_button","no","yes"),
("323","yith_wcwl_custom_css","","yes"),
("324","yith_wcwl_frontend_css","yes","yes"),
("325","yith_wcwl_rounded_corners","yes","yes"),
("326","yith_wcwl_add_to_wishlist_icon","none","yes"),
("327","yith_wcwl_add_to_cart_icon","fa-shopping-cart","yes"),
("328","_transient_shipping-transient-version","1492663878","yes"),
("331","envato_setup_complete","1492663895","yes"),
("339","theme_mods_flatsome","a:68:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 20 Apr 2017 05:00:23 +0000\";s:18:\"custom_css_post_id\";i:84;s:13:\"header_height\";s:3:\"100\";s:10:\"nav_height\";s:2:\"16\";s:9:\"site_logo\";s:74:\"https://bizhostvn.com/w/remcua/wp-content/uploads/2017/07/BIZHOST-DEMO.png\";s:13:\"contact_email\";s:16:\"contact@gmail.vn\";s:13:\"contact_hours\";s:0:\"\";s:13:\"contact_phone\";s:12:\"0909 009 009\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:23;}s:19:\"header_search_width\";s:2:\"64\";s:20:\"header_bottom_height\";s:2:\"40\";s:15:\"nav_position_bg\";s:7:\"#E74C3C\";s:16:\"nav_style_bottom\";s:0:\"\";s:21:\"type_nav_bottom_color\";s:7:\"#FFFFFF\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#FFFFFF\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_position_color\";s:4:\"dark\";s:20:\"header_height_sticky\";s:2:\"70\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";s:1:\"0\";s:13:\"color_primary\";s:7:\"#F39C12\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:7:\"regular\";}s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:7:\"regular\";}s:11:\"color_texts\";s:7:\"#000000\";s:19:\"type_headings_color\";s:7:\"#000000\";s:11:\"color_links\";s:7:\"#E74C3C\";s:14:\"product_header\";s:0:\"\";s:17:\"product_info_meta\";s:1:\"1\";s:11:\"color_alert\";s:7:\"#E0E0E0\";s:20:\"product_box_category\";s:1:\"0\";s:22:\"sale_bubble_percentage\";s:1:\"1\";s:10:\"grid_style\";s:5:\"grid2\";s:20:\"nav_uppercase_bottom\";s:1:\"0\";s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#EDEDED\";s:19:\"contact_email_label\";s:16:\"contact@gmail.vn\";s:17:\"footer_1_bg_color\";s:7:\"#FFFFFF\";s:17:\"footer_2_bg_color\";s:7:\"#3D3D3D\";s:16:\"footer_left_text\";s:61:\"Copyright [ux_current_year] &copy; <strong>webdesign</strong>\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("368","_transient_product-transient-version","1492686075","yes"),
("4930","product_cat_children","a:0:{}","yes"),
("366","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("367","_transient_product_query-transient-version","1492686074","yes"),
("376","_transient_woocommerce_cache_excluded_uris","a:6:{i:0;s:3:\"p=9\";i:1;s:10:\"/gio-hang/\";i:2;s:4:\"p=10\";i:3;s:12:\"/thanh-toan/\";i:4;s:4:\"p=11\";i:5;s:11:\"/tai-khoan/\";}","yes"),
("522","category_children","a:0:{}","yes"),
("800","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:12:\"sản phẩm\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("4905","current_theme_supports_woocommerce","yes","yes"),
("4756","_transient_timeout_wc_shipping_method_count_1_1492663878","1559933911","no"),
("4757","_transient_wc_shipping_method_count_1_1492663878","0","no"),
("4855","wp_page_for_privacy_policy","0","yes"),
("4856","show_comments_cookies_opt_in","1","yes"),
("4857","db_upgraded","","yes"),
("4786","_transient_timeout_wc_products_onsale","1560065096","no"),
("4787","_transient_wc_products_onsale","a:8:{i:0;i:47;i:1;i:54;i:2;i:55;i:3;i:56;i:4;i:57;i:5;i:58;i:6;i:110;i:7;i:117;}","no"),
("2716","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2717","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2718","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2719","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2720","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4879","_transient_timeout_wc_admin_report","1558098682","no"),
("4880","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("4881","_transient_timeout_wc_low_stock_count","1560604282","no"),
("4882","_transient_wc_low_stock_count","0","no"),
("4883","_transient_timeout_wc_outofstock_count","1560604282","no"),
("4884","_transient_wc_outofstock_count","0","no"),
("4885","can_compress_scripts","0","no"),
("4888","_transient_timeout_wc_upgrade_notice_3.0.3","1558098690","no"),
("4889","_transient_wc_upgrade_notice_3.0.3","","no"),
("4897","nsl-version","3.0.20","yes"),
("4898","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=588 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("2","4","_edit_last","1"),
("3","4","_edit_lock","1509524468:1"),
("4","6","_form","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]"),
("5","6","_mail","a:8:{s:7:\"subject\";s:46:\"Rèm cửa, rèm cửa đẹp \"[your-subject]\"\";s:6:\"sender\";s:37:\"[your-name] <cuongphan1408@gmail.com>\";s:4:\"body\";s:195:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rèm cửa, rèm cửa đẹp (http://localhost:81/curtain)\";s:9:\"recipient\";s:23:\"cuongphan1408@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("6","6","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:46:\"Rèm cửa, rèm cửa đẹp \"[your-subject]\"\";s:6:\"sender\";s:55:\"Rèm cửa, rèm cửa đẹp <cuongphan1408@gmail.com>\";s:4:\"body\";s:137:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rèm cửa, rèm cửa đẹp (http://localhost:81/curtain)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: cuongphan1408@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("7","6","_messages","a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}"),
("8","6","_additional_settings",""),
("9","6","_locale","vi"),
("387","63","_wp_attached_file","2017/04/light-wall.png"),
("388","63","_wp_attachment_metadata","a:5:{s:5:\"width\";i:558;s:6:\"height\";i:700;s:4:\"file\";s:22:\"2017/04/light-wall.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"light-wall-200x150.png\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"light-wall-239x300.png\";s:5:\"width\";i:239;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"light-wall-114x130.png\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"light-wall-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"light-wall-558x600.png\";s:5:\"width\";i:558;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("23","20","_edit_last","1"),
("24","20","_footer","normal"),
("25","20","_wp_page_template","default"),
("26","20","_edit_lock","1492673463:1"),
("27","22","_edit_last","1"),
("28","22","_footer","normal"),
("29","22","_wp_page_template","default"),
("30","22","_edit_lock","1492673445:1"),
("31","24","_edit_last","1"),
("32","24","_footer","normal"),
("33","24","_wp_page_template","default"),
("34","24","_edit_lock","1492673426:1"),
("35","27","_menu_item_type","post_type"),
("36","27","_menu_item_menu_item_parent","0"),
("37","27","_menu_item_object_id","20"),
("38","27","_menu_item_object","page"),
("39","27","_menu_item_target",""),
("40","27","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("41","27","_menu_item_xfn",""),
("42","27","_menu_item_url",""),
("154","42","_wp_attached_file","2017/04/slide02.jpg"),
("44","28","_menu_item_type","post_type"),
("45","28","_menu_item_menu_item_parent","0"),
("46","28","_menu_item_object_id","22"),
("47","28","_menu_item_object","page"),
("48","28","_menu_item_target",""),
("49","28","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("50","28","_menu_item_xfn",""),
("51","28","_menu_item_url",""),
("53","29","_menu_item_type","post_type"),
("54","29","_menu_item_menu_item_parent","0"),
("55","29","_menu_item_object_id","24"),
("56","29","_menu_item_object","page"),
("57","29","_menu_item_target",""),
("58","29","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("59","29","_menu_item_xfn",""),
("60","29","_menu_item_url",""),
("62","30","_menu_item_type","post_type"),
("63","30","_menu_item_menu_item_parent","0"),
("64","30","_menu_item_object_id","4"),
("65","30","_menu_item_object","page"),
("66","30","_menu_item_target",""),
("67","30","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("68","30","_menu_item_xfn",""),
("69","30","_menu_item_url",""),
("71","31","_menu_item_type","taxonomy"),
("72","31","_menu_item_menu_item_parent","39"),
("73","31","_menu_item_object_id","18"),
("74","31","_menu_item_object","product_cat"),
("75","31","_menu_item_target",""),
("76","31","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("77","31","_menu_item_xfn",""),
("78","31","_menu_item_url",""),
("80","32","_menu_item_type","taxonomy"),
("81","32","_menu_item_menu_item_parent","39"),
("82","32","_menu_item_object_id","21"),
("83","32","_menu_item_object","product_cat"),
("84","32","_menu_item_target",""),
("85","32","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("86","32","_menu_item_xfn",""),
("87","32","_menu_item_url",""),
("89","33","_menu_item_type","taxonomy"),
("90","33","_menu_item_menu_item_parent","39"),
("91","33","_menu_item_object_id","17"),
("92","33","_menu_item_object","product_cat"),
("93","33","_menu_item_target",""),
("94","33","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("95","33","_menu_item_xfn",""),
("96","33","_menu_item_url",""),
("98","34","_menu_item_type","taxonomy"),
("99","34","_menu_item_menu_item_parent","39"),
("100","34","_menu_item_object_id","16"),
("101","34","_menu_item_object","product_cat"),
("102","34","_menu_item_target",""),
("103","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("104","34","_menu_item_xfn",""),
("105","34","_menu_item_url",""),
("107","35","_menu_item_type","taxonomy"),
("108","35","_menu_item_menu_item_parent","39"),
("109","35","_menu_item_object_id","20"),
("110","35","_menu_item_object","product_cat"),
("111","35","_menu_item_target",""),
("112","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("113","35","_menu_item_xfn",""),
("114","35","_menu_item_url",""),
("155","42","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:587;s:4:\"file\";s:19:\"2017/04/slide02.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide02-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide02-400x229.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide02-768x440.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide02-1024x587.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slide02-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slide02-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slide02-800x587.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("116","36","_menu_item_type","taxonomy"),
("117","36","_menu_item_menu_item_parent","39"),
("118","36","_menu_item_object_id","19");
INSERT INTO bz_postmeta VALUES
("119","36","_menu_item_object","product_cat"),
("120","36","_menu_item_target",""),
("121","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("122","36","_menu_item_xfn",""),
("123","36","_menu_item_url",""),
("125","37","_menu_item_type","taxonomy"),
("126","37","_menu_item_menu_item_parent","39"),
("127","37","_menu_item_object_id","22"),
("128","37","_menu_item_object","product_cat"),
("129","37","_menu_item_target",""),
("130","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("131","37","_menu_item_xfn",""),
("132","37","_menu_item_url",""),
("134","38","_menu_item_type","taxonomy"),
("135","38","_menu_item_menu_item_parent","39"),
("136","38","_menu_item_object_id","15"),
("137","38","_menu_item_object","product_cat"),
("138","38","_menu_item_target",""),
("139","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("140","38","_menu_item_xfn",""),
("141","38","_menu_item_url",""),
("143","39","_menu_item_type","custom"),
("144","39","_menu_item_menu_item_parent","0"),
("145","39","_menu_item_object_id","39"),
("146","39","_menu_item_object","custom"),
("147","39","_menu_item_target",""),
("148","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("149","39","_menu_item_xfn",""),
("150","39","_menu_item_url","#"),
("156","43","_wp_attached_file","2017/04/slide03.jpg"),
("157","43","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:587;s:4:\"file\";s:19:\"2017/04/slide03.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide03-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide03-400x229.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide03-768x440.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide03-1024x587.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slide03-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slide03-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slide03-800x587.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("158","44","_wp_attached_file","2017/04/slide04.jpg"),
("159","44","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:587;s:4:\"file\";s:19:\"2017/04/slide04.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide04-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide04-400x229.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide04-768x440.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide04-1024x587.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slide04-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slide04-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slide04-800x587.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("160","45","_wp_attached_file","2017/04/slide01.jpg"),
("161","45","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:587;s:4:\"file\";s:19:\"2017/04/slide01.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide01-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide01-400x229.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide01-768x440.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide01-1024x587.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slide01-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slide01-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slide01-800x587.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("162","4","_wp_page_template","page-blank.php"),
("163","4","_footer","normal"),
("165","47","_wc_review_count","0"),
("166","47","_wc_rating_count","a:0:{}"),
("167","47","_wc_average_rating","0"),
("168","47","_edit_last","1"),
("169","47","_edit_lock","1492674750:1"),
("170","48","_wp_attached_file","2017/04/001.jpg"),
("171","48","_wp_attachment_metadata","a:5:{s:5:\"width\";i:750;s:6:\"height\";i:563;s:4:\"file\";s:15:\"2017/04/001.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"001-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"001-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"001-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"001-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:11:\"Zooey Braun\";s:6:\"camera\";s:5:\"IQ140\";s:7:\"caption\";s:288:\"DEU, Walldorf, SAP Büro , Architekten: Scope , Fertigstellung: Jan 2012 , DIGITAL 100 MB 8 Bit. - ©Zooey Braun; Veroeffentlichung nur gegen Honorar, Urhebervermerk und Beleg / permission required for reproduction, mention of copyright, complimentary copy, FUER WERBENUTZUNG RUECKSPRACHE\";s:17:\"created_timestamp\";s:10:\"1324466220\";s:9:\"copyright\";s:91:\"Zooey Braun, Roemerstraße 51, 70180 StuttgartTel. 0049-(0)711-6400361zooey@zooeybraun.de\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:3:\"0.5\";s:5:\"title\";s:5:\"ZB371\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("172","49","_wp_attached_file","2017/04/002.jpg"),
("173","49","_wp_attachment_metadata","a:5:{s:5:\"width\";i:734;s:6:\"height\";i:551;s:4:\"file\";s:15:\"2017/04/002.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"002-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"002-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"002-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"002-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492684266\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("174","50","_wp_attached_file","2017/04/003.jpg"),
("175","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1067;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2017/04/003.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"003-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"003-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"003-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"003-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"003-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"003-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"003-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:9:\"PhotoSin5\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492683840\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("176","51","_wp_attached_file","2017/04/004.jpg"),
("177","51","_wp_attachment_metadata","a:5:{s:5:\"width\";i:892;s:6:\"height\";i:669;s:4:\"file\";s:15:\"2017/04/004.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"004-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"004-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"004-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"004-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"004-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"004-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492683860\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("178","52","_wp_attached_file","2017/04/005.jpg"),
("179","52","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1332;s:6:\"height\";i:999;s:4:\"file\";s:15:\"2017/04/005.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"005-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"005-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"005-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"005-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"005-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"005-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"005-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492684758\";s:9:\"copyright\";s:15:\"© Spike Powell\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("180","53","_wp_attached_file","2017/04/006.jpg"),
("181","53","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1390;s:6:\"height\";i:1041;s:4:\"file\";s:15:\"2017/04/006.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"006-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"006-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"006-768x575.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"006-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"006-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"006-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"006-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:15:\"Damir Fabijanic\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492684890\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("182","47","_thumbnail_id","48"),
("183","47","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("184","47","_sku",""),
("185","47","_regular_price","9000000"),
("186","47","_sale_price","8500000"),
("187","47","_sale_price_dates_from",""),
("188","47","_sale_price_dates_to",""),
("189","47","total_sales","0"),
("190","47","_tax_status","taxable"),
("191","47","_tax_class",""),
("192","47","_manage_stock","no"),
("193","47","_backorders","no"),
("194","47","_sold_individually","no"),
("195","47","_weight",""),
("196","47","_length",""),
("197","47","_width",""),
("198","47","_height",""),
("199","47","_upsell_ids","a:0:{}"),
("200","47","_crosssell_ids","a:0:{}"),
("201","47","_purchase_note",""),
("202","47","_default_attributes","a:0:{}"),
("203","47","_virtual","no"),
("204","47","_downloadable","no"),
("205","47","_product_image_gallery",""),
("206","47","_download_limit","-1"),
("207","47","_download_expiry","-1"),
("208","47","_stock",""),
("209","47","_stock_status","instock"),
("210","47","_product_version","3.0.3"),
("211","47","_price","8500000"),
("212","54","_wc_review_count","0"),
("213","54","_wc_rating_count","a:0:{}"),
("214","54","_wc_average_rating","0"),
("215","54","_edit_last","1"),
("216","54","_edit_lock","1492685888:1"),
("217","54","_thumbnail_id","111"),
("218","54","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("219","54","_sku",""),
("220","54","_regular_price","8600000"),
("221","54","_sale_price","8000000"),
("222","54","_sale_price_dates_from",""),
("223","54","_sale_price_dates_to",""),
("224","54","total_sales","0"),
("225","54","_tax_status","taxable"),
("226","54","_tax_class",""),
("227","54","_manage_stock","no");
INSERT INTO bz_postmeta VALUES
("228","54","_backorders","no"),
("229","54","_sold_individually","no"),
("230","54","_weight",""),
("231","54","_length",""),
("232","54","_width",""),
("233","54","_height",""),
("234","54","_upsell_ids","a:0:{}"),
("235","54","_crosssell_ids","a:0:{}"),
("236","54","_purchase_note",""),
("237","54","_default_attributes","a:0:{}"),
("238","54","_virtual","no"),
("239","54","_downloadable","no"),
("240","54","_product_image_gallery",""),
("241","54","_download_limit","-1"),
("242","54","_download_expiry","-1"),
("243","54","_stock",""),
("244","54","_stock_status","instock"),
("245","54","_product_version","3.0.3"),
("246","54","_price","8000000"),
("247","55","_wc_review_count","0"),
("248","55","_wc_rating_count","a:0:{}"),
("249","55","_wc_average_rating","0"),
("250","55","_edit_last","1"),
("251","55","_edit_lock","1492674854:1"),
("252","55","_thumbnail_id","50"),
("253","55","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("254","55","_sku",""),
("255","55","_regular_price","78000000"),
("256","55","_sale_price","7000000"),
("257","55","_sale_price_dates_from",""),
("258","55","_sale_price_dates_to",""),
("259","55","total_sales","0"),
("260","55","_tax_status","taxable"),
("261","55","_tax_class",""),
("262","55","_manage_stock","no"),
("263","55","_backorders","no"),
("264","55","_sold_individually","no"),
("265","55","_weight",""),
("266","55","_length",""),
("267","55","_width",""),
("268","55","_height",""),
("269","55","_upsell_ids","a:0:{}"),
("270","55","_crosssell_ids","a:0:{}"),
("271","55","_purchase_note",""),
("272","55","_default_attributes","a:0:{}"),
("273","55","_virtual","no"),
("274","55","_downloadable","no"),
("275","55","_product_image_gallery",""),
("276","55","_download_limit","-1"),
("277","55","_download_expiry","-1"),
("278","55","_stock",""),
("279","55","_stock_status","instock"),
("280","55","_product_version","3.0.3"),
("281","55","_price","7000000"),
("282","56","_wc_review_count","0"),
("283","56","_wc_rating_count","a:0:{}"),
("284","56","_wc_average_rating","0"),
("285","56","_edit_last","1"),
("286","56","_edit_lock","1492685942:1"),
("287","56","_thumbnail_id","112"),
("288","56","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("289","56","_sku",""),
("290","56","_regular_price","5000000"),
("291","56","_sale_price","4500000"),
("292","56","_sale_price_dates_from",""),
("293","56","_sale_price_dates_to",""),
("294","56","total_sales","0"),
("295","56","_tax_status","taxable"),
("296","56","_tax_class",""),
("297","56","_manage_stock","no"),
("298","56","_backorders","no"),
("299","56","_sold_individually","no"),
("300","56","_weight",""),
("301","56","_length",""),
("302","56","_width",""),
("303","56","_height",""),
("304","56","_upsell_ids","a:0:{}"),
("305","56","_crosssell_ids","a:0:{}"),
("306","56","_purchase_note",""),
("307","56","_default_attributes","a:0:{}"),
("308","56","_virtual","no"),
("309","56","_downloadable","no"),
("310","56","_product_image_gallery",""),
("311","56","_download_limit","-1"),
("312","56","_download_expiry","-1"),
("313","56","_stock",""),
("314","56","_stock_status","instock"),
("315","56","_product_version","3.0.3"),
("316","56","_price","4500000"),
("317","57","_wc_review_count","0"),
("318","57","_wc_rating_count","a:0:{}"),
("319","57","_wc_average_rating","0"),
("320","57","_edit_last","1"),
("321","57","_edit_lock","1492676903:1"),
("322","57","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("323","57","_sku",""),
("324","57","_regular_price","6700000"),
("325","57","_sale_price","6500000"),
("326","57","_sale_price_dates_from",""),
("327","57","_sale_price_dates_to","");
INSERT INTO bz_postmeta VALUES
("328","57","total_sales","0"),
("329","57","_tax_status","taxable"),
("330","57","_tax_class",""),
("331","57","_manage_stock","no"),
("332","57","_backorders","no"),
("333","57","_sold_individually","no"),
("334","57","_weight",""),
("335","57","_length",""),
("336","57","_width",""),
("337","57","_height",""),
("338","57","_upsell_ids","a:0:{}"),
("339","57","_crosssell_ids","a:0:{}"),
("340","57","_purchase_note",""),
("341","57","_default_attributes","a:0:{}"),
("342","57","_virtual","no"),
("343","57","_downloadable","no"),
("344","57","_product_image_gallery",""),
("345","57","_download_limit","-1"),
("346","57","_download_expiry","-1"),
("347","57","_stock",""),
("348","57","_stock_status","instock"),
("349","57","_product_version","3.0.3"),
("350","57","_price","6500000"),
("351","58","_wc_review_count","0"),
("352","58","_wc_rating_count","a:0:{}"),
("353","58","_wc_average_rating","0"),
("354","58","_edit_last","1"),
("355","58","_edit_lock","1492675460:1"),
("356","58","_thumbnail_id","53"),
("357","58","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("358","58","_sku",""),
("359","58","_regular_price","7800000"),
("360","58","_sale_price","7200000"),
("361","58","_sale_price_dates_from",""),
("362","58","_sale_price_dates_to",""),
("363","58","total_sales","0"),
("364","58","_tax_status","taxable"),
("365","58","_tax_class",""),
("366","58","_manage_stock","no"),
("367","58","_backorders","no"),
("368","58","_sold_individually","no"),
("369","58","_weight",""),
("370","58","_length",""),
("371","58","_width",""),
("372","58","_height",""),
("373","58","_upsell_ids","a:0:{}"),
("374","58","_crosssell_ids","a:0:{}"),
("375","58","_purchase_note",""),
("376","58","_default_attributes","a:0:{}"),
("377","58","_virtual","no"),
("378","58","_downloadable","no"),
("379","58","_product_image_gallery",""),
("380","58","_download_limit","-1"),
("381","58","_download_expiry","-1"),
("382","58","_stock",""),
("383","58","_stock_status","instock"),
("384","58","_product_version","3.0.3"),
("385","58","_price","7200000"),
("386","57","_thumbnail_id","52"),
("389","65","_wp_attached_file","2017/04/bg.png"),
("390","65","_wp_attachment_metadata","a:5:{s:5:\"width\";i:64;s:6:\"height\";i:92;s:4:\"file\";s:14:\"2017/04/bg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("422","110","_wc_review_count","0"),
("423","110","_wc_rating_count","a:0:{}"),
("424","110","_wc_average_rating","0"),
("425","110","_edit_last","1"),
("426","110","_edit_lock","1492685800:1"),
("427","111","_wp_attached_file","2017/04/001.jpeg"),
("428","111","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1707;s:6:\"height\";i:1280;s:4:\"file\";s:16:\"2017/04/001.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"001-200x150.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"001-400x300.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"001-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"001-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"001-114x130.jpeg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"001-400x300.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"001-800x600.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:9:\"Xia Sheng\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1361019538\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"19\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:16:\"0.16666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("429","112","_wp_attached_file","2017/04/002-1.jpg"),
("430","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:990;s:6:\"height\";i:742;s:4:\"file\";s:17:\"2017/04/002-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"002-1-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"002-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"002-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"002-1-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"002-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"002-1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492684536\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("431","113","_wp_attached_file","2017/04/003-1.jpg"),
("432","113","_wp_attachment_metadata","a:5:{s:5:\"width\";i:3445;s:6:\"height\";i:2584;s:4:\"file\";s:17:\"2017/04/003-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"003-1-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"003-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"003-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"003-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"003-1-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"003-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"003-1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:19:\"Alexander van Berge\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1378252800\";s:9:\"copyright\";s:31:\"Photography Alexander van Berge\";s:12:\"focal_length\";s:2:\"27\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:16:\"luxaflex Plissé\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("433","114","_wp_attached_file","2017/04/004-1.jpg"),
("434","114","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1321;s:6:\"height\";i:991;s:4:\"file\";s:17:\"2017/04/004-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"004-1-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"004-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"004-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"004-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"004-1-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"004-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"004-1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:117:\"Ba Nursery Curtain Ideas Ba Zone Area pertaining to Baby Nursery curtains with regard to Your own home - Design Decor\";s:17:\"created_timestamp\";s:10:\"1492684834\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:102:\"Ba Nursery Curtain Ideas Ba Zone Area pertaining to Baby Nursery curtains with regard to Your own home\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("435","115","_wp_attached_file","2017/04/005-1.jpg"),
("436","115","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1023;s:6:\"height\";i:767;s:4:\"file\";s:17:\"2017/04/005-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"005-1-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"005-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"005-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"005-1-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"005-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"005-1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:98:\"Modern Living Room Curtains Living Beautiful Modern Living Room Curtains Room - Home Decor Gallery\";s:17:\"created_timestamp\";s:10:\"1492685044\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:77:\"Modern Living Room Curtains Living Beautiful Modern Living Room Curtains Room\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("437","116","_wp_attached_file","2017/04/006-1.jpg"),
("438","116","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:17:\"2017/04/006-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"006-1-200x150.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"006-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"006-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"006-1-114x130.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"006-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"006-1-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1492685782\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("439","110","_thumbnail_id","116"),
("440","110","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("441","110","_sku",""),
("442","110","_regular_price","7800000"),
("443","110","_sale_price","7200000"),
("444","110","_sale_price_dates_from",""),
("445","110","_sale_price_dates_to",""),
("446","110","total_sales","0"),
("447","110","_tax_status","taxable"),
("448","110","_tax_class",""),
("449","110","_manage_stock","no"),
("450","110","_backorders","no"),
("451","110","_sold_individually","no"),
("452","110","_weight",""),
("453","110","_length",""),
("454","110","_width",""),
("455","110","_height",""),
("456","110","_upsell_ids","a:0:{}"),
("457","110","_crosssell_ids","a:0:{}"),
("458","110","_purchase_note",""),
("459","110","_default_attributes","a:0:{}"),
("460","110","_virtual","no");
INSERT INTO bz_postmeta VALUES
("461","110","_downloadable","no"),
("462","110","_product_image_gallery",""),
("463","110","_download_limit","-1"),
("464","110","_download_expiry","-1"),
("465","110","_stock",""),
("466","110","_stock_status","instock"),
("467","110","_product_version","3.0.3"),
("468","110","_price","7200000"),
("469","117","_wc_review_count","0"),
("470","117","_wc_rating_count","a:0:{}"),
("471","117","_wc_average_rating","0"),
("472","117","_edit_last","1"),
("473","117","_edit_lock","1492685852:1"),
("474","117","_thumbnail_id","115"),
("475","117","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("476","117","_sku",""),
("477","117","_regular_price","4500000"),
("478","117","_sale_price","4100000"),
("479","117","_sale_price_dates_from",""),
("480","117","_sale_price_dates_to",""),
("481","117","total_sales","0"),
("482","117","_tax_status","taxable"),
("483","117","_tax_class",""),
("484","117","_manage_stock","no"),
("485","117","_backorders","no"),
("486","117","_sold_individually","no"),
("487","117","_weight",""),
("488","117","_length",""),
("489","117","_width",""),
("490","117","_height",""),
("491","117","_upsell_ids","a:0:{}"),
("492","117","_crosssell_ids","a:0:{}"),
("493","117","_purchase_note",""),
("494","117","_default_attributes","a:0:{}"),
("495","117","_virtual","no"),
("496","117","_downloadable","no"),
("497","117","_product_image_gallery",""),
("498","117","_download_limit","-1"),
("499","117","_download_expiry","-1"),
("500","117","_stock",""),
("501","117","_stock_status","instock"),
("502","117","_product_version","3.0.3"),
("503","117","_price","4100000"),
("581","181","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/07/BIZHOST-DEMO.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-200x75.png\";s:5:\"width\";i:200;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-114x75.png\";s:5:\"width\";i:114;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("580","181","_wp_attached_file","2017/07/BIZHOST-DEMO.png"),
("573","175","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:75;s:4:\"file\";s:13:\"2017/07/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-200x75.png\";s:5:\"width\";i:200;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:12:\"1-114x75.png\";s:5:\"width\";i:114;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("572","175","_wp_attached_file","2017/07/1.png"),
("586","191","_wp_attached_file","woocommerce-placeholder.png"),
("587","191","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-200x150.png\";s:5:\"width\";i:200;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("1","1","2017-04-20 04:45:40","2017-04-20 04:45:40","Welcome to WordPress. This is your first post. Edit or delete it, then start writing!","Hello world!","","publish","open","open","","hello-world","","","2017-04-20 04:45:40","2017-04-20 04:45:40","","0","http://localhost:81/curtain/?p=1","0","post","","1"),
("2","1","2017-04-20 04:45:40","2017-04-20 04:45:40","This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:81/curtain/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!","Sample Page","","publish","closed","open","","sample-page","","","2017-04-20 04:45:40","2017-04-20 04:45:40","","0","http://localhost:81/curtain/?page_id=2","0","page","","0"),
("4","1","2017-04-20 04:46:34","2017-04-20 04:46:34","[section bg_color=\"rgb(255, 255, 255)\" padding=\"0px\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n[/ux_slider]\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h2 style=\"text-align: left;\"></h2>\n<h2 style=\"text-align: left;\"><span data-text-color=\"primary\">WEBDESIGN</span></h2>\n<p style=\"text-align: left;\">Webdesign luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n<h2 style=\"text-align: left;\"></h2>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2 style=\"text-align: right;\"></h2>\n<h2 style=\"text-align: right;\"><span data-text-color=\"primary\">WEBDESIGN</span></h2>\n<p style=\"text-align: right;\">Webdesign luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-11-01 08:23:03","2017-11-01 08:23:03","","0","http://localhost:81/curtain/?page_id=4","0","page","","0"),
("5","1","2017-04-20 04:46:34","2017-04-20 04:46:34","","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 04:46:34","2017-04-20 04:46:34","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("6","1","2017-04-20 04:48:36","2017-04-20 04:48:36","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nRèm cửa, rèm cửa đẹp \"[your-subject]\"\n[your-name] <cuongphan1408@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rèm cửa, rèm cửa đẹp (http://localhost:81/curtain)\ncuongphan1408@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nRèm cửa, rèm cửa đẹp \"[your-subject]\"\nRèm cửa, rèm cửa đẹp <cuongphan1408@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rèm cửa, rèm cửa đẹp (http://localhost:81/curtain)\n[your-email]\nReply-To: cuongphan1408@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.","Contact form 1","","publish","closed","closed","","contact-form-1","","","2017-04-20 04:48:36","2017-04-20 04:48:36","","0","http://localhost:81/curtain/?post_type=wpcf7_contact_form&p=6","0","wpcf7_contact_form","","0"),
("7","1","2017-04-20 04:51:16","2017-04-20 04:51:16","[yith_wcwl_wishlist]","Wishlist","","publish","closed","closed","","wishlist","","","2017-04-20 04:51:16","2017-04-20 04:51:16","","0","http://localhost:81/curtain/wishlist/","0","page","","0"),
("8","1","2017-04-20 04:51:51","2017-04-20 04:51:51","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2017-04-20 04:51:51","2017-04-20 04:51:51","","0","http://localhost:81/curtain/cua-hang/","0","page","","0"),
("9","1","2017-04-20 04:51:51","2017-04-20 04:51:51","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2017-04-20 04:51:51","2017-04-20 04:51:51","","0","http://localhost:81/curtain/gio-hang/","0","page","","0"),
("10","1","2017-04-20 04:51:51","2017-04-20 04:51:51","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2017-04-20 04:51:51","2017-04-20 04:51:51","","0","http://localhost:81/curtain/thanh-toan/","0","page","","0"),
("11","1","2017-04-20 04:51:51","2017-04-20 04:51:51","[woocommerce_my_account]","My account","","publish","closed","closed","","tai-khoan","","","2017-04-20 04:51:51","2017-04-20 04:51:51","","0","http://localhost:81/curtain/tai-khoan/","0","page","","0"),
("175","1","2017-07-04 00:42:43","2017-07-04 00:42:43","","1","","inherit","open","closed","","1","","","2017-07-04 00:42:43","2017-07-04 00:42:43","","0","https://bizhostvn.com/w/remcua/wp-content/uploads/2017/07/1.png","0","attachment","image/png","0"),
("20","1","2017-04-20 07:33:21","2017-04-20 07:33:21","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2017-04-20 07:33:21","2017-04-20 07:33:21","","0","http://localhost:81/curtain/?page_id=20","0","page","","0"),
("21","1","2017-04-20 07:30:48","2017-04-20 07:30:48","","Giới thiệu","","inherit","closed","closed","","20-revision-v1","","","2017-04-20 07:30:48","2017-04-20 07:30:48","","20","http://localhost:81/curtain/2017/04/20/20-revision-v1/","0","revision","","0"),
("22","1","2017-04-20 07:33:00","2017-04-20 07:33:00","","Tin tức","","publish","closed","closed","","tin-tuc","","","2017-04-20 07:33:00","2017-04-20 07:33:00","","0","http://localhost:81/curtain/?page_id=22","0","page","","0"),
("23","1","2017-04-20 07:31:08","2017-04-20 07:31:08","","Tin tức","","inherit","closed","closed","","22-revision-v1","","","2017-04-20 07:31:08","2017-04-20 07:31:08","","22","http://localhost:81/curtain/2017/04/20/22-revision-v1/","0","revision","","0"),
("24","1","2017-04-20 07:31:31","2017-04-20 07:31:31","","Liên hệ","","publish","closed","closed","","lien-he","","","2017-04-20 07:31:31","2017-04-20 07:31:31","","0","http://localhost:81/curtain/?page_id=24","0","page","","0"),
("25","1","2017-04-20 07:31:31","2017-04-20 07:31:31","","Liên hệ","","inherit","closed","closed","","24-revision-v1","","","2017-04-20 07:31:31","2017-04-20 07:31:31","","24","http://localhost:81/curtain/2017/04/20/24-revision-v1/","0","revision","","0"),
("27","1","2017-04-20 07:36:20","2017-04-20 07:36:20"," ","","","publish","closed","closed","","27","","","2017-04-20 07:36:20","2017-04-20 07:36:20","","0","http://localhost:81/curtain/?p=27","11","nav_menu_item","","0"),
("28","1","2017-04-20 07:36:20","2017-04-20 07:36:20"," ","","","publish","closed","closed","","28","","","2017-04-20 07:36:20","2017-04-20 07:36:20","","0","http://localhost:81/curtain/?p=28","12","nav_menu_item","","0"),
("29","1","2017-04-20 07:36:20","2017-04-20 07:36:20"," ","","","publish","closed","closed","","29","","","2017-04-20 07:36:20","2017-04-20 07:36:20","","0","http://localhost:81/curtain/?p=29","13","nav_menu_item","","0"),
("30","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","30","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=30","1","nav_menu_item","","0"),
("31","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","31","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=31","6","nav_menu_item","","0"),
("32","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","32","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=32","8","nav_menu_item","","0"),
("33","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","33","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=33","4","nav_menu_item","","0"),
("34","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","34","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=34","5","nav_menu_item","","0"),
("35","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","35","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=35","9","nav_menu_item","","0"),
("36","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","36","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=36","10","nav_menu_item","","0"),
("37","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","37","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=37","7","nav_menu_item","","0"),
("38","1","2017-04-20 07:36:19","2017-04-20 07:36:19"," ","","","publish","closed","closed","","38","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=38","3","nav_menu_item","","0"),
("39","1","2017-04-20 07:36:19","2017-04-20 07:36:19","","Danh mục sản phẩm","","publish","closed","closed","","danh-muc-san-pham","","","2017-04-20 07:36:19","2017-04-20 07:36:19","","0","http://localhost:81/curtain/?p=39","2","nav_menu_item","","0"),
("42","1","2017-04-20 07:44:43","2017-04-20 07:44:43","","slide02","","inherit","open","closed","","slide02","","","2017-04-20 07:44:43","2017-04-20 07:44:43","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/slide02.jpg","0","attachment","image/jpeg","0"),
("43","1","2017-04-20 07:44:45","2017-04-20 07:44:45","","slide03","","inherit","open","closed","","slide03","","","2017-04-20 07:44:45","2017-04-20 07:44:45","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/slide03.jpg","0","attachment","image/jpeg","0"),
("44","1","2017-04-20 07:44:48","2017-04-20 07:44:48","","slide04","","inherit","open","closed","","slide04","","","2017-04-20 07:44:48","2017-04-20 07:44:48","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/slide04.jpg","0","attachment","image/jpeg","0"),
("45","1","2017-04-20 07:45:18","2017-04-20 07:45:18","","slide01","","inherit","open","closed","","slide01","","","2017-04-20 07:45:18","2017-04-20 07:45:18","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/slide01.jpg","0","attachment","image/jpeg","0"),
("46","1","2017-04-20 07:48:34","2017-04-20 07:48:34","[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 07:48:34","2017-04-20 07:48:34","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("47","1","2017-04-20 07:54:31","2017-04-20 07:54:31","","Rèm DS1307","","publish","open","closed","","rem-ds1307","","","2017-04-20 07:54:31","2017-04-20 07:54:31","","0","http://localhost:81/curtain/?post_type=product&#038;p=47","0","product","","0"),
("48","1","2017-04-20 07:53:41","2017-04-20 07:53:41","","ZB371","DEU, Walldorf, SAP Büro , Architekten: Scope , Fertigstellung: Jan 2012 , DIGITAL 100 MB 8 Bit. - ©Zooey Braun; Veroeffentlichung nur gegen Honorar, Urhebervermerk und Beleg / permission required for reproduction, mention of copyright, complimentary copy, FUER WERBENUTZUNG RUECKSPRACHE","inherit","open","closed","","zb371","","","2017-04-20 07:53:41","2017-04-20 07:53:41","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/001.jpg","0","attachment","image/jpeg","0"),
("49","1","2017-04-20 07:53:44","2017-04-20 07:53:44","","002","","inherit","open","closed","","002","","","2017-04-20 07:53:44","2017-04-20 07:53:44","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/002.jpg","0","attachment","image/jpeg","0"),
("50","1","2017-04-20 07:53:46","2017-04-20 07:53:46","","003","","inherit","open","closed","","003","","","2017-04-20 07:53:46","2017-04-20 07:53:46","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/003.jpg","0","attachment","image/jpeg","0"),
("51","1","2017-04-20 07:53:49","2017-04-20 07:53:49","","004","","inherit","open","closed","","004","","","2017-04-20 07:53:49","2017-04-20 07:53:49","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/004.jpg","0","attachment","image/jpeg","0"),
("52","1","2017-04-20 07:53:52","2017-04-20 07:53:52","","005","","inherit","open","closed","","005","","","2017-04-20 07:53:52","2017-04-20 07:53:52","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/005.jpg","0","attachment","image/jpeg","0"),
("53","1","2017-04-20 07:53:55","2017-04-20 07:53:55","","006","","inherit","open","closed","","006","","","2017-04-20 07:53:55","2017-04-20 07:53:55","","47","http://localhost:81/curtain/wp-content/uploads/2017/04/006.jpg","0","attachment","image/jpeg","0"),
("54","1","2017-04-20 07:55:30","2017-04-20 07:55:30","","Rèm TG2365","","publish","open","closed","","rem-tg2365","","","2017-04-20 11:00:23","2017-04-20 11:00:23","","0","http://localhost:81/curtain/?post_type=product&#038;p=54","0","product","","0"),
("55","1","2017-04-20 07:56:16","2017-04-20 07:56:16","","Rèm YH6754","","publish","open","closed","","rem-yh6754","","","2017-04-20 07:56:16","2017-04-20 07:56:16","","0","http://localhost:81/curtain/?post_type=product&#038;p=55","0","product","","0"),
("56","1","2017-04-20 07:57:04","2017-04-20 07:57:04","","Rèm FT5622","","publish","open","closed","","rem-ft5622","","","2017-04-20 11:01:14","2017-04-20 11:01:14","","0","http://localhost:81/curtain/?post_type=product&#038;p=56","0","product","","0"),
("57","1","2017-04-20 08:01:57","2017-04-20 08:01:57","","Rèm HY5632","","publish","open","closed","","rem-hy5632","","","2017-04-20 08:28:21","2017-04-20 08:28:21","","0","http://localhost:81/curtain/?post_type=product&#038;p=57","0","product","","0"),
("58","1","2017-04-20 08:02:53","2017-04-20 08:02:53","","Rèm GT1234","","publish","open","closed","","rem-gt1234","","","2017-04-20 08:02:53","2017-04-20 08:02:53","","0","http://localhost:81/curtain/?post_type=product&#038;p=58","0","product","","0"),
("59","1","2017-04-20 08:06:16","2017-04-20 08:06:16","[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"3\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:06:16","2017-04-20 08:06:16","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("60","1","2017-04-20 08:08:05","2017-04-20 08:08:05","[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products columns=\"3\" slider_nav_position=\"outside\" orderby=\"rand\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:08:05","2017-04-20 08:08:05","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("61","1","2017-04-20 08:28:31","2017-04-20 08:28:31","[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:28:31","2017-04-20 08:28:31","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("62","1","2017-04-20 08:35:58","2017-04-20 08:35:58","[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:35:58","2017-04-20 08:35:58","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("63","1","2017-04-20 08:42:04","2017-04-20 08:42:04","","light-wall","","inherit","open","closed","","light-wall","","","2017-04-20 08:42:04","2017-04-20 08:42:04","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/light-wall.png","0","attachment","image/png","0"),
("64","1","2017-04-20 08:42:28","2017-04-20 08:42:28","[section bg=\"63\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:42:28","2017-04-20 08:42:28","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("65","1","2017-04-20 08:43:19","2017-04-20 08:43:19","","bg","","inherit","open","closed","","bg","","","2017-04-20 08:43:19","2017-04-20 08:43:19","","0","http://localhost:81/curtain/wp-content/uploads/2017/04/bg.png","0","attachment","image/png","0"),
("67","1","2017-04-20 08:56:24","2017-04-20 08:56:24","[section bg_color=\"rgb(209, 209, 209)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 08:56:24","2017-04-20 08:56:24","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("69","1","2017-04-20 09:18:26","2017-04-20 09:18:26","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"được khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"color gray\" bg_color=\"rgb(236, 240, 241)\"]\n\n\n[/section]\n[section label=\"color white\" bg_color=\"rgb(255, 255, 255)\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:18:26","2017-04-20 09:18:26","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("71","1","2017-04-20 09:23:20","2017-04-20 09:23:20","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:23:20","2017-04-20 09:23:20","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("70","1","2017-04-20 09:23:12","2017-04-20 09:23:12","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"42\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]\n[section label=\"color gray\" bg_color=\"rgb(236, 240, 241)\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:23:12","2017-04-20 09:23:12","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("73","1","2017-04-20 09:47:23","2017-04-20 09:47:23","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider nav_pos=\"outside\"]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2>This is a simple headline</h2>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:47:23","2017-04-20 09:47:23","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("74","1","2017-04-20 09:49:35","2017-04-20 09:49:35","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider nav_pos=\"outside\"]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:49:35","2017-04-20 09:49:35","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("79","1","2017-04-20 10:08:36","2017-04-20 10:08:36","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:08:36","2017-04-20 10:08:36","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("75","1","2017-04-20 09:50:25","2017-04-20 09:50:25","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider nav_pos=\"outside\"]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 09:50:25","2017-04-20 09:50:25","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("76","1","2017-04-20 10:00:57","2017-04-20 10:00:57","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_banner_grid]\n\n[col_grid height=\"2-3\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"4\" height=\"1-3\"]\n\n[ux_banner height=\"500px\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:00:57","2017-04-20 10:00:57","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("80","1","2017-04-20 10:10:38","2017-04-20 10:10:38","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"45\"]\n\n[ux_image id=\"43\"]\n\n[ux_image id=\"44\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:10:38","2017-04-20 10:10:38","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("81","1","2017-04-20 10:13:11","2017-04-20 10:13:11","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"45\" height=\"56.25%\"]\n\n[ux_image id=\"43\" height=\"56.25%\"]\n\n[ux_image id=\"44\" height=\"56.25%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:13:11","2017-04-20 10:13:11","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("82","1","2017-04-20 10:16:06","2017-04-20 10:16:06","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"45\" height=\"45%\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:16:06","2017-04-20 10:16:06","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("84","1","2017-04-20 10:25:46","2017-04-20 10:25:46","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: #8e44ad;\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n.footer-widgets .textwidget p{\n}\n\n#top-bar a{	color: #f39c12;}\n#top-bar a:hover{color: #e74c3c;}\n\n.badge-container{\n	margin-top: 20px;\n}","flatsome","","publish","closed","closed","","flatsome","","","2017-05-11 03:57:03","2017-05-11 03:57:03","","0","http://localhost:81/curtain/2017/04/20/flatsome/","0","custom_css","","0"),
("88","1","2017-04-20 10:29:12","2017-04-20 10:29:12","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n#row-23511 a{\n	color: #fff;\n};","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:29:12","2017-04-20 10:29:12","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("85","1","2017-04-20 10:25:46","2017-04-20 10:25:46","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n#row-23511 a:hover{\n	background-color:rgb(142, 68, 173);\n	border-color:rgb(142, 68, 173);\n};","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:25:46","2017-04-20 10:25:46","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("109","1","2017-04-20 10:57:21","2017-04-20 10:57:21","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"45\" height=\"45%\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:57:21","2017-04-20 10:57:21","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("90","1","2017-04-20 10:31:03","2017-04-20 10:31:03","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"45\" height=\"45%\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" columns=\"3\" products=\"6\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 10:31:03","2017-04-20 10:31:03","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("91","1","2017-04-20 10:32:02","2017-04-20 10:32:02","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff;\n};","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:32:02","2017-04-20 10:32:02","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("93","1","2017-04-20 10:33:22","2017-04-20 10:33:22","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n};","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:33:22","2017-04-20 10:33:22","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("96","1","2017-04-20 10:39:49","2017-04-20 10:39:49","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n};\n#top-bar {\n	background-color: rgb(127, 140, 141);\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:39:49","2017-04-20 10:39:49","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("106","1","2017-04-20 10:53:04","2017-04-20 10:53:04","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:53:04","2017-04-20 10:53:04","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("100","1","2017-04-20 10:40:29","2017-04-20 10:40:29","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n};\n#top-bar {\n	background-color: rgb(127, 140, 141) !important;\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:40:29","2017-04-20 10:40:29","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("104","1","2017-04-20 10:43:14","2017-04-20 10:43:14","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n};\n#top-bar div{\n	background-color: #7f8c8d !important;\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:43:14","2017-04-20 10:43:14","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("102","1","2017-04-20 10:41:26","2017-04-20 10:41:26","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n};\n#top-bar div{\n	background-color: rgb(127, 140, 141) !important;\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 10:41:26","2017-04-20 10:41:26","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("110","1","2017-04-20 10:58:35","2017-04-20 10:58:35","","Rèm GT4564","","publish","open","closed","","rem-gt4564","","","2017-04-20 10:58:55","2017-04-20 10:58:55","","0","http://localhost:81/curtain/?post_type=product&#038;p=110","0","product","","0"),
("111","1","2017-04-20 10:58:14","2017-04-20 10:58:14","","001","","inherit","open","closed","","001","","","2017-04-20 10:58:14","2017-04-20 10:58:14","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/001.jpeg","0","attachment","image/jpeg","0"),
("112","1","2017-04-20 10:58:17","2017-04-20 10:58:17","","002","","inherit","open","closed","","002-2","","","2017-04-20 10:58:17","2017-04-20 10:58:17","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/002-1.jpg","0","attachment","image/jpeg","0"),
("113","1","2017-04-20 10:58:19","2017-04-20 10:58:19","","luxaflex Plissé","","inherit","open","closed","","luxaflex-plisse","","","2017-04-20 10:58:19","2017-04-20 10:58:19","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/003-1.jpg","0","attachment","image/jpeg","0"),
("114","1","2017-04-20 10:58:23","2017-04-20 10:58:23","","Ba Nursery Curtain Ideas Ba Zone Area pertaining to Baby Nursery curtains with regard to Your own home","Ba Nursery Curtain Ideas Ba Zone Area pertaining to Baby Nursery curtains with regard to Your own home - Design Decor","inherit","open","closed","","ba-nursery-curtain-ideas-ba-zone-area-pertaining-to-baby-nursery-curtains-with-regard-to-your-own-home","","","2017-04-20 10:58:23","2017-04-20 10:58:23","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/004-1.jpg","0","attachment","image/jpeg","0"),
("115","1","2017-04-20 10:58:25","2017-04-20 10:58:25","","Modern Living Room Curtains Living Beautiful Modern Living Room Curtains Room","Modern Living Room Curtains Living Beautiful Modern Living Room Curtains Room - Home Decor Gallery","inherit","open","closed","","modern-living-room-curtains-living-beautiful-modern-living-room-curtains-room","","","2017-04-20 10:58:25","2017-04-20 10:58:25","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/005-1.jpg","0","attachment","image/jpeg","0"),
("116","1","2017-04-20 10:58:27","2017-04-20 10:58:27","","006","","inherit","open","closed","","006-2","","","2017-04-20 10:58:27","2017-04-20 10:58:27","","110","http://localhost:81/curtain/wp-content/uploads/2017/04/006-1.jpg","0","attachment","image/jpeg","0"),
("117","1","2017-04-20 10:59:35","2017-04-20 10:59:35","","Rèm KJ7865","","publish","open","closed","","rem-kj7865","","","2017-04-20 10:59:35","2017-04-20 10:59:35","","0","http://localhost:81/curtain/?post_type=product&#038;p=117","0","product","","0"),
("123","1","2017-04-20 11:18:02","2017-04-20 11:18:02","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\">VIFONIC</h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\">VIFONIC</h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 11:18:02","2017-04-20 11:18:02","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("127","1","2017-04-20 11:23:47","2017-04-20 11:23:47","[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-04-20 11:23:47","2017-04-20 11:23:47","","4","http://localhost:81/curtain/2017/04/20/4-revision-v1/","0","revision","","0"),
("129","1","2017-04-20 11:26:00","2017-04-20 11:26:00","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 11:26:00","2017-04-20 11:26:00","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("131","1","2017-04-20 11:28:31","2017-04-20 11:28:31","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-tittle-main {\n	border-color: rgb(231, 76, 60);\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 11:28:31","2017-04-20 11:28:31","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("133","1","2017-04-20 11:31:46","2017-04-20 11:31:46","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 11:31:46","2017-04-20 11:31:46","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("136","1","2017-04-20 11:54:05","2017-04-20 11:54:05","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-04-20 11:54:05","2017-04-20 11:54:05","","84","http://localhost:81/curtain/2017/04/20/84-revision-v1/","0","revision","","0"),
("144","1","2017-05-11 03:05:40","2017-05-11 03:05:40","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}\n#wide-nav a{\n	\n}\n#wide-nav .nav-dropdown a{\n	text-tranform: none;\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:05:40","2017-05-11 03:05:40","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("146","1","2017-05-11 03:07:11","2017-05-11 03:07:11","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}\n#wide-nav a{\n	\n}\n#wide-nav .nav-dropdown a{\n	\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:07:11","2017-05-11 03:07:11","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("148","1","2017-05-11 03:08:45","2017-05-11 03:08:45","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}\n#wide-nav a{\n	font-size: 18px;\n}\n#wide-nav .nav-dropdown a{\n	\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:08:45","2017-05-11 03:08:45","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("150","1","2017-05-11 03:11:12","2017-05-11 03:11:12","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown a{\n	\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:11:12","2017-05-11 03:11:12","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("153","1","2017-05-11 03:16:45","2017-05-11 03:16:45","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 1.2em;\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:16:45","2017-05-11 03:16:45","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("156","1","2017-05-11 03:20:46","2017-05-11 03:20:46","[section bg_color=\"rgb(255, 255, 255)\" padding=\"3px\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-05-11 03:20:46","2017-05-11 03:20:46","","4","http://remcua.fonicweb.com/2017/05/11/4-revision-v1/","0","revision","","0"),
("160","1","2017-05-11 03:26:17","2017-05-11 03:26:17","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:26:17","2017-05-11 03:26:17","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("164","1","2017-05-11 03:34:22","2017-05-11 03:34:22","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: rgb(241, 196, 15);\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n.footer-widgets .textwidget p{\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:34:22","2017-05-11 03:34:22","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0");
INSERT INTO bz_posts VALUES
("181","1","2017-07-17 15:24:18","2017-07-17 15:24:18","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2017-07-17 15:24:18","2017-07-17 15:24:18","","0","http://alahap.com/w/remcua/wp-content/uploads/2017/07/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("189","1","2017-11-01 08:23:03","2017-11-01 08:23:03","[section bg_color=\"rgb(255, 255, 255)\" padding=\"0px\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n[/ux_slider]\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h2 style=\"text-align: left;\"></h2>\n<h2 style=\"text-align: left;\"><span data-text-color=\"primary\">WEBDESIGN</span></h2>\n<p style=\"text-align: left;\">Webdesign luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n<h2 style=\"text-align: left;\"></h2>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2 style=\"text-align: right;\"></h2>\n<h2 style=\"text-align: right;\"><span data-text-color=\"primary\">WEBDESIGN</span></h2>\n<p style=\"text-align: right;\">Webdesign luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-11-01 08:23:03","2017-11-01 08:23:03","","4","https://bizhostvn.com/w/remcua/2017/11/01/4-revision-v1/","0","revision","","0"),
("166","1","2017-05-11 03:36:25","2017-05-11 03:36:25","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: #8e44ad;\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n.footer-widgets .textwidget p{\n}\n","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:36:25","2017-05-11 03:36:25","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("169","1","2017-05-11 03:54:28","2017-05-11 03:54:28","[section bg_color=\"rgb(255, 255, 255)\" padding=\"0px\"]\n\n[ux_slider nav_size=\"normal\"]\n\n[ux_image id=\"43\" height=\"45%\"]\n\n[ux_image id=\"44\" height=\"45%\"]\n\n\n[/ux_slider]\n[row label=\"slider\"]\n\n[col span__sm=\"12\"]\n\n\n[/col]\n\n[/row]\n[row label=\"info\" class=\"row-info\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"42\" position_x=\"50\" position_y=\"50\"]\n\n[text_box width=\"70\" scale=\"210\" position_x=\"50\" position_y=\"50\"]\n\n[button text=\"Chuyên nghiệp\" style=\"outline\" link=\"#\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"gray - info\" bg_color=\"rgb(236, 240, 241)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: left;\"> </h2>\n<h2 style=\"text-align: left;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: left;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n<h2 style=\"text-align: left;\"> </h2>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 style=\"text-align: right;\"> </h2>\n<h2 style=\"text-align: right;\"><span data-text-color=\"primary\">VIFONIC</span></h2>\n<p style=\"text-align: right;\">Vifonic luôn tâm niệm mỗi sản phẩm như một đứa con tinh thần do mình tạo ra, do đó website đến tay Quý khách phải thực sự hoàn hảo đến từng chi tiết dù là nhỏ nhất.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_banner height=\"56.25%\"]\n\n[ux_image id=\"43\" position_x=\"50\" position_y=\"50\"]\n\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"white - Sản phẩm mới\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"sản phẩm mới\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"rand\"]\n\n\n[/section]\n[section label=\"gray - Được khuyến mãi\" bg_color=\"rgb(236, 240, 241)\"]\n\n[title text=\"sản phẩm khuyến mãi\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\" orderby=\"sales\" show=\"onsale\"]\n\n\n[/section]\n[section label=\"white - được quan tâm\" bg_color=\"rgb(255, 255, 255)\"]\n\n[title text=\"Được quan tâm\" icon=\"icon-star\" link_text=\"Xem tất cả\" link=\"#\"]\n\n[ux_products type=\"row\"]\n\n\n[/section]","Trang chủ","","inherit","closed","closed","","4-revision-v1","","","2017-05-11 03:54:28","2017-05-11 03:54:28","","4","http://remcua.fonicweb.com/2017/05/11/4-revision-v1/","0","revision","","0"),
("168","1","2017-05-11 03:40:21","2017-05-11 03:40:21","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: #8e44ad;\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n.footer-widgets .textwidget p{\n}\n\n#top-bar a{	color: #f39c12;}\n#top-bar a:hover{color: #e74c3c;}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:40:21","2017-05-11 03:40:21","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("171","1","2017-05-11 03:57:03","2017-05-11 03:57:03","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.row-info a{\n	color: #fff !important;\n}\n.icon-star {\n	color: #8e44ad;\n}\n.section-title-normal span {\n    border-bottom: 2px solid red;\n\n}\n\n.box-text a{\n   font-size: 16px;\n	\n}\n#wide-nav a{\nfont-family: \"Roboto Condensed\", sans-serif;\n	font-size: 16px;\n	font-weight: 300;\n}\n#wide-nav .nav-dropdown {\n	border: none;\n	padding: 10px 20px 10px 20px;\n\n}\n.footer-widgets .textwidget p{\n}\n\n#top-bar a{	color: #f39c12;}\n#top-bar a:hover{color: #e74c3c;}\n\n.badge-container{\n	margin-top: 20px;\n}","flatsome","","inherit","closed","closed","","84-revision-v1","","","2017-05-11 03:57:03","2017-05-11 03:57:03","","84","http://remcua.fonicweb.com/2017/05/11/84-revision-v1/","0","revision","","0"),
("191","1","2019-05-16 13:14:14","2019-05-16 13:14:14","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 13:14:14","2019-05-16 13:14:14","","0","https://bizhostvn.com/w/remcua/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `ID` (`ID`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("30","23","0"),
("39","23","0"),
("38","23","0"),
("33","23","0"),
("34","23","0"),
("31","23","0"),
("37","23","0"),
("32","23","0"),
("35","23","0"),
("36","23","0"),
("27","23","0"),
("28","23","0"),
("29","23","0"),
("47","15","0"),
("47","2","0"),
("54","15","0"),
("54","2","0"),
("55","15","0"),
("55","2","0"),
("56","15","0"),
("56","2","0"),
("57","15","0"),
("57","2","0"),
("58","15","0"),
("58","2","0"),
("110","17","0"),
("110","2","0"),
("117","17","0"),
("117","2","0");




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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","product_type","","0","8"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_visibility","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_cat","","0","6"),
("16","16","product_cat","","0","0"),
("17","17","product_cat","","0","2"),
("18","18","product_cat","","0","0"),
("19","19","product_cat","","0","0"),
("20","20","product_cat","","0","0"),
("21","21","product_cat","","0","0"),
("22","22","product_cat","","0","0"),
("23","23","nav_menu","","0","13"),
("24","24","nav_menu","","0","0"),
("25","25","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","15","order","0"),
("2","15","display_type",""),
("3","15","thumbnail_id","0"),
("4","16","order","0"),
("5","16","display_type",""),
("6","16","thumbnail_id","0"),
("7","17","order","0"),
("8","17","display_type",""),
("9","17","thumbnail_id","0"),
("10","18","order","0"),
("11","18","display_type",""),
("12","18","thumbnail_id","0"),
("13","19","order","0"),
("14","19","display_type",""),
("15","19","thumbnail_id","0"),
("16","20","order","0"),
("17","20","display_type",""),
("18","20","thumbnail_id","0"),
("19","21","order","0"),
("20","21","display_type",""),
("21","21","thumbnail_id","0"),
("22","22","order","0"),
("23","22","display_type",""),
("24","22","thumbnail_id","0"),
("25","15","product_count_product_cat","6"),
("26","17","product_count_product_cat","2");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Uncategorized","uncategorized","0"),
("2","simple","simple","0"),
("3","grouped","grouped","0"),
("4","variable","variable","0"),
("5","external","external","0"),
("6","exclude-from-search","exclude-from-search","0"),
("7","exclude-from-catalog","exclude-from-catalog","0"),
("8","featured","featured","0"),
("9","outofstock","outofstock","0"),
("10","rated-1","rated-1","0"),
("11","rated-2","rated-2","0"),
("12","rated-3","rated-3","0"),
("13","rated-4","rated-4","0"),
("14","rated-5","rated-5","0"),
("15","Rèm văn phòng","rem-van-phong","0"),
("16","Rèm phòng ngủ","rem-phong-ngu","0"),
("17","Rèm phòng khách","rem-phong-khach","0"),
("18","Rèm cuốn","rem-cuon","0"),
("19","Rèm sáo nhôm","rem-sao-nhom","0"),
("20","Rèm sáo gỗ","rem-sao-go","0"),
("21","Rèm lá dọc","rem-la-doc","0"),
("22","Rèm vải","rem-vai","0"),
("23","Menu chính","menu-chinh","0"),
("24","Foot: thông tin","foot-thong-tin","0"),
("25","Chưa phân loại","chua-phan-loai","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","vifonic_admin"),
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
("13","1","dismissed_wp_pointers",""),
("14","1","show_welcome_panel","0"),
("15","1","session_tokens","a:2:{s:64:\"2bdff5fbb755ed7007e226d4ecdb09e9df061c58b592629947b56d8a99975436\";a:4:{s:10:\"expiration\";i:1558184875;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012075;}s:64:\"49d4cb0327e03304f70c64213c5076ba2ee9d094715a1627fc3a2b588ac03601\";a:4:{s:10:\"expiration\";i:1558185077;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012277;}}"),
("16","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("17","1","bz_user-settings-time","1558012277"),
("18","1","bz_dashboard_quick_press_last_post_id","190"),
("19","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("20","1","metaboxhidden_nav-menus","a:9:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:27:\"add-post-type-featured_item\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:20:\"add-block_categories\";i:6;s:15:\"add-product_tag\";i:7;s:26:\"add-featured_item_category\";i:8;s:21:\"add-featured_item_tag\";}"),
("21","1","closedpostboxes_nav-menus","a:0:{}"),
("22","1","nav_menu_recently_edited","24"),
("23","1","_woocommerce_persistent_cart","a:1:{s:4:\"cart\";a:0:{}}"),
("24","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("25","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("26","1","_woocommerce_tracks_anon_id","woo:pXuMEijRqVwf9aL/dzGYA0Dc");




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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_users VALUES
("1","admin","$P$BEc5JRj0mD0jEP6YtIJPPCEa6I0HRN0","admin","demobz@gmail.com","","2017-04-20 04:45:40","","0","vifonic_admin");




CREATE TABLE `bz_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("17","1","a:22:{s:4:\"cart\";s:6:\"a:0:{}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:23:\"coupon_discount_amounts\";s:6:\"a:0:{}\";s:27:\"coupon_discount_tax_amounts\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:19:\"cart_contents_total\";i:0;s:5:\"total\";i:0;s:8:\"subtotal\";i:0;s:15:\"subtotal_ex_tax\";i:0;s:9:\"tax_total\";i:0;s:5:\"taxes\";s:6:\"a:0:{}\";s:14:\"shipping_taxes\";s:6:\"a:0:{}\";s:13:\"discount_cart\";i:0;s:17:\"discount_cart_tax\";i:0;s:14:\"shipping_total\";i:0;s:18:\"shipping_tax_total\";i:0;s:9:\"fee_total\";i:0;s:4:\"fees\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";}","1558185253");




CREATE TABLE `bz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_yith_wcwl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `prod_id` (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;






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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO bz_yith_wcwl_lists VALUES
("1","1","","","DDM1IAUQNX3D","0","1");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;