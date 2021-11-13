SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w144`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM AUTO_INCREMENT=6774 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/shoes","yes"),
("2","home","https://bizhostvn.com/w/shoes","yes"),
("3","blogname","shoes","yes"),
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
("29","rewrite_rules","a:206:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=86&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes"),
("6767","_transient_timeout_external_ip_address_103.74.117.155","1558617797","no"),
("6768","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("6703","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558617511","no"),
("6696","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558012962;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:8:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:30:\"db-prefix-change/db_prefix.php\";i:3;s:9:\"hello.php\";i:4;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:5;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:8;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","0","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:2:{i:0;s:56:\"C:\\wamp\\www\\shoes/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}","no"),
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
("79","widget_text","a:3:{i:1;a:0:{}i:3;a:3:{s:5:\"title\";s:10:\"LIÊN HỆ\";s:4:\"text\";s:152:\"BH- Đẳng cấp số 1\n\nP506 CT2 KĐT Mễ Trì Thượng, phường Mễ Trì, quận Nam Từ Liêm, Hà Nội\n\n0909 009 009\n\ncontact@gmail.vn\";s:6:\"filter\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","86","yes"),
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
("96","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO bz_options VALUES
("97","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("99","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:14:\"block_widget-3\";}s:12:\"sidebar-main\";a:0:{}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:4:{i:0;s:6:\"text-3\";i:1;s:10:\"nav_menu-3\";i:2;s:10:\"nav_menu-5\";i:3;s:10:\"nav_menu-7\";}s:13:\"array_version\";i:3;}","yes"),
("100","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_nav_menu","a:4:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:10:\"THÔNG TIN\";s:8:\"nav_menu\";i:10;}i:5;a:2:{s:5:\"title\";s:11:\"LIÊN KẾT\";s:8:\"nav_menu\";i:11;}i:7;a:2:{s:5:\"title\";s:10:\"HỖ TRỢ\";s:8:\"nav_menu\";i:12;}}","yes"),
("104","cron","a:15:{i:1558028233;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558030301;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558031776;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558034594;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558035599;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558051200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558078814;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558078932;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558088598;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558096309;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099394;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099404;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558110194;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("105","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489909535;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("305","woocommerce_allow_tracking","yes","yes"),
("299","woocommerce_paypal-ec_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("300","woocommerce_stripe_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("301","woocommerce_paypal_settings","a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:24:\"anhchinh511995@gmail.com\";}","yes"),
("302","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("303","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("304","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("306","woocommerce_tracker_last_send","1557959764","yes"),
("307","_transient_shipping-transient-version","1490107540","yes"),
("317","category_children","a:0:{}","yes"),
("324","_transient_product_query-transient-version","1490195112","yes"),
("325","_transient_product-transient-version","1490195112","yes"),
("6761","product_cat_children","a:0:{}","yes"),
("272","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("292","_transient_woocommerce_cache_excluded_uris","a:6:{i:0;s:4:\"p=45\";i:1;s:6:\"/cart/\";i:2;s:4:\"p=46\";i:3;s:10:\"/checkout/\";i:4;s:4:\"p=47\";i:5;s:12:\"/my-account/\";}","yes"),
("274","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("275","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("276","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("277","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("278","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("279","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("280","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("281","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("282","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("283","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("284","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("285","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("286","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("287","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("6762","default_product_cat","22","yes"),
("135","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012868;}","yes"),
("138","widget_akismet_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("141","current_theme","VIFONIC","yes"),
("142","theme_mods_flatsome","a:115:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:6:\"html-5\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"contact\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:1:{i:0;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:7:\"nav-top\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sun, 19 Mar 2017 07:45:36 +0000\";s:18:\"custom_css_post_id\";i:238;s:11:\"topbar_left\";s:0:\"\";s:17:\"nav_position_text\";s:16:\"<p>GIÀY NAM</p>\";s:22:\"topbar_elements_center\";a:1:{i:0;s:6:\"html-4\";}s:21:\"nav_position_text_top\";s:71:\"BHSHOES - WEBSITE BÁN GIÀY NAM TRỰC TUYẾN HÀNG ĐẦU VIỆT NAM\";s:17:\"header_top_height\";s:2:\"30\";s:9:\"topbar_bg\";s:7:\"#F4F4F4\";s:12:\"topbar_color\";s:5:\"light\";s:13:\"nav_style_top\";s:7:\"divided\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:9:\"site_logo\";s:73:\"https://bizhostvn.com/w/shoes/wp-content/uploads/2017/07/BIZHOST-DEMO.png\";s:10:\"logo_width\";s:3:\"206\";s:11:\"topbar_show\";s:1:\"1\";s:13:\"header_height\";s:2:\"91\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(252,252,252,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-y\";s:17:\"box_shadow_header\";s:1:\"1\";s:13:\"nav_uppercase\";s:1:\"1\";s:27:\"header_bg_transparent_shade\";s:1:\"0\";s:15:\"nav_position_bg\";s:7:\"#000000\";s:20:\"nav_uppercase_bottom\";s:1:\"1\";s:18:\"nav_position_color\";s:4:\"dark\";s:13:\"logo_position\";s:4:\"left\";s:20:\"header_bottom_height\";s:2:\"43\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";s:1:\"1\";s:17:\"header_cart_title\";s:1:\"1\";s:17:\"header_cart_style\";s:8:\"dropdown\";s:16:\"html_cart_header\";s:0:\"\";s:15:\"cart_icon_style\";s:4:\"fill\";s:13:\"contact_phone\";s:11:\" 0988512999\";s:13:\"contact_email\";s:17:\"giaytot.gmail.com\";s:17:\"contact_icon_size\";s:4:\"14px\";s:13:\"contact_hours\";s:0:\"\";s:13:\"contact_style\";s:4:\"left\";s:19:\"contact_email_label\";s:0:\"\";s:10:\"nav_height\";s:2:\"90\";s:8:\"nav_push\";s:1:\"0\";s:25:\"header_height_transparent\";s:3:\"265\";s:19:\"header_search_width\";s:2:\"70\";s:17:\"dropdown_nav_size\";s:3:\"100\";s:18:\"search_placeholder\";s:31:\"Nhập từ khóa cần tìm...\";s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:10:\"my_account\";i:12;s:6:\"footer\";i:0;}s:11:\"nav_spacing\";s:5:\"large\";s:16:\"nav_style_bottom\";s:4:\"line\";s:21:\"type_nav_bottom_color\";s:7:\"#FFFFFF\";s:15:\"html_custom_css\";s:352:\".html.custom.html_nav_position_text_top{\n  color: #000;\n}\n.html.custom.html_nav_position_text{\n color: #000; \n}\n.icon-box-text.last-reset{\ncolor: #000;\n}\n.section-title-main{\ncolor: green;\n}\n.icon-star{\ncolor: green;\n}\n.icon-plus{\ncolor: green;\n}\n.icon-angle-right{\ncolor: red;\n}\n.copyright-footer{\npadding-top: 30;\n}\n.icon-inner{\npadding-top: -15px;\n}\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:5:\"large\";s:19:\"header_search_style\";s:8:\"dropdown\";s:24:\"header_search_form_style\";s:0:\"\";s:17:\"search_icon_style\";s:10:\"fill-round\";s:12:\"logo_padding\";s:1:\"0\";s:17:\"mobile_overlay_bg\";s:7:\"#81D742\";s:11:\"blog_layout\";s:12:\"left-sidebar\";s:10:\"blog_style\";s:5:\"3-col\";s:12:\"social_icons\";a:0:{}s:15:\"blog_author_box\";s:1:\"0\";s:10:\"blog_share\";s:1:\"0\";s:13:\"header_sticky\";s:1:\"0\";s:15:\"blog_after_post\";s:4:\"gggg\";s:15:\"blog_post_style\";s:3:\"top\";s:19:\"blog_layout_divider\";s:1:\"0\";s:17:\"blog_show_excerpt\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:16:\"blog_hide_sticky\";s:1:\"1\";s:17:\"portfolio_related\";s:1:\"0\";s:19:\"portfolio_next_prev\";s:1:\"0\";s:16:\"footer_left_text\";s:87:\"<div style=\"padding-top: 15px\">\n<a href=\"#\">Thiết kế web</a> bởi webdesign\n</div>\";s:16:\"footer_1_columns\";s:1:\"4\";s:17:\"footer_1_bg_color\";s:7:\"#000000\";s:14:\"footer_1_color\";s:4:\"dark\";s:17:\"footer_2_bg_color\";s:7:\"#0C0C0C\";s:19:\"footer_bottom_color\";s:7:\"#000000\";s:15:\"dropdown_border\";s:7:\"#FFFFFF\";s:13:\"color_primary\";s:7:\"#DD3333\";s:15:\"color_secondary\";s:7:\"#4CAF50\";s:11:\"color_alert\";s:7:\"#DD3333\";s:11:\"color_links\";s:7:\"#111111\";s:17:\"color_links_hover\";s:7:\"#DD3333\";s:18:\"category_row_count\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:25:\"category_row_count_tablet\";s:1:\"2\";s:15:\"category_shadow\";s:1:\"0\";s:22:\"sale_bubble_percentage\";s:1:\"1\";s:21:\"category_shadow_hover\";s:1:\"0\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("143","theme_switched","","yes"),
("144","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("145","widget_block_widget","a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:5:\"Ha Ha\";s:5:\"block\";s:0:\"\";}}","yes"),
("168","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("175","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1490107449;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("176","woocommerce_default_country","VN","yes"),
("177","woocommerce_allowed_countries","all","yes"),
("178","woocommerce_all_except_countries","","yes"),
("179","woocommerce_specific_allowed_countries","","yes"),
("180","woocommerce_ship_to_countries","","yes"),
("181","woocommerce_specific_ship_to_countries","","yes"),
("182","woocommerce_default_customer_address","geolocation","yes"),
("183","woocommerce_calc_taxes","no","yes"),
("184","woocommerce_demo_store","no","yes"),
("185","woocommerce_demo_store_notice","This is a demo store for testing purposes &mdash; no orders shall be fulfilled.","no"),
("186","woocommerce_currency","VND","yes"),
("187","woocommerce_currency_pos","left","yes"),
("188","woocommerce_price_thousand_sep",",","yes"),
("189","woocommerce_price_decimal_sep",".","yes"),
("190","woocommerce_price_num_decimals","2","yes"),
("191","woocommerce_weight_unit","kg","yes"),
("192","woocommerce_dimension_unit","cm","yes"),
("193","woocommerce_enable_review_rating","yes","yes"),
("194","woocommerce_review_rating_required","yes","no"),
("195","woocommerce_review_rating_verification_label","yes","no"),
("196","woocommerce_review_rating_verification_required","no","no"),
("197","woocommerce_shop_page_id","44","yes"),
("198","woocommerce_shop_page_display","","yes"),
("199","woocommerce_category_archive_display","","yes"),
("200","woocommerce_default_catalog_orderby","menu_order","yes"),
("201","woocommerce_cart_redirect_after_add","no","yes"),
("202","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("203","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}","yes"),
("204","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("205","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}","yes"),
("206","woocommerce_enable_lightbox","yes","yes"),
("207","woocommerce_manage_stock","yes","yes"),
("208","woocommerce_hold_stock_minutes","60","no"),
("209","woocommerce_notify_low_stock","yes","no"),
("210","woocommerce_notify_no_stock","yes","no"),
("211","woocommerce_stock_email_recipient","anhchinh511995@gmail.com","no"),
("212","woocommerce_notify_low_stock_amount","2","no"),
("213","woocommerce_notify_no_stock_amount","0","yes"),
("214","woocommerce_hide_out_of_stock_items","no","yes"),
("215","woocommerce_stock_format","","yes"),
("216","woocommerce_file_download_method","force","no"),
("217","woocommerce_downloads_require_login","no","no"),
("218","woocommerce_downloads_grant_access_after_payment","yes","no"),
("219","woocommerce_prices_include_tax","no","yes"),
("220","woocommerce_tax_based_on","shipping","yes"),
("221","woocommerce_shipping_tax_class","","yes"),
("222","woocommerce_tax_round_at_subtotal","no","yes"),
("223","woocommerce_tax_classes","Reduced Rate\nZero Rate","yes"),
("224","woocommerce_tax_display_shop","excl","yes"),
("225","woocommerce_tax_display_cart","excl","no"),
("226","woocommerce_price_display_suffix","","yes"),
("227","woocommerce_tax_total_display","itemized","no");
INSERT INTO bz_options VALUES
("228","woocommerce_enable_shipping_calc","yes","no"),
("229","woocommerce_shipping_cost_requires_address","no","no"),
("230","woocommerce_ship_to_destination","billing","no"),
("231","woocommerce_enable_coupons","yes","yes"),
("232","woocommerce_calc_discounts_sequentially","no","no"),
("233","woocommerce_enable_guest_checkout","yes","no"),
("234","woocommerce_force_ssl_checkout","no","yes"),
("235","woocommerce_unforce_ssl_checkout","no","yes"),
("236","woocommerce_cart_page_id","45","yes"),
("237","woocommerce_checkout_page_id","46","yes"),
("238","woocommerce_terms_page_id","","no"),
("239","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("240","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("241","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("242","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("243","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("244","woocommerce_myaccount_page_id","47","yes"),
("245","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("246","woocommerce_enable_myaccount_registration","no","no"),
("247","woocommerce_enable_checkout_login_reminder","yes","no"),
("248","woocommerce_registration_generate_username","yes","no"),
("249","woocommerce_registration_generate_password","no","no"),
("250","woocommerce_myaccount_orders_endpoint","orders","yes"),
("251","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("252","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("253","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("254","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("255","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("256","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("257","woocommerce_logout_endpoint","customer-logout","yes"),
("258","woocommerce_email_from_name","shoes","no"),
("259","woocommerce_email_from_address","anhchinh511995@gmail.com","no"),
("260","woocommerce_email_header_image","","no"),
("261","woocommerce_email_footer_text","shoes - Powered by WooCommerce","no"),
("262","woocommerce_email_base_color","#557da1","no"),
("263","woocommerce_email_background_color","#f5f5f5","no"),
("264","woocommerce_email_body_background_color","#fdfdfd","no"),
("265","woocommerce_email_text_color","#505050","no"),
("266","woocommerce_api_enabled","yes","yes"),
("291","woocommerce_meta_box_errors","a:0:{}","yes"),
("270","woocommerce_db_version","2.6.14","yes"),
("6763","woocommerce_version","3.6.2","yes"),
("977","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531252164;}","no"),
("1573","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558013000;s:7:\"checked\";a:1:{s:8:\"flatsome\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1060","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("6676","_transient_timeout_wc_related_145","1558046164","no"),
("6693","db_upgraded","","yes"),
("6705","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558617512","no"),
("6706","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("6745","woocommerce_allow_bulk_remove_personal_data","no","no"),
("6746","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("6747","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("6748","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("6749","woocommerce_trash_pending_orders","","no"),
("6750","woocommerce_trash_failed_orders","","no"),
("6751","woocommerce_trash_cancelled_orders","","no"),
("6752","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("6753","woocommerce_show_marketplace_suggestions","yes","no"),
("6754","woocommerce_single_image_width","600","yes"),
("6755","woocommerce_thumbnail_image_width","300","yes"),
("6756","woocommerce_checkout_highlight_required_fields","yes","yes"),
("6757","_transient_timeout__woocommerce_helper_subscriptions","1558013893","no"),
("6758","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("6759","_transient_timeout__woocommerce_helper_updates","1558056193","no"),
("6760","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558012993;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("6771","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558012997;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.20\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.20.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("6707","_transient_timeout_wc_report_sales_by_date","1558099112","no"),
("6708","_transient_wc_report_sales_by_date","a:7:{s:32:\"bfb42b335747ed181961647f9cbcd426\";a:0:{}s:32:\"d585ab3263b99d0b7992f8c0ac189af6\";a:0:{}s:32:\"eac21d54baaafb92d39aef9fb2cc4cee\";a:0:{}s:32:\"38c4f9f75968095ef7b36fd03d699dd0\";N;s:32:\"38d6a3245faf30c0639a9c45011866a0\";a:0:{}s:32:\"7eb3df42ef4ec2023592fa1d7a8d9a02\";a:0:{}s:32:\"c9f9acdbb275ce175d3f1e3c0b4d6386\";a:0:{}}","no"),
("6709","_transient_timeout_wc_admin_report","1558099112","no"),
("6710","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("6711","_transient_timeout_wc_low_stock_count","1560604712","no"),
("6712","_transient_wc_low_stock_count","0","no"),
("6713","_transient_timeout_wc_outofstock_count","1560604712","no"),
("6714","_transient_wc_outofstock_count","0","no"),
("6715","can_compress_scripts","0","no"),
("6718","_transient_timeout_wc_upgrade_notice_2.6.14","1558099120","no"),
("6719","_transient_wc_upgrade_notice_2.6.14","","no"),
("6736","woocommerce_store_address","","yes"),
("6737","woocommerce_store_address_2","","yes"),
("6738","woocommerce_store_city","","yes"),
("6739","woocommerce_store_postcode","","yes"),
("6740","woocommerce_placeholder_image","269","yes"),
("6741","woocommerce_enable_reviews","yes","yes"),
("6742","woocommerce_shipping_debug_mode","no","yes"),
("6743","woocommerce_erasure_request_removes_order_data","no","no"),
("6744","woocommerce_erasure_request_removes_download_data","no","no"),
("6579","_transient_timeout_wc_shipping_method_count_1_1490107540","1559903000","no"),
("6580","_transient_wc_shipping_method_count_1_1490107540","0","no"),
("6585","recovery_keys","a:0:{}","yes"),
("6575","_transient_timeout_wc_term_counts","1559914460","no"),
("6576","_transient_wc_term_counts","a:2:{i:9;s:1:\"6\";i:8;s:1:\"6\";}","no"),
("2096","dbprefix_old_dbprefix","vf_","yes"),
("2097","dbprefix_new","bz_","yes"),
("1586","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("4049","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4050","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4051","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4052","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4053","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("6691","wp_page_for_privacy_policy","0","yes");
INSERT INTO bz_options VALUES
("6692","show_comments_cookies_opt_in","1","yes"),
("6598","_transient_timeout_wc_products_onsale","1560016130","no"),
("6599","_transient_wc_products_onsale","a:6:{i:0;i:144;i:1;i:145;i:2;i:146;i:3;i:147;i:4;i:148;i:5;i:149;}","no"),
("6677","_transient_wc_related_145","a:5:{i:0;s:3:\"144\";i:1;s:3:\"146\";i:2;s:3:\"147\";i:3;s:3:\"148\";i:4;s:3:\"149\";}","no"),
("6704","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("6724","nsl-version","3.0.20","yes"),
("6725","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("6721","_site_transient_timeout_theme_roots","1558014694","no"),
("6722","_site_transient_theme_roots","a:1:{s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("6729","_transient_timeout_external_ip_address_113.173.5.101","1558617793","no"),
("6730","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("6731","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("6732","current_theme_supports_woocommerce","yes","yes"),
("6733","woocommerce_queue_flush_rewrite_rules","no","yes"),
("6765","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("6716","_transient_timeout_plugin_slugs","1558099268","no"),
("6717","_transient_plugin_slugs","a:10:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:30:\"db-prefix-change/db_prefix.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";i:4;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:5;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:27:\"woosidebars/woosidebars.php\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("44","28","_menu_item_type","custom"),
("45","28","_menu_item_menu_item_parent","0"),
("46","28","_menu_item_object_id","28"),
("47","28","_menu_item_object","custom"),
("48","28","_menu_item_target",""),
("49","28","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("50","28","_menu_item_xfn",""),
("51","28","_menu_item_url","#"),
("52","28","_menu_item_orphaned","1490084063"),
("55","30","_menu_item_type","custom"),
("56","30","_menu_item_menu_item_parent","0"),
("57","30","_menu_item_object_id","30"),
("58","30","_menu_item_object","custom"),
("59","30","_menu_item_target",""),
("60","30","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("61","30","_menu_item_xfn",""),
("62","30","_menu_item_url","#"),
("64","31","_menu_item_type","custom"),
("65","31","_menu_item_menu_item_parent","0"),
("66","31","_menu_item_object_id","31"),
("67","31","_menu_item_object","custom"),
("68","31","_menu_item_target",""),
("69","31","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("70","31","_menu_item_xfn",""),
("71","31","_menu_item_url","#"),
("73","32","_menu_item_type","custom"),
("74","32","_menu_item_menu_item_parent","0"),
("75","32","_menu_item_object_id","32"),
("76","32","_menu_item_object","custom"),
("77","32","_menu_item_target",""),
("78","32","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("79","32","_menu_item_xfn",""),
("80","32","_menu_item_url","#"),
("82","33","_menu_item_type","custom"),
("83","33","_menu_item_menu_item_parent","0"),
("84","33","_menu_item_object_id","33"),
("85","33","_menu_item_object","custom"),
("86","33","_menu_item_target",""),
("87","33","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("88","33","_menu_item_xfn",""),
("89","33","_menu_item_url","#"),
("91","34","_menu_item_type","custom"),
("92","34","_menu_item_menu_item_parent","0"),
("93","34","_menu_item_object_id","34"),
("94","34","_menu_item_object","custom"),
("95","34","_menu_item_target",""),
("96","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("97","34","_menu_item_xfn",""),
("98","34","_menu_item_url","#"),
("100","35","_menu_item_type","custom"),
("101","35","_menu_item_menu_item_parent","0"),
("102","35","_menu_item_object_id","35"),
("103","35","_menu_item_object","custom"),
("104","35","_menu_item_target",""),
("105","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("106","35","_menu_item_xfn",""),
("107","35","_menu_item_url","#"),
("121","43","_form","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]"),
("122","43","_mail","a:8:{s:7:\"subject\";s:22:\"shoes \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <anhchinh511995@gmail.com>\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on shoes (http://localhost/shoes)\";s:9:\"recipient\";s:24:\"anhchinh511995@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("123","43","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"shoes \"[your-subject]\"\";s:6:\"sender\";s:32:\"shoes <anhchinh511995@gmail.com>\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on shoes (http://localhost/shoes)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: anhchinh511995@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("124","43","_messages","a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}"),
("125","43","_additional_settings",""),
("126","43","_locale","en_US"),
("127","49","_menu_item_type","taxonomy"),
("128","49","_menu_item_menu_item_parent","31"),
("129","49","_menu_item_object_id","1"),
("130","49","_menu_item_object","category"),
("131","49","_menu_item_target",""),
("132","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("133","49","_menu_item_xfn",""),
("134","49","_menu_item_url",""),
("176","54","_menu_item_target",""),
("175","54","_menu_item_object","custom"),
("145","51","_menu_item_type","taxonomy"),
("146","51","_menu_item_menu_item_parent","31"),
("147","51","_menu_item_object_id","1"),
("148","51","_menu_item_object","category"),
("149","51","_menu_item_target",""),
("150","51","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("151","51","_menu_item_xfn",""),
("152","51","_menu_item_url",""),
("174","54","_menu_item_object_id","54"),
("173","54","_menu_item_menu_item_parent","0"),
("172","54","_menu_item_type","custom"),
("177","54","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("178","54","_menu_item_xfn",""),
("179","54","_menu_item_url","http://localhost/shoes/my-account/customer-logout/"),
("180","54","_menu_item_orphaned","1490107782"),
("980","192","_menu_item_target",""),
("979","192","_menu_item_object","custom"),
("978","192","_menu_item_object_id","192"),
("977","192","_menu_item_menu_item_parent","0"),
("986","193","_menu_item_menu_item_parent","0"),
("976","192","_menu_item_type","custom"),
("974","191","_menu_item_url","#"),
("973","191","_menu_item_xfn",""),
("972","191","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("971","191","_menu_item_target",""),
("970","191","_menu_item_object","custom"),
("969","191","_menu_item_object_id","191");
INSERT INTO bz_postmeta VALUES
("968","191","_menu_item_menu_item_parent","0"),
("967","191","_menu_item_type","custom"),
("987","193","_menu_item_object_id","193"),
("965","190","_menu_item_url","#"),
("964","190","_menu_item_xfn",""),
("963","190","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("962","190","_menu_item_target",""),
("961","190","_menu_item_object","custom"),
("960","190","_menu_item_object_id","190"),
("959","190","_menu_item_menu_item_parent","0"),
("988","193","_menu_item_object","custom"),
("958","190","_menu_item_type","custom"),
("956","189","_menu_item_url","#"),
("955","189","_menu_item_xfn",""),
("954","189","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("953","189","_menu_item_target",""),
("945","188","_menu_item_url","#"),
("944","188","_menu_item_xfn",""),
("943","188","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("942","188","_menu_item_target",""),
("941","188","_menu_item_object","custom"),
("940","188","_menu_item_object_id","188"),
("939","188","_menu_item_menu_item_parent","0"),
("938","188","_menu_item_type","custom"),
("949","189","_menu_item_type","custom"),
("936","187","_menu_item_url","#"),
("935","187","_menu_item_xfn",""),
("934","187","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("933","187","_menu_item_target",""),
("932","187","_menu_item_object","custom"),
("931","187","_menu_item_object_id","187"),
("930","187","_menu_item_menu_item_parent","0"),
("950","189","_menu_item_menu_item_parent","0"),
("929","187","_menu_item_type","custom"),
("927","186","_menu_item_url","#"),
("926","186","_menu_item_xfn",""),
("925","186","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("924","186","_menu_item_target",""),
("923","186","_menu_item_object","custom"),
("922","186","_menu_item_object_id","186"),
("921","186","_menu_item_menu_item_parent","0"),
("920","186","_menu_item_type","custom"),
("951","189","_menu_item_object_id","189"),
("952","189","_menu_item_object","custom"),
("917","185","_menu_item_xfn",""),
("918","185","_menu_item_url","#"),
("916","185","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("915","185","_menu_item_target",""),
("914","185","_menu_item_object","custom"),
("913","185","_menu_item_object_id","185"),
("911","185","_menu_item_type","custom"),
("912","185","_menu_item_menu_item_parent","0"),
("338","86","_edit_last","1"),
("339","86","_footer","normal"),
("340","86","_wp_page_template","page-blank.php"),
("341","86","_edit_lock","1490696995:1"),
("351","91","_wp_attached_file","2017/03/703a0046.jpg"),
("352","91","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:20:\"2017/03/703a0046.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"703a0046-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"703a0046-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("353","92","_wp_attached_file","2017/03/703a0050.jpg"),
("354","92","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:20:\"2017/03/703a0050.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"703a0050-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"703a0050-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("355","93","_wp_attached_file","2017/03/banner-hang-moi-ve-2.png"),
("356","93","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:467;s:4:\"file\";s:32:\"2017/03/banner-hang-moi-ve-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"banner-hang-moi-ve-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"banner-hang-moi-ve-2-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"banner-hang-moi-ve-2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"banner-hang-moi-ve-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("357","94","_wp_attached_file","2017/03/blouse.jpg"),
("358","94","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2017/03/blouse.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blouse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blouse-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"blouse-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"blouse-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("359","95","_wp_attached_file","2017/03/faded-short-sleeves-tshirt.jpg"),
("360","95","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:38:\"2017/03/faded-short-sleeves-tshirt.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"faded-short-sleeves-tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"faded-short-sleeves-tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"faded-short-sleeves-tshirt-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"faded-short-sleeves-tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("361","96","_wp_attached_file","2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_.jpg"),
("362","96","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:59:\"2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("363","97","_wp_attached_file","2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_.jpg"),
("364","97","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:64:\"2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("365","98","_wp_attached_file","2017/03/giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1.jpg"),
("366","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:82:\"2017/03/giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:82:\"giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:82:\"giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("367","99","_wp_attached_file","2017/03/giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5.jpg"),
("368","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:66:\"2017/03/giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:66:\"giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("369","100","_wp_attached_file","2017/03/giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_.jpg"),
("370","100","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:67:\"2017/03/giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:67:\"giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("371","101","_wp_attached_file","2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1.jpg"),
("372","101","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:69:\"2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:69:\"giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("373","102","_wp_attached_file","2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_.jpg"),
("374","102","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:67:\"2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:67:\"giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("375","103","_wp_attached_file","2017/03/giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_.jpg"),
("376","103","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:71:\"2017/03/giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:71:\"giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("377","104","_wp_attached_file","2017/03/giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_.jpg"),
("378","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:75:\"2017/03/giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:75:\"giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:75:\"giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("379","105","_wp_attached_file","2017/03/giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_.jpg"),
("380","105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:72:\"2017/03/giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:72:\"giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("381","106","_wp_attached_file","2017/03/giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_.jpg"),
("382","106","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:82:\"2017/03/giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:82:\"giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:82:\"giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("383","107","_wp_attached_file","2017/03/giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4.jpg"),
("384","107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:60:\"2017/03/giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("385","108","_wp_attached_file","2017/03/giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5.jpg"),
("386","108","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:66:\"2017/03/giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:66:\"giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("387","109","_wp_attached_file","2017/03/giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4.jpg"),
("388","109","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:58:\"2017/03/giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("389","110","_wp_attached_file","2017/03/giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_.jpg"),
("390","110","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:81:\"2017/03/giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:81:\"giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("391","111","_wp_attached_file","2017/03/giay-luoi-nam-vai-bo-mau-ghi-hm-123_5.jpg"),
("392","111","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:49:\"2017/03/giay-luoi-nam-vai-bo-mau-ghi-hm-123_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"giay-luoi-nam-vai-bo-mau-ghi-hm-123_5-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"giay-luoi-nam-vai-bo-mau-ghi-hm-123_5-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("393","112","_wp_attached_file","2017/03/giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_.jpg"),
("394","112","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:61:\"2017/03/giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("395","113","_wp_attached_file","2017/03/giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_.jpg"),
("396","113","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:78:\"2017/03/giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("397","114","_wp_attached_file","2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_.jpg"),
("398","114","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:80:\"2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:80:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:80:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("399","115","_wp_attached_file","2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_.jpg"),
("400","115","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:78:\"2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("401","116","_wp_attached_file","2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_.jpg"),
("402","116","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:78:\"2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:78:\"giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("403","117","_wp_attached_file","2017/03/giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_.jpg"),
("404","117","_wp_attachment_metadata","a:5:{s:5:\"width\";i:218;s:6:\"height\";i:144;s:4:\"file\";s:63:\"2017/03/giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:63:\"giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_-180x144.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("405","118","_wp_attached_file","2017/03/giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_.jpg"),
("406","118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:54:\"2017/03/giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("407","119","_wp_attached_file","2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5.jpg"),
("408","119","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:64:\"2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("409","120","_wp_attached_file","2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5.jpg"),
("410","120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:64:\"2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("411","121","_wp_attached_file","2017/03/giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_.jpg"),
("412","121","_wp_attachment_metadata","a:5:{s:5:\"width\";i:238;s:6:\"height\";i:158;s:4:\"file\";s:64:\"2017/03/giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_-180x158.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("413","122","_wp_attached_file","2017/03/printed-dress.jpg"),
("414","122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:25:\"2017/03/printed-dress.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"printed-dress-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"printed-dress-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"printed-dress-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"printed-dress-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("415","123","_wp_attached_file","2017/03/theme-shoes-buoc-day.png"),
("416","123","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:32:\"2017/03/theme-shoes-buoc-day.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"theme-shoes-buoc-day-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"theme-shoes-buoc-day-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"theme-shoes-buoc-day-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"theme-shoes-buoc-day-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("417","124","_wp_attached_file","2017/03/theme-shoes-cao-cap.png"),
("418","124","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:31:\"2017/03/theme-shoes-cao-cap.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cao-cap-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cao-cap-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cao-cap-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cao-cap-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("419","125","_wp_attached_file","2017/03/theme-shoes-cao-co.png"),
("420","125","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:467;s:4:\"file\";s:30:\"2017/03/theme-shoes-cao-co.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"theme-shoes-cao-co-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"theme-shoes-cao-co-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"theme-shoes-cao-co-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"theme-shoes-cao-co-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","126","_wp_attached_file","2017/03/theme-shoes-cong-so.png"),
("422","126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:31:\"2017/03/theme-shoes-cong-so.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cong-so-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cong-so-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cong-so-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"theme-shoes-cong-so-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("423","127","_wp_attached_file","2017/03/theme-shoes-cuoi.png"),
("424","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:28:\"2017/03/theme-shoes-cuoi.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"theme-shoes-cuoi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"theme-shoes-cuoi-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"theme-shoes-cuoi-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"theme-shoes-cuoi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("425","128","_wp_attached_file","2017/03/theme-shoes-da.png"),
("426","128","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:26:\"2017/03/theme-shoes-da.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"theme-shoes-da-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"theme-shoes-da-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"theme-shoes-da-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"theme-shoes-da-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("427","129","_wp_attached_file","2017/03/theme-shoes-da-lon.png"),
("428","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:467;s:4:\"file\";s:30:\"2017/03/theme-shoes-da-lon.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"theme-shoes-da-lon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"theme-shoes-da-lon-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"theme-shoes-da-lon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"theme-shoes-da-lon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("429","130","_wp_attached_file","2017/03/theme-shoes-luoi.png"),
("430","130","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:28:\"2017/03/theme-shoes-luoi.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"theme-shoes-luoi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"theme-shoes-luoi-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"theme-shoes-luoi-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"theme-shoes-luoi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("431","131","_wp_attached_file","2017/03/theme-shoes-tay.png"),
("432","131","_wp_attachment_metadata","a:5:{s:5:\"width\";i:568;s:6:\"height\";i:469;s:4:\"file\";s:27:\"2017/03/theme-shoes-tay.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"theme-shoes-tay-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"theme-shoes-tay-300x248.png\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"theme-shoes-tay-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"theme-shoes-tay-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("433","86","_thumbnail_id",""),
("441","138","_edit_last","1"),
("442","138","_edit_lock","1490193655:1"),
("443","138","_visibility","visible"),
("444","138","_stock_status","instock"),
("445","138","_thumbnail_id","109"),
("446","138","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("447","138","total_sales","0"),
("448","138","_downloadable","no"),
("449","138","_virtual","no"),
("450","138","_purchase_note",""),
("451","138","_featured","no"),
("452","138","_weight",""),
("453","138","_length",""),
("454","138","_width",""),
("455","138","_height",""),
("456","138","_sku",""),
("457","138","_product_attributes","a:0:{}"),
("458","138","_regular_price","1.800.000"),
("459","138","_sale_price",""),
("460","138","_sale_price_dates_from",""),
("461","138","_sale_price_dates_to",""),
("462","138","_price","1.800.000"),
("463","138","_sold_individually",""),
("464","138","_manage_stock","no"),
("465","138","_backorders","no"),
("466","138","_stock",""),
("467","138","_upsell_ids","a:0:{}"),
("468","138","_crosssell_ids","a:0:{}"),
("469","138","_product_version","2.6.14"),
("470","138","_product_image_gallery",""),
("471","139","_edit_last","1"),
("472","139","_edit_lock","1490193847:1"),
("473","139","_visibility","visible"),
("474","139","_stock_status","instock"),
("475","139","_thumbnail_id","110"),
("476","139","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("477","139","total_sales","0"),
("478","139","_downloadable","no"),
("479","139","_virtual","no"),
("480","139","_purchase_note",""),
("481","139","_featured","no"),
("482","139","_weight",""),
("483","139","_length",""),
("484","139","_width",""),
("485","139","_height",""),
("486","139","_sku",""),
("487","139","_product_attributes","a:0:{}"),
("488","139","_regular_price","899.000"),
("489","139","_sale_price",""),
("490","139","_sale_price_dates_from",""),
("491","139","_sale_price_dates_to",""),
("492","139","_price","899.000"),
("493","139","_sold_individually",""),
("494","139","_manage_stock","no"),
("495","139","_backorders","no"),
("496","139","_stock",""),
("497","139","_upsell_ids","a:0:{}"),
("498","139","_crosssell_ids","a:0:{}"),
("499","139","_product_version","2.6.14"),
("500","139","_product_image_gallery",""),
("501","140","_edit_last","1");
INSERT INTO bz_postmeta VALUES
("502","140","_visibility","visible"),
("503","140","_stock_status","instock"),
("504","140","_thumbnail_id","105"),
("505","140","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("506","140","total_sales","0"),
("507","140","_downloadable","no"),
("508","140","_virtual","no"),
("509","140","_purchase_note",""),
("510","140","_featured","no"),
("511","140","_weight",""),
("512","140","_length",""),
("513","140","_width",""),
("514","140","_height",""),
("515","140","_sku",""),
("516","140","_product_attributes","a:0:{}"),
("517","140","_regular_price","1.200.000"),
("518","140","_sale_price",""),
("519","140","_sale_price_dates_from",""),
("520","140","_sale_price_dates_to",""),
("521","140","_price","1.200.000"),
("522","140","_sold_individually",""),
("523","140","_manage_stock","no"),
("524","140","_backorders","no"),
("525","140","_stock",""),
("526","140","_upsell_ids","a:0:{}"),
("527","140","_crosssell_ids","a:0:{}"),
("528","140","_product_version","2.6.14"),
("529","140","_product_image_gallery",""),
("530","140","_edit_lock","1490193901:1"),
("531","141","_edit_last","1"),
("532","141","_visibility","visible"),
("533","141","_stock_status","instock"),
("534","141","_thumbnail_id","107"),
("535","141","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("536","141","total_sales","0"),
("537","141","_downloadable","no"),
("538","141","_virtual","no"),
("539","141","_purchase_note",""),
("540","141","_featured","no"),
("541","141","_weight",""),
("542","141","_length",""),
("543","141","_width",""),
("544","141","_height",""),
("545","141","_sku",""),
("546","141","_product_attributes","a:0:{}"),
("547","141","_regular_price","1.100.000"),
("548","141","_sale_price",""),
("549","141","_sale_price_dates_from",""),
("550","141","_sale_price_dates_to",""),
("551","141","_price","1.100.000"),
("552","141","_sold_individually",""),
("553","141","_manage_stock","no"),
("554","141","_backorders","no"),
("555","141","_stock",""),
("556","141","_upsell_ids","a:0:{}"),
("557","141","_crosssell_ids","a:0:{}"),
("558","141","_product_version","2.6.14"),
("559","141","_product_image_gallery",""),
("560","141","_edit_lock","1490193945:1"),
("561","142","_edit_last","1"),
("562","142","_edit_lock","1490193992:1"),
("563","142","_visibility","visible"),
("564","142","_stock_status","instock"),
("565","142","_thumbnail_id","97"),
("566","142","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("567","142","total_sales","0"),
("568","142","_downloadable","no"),
("569","142","_virtual","no"),
("570","142","_purchase_note",""),
("571","142","_featured","no"),
("572","142","_weight",""),
("573","142","_length",""),
("574","142","_width",""),
("575","142","_height",""),
("576","142","_sku",""),
("577","142","_product_attributes","a:0:{}"),
("578","142","_regular_price","1.500.000"),
("579","142","_sale_price",""),
("580","142","_sale_price_dates_from",""),
("581","142","_sale_price_dates_to",""),
("582","142","_price","1.500.000"),
("583","142","_sold_individually",""),
("584","142","_manage_stock","no"),
("585","142","_backorders","no"),
("586","142","_stock",""),
("587","142","_upsell_ids","a:0:{}"),
("588","142","_crosssell_ids","a:0:{}"),
("589","142","_product_version","2.6.14"),
("590","142","_product_image_gallery",""),
("591","143","_edit_last","1"),
("592","143","_edit_lock","1490194054:1"),
("593","143","_visibility","visible"),
("594","143","_stock_status","instock"),
("595","143","_thumbnail_id","118"),
("596","143","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("597","143","total_sales","0"),
("598","143","_downloadable","no"),
("599","143","_virtual","no"),
("600","143","_purchase_note",""),
("601","143","_featured","no");
INSERT INTO bz_postmeta VALUES
("602","143","_weight",""),
("603","143","_length",""),
("604","143","_width",""),
("605","143","_height",""),
("606","143","_sku",""),
("607","143","_product_attributes","a:0:{}"),
("608","143","_regular_price","1.400.000"),
("609","143","_sale_price",""),
("610","143","_sale_price_dates_from",""),
("611","143","_sale_price_dates_to",""),
("612","143","_price","1.400.000"),
("613","143","_sold_individually",""),
("614","143","_manage_stock","no"),
("615","143","_backorders","no"),
("616","143","_stock",""),
("617","143","_upsell_ids","a:0:{}"),
("618","143","_crosssell_ids","a:0:{}"),
("619","143","_product_version","2.6.14"),
("620","143","_product_image_gallery",""),
("621","144","_edit_last","1"),
("622","144","_edit_lock","1490194125:1"),
("623","144","_visibility","visible"),
("624","144","_stock_status","instock"),
("625","144","_thumbnail_id","120"),
("626","144","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("627","144","total_sales","0"),
("628","144","_downloadable","no"),
("629","144","_virtual","no"),
("630","144","_purchase_note",""),
("631","144","_featured","no"),
("632","144","_weight",""),
("633","144","_length",""),
("634","144","_width",""),
("635","144","_height",""),
("636","144","_sku",""),
("637","144","_product_attributes","a:0:{}"),
("638","144","_regular_price","750.000"),
("639","144","_sale_price","650.000"),
("640","144","_sale_price_dates_from",""),
("641","144","_sale_price_dates_to",""),
("642","144","_price","650.000"),
("643","144","_sold_individually",""),
("644","144","_manage_stock","no"),
("645","144","_backorders","no"),
("646","144","_stock",""),
("647","144","_upsell_ids","a:0:{}"),
("648","144","_crosssell_ids","a:0:{}"),
("649","144","_product_version","2.6.14"),
("650","144","_product_image_gallery",""),
("651","145","_edit_last","1"),
("652","145","_edit_lock","1490194182:1"),
("653","145","_visibility","visible"),
("654","145","_stock_status","instock"),
("655","145","_thumbnail_id","107"),
("656","145","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("657","145","total_sales","0"),
("658","145","_downloadable","no"),
("659","145","_virtual","no"),
("660","145","_purchase_note",""),
("661","145","_featured","no"),
("662","145","_weight",""),
("663","145","_length",""),
("664","145","_width",""),
("665","145","_height",""),
("666","145","_sku",""),
("667","145","_product_attributes","a:0:{}"),
("668","145","_regular_price","800.000"),
("669","145","_sale_price","700.000"),
("670","145","_sale_price_dates_from",""),
("671","145","_sale_price_dates_to",""),
("672","145","_price","700.000"),
("673","145","_sold_individually",""),
("674","145","_manage_stock","no"),
("675","145","_backorders","no"),
("676","145","_stock",""),
("677","145","_upsell_ids","a:0:{}"),
("678","145","_crosssell_ids","a:0:{}"),
("679","145","_product_version","2.6.14"),
("680","145","_product_image_gallery",""),
("681","146","_edit_last","1"),
("682","146","_visibility","visible"),
("683","146","_stock_status","instock"),
("684","146","_thumbnail_id","109"),
("685","146","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("686","146","total_sales","0"),
("687","146","_downloadable","no"),
("688","146","_virtual","no"),
("689","146","_purchase_note",""),
("690","146","_featured","no"),
("691","146","_weight",""),
("692","146","_length",""),
("693","146","_width",""),
("694","146","_height",""),
("695","146","_sku",""),
("696","146","_product_attributes","a:0:{}"),
("697","146","_regular_price","799.000"),
("698","146","_sale_price","719.000"),
("699","146","_sale_price_dates_from",""),
("700","146","_sale_price_dates_to",""),
("701","146","_price","719.000");
INSERT INTO bz_postmeta VALUES
("702","146","_sold_individually",""),
("703","146","_manage_stock","no"),
("704","146","_backorders","no"),
("705","146","_stock",""),
("706","146","_upsell_ids","a:0:{}"),
("707","146","_crosssell_ids","a:0:{}"),
("708","146","_product_version","2.6.14"),
("709","146","_product_image_gallery",""),
("710","146","_edit_lock","1490194253:1"),
("711","147","_edit_last","1"),
("712","147","_visibility","visible"),
("713","147","_stock_status","instock"),
("714","147","_thumbnail_id","111"),
("715","147","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("716","147","total_sales","0"),
("717","147","_downloadable","no"),
("718","147","_virtual","no"),
("719","147","_purchase_note",""),
("720","147","_featured","no"),
("721","147","_weight",""),
("722","147","_length",""),
("723","147","_width",""),
("724","147","_height",""),
("725","147","_sku",""),
("726","147","_product_attributes","a:0:{}"),
("727","147","_regular_price","499.000"),
("728","147","_sale_price","419.000"),
("729","147","_sale_price_dates_from",""),
("730","147","_sale_price_dates_to",""),
("731","147","_price","419.000"),
("732","147","_sold_individually",""),
("733","147","_manage_stock","no"),
("734","147","_backorders","no"),
("735","147","_stock",""),
("736","147","_upsell_ids","a:0:{}"),
("737","147","_crosssell_ids","a:0:{}"),
("738","147","_product_version","2.6.14"),
("739","147","_product_image_gallery",""),
("740","147","_edit_lock","1490194285:1"),
("741","148","_edit_last","1"),
("742","148","_edit_lock","1490194327:1"),
("743","148","_visibility","visible"),
("744","148","_stock_status","instock"),
("745","148","_thumbnail_id","112"),
("746","148","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("747","148","total_sales","0"),
("748","148","_downloadable","no"),
("749","148","_virtual","no"),
("750","148","_purchase_note",""),
("751","148","_featured","no"),
("752","148","_weight",""),
("753","148","_length",""),
("754","148","_width",""),
("755","148","_height",""),
("756","148","_sku",""),
("757","148","_product_attributes","a:0:{}"),
("758","148","_regular_price","599.000"),
("759","148","_sale_price","455.000"),
("760","148","_sale_price_dates_from",""),
("761","148","_sale_price_dates_to",""),
("762","148","_price","455.000"),
("763","148","_sold_individually",""),
("764","148","_manage_stock","no"),
("765","148","_backorders","no"),
("766","148","_stock",""),
("767","148","_upsell_ids","a:0:{}"),
("768","148","_crosssell_ids","a:0:{}"),
("769","148","_product_version","2.6.14"),
("770","148","_product_image_gallery",""),
("771","149","_edit_last","1"),
("772","149","_edit_lock","1490194972:1"),
("773","149","_visibility","visible"),
("774","149","_stock_status","instock"),
("775","149","_thumbnail_id","108"),
("776","149","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("777","149","total_sales","0"),
("778","149","_downloadable","no"),
("779","149","_virtual","no"),
("780","149","_purchase_note",""),
("781","149","_featured","no"),
("782","149","_weight",""),
("783","149","_length",""),
("784","149","_width",""),
("785","149","_height",""),
("786","149","_sku",""),
("787","149","_product_attributes","a:0:{}"),
("788","149","_regular_price","650.000"),
("789","149","_sale_price","599.000"),
("790","149","_sale_price_dates_from",""),
("791","149","_sale_price_dates_to",""),
("792","149","_price","599.000"),
("793","149","_sold_individually",""),
("794","149","_manage_stock","no"),
("795","149","_backorders","no"),
("796","149","_stock",""),
("797","149","_upsell_ids","a:0:{}"),
("798","149","_crosssell_ids","a:0:{}"),
("799","149","_product_version","2.6.14"),
("800","149","_product_image_gallery",""),
("801","138","_wc_rating_count","a:0:{}");
INSERT INTO bz_postmeta VALUES
("802","138","_wc_average_rating","0"),
("803","139","_wc_rating_count","a:0:{}"),
("804","139","_wc_average_rating","0"),
("805","140","_wc_rating_count","a:0:{}"),
("806","140","_wc_average_rating","0"),
("807","141","_wc_rating_count","a:0:{}"),
("808","141","_wc_average_rating","0"),
("809","142","_wc_rating_count","a:0:{}"),
("810","142","_wc_average_rating","0"),
("811","143","_wc_rating_count","a:0:{}"),
("812","143","_wc_average_rating","0"),
("813","144","_wc_rating_count","a:0:{}"),
("814","144","_wc_average_rating","0"),
("815","145","_wc_rating_count","a:0:{}"),
("816","145","_wc_average_rating","0"),
("817","146","_wc_rating_count","a:0:{}"),
("818","146","_wc_average_rating","0"),
("819","147","_wc_rating_count","a:0:{}"),
("820","147","_wc_average_rating","0"),
("821","148","_wc_rating_count","a:0:{}"),
("822","148","_wc_average_rating","0"),
("823","149","_wc_rating_count","a:0:{}"),
("824","149","_wc_average_rating","0"),
("827","143","_wc_review_count","0"),
("828","158","_wp_attached_file","2017/03/dmsp0001.jpg"),
("829","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:564;s:6:\"height\";i:846;s:4:\"file\";s:20:\"2017/03/dmsp0001.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dmsp0001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dmsp0001-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"dmsp0001-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"dmsp0001-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"dmsp0001-564x600.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("834","164","_wp_attached_file","2017/03/gocdanong.jpg"),
("835","164","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:510;s:4:\"file\";s:21:\"2017/03/gocdanong.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gocdanong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"gocdanong-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gocdanong-768x490.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"gocdanong-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"gocdanong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"gocdanong-600x510.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("836","165","_wp_attached_file","2017/03/bag.jpg"),
("837","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:314;s:6:\"height\";i:314;s:4:\"file\";s:15:\"2017/03/bag.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bag-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bag-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bag-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"bag-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("838","166","_wp_attached_file","2017/03/dmsp04.jpg"),
("839","166","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:750;s:4:\"file\";s:18:\"2017/03/dmsp04.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"dmsp04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"dmsp04-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"dmsp04-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"dmsp04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"dmsp04-500x600.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("840","167","_wp_attached_file","2017/03/jacket.jpg"),
("841","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:314;s:6:\"height\";i:314;s:4:\"file\";s:18:\"2017/03/jacket.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"jacket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"jacket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"jacket-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"jacket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("842","168","_wp_attached_file","2017/03/leather-for-men.jpg"),
("843","168","_wp_attachment_metadata","a:5:{s:5:\"width\";i:470;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2017/03/leather-for-men.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"leather-for-men-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"leather-for-men-235x300.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"leather-for-men-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"leather-for-men-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"leather-for-men-470x600.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("848","176","_menu_item_type","taxonomy"),
("849","176","_menu_item_menu_item_parent","31"),
("850","176","_menu_item_object_id","1"),
("851","176","_menu_item_object","category"),
("852","176","_menu_item_target",""),
("853","176","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("854","176","_menu_item_xfn",""),
("855","176","_menu_item_url",""),
("857","177","_menu_item_type","taxonomy"),
("858","177","_menu_item_menu_item_parent","31"),
("859","177","_menu_item_object_id","1"),
("860","177","_menu_item_object","category"),
("861","177","_menu_item_target",""),
("862","177","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("863","177","_menu_item_xfn",""),
("864","177","_menu_item_url",""),
("981","192","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("866","178","_menu_item_type","taxonomy"),
("867","178","_menu_item_menu_item_parent","30"),
("868","178","_menu_item_object_id","1"),
("869","178","_menu_item_object","category"),
("870","178","_menu_item_target",""),
("871","178","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("872","178","_menu_item_xfn",""),
("873","178","_menu_item_url",""),
("990","193","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("875","179","_menu_item_type","taxonomy"),
("876","179","_menu_item_menu_item_parent","30"),
("877","179","_menu_item_object_id","1"),
("878","179","_menu_item_object","category"),
("879","179","_menu_item_target",""),
("880","179","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("881","179","_menu_item_xfn",""),
("882","179","_menu_item_url",""),
("989","193","_menu_item_target",""),
("884","180","_menu_item_type","taxonomy"),
("885","180","_menu_item_menu_item_parent","30"),
("886","180","_menu_item_object_id","1"),
("887","180","_menu_item_object","category"),
("888","180","_menu_item_target",""),
("889","180","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("890","180","_menu_item_xfn",""),
("891","180","_menu_item_url",""),
("985","193","_menu_item_type","custom"),
("893","181","_menu_item_type","taxonomy"),
("894","181","_menu_item_menu_item_parent","30"),
("895","181","_menu_item_object_id","1"),
("896","181","_menu_item_object","category"),
("897","181","_menu_item_target",""),
("898","181","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("899","181","_menu_item_xfn",""),
("900","181","_menu_item_url",""),
("983","192","_menu_item_url","#"),
("902","182","_menu_item_type","taxonomy"),
("903","182","_menu_item_menu_item_parent","30"),
("904","182","_menu_item_object_id","1"),
("905","182","_menu_item_object","category"),
("906","182","_menu_item_target",""),
("907","182","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("908","182","_menu_item_xfn",""),
("909","182","_menu_item_url",""),
("982","192","_menu_item_xfn",""),
("991","193","_menu_item_xfn",""),
("992","193","_menu_item_url","#");
INSERT INTO bz_postmeta VALUES
("994","194","_menu_item_type","custom"),
("995","194","_menu_item_menu_item_parent","0"),
("996","194","_menu_item_object_id","194"),
("997","194","_menu_item_object","custom"),
("998","194","_menu_item_target",""),
("999","194","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1000","194","_menu_item_xfn",""),
("1001","194","_menu_item_url","#"),
("1003","195","_menu_item_type","custom"),
("1004","195","_menu_item_menu_item_parent","0"),
("1005","195","_menu_item_object_id","195"),
("1006","195","_menu_item_object","custom"),
("1007","195","_menu_item_target",""),
("1008","195","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1009","195","_menu_item_xfn",""),
("1010","195","_menu_item_url","#"),
("1012","196","_menu_item_type","custom"),
("1013","196","_menu_item_menu_item_parent","0"),
("1014","196","_menu_item_object_id","196"),
("1015","196","_menu_item_object","custom"),
("1016","196","_menu_item_target",""),
("1017","196","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1018","196","_menu_item_xfn",""),
("1019","196","_menu_item_url","#"),
("1031","203","_edit_last","1"),
("1032","203","_edit_lock","1490206965:1"),
("1033","203","_thumbnail_id","168"),
("1037","205","_edit_lock","1490207075:1"),
("1036","205","_edit_last","1"),
("1038","205","_thumbnail_id","166"),
("1042","207","_thumbnail_id","131"),
("1041","207","_edit_last","1"),
("1047","209","_edit_lock","1490207729:1"),
("1046","209","_edit_last","1"),
("1045","207","_edit_lock","1490207134:1"),
("1048","210","_wp_attached_file","2017/03/vi-da-1.jpg"),
("1049","210","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:19:\"2017/03/vi-da-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"vi-da-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"vi-da-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"vi-da-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"vi-da-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"vi-da-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"vi-da-1-600x533.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1050","209","_thumbnail_id","210"),
("1069","223","_wp_attached_file","2017/03/phone.png"),
("1070","223","_wp_attachment_metadata","a:5:{s:5:\"width\";i:22;s:6:\"height\";i:22;s:4:\"file\";s:17:\"2017/03/phone.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1071","224","_wp_attached_file","2017/03/setting.png"),
("1072","224","_wp_attachment_metadata","a:5:{s:5:\"width\";i:25;s:6:\"height\";i:26;s:4:\"file\";s:19:\"2017/03/setting.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1073","225","_wp_attached_file","2017/03/xgiaytot1.png.pagespeed.ic_.4quoIjkMYS.png"),
("1074","225","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:29;s:4:\"file\";s:50:\"2017/03/xgiaytot1.png.pagespeed.ic_.4quoIjkMYS.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1075","226","_wp_attached_file","2017/03/dt.png"),
("1076","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:34;s:6:\"height\";i:28;s:4:\"file\";s:14:\"2017/03/dt.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1077","228","_wp_attached_file","2017/03/delivery-truck.png"),
("1078","228","_wp_attachment_metadata","a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:26:\"2017/03/delivery-truck.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1079","229","_wp_attached_file","2017/03/redo-circular-arrow.png"),
("1080","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:31:\"2017/03/redo-circular-arrow.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1081","230","_wp_attached_file","2017/03/tools-cross-settings-symbol-for-interface.png"),
("1082","230","_wp_attachment_metadata","a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:53:\"2017/03/tools-cross-settings-symbol-for-interface.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1089","138","_wc_review_count","0"),
("1096","246","_wp_attached_file","2017/03/shoe.jpg"),
("1097","246","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2017/03/shoe.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"shoe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"shoe-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"shoe-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"shoe-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"shoe-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"shoe-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"shoe-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1098","247","_wp_attached_file","2017/03/man-and-shoe.jpg"),
("1099","247","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:24:\"2017/03/man-and-shoe.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"man-and-shoe-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"man-and-shoe-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1100","141","_wc_review_count","0"),
("1101","147","_wc_review_count","0"),
("1102","144","_wc_review_count","0"),
("1103","146","_wc_review_count","0"),
("1104","145","_wc_review_count","0"),
("1105","148","_wc_review_count","0"),
("1106","149","_wc_review_count","0"),
("1107","139","_wc_review_count","0"),
("1108","140","_wc_review_count","0"),
("1109","142","_wc_review_count","0"),
("1112","256","_wp_attached_file","2017/07/1.png"),
("1113","256","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:75;s:4:\"file\";s:13:\"2017/07/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:12:\"1-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1118","259","_wp_attached_file","2017/07/BIZHOST-DEMO.png"),
("1119","259","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/07/BIZHOST-DEMO.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1128","269","_wp_attached_file","woocommerce-placeholder.png"),
("1129","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("28","1","2017-03-21 08:14:23","0000-00-00 00:00:00","","","","draft","closed","closed","","","","","2017-03-21 08:14:23","0000-00-00 00:00:00","","0","http://localhost/shoes/?p=28","1","nav_menu_item","","0"),
("30","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","DANH MỤC","","publish","closed","closed","","danh-muc","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=30","1","nav_menu_item","","0"),
("31","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","THƯƠNG HIỆU","","publish","closed","closed","","thuong-hieu","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=31","7","nav_menu_item","","0"),
("32","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","BÁN CHẠY NHẤT","","publish","closed","closed","","ban-chay-nhat","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=32","12","nav_menu_item","","0"),
("33","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","KHUYẾN MẠI","","publish","closed","closed","","khuyen-mai","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=33","13","nav_menu_item","","0"),
("34","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","NHƯỢNG QUYỀN","","publish","closed","closed","","nhuong-quyen","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=34","14","nav_menu_item","","0"),
("35","1","2017-03-21 08:41:49","2017-03-21 08:41:49","","GÓC ĐÀN ÔNG","","publish","closed","closed","","goc-dan-ong","","","2017-03-22 17:23:26","2017-03-22 17:23:26","","0","http://localhost/shoes/?p=35","15","nav_menu_item","","0"),
("43","1","2017-03-21 14:44:09","2017-03-21 14:44:09","<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nshoes \"[your-subject]\"\n[your-name] <anhchinh511995@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on shoes (http://localhost/shoes)\nanhchinh511995@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nshoes \"[your-subject]\"\nshoes <anhchinh511995@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on shoes (http://localhost/shoes)\n[your-email]\nReply-To: anhchinh511995@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.","Contact form 1","","publish","closed","closed","","contact-form-1","","","2017-03-21 14:44:09","2017-03-21 14:44:09","","0","http://localhost/shoes/?post_type=wpcf7_contact_form&p=43","0","wpcf7_contact_form","","0"),
("45","1","2017-03-21 14:44:44","2017-03-21 14:44:44","[woocommerce_cart]","Cart","","publish","closed","closed","","cart","","","2017-03-21 14:44:44","2017-03-21 14:44:44","","0","http://localhost/shoes/cart/","0","page","","0"),
("49","1","2017-03-21 14:48:05","2017-03-21 14:48:05","","Giày Zatoli","","publish","closed","closed","","49","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=49","8","nav_menu_item","","0"),
("51","1","2017-03-21 14:48:05","2017-03-21 14:48:05","","Giày Sanvado","","publish","closed","closed","","51","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=51","9","nav_menu_item","","0"),
("54","1","2017-03-21 14:49:42","0000-00-00 00:00:00","","customer-logout","","draft","closed","closed","","","","","2017-03-21 14:49:42","0000-00-00 00:00:00","","0","http://localhost/shoes/?p=54","1","nav_menu_item","","0"),
("183","1","2017-03-22 16:47:29","2017-03-22 16:47:29","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:47:29","2017-03-22 16:47:29","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("86","1","2017-03-22 12:04:01","2017-03-22 12:04:01","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"247\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"246\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"131\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns__md=\"1\" badge_style=\"square\" excerpt_length=\"20\" image_height=\"60%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-03-28 10:04:40","2017-03-28 10:04:40","","0","http://localhost/shoes/?page_id=86","0","page","","0"),
("87","1","2017-03-22 12:04:01","2017-03-22 12:04:01","","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:04:01","2017-03-22 12:04:01","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("91","1","2017-03-22 12:07:02","2017-03-22 12:07:02","","703a0046","","inherit","open","closed","","703a0046","","","2017-03-22 12:07:02","2017-03-22 12:07:02","","0","http://localhost/shoes/wp-content/uploads/2017/03/703a0046.jpg","0","attachment","image/jpeg","0"),
("92","1","2017-03-22 12:07:03","2017-03-22 12:07:03","","703a0050","","inherit","open","closed","","703a0050","","","2017-03-22 12:07:03","2017-03-22 12:07:03","","0","http://localhost/shoes/wp-content/uploads/2017/03/703a0050.jpg","0","attachment","image/jpeg","0"),
("93","1","2017-03-22 12:07:03","2017-03-22 12:07:03","","banner-hang-moi-ve-2","","inherit","open","closed","","banner-hang-moi-ve-2","","","2017-03-22 12:07:03","2017-03-22 12:07:03","","0","http://localhost/shoes/wp-content/uploads/2017/03/banner-hang-moi-ve-2.png","0","attachment","image/png","0"),
("94","1","2017-03-22 12:07:04","2017-03-22 12:07:04","","blouse","","inherit","open","closed","","blouse","","","2017-03-22 12:07:04","2017-03-22 12:07:04","","0","http://localhost/shoes/wp-content/uploads/2017/03/blouse.jpg","0","attachment","image/jpeg","0"),
("95","1","2017-03-22 12:07:05","2017-03-22 12:07:05","","faded-short-sleeves-tshirt","","inherit","open","closed","","faded-short-sleeves-tshirt","","","2017-03-22 12:07:05","2017-03-22 12:07:05","","0","http://localhost/shoes/wp-content/uploads/2017/03/faded-short-sleeves-tshirt.jpg","0","attachment","image/jpeg","0"),
("96","1","2017-03-22 12:07:06","2017-03-22 12:07:06","","giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_","","inherit","open","closed","","giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_","","","2017-03-22 12:07:06","2017-03-22 12:07:06","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-ask-962_6_.jpg","0","attachment","image/jpeg","0"),
("97","1","2017-03-22 12:07:07","2017-03-22 12:07:07","","giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_","","inherit","open","closed","","giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_","","","2017-03-22 12:07:07","2017-03-22 12:07:07","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-buoc-day-co-lung-da-dau-mau-cam-nhat-ask-962_6_.jpg","0","attachment","image/jpeg","0"),
("98","1","2017-03-22 12:07:08","2017-03-22 12:07:08","","giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1","","inherit","open","closed","","giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1","","","2017-03-22 12:07:08","2017-03-22 12:07:08","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-cong-so-buoc-day-james-blanc-da-tron-vien-noi-mau-den-jb-692_4__1.jpg","0","attachment","image/jpeg","0"),
("99","1","2017-03-22 12:07:09","2017-03-22 12:07:09","","giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5","","inherit","open","closed","","giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5","","","2017-03-22 12:07:09","2017-03-22 12:07:09","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51_5.jpg","0","attachment","image/jpeg","0"),
("100","1","2017-03-22 12:07:10","2017-03-22 12:07:10","","giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_","","inherit","open","closed","","giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_","","","2017-03-22 12:07:10","2017-03-22 12:07:10","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-cong-so-james-blanc-da-bong-mau-den-jb-006_3_.jpg","0","attachment","image/jpeg","0"),
("101","1","2017-03-22 12:07:12","2017-03-22 12:07:12","","giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_ (1)","","inherit","open","closed","","giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1","","","2017-03-22 12:07:12","2017-03-22 12:07:12","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_-1.jpg","0","attachment","image/jpeg","0"),
("102","1","2017-03-22 12:07:13","2017-03-22 12:07:13","","giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_","","inherit","open","closed","","giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_","","","2017-03-22 12:07:13","2017-03-22 12:07:13","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-cong-so-james-blanc-da-tron-mau-nau-jb-795_3_.jpg","0","attachment","image/jpeg","0"),
("103","1","2017-03-22 12:07:14","2017-03-22 12:07:14","","giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_","","inherit","open","closed","","giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_","","","2017-03-22 12:07:14","2017-03-22 12:07:14","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-cao-cap-james-blanc-da-tron-mau-nau-jb-797_4_.jpg","0","attachment","image/jpeg","0"),
("104","1","2017-03-22 12:07:15","2017-03-22 12:07:15","","giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_","","inherit","open","closed","","giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_","","","2017-03-22 12:07:15","2017-03-22 12:07:15","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793_2_.jpg","0","attachment","image/jpeg","0"),
("105","1","2017-03-22 12:07:17","2017-03-22 12:07:17","","giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_","","inherit","open","closed","","giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_","","","2017-03-22 12:07:17","2017-03-22 12:07:17","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-cong-so-sanvado-da-tron-mau-nau-nhat-ap-128_7_.jpg","0","attachment","image/jpeg","0"),
("106","1","2017-03-22 12:07:18","2017-03-22 12:07:18","","giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_","","inherit","open","closed","","giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_","","","2017-03-22 12:07:18","2017-03-22 12:07:18","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005_1_.jpg","0","attachment","image/jpeg","0"),
("107","1","2017-03-22 12:07:19","2017-03-22 12:07:19","","giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4","","inherit","open","closed","","giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4","","","2017-03-22 12:07:19","2017-03-22 12:07:19","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004_4.jpg","0","attachment","image/jpeg","0"),
("108","1","2017-03-22 12:07:20","2017-03-22 12:07:20","","giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5","","inherit","open","closed","","giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5","","","2017-03-22 12:07:20","2017-03-22 12:07:20","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002_5.jpg","0","attachment","image/jpeg","0"),
("109","1","2017-03-22 12:07:21","2017-03-22 12:07:21","","giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4","","inherit","open","closed","","giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4","","","2017-03-22 12:07:21","2017-03-22 12:07:21","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-sanvado-quai-da-mau-den-bt-002_4.jpg","0","attachment","image/jpeg","0"),
("110","1","2017-03-22 12:07:22","2017-03-22 12:07:22","","giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_","","inherit","open","closed","","giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_","","","2017-03-22 12:07:22","2017-03-22 12:07:22","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-thoi-trang-james-blanc-da-lon-mau-long-chuot-jb-6103_3_.jpg","0","attachment","image/jpeg","0"),
("111","1","2017-03-22 12:07:23","2017-03-22 12:07:23","","giay-luoi-nam-vai-bo-mau-ghi-hm-123_5","","inherit","open","closed","","giay-luoi-nam-vai-bo-mau-ghi-hm-123_5","","","2017-03-22 12:07:23","2017-03-22 12:07:23","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-nam-vai-bo-mau-ghi-hm-123_5.jpg","0","attachment","image/jpeg","0"),
("112","1","2017-03-22 12:07:24","2017-03-22 12:07:24","","giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_","","inherit","open","closed","","giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_","","","2017-03-22 12:07:24","2017-03-22 12:07:24","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-slip-on-da-tron-mau-xanh-than-gv-333_4_.jpg","0","attachment","image/jpeg","0"),
("113","1","2017-03-22 12:07:25","2017-03-22 12:07:25","","giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_","","inherit","open","closed","","giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_","","","2017-03-22 12:07:25","2017-03-22 12:07:25","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796_5_.jpg","0","attachment","image/jpeg","0"),
("114","1","2017-03-22 12:07:26","2017-03-22 12:07:26","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_","","inherit","open","closed","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_","","","2017-03-22 12:07:26","2017-03-22 12:07:26","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-da-bo-jb-794_3_.jpg","0","attachment","image/jpeg","0"),
("115","1","2017-03-22 12:07:27","2017-03-22 12:07:27","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_","","inherit","open","closed","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_","","","2017-03-22 12:07:27","2017-03-22 12:07:27","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-den-jb-794_3_.jpg","0","attachment","image/jpeg","0"),
("116","1","2017-03-22 12:07:28","2017-03-22 12:07:28","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_","","inherit","open","closed","","giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_","","","2017-03-22 12:07:28","2017-03-22 12:07:28","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-luoi-thoi-trang-cap-cap-james-blanc-da-tron-mau-nau-jb-794_3_.jpg","0","attachment","image/jpeg","0"),
("117","1","2017-03-22 12:07:29","2017-03-22 12:07:29","","giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_","","inherit","open","closed","","giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_","","","2017-03-22 12:07:29","2017-03-22 12:07:29","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-nam-co-lung-sanvado-da-tron-mau-nau-hm-6688_4_.jpg","0","attachment","image/jpeg","0"),
("118","1","2017-03-22 12:07:30","2017-03-22 12:07:30","","giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_","","inherit","open","closed","","giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_","","","2017-03-22 12:07:30","2017-03-22 12:07:30","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-nam-sanvado-da-sap-da-bo-ks-2379-3_4_.jpg","0","attachment","image/jpeg","0"),
("119","1","2017-03-22 12:07:31","2017-03-22 12:07:31","","giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5","","inherit","open","closed","","giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5","","","2017-03-22 12:07:31","2017-03-22 12:07:31","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-den-u-1796_5.jpg","0","attachment","image/jpeg","0"),
("120","1","2017-03-22 12:07:33","2017-03-22 12:07:33","","giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5","","inherit","open","closed","","giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5","","","2017-03-22 12:07:33","2017-03-22 12:07:33","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-the-thao-buoc-day-geox-da-tron-mau-nau-u-1796_5.jpg","0","attachment","image/jpeg","0"),
("121","1","2017-03-22 12:07:33","2017-03-22 12:07:33","","giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_","","inherit","open","closed","","giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_","","","2017-03-22 12:07:33","2017-03-22 12:07:33","","0","http://localhost/shoes/wp-content/uploads/2017/03/giay-the-thao-nam-sanvado-da-tron-mau-den-hm-3558_3_.jpg","0","attachment","image/jpeg","0"),
("122","1","2017-03-22 12:07:34","2017-03-22 12:07:34","","printed-dress","","inherit","open","closed","","printed-dress","","","2017-03-22 12:07:34","2017-03-22 12:07:34","","0","http://localhost/shoes/wp-content/uploads/2017/03/printed-dress.jpg","0","attachment","image/jpeg","0"),
("123","1","2017-03-22 12:07:35","2017-03-22 12:07:35","","theme-shoes-buoc-day","","inherit","open","closed","","theme-shoes-buoc-day","","","2017-03-22 12:07:35","2017-03-22 12:07:35","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-buoc-day.png","0","attachment","image/png","0"),
("124","1","2017-03-22 12:07:36","2017-03-22 12:07:36","","theme-shoes-cao-cap","","inherit","open","closed","","theme-shoes-cao-cap","","","2017-03-22 12:07:36","2017-03-22 12:07:36","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-cao-cap.png","0","attachment","image/png","0"),
("125","1","2017-03-22 12:07:38","2017-03-22 12:07:38","","theme-shoes-cao-co","","inherit","open","closed","","theme-shoes-cao-co","","","2017-03-22 12:07:38","2017-03-22 12:07:38","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-cao-co.png","0","attachment","image/png","0"),
("126","1","2017-03-22 12:07:39","2017-03-22 12:07:39","","theme-shoes-cong-so","","inherit","open","closed","","theme-shoes-cong-so","","","2017-03-22 12:07:39","2017-03-22 12:07:39","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-cong-so.png","0","attachment","image/png","0"),
("127","1","2017-03-22 12:07:40","2017-03-22 12:07:40","","theme-shoes-cuoi","","inherit","open","closed","","theme-shoes-cuoi","","","2017-03-22 12:07:40","2017-03-22 12:07:40","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-cuoi.png","0","attachment","image/png","0"),
("128","1","2017-03-22 12:07:41","2017-03-22 12:07:41","","theme-shoes-da","","inherit","open","closed","","theme-shoes-da","","","2017-03-22 12:07:41","2017-03-22 12:07:41","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-da.png","0","attachment","image/png","0"),
("129","1","2017-03-22 12:07:42","2017-03-22 12:07:42","","theme-shoes-da-lon","","inherit","open","closed","","theme-shoes-da-lon","","","2017-03-22 12:07:42","2017-03-22 12:07:42","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-da-lon.png","0","attachment","image/png","0"),
("130","1","2017-03-22 12:07:43","2017-03-22 12:07:43","","theme-shoes-luoi","","inherit","open","closed","","theme-shoes-luoi","","","2017-03-22 12:07:43","2017-03-22 12:07:43","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-luoi.png","0","attachment","image/png","0"),
("131","1","2017-03-22 12:07:45","2017-03-22 12:07:45","","theme-shoes-tay","","inherit","open","closed","","theme-shoes-tay","","","2017-03-22 12:07:45","2017-03-22 12:07:45","","0","http://localhost/shoes/wp-content/uploads/2017/03/theme-shoes-tay.png","0","attachment","image/png","0"),
("172","1","2017-03-22 16:32:24","2017-03-22 16:32:24","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:32:24","2017-03-22 16:32:24","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("137","1","2017-03-22 14:16:38","2017-03-22 14:16:38","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 14:16:38","2017-03-22 14:16:38","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("132","1","2017-03-22 12:10:50","2017-03-22 12:10:50","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Delivery</strong> World Wide* <a href=\"#\">Learn more</a></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\">Loved by our Customers. <strong>5000+</strong> Reviews</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Returns</strong> and <strong>Free Shipping</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\"]\n\n[ux_image id=\"130\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_banner height=\"160px\" bg=\"7460\" bg_size=\"medium\" bg_overlay=\"rgba(0, 0, 0, 0.13)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Don\'t Miss</h3>\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>Sale ends soon</strong></span></h2>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.17)\"]\n\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"1-3\"]\n\n[ux_banner height=\"160px\" bg=\"8286\" bg_size=\"thumbnail\" bg_overlay=\"rgba(0, 0, 0, 0.17)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>SUMMER SALE</strong></span></h2>\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:10:50","2017-03-22 12:10:50","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("133","1","2017-03-22 12:13:26","2017-03-22 12:13:26","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Delivery</strong> World Wide* <a href=\"#\">Learn more</a></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\">Loved by our Customers. <strong>5000+</strong> Reviews</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Returns</strong> and <strong>Free Shipping</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" link=\"#\"]\n\n[ux_image id=\"130\" image_size=\"medium\" link=\"#\"]\n\n[ux_image id=\"125\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_banner height=\"160px\" bg=\"7460\" bg_size=\"medium\" bg_overlay=\"rgba(0, 0, 0, 0.13)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Don\'t Miss</h3>\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>Sale ends soon</strong></span></h2>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.17)\"]\n\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"1-3\"]\n\n[ux_banner height=\"160px\" bg=\"8286\" bg_size=\"thumbnail\" bg_overlay=\"rgba(0, 0, 0, 0.17)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>SUMMER SALE</strong></span></h2>\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:13:26","2017-03-22 12:13:26","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("134","1","2017-03-22 12:27:09","2017-03-22 12:27:09","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Delivery</strong> World Wide* <a href=\"#\">Learn more</a></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\">Loved by our Customers. <strong>5000+</strong> Reviews</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Returns</strong> and <strong>Free Shipping</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"130\" image_size=\"medium\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"125\" width=\"70\" height=\"50%\" depth=\"2\" depth_hover=\"1\" link=\"#\"]\n\n[ux_image id=\"124\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_banner height=\"160px\" bg=\"7460\" bg_size=\"medium\" bg_overlay=\"rgba(0, 0, 0, 0.13)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Don\'t Miss</h3>\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>Sale ends soon</strong></span></h2>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.17)\"]\n\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"1-3\"]\n\n[ux_banner height=\"160px\" bg=\"8286\" bg_size=\"thumbnail\" bg_overlay=\"rgba(0, 0, 0, 0.17)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>SUMMER SALE</strong></span></h2>\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:27:09","2017-03-22 12:27:09","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("136","1","2017-03-22 12:41:15","2017-03-22 12:41:15","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"130\" image_size=\"medium\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:41:15","2017-03-22 12:41:15","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("135","1","2017-03-22 12:28:31","2017-03-22 12:28:31","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Delivery</strong> World Wide* <a href=\"#\">Learn more</a></span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\">Loved by our Customers. <strong>5000+</strong> Reviews</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Free Returns</strong> and <strong>Free Shipping</strong></span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"130\" image_size=\"medium\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"125\" width=\"70\" height=\"50%\" depth=\"2\" depth_hover=\"1\" link=\"#\"]\n\n[ux_image id=\"124\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_banner height=\"160px\" bg=\"7460\" bg_size=\"medium\" bg_overlay=\"rgba(0, 0, 0, 0.13)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\">Don\'t Miss</h3>\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>Sale ends soon</strong></span></h2>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.17)\"]\n\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"1-3\"]\n\n[ux_banner height=\"160px\" bg=\"8286\" bg_size=\"thumbnail\" bg_overlay=\"rgba(0, 0, 0, 0.17)\" bg_pos=\"47% 55%\" hover=\"zoom\"]\n\n[text_box width=\"87\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><span style=\"font-size: 130%;\"><strong>SUMMER SALE</strong></span></h2>\n[button text=\"Browse Now\" size=\"larger\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Our BestSellers\" size=\"undefined\" link_text=\"Browse All\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"Latest on Sale\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" orderby=\"sales\" show=\"onsale\"]\n\n[title text=\"Weekly Featured Products\" size=\"undefined\" link_text=\"Browse all\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 12:28:31","2017-03-22 12:28:31","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("138","1","2017-03-22 14:43:07","2017-03-22 14:43:07","","Giày lười nam James Blanc viền hoa da trơn có chuông màu đen (JB-005)","","publish","open","closed","","giay-luoi-nam-james-blanc-vien-hoa-da-tron-co-chuong-mau-den-jb-005","","","2017-03-22 14:43:07","2017-03-22 14:43:07","","0","http://localhost/shoes/?post_type=product&#038;p=138","0","product","","0"),
("139","1","2017-03-22 14:44:23","2017-03-22 14:44:23","","Giày lười nam James Blanc da lộn màu lông chuột (JB-6103)","","publish","open","closed","","giay-luoi-nam-james-blanc-da-lon-mau-long-chuot-jb-6103","","","2017-03-22 14:46:20","2017-03-22 14:46:20","","0","http://localhost/shoes/?post_type=product&#038;p=139","0","product","","0"),
("140","1","2017-03-22 14:47:07","2017-03-22 14:47:07","","Giầy lười thời trang cao cấp James Blanc da trơn màu nâu (JB-796)","","publish","open","closed","","giay-luoi-thoi-trang-cao-cap-james-blanc-da-tron-mau-nau-jb-796","","","2017-03-22 14:47:07","2017-03-22 14:47:07","","0","http://localhost/shoes/?post_type=product&#038;p=140","0","product","","0"),
("141","1","2017-03-22 14:48:04","2017-03-22 14:48:04","","Giầy lười nam công sở James Blanc da trơn màu nâu đậm (JB-793)","","publish","open","closed","","giay-luoi-nam-cong-so-james-blanc-da-tron-mau-nau-dam-jb-793","","","2017-03-22 14:48:04","2017-03-22 14:48:04","","0","http://localhost/shoes/?post_type=product&#038;p=141","0","product","","0"),
("142","1","2017-03-22 14:48:50","2017-03-22 14:48:50","","Giày buộc dây công sở James Blanc viền mũi da trơn màu cánh gián (JB-691)","","publish","open","closed","","giay-buoc-day-cong-so-james-blanc-vien-mui-da-tron-mau-canh-gian-jb-691","","","2017-03-22 14:48:50","2017-03-22 14:48:50","","0","http://localhost/shoes/?post_type=product&#038;p=142","0","product","","0"),
("143","1","2017-03-22 14:49:34","2017-03-22 14:49:34","","Giày nam buộc dây thời trang James Blanc màu cánh gián (JB-690)","","publish","open","closed","","giay-nam-buoc-day-thoi-trang-james-blanc-mau-canh-gian-jb-690","","","2017-03-22 14:49:34","2017-03-22 14:49:34","","0","http://localhost/shoes/?post_type=product&#038;p=143","0","product","","0"),
("144","1","2017-03-22 14:51:04","2017-03-22 14:51:04","","Giày cao cổ Sanvado da sáp màu da bò (2379)","","publish","open","closed","","giay-cao-co-sanvado-da-sap-mau-da-bo-2379","","","2017-03-22 14:51:04","2017-03-22 14:51:04","","0","http://localhost/shoes/?post_type=product&#038;p=144","0","product","","0"),
("145","1","2017-03-22 14:51:54","2017-03-22 14:51:54","","Giày lười nam Sanvado chuông da màu đen (BT-004)","","publish","open","closed","","giay-luoi-nam-sanvado-chuong-da-mau-den-bt-004","","","2017-03-22 14:51:54","2017-03-22 14:51:54","","0","http://localhost/shoes/?post_type=product&#038;p=145","0","product","","0"),
("146","1","2017-03-22 14:53:06","2017-03-22 14:53:06","","Giày lười nam Sanvado quai da màu đen (BT-002)","","publish","open","closed","","giay-luoi-nam-sanvado-quai-da-mau-den-bt-002","","","2017-03-22 14:53:06","2017-03-22 14:53:06","","0","http://localhost/shoes/?post_type=product&#038;p=146","0","product","","0"),
("147","1","2017-03-22 14:53:44","2017-03-22 14:53:44","","Giày lười nam vải bò màu ghi (HM-123)","","publish","open","closed","","giay-luoi-nam-vai-bo-mau-ghi-hm-123","","","2017-03-22 14:53:44","2017-03-22 14:53:44","","0","http://localhost/shoes/?post_type=product&#038;p=147","0","product","","0"),
("148","1","2017-03-22 14:54:24","2017-03-22 14:54:24","","Giày lười nam Sanvado da bóng quai da màu đen (BT-002)","","publish","open","closed","","giay-luoi-nam-sanvado-da-bong-quai-da-mau-den-bt-002","","","2017-03-22 14:54:24","2017-03-22 14:54:24","","0","http://localhost/shoes/?post_type=product&#038;p=148","0","product","","0"),
("149","1","2017-03-22 14:55:26","2017-03-22 14:55:26","","Giày công sở buộc dây viền mũi da trơn màu đen (XQ-51)","","publish","open","closed","","giay-cong-so-buoc-day-vien-mui-da-tron-mau-den-xq-51","","","2017-03-22 15:05:12","2017-03-22 15:05:12","","0","http://localhost/shoes/?post_type=product&#038;p=149","0","product","","0"),
("151","1","2017-03-22 15:06:23","2017-03-22 15:06:23","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link=\"#\"]\n\n[ux_products columns=\"5\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link=\"#\"]\n\n[ux_products width=\"full-width\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:06:23","2017-03-22 15:06:23","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("152","1","2017-03-22 15:11:19","2017-03-22 15:11:19","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" cat=\"7\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:11:19","2017-03-22 15:11:19","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("153","1","2017-03-22 15:12:51","2017-03-22 15:12:51","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:12:51","2017-03-22 15:12:51","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("154","1","2017-03-22 15:15:31","2017-03-22 15:15:31","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:15:31","2017-03-22 15:15:31","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("155","1","2017-03-22 15:19:20","2017-03-22 15:19:20","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[gap height=\"50px\"]\n\n[ux_banner height=\"399px\" bg=\"7460\" bg_overlay=\"rgba(0, 0, 0, 0.08)\" bg_pos=\"53% 43%\" parallax=\"3\"]\n\n[text_box width=\"58\" width__sm=\"80\" position_x=\"50\" position_y=\"50\"]\n\n<h2 class=\"uppercase\"><strong>Sale Ends Soon</strong></h2>\n<h4 class=\"lead uppercase\">Up to <strong>50% off</strong> selected products</h4>\n[ux_countdown bg_color=\"rgba(255, 255, 255, 0.23)\"]\n\n[button text=\"Browse now\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[gap height=\"44px\"]\n\n[ux_product_categories style=\"bounce\" image_height=\"107%\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:19:20","2017-03-22 15:19:20","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("157","1","2017-03-22 15:34:54","2017-03-22 15:34:54","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_product_categories style=\"overlay\" animate=\"fadeInLeft\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"2000\" ids=\"9,7,8\" image_height=\"100%\" image_radius=\"100\" image_overlay=\"rgba(0, 0, 0, 0.19)\" image_hover=\"overlay-remove-50\" image_hover_alt=\"zoom\" text_size=\"large\" text_hover=\"fade-out\" text_padding=\"0px 0px 0px 10px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 15:34:54","2017-03-22 15:34:54","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("158","1","2017-03-22 16:00:28","2017-03-22 16:00:28","","dmsp0001","","inherit","open","closed","","dmsp0001","","","2017-03-22 16:00:28","2017-03-22 16:00:28","","0","http://localhost/shoes/wp-content/uploads/2017/03/dmsp0001.jpg","0","attachment","image/jpeg","0"),
("159","1","2017-03-22 16:03:45","2017-03-22 16:03:45","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" lightbox=\"true\" caption=\"true\" image_hover=\"zoom\" animate=\"flipInY\" link=\"#\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_product_categories style=\"overlay\" animate=\"fadeInLeft\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"2000\" ids=\"9,7,8\" image_height=\"100%\" image_radius=\"100\" image_overlay=\"rgba(0, 0, 0, 0.19)\" image_hover=\"overlay-remove-50\" image_hover_alt=\"zoom\" text_size=\"large\" text_hover=\"fade-out\" text_padding=\"0px 0px 0px 10px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:03:45","2017-03-22 16:03:45","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("169","1","2017-03-22 16:20:05","2017-03-22 16:20:05","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"4px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n<h2 class=\"uppercase\">GÓC ĐÀN ÔNG</h2>\n[ux_banner_grid height=\"550\"]\n\n[col_grid span=\"9\"]\n\n[ux_image id=\"164\" image_hover=\"zoom\" animate=\"flipInY\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_image id=\"166\" link=\"#\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:20:05","2017-03-22 16:20:05","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("160","1","2017-03-22 16:06:14","2017-03-22 16:06:14","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" lightbox=\"true\" caption=\"true\" image_hover=\"zoom\" animate=\"flipInY\" link=\"#\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" margin=\"0px 0px 0px 0px\" caption=\"true\" image_hover=\"zoom\" animate=\"flipInY\" link=\"#\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_product_categories style=\"overlay\" animate=\"fadeInLeft\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"2000\" ids=\"9,7,8\" image_height=\"100%\" image_radius=\"100\" image_overlay=\"rgba(0, 0, 0, 0.19)\" image_hover=\"overlay-remove-50\" image_hover_alt=\"zoom\" text_size=\"large\" text_hover=\"fade-out\" text_padding=\"0px 0px 0px 10px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:06:14","2017-03-22 16:06:14","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("163","1","2017-03-22 16:13:22","2017-03-22 16:13:22","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" lightbox=\"true\" caption=\"true\" image_hover=\"zoom\" animate=\"flipInY\" link=\"#\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" margin=\"0px 0px 0px 0px\" caption=\"true\" image_hover=\"zoom\" animate=\"flipInY\" link=\"#\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_product_categories style=\"overlay\" animate=\"fadeInLeft\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"2000\" ids=\"9,7,8\" image_height=\"100%\" image_radius=\"100\" image_overlay=\"rgba(0, 0, 0, 0.19)\" image_hover=\"overlay-remove-50\" image_hover_alt=\"zoom\" text_size=\"large\" text_hover=\"fade-out\" text_padding=\"0px 0px 0px 10px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:13:22","2017-03-22 16:13:22","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("164","1","2017-03-22 16:15:16","2017-03-22 16:15:16","","gocdanong","","inherit","open","closed","","gocdanong","","","2017-03-22 16:15:16","2017-03-22 16:15:16","","0","http://localhost/shoes/wp-content/uploads/2017/03/gocdanong.jpg","0","attachment","image/jpeg","0"),
("165","1","2017-03-22 16:18:57","2017-03-22 16:18:57","","bag","","inherit","open","closed","","bag","","","2017-03-22 16:18:57","2017-03-22 16:18:57","","0","http://localhost/shoes/wp-content/uploads/2017/03/bag.jpg","0","attachment","image/jpeg","0"),
("166","1","2017-03-22 16:18:58","2017-03-22 16:18:58","","dmsp04","","inherit","open","closed","","dmsp04","","","2017-03-22 16:18:58","2017-03-22 16:18:58","","0","http://localhost/shoes/wp-content/uploads/2017/03/dmsp04.jpg","0","attachment","image/jpeg","0"),
("167","1","2017-03-22 16:18:59","2017-03-22 16:18:59","","jacket","","inherit","open","closed","","jacket","","","2017-03-22 16:18:59","2017-03-22 16:18:59","","0","http://localhost/shoes/wp-content/uploads/2017/03/jacket.jpg","0","attachment","image/jpeg","0"),
("168","1","2017-03-22 16:19:00","2017-03-22 16:19:00","","leather for men","","inherit","open","closed","","leather-for-men","","","2017-03-22 16:19:00","2017-03-22 16:19:00","","0","http://localhost/shoes/wp-content/uploads/2017/03/leather-for-men.jpg","0","attachment","image/jpeg","0"),
("171","1","2017-03-22 16:31:15","2017-03-22 16:31:15","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"4px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_countdown]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:31:15","2017-03-22 16:31:15","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("170","1","2017-03-22 16:23:41","2017-03-22 16:23:41","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"126\"]\n\n[ux_image id=\"123\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Xem thêm hàng trăm sản phẩm\" icon=\"icon-gift\" margin_top=\"30px\" margin_bottom=\"4px\" size=\"140\" link_text=\"XEM THÊM\" link=\"#\"]\n\n<h2 class=\"uppercase\">GÓC ĐÀN ÔNG</h2>\n[ux_banner_grid height=\"550\"]\n\n[col_grid span=\"9\"]\n\n[ux_image id=\"164\" image_hover=\"zoom\" animate=\"flipInY\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_image id=\"166\" image_hover=\"zoom\" link=\"#\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-2\"]\n\n[ux_image id=\"167\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:23:41","2017-03-22 16:23:41","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("176","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày made in Viet Nam","","publish","closed","closed","","giay-made-in-viet-nam","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=176","10","nav_menu_item","","0"),
("177","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày James Blanc","","publish","closed","closed","","giay-james-blanc","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=177","11","nav_menu_item","","0"),
("178","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày da nam","","publish","closed","closed","","giay-da-nam","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=178","2","nav_menu_item","","0"),
("179","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày lười nam","","publish","closed","closed","","giay-luoi-nam","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=179","3","nav_menu_item","","0"),
("180","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày tây nam","","publish","closed","closed","","giay-tay-nam","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=180","4","nav_menu_item","","0"),
("181","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày công sở","","publish","closed","closed","","giay-cong-so","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=181","5","nav_menu_item","","0"),
("182","1","2017-03-22 16:44:56","2017-03-22 16:44:56","","Giày buộc dây","","publish","closed","closed","","giay-buoc-day","","","2017-03-22 17:23:25","2017-03-22 17:23:25","","0","http://localhost/shoes/?p=182","6","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("184","1","2017-03-22 16:50:17","2017-03-22 16:50:17","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 16:50:17","2017-03-22 16:50:17","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("185","1","2017-03-22 17:29:05","2017-03-22 17:29:05","","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-03-22 17:29:05","2017-03-22 17:29:05","","0","http://localhost/shoes/?p=185","1","nav_menu_item","","0"),
("186","1","2017-03-22 17:29:05","2017-03-22 17:29:05","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2017-03-22 17:29:05","2017-03-22 17:29:05","","0","http://localhost/shoes/?p=186","2","nav_menu_item","","0"),
("187","1","2017-03-22 17:29:05","2017-03-22 17:29:05","","Tin tức","","publish","closed","closed","","tin-tuc","","","2017-03-22 17:29:05","2017-03-22 17:29:05","","0","http://localhost/shoes/?p=187","3","nav_menu_item","","0"),
("188","1","2017-03-22 17:29:05","2017-03-22 17:29:05","","Liên hệ","","publish","closed","closed","","lien-he","","","2017-03-22 17:29:05","2017-03-22 17:29:05","","0","http://localhost/shoes/?p=188","4","nav_menu_item","","0"),
("189","1","2017-03-22 17:33:48","2017-03-22 17:33:48","","Trang chủ","","publish","closed","closed","","trang-chu-2","","","2017-03-22 17:33:48","2017-03-22 17:33:48","","0","http://localhost/shoes/?p=189","1","nav_menu_item","","0"),
("190","1","2017-03-22 17:33:48","2017-03-22 17:33:48","","Giới thiệu","","publish","closed","closed","","gioi-thieu-2","","","2017-03-22 17:33:48","2017-03-22 17:33:48","","0","http://localhost/shoes/?p=190","2","nav_menu_item","","0"),
("191","1","2017-03-22 17:33:48","2017-03-22 17:33:48","","Tin tức","","publish","closed","closed","","tin-tuc-2","","","2017-03-22 17:33:48","2017-03-22 17:33:48","","0","http://localhost/shoes/?p=191","3","nav_menu_item","","0"),
("192","1","2017-03-22 17:33:48","2017-03-22 17:33:48","","Liên hệ","","publish","closed","closed","","lien-he-2","","","2017-03-22 17:33:48","2017-03-22 17:33:48","","0","http://localhost/shoes/?p=192","4","nav_menu_item","","0"),
("193","1","2017-03-22 17:35:20","2017-03-22 17:35:20","","Trang chủ","","publish","closed","closed","","trang-chu-3","","","2017-03-22 17:35:20","2017-03-22 17:35:20","","0","http://localhost/shoes/?p=193","1","nav_menu_item","","0"),
("194","1","2017-03-22 17:35:21","2017-03-22 17:35:21","","Giới thiệu","","publish","closed","closed","","gioi-thieu-3","","","2017-03-22 17:35:21","2017-03-22 17:35:21","","0","http://localhost/shoes/?p=194","2","nav_menu_item","","0"),
("195","1","2017-03-22 17:35:21","2017-03-22 17:35:21","","Tin tức","","publish","closed","closed","","tin-tuc-3","","","2017-03-22 17:35:21","2017-03-22 17:35:21","","0","http://localhost/shoes/?p=195","3","nav_menu_item","","0"),
("196","1","2017-03-22 17:35:21","2017-03-22 17:35:21","","Liên hệ","","publish","closed","closed","","lien-he-3","","","2017-03-22 17:35:21","2017-03-22 17:35:21","","0","http://localhost/shoes/?p=196","4","nav_menu_item","","0"),
("199","1","2017-03-22 18:12:57","2017-03-22 18:12:57","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 18:12:57","2017-03-22 18:12:57","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("203","1","2017-03-22 18:25:01","2017-03-22 18:25:01","<h2>Bạn đã biết 8 quy luật mới của thời trang nam công sở chưa?</h2>\nVới những quy luật mới này, GIAYTOT.com tin rằng đây có thể là cơn gió mới lạ cho những lựa chọn trang phục của bạn trong ngày làm việc tới đấy!\n\n&nbsp;\n<h3>#1 Chọn loại quần denim tối màu</h3>\n<h3><img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-5.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"564\" height=\"620\" /></h3>\nThay vì dùng mãi quần tây, quần kaki, tại sao không thử những loại quần denim cực kỳ trẻ trung, thời thượng?\n<h3>#2 Bạn có thể mặc quần jeans màu xanh sáng</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-6.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"480\" height=\"720\" />\nTuy nhiên, hãy lưu ý chọn loại quần trơn, không có đường rách.\n<h3>#3 Sneaker hoàn toàn có thể dùng đến nơi công sở</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/10-trang-phuc-khien-ban-so-huu-giay-the-thao-trang-ngay%20(3).jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"640\" height=\"800\" />\n\nNhưng phải là loại có kiểu dáng đơn giản, màu sắc trung tính như đen, trắng, xám. Bạn có thể tìm thấy những đôi giày thời thượng phù hợp phong cách công sở trong<a href=\"http://www.giaytot.com/giay-the-thao-nam.html\" target=\"_blank\"> BST giày thể thao</a> của GIAYTOT.com\n<h3>#4 Có chừng mực khi chọn phụ kiện</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/02/that-lung-vi-da-1.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"800\" height=\"533\" />\n\nThắt lưng, đồng hồ.. với thiết kế đơn giản, cao cấp sẽ khiến bộ trang phục thú vị hơn.\n\nXem thêm: <a href=\"http://www.giaytot.com/phu-kien-giay-dep.html\" target=\"_blank\">BST phụ kiện ví, thắt lưng da bò, da cá sấu</a>\n<h3>#5 Dùng túi tote hoặc túi dạng cặp tài liệu bằng da</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-2.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"480\" height=\"528\" />\n\nHãy mạnh dạn đầu tư những chiếc cặp da thời thượng với kiểu dáng tối giản, nam tính.\n\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-3.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"500\" height=\"500\" />\n\nNhững chiếc túi này đựng được rất nhiều đồ, độ bền cao và rất nam tính","Bạn đã biết 8 quy luật mới của thời trang nam công sở chưa?","","publish","open","open","","ban-da-biet-8-quy-luat-moi-cua-thoi-trang-nam-cong-so-chua","","","2017-03-22 18:25:01","2017-03-22 18:25:01","","0","http://localhost/shoes/?p=203","0","post","","0"),
("204","1","2017-03-22 18:25:01","2017-03-22 18:25:01","<h2>Bạn đã biết 8 quy luật mới của thời trang nam công sở chưa?</h2>\nVới những quy luật mới này, GIAYTOT.com tin rằng đây có thể là cơn gió mới lạ cho những lựa chọn trang phục của bạn trong ngày làm việc tới đấy!\n\n&nbsp;\n<h3>#1 Chọn loại quần denim tối màu</h3>\n<h3><img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-5.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"564\" height=\"620\" /></h3>\nThay vì dùng mãi quần tây, quần kaki, tại sao không thử những loại quần denim cực kỳ trẻ trung, thời thượng?\n<h3>#2 Bạn có thể mặc quần jeans màu xanh sáng</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-6.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"480\" height=\"720\" />\nTuy nhiên, hãy lưu ý chọn loại quần trơn, không có đường rách.\n<h3>#3 Sneaker hoàn toàn có thể dùng đến nơi công sở</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/10-trang-phuc-khien-ban-so-huu-giay-the-thao-trang-ngay%20(3).jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"640\" height=\"800\" />\n\nNhưng phải là loại có kiểu dáng đơn giản, màu sắc trung tính như đen, trắng, xám. Bạn có thể tìm thấy những đôi giày thời thượng phù hợp phong cách công sở trong<a href=\"http://www.giaytot.com/giay-the-thao-nam.html\" target=\"_blank\"> BST giày thể thao</a> của GIAYTOT.com\n<h3>#4 Có chừng mực khi chọn phụ kiện</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/02/that-lung-vi-da-1.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"800\" height=\"533\" />\n\nThắt lưng, đồng hồ.. với thiết kế đơn giản, cao cấp sẽ khiến bộ trang phục thú vị hơn.\n\nXem thêm: <a href=\"http://www.giaytot.com/phu-kien-giay-dep.html\" target=\"_blank\">BST phụ kiện ví, thắt lưng da bò, da cá sấu</a>\n<h3>#5 Dùng túi tote hoặc túi dạng cặp tài liệu bằng da</h3>\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-2.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"480\" height=\"528\" />\n\nHãy mạnh dạn đầu tư những chiếc cặp da thời thượng với kiểu dáng tối giản, nam tính.\n\n<img class=\"lazy\" title=\"8 quy luật mới của thời trang nam công sở\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/8-quy-luat-moi-cua-thoi-trang-cong-so-3.jpg\" alt=\"8 quy luật mới của thời trang nam công sở\" width=\"500\" height=\"500\" />\n\nNhững chiếc túi này đựng được rất nhiều đồ, độ bền cao và rất nam tính","Bạn đã biết 8 quy luật mới của thời trang nam công sở chưa?","","inherit","closed","closed","","203-revision-v1","","","2017-03-22 18:25:01","2017-03-22 18:25:01","","203","http://localhost/shoes/2017/03/22/203-revision-v1/","0","revision","","0"),
("205","1","2017-03-22 18:26:36","2017-03-22 18:26:36","<strong></strong>\n<h2>9 cách mặc cardigan đẹp không cần nghĩ</h2>\nCardigan - loại áo khoác nhẹ bằng len với kiểu dáng đơn giản là món đồ yêu thích của cả nam và nữ. Các thiết kế cardigan hiện nay dành cho phái mạnh cũng rất phong phú, giống như cách mix đồ với chúng vậy. Bạn có thể biến hóa tới 9 phong cách với loại áo này, từ trang phục dạo phố thường ngày tới đồ công sở.\n<h3>+ Tank top kiểu dáng đơn giản</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-9.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"522\" height=\"800\" />\n\n<em>Đây là cách mix đầy trẻ trung, năng động và hợp với thời tiết mùa xuân hoặc mùa thu. Để trông thanh lịch nhất, hãy chú ý màu sắc và họa tiết của áo khoác và áo bên trong.</em>\n<h3>+ Áo phông cổ chữ V</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-8.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"371\" height=\"500\" />\n\nNhững loại áo cổ V rất lãng mạn, nhẹ nhàng và khiến phần ngực của bạn cơ bắp hơn. Một chiếc áo cổ chữ V vừa vặn sẽ rất tôn dáng đấy.\n<h3>+ Áo phông cổ tròn</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-6.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"233\" height=\"405\" />\n\nÁo phông cổ tròn là loại áo phổ biến trong mọi tủ đồ phái mạnh. GIAYTOT.com chỉ muốn lưu ý bạn nên chọn loại áo trơn, màu sắc ăn nhập với cardigan khoác ngoài để trông lịch sự và không rối mắt.\n<h3>+ Áo Polo cổ bẻ, có cúc</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-5.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"321\" height=\"482\" />\n\nNếu ngại mặc sơ mi, những chiếc áo polo cổ bẻ với 3 chiếc cúc rất phù hợp để thay thế. Bạn vẫn đĩnh đạc tới chốn công sở mà không cảm thấy khó chịu\n<h3>+ Sơ mi trơn màu trắng, đen hoặc xanh</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-3.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"533\" height=\"800\" />\n\nĐây là cách kết hợp khá kinh điển mỗi ngày se lạnh. Màu trắng, đen hoặc xanh dương của sơ mi là những gam màu dễ mix nhất với cardigan\n<h3>+ Cravat và sơ mi</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-7.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"564\" height=\"788\" />\n\nViệc phối cùng cravat và loại cardigan đóng cúc, ôm người vừa vặn tạo nên một chỉnh thể cực kỳ bảnh bao\n<h3>+ Cravat, sơ mi và khoác blazer</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-2.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"451\" height=\"596\" />\n\nTrong những ngày lạnh mùa đông, cardigan là trợ thủ đắc lực giúp bạn giữ ấm. Bên cạnh đó, cách phối layer này khiến bạn trông cuốn hút và đậm người hơn\n<h3>+ Bộ suit dự tiệc</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-1.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"350\" height=\"800\" />\n\nHãy nhớ cách kết hợp này không dành cho loại cardigan oversize, mà chỉ cho những chiếc áo vừa vặn, cổ V và có hàng cúc đóng phía dưới. Bạn có thể tham khảo cách mặc này của quý ông trong ảnh: dùng cardigan thay cho áo vest\n\n&nbsp;\n<h3>+ Khoác vai cùng áo sơ mi</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"405\" height=\"577\" />\n\nCác chàng trai ưa phong cách Hàn Quốc chắn chắn rất thích cách mặc này. Nhìn bạn sẽ thật lãng tử và nam tính với chiếc áo khoác buộc hờ trên vai. Đây cũng là cách F5 những bộ trang phục nhàm chán, đơn điệu.","9 cách mặc cardigan đẹp không cần nghĩ","","publish","open","open","","9-cach-mac-cardigan-dep-khong-can-nghi","","","2017-03-22 18:26:36","2017-03-22 18:26:36","","0","http://localhost/shoes/?p=205","0","post","","0"),
("206","1","2017-03-22 18:26:36","2017-03-22 18:26:36","<strong></strong>\n<h2>9 cách mặc cardigan đẹp không cần nghĩ</h2>\nCardigan - loại áo khoác nhẹ bằng len với kiểu dáng đơn giản là món đồ yêu thích của cả nam và nữ. Các thiết kế cardigan hiện nay dành cho phái mạnh cũng rất phong phú, giống như cách mix đồ với chúng vậy. Bạn có thể biến hóa tới 9 phong cách với loại áo này, từ trang phục dạo phố thường ngày tới đồ công sở.\n<h3>+ Tank top kiểu dáng đơn giản</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-9.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"522\" height=\"800\" />\n\n<em>Đây là cách mix đầy trẻ trung, năng động và hợp với thời tiết mùa xuân hoặc mùa thu. Để trông thanh lịch nhất, hãy chú ý màu sắc và họa tiết của áo khoác và áo bên trong.</em>\n<h3>+ Áo phông cổ chữ V</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-8.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"371\" height=\"500\" />\n\nNhững loại áo cổ V rất lãng mạn, nhẹ nhàng và khiến phần ngực của bạn cơ bắp hơn. Một chiếc áo cổ chữ V vừa vặn sẽ rất tôn dáng đấy.\n<h3>+ Áo phông cổ tròn</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-6.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"233\" height=\"405\" />\n\nÁo phông cổ tròn là loại áo phổ biến trong mọi tủ đồ phái mạnh. GIAYTOT.com chỉ muốn lưu ý bạn nên chọn loại áo trơn, màu sắc ăn nhập với cardigan khoác ngoài để trông lịch sự và không rối mắt.\n<h3>+ Áo Polo cổ bẻ, có cúc</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-5.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"321\" height=\"482\" />\n\nNếu ngại mặc sơ mi, những chiếc áo polo cổ bẻ với 3 chiếc cúc rất phù hợp để thay thế. Bạn vẫn đĩnh đạc tới chốn công sở mà không cảm thấy khó chịu\n<h3>+ Sơ mi trơn màu trắng, đen hoặc xanh</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-3.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"533\" height=\"800\" />\n\nĐây là cách kết hợp khá kinh điển mỗi ngày se lạnh. Màu trắng, đen hoặc xanh dương của sơ mi là những gam màu dễ mix nhất với cardigan\n<h3>+ Cravat và sơ mi</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-7.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"564\" height=\"788\" />\n\nViệc phối cùng cravat và loại cardigan đóng cúc, ôm người vừa vặn tạo nên một chỉnh thể cực kỳ bảnh bao\n<h3>+ Cravat, sơ mi và khoác blazer</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-2.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"451\" height=\"596\" />\n\nTrong những ngày lạnh mùa đông, cardigan là trợ thủ đắc lực giúp bạn giữ ấm. Bên cạnh đó, cách phối layer này khiến bạn trông cuốn hút và đậm người hơn\n<h3>+ Bộ suit dự tiệc</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan-1.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"350\" height=\"800\" />\n\nHãy nhớ cách kết hợp này không dành cho loại cardigan oversize, mà chỉ cho những chiếc áo vừa vặn, cổ V và có hàng cúc đóng phía dưới. Bạn có thể tham khảo cách mặc này của quý ông trong ảnh: dùng cardigan thay cho áo vest\n\n&nbsp;\n<h3>+ Khoác vai cùng áo sơ mi</h3>\n<img class=\"lazy\" title=\"9 cách mặc cardigan đẹp không cần nghĩ\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/9-cach-phoi-cardigan.jpg\" alt=\"9 cách mặc cardigan đẹp không cần nghĩ\" width=\"405\" height=\"577\" />\n\nCác chàng trai ưa phong cách Hàn Quốc chắn chắn rất thích cách mặc này. Nhìn bạn sẽ thật lãng tử và nam tính với chiếc áo khoác buộc hờ trên vai. Đây cũng là cách F5 những bộ trang phục nhàm chán, đơn điệu.","9 cách mặc cardigan đẹp không cần nghĩ","","inherit","closed","closed","","205-revision-v1","","","2017-03-22 18:26:36","2017-03-22 18:26:36","","205","http://localhost/shoes/2017/03/22/205-revision-v1/","0","revision","","0"),
("207","1","2017-03-22 18:27:47","2017-03-22 18:27:47","<h3>Cặp táp/ túi xách tay</h3>\nCặp táp là mẫu túi cổ điển nhất nó mang thiết kế đơn giản hình hộp. Hiện nay, trong thời đại công nghệ, cặp táp đã thay đổi rất nhiều. Tuy vẫn là chiếc túi đựng tài liệu công việc, ví tiền hay những món đồ công nghệ nhưng chiếc túi được thiết kế có thêm ngăn nhỏ, có thêm đệm bảo vệ laptop, máy tính bảng hay những món đồ khác vừa đảm bảo tính tiện dụng và thời thượng vừa không mất đi sự lịch lãm sang trọng cho quý ông.\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"500\" /></p>\n\n<h3>Túi đeo chéo</h3>\n&nbsp;\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-2.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"588\" height=\"412\" /></p>\n<p dir=\"ltr\">Nếu bạn là một người không quá cần sự bon chen, không quá muốn thể hiện bản thân thì túi đeo chéo với thiết kế đơn giản với gam màu tối là một sự lựa chọn vô cùng cần thiết cho bản thân.</p>\n<p dir=\"ltr\">Túi đeo chéo có kiểu dáng nhỏ gọn cùng quai đeo chéo, nó vốn là chiếc túi đồng hành trong việc vận chuyển thư từ, tài liệu, có nguồn gốc từ chiếc túi từ các sứ giả thời cổ đại đến túi của bác đưa thư của những thập niên trước.</p>\n\n<h3>Balo</h3>\n&nbsp;\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-3.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"313\" /></p>\n<p dir=\"ltr\">Bạn đừng nghĩ rằng balo chỉ dành cho những học sinh, sinh viên đi học, đi chơi. Balo có rất nhiều loại mà giờ đây, các nhà thiết kế trên thế giới còn đưa ra các mẫu balo theo mùa với kiểu dáng, màu sắc phù hợp cho cả những người đàn ông trưởng thành, chững chạc. Balo phù hợp với những người đàn ông ưa đi xe đạp, xe máy hay đi bộ ở khắp mọi nơi.</p>\n\n<h3>Túi Duffle</h3>\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-4.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"446\" /></p>\n<p dir=\"ltr\">Chiếc túi này có thiết kế dạng hình chữ nhật hoặc hình thùng cùng phần tay cầm êm ái. Duffle có ưu thế là rộng rãi, chứa được nhiều vật dụng lỉnh kỉnh, là bạn đồng hành cho những quý ông thích đi xa. Tuy nhiên, nếu bạn là một người có chiều cao khiêm tốn, bạn nên cân nhắc loại túi này.</p>","4 loại túi mà cánh mày râu không thể thiếu","","publish","open","open","","4-loai-tui-ma-canh-may-rau-khong-the-thieu","","","2017-03-22 18:27:47","2017-03-22 18:27:47","","0","http://localhost/shoes/?p=207","0","post","","0"),
("208","1","2017-03-22 18:27:47","2017-03-22 18:27:47","<h3>Cặp táp/ túi xách tay</h3>\nCặp táp là mẫu túi cổ điển nhất nó mang thiết kế đơn giản hình hộp. Hiện nay, trong thời đại công nghệ, cặp táp đã thay đổi rất nhiều. Tuy vẫn là chiếc túi đựng tài liệu công việc, ví tiền hay những món đồ công nghệ nhưng chiếc túi được thiết kế có thêm ngăn nhỏ, có thêm đệm bảo vệ laptop, máy tính bảng hay những món đồ khác vừa đảm bảo tính tiện dụng và thời thượng vừa không mất đi sự lịch lãm sang trọng cho quý ông.\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"500\" /></p>\n\n<h3>Túi đeo chéo</h3>\n&nbsp;\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-2.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"588\" height=\"412\" /></p>\n<p dir=\"ltr\">Nếu bạn là một người không quá cần sự bon chen, không quá muốn thể hiện bản thân thì túi đeo chéo với thiết kế đơn giản với gam màu tối là một sự lựa chọn vô cùng cần thiết cho bản thân.</p>\n<p dir=\"ltr\">Túi đeo chéo có kiểu dáng nhỏ gọn cùng quai đeo chéo, nó vốn là chiếc túi đồng hành trong việc vận chuyển thư từ, tài liệu, có nguồn gốc từ chiếc túi từ các sứ giả thời cổ đại đến túi của bác đưa thư của những thập niên trước.</p>\n\n<h3>Balo</h3>\n&nbsp;\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-3.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"313\" /></p>\n<p dir=\"ltr\">Bạn đừng nghĩ rằng balo chỉ dành cho những học sinh, sinh viên đi học, đi chơi. Balo có rất nhiều loại mà giờ đây, các nhà thiết kế trên thế giới còn đưa ra các mẫu balo theo mùa với kiểu dáng, màu sắc phù hợp cho cả những người đàn ông trưởng thành, chững chạc. Balo phù hợp với những người đàn ông ưa đi xe đạp, xe máy hay đi bộ ở khắp mọi nơi.</p>\n\n<h3>Túi Duffle</h3>\n<p dir=\"ltr\"><img class=\"lazy\" title=\"4 loại túi mà cánh mày râu không thể thiếu\" src=\"http://www.giaytot.com/media/wysiwyg/2017/03/4-loai-tui-ma-canh-may-rau-khong-the-thieu-4.jpg\" alt=\"4 loại túi mà cánh mày râu không thể thiếu\" width=\"500\" height=\"446\" /></p>\n<p dir=\"ltr\">Chiếc túi này có thiết kế dạng hình chữ nhật hoặc hình thùng cùng phần tay cầm êm ái. Duffle có ưu thế là rộng rãi, chứa được nhiều vật dụng lỉnh kỉnh, là bạn đồng hành cho những quý ông thích đi xa. Tuy nhiên, nếu bạn là một người có chiều cao khiêm tốn, bạn nên cân nhắc loại túi này.</p>","4 loại túi mà cánh mày râu không thể thiếu","","inherit","closed","closed","","207-revision-v1","","","2017-03-22 18:27:47","2017-03-22 18:27:47","","207","http://localhost/shoes/2017/03/22/207-revision-v1/","0","revision","","0"),
("209","1","2017-03-22 18:29:31","2017-03-22 18:29:31","<p dir=\"ltr\">Thông thường các sản phẩm da thật, càng sử dụng thì độ bóng sẽ càng tăng lên nhờ vào độ ma sát, tuy nhiên để có được một sản phẩm bóng đều và đẹp cần phải kết hợp đánh bóng và chăm sóc da đúng cách. Bôi kem dưỡng ẩm để giữ cho da luôn được mềm mại, ko bị nứt nẻ.</p>\n<p dir=\"ltr\"><img class=\"lazy\" title=\"Ví da nam\" src=\"http://www.giaytot.com/media/wysiwyg/2017/02/vi-da-1.jpg\" alt=\"Ví da nam\" width=\"800\" height=\"533\" /></p>\n\n<h3 dir=\"ltr\">Cách đánh bóng ví da</h3>\n<ul>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Cứ 1 - 4 lần mỗi năm bạn nên dùng xi đánh giày không màu để đánh bóng lại đồ da của mình.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Có thể làm bóng da với một phương pháp cực kỳ đơn giản, không tốn chi phí nhưng hiểu quả. Dùng lòng bàn tay chà xát vào bề mặt ví da, chà càng nóng thì sản phẩm sẽ càng nhanh bóng.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Bạn có thể dùng một miếng vải nỉ mềm hoặc một tấm vải mịn bất kỳ. Thấm miếng vải vào sữa tươi không đường, chà mạnh lên bề mặt da, nhớ chà mạnh tay và chà thật đều theo lối xoay tròn. Sau đó, lấy vải khô lau sạch, các sản phẩm làm từ da sẽ mới và bóng đẹp ngay.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Cách thông thường mà mọi người vẫn hay sử dụng, đó là sử dụng dầu bóng, kem hoặc xira. Sử dụng vải mịn hoặc bàn chải, thấm vào các loại hoá chất trên và bôi đều lên da, chờ vài phút cho hoá chất thấm vào da và khô đi, sau đó chà mạnh lên bề mặt da. Càng cọ xát và nóng da sẽ càng bóng đẹp. Tuy nhiên cần chú ý đến màu sắc của hoá chất làm bóng sao cho phù hợp nếu không muốn bị mất màu tự nhiên của da thật</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Ngoài ra bạn có thể lấy củ khoai tây cắt làm đôi và chà xát thật mạnh lên bề mặt bóp, ví da,... Các vết trầy sẽ biến mất. Sau đó, đánh bóng lại bằng dầu bóng hoặc xi, đồ da sẽ hết khô cứng và bóng đẹp</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Thêm một cách nữa là bạn lấy lòng trắng trứng gà, đánh tơi ra tuyết. Sau đó hãy dùng lòng trắng trứng trên thấm vào một miếng vải sạch đánh mạnh lên bề mặt da của ví, túi dùng lâu ngày bị khô cứng. Sau đó, chùi kỹ bằng khăn sạch khác. Đảm bảo những chiếc ví da ấy sẽ mềm mại và bóng bẩy như khi mới mua về vậy.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Nếu những chiếc ví da của bạn có vẻ cũ kỹ, phai màu, bạn hãy dùng dầu thông có pha dấm (tỉ lệ 3 dầu : 1 dấm) hoặc dầu ăn tẩm vào một cái khăn mềm đánh thật mạnh tay lên mặt da. Khi chùi, bạn nhớ phải xoay tròn miếng giẻ thật đều tay. Nếu không có dầu thông, cắt nửa củ hành tây theo chiều ngang, và dùng nửa củ hành này kỳ cọ lên mặt da và chúng sẽ lại đẹp như mới.</p>\n</li>\n</ul>","Mẹo đánh bóng ví da như mới","","publish","open","open","","meo-danh-bong-vi-da-nhu-moi","","","2017-03-22 18:29:31","2017-03-22 18:29:31","","0","http://localhost/shoes/?p=209","0","post","","0"),
("210","1","2017-03-22 18:29:23","2017-03-22 18:29:23","","vi-da-1","","inherit","open","closed","","vi-da-1","","","2017-03-22 18:29:23","2017-03-22 18:29:23","","209","http://localhost/shoes/wp-content/uploads/2017/03/vi-da-1.jpg","0","attachment","image/jpeg","0"),
("211","1","2017-03-22 18:29:31","2017-03-22 18:29:31","<p dir=\"ltr\">Thông thường các sản phẩm da thật, càng sử dụng thì độ bóng sẽ càng tăng lên nhờ vào độ ma sát, tuy nhiên để có được một sản phẩm bóng đều và đẹp cần phải kết hợp đánh bóng và chăm sóc da đúng cách. Bôi kem dưỡng ẩm để giữ cho da luôn được mềm mại, ko bị nứt nẻ.</p>\n<p dir=\"ltr\"><img class=\"lazy\" title=\"Ví da nam\" src=\"http://www.giaytot.com/media/wysiwyg/2017/02/vi-da-1.jpg\" alt=\"Ví da nam\" width=\"800\" height=\"533\" /></p>\n\n<h3 dir=\"ltr\">Cách đánh bóng ví da</h3>\n<ul>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Cứ 1 - 4 lần mỗi năm bạn nên dùng xi đánh giày không màu để đánh bóng lại đồ da của mình.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Có thể làm bóng da với một phương pháp cực kỳ đơn giản, không tốn chi phí nhưng hiểu quả. Dùng lòng bàn tay chà xát vào bề mặt ví da, chà càng nóng thì sản phẩm sẽ càng nhanh bóng.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Bạn có thể dùng một miếng vải nỉ mềm hoặc một tấm vải mịn bất kỳ. Thấm miếng vải vào sữa tươi không đường, chà mạnh lên bề mặt da, nhớ chà mạnh tay và chà thật đều theo lối xoay tròn. Sau đó, lấy vải khô lau sạch, các sản phẩm làm từ da sẽ mới và bóng đẹp ngay.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Cách thông thường mà mọi người vẫn hay sử dụng, đó là sử dụng dầu bóng, kem hoặc xira. Sử dụng vải mịn hoặc bàn chải, thấm vào các loại hoá chất trên và bôi đều lên da, chờ vài phút cho hoá chất thấm vào da và khô đi, sau đó chà mạnh lên bề mặt da. Càng cọ xát và nóng da sẽ càng bóng đẹp. Tuy nhiên cần chú ý đến màu sắc của hoá chất làm bóng sao cho phù hợp nếu không muốn bị mất màu tự nhiên của da thật</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Ngoài ra bạn có thể lấy củ khoai tây cắt làm đôi và chà xát thật mạnh lên bề mặt bóp, ví da,... Các vết trầy sẽ biến mất. Sau đó, đánh bóng lại bằng dầu bóng hoặc xi, đồ da sẽ hết khô cứng và bóng đẹp</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Thêm một cách nữa là bạn lấy lòng trắng trứng gà, đánh tơi ra tuyết. Sau đó hãy dùng lòng trắng trứng trên thấm vào một miếng vải sạch đánh mạnh lên bề mặt da của ví, túi dùng lâu ngày bị khô cứng. Sau đó, chùi kỹ bằng khăn sạch khác. Đảm bảo những chiếc ví da ấy sẽ mềm mại và bóng bẩy như khi mới mua về vậy.</p>\n</li>\n 	<li dir=\"ltr\">\n<p dir=\"ltr\">Nếu những chiếc ví da của bạn có vẻ cũ kỹ, phai màu, bạn hãy dùng dầu thông có pha dấm (tỉ lệ 3 dầu : 1 dấm) hoặc dầu ăn tẩm vào một cái khăn mềm đánh thật mạnh tay lên mặt da. Khi chùi, bạn nhớ phải xoay tròn miếng giẻ thật đều tay. Nếu không có dầu thông, cắt nửa củ hành tây theo chiều ngang, và dùng nửa củ hành này kỳ cọ lên mặt da và chúng sẽ lại đẹp như mới.</p>\n</li>\n</ul>","Mẹo đánh bóng ví da như mới","","inherit","closed","closed","","209-revision-v1","","","2017-03-22 18:29:31","2017-03-22 18:29:31","","209","http://localhost/shoes/2017/03/22/209-revision-v1/","0","revision","","0"),
("212","1","2017-03-22 18:35:41","2017-03-22 18:35:41","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-plus\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-22 18:35:41","2017-03-22 18:35:41","","86","http://localhost/shoes/2017/03/22/86-revision-v1/","0","revision","","0"),
("220","1","2017-03-23 02:04:44","2017-03-23 02:04:44","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"8687\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8686\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"8685\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 02:04:44","2017-03-23 02:04:44","","86","http://localhost/shoes/2017/03/23/86-revision-v1/","0","revision","","0"),
("223","1","2017-03-23 02:34:47","2017-03-23 02:34:47","","phone","","inherit","open","closed","","phone","","","2017-03-23 02:34:47","2017-03-23 02:34:47","","0","http://localhost/shoes/wp-content/uploads/2017/03/phone.png","0","attachment","image/png","0"),
("224","1","2017-03-23 02:34:49","2017-03-23 02:34:49","","setting","","inherit","open","closed","","setting","","","2017-03-23 02:34:49","2017-03-23 02:34:49","","0","http://localhost/shoes/wp-content/uploads/2017/03/setting.png","0","attachment","image/png","0"),
("225","1","2017-03-23 02:34:49","2017-03-23 02:34:49","","xgiaytot1.png.pagespeed.ic.4quoIjkMYS","","inherit","open","closed","","xgiaytot1-png-pagespeed-ic-4quoijkmys","","","2017-03-23 02:34:49","2017-03-23 02:34:49","","0","http://localhost/shoes/wp-content/uploads/2017/03/xgiaytot1.png.pagespeed.ic_.4quoIjkMYS.png","0","attachment","image/png","0"),
("226","1","2017-03-23 02:36:06","2017-03-23 02:36:06","","dt","","inherit","open","closed","","dt","","","2017-03-23 02:36:06","2017-03-23 02:36:06","","0","http://localhost/shoes/wp-content/uploads/2017/03/dt.png","0","attachment","image/png","0"),
("227","1","2017-03-23 02:38:34","2017-03-23 02:38:34","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"226\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"225\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"224\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 02:38:34","2017-03-23 02:38:34","","86","http://localhost/shoes/2017/03/23/86-revision-v1/","0","revision","","0"),
("228","1","2017-03-23 02:49:46","2017-03-23 02:49:46","","delivery-truck","","inherit","open","closed","","delivery-truck","","","2017-03-23 02:49:46","2017-03-23 02:49:46","","0","http://localhost/shoes/wp-content/uploads/2017/03/delivery-truck.png","0","attachment","image/png","0"),
("229","1","2017-03-23 02:49:47","2017-03-23 02:49:47","","redo-circular-arrow","","inherit","open","closed","","redo-circular-arrow","","","2017-03-23 02:49:47","2017-03-23 02:49:47","","0","http://localhost/shoes/wp-content/uploads/2017/03/redo-circular-arrow.png","0","attachment","image/png","0"),
("230","1","2017-03-23 02:49:48","2017-03-23 02:49:48","","tools-cross-settings-symbol-for-interface","","inherit","open","closed","","tools-cross-settings-symbol-for-interface","","","2017-03-23 02:49:48","2017-03-23 02:49:48","","0","http://localhost/shoes/wp-content/uploads/2017/03/tools-cross-settings-symbol-for-interface.png","0","attachment","image/png","0"),
("231","1","2017-03-23 02:52:58","2017-03-23 02:52:58","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"225\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"224\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 02:52:58","2017-03-23 02:52:58","","86","http://localhost/shoes/2017/03/23/86-revision-v1/","0","revision","","0"),
("232","1","2017-03-23 02:54:04","2017-03-23 02:54:04","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 02:54:04","2017-03-23 02:54:04","","86","http://localhost/shoes/2017/03/23/86-revision-v1/","0","revision","","0"),
("234","1","2017-03-23 03:06:55","2017-03-23 03:06:55","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products auto_slide=\"2000\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" auto_slide=\"2000\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns=\"3\" columns__md=\"1\" auto_slide=\"2000\" badge_style=\"circle-inside\" excerpt=\"fade\" image_height=\"75%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 03:06:55","2017-03-23 03:06:55","","86","http://localhost/shoes/2017/03/23/86-revision-v1/","0","revision","","0"),
("238","1","2017-03-23 12:46:48","2017-03-23 12:46:48","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n.box-image {\nborder: solid 1px #dedede;\n}\n.product:hover .product-small.box > .box-image {\nborder-color: #dd3333\n}","flatsome","","publish","closed","closed","","flatsome","","","2017-03-28 09:37:24","2017-03-28 09:37:24","","0","http://shoes.fonicweb.com/2017/03/23/flatsome/","0","custom_css","","0"),
("239","1","2017-03-23 12:46:48","2017-03-23 12:46:48","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n.box-image {\nborder: solid 1px #dedede;\n}","flatsome","","inherit","closed","closed","","238-revision-v1","","","2017-03-23 12:46:48","2017-03-23 12:46:48","","238","http://shoes.fonicweb.com/2017/03/23/238-revision-v1/","0","revision","","0"),
("249","1","2017-03-28 10:02:39","2017-03-28 10:02:39","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"247\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"246\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"131\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"120\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"120\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns__md=\"1\" badge_style=\"square\" excerpt_length=\"20\" image_height=\"60%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-28 10:02:39","2017-03-28 10:02:39","","86","http://shoes.fonicweb.com/2017/03/28/86-revision-v1/","0","revision","","0"),
("240","1","2017-03-23 12:53:06","2017-03-23 12:53:06","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"93\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"123\"]\n\n[ux_image id=\"127\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"122\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" badge_style=\"square\" excerpt=\"fade\" excerpt_length=\"20\" image_height=\"60%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-23 12:53:06","2017-03-23 12:53:06","","86","http://shoes.fonicweb.com/2017/03/23/86-revision-v1/","0","revision","","0"),
("245","1","2017-03-28 09:37:24","2017-03-28 09:37:24","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n.box-image {\nborder: solid 1px #dedede;\n}\n.product:hover .product-small.box > .box-image {\nborder-color: #dd3333\n}","flatsome","","inherit","closed","closed","","238-revision-v1","","","2017-03-28 09:37:24","2017-03-28 09:37:24","","238","http://shoes.fonicweb.com/2017/03/28/238-revision-v1/","0","revision","","0"),
("246","1","2017-03-28 09:54:57","2017-03-28 09:54:57","","shoe","","inherit","open","closed","","shoe","","","2017-03-28 09:54:57","2017-03-28 09:54:57","","0","http://shoes.fonicweb.com/wp-content/uploads/2017/03/shoe.jpg","0","attachment","image/jpeg","0"),
("247","1","2017-03-28 09:57:13","2017-03-28 09:57:13","","man-and-shoe","","inherit","open","closed","","man-and-shoe","","","2017-03-28 09:57:13","2017-03-28 09:57:13","","0","http://shoes.fonicweb.com/wp-content/uploads/2017/03/man-and-shoe.jpg","0","attachment","image/jpeg","0"),
("248","1","2017-03-28 09:58:33","2017-03-28 09:58:33","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"247\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"246\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"131\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title style=\"center\" text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title style=\"center\" text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title style=\"center\" text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"130\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" badge_style=\"square\" excerpt=\"fade\" excerpt_length=\"20\" image_height=\"60%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-28 09:58:33","2017-03-28 09:58:33","","86","http://shoes.fonicweb.com/2017/03/28/86-revision-v1/","0","revision","","0"),
("250","1","2017-03-28 10:03:00","2017-03-28 10:03:00","[section bg_color=\"rgb(241, 241, 241)\" padding=\"8px\" margin=\"15px\"]\n\n[row style=\"collapse\" col_style=\"dashed\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\" align=\"center\"]\n\n[featured_box img=\"229\" img_width=\"20\" pos=\"left\" icon_border=\"1\" margin=\"px -13px 0px 0px\"]\n\n<p>ĐỔI TRẢ TRONG <strong>365 NGÀY</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"228\" img_width=\"20\" pos=\"left\" margin=\"7px px px px\"]\n\n<p>GIAO HÀNG<strong> TOÀN QUỐC</strong></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"0px 15px 0px 15px\"]\n\n[featured_box img=\"230\" img_width=\"20\" pos=\"left\"]\n\n<p>BẢO HÀNH <strong>TRỌN ĐỜI</strong></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner_grid]\n\n[col_grid span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"247\" image_size=\"large\" width=\"70\" height=\"50%\" depth=\"1\" link=\"#\"]\n\n[ux_image id=\"246\"]\n\n\n[/ux_slider]\n\n[/col_grid]\n[col_grid span=\"3\" span__sm=\"12\" height=\"2-3\"]\n\n[ux_image id=\"158\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n[col_grid span=\"3\" height=\"1-3\"]\n\n[ux_image id=\"131\" image_hover=\"zoom\"]\n\n\n[/col_grid]\n\n[/ux_banner_grid]\n[title text=\"Giầy nam mới nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"9\" products=\"6\" orderby=\"sales\"]\n\n[title text=\"sản phẩm giảm giá\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"8\" orderby=\"rand\" show=\"onsale\"]\n\n[title text=\"sản phẩm bán chạy nhất\" icon=\"icon-star\" margin_top=\"30px\" margin_bottom=\"30px\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\" products=\"6\"]\n\n[title text=\"Góc đàn ông\" icon=\"icon-star-o\" size=\"110\" link_text=\"XEM THÊM\" link=\"#\"]\n\n[blog_posts style=\"bounce\" columns__md=\"1\" badge_style=\"square\" excerpt_length=\"20\" image_height=\"60%\" text_padding=\"0px 0px 0px 0px\"]","Trang chủ","","inherit","closed","closed","","86-revision-v1","","","2017-03-28 10:03:00","2017-03-28 10:03:00","","86","http://shoes.fonicweb.com/2017/03/28/86-revision-v1/","0","revision","","0"),
("259","1","2017-07-17 15:24:55","2017-07-17 15:24:55","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2017-07-17 15:24:55","2017-07-17 15:24:55","","0","http://alahap.com/w/shoes/wp-content/uploads/2017/07/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("256","1","2017-07-04 00:47:21","2017-07-04 00:47:21","","1","","inherit","open","closed","","1","","","2017-07-04 00:47:21","2017-07-04 00:47:21","","0","https://bizhostvn.com/w/shoes/wp-content/uploads/2017/07/1.png","0","attachment","image/png","0"),
("269","1","2019-05-16 13:23:14","2019-05-16 13:23:14","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 13:23:14","2019-05-16 13:23:14","","0","https://bizhostvn.com/w/shoes/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  KEY `ID` (`ID`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;






CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("30","2","0"),
("31","2","0"),
("32","2","0"),
("33","2","0"),
("34","2","0"),
("35","2","0"),
("49","2","0"),
("138","3","0"),
("51","2","0"),
("138","9","0"),
("195","12","0"),
("194","12","0"),
("193","12","0"),
("192","11","0"),
("191","11","0"),
("190","11","0"),
("189","11","0"),
("188","10","0"),
("187","10","0"),
("186","10","0"),
("185","10","0"),
("139","9","0"),
("139","3","0"),
("140","9","0"),
("140","3","0"),
("141","9","0"),
("141","3","0"),
("142","9","0"),
("142","3","0"),
("143","9","0"),
("143","3","0"),
("144","8","0"),
("144","3","0"),
("145","8","0"),
("145","3","0"),
("146","8","0"),
("146","3","0"),
("147","8","0"),
("147","3","0"),
("148","8","0"),
("148","3","0"),
("149","8","0"),
("149","3","0"),
("178","2","0"),
("179","2","0"),
("180","2","0"),
("181","2","0"),
("182","2","0"),
("176","2","0"),
("177","2","0"),
("196","12","0"),
("203","1","0"),
("205","1","0"),
("207","1","0"),
("209","1","0");




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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","4"),
("2","2","nav_menu","","0","15"),
("3","3","product_type","","0","12"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_type","","0","0"),
("7","7","product_cat","","0","0"),
("8","8","product_cat","","0","6"),
("9","9","product_cat","","0","6"),
("10","10","nav_menu","","0","4"),
("11","11","nav_menu","","0","4"),
("12","12","nav_menu","","0","4"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","0"),
("16","16","product_visibility","","0","0"),
("17","17","product_visibility","","0","0"),
("18","18","product_visibility","","0","0"),
("19","19","product_visibility","","0","0"),
("20","20","product_visibility","","0","0"),
("21","21","product_visibility","","0","0"),
("22","22","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_termmeta VALUES
("1","7","order","0"),
("2","7","display_type",""),
("3","7","thumbnail_id","0"),
("4","8","order","0"),
("5","8","display_type",""),
("6","8","thumbnail_id","0"),
("7","9","order","0"),
("8","9","display_type",""),
("9","9","thumbnail_id","0"),
("10","9","product_count_product_cat","6"),
("11","8","product_count_product_cat","6");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Uncategorized","uncategorized","0"),
("2","Trang chủ","trang-chu","0"),
("3","simple","simple","0"),
("4","grouped","grouped","0"),
("5","variable","variable","0"),
("6","external","external","0"),
("7","sản phẩm bán chạy","san-pham-ban-chay","0"),
("8","sản phẩm giảm giá","san-pham-giam-gia","0"),
("9","giày nam mới nhất","giay-nam-moi-nhat","0"),
("10","THÔNG TIN","thong-tin","0"),
("11","LIÊN HỆ","lien-he","0"),
("12","HỖ TRỢ","ho-tro","0"),
("13","exclude-from-search","exclude-from-search","0"),
("14","exclude-from-catalog","exclude-from-catalog","0"),
("15","featured","featured","0"),
("16","outofstock","outofstock","0"),
("17","rated-1","rated-1","0"),
("18","rated-2","rated-2","0"),
("19","rated-3","rated-3","0"),
("20","rated-4","rated-4","0"),
("21","rated-5","rated-5","0"),
("22","Uncategorized","uncategorized","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("15","1","session_tokens","a:2:{s:64:\"0c720cb58c75cb481a082fe4252ccb9a913abed10f36d3d4b967c43014f6911d\";a:4:{s:10:\"expiration\";i:1558184903;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012103;}s:64:\"35dbc4e3687511588b9c11c427f84be54b8954d7ac5b762f506255dc0249a3e1\";a:4:{s:10:\"expiration\";i:1558185508;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012708;}}"),
("23","1","billing_first_name",""),
("24","1","billing_last_name",""),
("25","1","billing_company",""),
("26","1","billing_address_1",""),
("27","1","billing_address_2",""),
("16","1","bz_dashboard_quick_press_last_post_id","268"),
("17","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("18","1","bz_user-settings-time","1558012707"),
("19","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("20","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:27:\"add-post-type-featured_item\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:26:\"add-featured_item_category\";i:6;s:21:\"add-featured_item_tag\";}"),
("21","1","manageedit-shop_ordercolumnshidden","a:1:{i:0;s:15:\"billing_address\";}"),
("22","1","nav_menu_recently_edited","12"),
("28","1","billing_city",""),
("29","1","billing_postcode",""),
("30","1","billing_country",""),
("31","1","billing_state",""),
("32","1","billing_phone",""),
("33","1","billing_email",""),
("34","1","shipping_first_name",""),
("35","1","shipping_last_name",""),
("36","1","shipping_company",""),
("37","1","shipping_address_1",""),
("38","1","shipping_address_2",""),
("39","1","shipping_city",""),
("40","1","shipping_postcode",""),
("41","1","shipping_country",""),
("42","1","shipping_state",""),
("43","1","last_update","1490272376"),
("44","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("45","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("46","1","_woocommerce_tracks_anon_id","woo:VFuZkik2vs01HPX7xxDD8W6f");




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
("1","admin","$P$Baj55dToZhFRa2rPYB9x8rzNPJO7oV1","admin","demobz@gmail.com","","2017-03-19 07:39:59","","0","vifonic_admin");




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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("26","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:730:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2017-03-23T12:32:56+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558185792");




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






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;