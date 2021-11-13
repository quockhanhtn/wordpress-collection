SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w146`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM AUTO_INCREMENT=5416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/ifan","yes"),
("2","home","https://bizhostvn.com/w/ifan","yes"),
("3","blogname","ifan","yes"),
("4","blogdescription","","yes"),
("2876","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
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
("29","rewrite_rules","a:234:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:11:\"sidebars/?$\";s:27:\"index.php?post_type=sidebar\";s:41:\"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:36:\"sidebars/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:28:\"sidebars/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=sidebar&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:36:\"sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sidebars/([^/]+)/embed/?$\";s:40:\"index.php?sidebar=$matches[1]&embed=true\";s:29:\"sidebars/([^/]+)/trackback/?$\";s:34:\"index.php?sidebar=$matches[1]&tb=1\";s:49:\"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:44:\"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:37:\"sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&paged=$matches[2]\";s:44:\"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&cpage=$matches[2]\";s:34:\"sidebars/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?sidebar=$matches[1]&wc-api=$matches[3]\";s:40:\"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sidebar=$matches[1]&page=$matches[2]\";s:25:\"sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=60&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("5393","_transient_timeout__woocommerce_helper_subscriptions","1558014030","no"),
("5394","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("5395","_transient_timeout__woocommerce_helper_updates","1558056330","no"),
("5396","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558013130;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("5330","_transient_timeout_yit_panel_sidebar_remote_widgets","1558108212","no"),
("5331","_transient_yit_panel_sidebar_remote_widgets","a:0:{}","no"),
("5359","_transient_timeout_external_ip_address_113.173.5.101","1558617928","no"),
("5360","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("5361","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("5362","current_theme_supports_woocommerce","yes","yes"),
("5363","woocommerce_queue_flush_rewrite_rules","no","yes"),
("5392","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("5366","woocommerce_store_address","","yes"),
("5367","woocommerce_store_address_2","","yes"),
("5368","woocommerce_store_city","","yes"),
("5369","woocommerce_store_postcode","","yes"),
("5336","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558617524","no"),
("5337","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:8:{i:1;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:2;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:27:\"woosidebars/woosidebars.php\";i:8;s:34:\"yith-woocommerce-wishlist/init.php\";}","yes"),
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
("79","widget_text","a:5:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:10:\"LIÊN HỆ\";s:4:\"text\";s:594:\"<ul class=\"contact-details\">\n                <li><i class=\"fa fa-map-marker\"></i> <strong>Địa chỉ:</strong> <span>P506, CT2 KĐT Mễ Trì Thượng, Nam Từ Liêm, Hà Nội</span></li>                <li><i class=\"fa fa-phone\"></i> <strong>SĐT:</strong> <span>(123) 456-7890</span></li>                <li><i class=\"fa fa-envelope\"></i> <strong>Email:</strong> <span><a href=\"mailto:mail@example.com\">mail@example.com</a></span></li>                <li><i class=\"fa fa-clock-o\"></i> <strong>Working Days/Hours:</strong> <span>Mon - Sun / 9:00 AM - 8:00 PM</span></li>            </ul>\";s:6:\"filter\";b:1;}i:3;a:3:{s:5:\"title\";s:10:\"THÔNG TIN\";s:4:\"text\";s:1053:\"<div class=\"menu-footer-menu-1-container\"><ul id=\"menu-footer-menu-1\" class=\"menu\"><li id=\"menu-item-92\" class=\"menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2 current_page_item menu-item-92\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/\">Trang chủ</a></li>\n<li id=\"menu-item-93\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-93\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/gioi-thieu/\">Giới thiệu</a></li>\n<li id=\"menu-item-94\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-94\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/san-pham/\">Sản phẩm</a></li>\n<li id=\"menu-item-95\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-95\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/tai-khoan/\">Tài khoản</a></li>\n<li id=\"menu-item-96\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-96\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/thanh-toan/\">Thanh toán</a></li>\n</ul></div>\";s:6:\"filter\";b:0;}i:4;a:3:{s:5:\"title\";s:11:\"TRỢ GIÚP\";s:4:\"text\";s:915:\"<ul id=\"menu-footer-menu-2\" class=\"menu\"><li class=\"menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2 current_page_item menu-item-92\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/\">Trang chủ</a></li>\n<li class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-93\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/gioi-thieu/\">Giới thiệu</a></li>\n<li class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-94\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/san-pham/\">Sản phẩm</a></li>\n<li class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-95\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/tai-khoan/\">Tài khoản</a></li>\n<li class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-96\"><a href=\"http://demo.vifonic.vn/quatcongnghiep/thanh-toan/\">Thanh toán</a></li>\n</ul>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no");
INSERT INTO bz_options VALUES
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","60","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes"),
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("95","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("99","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:12:\"sidebar-main\";a:0:{}s:16:\"sidebar-footer-1\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:28:\"ultimatefacebookpageplugin-2\";}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("100","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","cron","a:15:{i:1558051200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558051228;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558051913;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558054773;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558064384;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558067012;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558067069;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558070081;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558077928;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558096397;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099528;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099538;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558110328;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("105","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489651455;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("5388","product_cat_children","a:0:{}","yes"),
("5389","default_product_cat","21","yes"),
("5201","_transient_timeout_wc_shipping_method_count_1_1489655800","1559965196","no"),
("5202","_transient_wc_shipping_method_count_1_1489655800","0","no"),
("5312","wp_page_for_privacy_policy","0","yes"),
("5313","show_comments_cookies_opt_in","1","yes"),
("5413","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558028557;s:7:\"checked\";a:3:{s:8:\"endanger\";s:5:\"1.3.0\";s:8:\"flatsome\";s:5:\"3.6.2\";s:4:\"vega\";s:5:\"2.2.1\";}s:8:\"response\";a:2:{s:8:\"endanger\";a:4:{s:5:\"theme\";s:8:\"endanger\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:38:\"https://wordpress.org/themes/endanger/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/endanger.1.4.0.zip\";}s:4:\"vega\";a:4:{s:5:\"theme\";s:4:\"vega\";s:11:\"new_version\";s:5:\"2.3.4\";s:3:\"url\";s:34:\"https://wordpress.org/themes/vega/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/vega.2.3.4.zip\";}}s:12:\"translations\";a:0:{}}","no"),
("5338","_transient_timeout_wc_report_sales_by_date","1558099124","no"),
("5370","woocommerce_placeholder_image","126","yes"),
("5371","woocommerce_enable_reviews","yes","yes"),
("5372","woocommerce_shipping_debug_mode","no","yes"),
("5373","woocommerce_erasure_request_removes_order_data","no","no"),
("5374","woocommerce_erasure_request_removes_download_data","no","no"),
("5375","woocommerce_allow_bulk_remove_personal_data","no","no"),
("5376","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("5377","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("5378","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("5379","woocommerce_trash_pending_orders","","no"),
("5380","woocommerce_trash_failed_orders","","no"),
("5381","woocommerce_trash_cancelled_orders","","no"),
("5382","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("5383","woocommerce_allow_tracking","no","no"),
("5384","woocommerce_show_marketplace_suggestions","yes","no"),
("5385","woocommerce_single_image_width","600","yes"),
("5386","woocommerce_thumbnail_image_width","300","yes"),
("5387","woocommerce_checkout_highlight_required_fields","yes","yes"),
("5411","_site_transient_timeout_theme_roots","1558030354","no"),
("5412","_site_transient_theme_roots","a:3:{s:8:\"endanger\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";s:4:\"vega\";s:7:\"/themes\";}","no"),
("5354","nsl-version","3.0.20","yes"),
("5355","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("148","_transient_twentyseventeen_categories","1","yes"),
("156","current_theme","VIFONIC","yes"),
("157","theme_mods_endanger","a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489654812;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";N;s:8:\"footer-4\";N;}}}","yes"),
("158","theme_switched","","yes"),
("164","theme_mods_flatsome","a:79:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:6:\"social\";i:1;s:4:\"cart\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:2:{i:0;s:7:\"contact\";i:1;s:7:\"divider\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:0:\"\";s:15:\"follow_facebook\";s:12:\"facebook.com\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:0:\"\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 16 Mar 2017 09:00:12 +0000\";s:18:\"custom_css_post_id\";i:-1;s:11:\"topbar_left\";s:74:\"<strong class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU GTECO</strong>\";s:22:\"topbar_elements_center\";a:1:{i:0;s:11:\"search-form\";}s:17:\"header_top_height\";s:2:\"62\";s:13:\"header_height\";s:3:\"126\";s:9:\"topbar_bg\";s:7:\"#F7F7F7\";s:12:\"topbar_color\";s:5:\"light\";s:13:\"nav_style_top\";s:0:\"\";s:14:\"top_right_text\";s:0:\"\";s:12:\"topbar_right\";s:0:\"\";s:13:\"follow_google\";s:10:\"google.com\";s:14:\"follow_youtube\";s:11:\"youtube.com\";s:19:\"header_search_width\";s:3:\"100\";s:17:\"search_icon_style\";s:0:\"\";s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:0:\"\";s:24:\"header_search_categories\";s:1:\"0\";s:12:\"follow_style\";s:4:\"fill\";s:20:\"header_bottom_height\";s:2:\"49\";s:9:\"site_logo\";s:72:\"https://bizhostvn.com/w/ifan/wp-content/uploads/2017/07/BIZHOST-DEMO.png\";s:10:\"logo_width\";s:3:\"365\";s:12:\"logo_padding\";s:1:\"0\";s:14:\"site_logo_dark\";s:0:\"\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:7;}s:13:\"logo_position\";s:4:\"left\";s:25:\"header_height_transparent\";s:3:\"265\";s:15:\"nav_position_bg\";s:7:\"#1E73BE\";s:17:\"nav_height_bottom\";s:2:\"45\";s:17:\"dropdown_nav_size\";s:3:\"100\";s:14:\"dropdown_style\";s:6:\"simple\";s:14:\"dropdown_arrow\";s:1:\"1\";s:15:\"dropdown_radius\";s:4:\"10px\";s:15:\"nav_size_bottom\";s:6:\"xlarge\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:20:\"nav_uppercase_bottom\";s:1:\"0\";s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:7:\"#FFFFFF\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#FFFFFF\";s:16:\"nav_style_bottom\";s:0:\"\";s:17:\"nav_position_text\";s:0:\"\";s:11:\"topbar_show\";s:1:\"1\";s:17:\"footer_2_bg_color\";s:7:\"#2B2B2B\";s:17:\"footer_1_bg_color\";s:7:\"#0A0808\";s:14:\"footer_1_color\";s:4:\"dark\";s:14:\"footer_2_color\";s:4:\"dark\";s:19:\"footer_bottom_align\";s:0:\"\";s:8:\"footer_1\";s:1:\"1\";s:8:\"footer_2\";s:1:\"1\";s:19:\"footer_bottom_color\";s:7:\"#000000\";s:16:\"footer_left_text\";s:51:\"<a>Thiết kế web chuẩn SEO</a> bởi webdesign\";s:18:\"footer_bottom_text\";s:4:\"dark\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("165","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("166","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("167","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012959;}","yes"),
("173","woosidebars-version","1.4.3","yes"),
("174","woocommerce_default_country","GB","yes"),
("175","woocommerce_allowed_countries","all","yes"),
("176","woocommerce_all_except_countries","","yes"),
("177","woocommerce_specific_allowed_countries","","yes"),
("178","woocommerce_ship_to_countries","","yes"),
("179","woocommerce_specific_ship_to_countries","","yes"),
("180","woocommerce_default_customer_address","geolocation","yes"),
("181","woocommerce_calc_taxes","no","yes"),
("182","woocommerce_demo_store","no","yes"),
("183","woocommerce_demo_store_notice","This is a demo store for testing purposes &mdash; no orders shall be fulfilled.","no"),
("184","woocommerce_currency","GBP","yes"),
("185","woocommerce_currency_pos","left","yes"),
("186","woocommerce_price_thousand_sep",",","yes"),
("187","woocommerce_price_decimal_sep",".","yes"),
("188","woocommerce_price_num_decimals","2","yes"),
("189","woocommerce_weight_unit","kg","yes"),
("190","woocommerce_dimension_unit","cm","yes"),
("191","woocommerce_enable_review_rating","yes","yes"),
("192","woocommerce_review_rating_required","yes","no"),
("193","woocommerce_review_rating_verification_label","yes","no"),
("194","woocommerce_review_rating_verification_required","no","no"),
("195","woocommerce_shop_page_id","15","yes"),
("196","woocommerce_shop_page_display","","yes"),
("197","woocommerce_category_archive_display","","yes"),
("198","woocommerce_default_catalog_orderby","menu_order","yes"),
("199","woocommerce_cart_redirect_after_add","no","yes"),
("200","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("201","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}","yes"),
("202","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("203","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}","yes"),
("204","woocommerce_enable_lightbox","yes","yes"),
("205","woocommerce_manage_stock","yes","yes"),
("206","woocommerce_hold_stock_minutes","60","no"),
("207","woocommerce_notify_low_stock","yes","no"),
("208","woocommerce_notify_no_stock","yes","no"),
("209","woocommerce_stock_email_recipient","anhchinh511995@gmail.com","no"),
("210","woocommerce_notify_low_stock_amount","2","no");
INSERT INTO bz_options VALUES
("211","woocommerce_notify_no_stock_amount","0","yes"),
("212","woocommerce_hide_out_of_stock_items","no","yes"),
("213","woocommerce_stock_format","","yes"),
("214","woocommerce_file_download_method","force","no"),
("215","woocommerce_downloads_require_login","no","no"),
("216","woocommerce_downloads_grant_access_after_payment","yes","no"),
("217","woocommerce_prices_include_tax","no","yes"),
("218","woocommerce_tax_based_on","shipping","yes"),
("219","woocommerce_shipping_tax_class","","yes"),
("220","woocommerce_tax_round_at_subtotal","no","yes"),
("221","woocommerce_tax_classes","Reduced Rate\nZero Rate","yes"),
("222","woocommerce_tax_display_shop","excl","yes"),
("223","woocommerce_tax_display_cart","excl","no"),
("224","woocommerce_price_display_suffix","","yes"),
("225","woocommerce_tax_total_display","itemized","no"),
("226","woocommerce_enable_shipping_calc","yes","no"),
("227","woocommerce_shipping_cost_requires_address","no","no"),
("228","woocommerce_ship_to_destination","billing","no"),
("229","woocommerce_enable_coupons","yes","yes"),
("230","woocommerce_calc_discounts_sequentially","no","no"),
("231","woocommerce_enable_guest_checkout","yes","no"),
("232","woocommerce_force_ssl_checkout","no","yes"),
("233","woocommerce_unforce_ssl_checkout","no","yes"),
("234","woocommerce_cart_page_id","16","yes"),
("235","woocommerce_checkout_page_id","17","yes"),
("236","woocommerce_terms_page_id","","no"),
("237","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("238","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("239","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("240","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("241","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("242","woocommerce_myaccount_page_id","18","yes"),
("243","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("244","woocommerce_enable_myaccount_registration","no","no"),
("245","woocommerce_enable_checkout_login_reminder","yes","no"),
("246","woocommerce_registration_generate_username","yes","no"),
("247","woocommerce_registration_generate_password","no","no"),
("248","woocommerce_myaccount_orders_endpoint","orders","yes"),
("249","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("250","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("251","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("252","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("253","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("254","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("255","woocommerce_logout_endpoint","customer-logout","yes"),
("256","woocommerce_email_from_name","ConnectData","no"),
("257","woocommerce_email_from_address","anhchinh511995@gmail.com","no"),
("258","woocommerce_email_header_image","","no"),
("259","woocommerce_email_footer_text","ConnectData - Powered by WooCommerce","no"),
("260","woocommerce_email_base_color","#557da1","no"),
("261","woocommerce_email_background_color","#f5f5f5","no"),
("262","woocommerce_email_body_background_color","#fdfdfd","no"),
("263","woocommerce_email_text_color","#505050","no"),
("264","woocommerce_api_enabled","yes","yes"),
("372","_transient_product_query-transient-version","1489804840","yes"),
("289","woocommerce_meta_box_errors","a:0:{}","yes"),
("268","woocommerce_db_version","2.6.14","yes"),
("5390","woocommerce_version","3.6.2","yes"),
("270","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("290","_transient_woocommerce_cache_excluded_uris","a:6:{i:0;s:4:\"p=16\";i:1;s:6:\"/cart/\";i:2;s:4:\"p=17\";i:3;s:10:\"/checkout/\";i:4;s:4:\"p=18\";i:5;s:12:\"/my-account/\";}","yes"),
("272","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("273","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("274","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("275","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("276","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("277","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("278","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("279","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("280","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("281","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("282","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("283","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("284","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("285","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("297","yit_recently_activated","a:0:{}","yes"),
("302","yith_wcwl_frontend_css_colors","s:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";","yes"),
("303","yith_wcwl_enabled","yes","yes"),
("304","yith_wcwl_wishlist_title","My wishlist on ConnectData","yes"),
("305","yith_wcwl_wishlist_page_id","19","yes"),
("306","yith_wcwl_redirect_cart","no","yes"),
("307","yith_wcwl_remove_after_add_to_cart","yes","yes"),
("308","yith_wcwl_add_to_wishlist_text","Add to Wishlist","yes"),
("309","yith_wcwl_browse_wishlist_text","Browse Wishlist","yes"),
("310","yith_wcwl_already_in_wishlist_text","The product is already in the wishlist!","yes"),
("311","yith_wcwl_product_added_text","Product added!","yes"),
("312","yith_wcwl_add_to_cart_text","Add to Cart","yes"),
("313","yith_wcwl_price_show","yes","yes"),
("314","yith_wcwl_add_to_cart_show","yes","yes"),
("315","yith_wcwl_stock_show","yes","yes"),
("316","yith_wcwl_show_dateadded","no","yes"),
("317","yith_wcwl_repeat_remove_button","no","yes"),
("318","yith_wcwl_use_button","no","yes"),
("319","yith_wcwl_custom_css","","yes"),
("320","yith_wcwl_frontend_css","yes","yes"),
("321","yith_wcwl_rounded_corners","yes","yes"),
("322","yith_wcwl_add_to_wishlist_icon","none","yes"),
("323","yith_wcwl_add_to_cart_icon","fa-shopping-cart","yes"),
("324","yith_wcwl_share_fb","yes","yes"),
("325","yith_wcwl_share_twitter","yes","yes"),
("326","yith_wcwl_share_pinterest","yes","yes");
INSERT INTO bz_options VALUES
("327","yith_wcwl_share_googleplus","yes","yes"),
("328","yith_wcwl_share_email","yes","yes"),
("329","yith_wcwl_socials_title","My wishlist on ConnectData","yes"),
("330","yith_wcwl_socials_text","","yes"),
("331","yith_wcwl_socials_image_url","","yes"),
("332","yith_wfbt_enable_integration","yes","yes"),
("333","yith-wcwl-page-id","19","yes"),
("334","yith_wcwl_version","2.0.16","yes"),
("335","yith_wcwl_db_version","2.0.0","yes"),
("336","yith_wcwl_general_videobox","a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:102:\"http://localhost/wordpress/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}","yes"),
("373","_transient_product-transient-version","1489804841","yes"),
("346","_transient_shipping-transient-version","1489655800","yes"),
("349","WPLANG","","yes"),
("366","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("2873","widget_ultimatefacebookpageplugin","a:2:{i:2;a:10:{s:5:\"title\";s:8:\"Facebook\";s:4:\"name\";s:8:\"Facebook\";s:4:\"href\";s:43:\"https://www.facebook.com/FacebookDevelopers\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"200\";s:10:\"hide_cover\";s:5:\"false\";s:4:\"face\";s:4:\"true\";s:6:\"header\";s:4:\"true\";s:4:\"post\";s:4:\"true\";s:4:\"lang\";s:5:\"en_US\";}s:12:\"_multiwidget\";i:1;}","yes"),
("462","category_children","a:0:{}","yes"),
("1325","dbprefix_old_dbprefix","wp_","yes"),
("1326","dbprefix_new","bz_","yes"),
("745","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("707","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531240420;}","no"),
("1079","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("2877","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2878","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2879","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("2880","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("5340","_transient_timeout_wc_admin_report","1558099124","no"),
("5341","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("5342","_transient_timeout_wc_low_stock_count","1560604724","no"),
("5334","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558617523","no"),
("5335","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("5211","recovery_keys","a:0:{}","yes"),
("5343","_transient_wc_low_stock_count","0","no"),
("5344","_transient_timeout_wc_outofstock_count","1560604724","no"),
("5345","_transient_wc_outofstock_count","0","no"),
("5339","_transient_wc_report_sales_by_date","a:7:{s:32:\"bfb42b335747ed181961647f9cbcd426\";a:0:{}s:32:\"d585ab3263b99d0b7992f8c0ac189af6\";a:0:{}s:32:\"eac21d54baaafb92d39aef9fb2cc4cee\";a:0:{}s:32:\"38c4f9f75968095ef7b36fd03d699dd0\";N;s:32:\"38d6a3245faf30c0639a9c45011866a0\";a:0:{}s:32:\"7eb3df42ef4ec2023592fa1d7a8d9a02\";a:0:{}s:32:\"c9f9acdbb275ce175d3f1e3c0b4d6386\";a:0:{}}","no"),
("5314","db_upgraded","","yes"),
("5407","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558028557;s:7:\"checked\";a:8:{s:49:\"nextend-google-connect/nextend-google-connect.php\";s:5:\"1.6.1\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.20\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"2.2.10\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.20\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.20.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"2.2.10\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.10.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("5332","_transient_timeout_yit_panel_sidebar_remote_widgets_update","1558099121","no"),
("5333","_transient_yit_panel_sidebar_remote_widgets_update","1","no"),
("5347","_transient_timeout_plugin_slugs","1558099359","no"),
("5348","_transient_plugin_slugs","a:9:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:2;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:77:\"ultimate-facebook-page-plugin-widget/ultimate-facebook-page-plugin-widget.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:27:\"woosidebars/woosidebars.php\";i:8;s:34:\"yith-woocommerce-wishlist/init.php\";}","no"),
("5346","can_compress_scripts","0","no"),
("5349","_transient_timeout_wc_upgrade_notice_2.6.14","1558099292","no"),
("5350","_transient_wc_upgrade_notice_2.6.14","","no"),
("5403","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558028552;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("5399","_transient_timeout_external_ip_address_103.74.117.155","1558617932","no"),
("5400","_transient_external_ip_address_103.74.117.155","103.74.117.155","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("9","7","_edit_lock","1489813708:1"),
("8","7","_edit_last","1"),
("13","7","_oembed_107245475b40687b497c29c9404493f0","<iframe width=\"525\" height=\"394\" src=\"https://www.youtube.com/embed/8t8_H7sDMw8?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>"),
("12","2","_edit_lock","1489648119:1"),
("14","7","_oembed_time_107245475b40687b497c29c9404493f0","1489649263"),
("18","11","_edit_lock","1489813682:1"),
("17","11","_edit_last","1"),
("21","7","_oembed_ba01619d7c8bf4ff1b243d12c9b44ddb","<iframe width=\"640\" height=\"480\" src=\"https://www.youtube.com/embed/8t8_H7sDMw8?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>"),
("22","7","_oembed_time_ba01619d7c8bf4ff1b243d12c9b44ddb","1489651543"),
("27","7","_oembed_3367de19a6b708a03c6d58f9af01e64d","<iframe width=\"1020\" height=\"765\" src=\"https://www.youtube.com/embed/8t8_H7sDMw8?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>"),
("28","7","_oembed_time_3367de19a6b708a03c6d58f9af01e64d","1489813851"),
("29","20","_edit_last","1"),
("30","20","_edit_lock","1489813657:1"),
("31","21","_edit_last","1"),
("32","21","_edit_lock","1489656064:1"),
("33","21","_footer","normal"),
("34","21","_wp_page_template","default"),
("35","24","_edit_last","1"),
("39","27","_wp_attached_file","2017/03/logo-vay-bau.png"),
("38","24","_edit_lock","1489816876:1"),
("40","27","_wp_attachment_metadata","a:5:{s:5:\"width\";i:256;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/03/logo-vay-bau.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-vay-bau-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-vay-bau-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("43","30","_wp_attached_file","2017/03/logo-toan-cau.png"),
("44","30","_wp_attachment_metadata","a:5:{s:5:\"width\";i:497;s:6:\"height\";i:108;s:4:\"file\";s:25:\"2017/03/logo-toan-cau.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-toan-cau-150x108.png\";s:5:\"width\";i:150;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-toan-cau-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-toan-cau-180x108.png\";s:5:\"width\";i:180;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"logo-toan-cau-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("47","32","_menu_item_type","custom"),
("48","32","_menu_item_menu_item_parent","0"),
("49","32","_menu_item_object_id","32"),
("50","32","_menu_item_object","custom"),
("51","32","_menu_item_target",""),
("52","32","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("53","32","_menu_item_xfn",""),
("54","32","_menu_item_url","#"),
("66","34","_menu_item_menu_item_parent","0"),
("511","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:390;s:6:\"height\";i:480;s:4:\"file\";s:13:\"2017/03/4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-244x300.png\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("509","7","_wp_old_slug","khi-nguoi-phu-nu-cua-ban-bi-danh__trashed"),
("65","34","_menu_item_type","custom"),
("67","34","_menu_item_object_id","34"),
("68","34","_menu_item_object","custom"),
("69","34","_menu_item_target",""),
("70","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("71","34","_menu_item_xfn",""),
("72","34","_menu_item_url","#"),
("74","35","_menu_item_type","custom"),
("75","35","_menu_item_menu_item_parent","0"),
("76","35","_menu_item_object_id","35"),
("77","35","_menu_item_object","custom"),
("78","35","_menu_item_target",""),
("79","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("80","35","_menu_item_xfn",""),
("81","35","_menu_item_url","#"),
("83","36","_menu_item_type","custom"),
("84","36","_menu_item_menu_item_parent","35"),
("85","36","_menu_item_object_id","36"),
("86","36","_menu_item_object","custom"),
("87","36","_menu_item_target",""),
("88","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("89","36","_menu_item_xfn",""),
("90","36","_menu_item_url","#"),
("92","37","_menu_item_type","custom"),
("93","37","_menu_item_menu_item_parent","35"),
("94","37","_menu_item_object_id","37"),
("95","37","_menu_item_object","custom"),
("96","37","_menu_item_target",""),
("97","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("98","37","_menu_item_xfn",""),
("99","37","_menu_item_url","#"),
("191","48","_edit_lock","1489804445:1"),
("101","38","_menu_item_type","custom"),
("102","38","_menu_item_menu_item_parent","35"),
("103","38","_menu_item_object_id","38"),
("104","38","_menu_item_object","custom"),
("105","38","_menu_item_target",""),
("106","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("107","38","_menu_item_xfn",""),
("108","38","_menu_item_url","#"),
("190","48","_edit_last","1"),
("506","11","_wp_old_slug","neu-ban-thay-ung-y-thi-an-nut-install-de-cai-dat__trashed"),
("510","104","_wp_attached_file","2017/03/4.png"),
("503","24","_wp_old_slug","dam-bau-cong-somua-hang-onlineship-hang-toan-quoc__trashed"),
("176","20","_wp_desired_post_slug",""),
("192","49","_wp_attached_file","2017/03/logo-toan-cau-1.png"),
("209","48","_stock_status","instock"),
("193","49","_wp_attachment_metadata","a:5:{s:5:\"width\";i:497;s:6:\"height\";i:108;s:4:\"file\";s:27:\"2017/03/logo-toan-cau-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-toan-cau-1-150x108.png\";s:5:\"width\";i:150;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"logo-toan-cau-1-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-toan-cau-1-180x108.png\";s:5:\"width\";i:180;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"logo-toan-cau-1-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("208","48","_visibility","visible"),
("137","42","_menu_item_type","custom"),
("138","42","_menu_item_menu_item_parent","0"),
("139","42","_menu_item_object_id","42"),
("140","42","_menu_item_object","custom"),
("141","42","_menu_item_target",""),
("142","42","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("143","42","_menu_item_xfn",""),
("144","42","_menu_item_url","#"),
("146","43","_menu_item_type","custom"),
("147","43","_menu_item_menu_item_parent","0"),
("148","43","_menu_item_object_id","43"),
("149","43","_menu_item_object","custom"),
("150","43","_menu_item_target",""),
("151","43","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("152","43","_menu_item_xfn",""),
("153","43","_menu_item_url","#");
INSERT INTO bz_postmeta VALUES
("155","44","_menu_item_type","custom"),
("156","44","_menu_item_menu_item_parent","0"),
("157","44","_menu_item_object_id","44"),
("158","44","_menu_item_object","custom"),
("159","44","_menu_item_target",""),
("160","44","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("161","44","_menu_item_xfn",""),
("162","44","_menu_item_url","#"),
("194","50","_wp_attached_file","2017/03/quat-1-300x300.jpg"),
("195","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2017/03/quat-1-300x300.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-1-300x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-1-300x300-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("196","51","_wp_attached_file","2017/03/quat-2-300x300.jpg"),
("197","51","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2017/03/quat-2-300x300.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-2-300x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-2-300x300-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("198","52","_wp_attached_file","2017/03/quat-3-300x300.jpg"),
("199","52","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2017/03/quat-3-300x300.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-3-300x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-3-300x300-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("200","53","_wp_attached_file","2017/03/quat-4-300x300.jpg"),
("201","53","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2017/03/quat-4-300x300.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-4-300x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-4-300x300-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("202","54","_wp_attached_file","2017/03/quat-5-300x300-1.jpg"),
("203","54","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2017/03/quat-5-300x300-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"quat-5-300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"quat-5-300x300-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("204","55","_wp_attached_file","2017/03/quat-5-300x300.jpg"),
("205","55","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2017/03/quat-5-300x300.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-5-300x300-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"quat-5-300x300-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("206","56","_wp_attached_file","2017/03/quat-cong-nghiep-slider.png"),
("207","56","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1089;s:6:\"height\";i:451;s:4:\"file\";s:35:\"2017/03/quat-cong-nghiep-slider.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-768x318.png\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"quat-cong-nghiep-slider-1024x424.png\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"quat-cong-nghiep-slider-600x451.png\";s:5:\"width\";i:600;s:6:\"height\";i:451;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("210","48","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("211","48","total_sales","0"),
("212","48","_downloadable","no"),
("213","48","_virtual","no"),
("214","48","_purchase_note",""),
("215","48","_featured","no"),
("216","48","_weight",""),
("217","48","_length",""),
("218","48","_width",""),
("219","48","_height",""),
("220","48","_sku",""),
("221","48","_product_attributes","a:0:{}"),
("222","48","_regular_price","400000"),
("223","48","_sale_price",""),
("224","48","_sale_price_dates_from",""),
("225","48","_sale_price_dates_to",""),
("226","48","_price","400000"),
("227","48","_sold_individually",""),
("228","48","_manage_stock","no"),
("229","48","_backorders","no"),
("230","48","_stock",""),
("231","48","_upsell_ids","a:0:{}"),
("232","48","_crosssell_ids","a:0:{}"),
("233","48","_product_version","2.6.14"),
("234","48","_product_image_gallery",""),
("241","60","_edit_last","1"),
("242","60","_footer","normal"),
("243","60","_wp_page_template","default"),
("244","60","_edit_lock","1489814080:1"),
("245","48","_wc_rating_count","a:0:{}"),
("246","48","_wc_average_rating","0"),
("247","48","_thumbnail_id","50"),
("248","60","_thumbnail_id",""),
("249","63","_edit_last","1"),
("250","63","_edit_lock","1489804391:1"),
("251","63","_visibility","visible"),
("252","63","_stock_status","instock"),
("253","63","_thumbnail_id","55"),
("254","63","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("255","63","total_sales","0"),
("256","63","_downloadable","no"),
("257","63","_virtual","no"),
("258","63","_purchase_note",""),
("259","63","_featured","no"),
("260","63","_weight",""),
("261","63","_length",""),
("262","63","_width",""),
("263","63","_height",""),
("264","63","_sku",""),
("265","63","_product_attributes","a:0:{}"),
("266","63","_regular_price",""),
("267","63","_sale_price","400000"),
("268","63","_sale_price_dates_from",""),
("269","63","_sale_price_dates_to",""),
("270","63","_price","400000"),
("271","63","_sold_individually",""),
("272","63","_manage_stock","no"),
("273","63","_backorders","no"),
("274","63","_stock",""),
("275","63","_upsell_ids","a:0:{}"),
("276","63","_crosssell_ids","a:0:{}"),
("277","63","_product_version","2.6.14"),
("278","63","_product_image_gallery",""),
("279","63","_wc_rating_count","a:0:{}"),
("280","63","_wc_average_rating","0"),
("291","73","_wp_attached_file","2017/03/slider-1-bg-quat-cong-nghiep.jpg"),
("292","73","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:500;s:4:\"file\";s:40:\"2017/03/slider-1-bg-quat-cong-nghiep.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"slider-1-bg-quat-cong-nghiep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"slider-1-bg-quat-cong-nghiep-300x78.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"slider-1-bg-quat-cong-nghiep-768x200.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"slider-1-bg-quat-cong-nghiep-1024x267.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"slider-1-bg-quat-cong-nghiep-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"slider-1-bg-quat-cong-nghiep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"slider-1-bg-quat-cong-nghiep-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("304","74","_stock_status","instock"),
("303","74","_visibility","visible"),
("299","48","_wp_old_slug","anh__trashed"),
("302","74","_edit_lock","1489804317:1"),
("301","74","_edit_last","1"),
("300","63","_wp_old_slug","anh-2__trashed"),
("305","74","_thumbnail_id","50"),
("306","74","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("307","74","total_sales","0"),
("308","74","_downloadable","no"),
("309","74","_virtual","no");
INSERT INTO bz_postmeta VALUES
("310","74","_purchase_note",""),
("311","74","_featured","no"),
("312","74","_weight",""),
("313","74","_length",""),
("314","74","_width",""),
("315","74","_height",""),
("316","74","_sku",""),
("317","74","_product_attributes","a:0:{}"),
("318","74","_regular_price","300000"),
("319","74","_sale_price",""),
("320","74","_sale_price_dates_from",""),
("321","74","_sale_price_dates_to",""),
("322","74","_price","300000"),
("323","74","_sold_individually",""),
("324","74","_manage_stock","no"),
("325","74","_backorders","no"),
("326","74","_stock",""),
("327","74","_upsell_ids","a:0:{}"),
("328","74","_crosssell_ids","a:0:{}"),
("329","74","_product_version","2.6.14"),
("330","74","_product_image_gallery",""),
("331","75","_edit_last","1"),
("332","75","_edit_lock","1489804606:1"),
("333","75","_visibility","visible"),
("334","75","_stock_status","instock"),
("335","75","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("336","75","total_sales","0"),
("337","75","_downloadable","yes"),
("338","75","_virtual","no"),
("339","75","_purchase_note",""),
("340","75","_featured","no"),
("341","75","_weight",""),
("342","75","_length",""),
("343","75","_width",""),
("344","75","_height",""),
("345","75","_sku",""),
("346","75","_product_attributes","a:0:{}"),
("347","75","_regular_price","250000"),
("348","75","_sale_price",""),
("349","75","_sale_price_dates_from",""),
("350","75","_sale_price_dates_to",""),
("351","75","_price","250000"),
("352","75","_sold_individually",""),
("353","75","_manage_stock","no"),
("354","75","_backorders","no"),
("355","75","_stock",""),
("356","75","_upsell_ids","a:0:{}"),
("357","75","_crosssell_ids","a:0:{}"),
("358","75","_downloadable_files","a:0:{}"),
("359","75","_download_limit",""),
("360","75","_download_expiry",""),
("361","75","_download_type",""),
("362","75","_product_version","2.6.14"),
("363","75","_product_image_gallery",""),
("364","76","_edit_last","1"),
("365","76","_edit_lock","1489804578:1"),
("366","76","_visibility","visible"),
("367","76","_stock_status","instock"),
("368","76","_thumbnail_id","53"),
("369","76","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("370","76","total_sales","0"),
("371","76","_downloadable","no"),
("372","76","_virtual","no"),
("373","76","_purchase_note",""),
("374","76","_featured","no"),
("375","76","_weight",""),
("376","76","_length",""),
("377","76","_width",""),
("378","76","_height",""),
("379","76","_sku",""),
("380","76","_product_attributes","a:0:{}"),
("381","76","_regular_price","300000"),
("382","76","_sale_price",""),
("383","76","_sale_price_dates_from",""),
("384","76","_sale_price_dates_to",""),
("385","76","_price","300000"),
("386","76","_sold_individually",""),
("387","76","_manage_stock","no"),
("388","76","_backorders","no"),
("389","76","_stock",""),
("390","76","_upsell_ids","a:0:{}"),
("391","76","_crosssell_ids","a:0:{}"),
("392","76","_product_version","2.6.14"),
("393","76","_product_image_gallery",""),
("394","75","_thumbnail_id","51"),
("395","77","_edit_last","1"),
("396","77","_edit_lock","1489804656:1"),
("397","77","_visibility","visible"),
("398","77","_stock_status","instock"),
("399","77","_thumbnail_id","52"),
("400","77","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("401","77","total_sales","0"),
("402","77","_downloadable","no"),
("403","77","_virtual","no"),
("404","77","_purchase_note",""),
("405","77","_featured","no"),
("406","77","_weight",""),
("407","77","_length",""),
("408","77","_width",""),
("409","77","_height","");
INSERT INTO bz_postmeta VALUES
("410","77","_sku",""),
("411","77","_product_attributes","a:0:{}"),
("412","77","_regular_price","750000"),
("413","77","_sale_price",""),
("414","77","_sale_price_dates_from",""),
("415","77","_sale_price_dates_to",""),
("416","77","_price","750000"),
("417","77","_sold_individually",""),
("418","77","_manage_stock","no"),
("419","77","_backorders","no"),
("420","77","_stock",""),
("421","77","_upsell_ids","a:0:{}"),
("422","77","_crosssell_ids","a:0:{}"),
("423","77","_product_version","2.6.14"),
("424","77","_product_image_gallery",""),
("425","78","_edit_last","1"),
("426","78","_edit_lock","1489804753:1"),
("427","78","_visibility","visible"),
("428","78","_stock_status","instock"),
("429","78","_thumbnail_id","51"),
("430","78","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("431","78","total_sales","0"),
("432","78","_downloadable","no"),
("433","78","_virtual","no"),
("434","78","_purchase_note",""),
("435","78","_featured","no"),
("436","78","_weight",""),
("437","78","_length",""),
("438","78","_width",""),
("439","78","_height",""),
("440","78","_sku",""),
("441","78","_product_attributes","a:0:{}"),
("442","78","_regular_price","500000"),
("443","78","_sale_price",""),
("444","78","_sale_price_dates_from",""),
("445","78","_sale_price_dates_to",""),
("446","78","_price","500000"),
("447","78","_sold_individually",""),
("448","78","_manage_stock","no"),
("449","78","_backorders","no"),
("450","78","_stock",""),
("451","78","_upsell_ids","a:0:{}"),
("452","78","_crosssell_ids","a:0:{}"),
("453","78","_product_version","2.6.14"),
("454","78","_product_image_gallery",""),
("455","78","_wc_rating_count","a:0:{}"),
("456","78","_wc_average_rating","0"),
("457","77","_wc_rating_count","a:0:{}"),
("458","77","_wc_average_rating","0"),
("459","76","_wc_rating_count","a:0:{}"),
("460","76","_wc_average_rating","0"),
("461","75","_wc_rating_count","a:0:{}"),
("462","75","_wc_average_rating","0"),
("463","74","_wc_rating_count","a:0:{}"),
("464","74","_wc_average_rating","0"),
("469","73","_edit_lock","1489805810:1"),
("470","73","_edit_last","1"),
("471","60","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>"),
("472","60","_oembed_time_97120786a5d618011442f73be26e093f","1489806431"),
("473","60","_oembed_77d4e449ed7452a29c7d735ef3d29a89","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/BgdcznrM4kg?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>"),
("474","60","_oembed_time_77d4e449ed7452a29c7d735ef3d29a89","1489806549"),
("529","63","_wc_review_count","0"),
("528","48","_wc_review_count","0"),
("512","105","_wp_attached_file","2017/03/8.png"),
("513","105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:390;s:6:\"height\";i:480;s:4:\"file\";s:13:\"2017/03/8.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-244x300.png\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"8-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("514","20","_thumbnail_id","55"),
("517","11","_thumbnail_id","53"),
("520","7","_thumbnail_id","104"),
("523","24","_thumbnail_id","104"),
("530","76","_wc_review_count","0"),
("531","77","_wc_review_count","0"),
("532","74","_wc_review_count","0"),
("533","75","_wc_review_count","0"),
("534","78","_wc_review_count","0"),
("537","115","_wp_attached_file","2017/07/1.png"),
("538","115","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:75;s:4:\"file\";s:13:\"2017/07/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:12:\"1-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("543","118","_wp_attached_file","2017/07/BIZHOST-DEMO.png"),
("544","118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/07/BIZHOST-DEMO.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("551","126","_wp_attached_file","woocommerce-placeholder.png"),
("552","126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2017-03-16 04:23:31","2017-03-16 04:23:31","This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!","Sample Page","","publish","closed","open","","sample-page","","","2017-03-16 04:23:31","2017-03-16 04:23:31","","0","http://localhost/wordpress/?page_id=2","0","page","","0"),
("7","1","2017-03-16 05:16:34","2017-03-16 05:16:34","Thấy 96,69% các ông chồng tán thành việc đánh vợ khi vợ hỗn, bướng, dám cãi tay đôi, không nghe lời. Thật là một bất công của xã hội, đổi lại chồng hỗn, bướng thì vợ có được “thượng cẳng chân hạ cẳng tay” với chồng chăng?\n\nhttps://www.youtube.com/watch?v=8t8_H7sDMw8\n\nThấy chuyện người, ngẫm lại chuyện mình. Vợ mình cũng có lúc bướng bỉnh, không nghe lời, thách thức trong lúc mình nóng giận. Đúng với câu “đổ dầu vào lửa”. Theo đúng logic đàn ông Việt, thì chắc mình đã phạm phải sai lầm không thể tha thứ rồi. Vì sao đánh vợ lại là sai lầm không thể tha thứ. Người ta có nói “không đánh phụ nữ dù chỉ bằng một cành hoa”. Bạn nghĩ sao khi mẹ mình, con gái mình, chị em gái mình bị người khác đánh đập.\n\nLà người đàn ông “vai năm tấc rộng, thân mười thước cao”, hãy là chỗ dựa tinh thần, là trụ cột, để người vợ yếu đuối dựa vào. Người đã chăm sóc ta và con ta từng miếng ăn, giấc ngủ, người đã bỏ qua những cuộc vui với bạn bè, để nhanh chân chạy về lo cho ta miếng ăn, sẵn sàng nép vào lòng ta, lúc ta đang cần sưởi ấm khi bị dòng đời lạnh lùng xua đuổi.\n\nChỉ cần đánh vợ một lần, bạn đã vượt qua giới hạn của sự tôn trọng. Vợ bạn sẽ tôn trọng bạn biết bao, khi nhận ra thay vì đánh vợ, bạn lại cao thượng vượt qua cái tôi chính mình. Bạn đã kiềm chế được bản thân, xứng đáng là một chỗ dựa vững chắc của gia đình. Hãy dành sức lực cho việc bảo vệ gia đình chống chọi với dòng đời vô tình. Hãy “dạy vợ từ thuở bơ vơ mới về” bằng tình yêu thương và sự kiên nhẫn. Làm được vậy, đàn ông Việt sẽ tự hào biết bao.\n\nĐôi dòng dành cho vợ khi nhớ lại giây phút “giận hờn” của vợ chồng mình.\n\n<img class=\"alignnone size-large wp-image-432\" src=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499 640w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1280&amp;h=998 1280w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=150&amp;h=117 150w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300&amp;h=234 300w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=768&amp;h=599 768w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1024&amp;h=799 1024w\" alt=\"avatar1\" width=\"640\" height=\"499\" data-attachment-id=\"432\" data-permalink=\"https://haihth.wordpress.com/2015/08/03/khi-nguoi-phu-nu-cua-ban-bi-danh/avatar1/\" data-orig-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg\" data-orig-size=\"2145,1673\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D40&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1391272127&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.002&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"avatar1\" data-image-description=\"\" data-medium-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300\" data-large-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" />","Khi người phụ nữ của bạn bị đánh!","","publish","open","open","","khi-nguoi-phu-nu-cua-ban-bi-danh","","","2017-03-18 05:10:46","2017-03-18 05:10:46","","0","http://localhost/wordpress/?p=7","0","post","","0"),
("8","1","2017-03-16 05:16:34","2017-03-16 05:16:34","Thấy 96,69% các ông chồng tán thành việc đánh vợ khi vợ hỗn, bướng, dám cãi tay đôi, không nghe lời. Thật là một bất công của xã hội, đổi lại chồng hỗn, bướng thì vợ có được “thượng cẳng chân hạ cẳng tay” với chồng chăng?\n\nThấy chuyện người, ngẫm lại chuyện mình. Vợ mình cũng có lúc bướng bỉnh, không nghe lời, thách thức trong lúc mình nóng giận. Đúng với câu “đổ dầu vào lửa”. Theo đúng logic đàn ông Việt, thì chắc mình đã phạm phải sai lầm không thể tha thứ rồi. Vì sao đánh vợ lại là sai lầm không thể tha thứ. Người ta có nói “không đánh phụ nữ dù chỉ bằng một cành hoa”. Bạn nghĩ sao khi mẹ mình, con gái mình, chị em gái mình bị người khác đánh đập.\n\nLà người đàn ông “vai năm tấc rộng, thân mười thước cao”, hãy là chỗ dựa tinh thần, là trụ cột, để người vợ yếu đuối dựa vào. Người đã chăm sóc ta và con ta từng miếng ăn, giấc ngủ, người đã bỏ qua những cuộc vui với bạn bè, để nhanh chân chạy về lo cho ta miếng ăn, sẵn sàng nép vào lòng ta, lúc ta đang cần sưởi ấm khi bị dòng đời lạnh lùng xua đuổi.\n\nChỉ cần đánh vợ một lần, bạn đã vượt qua giới hạn của sự tôn trọng. Vợ bạn sẽ tôn trọng bạn biết bao, khi nhận ra thay vì đánh vợ, bạn lại cao thượng vượt qua cái tôi chính mình. Bạn đã kiềm chế được bản thân, xứng đáng là một chỗ dựa vững chắc của gia đình. Hãy dành sức lực cho việc bảo vệ gia đình chống chọi với dòng đời vô tình. Hãy “dạy vợ từ thuở bơ vơ mới về” bằng tình yêu thương và sự kiên nhẫn. Làm được vậy, đàn ông Việt sẽ tự hào biết bao.\n\nĐôi dòng dành cho vợ khi nhớ lại giây phút “giận hờn” của vợ chồng mình.\n\n<img class=\"alignnone size-large wp-image-432\" src=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499 640w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1280&amp;h=998 1280w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=150&amp;h=117 150w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300&amp;h=234 300w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=768&amp;h=599 768w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1024&amp;h=799 1024w\" alt=\"avatar1\" width=\"640\" height=\"499\" data-attachment-id=\"432\" data-permalink=\"https://haihth.wordpress.com/2015/08/03/khi-nguoi-phu-nu-cua-ban-bi-danh/avatar1/\" data-orig-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg\" data-orig-size=\"2145,1673\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D40&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1391272127&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.002&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"avatar1\" data-image-description=\"\" data-medium-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300\" data-large-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" />","Khi người phụ nữ của bạn bị đánh!","","inherit","closed","closed","","7-revision-v1","","","2017-03-16 05:16:34","2017-03-16 05:16:34","","7","http://localhost/wordpress/2017/03/16/7-revision-v1/","0","revision","","0"),
("9","1","2017-03-16 07:27:50","2017-03-16 07:27:50","Thấy 96,69% các ông chồng tán thành việc đánh vợ khi vợ hỗn, bướng, dám cãi tay đôi, không nghe lời. Thật là một bất công của xã hội, đổi lại chồng hỗn, bướng thì vợ có được “thượng cẳng chân hạ cẳng tay” với chồng chăng?\n\nhttps://www.youtube.com/watch?v=8t8_H7sDMw8\n\nThấy chuyện người, ngẫm lại chuyện mình. Vợ mình cũng có lúc bướng bỉnh, không nghe lời, thách thức trong lúc mình nóng giận. Đúng với câu “đổ dầu vào lửa”. Theo đúng logic đàn ông Việt, thì chắc mình đã phạm phải sai lầm không thể tha thứ rồi. Vì sao đánh vợ lại là sai lầm không thể tha thứ. Người ta có nói “không đánh phụ nữ dù chỉ bằng một cành hoa”. Bạn nghĩ sao khi mẹ mình, con gái mình, chị em gái mình bị người khác đánh đập.\n\nLà người đàn ông “vai năm tấc rộng, thân mười thước cao”, hãy là chỗ dựa tinh thần, là trụ cột, để người vợ yếu đuối dựa vào. Người đã chăm sóc ta và con ta từng miếng ăn, giấc ngủ, người đã bỏ qua những cuộc vui với bạn bè, để nhanh chân chạy về lo cho ta miếng ăn, sẵn sàng nép vào lòng ta, lúc ta đang cần sưởi ấm khi bị dòng đời lạnh lùng xua đuổi.\n\nChỉ cần đánh vợ một lần, bạn đã vượt qua giới hạn của sự tôn trọng. Vợ bạn sẽ tôn trọng bạn biết bao, khi nhận ra thay vì đánh vợ, bạn lại cao thượng vượt qua cái tôi chính mình. Bạn đã kiềm chế được bản thân, xứng đáng là một chỗ dựa vững chắc của gia đình. Hãy dành sức lực cho việc bảo vệ gia đình chống chọi với dòng đời vô tình. Hãy “dạy vợ từ thuở bơ vơ mới về” bằng tình yêu thương và sự kiên nhẫn. Làm được vậy, đàn ông Việt sẽ tự hào biết bao.\n\nĐôi dòng dành cho vợ khi nhớ lại giây phút “giận hờn” của vợ chồng mình.\n\n<img class=\"alignnone size-large wp-image-432\" src=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499 640w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1280&amp;h=998 1280w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=150&amp;h=117 150w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300&amp;h=234 300w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=768&amp;h=599 768w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1024&amp;h=799 1024w\" alt=\"avatar1\" width=\"640\" height=\"499\" data-attachment-id=\"432\" data-permalink=\"https://haihth.wordpress.com/2015/08/03/khi-nguoi-phu-nu-cua-ban-bi-danh/avatar1/\" data-orig-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg\" data-orig-size=\"2145,1673\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D40&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1391272127&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.002&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"avatar1\" data-image-description=\"\" data-medium-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300\" data-large-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" />","Khi người phụ nữ của bạn bị đánh!","","inherit","closed","closed","","7-autosave-v1","","","2017-03-16 07:27:50","2017-03-16 07:27:50","","7","http://localhost/wordpress/2017/03/16/7-autosave-v1/","0","revision","","0"),
("10","1","2017-03-16 07:29:32","2017-03-16 07:29:32","Thấy 96,69% các ông chồng tán thành việc đánh vợ khi vợ hỗn, bướng, dám cãi tay đôi, không nghe lời. Thật là một bất công của xã hội, đổi lại chồng hỗn, bướng thì vợ có được “thượng cẳng chân hạ cẳng tay” với chồng chăng?\n\nhttps://www.youtube.com/watch?v=8t8_H7sDMw8\n\nThấy chuyện người, ngẫm lại chuyện mình. Vợ mình cũng có lúc bướng bỉnh, không nghe lời, thách thức trong lúc mình nóng giận. Đúng với câu “đổ dầu vào lửa”. Theo đúng logic đàn ông Việt, thì chắc mình đã phạm phải sai lầm không thể tha thứ rồi. Vì sao đánh vợ lại là sai lầm không thể tha thứ. Người ta có nói “không đánh phụ nữ dù chỉ bằng một cành hoa”. Bạn nghĩ sao khi mẹ mình, con gái mình, chị em gái mình bị người khác đánh đập.\n\nLà người đàn ông “vai năm tấc rộng, thân mười thước cao”, hãy là chỗ dựa tinh thần, là trụ cột, để người vợ yếu đuối dựa vào. Người đã chăm sóc ta và con ta từng miếng ăn, giấc ngủ, người đã bỏ qua những cuộc vui với bạn bè, để nhanh chân chạy về lo cho ta miếng ăn, sẵn sàng nép vào lòng ta, lúc ta đang cần sưởi ấm khi bị dòng đời lạnh lùng xua đuổi.\n\nChỉ cần đánh vợ một lần, bạn đã vượt qua giới hạn của sự tôn trọng. Vợ bạn sẽ tôn trọng bạn biết bao, khi nhận ra thay vì đánh vợ, bạn lại cao thượng vượt qua cái tôi chính mình. Bạn đã kiềm chế được bản thân, xứng đáng là một chỗ dựa vững chắc của gia đình. Hãy dành sức lực cho việc bảo vệ gia đình chống chọi với dòng đời vô tình. Hãy “dạy vợ từ thuở bơ vơ mới về” bằng tình yêu thương và sự kiên nhẫn. Làm được vậy, đàn ông Việt sẽ tự hào biết bao.\n\nĐôi dòng dành cho vợ khi nhớ lại giây phút “giận hờn” của vợ chồng mình.\n\n<img class=\"alignnone size-large wp-image-432\" src=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499 640w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1280&amp;h=998 1280w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=150&amp;h=117 150w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300&amp;h=234 300w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=768&amp;h=599 768w, https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=1024&amp;h=799 1024w\" alt=\"avatar1\" width=\"640\" height=\"499\" data-attachment-id=\"432\" data-permalink=\"https://haihth.wordpress.com/2015/08/03/khi-nguoi-phu-nu-cua-ban-bi-danh/avatar1/\" data-orig-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg\" data-orig-size=\"2145,1673\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D40&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1391272127&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.002&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"avatar1\" data-image-description=\"\" data-medium-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=300\" data-large-file=\"https://haihth.files.wordpress.com/2015/08/avatar1.jpg?w=640&amp;h=499\" />","Khi người phụ nữ của bạn bị đánh!","","inherit","closed","closed","","7-revision-v1","","","2017-03-16 07:29:32","2017-03-16 07:29:32","","7","http://localhost/wordpress/2017/03/16/7-revision-v1/","0","revision","","0"),
("11","1","2017-03-16 08:05:37","2017-03-16 08:05:37","Ba biết câu “sinh con rồi mới sinh cha, sinh cháu giữ nhà rồi mới sinh ông”. Ba được học, hiểu ý nghĩa và đã vô tình quên mất. Ba từng làm phiền lòng ông bà nội và trở thành nỗi thất vọng của gia đình. Bà nội – người luôn thiên vị và ủng hộ ba, cay đắng mỗi khi ai nói: “Con hư tại mẹ”.\n\nBa vào Đại học Bách khoa năm 18 tuổi, tự động bỏ ngang năm 21 tuổi. Chơi vơi, lạc lõng giữa lòng TP HCM đầy náo nhiệt. Ba đã tiêu tốn hàng giờ, hàng ngày, hàng tháng, thậm chí hàng năm, lúc chơi game, lúc bên ly cafe, lúc bên bàn nhậu, để tìm câu trả lời cho những câu hỏi: Ba có thể làm gì? Ba sống vì mục đích gì? Đâu là lý tưởng của đời ba?\n\nThời gian không chờ đợi ai. Trong lúc ba cứ loay hoay lãng phí tuổi trẻ của mình, bạn bè ba đều đã có những thành công nhất định. Người có sự nghiệp, người có gia đình… còn ba luôn tìm ra lý do để lẩn tránh bạn bè những dịp lễ Tết, cưới hỏi. Bà nội và các chú bác đều mặc nhiên rằng ba là người thất bại nhất trong gia đình. Chỉ trong sâu thẳm tâm hồn, ba tin rằng ba chưa thất bại, ba sẽ làm được, chỉ là ba chưa biết nên phải làm gì?\n\n&nbsp;\n\nBa đã đi học lại đại học, tìm được công việc làm để bám trụ ở thành phố rồi ba gặp được mẹ con. Khi mọi người đều mất niềm tin vào ba thì mẹ con làm điều ngược lại. Mẹ con đã ủng hộ và tin tưởng ba. Ngày ba tốt nghiệp với tấm bằng loại khá, ba biết mình đã tìm lại được chính mình và hơn tất cả, ba đã tìm được nửa kia của đời mình.\n\nBa và mẹ trở về quê để làm việc, tránh xa những bon chen, chật chội, kẹt xe, ô nhiễm môi trường và tình người thiếu nồng ấm ở thành phố. Rồi ba và mẹ đã có một đám cưới bình dị và nhẹ nhàng. Ba trở thành người đàn ông có gia đình, nhiều nghĩa vụ và trách nhiệm hơn với cuộc sống. Tuy vậy, những thói quen xấu từ nhỏ của ba như bừa bộn, lười nhác việc nhà, hay la cà chè chén với bạn bè thì vẫn chưa thay đổi.\n\nVà rồi con xuất hiện. Từ lúc mẹ mang thai con, ba đã biết phải nhẹ nhàng với mẹ, luôn làm cho mẹ vui, nhà cửa phải sạch sẽ. Mọi người nói môi trường sống sạch sẽ, tinh thần mẹ con vui tươi thì sau này sinh con mới khỏe mạnh. Ba đã biết từ chối những buổi nhậu để về sớm với mẹ con, đấm bóp cho mẹ mỗi khi nhức mỏi, thức dậy mỗi đêm khi mẹ bị chuột rút. Thời gian chờ đợi 9 tháng 10 ngày thật dài. Mỗi tháng khi siêu âm thấy con, ba mẹ đều xúc động và thầm cảm ơn ông trời ban tặng con cho ba mẹ.\n\nNhững chờ đợi của ba mẹ rồi cũng qua khi ba ôm con từ phòng sinh của bệnh viện. Nhìn thấy con khỏe mạnh, đầy đủ hình hài, ba mẹ thật mừng và hạnh phúc. Mẹ con sinh mổ nên yếu sức. Ba học tập cách thay tã, cách cho con bú, cách chăm sóc bà bầu. Tuy có bà nội và các bác nhưng ba muốn tự mình làm cho hai mẹ con và thật không ngờ, ba đều làm được tất cả, những công việc tưởng chừng khó khăn cho cánh đàn ông, ba đều làm tốt.\n\nĐà Lạt tháng 11 thật lạnh, ba học tập ông bà ngày xưa, hàng ngày đều về sớm, nhóm một bếp than, vừa nấu nước chè cho con tắm khỏi bị rôm sảy. Ba người trong gia đình ta quây quần bên bếp than hồng, mẹ con ngồi xông hơi, xoa bóp rượu gừng, ba ngồi hơ trầu cho con.\n\nTừ khi có con, ba đã biết tới việc vệ sinh nhà cửa, chà rửa toilet, giặt giũ đồ đạc hàng ngày, tranh thủ về sớm chơi với con. Vui khi con khỏe mạnh, lo âu và thức đêm những khi con bị bệnh, bị sốt. Chứng kiến con lớn khôn từng ngày, ba cũng thay đổi từng ngày. “Sinh con rồi mới sinh cha, sinh cháu giữ nhà rồi mới sinh ông”, ba đã tìm ra lý tưởng sống của đời mình khi có con\n\nNay con được một tuổi, ba có quà tặng muốn gởi đến con, đó là: “Cảm ơn con đã đến trong cuộc đời của ba”","Nếu bạn thấy ưng ý thì ấn nút Install để cài đặt.","","publish","open","open","","neu-ban-thay-ung-y-thi-an-nut-install-de-cai-dat","","","2017-03-18 05:10:19","2017-03-18 05:10:19","","0","http://localhost/wordpress/?p=11","0","post","","0"),
("12","1","2017-03-16 08:05:37","2017-03-16 08:05:37","Ba biết câu “sinh con rồi mới sinh cha, sinh cháu giữ nhà rồi mới sinh ông”. Ba được học, hiểu ý nghĩa và đã vô tình quên mất. Ba từng làm phiền lòng ông bà nội và trở thành nỗi thất vọng của gia đình. Bà nội – người luôn thiên vị và ủng hộ ba, cay đắng mỗi khi ai nói: “Con hư tại mẹ”.\n\nBa vào Đại học Bách khoa năm 18 tuổi, tự động bỏ ngang năm 21 tuổi. Chơi vơi, lạc lõng giữa lòng TP HCM đầy náo nhiệt. Ba đã tiêu tốn hàng giờ, hàng ngày, hàng tháng, thậm chí hàng năm, lúc chơi game, lúc bên ly cafe, lúc bên bàn nhậu, để tìm câu trả lời cho những câu hỏi: Ba có thể làm gì? Ba sống vì mục đích gì? Đâu là lý tưởng của đời ba?\n\nThời gian không chờ đợi ai. Trong lúc ba cứ loay hoay lãng phí tuổi trẻ của mình, bạn bè ba đều đã có những thành công nhất định. Người có sự nghiệp, người có gia đình… còn ba luôn tìm ra lý do để lẩn tránh bạn bè những dịp lễ Tết, cưới hỏi. Bà nội và các chú bác đều mặc nhiên rằng ba là người thất bại nhất trong gia đình. Chỉ trong sâu thẳm tâm hồn, ba tin rằng ba chưa thất bại, ba sẽ làm được, chỉ là ba chưa biết nên phải làm gì?\n\n&nbsp;\n\nBa đã đi học lại đại học, tìm được công việc làm để bám trụ ở thành phố rồi ba gặp được mẹ con. Khi mọi người đều mất niềm tin vào ba thì mẹ con làm điều ngược lại. Mẹ con đã ủng hộ và tin tưởng ba. Ngày ba tốt nghiệp với tấm bằng loại khá, ba biết mình đã tìm lại được chính mình và hơn tất cả, ba đã tìm được nửa kia của đời mình.\n\nBa và mẹ trở về quê để làm việc, tránh xa những bon chen, chật chội, kẹt xe, ô nhiễm môi trường và tình người thiếu nồng ấm ở thành phố. Rồi ba và mẹ đã có một đám cưới bình dị và nhẹ nhàng. Ba trở thành người đàn ông có gia đình, nhiều nghĩa vụ và trách nhiệm hơn với cuộc sống. Tuy vậy, những thói quen xấu từ nhỏ của ba như bừa bộn, lười nhác việc nhà, hay la cà chè chén với bạn bè thì vẫn chưa thay đổi.\n\nVà rồi con xuất hiện. Từ lúc mẹ mang thai con, ba đã biết phải nhẹ nhàng với mẹ, luôn làm cho mẹ vui, nhà cửa phải sạch sẽ. Mọi người nói môi trường sống sạch sẽ, tinh thần mẹ con vui tươi thì sau này sinh con mới khỏe mạnh. Ba đã biết từ chối những buổi nhậu để về sớm với mẹ con, đấm bóp cho mẹ mỗi khi nhức mỏi, thức dậy mỗi đêm khi mẹ bị chuột rút. Thời gian chờ đợi 9 tháng 10 ngày thật dài. Mỗi tháng khi siêu âm thấy con, ba mẹ đều xúc động và thầm cảm ơn ông trời ban tặng con cho ba mẹ.\n\nNhững chờ đợi của ba mẹ rồi cũng qua khi ba ôm con từ phòng sinh của bệnh viện. Nhìn thấy con khỏe mạnh, đầy đủ hình hài, ba mẹ thật mừng và hạnh phúc. Mẹ con sinh mổ nên yếu sức. Ba học tập cách thay tã, cách cho con bú, cách chăm sóc bà bầu. Tuy có bà nội và các bác nhưng ba muốn tự mình làm cho hai mẹ con và thật không ngờ, ba đều làm được tất cả, những công việc tưởng chừng khó khăn cho cánh đàn ông, ba đều làm tốt.\n\nĐà Lạt tháng 11 thật lạnh, ba học tập ông bà ngày xưa, hàng ngày đều về sớm, nhóm một bếp than, vừa nấu nước chè cho con tắm khỏi bị rôm sảy. Ba người trong gia đình ta quây quần bên bếp than hồng, mẹ con ngồi xông hơi, xoa bóp rượu gừng, ba ngồi hơ trầu cho con.\n\nTừ khi có con, ba đã biết tới việc vệ sinh nhà cửa, chà rửa toilet, giặt giũ đồ đạc hàng ngày, tranh thủ về sớm chơi với con. Vui khi con khỏe mạnh, lo âu và thức đêm những khi con bị bệnh, bị sốt. Chứng kiến con lớn khôn từng ngày, ba cũng thay đổi từng ngày. “Sinh con rồi mới sinh cha, sinh cháu giữ nhà rồi mới sinh ông”, ba đã tìm ra lý tưởng sống của đời mình khi có con\n\nNay con được một tuổi, ba có quà tặng muốn gởi đến con, đó là: “Cảm ơn con đã đến trong cuộc đời của ba”","Nếu bạn thấy ưng ý thì ấn nút Install để cài đặt.","","inherit","closed","closed","","11-revision-v1","","","2017-03-16 08:05:37","2017-03-16 08:05:37","","11","http://localhost/wordpress/2017/03/16/11-revision-v1/","0","revision","","0"),
("15","1","2017-03-16 09:11:42","2017-03-16 09:11:42","","Shop","","publish","closed","closed","","shop","","","2017-03-16 09:11:42","2017-03-16 09:11:42","","0","http://localhost/wordpress/shop/","0","page","","0"),
("16","1","2017-03-16 09:11:42","2017-03-16 09:11:42","[woocommerce_cart]","Cart","","publish","closed","closed","","cart","","","2017-03-16 09:11:42","2017-03-16 09:11:42","","0","http://localhost/wordpress/cart/","0","page","","0"),
("17","1","2017-03-16 09:11:42","2017-03-16 09:11:42","[woocommerce_checkout]","Checkout","","publish","closed","closed","","checkout","","","2017-03-16 09:11:42","2017-03-16 09:11:42","","0","http://localhost/wordpress/checkout/","0","page","","0"),
("18","1","2017-03-16 09:11:42","2017-03-16 09:11:42","[woocommerce_my_account]","My Account","","publish","closed","closed","","my-account","","","2017-03-16 09:11:42","2017-03-16 09:11:42","","0","http://localhost/wordpress/my-account/","0","page","","0"),
("19","1","2017-03-16 09:13:39","2017-03-16 09:13:39","[yith_wcwl_wishlist]","Wishlist","","publish","closed","closed","","wishlist","","","2017-03-16 09:13:39","2017-03-16 09:13:39","","0","http://localhost/wordpress/wishlist/","0","page","","0"),
("20","1","2017-03-16 11:03:32","2017-03-16 11:03:32","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","publish","open","open","","__trashed","","","2017-03-18 05:09:51","2017-03-18 05:09:51","","0","http://localhost/wordpress/?p=20","0","post","","0"),
("21","1","2017-03-16 09:20:33","2017-03-16 09:20:33","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","publish","closed","closed","","dam-bau-cong-somua-hang-onlineship-hang-toan-quoc","","","2017-03-16 09:20:33","2017-03-16 09:20:33","","0","http://localhost/wordpress/?page_id=21","0","page","","0"),
("22","1","2017-03-16 09:20:33","2017-03-16 09:20:33","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","inherit","closed","closed","","21-revision-v1","","","2017-03-16 09:20:33","2017-03-16 09:20:33","","21","http://localhost/wordpress/2017/03/16/21-revision-v1/","0","revision","","0"),
("24","1","2017-03-16 09:29:38","2017-03-16 09:29:38","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","publish","open","open","","dam-bau-cong-somua-hang-onlineship-hang-toan-quoc","","","2017-03-18 05:11:07","2017-03-18 05:11:07","","0","http://localhost/wordpress/?p=24","0","post","","0"),
("25","1","2017-03-16 09:29:38","2017-03-16 09:29:38","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","inherit","closed","closed","","24-revision-v1","","","2017-03-16 09:29:38","2017-03-16 09:29:38","","24","http://localhost/wordpress/2017/03/16/24-revision-v1/","0","revision","","0"),
("27","1","2017-03-16 09:32:07","2017-03-16 09:32:07","","logo-vay-bau","","inherit","open","closed","","logo-vay-bau","","","2017-03-16 09:32:07","2017-03-16 09:32:07","","0","http://localhost/wordpress/wp-content/uploads/2017/03/logo-vay-bau.png","0","attachment","image/png","0"),
("30","1","2017-03-16 10:15:34","2017-03-16 10:15:34","","logo-toan-cau","","inherit","open","closed","","logo-toan-cau","","","2017-03-16 10:15:34","2017-03-16 10:15:34","","0","http://localhost/wordpress/wp-content/uploads/2017/03/logo-toan-cau.png","0","attachment","image/png","0"),
("32","1","2017-03-16 10:36:52","2017-03-16 10:36:52","","Trang chủ","","publish","closed","closed","","hjgh","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=32","1","nav_menu_item","","0"),
("34","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=34","2","nav_menu_item","","0"),
("35","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Sản phẩm","","publish","closed","closed","","san-pham","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=35","3","nav_menu_item","","0"),
("36","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Quạt thông gió căn hộ","","publish","closed","closed","","quat-thong-gio-can-ho","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=36","4","nav_menu_item","","0"),
("37","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Quạt dành cho nhà cao tầng","","publish","closed","closed","","quat-danh-cho-nha-cao-tang","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=37","5","nav_menu_item","","0"),
("38","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Quạt dành cho khu công nghiệp","","publish","closed","closed","","quat-danh-cho-khu-cong-nghiep","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=38","6","nav_menu_item","","0"),
("42","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=42","7","nav_menu_item","","0"),
("43","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Tin tức","","publish","closed","closed","","tin-tuc","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=43","8","nav_menu_item","","0"),
("44","1","2017-03-16 10:43:45","2017-03-16 10:43:45","","Liên hệ","","publish","closed","closed","","lien-he","","","2017-03-16 10:58:14","2017-03-16 10:58:14","","0","http://localhost/wordpress/?p=44","9","nav_menu_item","","0"),
("47","1","2017-03-16 11:03:32","2017-03-16 11:03:32","","Đầm bầu công sở,Mua hàng Online,Ship hàng toàn quốc","","inherit","closed","closed","","20-revision-v1","","","2017-03-16 11:03:32","2017-03-16 11:03:32","","20","http://localhost/wordpress/2017/03/16/20-revision-v1/","0","revision","","0"),
("48","1","2017-03-16 11:07:29","2017-03-16 11:07:29","<img class=\"alignnone size-medium wp-image-56\" src=\"http://localhost/wordpress/wp-content/uploads/2017/03/quat-cong-nghiep-slider-300x124.png\" alt=\"\" width=\"300\" height=\"124\" />","Quạt hút bụi thông gió","","publish","open","closed","","anh","","","2017-03-18 02:36:22","2017-03-18 02:36:22","","0","http://localhost/wordpress/?post_type=product&#038;p=48","0","product","","0"),
("49","1","2017-03-16 11:05:57","2017-03-16 11:05:57","","logo-toan-cau","","inherit","open","closed","","logo-toan-cau-2","","","2017-03-16 11:05:57","2017-03-16 11:05:57","","48","http://localhost/wordpress/wp-content/uploads/2017/03/logo-toan-cau-1.png","0","attachment","image/png","0"),
("50","1","2017-03-16 11:05:58","2017-03-16 11:05:58","","quat-1-300x300","","inherit","open","closed","","quat-1-300x300","","","2017-03-16 11:05:58","2017-03-16 11:05:58","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-1-300x300.jpg","0","attachment","image/jpeg","0"),
("51","1","2017-03-16 11:05:59","2017-03-16 11:05:59","","quat-2-300x300","","inherit","open","closed","","quat-2-300x300","","","2017-03-16 11:05:59","2017-03-16 11:05:59","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-2-300x300.jpg","0","attachment","image/jpeg","0"),
("52","1","2017-03-16 11:05:59","2017-03-16 11:05:59","","quat-3-300x300","","inherit","open","closed","","quat-3-300x300","","","2017-03-16 11:05:59","2017-03-16 11:05:59","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-3-300x300.jpg","0","attachment","image/jpeg","0"),
("53","1","2017-03-16 11:06:00","2017-03-16 11:06:00","","quat-4-300x300","","inherit","open","closed","","quat-4-300x300","","","2017-03-16 11:06:00","2017-03-16 11:06:00","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-4-300x300.jpg","0","attachment","image/jpeg","0"),
("54","1","2017-03-16 11:06:01","2017-03-16 11:06:01","","quat-5-300x300 (1)","","inherit","open","closed","","quat-5-300x300-1","","","2017-03-16 11:06:01","2017-03-16 11:06:01","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-5-300x300-1.jpg","0","attachment","image/jpeg","0"),
("55","1","2017-03-16 11:06:02","2017-03-16 11:06:02","","quat-5-300x300","","inherit","open","closed","","quat-5-300x300","","","2017-03-16 11:06:02","2017-03-16 11:06:02","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-5-300x300.jpg","0","attachment","image/jpeg","0"),
("56","1","2017-03-16 11:06:02","2017-03-16 11:06:02","","quat-cong-nghiep-slider","","inherit","open","closed","","quat-cong-nghiep-slider","","","2017-03-16 11:06:02","2017-03-16 11:06:02","","48","http://localhost/wordpress/wp-content/uploads/2017/03/quat-cong-nghiep-slider.png","0","attachment","image/png","0"),
("60","1","2017-03-16 11:13:03","2017-03-16 11:13:03","[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[accordion title=\"DANH MỤC SẢN PHẨM\"]\n\n[accordion-item title=\"Quạt trần đèn\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần trang trí\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần nhập khẩu\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt điện gia đình\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Tư vấn lắp đặt\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Tư vấn chọn quạt\"]\n\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_banner height=\"50%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-03-18 06:08:26","2017-03-18 06:08:26","","0","http://localhost/wordpress/?page_id=60","0","page","","0"),
("61","1","2017-03-16 11:13:03","2017-03-16 11:13:03","","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-16 11:13:03","2017-03-16 11:13:03","","60","http://localhost/wordpress/2017/03/16/60-revision-v1/","0","revision","","0"),
("62","1","2017-03-16 11:28:31","2017-03-16 11:28:31","[ux_slider]\n\n[ux_banner height=\"500px\"]\n\n[text_box position_x=\"50\" position_y=\"50\"]\n\n<br />\n<h3 class=\"uppercase\"><strong>This is a simple banner</strong></h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\"]\n\n[ux_products]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-16 11:28:31","2017-03-16 11:28:31","","60","http://localhost/wordpress/2017/03/16/60-revision-v1/","0","revision","","0"),
("63","1","2017-03-16 11:30:48","2017-03-16 11:30:48","","Quạt hút bụi","","publish","open","closed","","anh-2","","","2017-03-18 02:35:17","2017-03-18 02:35:17","","0","http://localhost/wordpress/?post_type=product&#038;p=63","0","product","","0"),
("73","1","2017-03-18 02:20:58","2017-03-18 02:20:58","","slider-1-bg-quat-cong-nghiep","","inherit","open","closed","","slider-1-bg-quat-cong-nghiep","","","2017-03-18 02:58:03","2017-03-18 02:58:03","","0","http://localhost/wordpress/wp-content/uploads/2017/03/slider-1-bg-quat-cong-nghiep.jpg","0","attachment","image/jpeg","0"),
("74","1","2017-03-18 02:34:14","2017-03-18 02:34:14","","Quạt hướng trục FL406","","publish","open","closed","","quat-huong-truc-fl406","","","2017-03-18 02:34:14","2017-03-18 02:34:14","","0","http://localhost/wordpress/?post_type=product&#038;p=74","0","product","","0"),
("75","1","2017-03-18 02:37:36","2017-03-18 02:37:36","","Quạt hút bụi thông gió","","publish","open","closed","","quat-hut-bui-thong-gio","","","2017-03-18 02:39:02","2017-03-18 02:39:02","","0","http://localhost/wordpress/?post_type=product&#038;p=75","0","product","","0"),
("76","1","2017-03-18 02:38:24","2017-03-18 02:38:24","","Quạt li tâm hút bụi","","publish","open","closed","","quat-li-tam-hut-bui","","","2017-03-18 02:38:34","2017-03-18 02:38:34","","0","http://localhost/wordpress/?post_type=product&#038;p=76","0","product","","0"),
("77","1","2017-03-18 02:39:53","2017-03-18 02:39:53","","Quạt thông gió căn hộ","","publish","open","closed","","quat-thong-gio-can-ho","","","2017-03-18 02:39:53","2017-03-18 02:39:53","","0","http://localhost/wordpress/?post_type=product&#038;p=77","0","product","","0"),
("78","1","2017-03-18 02:40:40","2017-03-18 02:40:40","","Quạt thông gió căn hộ","","publish","open","closed","","quat-thong-gio-can-ho-2","","","2017-03-18 02:40:40","2017-03-18 02:40:40","","0","http://localhost/wordpress/?post_type=product&#038;p=78","0","product","","0"),
("82","1","2017-03-18 03:15:13","2017-03-18 03:15:13","[ux_slider]\n\n[ux_image id=\"73\"]\n\n[ux_image id=\"56\"]\n\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 03:15:13","2017-03-18 03:15:13","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("88","1","2017-03-18 03:20:28","2017-03-18 03:20:28","[ux_slider]\n\n[ux_image id=\"73\"]\n\n[ux_image id=\"56\"]\n\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title style=\"bold\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 03:20:28","2017-03-18 03:20:28","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("89","1","2017-03-18 03:58:27","2017-03-18 03:58:27","[ux_slider]\n\n[ux_image id=\"56\"]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"15\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title style=\"bold\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 03:58:27","2017-03-18 03:58:27","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("92","1","2017-03-18 04:23:45","2017-03-18 04:23:45","[ux_slider]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title style=\"bold\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 04:23:45","2017-03-18 04:23:45","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("98","1","2017-03-18 04:47:37","2017-03-18 04:47:37","[ux_slider]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title style=\"bold\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 04:47:37","2017-03-18 04:47:37","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("101","1","2017-03-18 04:56:04","2017-03-18 04:56:04","[ux_slider]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 04:56:04","2017-03-18 04:56:04","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("102","1","2017-03-18 04:59:30","2017-03-18 04:59:30","[ux_slider]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 04:59:30","2017-03-18 04:59:30","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("103","1","2017-03-18 05:06:37","2017-03-18 05:06:37","[ux_slider]\n\n[ux_banner height=\"500px\" bg=\"73\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:06:37","2017-03-18 05:06:37","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("104","1","2017-03-18 05:09:10","2017-03-18 05:09:10","","4","","inherit","open","closed","","4","","","2017-03-18 05:09:10","2017-03-18 05:09:10","","20","http://localhost/wordpress/wp-content/uploads/2017/03/4.png","0","attachment","image/png","0"),
("105","1","2017-03-18 05:09:21","2017-03-18 05:09:21","","8","","inherit","open","closed","","8","","","2017-03-18 05:09:21","2017-03-18 05:09:21","","20","http://localhost/wordpress/wp-content/uploads/2017/03/8.png","0","attachment","image/png","0"),
("106","1","2017-03-18 05:14:00","2017-03-18 05:14:00","[ux_slider]\n\n[ux_banner height=\"50%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:14:00","2017-03-18 05:14:00","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("108","1","2017-03-18 05:19:59","2017-03-18 05:19:59","[ux_slider]\n\n[ux_banner height=\"50%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:19:59","2017-03-18 05:19:59","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("107","1","2017-03-18 05:17:55","2017-03-18 05:17:55","[ux_slider]\n\n[ux_banner height=\"100%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:17:55","2017-03-18 05:17:55","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("109","1","2017-03-18 05:35:58","2017-03-18 05:35:58","[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[accordion title=\"DANH MỤC SẢN PHẨM\"]\n\n[accordion-item title=\"Quạt trần đèn\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần trang trí\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần nhập khẩu\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt điện gia đình\"]\n\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_banner height=\"50%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:35:58","2017-03-18 05:35:58","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("110","1","2017-03-18 05:56:11","2017-03-18 05:56:11","[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[accordion title=\"DANH MỤC SẢN PHẨM\"]\n\n[accordion-item title=\"Quạt trần đèn\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần trang trí\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt trần nhập khẩu\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Quạt điện gia đình\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Tư vấn lắp đặt\"]\n\n\n[/accordion-item]\n[accordion-item title=\"Tư vấn chọn quạt\"]\n\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_banner height=\"50%\" bg=\"73\" bg_size=\"orginal\"]\n\n[ux_image id=\"56\" width=\"85\" position_x=\"50\" position_y=\"100\"]\n\n[text_box position_x=\"5\" position_y=\"10\" text_align=\"left\"]\n\n<h3 class=\"uppercase\">QUẠT CÔNG NGHIỆP TOÀN CẦU</h3>\n<h5 class=\"uppercase\">KHẲNG ĐỊNH CHẤT LƯỢNG SỐ MỘT TẠI VIỆT NAM</h5>\n<h6 class=\"uppercase\">____________________________________________________</h6>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[title style=\"bold\" text=\"QUẠT CÔNG NGHIỆP CHO NHÀ CAO TẦNG\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[title text=\"QUẠT DÀNH CHO KHU CÔNG NGHIỆP\" icon=\"icon-shopping-cart\"]\n\n[ux_products]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" margin=\"0px 0px 0px 0px\"]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-google-plus\"]\n\n[blog_posts style=\"normal\" columns=\"3\" columns__md=\"1\" image_height=\"56.25%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"VIDEO\" icon=\"icon-youtube\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=BgdcznrM4kg\" height=\"100%\" depth=\"5\" depth_hover=\"5\"]\n\n<p>Quy trình sản xuất quạt công nghiệp tại nhà máy sản xuất GTECO, video được quay bởi Vifonic.vn</p>\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","60-revision-v1","","","2017-03-18 05:56:11","2017-03-18 05:56:11","","60","http://localhost/wordpress/2017/03/18/60-revision-v1/","0","revision","","0"),
("118","1","2017-07-17 15:20:39","2017-07-17 15:20:39","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2017-07-17 15:20:39","2017-07-17 15:20:39","","0","http://alahap.com/w/ifan/wp-content/uploads/2017/07/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("115","1","2017-07-04 00:30:34","2017-07-04 00:30:34","","1","","inherit","open","closed","","1","","","2017-07-04 00:30:34","2017-07-04 00:30:34","","0","https://bizhostvn.com/w/ifan/wp-content/uploads/2017/07/1.png","0","attachment","image/png","0"),
("126","1","2019-05-16 13:25:28","2019-05-16 13:25:28","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 13:25:28","2019-05-16 13:25:28","","0","https://bizhostvn.com/w/ifan/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




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
("7","1","0"),
("11","1","0"),
("20","1","0"),
("24","1","0"),
("32","7","0"),
("75","2","0"),
("34","7","0"),
("35","7","0"),
("36","7","0"),
("37","7","0"),
("74","2","0"),
("63","2","0"),
("48","2","0"),
("38","7","0"),
("42","7","0"),
("43","7","0"),
("44","7","0"),
("76","2","0"),
("77","2","0"),
("78","2","0");




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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","4"),
("2","2","product_type","","0","7"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","nav_menu","","0","0"),
("7","7","nav_menu","","0","9"),
("8","8","nav_menu","","0","0"),
("9","9","nav_menu","","0","0"),
("10","10","nav_menu","","0","0"),
("11","11","nav_menu","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","0"),
("16","16","product_visibility","","0","0"),
("17","17","product_visibility","","0","0"),
("18","18","product_visibility","","0","0"),
("19","19","product_visibility","","0","0"),
("20","20","product_visibility","","0","0"),
("21","21","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Uncategorized","uncategorized","0"),
("2","simple","simple","0"),
("3","grouped","grouped","0"),
("4","variable","variable","0"),
("5","external","external","0"),
("6","Trang chủ","trang-chu","0"),
("7","main","main","0"),
("8","LIÊN HỆ","lien-he","0"),
("9","THÔNG TIN","thong-tin","0"),
("10","TRỢ GIÚP","tro-giup","0"),
("11","FACEBOOK","facebook","0"),
("12","exclude-from-search","exclude-from-search","0"),
("13","exclude-from-catalog","exclude-from-catalog","0"),
("14","featured","featured","0"),
("15","outofstock","outofstock","0"),
("16","rated-1","rated-1","0"),
("17","rated-2","rated-2","0"),
("18","rated-3","rated-3","0"),
("19","rated-4","rated-4","0"),
("20","rated-5","rated-5","0"),
("21","Uncategorized","uncategorized","0");




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
("1","1","nickname","Admin"),
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
("16","1","bz_dashboard_quick_press_last_post_id","125"),
("17","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("18","1","metaboxhidden_nav-menus","a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}"),
("19","1","manageedit-shop_ordercolumnshidden","a:1:{i:0;s:15:\"billing_address\";}"),
("20","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","bz_user-settings-time","1558012719"),
("22","1","nav_menu_recently_edited","8"),
("23","1","session_tokens","a:3:{s:64:\"c84404a33cfeb41171dfc950f83a250bd0f039dc03ee54afa8a85228ec717a34\";a:4:{s:10:\"expiration\";i:1558184904;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012104;}s:64:\"bc2f710ff697eea693699f3e9e4d6fea1763e3674798ba5669ec45e87e599030\";a:4:{s:10:\"expiration\";i:1558184904;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012104;}s:64:\"6947c8aaaf7a640681b9868162849f6a24a4533f03aadedd2025b971859a8887\";a:4:{s:10:\"expiration\";i:1558185519;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012719;}}"),
("24","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("25","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("26","1","_woocommerce_tracks_anon_id","woo:Zfp+lyFS4Zq6ij2Tx5bYdtxD");




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
("1","admin","$P$Bu9zFNUJOIqCnnxqjuWo0xmwhnbM321","admin","demobz@gmail.com","","2017-03-16 04:23:31","","0","Admin");




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
  KEY `attribute_name` (`attribute_name`(191))
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
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  KEY `meta_key` (`meta_key`(191))
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
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("132","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558185927");




CREATE TABLE `bz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
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
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
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
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;