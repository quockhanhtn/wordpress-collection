SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w152`
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=MyISAM AUTO_INCREMENT=6604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/fashion","yes"),
("2","home","https://bizhostvn.com/w/fashion","yes"),
("3","blogname","fashion","yes"),
("4435","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","doivodesign@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","10","yes"),
("13","rss_use_excerpt","1","yes"),
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
("24","time_format","g:i A","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:231:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:11:\"sidebars/?$\";s:27:\"index.php?post_type=sidebar\";s:41:\"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:36:\"sidebars/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:28:\"sidebars/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=sidebar&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:32:\"featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:52:\"featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:47:\"featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:40:\"featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:47:\"featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:37:\"featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:43:\"featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:36:\"sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sidebars/([^/]+)/embed/?$\";s:40:\"index.php?sidebar=$matches[1]&embed=true\";s:29:\"sidebars/([^/]+)/trackback/?$\";s:34:\"index.php?sidebar=$matches[1]&tb=1\";s:49:\"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:44:\"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:37:\"sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&paged=$matches[2]\";s:44:\"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&cpage=$matches[2]\";s:34:\"sidebars/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?sidebar=$matches[1]&wc-api=$matches[3]\";s:40:\"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sidebar=$matches[1]&page=$matches[2]\";s:25:\"sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("6575","_transient_timeout__woocommerce_helper_subscriptions","1558013606","no"),
("6576","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("6577","_transient_timeout__woocommerce_helper_updates","1558055906","no"),
("6578","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558012706;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("6581","_transient_timeout_external_ip_address_103.74.117.155","1558617507","no"),
("6582","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("6506","_transient_timeout_yit_panel_sidebar_remote_widgets","1558245522","no"),
("6507","_transient_yit_panel_sidebar_remote_widgets","a:0:{}","no"),
("6508","_transient_timeout_yit_panel_sidebar_remote_widgets_update","1558098871","no"),
("6509","_transient_yit_panel_sidebar_remote_widgets_update","1","no"),
("6510","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558617272","no"),
("6511","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("6512","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558617273","no"),
("6513","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("6514","_transient_timeout_wc_report_sales_by_date","1558098874","no"),
("6515","_transient_wc_report_sales_by_date","a:7:{s:32:\"bfb42b335747ed181961647f9cbcd426\";a:0:{}s:32:\"d585ab3263b99d0b7992f8c0ac189af6\";a:0:{}s:32:\"eac21d54baaafb92d39aef9fb2cc4cee\";a:0:{}s:32:\"38c4f9f75968095ef7b36fd03d699dd0\";N;s:32:\"38d6a3245faf30c0639a9c45011866a0\";a:0:{}s:32:\"7eb3df42ef4ec2023592fa1d7a8d9a02\";a:0:{}s:32:\"c9f9acdbb275ce175d3f1e3c0b4d6386\";a:0:{}}","no"),
("6516","_transient_timeout_wc_admin_report","1558098874","no"),
("6517","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("6518","_transient_timeout_wc_low_stock_count","1560604474","no"),
("6519","_transient_wc_low_stock_count","0","no"),
("6520","_transient_timeout_wc_outofstock_count","1560604474","no"),
("6521","_transient_wc_outofstock_count","0","no"),
("6522","can_compress_scripts","0","no"),
("1708","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:7:{i:2;s:19:\"akismet/akismet.php\";i:3;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:4;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:5;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:27:\"woosidebars/woosidebars.php\";i:9;s:34:\"yith-woocommerce-wishlist/init.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("40","template","flatsome","yes"),
("41","stylesheet","flatsome","yes"),
("42","comment_whitelist","1","yes"),
("43","blacklist_keys","fuck","no"),
("44","comment_registration","","yes"),
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
("69","close_comments_for_old_posts","","yes"),
("70","close_comments_days_old","14","yes"),
("71","thread_comments","1","yes"),
("72","thread_comments_depth","5","yes"),
("73","page_comments","","yes"),
("74","comments_per_page","50","yes"),
("75","default_comments_page","newest","yes");
INSERT INTO bz_options VALUES
("76","comment_order","asc","yes"),
("77","sticky_posts","a:0:{}","yes"),
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:2:{s:31:\"advanced-access-manager/aam.php\";a:2:{i:0;s:3:\"AAM\";i:1;s:9:\"uninstall\";}s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("84","page_on_front","37","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes"),
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","WPLANG","","yes"),
("95","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-posts","a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("100","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:4:{i:0;s:10:\"nav_menu-4\";i:1;s:10:\"nav_menu-5\";i:2;s:10:\"nav_menu-6\";i:3;s:10:\"nav_menu-7\";}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("249","theme_mods_flatsome","a:81:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:3:\"top\";i:7;s:7:\"primary\";i:7;s:11:\"top_bar_nav\";i:12;s:14:\"primary_mobile\";i:14;}s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Thu, 16 Mar 2017 09:00:12 +0000\";s:18:\"custom_css_post_id\";i:175;s:25:\"header_height_transparent\";s:3:\"265\";s:11:\"topbar_left\";s:57:\"<strong class=\"uppercase\">ĐT,\n ZALO: 0909009009</strong>\";s:12:\"topbar_right\";s:47:\"<strong class=\"uppercase\">phản hồi</strong>\";s:17:\"header_top_height\";s:2:\"30\";s:21:\"newsletter_icon_style\";s:0:\"\";s:23:\"header_newsletter_label\";s:11:\"Thanh toán\";s:12:\"follow_style\";s:4:\"fill\";s:16:\"follow_pinterest\";s:0:\"\";s:13:\"follow_google\";s:10:\"http://url\";s:14:\"follow_youtube\";s:10:\"http://url\";s:9:\"topbar_bg\";s:19:\"rgba(10,10,10,0.74)\";s:9:\"site_logo\";s:75:\"https://bizhostvn.com/w/fashion/wp-content/uploads/2017/07/BIZHOST-DEMO.png\";s:22:\"topbar_elements_center\";a:0:{}s:13:\"header_height\";s:3:\"100\";s:23:\"header_account_register\";s:1:\"1\";s:18:\"account_icon_style\";s:4:\"fill\";s:15:\"cart_icon_style\";s:4:\"fill\";s:16:\"html_cart_header\";s:0:\"\";s:19:\"account_login_style\";s:8:\"lightbox\";s:19:\"header_search_width\";s:2:\"79\";s:15:\"nav_position_bg\";s:17:\"rgba(242,9,9,0.7)\";s:16:\"nav_style_bottom\";s:0:\"\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_position_color\";s:4:\"dark\";s:20:\"header_bottom_height\";s:2:\"39\";s:18:\"nav_spacing_bottom\";s:5:\"large\";s:8:\"footer_2\";s:1:\"0\";s:14:\"footer_1_color\";s:4:\"dark\";s:16:\"footer_left_text\";s:392:\"Copyright [ux_current_year] &copy; <strong>MOM Fashion.</strong>\n<a href=\"#\"> Thiết kế web chuẩn SEO </a> bởi webdesign <br>\n<strong>\n<a href =\"#\"> Đầm bầu </a> |\n<a href =\"#\"> Đầm bầu công sở </a> |\n<a href =\"#\"> Đầm bầu đẹp </a> |\n<a href =\"#\"> Váy bầu đẹp </a> |\n<a href =\"#\"> Áo bầu công sở </a> |\n<a href =\"#\"> Váy bầu mùa hè </a> \n</strong>\";s:17:\"footer_1_bg_color\";s:7:\"#595959\";s:17:\"footer_right_text\";s:0:\"\";s:15:\"html_custom_css\";s:1:\"\n\";s:14:\"header-block-1\";s:1:\"0\";s:20:\"header_account_title\";s:1:\"1\";s:11:\"dropdown_bg\";s:7:\"#F24D4D\";s:15:\"dropdown_border\";s:7:\"#F24D4D\";s:17:\"dropdown_nav_size\";s:2:\"86\";s:13:\"dropdown_text\";s:4:\"dark\";s:19:\"dropdown_text_style\";s:6:\"simple\";s:14:\"dropdown_arrow\";s:1:\"1\";s:15:\"dropdown_radius\";s:1:\"0\";s:13:\"color_primary\";s:7:\"#F24D4D\";s:20:\"header_height_sticky\";s:2:\"30\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";s:1:\"0\";s:15:\"color_secondary\";s:7:\"#F26A6A\";s:11:\"color_alert\";s:7:\"#F26363\";s:20:\"product_box_category\";s:1:\"0\";s:22:\"sale_bubble_percentage\";s:1:\"1\";s:12:\"logo_padding\";s:1:\"0\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("250","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_nav_menu","a:5:{i:4;a:2:{s:5:\"title\";s:27:\"HƯỚNG DẪN KHÁCH HÀNG\";s:8:\"nav_menu\";i:13;}i:5;a:2:{s:5:\"title\";s:23:\"THÔNG TIN KHÁCH HÀNG\";s:8:\"nav_menu\";i:20;}i:6;a:2:{s:5:\"title\";s:21:\"THÔNG TIN LIÊN QUAN\";s:8:\"nav_menu\";i:21;}i:7;a:2:{s:5:\"title\";s:22:\"KẾT NỐI VỚI SHOP\";s:8:\"nav_menu\";i:22;}s:12:\"_multiwidget\";i:1;}","yes"),
("105","cron","a:16:{i:1558046171;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558046184;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558049762;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558060554;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558060606;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558062135;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558077505;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558078491;a:1:{s:8:\"aam-cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558096406;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099105;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099115;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558099983;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558109905;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558112400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("106","theme_mods_twentyseventeen","a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:7;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489654811;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("155","category_children","a:0:{}","yes"),
("222","widget_akismet_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("220","tadv_admin_settings","a:1:{s:16:\"disabled_editors\";s:0:\"\";}","yes"),
("221","tadv_version","4000","yes"),
("219","tadv_settings","a:6:{s:9:\"toolbar_1\";s:93:\"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:116:\"formatselect,fontsizeselect,fontselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"options\";s:15:\"menubar,advlist\";s:7:\"plugins\";s:13:\"table,advlist\";}","yes"),
("201","current_theme","VIFONIC","yes"),
("192","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("202","theme_mods_twentysixteen","a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489641118;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("203","theme_switched","","yes"),
("208","theme_mods_hennyj","a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1489648157;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar-left\";a:0:{}s:14:\"sidebar-middle\";a:0:{}s:13:\"sidebar-right\";a:0:{}}}}","yes"),
("209","widget_posts-list-widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("210","widget_comments_avatar-widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("214","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012603;}","yes"),
("6525","_transient_timeout_wc_upgrade_notice_2.6.14","1558098925","no"),
("6526","_transient_wc_upgrade_notice_2.6.14","","no"),
("228","aam-uid","AAM58CA401DB5407","yes"),
("229","aam-extensions","a:21:{s:16:\"AAM_PLUS_PACKAGE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:13:\"AAM_MULTISITE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:15:\"AAM_ROLE_FILTER\";a:1:{s:6:\"status\";s:9:\"installed\";}s:18:\"AAM_ROLE_HIERARCHY\";a:1:{s:6:\"status\";s:9:\"installed\";}s:20:\"AAM_COMPLETE_PACKAGE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:15:\"AAM_CONFIGPRESS\";a:1:{s:6:\"status\";s:9:\"installed\";}s:11:\"AAM_PAYMENT\";a:1:{s:6:\"status\";s:9:\"installed\";}s:12:\"AAM_IP_CHECK\";a:1:{s:6:\"status\";s:9:\"installed\";}s:17:\"AAM_USER_ACTIVITY\";a:1:{s:6:\"status\";s:9:\"installed\";}s:25:\"AAM_PLUS_PACKAGE_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:29:\"AAM_COMPLETE_PACKAGE_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:21:\"AAM_IP_CHECK_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:27:\"AAM_ROLE_HIERARCHY_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:24:\"AAM_ROLE_FILTER_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:20:\"AAM_PAYMENT_EXTENDED\";a:1:{s:6:\"status\";s:9:\"installed\";}s:23:\"AAM_DEVELOPMENT_PACKAGE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:23:\"AAM_DEVELOPMENT_LICENSE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:23:\"AAM_COMPLETE_PACKAGE_V1\";a:1:{s:6:\"status\";s:9:\"installed\";}s:23:\"AAM_COMPLETE_PACKAGE_V2\";a:1:{s:6:\"status\";s:9:\"installed\";}s:13:\"AAM_ECOMMERCE\";a:1:{s:6:\"status\";s:9:\"installed\";}s:16:\"AAM_SOCIAL_LOGIN\";a:1:{s:6:\"status\";s:9:\"installed\";}}","yes"),
("240","_transient_twentyseventeen_categories","2","yes"),
("1344","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1297","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531239603;}","no"),
("251","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("253","woosidebars-version","1.4.3","yes"),
("254","woocommerce_default_country","VN","yes"),
("255","woocommerce_allowed_countries","all","yes"),
("256","woocommerce_all_except_countries","a:0:{}","yes"),
("257","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("258","woocommerce_ship_to_countries","","yes"),
("259","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("260","woocommerce_default_customer_address","geolocation","yes"),
("261","woocommerce_calc_taxes","no","yes"),
("262","woocommerce_demo_store","no","yes"),
("263","woocommerce_demo_store_notice","This is a demo store for testing purposes &mdash; no orders shall be fulfilled.","no"),
("264","woocommerce_currency","VND","yes"),
("265","woocommerce_currency_pos","right_space","yes"),
("266","woocommerce_price_thousand_sep",",","yes"),
("267","woocommerce_price_decimal_sep",".","yes"),
("268","woocommerce_price_num_decimals","2","yes"),
("269","woocommerce_weight_unit","kg","yes"),
("270","woocommerce_dimension_unit","cm","yes"),
("271","woocommerce_enable_review_rating","yes","yes"),
("272","woocommerce_review_rating_required","yes","no"),
("273","woocommerce_review_rating_verification_label","yes","no"),
("274","woocommerce_review_rating_verification_required","no","no"),
("275","woocommerce_shop_page_id","163","yes"),
("276","woocommerce_shop_page_display","","yes"),
("277","woocommerce_category_archive_display","","yes"),
("278","woocommerce_default_catalog_orderby","menu_order","yes"),
("279","woocommerce_cart_redirect_after_add","no","yes"),
("280","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("281","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}","yes"),
("282","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("283","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}","yes"),
("284","woocommerce_enable_lightbox","yes","yes"),
("285","woocommerce_manage_stock","yes","yes"),
("286","woocommerce_hold_stock_minutes","60","no"),
("287","woocommerce_notify_low_stock","yes","no"),
("288","woocommerce_notify_no_stock","yes","no"),
("289","woocommerce_stock_email_recipient","cuongphan1408@gmail.com","no"),
("290","woocommerce_notify_low_stock_amount","2","no"),
("291","woocommerce_notify_no_stock_amount","0","yes"),
("292","woocommerce_hide_out_of_stock_items","no","yes"),
("293","woocommerce_stock_format","","yes"),
("294","woocommerce_file_download_method","force","no"),
("295","woocommerce_downloads_require_login","no","no"),
("296","woocommerce_downloads_grant_access_after_payment","yes","no"),
("297","woocommerce_prices_include_tax","no","yes"),
("298","woocommerce_tax_based_on","shipping","yes"),
("299","woocommerce_shipping_tax_class","","yes");
INSERT INTO bz_options VALUES
("300","woocommerce_tax_round_at_subtotal","no","yes"),
("301","woocommerce_tax_classes","Reduced Rate\nZero Rate","yes"),
("302","woocommerce_tax_display_shop","excl","yes"),
("303","woocommerce_tax_display_cart","excl","no"),
("304","woocommerce_price_display_suffix","","yes"),
("305","woocommerce_tax_total_display","itemized","no"),
("306","woocommerce_enable_shipping_calc","yes","no"),
("307","woocommerce_shipping_cost_requires_address","no","no"),
("308","woocommerce_ship_to_destination","billing","no"),
("309","woocommerce_enable_coupons","yes","yes"),
("310","woocommerce_calc_discounts_sequentially","no","no"),
("311","woocommerce_enable_guest_checkout","yes","no"),
("312","woocommerce_force_ssl_checkout","no","yes"),
("313","woocommerce_unforce_ssl_checkout","no","yes"),
("314","woocommerce_cart_page_id","164","yes"),
("315","woocommerce_checkout_page_id","165","yes"),
("316","woocommerce_terms_page_id","","no"),
("317","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("318","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("319","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("320","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("321","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("322","woocommerce_myaccount_page_id","166","yes"),
("323","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("324","woocommerce_enable_myaccount_registration","no","no"),
("325","woocommerce_enable_checkout_login_reminder","yes","no"),
("326","woocommerce_registration_generate_username","yes","no"),
("327","woocommerce_registration_generate_password","no","no"),
("328","woocommerce_myaccount_orders_endpoint","orders","yes"),
("329","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("330","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("331","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("332","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("333","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("334","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("335","woocommerce_logout_endpoint","customer-logout","yes"),
("336","woocommerce_email_from_name","HelloWorld","no"),
("337","woocommerce_email_from_address","cuongphan1408@gmail.com","no"),
("338","woocommerce_email_header_image","","no"),
("339","woocommerce_email_footer_text","HelloWorld - Powered by WooCommerce","no"),
("340","woocommerce_email_base_color","#557da1","no"),
("341","woocommerce_email_background_color","#f5f5f5","no"),
("342","woocommerce_email_body_background_color","#fdfdfd","no"),
("343","woocommerce_email_text_color","#505050","no"),
("344","woocommerce_api_enabled","yes","yes"),
("369","woocommerce_meta_box_errors","a:0:{}","yes"),
("348","woocommerce_db_version","2.6.14","yes"),
("6572","woocommerce_version","3.6.2","yes"),
("350","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("535","_transient_woocommerce_cache_excluded_uris","a:6:{i:0;s:5:\"p=164\";i:1;s:6:\"/cart/\";i:2;s:5:\"p=165\";i:3;s:10:\"/checkout/\";i:4;s:5:\"p=166\";i:5;s:12:\"/my-account/\";}","yes"),
("352","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("353","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("354","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("355","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("356","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("357","widget_woocommerce_product_categories","a:2:{i:2;a:7:{s:5:\"title\";s:23:\"DANH MỤC SẢN PHẨM\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("358","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("359","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("360","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("361","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("362","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("363","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("364","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("365","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("370","yit_recently_activated","a:0:{}","yes"),
("375","yith_wcwl_frontend_css_colors","s:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";","yes"),
("376","yith_wcwl_enabled","yes","yes"),
("377","yith_wcwl_wishlist_title","My wishlist on HelloWorld","yes"),
("378","yith_wcwl_wishlist_page_id","36","yes"),
("379","yith_wcwl_redirect_cart","no","yes"),
("380","yith_wcwl_remove_after_add_to_cart","yes","yes"),
("381","yith_wcwl_add_to_wishlist_text","Add to Wishlist","yes"),
("382","yith_wcwl_browse_wishlist_text","Browse Wishlist","yes"),
("383","yith_wcwl_already_in_wishlist_text","The product is already in the wishlist!","yes"),
("384","yith_wcwl_product_added_text","Product added!","yes"),
("385","yith_wcwl_add_to_cart_text","Add to Cart","yes"),
("386","yith_wcwl_price_show","yes","yes"),
("387","yith_wcwl_add_to_cart_show","yes","yes"),
("388","yith_wcwl_stock_show","yes","yes"),
("389","yith_wcwl_show_dateadded","no","yes"),
("390","yith_wcwl_repeat_remove_button","no","yes"),
("391","yith_wcwl_use_button","no","yes"),
("392","yith_wcwl_custom_css","","yes"),
("393","yith_wcwl_frontend_css","yes","yes"),
("394","yith_wcwl_rounded_corners","yes","yes"),
("395","yith_wcwl_add_to_wishlist_icon","none","yes"),
("396","yith_wcwl_add_to_cart_icon","fa-shopping-cart","yes"),
("397","yith_wcwl_share_fb","yes","yes"),
("398","yith_wcwl_share_twitter","yes","yes"),
("399","yith_wcwl_share_pinterest","yes","yes"),
("400","yith_wcwl_share_googleplus","yes","yes"),
("401","yith_wcwl_share_email","yes","yes"),
("402","yith_wcwl_socials_title","My wishlist on HelloWorld","yes"),
("403","yith_wcwl_socials_text","","yes"),
("404","yith_wcwl_socials_image_url","","yes"),
("405","yith_wfbt_enable_integration","yes","yes"),
("406","yith-wcwl-page-id","36","yes"),
("407","yith_wcwl_version","2.0.16","yes"),
("408","yith_wcwl_db_version","2.0.0","yes"),
("409","yith_wcwl_general_videobox","a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:105:\"http://localhost:81/wordpress/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}","yes");
INSERT INTO bz_options VALUES
("412","_transient_shipping-transient-version","1489655595","yes"),
("417","page_for_posts","0","yes"),
("429","_transient_product_query-transient-version","1489721399","yes"),
("430","_transient_product-transient-version","1489721399","yes"),
("6570","product_cat_children","a:0:{}","yes"),
("6571","default_product_cat","32","yes"),
("6585","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558038595;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("6587","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558038598;s:7:\"checked\";a:1:{s:8:\"flatsome\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("6601","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558038600;s:7:\"checked\";a:12:{s:31:\"advanced-access-manager/aam.php\";s:7:\"5.9.6.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:30:\"db-prefix-change/db_prefix.php\";s:3:\"1.3\";s:9:\"hello.php\";s:3:\"1.6\";s:49:\"nextend-google-connect/nextend-google-connect.php\";s:5:\"1.6.1\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.20\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"5.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"2.2.10\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:31:\"advanced-access-manager/aam.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/advanced-access-manager\";s:4:\"slug\";s:23:\"advanced-access-manager\";s:6:\"plugin\";s:31:\"advanced-access-manager/aam.php\";s:11:\"new_version\";s:7:\"5.9.6.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/advanced-access-manager/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/advanced-access-manager.5.9.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/advanced-access-manager/assets/icon-256x256.png?rev=1466591\";s:2:\"1x\";s:76:\"https://ps.w.org/advanced-access-manager/assets/icon-128x128.png?rev=1466591\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/advanced-access-manager/assets/banner-1544x500.png?rev=1466591\";s:2:\"1x\";s:78:\"https://ps.w.org/advanced-access-manager/assets/banner-772x250.png?rev=1466591\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.20\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.20.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.2.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"2.2.10\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.10.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2027","dbprefix_old_dbprefix","wp_","yes"),
("2028","dbprefix_new","bz_","yes"),
("6492","wp_page_for_privacy_policy","0","yes"),
("6493","show_comments_cookies_opt_in","1","yes"),
("6394","_transient_timeout_wc_term_counts","1559945839","no"),
("6395","_transient_wc_term_counts","a:5:{i:18;s:1:\"1\";i:15;s:1:\"1\";i:19;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";}","no"),
("4436","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4437","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4438","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4439","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("6535","nsl-version","3.0.20","yes"),
("6377","_transient_timeout_wc_shipping_method_count_1_1489655595","1559914383","no"),
("6378","_transient_wc_shipping_method_count_1_1489655595","0","no"),
("6541","_transient_timeout_external_ip_address_113.173.5.101","1558617504","no"),
("6542","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("6543","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("6544","current_theme_supports_woocommerce","yes","yes"),
("6545","woocommerce_queue_flush_rewrite_rules","no","yes"),
("6574","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("6548","woocommerce_store_address","","yes"),
("6549","woocommerce_store_address_2","","yes"),
("6550","woocommerce_store_city","","yes"),
("6551","woocommerce_store_postcode","","yes"),
("6552","woocommerce_placeholder_image","205","yes"),
("6553","woocommerce_enable_reviews","yes","yes"),
("6554","woocommerce_shipping_debug_mode","no","yes"),
("6555","woocommerce_erasure_request_removes_order_data","no","no"),
("6556","woocommerce_erasure_request_removes_download_data","no","no"),
("6557","woocommerce_allow_bulk_remove_personal_data","no","no"),
("6558","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("6559","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("6560","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("6561","woocommerce_trash_pending_orders","","no"),
("6562","woocommerce_trash_failed_orders","","no"),
("6563","woocommerce_trash_cancelled_orders","","no"),
("6564","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("6565","woocommerce_allow_tracking","no","no"),
("6566","woocommerce_show_marketplace_suggestions","yes","no"),
("6567","woocommerce_single_image_width","600","yes"),
("6568","woocommerce_thumbnail_image_width","300","yes"),
("6569","woocommerce_checkout_highlight_required_fields","yes","yes"),
("6599","_site_transient_timeout_theme_roots","1558040397","no"),
("6600","_site_transient_theme_roots","a:1:{s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("6536","widget_nextend_social_login","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("6386","recovery_keys","a:0:{}","yes"),
("6494","db_upgraded","","yes"),
("6523","_transient_timeout_plugin_slugs","1558099003","no"),
("6524","_transient_plugin_slugs","a:13:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:31:\"advanced-access-manager/aam.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:30:\"db-prefix-change/db_prefix.php\";i:4;s:9:\"hello.php\";i:5;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:6;s:49:\"nextend-google-connect/nextend-google-connect.php\";i:7;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:8;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:9;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:27:\"woosidebars/woosidebars.php\";i:12;s:34:\"yith-woocommerce-wishlist/init.php\";}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=784 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("148","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:256;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/03/logo-vay-bau.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-vay-bau-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-vay-bau-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("147","50","_wp_attached_file","2017/03/logo-vay-bau.png"),
("135","46","_menu_item_menu_item_parent","0"),
("136","46","_menu_item_object_id","46"),
("137","46","_menu_item_object","custom"),
("141","46","_menu_item_url","#"),
("140","46","_menu_item_xfn",""),
("139","46","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("138","46","_menu_item_target",""),
("134","46","_menu_item_type","custom"),
("160","55","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("159","55","_menu_item_target",""),
("158","55","_menu_item_object","custom"),
("157","55","_menu_item_object_id","55"),
("156","55","_menu_item_menu_item_parent","0"),
("132","45","_menu_item_url","#"),
("131","45","_menu_item_xfn",""),
("130","45","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("129","45","_menu_item_target",""),
("128","45","_menu_item_object","custom"),
("127","45","_menu_item_object_id","45"),
("126","45","_menu_item_menu_item_parent","0"),
("125","45","_menu_item_type","custom"),
("734","93","_wc_review_count","0"),
("735","82","_wc_review_count","0"),
("736","83","_wc_review_count","0"),
("102","2","_edit_lock","1489655781:1"),
("103","36","_edit_lock","1489655806:1"),
("104","37","_edit_lock","1489804916:1"),
("105","37","_edit_last","1"),
("106","37","_footer","normal"),
("107","37","_wp_page_template","default"),
("155","55","_menu_item_type","custom"),
("161","55","_menu_item_xfn",""),
("162","55","_menu_item_url","#"),
("164","56","_menu_item_type","custom"),
("165","56","_menu_item_menu_item_parent","0"),
("166","56","_menu_item_object_id","56"),
("167","56","_menu_item_object","custom"),
("168","56","_menu_item_target",""),
("169","56","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("170","56","_menu_item_xfn",""),
("171","56","_menu_item_url","#"),
("173","57","_menu_item_type","custom"),
("174","57","_menu_item_menu_item_parent","0"),
("175","57","_menu_item_object_id","57"),
("176","57","_menu_item_object","custom"),
("177","57","_menu_item_target",""),
("178","57","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("179","57","_menu_item_xfn",""),
("180","57","_menu_item_url","#"),
("182","58","_menu_item_type","custom"),
("183","58","_menu_item_menu_item_parent","0"),
("184","58","_menu_item_object_id","58"),
("185","58","_menu_item_object","custom"),
("186","58","_menu_item_target",""),
("187","58","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("188","58","_menu_item_xfn",""),
("189","58","_menu_item_url","#"),
("191","59","_menu_item_type","custom"),
("192","59","_menu_item_menu_item_parent","0"),
("193","59","_menu_item_object_id","59"),
("194","59","_menu_item_object","custom"),
("195","59","_menu_item_target",""),
("196","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("197","59","_menu_item_xfn",""),
("198","59","_menu_item_url","#"),
("200","60","_menu_item_type","custom"),
("201","60","_menu_item_menu_item_parent","56"),
("202","60","_menu_item_object_id","60"),
("203","60","_menu_item_object","custom"),
("204","60","_menu_item_target",""),
("205","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("206","60","_menu_item_xfn",""),
("207","60","_menu_item_url","#"),
("209","61","_menu_item_type","custom"),
("210","61","_menu_item_menu_item_parent","56"),
("211","61","_menu_item_object_id","61"),
("212","61","_menu_item_object","custom"),
("213","61","_menu_item_target",""),
("214","61","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("215","61","_menu_item_xfn",""),
("216","61","_menu_item_url","#"),
("218","62","_menu_item_type","custom"),
("219","62","_menu_item_menu_item_parent","56"),
("220","62","_menu_item_object_id","62"),
("221","62","_menu_item_object","custom"),
("222","62","_menu_item_target",""),
("223","62","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("224","62","_menu_item_xfn",""),
("225","62","_menu_item_url","#"),
("227","63","_menu_item_type","custom"),
("228","63","_menu_item_menu_item_parent","56"),
("229","63","_menu_item_object_id","63"),
("230","63","_menu_item_object","custom"),
("231","63","_menu_item_target",""),
("232","63","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("233","63","_menu_item_xfn",""),
("234","63","_menu_item_url","#");
INSERT INTO bz_postmeta VALUES
("236","64","_menu_item_type","custom"),
("237","64","_menu_item_menu_item_parent","56"),
("238","64","_menu_item_object_id","64"),
("239","64","_menu_item_object","custom"),
("240","64","_menu_item_target",""),
("241","64","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("242","64","_menu_item_xfn",""),
("243","64","_menu_item_url","#"),
("729","166","_wp_page_template","default"),
("728","166","_footer","normal"),
("727","166","_edit_last","1"),
("726","166","_edit_lock","1489811013:1"),
("296","76","_edit_lock","1489721281:1"),
("581","128","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("580","128","_menu_item_target",""),
("579","128","_menu_item_object","custom"),
("578","128","_menu_item_object_id","128"),
("577","128","_menu_item_menu_item_parent","0"),
("765","76","_wc_review_count","0"),
("576","128","_menu_item_type","custom"),
("297","76","_edit_last","1"),
("298","77","_wp_attached_file","2017/03/ao-bau-cong-so-mfs006-263x380.png"),
("299","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:41:\"2017/03/ao-bau-cong-so-mfs006-263x380.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"ao-bau-cong-so-mfs006-263x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"ao-bau-cong-so-mfs006-263x380-208x300.png\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"ao-bau-cong-so-mfs006-263x380-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"ao-bau-cong-so-mfs006-263x380-263x300.png\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("300","76","_visibility","visible"),
("301","76","_stock_status","instock"),
("302","76","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("303","76","total_sales","0"),
("304","76","_downloadable","no"),
("305","76","_virtual","no"),
("306","76","_purchase_note",""),
("307","76","_featured","no"),
("308","76","_weight",""),
("309","76","_length",""),
("310","76","_width",""),
("311","76","_height",""),
("312","76","_sku",""),
("313","76","_product_attributes","a:0:{}"),
("314","76","_regular_price","250.000"),
("315","76","_sale_price","200.000"),
("316","76","_sale_price_dates_from",""),
("317","76","_sale_price_dates_to",""),
("318","76","_price","200.000"),
("319","76","_sold_individually",""),
("320","76","_manage_stock","no"),
("321","76","_backorders","no"),
("322","76","_stock",""),
("323","76","_upsell_ids","a:0:{}"),
("324","76","_crosssell_ids","a:0:{}"),
("325","76","_product_version","2.6.14"),
("326","76","_product_image_gallery",""),
("328","79","_edit_lock","1489661607:1"),
("329","79","_edit_last","1"),
("331","82","_edit_lock","1489662285:1"),
("332","82","_edit_last","1"),
("333","82","_visibility","visible"),
("334","82","_stock_status","instock"),
("335","82","_thumbnail_id","77"),
("336","82","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("337","82","total_sales","0"),
("338","82","_downloadable","no"),
("339","82","_virtual","no"),
("340","82","_purchase_note",""),
("341","82","_featured","no"),
("342","82","_weight",""),
("343","82","_length",""),
("344","82","_width",""),
("345","82","_height",""),
("346","82","_sku",""),
("347","82","_product_attributes","a:0:{}"),
("348","82","_regular_price","429.000"),
("349","82","_sale_price",""),
("350","82","_sale_price_dates_from",""),
("351","82","_sale_price_dates_to",""),
("352","82","_price","429.000"),
("353","82","_sold_individually",""),
("354","82","_manage_stock","no"),
("355","82","_backorders","no"),
("356","82","_stock",""),
("357","82","_upsell_ids","a:0:{}"),
("358","82","_crosssell_ids","a:0:{}"),
("359","82","_product_version","2.6.14"),
("360","82","_product_image_gallery",""),
("361","83","_edit_lock","1489662561:1"),
("362","83","_edit_last","1"),
("363","84","_wp_attached_file","2017/03/ao-bau-mua-he-mfs007-263x380.jpg"),
("364","84","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs007-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs007-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs007-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs007-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs007-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("365","85","_wp_attached_file","2017/03/ao-bau-mua-he-mfs008-263x380.jpg"),
("366","85","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs008-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs008-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs008-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs008-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs008-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("367","86","_wp_attached_file","2017/03/ao-bau-mua-he-mfs010-263x380.jpg"),
("368","86","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs010-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs010-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs010-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs010-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs010-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("369","87","_wp_attached_file","2017/03/ao-bau-mua-he-mfs012-263x380.jpg"),
("370","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs012-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs012-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs012-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs012-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs012-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("371","88","_wp_attached_file","2017/03/ao-bau-mua-he-mfs015-263x380.png"),
("372","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs015-263x380.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs015-263x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs015-263x380-208x300.png\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs015-263x380-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs015-263x380-263x300.png\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("373","89","_wp_attached_file","2017/03/ao-bau-mua-he-mfs017-263x380.jpg"),
("374","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/ao-bau-mua-he-mfs017-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs017-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs017-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs017-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ao-bau-mua-he-mfs017-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("375","90","_wp_attached_file","2017/03/dam-bau-cong-so-mfs021-263x380.png"),
("376","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:42:\"2017/03/dam-bau-cong-so-mfs021-263x380.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs021-263x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs021-263x380-208x300.png\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs021-263x380-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs021-263x380-263x300.png\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("377","91","_wp_attached_file","2017/03/dam-bau-cong-so-mfs022-263x380.png"),
("378","91","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:42:\"2017/03/dam-bau-cong-so-mfs022-263x380.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs022-263x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs022-263x380-208x300.png\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs022-263x380-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"dam-bau-cong-so-mfs022-263x380-263x300.png\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("379","92","_wp_attached_file","2017/03/dam-bau-mua-he-2017-263x380.jpg"),
("380","92","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:39:\"2017/03/dam-bau-mua-he-2017-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"dam-bau-mua-he-2017-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"dam-bau-mua-he-2017-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"dam-bau-mua-he-2017-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"dam-bau-mua-he-2017-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("381","83","_visibility","visible"),
("382","83","_stock_status","instock"),
("383","83","_thumbnail_id","92"),
("384","83","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("385","83","total_sales","0"),
("386","83","_downloadable","no"),
("387","83","_virtual","no"),
("388","83","_purchase_note",""),
("389","83","_featured","no"),
("390","83","_weight",""),
("391","83","_length",""),
("392","83","_width",""),
("393","83","_height",""),
("394","83","_sku",""),
("395","83","_product_attributes","a:0:{}"),
("396","83","_regular_price","600.000"),
("397","83","_sale_price",""),
("398","83","_sale_price_dates_from",""),
("399","83","_sale_price_dates_to",""),
("400","83","_price","600.000"),
("401","83","_sold_individually",""),
("402","83","_manage_stock","no"),
("403","83","_backorders","no"),
("404","83","_stock",""),
("405","83","_upsell_ids","a:0:{}"),
("406","83","_crosssell_ids","a:0:{}"),
("407","83","_product_version","2.6.14"),
("408","83","_product_image_gallery",""),
("409","93","_edit_lock","1489662573:1"),
("410","93","_edit_last","1"),
("411","93","_visibility","visible"),
("412","93","_stock_status","instock"),
("413","93","_thumbnail_id","91"),
("414","93","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("415","93","total_sales","0"),
("416","93","_downloadable","no"),
("417","93","_virtual","no"),
("418","93","_purchase_note",""),
("419","93","_featured","no"),
("420","93","_weight",""),
("421","93","_length",""),
("422","93","_width",""),
("423","93","_height",""),
("424","93","_sku",""),
("425","93","_product_attributes","a:0:{}"),
("426","93","_regular_price","150.000"),
("427","93","_sale_price",""),
("428","93","_sale_price_dates_from",""),
("429","93","_sale_price_dates_to",""),
("430","93","_price","150.000"),
("431","93","_sold_individually",""),
("432","93","_manage_stock","no"),
("433","93","_backorders","no"),
("434","93","_stock",""),
("435","93","_upsell_ids","a:0:{}"),
("436","93","_crosssell_ids","a:0:{}"),
("437","93","_product_version","2.6.14"),
("438","93","_product_image_gallery",""),
("439","95","_edit_lock","1489721126:1"),
("440","95","_edit_last","1"),
("441","95","_visibility","visible"),
("442","95","_stock_status","instock"),
("443","95","wc_productdata_options","a:1:{i:0;a:8:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("444","95","total_sales","0"),
("445","95","_downloadable","no"),
("446","95","_virtual","no"),
("447","95","_purchase_note",""),
("448","95","_featured","no"),
("449","95","_weight",""),
("450","95","_length",""),
("451","95","_width",""),
("452","95","_height",""),
("453","95","_sku",""),
("454","95","_product_attributes","a:0:{}"),
("455","95","_regular_price","230.000"),
("456","95","_sale_price",""),
("457","95","_sale_price_dates_from",""),
("458","95","_sale_price_dates_to",""),
("459","95","_price","230.000"),
("460","95","_sold_individually",""),
("461","95","_manage_stock","no"),
("462","95","_backorders","no"),
("463","95","_stock",""),
("464","95","_upsell_ids","a:0:{}"),
("465","95","_crosssell_ids","a:0:{}"),
("466","95","_product_version","2.6.14"),
("467","95","_product_image_gallery",""),
("468","37","_thumbnail_id",""),
("469","98","_wp_attached_file","2017/03/dam-bau-dep.jpg"),
("470","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:848;s:6:\"height\";i:350;s:4:\"file\";s:23:\"2017/03/dam-bau-dep.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-768x317.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"dam-bau-dep-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("471","99","_wp_attached_file","2017/03/vay-bau-dep-1.jpg"),
("472","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:848;s:6:\"height\";i:350;s:4:\"file\";s:25:\"2017/03/vay-bau-dep-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-768x317.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"vay-bau-dep-1-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("473","100","_wp_attached_file","2017/03/vay-bau-dep.jpg"),
("474","100","_wp_attachment_metadata","a:5:{s:5:\"width\";i:848;s:6:\"height\";i:350;s:4:\"file\";s:23:\"2017/03/vay-bau-dep.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-768x317.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vay-bau-dep-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("475","101","_wp_attached_file","2017/03/dam-bau-dep-1.jpg"),
("476","101","_wp_attachment_metadata","a:5:{s:5:\"width\";i:848;s:6:\"height\";i:350;s:4:\"file\";s:25:\"2017/03/dam-bau-dep-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-768x317.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"dam-bau-dep-1-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("477","95","_wc_rating_count","a:0:{}"),
("478","95","_wc_average_rating","0");
INSERT INTO bz_postmeta VALUES
("479","93","_wc_rating_count","a:0:{}"),
("480","93","_wc_average_rating","0"),
("481","83","_wc_rating_count","a:0:{}"),
("482","83","_wc_average_rating","0"),
("483","82","_wc_rating_count","a:0:{}"),
("484","82","_wc_average_rating","0"),
("485","76","_wc_rating_count","a:0:{}"),
("486","76","_wc_average_rating","0"),
("488","104","_edit_lock","1489664313:1"),
("489","104","_edit_last","1"),
("492","104","_thumbnail_id","86"),
("496","108","_edit_last","1"),
("495","108","_edit_lock","1489664364:1"),
("497","108","_thumbnail_id","84"),
("501","110","_edit_last","1"),
("500","110","_edit_lock","1489664418:1"),
("502","110","_thumbnail_id","89"),
("505","112","_edit_lock","1489665077:1"),
("507","112","_thumbnail_id","87"),
("506","112","_edit_last","1"),
("517","112","_wp_old_slug","nhung-mau-vay-bau-mua-he-dep-nhat-2017__trashed"),
("520","95","_wc_review_count","0"),
("521","118","_wp_attached_file","2017/03/vay-bau-mua-he-mfs030.jpg"),
("522","118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:409;s:6:\"height\";i:591;s:4:\"file\";s:33:\"2017/03/vay-bau-mua-he-mfs030.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"vay-bau-mua-he-mfs030-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"vay-bau-mua-he-mfs030-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"vay-bau-mua-he-mfs030-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"vay-bau-mua-he-mfs030-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("523","119","_wp_attached_file","2017/03/dam-bau-mua-he-mfs020.jpg"),
("524","119","_wp_attachment_metadata","a:5:{s:5:\"width\";i:409;s:6:\"height\";i:591;s:4:\"file\";s:33:\"2017/03/dam-bau-mua-he-mfs020.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"dam-bau-mua-he-mfs020-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"dam-bau-mua-he-mfs020-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"dam-bau-mua-he-mfs020-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"dam-bau-mua-he-mfs020-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("525","120","_wp_attached_file","2017/03/dam-bau-dep-mfw013-3-263x380.jpg"),
("526","120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:263;s:6:\"height\";i:380;s:4:\"file\";s:40:\"2017/03/dam-bau-dep-mfw013-3-263x380.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"dam-bau-dep-mfw013-3-263x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"dam-bau-dep-mfw013-3-263x380-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"dam-bau-dep-mfw013-3-263x380-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"dam-bau-dep-mfw013-3-263x380-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("527","95","_thumbnail_id","120"),
("528","76","_thumbnail_id","84"),
("529","122","_menu_item_type","custom"),
("530","122","_menu_item_menu_item_parent","0"),
("531","122","_menu_item_object_id","122"),
("532","122","_menu_item_object","custom"),
("533","122","_menu_item_target",""),
("534","122","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("535","122","_menu_item_xfn",""),
("536","122","_menu_item_url","#"),
("583","128","_menu_item_url","#"),
("538","123","_menu_item_type","custom"),
("539","123","_menu_item_menu_item_parent","0"),
("540","123","_menu_item_object_id","123"),
("541","123","_menu_item_object","custom"),
("542","123","_menu_item_target",""),
("543","123","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("544","123","_menu_item_xfn",""),
("545","123","_menu_item_url","#"),
("582","128","_menu_item_xfn",""),
("547","124","_menu_item_type","custom"),
("548","124","_menu_item_menu_item_parent","0"),
("549","124","_menu_item_object_id","124"),
("550","124","_menu_item_object","custom"),
("551","124","_menu_item_target",""),
("552","124","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("553","124","_menu_item_xfn",""),
("554","124","_menu_item_url","#"),
("556","125","_menu_item_type","custom"),
("557","125","_menu_item_menu_item_parent","0"),
("558","125","_menu_item_object_id","125"),
("559","125","_menu_item_object","custom"),
("560","125","_menu_item_target",""),
("561","125","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("562","125","_menu_item_xfn",""),
("563","125","_menu_item_url","#"),
("585","129","_menu_item_type","custom"),
("586","129","_menu_item_menu_item_parent","0"),
("587","129","_menu_item_object_id","129"),
("588","129","_menu_item_object","custom"),
("589","129","_menu_item_target",""),
("590","129","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("591","129","_menu_item_xfn",""),
("592","129","_menu_item_url","#"),
("594","130","_menu_item_type","custom"),
("595","130","_menu_item_menu_item_parent","0"),
("596","130","_menu_item_object_id","130"),
("597","130","_menu_item_object","custom"),
("598","130","_menu_item_target",""),
("599","130","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("600","130","_menu_item_xfn",""),
("601","130","_menu_item_url","#"),
("603","131","_menu_item_type","custom"),
("604","131","_menu_item_menu_item_parent","0"),
("605","131","_menu_item_object_id","131"),
("606","131","_menu_item_object","custom"),
("607","131","_menu_item_target",""),
("608","131","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("609","131","_menu_item_xfn",""),
("610","131","_menu_item_url","#"),
("621","133","_menu_item_type","custom"),
("622","133","_menu_item_menu_item_parent","0"),
("623","133","_menu_item_object_id","133"),
("624","133","_menu_item_object","custom"),
("625","133","_menu_item_target",""),
("626","133","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("627","133","_menu_item_xfn",""),
("628","133","_menu_item_url","#"),
("630","134","_menu_item_type","custom"),
("631","134","_menu_item_menu_item_parent","0"),
("632","134","_menu_item_object_id","134"),
("633","134","_menu_item_object","custom");
INSERT INTO bz_postmeta VALUES
("634","134","_menu_item_target",""),
("635","134","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("636","134","_menu_item_xfn",""),
("637","134","_menu_item_url","#"),
("639","135","_menu_item_type","custom"),
("640","135","_menu_item_menu_item_parent","0"),
("641","135","_menu_item_object_id","135"),
("642","135","_menu_item_object","custom"),
("643","135","_menu_item_target",""),
("644","135","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("645","135","_menu_item_xfn",""),
("646","135","_menu_item_url","#"),
("648","136","_menu_item_type","custom"),
("649","136","_menu_item_menu_item_parent","0"),
("650","136","_menu_item_object_id","136"),
("651","136","_menu_item_object","custom"),
("652","136","_menu_item_target",""),
("653","136","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("654","136","_menu_item_xfn",""),
("655","136","_menu_item_url","#"),
("666","138","_menu_item_type","custom"),
("667","138","_menu_item_menu_item_parent","0"),
("668","138","_menu_item_object_id","138"),
("669","138","_menu_item_object","custom"),
("670","138","_menu_item_target",""),
("671","138","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("672","138","_menu_item_xfn",""),
("673","138","_menu_item_url","#"),
("675","139","_menu_item_type","custom"),
("676","139","_menu_item_menu_item_parent","0"),
("677","139","_menu_item_object_id","139"),
("678","139","_menu_item_object","custom"),
("679","139","_menu_item_target",""),
("680","139","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("681","139","_menu_item_xfn",""),
("682","139","_menu_item_url","#"),
("684","140","_menu_item_type","custom"),
("685","140","_menu_item_menu_item_parent","0"),
("686","140","_menu_item_object_id","140"),
("687","140","_menu_item_object","custom"),
("688","140","_menu_item_target",""),
("689","140","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("690","140","_menu_item_xfn",""),
("691","140","_menu_item_url","#"),
("693","141","_menu_item_type","custom"),
("694","141","_menu_item_menu_item_parent","0"),
("695","141","_menu_item_object_id","141"),
("696","141","_menu_item_object","custom"),
("697","141","_menu_item_target",""),
("698","141","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("699","141","_menu_item_xfn",""),
("700","141","_menu_item_url","#"),
("768","196","_wp_attached_file","2017/07/1.png"),
("769","196","_wp_attachment_metadata","a:5:{s:5:\"width\";i:250;s:6:\"height\";i:75;s:4:\"file\";s:13:\"2017/07/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:12:\"1-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("776","200","_wp_attached_file","2017/07/BIZHOST-DEMO.png"),
("777","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2017/07/BIZHOST-DEMO.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("782","205","_wp_attached_file","woocommerce-placeholder.png"),
("783","205","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_posts VALUES
("2","1","2017-03-16 02:35:54","2017-03-16 02:35:54","Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\n\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích pi&#241;a coladas. (Và có thể gặp trong mưa.)</blockquote>\n\n...hoặc tương tự như:\n\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\n\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href=\"http://localhost:81/wordpress/wp-admin/\">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2017-03-16 02:35:54","2017-03-16 02:35:54","","0","http://localhost:81/wordpress/?page_id=2","0","page","","0"),
("46","1","2017-03-16 16:49:47","2017-03-16 09:49:47","","Phản hồi","","publish","closed","closed","","phan-hoi","","","2017-03-16 16:49:47","2017-03-16 09:49:47","","0","http://localhost:81/wordpress/?p=46","2","nav_menu_item","","0"),
("45","1","2017-03-16 16:49:47","2017-03-16 09:49:47","","Thanh toán","","publish","closed","closed","","thanh-toan","","","2017-03-16 16:49:47","2017-03-16 09:49:47","","0","http://localhost:81/wordpress/?p=45","1","nav_menu_item","","0"),
("36","1","2017-03-16 16:11:57","2017-03-16 09:11:57","[yith_wcwl_wishlist]","Wishlist","","publish","closed","closed","","wishlist","","","2017-03-16 16:11:57","2017-03-16 09:11:57","","0","http://localhost:81/wordpress/wishlist/","0","page","","0"),
("37","1","2017-03-16 16:19:36","2017-03-16 09:19:36","[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-03-23 21:18:20","2017-03-23 14:18:20","","0","http://localhost:81/wordpress/?page_id=37","0","page","","0"),
("38","1","2017-03-16 16:19:36","2017-03-16 09:19:36","dd","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 16:19:36","2017-03-16 09:19:36","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("50","1","2017-03-16 16:53:59","2017-03-16 09:53:59","","logo-vay-bau","","inherit","open","closed","","logo-vay-bau","","","2017-03-16 16:53:59","2017-03-16 09:53:59","","0","http://localhost:81/wordpress/wp-content/uploads/2017/03/logo-vay-bau.png","0","attachment","image/png","0"),
("55","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","TRANG CHỦ","","publish","closed","closed","","trang-chu","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=55","1","nav_menu_item","","0"),
("56","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","TẤT CẢ SẢN PHẨM","","publish","closed","closed","","tat-ca-san-pham","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=56","2","nav_menu_item","","0"),
("57","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","TƯ VẤN CHỌN SẢN PHẨM","","publish","closed","closed","","tu-van-chon-san-pham","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=57","8","nav_menu_item","","0"),
("58","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","HÌNH ẢNH TIN NHẮN PHẢN HỒI","","publish","closed","closed","","hinh-anh-tin-nhan-phan-hoi","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=58","9","nav_menu_item","","0"),
("59","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","LIÊN HỆ","","publish","closed","closed","","lien-he","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=59","10","nav_menu_item","","0"),
("60","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","ĐẦM BẦY CÔNG SỞ","","publish","closed","closed","","dam-bay-cong-so","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=60","3","nav_menu_item","","0"),
("61","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","VÁY BẦU XUÂN - HÈ","","publish","closed","closed","","vay-bau-xuan-he","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=61","4","nav_menu_item","","0"),
("62","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","VÁY BẦY THU - ĐÔNG","","publish","closed","closed","","vay-bay-thu-dong","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=62","5","nav_menu_item","","0"),
("63","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","ÁO BẦU THỜI TRANG","","publish","closed","closed","","ao-bau-thoi-trang","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=63","6","nav_menu_item","","0"),
("64","1","2017-03-16 17:13:58","2017-03-16 10:13:58","","ĐỒ BẦU MẶC Ở NHÀ","","publish","closed","closed","","do-bau-mac-o-nha","","","2017-03-16 17:13:58","2017-03-16 10:13:58","","0","http://localhost:81/wordpress/?p=64","7","nav_menu_item","","0"),
("128","1","2017-03-18 09:20:14","2017-03-18 02:20:14","","Hợp tác làm đại lí phân phối","","publish","closed","closed","","hop-tac-lam-dai-li-phan-phoi","","","2017-03-18 09:31:29","2017-03-18 02:31:29","","0","http://localhost:81/wordpress/?p=128","1","nav_menu_item","","0"),
("129","1","2017-03-18 09:20:14","2017-03-18 02:20:14","","Chính sách giao hàng","","publish","closed","closed","","chinh-sach-giao-hang","","","2017-03-18 09:31:29","2017-03-18 02:31:29","","0","http://localhost:81/wordpress/?p=129","2","nav_menu_item","","0"),
("130","1","2017-03-18 09:20:14","2017-03-18 02:20:14","","Chính sách đổi trả hàng","","publish","closed","closed","","chinh-sach-doi-tra-hang","","","2017-03-18 09:31:29","2017-03-18 02:31:29","","0","http://localhost:81/wordpress/?p=130","3","nav_menu_item","","0"),
("76","1","2017-03-16 17:50:36","2017-03-16 10:50:36","<img class=\"alignnone size-medium wp-image-77\" src=\"http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-cong-so-mfs006-263x380-208x300.png\" alt=\"\" width=\"208\" height=\"300\" />\n\n&nbsp;","Đầm Bầu MFW003","Đầm bầu đẹp dạo phố","publish","open","closed","","dam-bau-mfw003","","","2017-03-17 10:29:59","2017-03-17 03:29:59","","0","http://localhost:81/wordpress/?post_type=product&#038;p=76","0","product","","0"),
("77","1","2017-03-16 17:49:26","2017-03-16 10:49:26","","ao-bau-cong-so-mfs006-263x380","","inherit","open","closed","","ao-bau-cong-so-mfs006-263x380","","","2017-03-16 17:49:26","2017-03-16 10:49:26","","76","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-cong-so-mfs006-263x380.png","0","attachment","image/png","0"),
("79","1","2017-03-16 17:53:41","2017-03-16 10:53:41","fff","sản phẩm","","publish","closed","closed","","san-pham","","","2017-03-16 17:53:41","2017-03-16 10:53:41","","0","http://localhost:81/wordpress/?post_type=blocks&#038;p=79","0","blocks","","0"),
("80","1","2017-03-16 17:53:41","2017-03-16 10:53:41","fff","sản phẩm","","inherit","closed","closed","","79-revision-v1","","","2017-03-16 17:53:41","2017-03-16 10:53:41","","79","http://localhost:81/wordpress/79-revision-v1/","0","revision","","0"),
("82","1","2017-03-16 18:03:28","2017-03-16 11:03:28","","FVCD60","","publish","open","closed","","fvcd60","","","2017-03-16 18:03:28","2017-03-16 11:03:28","","0","http://localhost:81/wordpress/?post_type=product&#038;p=82","0","product","","0"),
("83","1","2017-03-16 18:07:57","2017-03-16 11:07:57","","GTYML","","publish","open","closed","","gtyml","","","2017-03-16 18:09:21","2017-03-16 11:09:21","","0","http://localhost:81/wordpress/?post_type=product&#038;p=83","0","product","","0"),
("84","1","2017-03-16 18:07:32","2017-03-16 11:07:32","","ao-bau-mua-he-mfs007-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs007-263x380","","","2017-03-16 18:07:32","2017-03-16 11:07:32","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs007-263x380.jpg","0","attachment","image/jpeg","0"),
("85","1","2017-03-16 18:07:34","2017-03-16 11:07:34","","ao-bau-mua-he-mfs008-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs008-263x380","","","2017-03-16 18:07:34","2017-03-16 11:07:34","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs008-263x380.jpg","0","attachment","image/jpeg","0"),
("86","1","2017-03-16 18:07:35","2017-03-16 11:07:35","","ao-bau-mua-he-mfs010-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs010-263x380","","","2017-03-16 18:07:35","2017-03-16 11:07:35","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs010-263x380.jpg","0","attachment","image/jpeg","0"),
("87","1","2017-03-16 18:07:36","2017-03-16 11:07:36","","ao-bau-mua-he-mfs012-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs012-263x380","","","2017-03-16 18:07:36","2017-03-16 11:07:36","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs012-263x380.jpg","0","attachment","image/jpeg","0"),
("88","1","2017-03-16 18:07:38","2017-03-16 11:07:38","","ao-bau-mua-he-mfs015-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs015-263x380","","","2017-03-16 18:07:38","2017-03-16 11:07:38","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs015-263x380.png","0","attachment","image/png","0"),
("89","1","2017-03-16 18:07:39","2017-03-16 11:07:39","","ao-bau-mua-he-mfs017-263x380","","inherit","open","closed","","ao-bau-mua-he-mfs017-263x380","","","2017-03-16 18:07:39","2017-03-16 11:07:39","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/ao-bau-mua-he-mfs017-263x380.jpg","0","attachment","image/jpeg","0"),
("90","1","2017-03-16 18:07:40","2017-03-16 11:07:40","","dam-bau-cong-so-mfs021-263x380","","inherit","open","closed","","dam-bau-cong-so-mfs021-263x380","","","2017-03-16 18:07:40","2017-03-16 11:07:40","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-cong-so-mfs021-263x380.png","0","attachment","image/png","0"),
("91","1","2017-03-16 18:07:41","2017-03-16 11:07:41","","dam-bau-cong-so-mfs022-263x380","","inherit","open","closed","","dam-bau-cong-so-mfs022-263x380","","","2017-03-16 18:07:41","2017-03-16 11:07:41","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-cong-so-mfs022-263x380.png","0","attachment","image/png","0"),
("92","1","2017-03-16 18:07:43","2017-03-16 11:07:43","","dam-bau-mua-he-2017-263x380","","inherit","open","closed","","dam-bau-mua-he-2017-263x380","","","2017-03-16 18:07:43","2017-03-16 11:07:43","","83","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-mua-he-2017-263x380.jpg","0","attachment","image/jpeg","0"),
("93","1","2017-03-16 18:08:23","2017-03-16 11:08:23","","TKIYSD","","publish","open","closed","","tkiysd","","","2017-03-16 18:09:33","2017-03-16 11:09:33","","0","http://localhost:81/wordpress/?post_type=product&#038;p=93","0","product","","0"),
("95","1","2017-03-16 18:11:05","2017-03-16 11:11:05","","KUTRW","","publish","open","closed","","kutrw","","","2017-03-17 10:27:43","2017-03-17 03:27:43","","0","http://localhost:81/wordpress/?post_type=product&#038;p=95","0","product","","0"),
("96","1","2017-03-16 18:12:43","2017-03-16 11:12:43","","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:12:43","2017-03-16 11:12:43","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("97","1","2017-03-16 18:20:27","2017-03-16 11:20:27","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:20:27","2017-03-16 11:20:27","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("98","1","2017-03-16 18:24:55","2017-03-16 11:24:55","","dam-bau-dep","","inherit","open","closed","","dam-bau-dep","","","2017-03-16 18:24:55","2017-03-16 11:24:55","","0","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-dep.jpg","0","attachment","image/jpeg","0"),
("99","1","2017-03-16 18:24:57","2017-03-16 11:24:57","","vay-bau-dep (1)","","inherit","open","closed","","vay-bau-dep-1","","","2017-03-16 18:24:57","2017-03-16 11:24:57","","0","http://localhost:81/wordpress/wp-content/uploads/2017/03/vay-bau-dep-1.jpg","0","attachment","image/jpeg","0"),
("100","1","2017-03-16 18:24:59","2017-03-16 11:24:59","","vay-bau-dep","","inherit","open","closed","","vay-bau-dep","","","2017-03-16 18:24:59","2017-03-16 11:24:59","","0","http://localhost:81/wordpress/wp-content/uploads/2017/03/vay-bau-dep.jpg","0","attachment","image/jpeg","0"),
("101","1","2017-03-16 18:26:33","2017-03-16 11:26:33","","dam-bau-dep-1","","inherit","open","closed","","dam-bau-dep-1","","","2017-03-16 18:26:33","2017-03-16 11:26:33","","0","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-dep-1.jpg","0","attachment","image/jpeg","0"),
("102","1","2017-03-16 18:29:42","2017-03-16 11:29:42","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:29:42","2017-03-16 11:29:42","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("104","1","2017-03-16 18:39:19","2017-03-16 11:39:19","<header class=\"entry-header\">\n<div class=\"entry-header-text entry-header-text-top text-center\">\n<h1 class=\"entry-title\">Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h1>\n<div class=\"entry-divider is-divider small\"></div>\n<div class=\"entry-meta uppercase is-xsmall\"><span class=\"posted-on\">POSTED ON <time class=\"entry-date published\" datetime=\"2017-01-06T11:49:34+00:00\"></time></span><span class=\"byline\">BY <span class=\"meta-author vcard\"><a class=\"url fn n\" href=\"http://vaybauthoitrang.com/author/admin\">ADMIN</a></span></span></div>\n</div>\n<div class=\"entry-image relative\">\n\n<a href=\"http://vaybauthoitrang.com/dam-bau-2017.html\"><img class=\"attachment-large size-large wp-post-image lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" sizes=\"(max-width: 413px) 100vw, 413px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" alt=\"đầm bầu 2017\" width=\"413\" height=\"240\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" /></a>\n<div class=\"badge absolute top post-date badge-outline\">\n<div class=\"badge-inner\"><span class=\"post-date-day\">06</span>\n<span class=\"post-date-month is-small\">Th1</span></div>\n</div>\n</div>\n</header>\n<div class=\"entry-content single-page\">\n<h2>Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h2>\nXu hướng <strong>đầm bầu 2017</strong> không phải chỉ với những bạn nữ có body đẹp và chuẩn mới diện được những chiếc váy xinh xắn và dễ thương. Ngay cả những mẹ bầu nếu như biết cách chọn cho mình những bộ đồ thời trang phù hợp thì sẽ rất đáng yêu đấy nhé. Trong thời gian mang bầu, các bạn vẫn phải đi làm, đi chơi hay tham gia nhiều hoạt động thường ngày khác. Bởi vậy, thời trang trong giai đoạn này luôn là mối quan tâm của những mẹ bầu để có thể làm sao cho thoải mái nhưng vẫn đẹp và duyên dáng nhất.\n\nSau đây Shop xin giới thiệu cho các mẹ 10 mẫu đầm bầu đẹp nhất dành cho mùa hè năm 2017\n\n</div>","Đầm bầu rẻ nhất | mẫu mã đa dạng | thiết kế đậm phong cách","","publish","open","open","","dam-bau-re-nhat-mau-ma-da-dang-thiet-ke-dam-phong-cach","","","2017-03-16 18:40:18","2017-03-16 11:40:18","","0","http://localhost:81/wordpress/?p=104","0","post","","0"),
("105","1","2017-03-16 18:38:41","2017-03-16 11:38:41","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:38:41","2017-03-16 11:38:41","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("106","1","2017-03-16 18:39:19","2017-03-16 11:39:19","<header class=\"entry-header\">\n<div class=\"entry-header-text entry-header-text-top  text-center\">\n<h1 class=\"entry-title\">Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h1>\n<div class=\"entry-divider is-divider small\"></div>\n<div class=\"entry-meta uppercase is-xsmall\"><span class=\"posted-on\">POSTED ON <time class=\"entry-date published\" datetime=\"2017-01-06T11:49:34+00:00\"></time></span><span class=\"byline\">BY <span class=\"meta-author vcard\"><a class=\"url fn n\" href=\"http://vaybauthoitrang.com/author/admin\">ADMIN</a></span></span></div>\n</div>\n<div class=\"entry-image relative\"><a href=\"http://vaybauthoitrang.com/dam-bau-2017.html\"><img class=\"attachment-large size-large wp-post-image lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" sizes=\"(max-width: 413px) 100vw, 413px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" alt=\"đầm bầu 2017\" width=\"413\" height=\"240\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" /></a>\n<div class=\"badge absolute top post-date badge-outline\">\n<div class=\"badge-inner\"><span class=\"post-date-day\">06</span>\n<span class=\"post-date-month is-small\">Th1</span></div>\n</div>\n</div>\n</header>\n<div class=\"entry-content single-page\">\n<h2>Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h2>\nXu hướng <strong>đầm bầu 2017</strong> không phải chỉ với những bạn nữ có body đẹp và chuẩn mới diện được những chiếc váy xinh xắn và dễ thương. Ngay cả những mẹ bầu nếu như biết cách chọn cho mình những bộ đồ thời trang phù hợp thì sẽ rất đáng yêu đấy nhé. Trong thời gian mang bầu, các bạn vẫn phải đi làm, đi chơi hay tham gia nhiều hoạt động thường ngày khác. Bởi vậy, thời trang trong giai đoạn này luôn là mối quan tâm của những mẹ bầu để có thể làm sao cho thoải mái nhưng vẫn đẹp và duyên dáng nhất.\n\nSau đây Shop xin giới thiệu cho các mẹ 10 mẫu đầm bầu đẹp nhất dành cho mùa hè năm 2017\n\n</div>","Đầm bầu rẻ nhất | mẫu mã đa dạng | thiết kế đậm phong cách","","inherit","closed","closed","","104-revision-v1","","","2017-03-16 18:39:19","2017-03-16 11:39:19","","104","http://localhost:81/wordpress/104-revision-v1/","0","revision","","0"),
("107","1","2017-03-16 18:40:18","2017-03-16 11:40:18","<header class=\"entry-header\">\n<div class=\"entry-header-text entry-header-text-top text-center\">\n<h1 class=\"entry-title\">Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h1>\n<div class=\"entry-divider is-divider small\"></div>\n<div class=\"entry-meta uppercase is-xsmall\"><span class=\"posted-on\">POSTED ON <time class=\"entry-date published\" datetime=\"2017-01-06T11:49:34+00:00\"></time></span><span class=\"byline\">BY <span class=\"meta-author vcard\"><a class=\"url fn n\" href=\"http://vaybauthoitrang.com/author/admin\">ADMIN</a></span></span></div>\n</div>\n<div class=\"entry-image relative\">\n\n<a href=\"http://vaybauthoitrang.com/dam-bau-2017.html\"><img class=\"attachment-large size-large wp-post-image lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" sizes=\"(max-width: 413px) 100vw, 413px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" alt=\"đầm bầu 2017\" width=\"413\" height=\"240\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3.png 413w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-2017-3-262x152.png 262w\" /></a>\n<div class=\"badge absolute top post-date badge-outline\">\n<div class=\"badge-inner\"><span class=\"post-date-day\">06</span>\n<span class=\"post-date-month is-small\">Th1</span></div>\n</div>\n</div>\n</header>\n<div class=\"entry-content single-page\">\n<h2>Đầm bầu 2017 xu hướng thời trang trẻ trung năng động</h2>\nXu hướng <strong>đầm bầu 2017</strong> không phải chỉ với những bạn nữ có body đẹp và chuẩn mới diện được những chiếc váy xinh xắn và dễ thương. Ngay cả những mẹ bầu nếu như biết cách chọn cho mình những bộ đồ thời trang phù hợp thì sẽ rất đáng yêu đấy nhé. Trong thời gian mang bầu, các bạn vẫn phải đi làm, đi chơi hay tham gia nhiều hoạt động thường ngày khác. Bởi vậy, thời trang trong giai đoạn này luôn là mối quan tâm của những mẹ bầu để có thể làm sao cho thoải mái nhưng vẫn đẹp và duyên dáng nhất.\n\nSau đây Shop xin giới thiệu cho các mẹ 10 mẫu đầm bầu đẹp nhất dành cho mùa hè năm 2017\n\n</div>","Đầm bầu rẻ nhất | mẫu mã đa dạng | thiết kế đậm phong cách","","inherit","closed","closed","","104-revision-v1","","","2017-03-16 18:40:18","2017-03-16 11:40:18","","104","http://localhost:81/wordpress/104-revision-v1/","0","revision","","0"),
("108","1","2017-03-16 18:41:36","2017-03-16 11:41:36","Ai cũng hiểu phụ nữ khi mang thai thì thân hình sẽ trở nên xấu đi như thế nào rồi. Nhưng đối với những người mẹ này thì được mang thai là một niềm hạnh phúc mà tạo hóa đã ban tặng cho mình. Chính vì vậy phụ nữ khi mang bầu thường rất quý trọng và nâng niu bào thai trong bụng của mình. Để che đậy một thân hình trong những tháng đầu tiên mang bầu nhiều mẹ đã tìm đến <strong>MomFashion. </strong>Bởi  nhiều mẹ biết rằng chính <strong>Mom Fashion </strong>mới có thể giúp họ che đậy những khuyết điểm mà trong thời kỳ mang thai để vẫn luôn đẹp lung linh và tự tin với vóc dáng của mình.\n\nChính vì sự tin yêu của khách hàng đã dành tặng cho chúng tôi. Chúng tôi không ngừng thiết kế ra những chiếc <a href=\"http://vaybauthoitrang.com/\"><strong>đầm bầu đẹp</strong></a> nhất dành tặng đến các chị em phụ nữ trên mọi miền tổ quốc yêu thương này.\n<h3>Mua đồ bầu ở đâu rẻ mà lại đẹp ở Hà Nội ?</h3>\nVới phương chân <strong>Bé khỏe- mẹ xinh</strong> nên <strong>MomFashion </strong>không ngừng thiết kế ra những chiếc váy bầu đẹp có chất liệu vải làm hoàn toàn từ vải tằm đũi, cotton 100%, dạ,….Các đường kim mũi chỉ rất tỉ mỉ, không hề bị lỗi cho dù là rất nhỏ. Tất cả các họa tiết trên thân váy nhìn vào cảm thấy rất sắc nét không tì vết. Các kiểu dáng đa dạng thích hợp với mọi đối tượng, lứa tuổi, phom dáng và môi trường làm việc. Nên đã thu hút được nhiều sự chọn cho các mẹ bầu đến với <strong>MomFashion.</strong>","Mua đồ bầu ở đâu rẻ đẹp Hà Nội uy tín, chất lượng","","publish","open","open","","mua-do-bau-o-dau-re-dep-ha-noi-uy-tin-chat-luong","","","2017-03-16 18:41:36","2017-03-16 11:41:36","","0","http://localhost:81/wordpress/?p=108","0","post","","0"),
("109","1","2017-03-16 18:41:36","2017-03-16 11:41:36","Ai cũng hiểu phụ nữ khi mang thai thì thân hình sẽ trở nên xấu đi như thế nào rồi. Nhưng đối với những người mẹ này thì được mang thai là một niềm hạnh phúc mà tạo hóa đã ban tặng cho mình. Chính vì vậy phụ nữ khi mang bầu thường rất quý trọng và nâng niu bào thai trong bụng của mình. Để che đậy một thân hình trong những tháng đầu tiên mang bầu nhiều mẹ đã tìm đến <strong>MomFashion. </strong>Bởi  nhiều mẹ biết rằng chính <strong>Mom Fashion </strong>mới có thể giúp họ che đậy những khuyết điểm mà trong thời kỳ mang thai để vẫn luôn đẹp lung linh và tự tin với vóc dáng của mình.\n\nChính vì sự tin yêu của khách hàng đã dành tặng cho chúng tôi. Chúng tôi không ngừng thiết kế ra những chiếc <a href=\"http://vaybauthoitrang.com/\"><strong>đầm bầu đẹp</strong></a> nhất dành tặng đến các chị em phụ nữ trên mọi miền tổ quốc yêu thương này.\n<h3>Mua đồ bầu ở đâu rẻ mà lại đẹp ở Hà Nội ?</h3>\nVới phương chân <strong>Bé khỏe- mẹ xinh</strong> nên <strong>MomFashion </strong>không ngừng thiết kế ra những chiếc váy bầu đẹp có chất liệu vải làm hoàn toàn từ vải tằm đũi, cotton 100%, dạ,….Các đường kim mũi chỉ rất tỉ mỉ, không hề bị lỗi cho dù là rất nhỏ. Tất cả các họa tiết trên thân váy nhìn vào cảm thấy rất sắc nét không tì vết. Các kiểu dáng đa dạng thích hợp với mọi đối tượng, lứa tuổi, phom dáng và môi trường làm việc. Nên đã thu hút được nhiều sự chọn cho các mẹ bầu đến với <strong>MomFashion.</strong>","Mua đồ bầu ở đâu rẻ đẹp Hà Nội uy tín, chất lượng","","inherit","closed","closed","","108-revision-v1","","","2017-03-16 18:41:36","2017-03-16 11:41:36","","108","http://localhost:81/wordpress/108-revision-v1/","0","revision","","0"),
("110","1","2017-03-16 18:42:35","2017-03-16 11:42:35","<h2><strong>áy bầu dự tiệc không thể thiếu trong tủ đồ của những mẹ trẻ đang mang bầu</strong></h2>\nBạn không thể thiếu vắng và tránh mặt trong những buổi tiệc lớn quan trọng như đám cưới của bạn bè của bạn được. Thay vì cứ né tránh gặp gỡ bạn bè, các mẹ bầu hãy để cho tâm lý của mình luôn luôn thoải mái nhất vì sự thoải mãi về tư tưởng của bạn lúc này rất tốt cho sự phát triển của em bé. Chính vì vậy ngay bây giờ bạn hãy chọn cho mình những chiếc <strong>váy bầu dự tiệc</strong> thật thoải mãi và sang trọng nhất với vóc dáng của một bà bầu .\n<figure id=\"attachment_1759\" class=\"wp-caption aligncenter\"><img class=\"lazy-load size-full wp-image-1759\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/vay-bau-mua-he-mfs026.png\" alt=\"váy bầu mùa hè mfs026\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/vay-bau-mua-he-mfs026.png\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/vay-bau-mua-he-mfs026\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\n<figure id=\"attachment_2169\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-2169 lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png\" sizes=\"(max-width: 409px) 100vw, 409px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-263x380.png 263w\" alt=\"Xem thông tin sản phẩm\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-263x380.png 263w\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/dam-bau-cong-so-mua-he-mfs029\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\n<figure id=\"attachment_1614\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-1614 lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png\" sizes=\"(max-width: 409px) 100vw, 409px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-263x380.png 263w\" alt=\"đầm bầu công sở mfs022\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-263x380.png 263w\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/dam-bau-cong-so-mfs022\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\nHiện nay <strong>thời trang <a href=\"http://vaybauthoitrang.com/\">váy bầu đẹp</a></strong> rất thịnh hành và phát triển vì vậy để chọn cho mình một chiếc <strong>váy bầu dự tiệc</strong> đẹp không phải là chuyện khó. Nếu khi mẹ bầu đang mang thai trong giai đoạn 3 tháng đầu thì lúc này vóc dáng của bạn vẫn còn thon thả như thời con gái. Lúc này chúng ta có thể chọn nhưng chiếc váy bầu suông ngắn đến đầu gối, hoặc những chiếc váy hơi ôm sát nhưng chất liệu vải phải có độ co giãn tốt nhất.","Váy bầu dự tiệc không thể thiếu trong tủ đồ của mẹ trẻ","","publish","open","open","","vay-bau-du-tiec-khong-the-thieu-trong-tu-do-cua-me-tre","","","2017-03-16 18:42:35","2017-03-16 11:42:35","","0","http://localhost:81/wordpress/?p=110","0","post","","0"),
("111","1","2017-03-16 18:42:35","2017-03-16 11:42:35","<h2><strong>áy bầu dự tiệc không thể thiếu trong tủ đồ của những mẹ trẻ đang mang bầu</strong></h2>\nBạn không thể thiếu vắng và tránh mặt trong những buổi tiệc lớn quan trọng như đám cưới của bạn bè của bạn được. Thay vì cứ né tránh gặp gỡ bạn bè, các mẹ bầu hãy để cho tâm lý của mình luôn luôn thoải mái nhất vì sự thoải mãi về tư tưởng của bạn lúc này rất tốt cho sự phát triển của em bé. Chính vì vậy ngay bây giờ bạn hãy chọn cho mình những chiếc <strong>váy bầu dự tiệc</strong> thật thoải mãi và sang trọng nhất với vóc dáng của một bà bầu .\n<figure id=\"attachment_1759\" class=\"wp-caption aligncenter\"><img class=\"lazy-load size-full wp-image-1759\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/vay-bau-mua-he-mfs026.png\" alt=\"váy bầu mùa hè mfs026\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/vay-bau-mua-he-mfs026.png\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/vay-bau-mua-he-mfs026\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\n<figure id=\"attachment_2169\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-2169 lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png\" sizes=\"(max-width: 409px) 100vw, 409px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-263x380.png 263w\" alt=\"Xem thông tin sản phẩm\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/01/dam-bau-mua-he-mfs029-263x380.png 263w\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/dam-bau-cong-so-mua-he-mfs029\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\n<figure id=\"attachment_1614\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-1614 lazy-load-active\" src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png\" sizes=\"(max-width: 409px) 100vw, 409px\" srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-263x380.png 263w\" alt=\"đầm bầu công sở mfs022\" width=\"409\" height=\"591\" data-src=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png\" data-srcset=\"http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022.png 409w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-112x162.png 112w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-100x144.png 100w, http://vaybauthoitrang.com/wp-content/uploads/2017/02/dam-bau-cong-so-mfs022-263x380.png 263w\" /><figcaption class=\"wp-caption-text\"><center><strong><a href=\"http://vaybauthoitrang.com/san-pham/dam-bau-cong-so-mfs022\">Xem thông tin sản phẩm</a></strong></center></figcaption></figure>\nHiện nay <strong>thời trang <a href=\"http://vaybauthoitrang.com/\">váy bầu đẹp</a></strong> rất thịnh hành và phát triển vì vậy để chọn cho mình một chiếc <strong>váy bầu dự tiệc</strong> đẹp không phải là chuyện khó. Nếu khi mẹ bầu đang mang thai trong giai đoạn 3 tháng đầu thì lúc này vóc dáng của bạn vẫn còn thon thả như thời con gái. Lúc này chúng ta có thể chọn nhưng chiếc váy bầu suông ngắn đến đầu gối, hoặc những chiếc váy hơi ôm sát nhưng chất liệu vải phải có độ co giãn tốt nhất.","Váy bầu dự tiệc không thể thiếu trong tủ đồ của mẹ trẻ","","inherit","closed","closed","","110-revision-v1","","","2017-03-16 18:42:35","2017-03-16 11:42:35","","110","http://localhost:81/wordpress/110-revision-v1/","0","revision","","0"),
("112","1","2017-03-16 18:43:14","2017-03-16 11:43:14","<h2>Top những mẫu váy bầu mùa hè đẹp nhất dành cho năm 2017</h2>\nVào những ngày hè oi bức, bà bầu với muôn vàn trăn trở, từ việc chăm con, lo kinh tế, săn sóc gia đình, lại thêm những suy nghĩ vu vơ chẳng ai thấu hiểu. <strong>“Làm thế nào để mang bầu mà vẫn luôn xinh đẹp trong mắt mọi người xung quanh và quan trọng nhất là luôn cuốn hút trong mắt ông xã của mình đây?”</strong>. Đó là một câu hỏi mà các mẹ luôn trăn trở…\n\nKhi bầu, các chị sẽ phải dừng lại tất cả những bộ cánh xinh đẹp cho dáng thon gọn trước đó, bởi bụng bầu sẽ lớn dần theo thời gian, mặc gì hôm nay luôn là câu hỏi thường trực của các chị mỗi sáng sớm thức dậy. Thời gian eo hẹp lại càng khiến các chị cảm thấy buồn phiền vì không có thời gian mua sắm và tìm hiểu trang phục phù hợp. Nhưng thực chất, mua sắm đang ngày càng trở nên dễ dàng hơn nhờ các phương tiện thông tin đại chúng, đơn giản chỉ là ngồi trước một chiếc máy vi tính, lướt mạng và hỏi <strong>“anh Google”</strong>, hoặc truy cập <strong>facebook</strong> để tiếp cận các <strong><a class=\"external\" href=\"https://www.facebook.com/dambaudepxinh/\" target=\"_blank\" rel=\"nofollow\">fanpage thời trang</a></strong>, các chị sẽ tìm thấy vô số cho mình những lời khuyên hữu ích, những mẫu áo váy <strong><a href=\"http://vaybauthoitrang.com/\">đầm xinh đẹp</a></strong> hoặc một địa chỉ tin cậy để gửi gắm.\n\nTuy nhiên, làm sao để chọn được một chiếc đầm ưng ý mặc trong những ngày hè giữa vô vàn những mẫu thời trang cập nhật liên tục hàng ngày như hiện nay lại một câu hỏi không hề dễ đối với các mẹ bầu. Với nhiều năm kinh nghiệm kinh doanh trong lĩnh vực áo, váy đầm bầu thời trang, <strong>MomFashion Shop</strong> xin giới thiệu với các chị, các mẹ một số mẫu <strong>váy bầu mùa hè</strong> đẹp nhất năm 2017 cùng những gợi ý để các chị tự tin diện đồ xuống phố.\n<h3>1. Những mẫu đầm bầu mùa hè, váy bầu mùa hè dành cho năm 2017</h3>\nNếu <strong>mùa hè</strong> thường làm các mẹ khó chịu vì thời tiết không mấy mát mẻ và đổ nhiều mồ hôi, thì những chiếc <strong>váy bầu mùa hè</strong> dáng suông sẽ vô cùng phù hợp và tiện lợi. Bởi những mẫu suông thường đơn giản, không rườm rà về kiểu dáng nhưng lại hết sức phong phú về màu sắc với độ rộng vừa phải và rất dễ cử động","Những mẫu váy bầu mùa hè đẹp nhất 2017","","publish","open","open","","nhung-mau-vay-bau-mua-he-dep-nhat-2017","","","2017-03-16 18:57:19","2017-03-16 11:57:19","","0","http://localhost:81/wordpress/?p=112","0","post","","0"),
("113","1","2017-03-16 18:43:14","2017-03-16 11:43:14","<h2>Top những mẫu váy bầu mùa hè đẹp nhất dành cho năm 2017</h2>\nVào những ngày hè oi bức, bà bầu với muôn vàn trăn trở, từ việc chăm con, lo kinh tế, săn sóc gia đình, lại thêm những suy nghĩ vu vơ chẳng ai thấu hiểu. <strong>“Làm thế nào để mang bầu mà vẫn luôn xinh đẹp trong mắt mọi người xung quanh và quan trọng nhất là luôn cuốn hút trong mắt ông xã của mình đây?”</strong>. Đó là một câu hỏi mà các mẹ luôn trăn trở…\n\nKhi bầu, các chị sẽ phải dừng lại tất cả những bộ cánh xinh đẹp cho dáng thon gọn trước đó, bởi bụng bầu sẽ lớn dần theo thời gian, mặc gì hôm nay luôn là câu hỏi thường trực của các chị mỗi sáng sớm thức dậy. Thời gian eo hẹp lại càng khiến các chị cảm thấy buồn phiền vì không có thời gian mua sắm và tìm hiểu trang phục phù hợp. Nhưng thực chất, mua sắm đang ngày càng trở nên dễ dàng hơn nhờ các phương tiện thông tin đại chúng, đơn giản chỉ là ngồi trước một chiếc máy vi tính, lướt mạng và hỏi <strong>“anh Google”</strong>, hoặc truy cập <strong>facebook</strong> để tiếp cận các <strong><a class=\"external\" href=\"https://www.facebook.com/dambaudepxinh/\" target=\"_blank\" rel=\"nofollow\">fanpage thời trang</a></strong>, các chị sẽ tìm thấy vô số cho mình những lời khuyên hữu ích, những mẫu áo váy <strong><a href=\"http://vaybauthoitrang.com/\">đầm xinh đẹp</a></strong> hoặc một địa chỉ tin cậy để gửi gắm.\n\nTuy nhiên, làm sao để chọn được một chiếc đầm ưng ý mặc trong những ngày hè giữa vô vàn những mẫu thời trang cập nhật liên tục hàng ngày như hiện nay lại một câu hỏi không hề dễ đối với các mẹ bầu. Với nhiều năm kinh nghiệm kinh doanh trong lĩnh vực áo, váy đầm bầu thời trang, <strong>MomFashion Shop</strong> xin giới thiệu với các chị, các mẹ một số mẫu <strong>váy bầu mùa hè</strong> đẹp nhất năm 2017 cùng những gợi ý để các chị tự tin diện đồ xuống phố.\n<h3>1. Những mẫu đầm bầu mùa hè, váy bầu mùa hè dành cho năm 2017</h3>\nNếu <strong>mùa hè</strong> thường làm các mẹ khó chịu vì thời tiết không mấy mát mẻ và đổ nhiều mồ hôi, thì những chiếc <strong>váy bầu mùa hè</strong> dáng suông sẽ vô cùng phù hợp và tiện lợi. Bởi những mẫu suông thường đơn giản, không rườm rà về kiểu dáng nhưng lại hết sức phong phú về màu sắc với độ rộng vừa phải và rất dễ cử động","Những mẫu váy bầu mùa hè đẹp nhất 2017","","inherit","closed","closed","","112-revision-v1","","","2017-03-16 18:43:14","2017-03-16 11:43:14","","112","http://localhost:81/wordpress/112-revision-v1/","0","revision","","0"),
("114","1","2017-03-16 18:46:52","2017-03-16 11:46:52","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:46:52","2017-03-16 11:46:52","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("115","1","2017-03-16 18:47:59","2017-03-16 11:47:59","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-16 18:47:59","2017-03-16 11:47:59","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("118","1","2017-03-17 10:27:31","2017-03-17 03:27:31","","vay-bau-mua-he-mfs030","","inherit","open","closed","","vay-bau-mua-he-mfs030","","","2017-03-17 10:27:31","2017-03-17 03:27:31","","95","http://localhost:81/wordpress/wp-content/uploads/2017/03/vay-bau-mua-he-mfs030.jpg","0","attachment","image/jpeg","0"),
("119","1","2017-03-17 10:27:32","2017-03-17 03:27:32","","dam-bau-mua-he-mfs020","","inherit","open","closed","","dam-bau-mua-he-mfs020","","","2017-03-17 10:27:32","2017-03-17 03:27:32","","95","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-mua-he-mfs020.jpg","0","attachment","image/jpeg","0"),
("120","1","2017-03-17 10:27:33","2017-03-17 03:27:33","","dam-bau-dep-mfw013-3-263x380","","inherit","open","closed","","dam-bau-dep-mfw013-3-263x380","","","2017-03-17 10:27:33","2017-03-17 03:27:33","","95","http://localhost:81/wordpress/wp-content/uploads/2017/03/dam-bau-dep-mfw013-3-263x380.jpg","0","attachment","image/jpeg","0"),
("122","1","2017-03-18 09:10:33","2017-03-18 02:10:33","","Hướng dẫn mua hàng","","publish","closed","closed","","huong-dan-mua-hang","","","2017-03-18 09:31:02","2017-03-18 02:31:02","","0","http://localhost:81/wordpress/?p=122","1","nav_menu_item","","0"),
("123","1","2017-03-18 09:10:33","2017-03-18 02:10:33","","Hướng dẫn giao hàng","","publish","closed","closed","","huong-dan-giao-hang","","","2017-03-18 09:31:02","2017-03-18 02:31:02","","0","http://localhost:81/wordpress/?p=123","2","nav_menu_item","","0"),
("124","1","2017-03-18 09:10:33","2017-03-18 02:10:33","","Cước phí thanh toán","","publish","closed","closed","","cuoc-phi-giao-hang","","","2017-03-18 09:31:02","2017-03-18 02:31:02","","0","http://localhost:81/wordpress/?p=124","3","nav_menu_item","","0"),
("125","1","2017-03-18 09:10:33","2017-03-18 02:10:33","","Hình thức thanh toán","","publish","closed","closed","","hinh-thuc-thanh-toan","","","2017-03-18 09:31:02","2017-03-18 02:31:02","","0","http://localhost:81/wordpress/?p=125","4","nav_menu_item","","0"),
("131","1","2017-03-18 09:20:14","2017-03-18 02:20:14","","Đối tác của chúng tôi","","publish","closed","closed","","doi-tac-cua-chung-toi","","","2017-03-18 09:31:29","2017-03-18 02:31:29","","0","http://localhost:81/wordpress/?p=131","4","nav_menu_item","","0"),
("133","1","2017-03-18 09:23:33","2017-03-18 02:23:33","","Feetback","","publish","closed","closed","","feetback","","","2017-03-18 09:31:46","2017-03-18 02:31:46","","0","http://localhost:81/wordpress/?p=133","1","nav_menu_item","","0"),
("134","1","2017-03-18 09:23:33","2017-03-18 02:23:33","","Sản phẩm","","publish","closed","closed","","san-pham","","","2017-03-18 09:31:46","2017-03-18 02:31:46","","0","http://localhost:81/wordpress/?p=134","2","nav_menu_item","","0"),
("135","1","2017-03-18 09:23:33","2017-03-18 02:23:33","","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2017-03-18 09:31:46","2017-03-18 02:31:46","","0","http://localhost:81/wordpress/?p=135","3","nav_menu_item","","0"),
("136","1","2017-03-18 09:23:33","2017-03-18 02:23:33","","Thanh toán","","publish","closed","closed","","thanh-toan-2","","","2017-03-18 09:31:46","2017-03-18 02:31:46","","0","http://localhost:81/wordpress/?p=136","4","nav_menu_item","","0"),
("138","1","2017-03-18 09:28:07","2017-03-18 02:28:07","","ZALO: 0983.059.683","","publish","closed","closed","","zalo-0983-059-683","","","2017-03-18 09:32:11","2017-03-18 02:32:11","","0","http://localhost:81/wordpress/?p=138","1","nav_menu_item","","0"),
("139","1","2017-03-18 09:28:07","2017-03-18 02:28:07","","Fanpage","","publish","closed","closed","","fanpage","","","2017-03-18 09:32:11","2017-03-18 02:32:11","","0","http://localhost:81/wordpress/?p=139","2","nav_menu_item","","0"),
("140","1","2017-03-18 09:28:07","2017-03-18 02:28:07","","Youtube","","publish","closed","closed","","youtube","","","2017-03-18 09:32:11","2017-03-18 02:32:11","","0","http://localhost:81/wordpress/?p=140","3","nav_menu_item","","0"),
("141","1","2017-03-18 09:28:07","2017-03-18 02:28:07","","Liên hệ","","publish","closed","closed","","lien-he-2","","","2017-03-18 09:32:11","2017-03-18 02:32:11","","0","http://localhost:81/wordpress/?p=141","4","nav_menu_item","","0"),
("145","1","2017-03-18 09:57:14","2017-03-18 02:57:14","[row]\n\n[col span=\"4\" span__sm=\"12\" bg_color=\"rgba(242, 9, 9, 0.7)\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 09:57:14","2017-03-18 02:57:14","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("146","1","2017-03-18 10:04:13","2017-03-18 03:04:13","[row]\n\n[col span=\"4\" span__sm=\"12\" bg_color=\"rgb(255,255,255)\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:04:13","2017-03-18 03:04:13","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("148","1","2017-03-18 10:13:38","2017-03-18 03:13:38","[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:13:38","2017-03-18 03:13:38","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("150","1","2017-03-18 10:26:25","2017-03-18 03:26:25","[row]\n\n[col span=\"4\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:26:25","2017-03-18 03:26:25","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("151","1","2017-03-18 10:27:25","2017-03-18 03:27:25","[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:27:25","2017-03-18 03:27:25","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("152","1","2017-03-18 10:27:59","2017-03-18 03:27:59","[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"bold-center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"bold-center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:27:59","2017-03-18 03:27:59","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("153","1","2017-03-18 10:29:16","2017-03-18 03:29:16","[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products]\n\n[title style=\"center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products]\n\n[title style=\"center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products]\n\n[title style=\"center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-18 10:29:16","2017-03-18 03:29:16","","37","http://localhost:81/wordpress/37-revision-v1/","0","revision","","0"),
("163","1","2017-03-18 11:22:26","2017-03-18 04:22:26","","Shop","","publish","closed","closed","","shop","","","2017-03-18 11:22:26","2017-03-18 04:22:26","","0","http://localhost:81/wordpress/shop/","0","page","","0"),
("164","1","2017-03-18 11:22:26","2017-03-18 04:22:26","[woocommerce_cart]","Cart","","publish","closed","closed","","cart","","","2017-03-18 11:22:26","2017-03-18 04:22:26","","0","http://localhost:81/wordpress/cart/","0","page","","0"),
("165","1","2017-03-18 11:22:26","2017-03-18 04:22:26","[woocommerce_checkout]","Checkout","","publish","closed","closed","","checkout","","","2017-03-18 11:22:26","2017-03-18 04:22:26","","0","http://localhost:81/wordpress/checkout/","0","page","","0"),
("166","1","2017-03-18 11:22:26","2017-03-18 04:22:26","[woocommerce_my_account]","My Account","","publish","closed","closed","","my-account","","","2017-03-18 11:23:56","2017-03-18 04:23:56","","0","http://localhost:81/wordpress/my-account/","0","page","","0"),
("167","1","2017-03-18 11:23:16","2017-03-18 04:23:16","[woocommerce_my_account]","Đăng ký / Đăng nhập","","inherit","closed","closed","","166-revision-v1","","","2017-03-18 11:23:16","2017-03-18 04:23:16","","166","http://localhost:81/wordpress/166-revision-v1/","0","revision","","0"),
("168","1","2017-03-18 11:23:56","2017-03-18 04:23:56","[woocommerce_my_account]","My Account","","inherit","closed","closed","","166-revision-v1","","","2017-03-18 11:23:56","2017-03-18 04:23:56","","166","http://localhost:81/wordpress/166-revision-v1/","0","revision","","0"),
("175","1","2017-03-23 19:03:00","2017-03-23 12:03:00","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n .is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n#wide-nav div ul li a {\n	color: #fff}\n#wide-nav div ul li a:hover {\n	color: #f0f0f0}\n.section-title i {color: #4285f4}\n.section-title-center span {color:#4285f4}\n.title-wrapper ","flatsome","","publish","closed","closed","","flatsome","","","2017-03-23 21:15:20","2017-03-23 14:15:20","","0","http://fashion.fonicweb.com/flatsome/","0","custom_css","","0"),
("176","1","2017-03-23 19:03:00","2017-03-23 12:03:00","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n.is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n","flatsome","","inherit","closed","closed","","175-revision-v1","","","2017-03-23 19:03:00","2017-03-23 12:03:00","","175","http://fashion.fonicweb.com/175-revision-v1/","0","revision","","0"),
("179","1","2017-03-23 19:20:07","2017-03-23 12:20:07","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n.is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n#wide-nav div ul li a {\n	color: #fff}\n#wide-nav div ul li a:hover {\n	color: #f0f0f0}","flatsome","","inherit","closed","closed","","175-revision-v1","","","2017-03-23 19:20:07","2017-03-23 12:20:07","","175","http://fashion.fonicweb.com/175-revision-v1/","0","revision","","0"),
("181","1","2017-03-23 19:40:14","2017-03-23 12:40:14","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n.is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n#wide-nav div ul li a {\n	color: #fff}\n#wide-nav div ul li a:hover {\n	color: #f0f0f0}\ni {color: #4285f4}\n.section-title-center span {color:#4285f4}\n.title-wrapper ","flatsome","","inherit","closed","closed","","175-revision-v1","","","2017-03-23 19:40:14","2017-03-23 12:40:14","","175","http://fashion.fonicweb.com/175-revision-v1/","0","revision","","0"),
("184","1","2017-03-23 19:45:09","2017-03-23 12:45:09","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n#footer .is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n#wide-nav div ul li a {\n	color: #fff}\n#wide-nav div ul li a:hover {\n	color: #f0f0f0}\ni {color: #4285f4}\n.section-title-center span {color:#4285f4}\n.title-wrapper ","flatsome","","inherit","closed","closed","","175-revision-v1","","","2017-03-23 19:45:09","2017-03-23 12:45:09","","175","http://fashion.fonicweb.com/175-revision-v1/","0","revision","","0"),
("191","1","2017-03-23 21:15:20","2017-03-23 14:15:20","/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n#woocommerce_product_categories-2 {\n	background-color:   rgba(242,9,9,0.7);\n  padding: 10px 0px 5px 10px;\n}\n\n .is-divider.small {\n	height: 2.5px;\n  	width: 50%;\n  	background-color: rgba(255,255,255,0.7);\n}\n#wide-nav div ul li a {\n	color: #fff}\n#wide-nav div ul li a:hover {\n	color: #f0f0f0}\n.section-title i {color: #4285f4}\n.section-title-center span {color:#4285f4}\n.title-wrapper ","flatsome","","inherit","closed","closed","","175-revision-v1","","","2017-03-23 21:15:20","2017-03-23 14:15:20","","175","http://fashion.fonicweb.com/175-revision-v1/","0","revision","","0"),
("192","1","2017-03-23 21:18:20","2017-03-23 14:18:20","[row]\n\n[col span=\"3\" span__sm=\"12\" color=\"light\"]\n\n[ux_sidebar id=\"shop-sidebar\" style=\"framed\"]\n\n\n[/col]\n[col span=\"9\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"100\"]\n\n[ux_image id=\"98\"]\n\n[ux_image id=\"101\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"SẢN PHẨM MỚI\" icon=\"icon-star\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"SẢN PHẨM BÁN CHẠY\" icon=\"icon-checkmark\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"ĐANG KHUYẾN MÃI\" icon=\"icon-gift\"]\n\n[ux_products slider_nav_style=\"simple\" slider_nav_position=\"outside\"]\n\n[title style=\"center\" text=\"TIN TỨC\" icon=\"icon-clock\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" image_height=\"100%\" image_hover=\"zoom\" image_hover_alt=\"zoom\"]","Trang chủ","","inherit","closed","closed","","37-revision-v1","","","2017-03-23 21:18:20","2017-03-23 14:18:20","","37","http://fashion.fonicweb.com/37-revision-v1/","0","revision","","0"),
("196","1","2017-07-04 07:24:39","2017-07-04 00:24:39","","1","","inherit","open","closed","","1","","","2017-07-04 07:24:39","2017-07-04 00:24:39","","0","https://bizhostvn.com/w/fashion/wp-content/uploads/2017/07/1.png","0","attachment","image/png","0"),
("200","1","2017-07-17 22:17:50","2017-07-17 15:17:50","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2017-07-17 22:17:50","2017-07-17 15:17:50","","0","http://alahap.com/w/fashion/wp-content/uploads/2017/07/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("205","1","2019-05-16 20:18:25","2019-05-16 13:18:25","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 20:18:25","2019-05-16 13:18:25","","0","https://bizhostvn.com/w/fashion/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `ID` (`ID`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_relationships VALUES
("61","7","0"),
("60","7","0"),
("56","7","0"),
("46","12","0"),
("45","12","0"),
("55","7","0"),
("62","7","0"),
("63","7","0"),
("64","7","0"),
("57","7","0"),
("58","7","0"),
("59","7","0"),
("129","20","0"),
("128","20","0"),
("76","8","0"),
("82","18","0"),
("82","8","0"),
("83","15","0"),
("83","8","0"),
("93","19","0"),
("93","8","0"),
("76","16","0"),
("95","17","0"),
("95","8","0"),
("104","1","0"),
("108","1","0"),
("110","1","0"),
("112","1","0"),
("122","13","0"),
("123","13","0"),
("124","13","0"),
("125","13","0"),
("130","20","0"),
("131","20","0"),
("133","21","0"),
("134","21","0"),
("135","21","0"),
("136","21","0"),
("138","22","0"),
("139","22","0"),
("140","22","0"),
("141","22","0");




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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","4"),
("3","3","category","","0","0"),
("4","4","post_tag","","0","0"),
("5","5","post_tag","","0","0"),
("8","8","product_type","","0","5"),
("6","6","post_format","","0","0"),
("7","7","nav_menu","","0","10"),
("9","9","product_type","","0","0"),
("10","10","product_type","","0","0"),
("11","11","product_type","","0","0"),
("12","12","nav_menu","","0","2"),
("13","13","nav_menu","","0","4"),
("14","14","nav_menu","","0","0"),
("15","15","product_cat","","0","1"),
("16","16","product_cat","","0","1"),
("17","17","product_cat","","0","1"),
("18","18","product_cat","","0","1"),
("19","19","product_cat","","0","1"),
("20","20","nav_menu","","0","4"),
("21","21","nav_menu","","0","4"),
("22","22","nav_menu","","0","4"),
("23","23","product_visibility","","0","0"),
("24","24","product_visibility","","0","0"),
("25","25","product_visibility","","0","0"),
("26","26","product_visibility","","0","0"),
("27","27","product_visibility","","0","0"),
("28","28","product_visibility","","0","0"),
("29","29","product_visibility","","0","0"),
("30","30","product_visibility","","0","0"),
("31","31","product_visibility","","0","0"),
("32","32","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("16","19","cat_meta",""),
("17","18","product_count_product_cat","1"),
("18","15","product_count_product_cat","1"),
("19","19","product_count_product_cat","1"),
("20","16","product_count_product_cat","1"),
("21","17","product_count_product_cat","1");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_terms VALUES
("1","Chưa được phân loại","khong-phan-loai","0"),
("3","Học WordPress","hoc-wordpress","0"),
("4","Study","study","0"),
("5","WordPress","wordpress","0"),
("6","post-format-aside","post-format-aside","0"),
("7","Menu chính","menu-chinh","0"),
("8","simple","simple","0"),
("9","grouped","grouped","0"),
("10","variable","variable","0"),
("11","external","external","0"),
("12","Top Bar Menu","top-bar-menu","0"),
("13","Footer 1: HƯỚNG DẪN KHÁCH HÀNG","footer-1-huong-dan-khach-hang","0"),
("14","main","main","0"),
("15","ĐẦM BẦU CÔNG SỞ","dam-bau-cong-so","0"),
("16","VÁY BẦU XUÂN - HÈ","vay-bau-xuan-he","0"),
("17","VÁY BẦY THU - ĐÔNG","vay-bay-thu-dong","0"),
("18","ÁO BẦU THỜI TRANG","ao-bau-thoi-trang","0"),
("19","ĐỒ BẦU MẶC Ở NHÀ","do-bau-mac-o-nha","0"),
("20","Footer 2: THÔNG TIN KHÁCH HÀNG","footer-2-thong-tin-khach-hang","0"),
("21","Footer 3: THÔNG TIN LIÊN QUAN","footer-3-thong-tin-lien-quan","0"),
("22","Footer 4: KẾT NỐI VỚI SHOP","footer-4-ket-noi-voi-shop","0"),
("23","exclude-from-search","exclude-from-search","0"),
("24","exclude-from-catalog","exclude-from-catalog","0"),
("25","featured","featured","0"),
("26","outofstock","outofstock","0"),
("27","rated-1","rated-1","0"),
("28","rated-2","rated-2","0"),
("29","rated-3","rated-3","0"),
("30","rated-4","rated-4","0"),
("31","rated-5","rated-5","0"),
("32","Uncategorized","uncategorized","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","admin"),
("2","1","first_name","admin"),
("3","1","last_name","admin"),
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
("17","1","session_tokens","a:2:{s:64:\"668b7a5d2a09eb927c133de3b5b32c0eedb4ec4c4ce570cdf1f428530fe0e1e4\";a:4:{s:10:\"expiration\";i:1558184886;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012086;}s:64:\"09a47101e40b00668cac8c9b0f8612a97b60da82461aa235440aa4eda3db0b16\";a:4:{s:10:\"expiration\";i:1558185267;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558012467;}}"),
("18","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("19","1","bz_user-settings-time","1558012468"),
("20","1","closedpostboxes_post","a:0:{}"),
("21","1","metaboxhidden_post","a:0:{}"),
("16","1","bz_dashboard_quick_press_last_post_id","204"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}"),
("24","1","nav_menu_recently_edited","22"),
("25","2","nickname","user1"),
("26","2","first_name","user1"),
("27","2","last_name",""),
("28","2","description",""),
("29","2","rich_editing","true"),
("30","2","comment_shortcuts","false"),
("31","2","admin_color","fresh"),
("32","2","use_ssl","0"),
("33","2","show_admin_bar_front","true"),
("34","2","locale",""),
("35","2","bz_capabilities","a:1:{s:6:\"editor\";b:1;}"),
("36","2","bz_user_level","7"),
("37","2","dismissed_wp_pointers",""),
("38","3","nickname","user2"),
("39","3","first_name","user2"),
("40","3","last_name",""),
("41","3","description",""),
("42","3","rich_editing","true"),
("43","3","comment_shortcuts","false"),
("44","3","admin_color","fresh"),
("45","3","use_ssl","0"),
("46","3","show_admin_bar_front","true"),
("47","3","locale",""),
("48","3","bz_capabilities","a:1:{s:6:\"author\";b:1;}"),
("49","3","bz_user_level","2"),
("50","3","dismissed_wp_pointers",""),
("51","4","nickname","user3"),
("52","4","first_name","user3"),
("53","4","last_name",""),
("54","4","description",""),
("55","4","rich_editing","true"),
("56","4","comment_shortcuts","false"),
("57","4","admin_color","fresh"),
("58","4","use_ssl","0"),
("59","4","show_admin_bar_front","true"),
("60","4","locale",""),
("61","4","bz_capabilities","a:1:{s:11:\"contributor\";b:1;}"),
("62","4","bz_user_level","1"),
("63","4","dismissed_wp_pointers",""),
("64","5","nickname","user4"),
("65","5","first_name","user4"),
("66","5","last_name",""),
("67","5","description",""),
("68","5","rich_editing","true"),
("69","5","comment_shortcuts","false"),
("70","5","admin_color","fresh"),
("71","5","use_ssl","0"),
("72","5","show_admin_bar_front","true"),
("73","5","locale",""),
("74","5","bz_capabilities","a:1:{s:10:\"subscriber\";b:1;}"),
("75","5","bz_user_level","0"),
("76","5","dismissed_wp_pointers",""),
("80","1","manageedit-shop_ordercolumnshidden","a:1:{i:0;s:15:\"billing_address\";}"),
("250","1","billing_first_name",""),
("251","1","billing_last_name",""),
("252","1","billing_company",""),
("253","1","billing_address_1",""),
("254","1","billing_address_2",""),
("255","1","billing_city",""),
("256","1","billing_postcode",""),
("257","1","billing_country",""),
("258","1","billing_state",""),
("259","1","billing_phone",""),
("260","1","billing_email",""),
("261","1","shipping_first_name",""),
("262","1","shipping_last_name",""),
("263","1","shipping_company",""),
("264","1","shipping_address_1",""),
("265","1","shipping_address_2",""),
("266","1","shipping_city",""),
("267","1","shipping_postcode",""),
("268","1","shipping_country",""),
("269","1","shipping_state",""),
("270","1","last_update","1540192958"),
("300","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("303","1","bz_aam_cache","a:3:{s:26:\"aam-post-access-default|79\";b:0;s:36:\"aam-post-access-roleadministrator|79\";b:0;s:24:\"aam-post-access-user1|79\";b:0;}"),
("302","1","syntax_highlighting","true");
INSERT INTO bz_usermeta VALUES
("295","1","wp_aam_cache","a:30:{s:26:\"aam-post-access-default|37\";b:0;s:36:\"aam-post-access-roleadministrator|37\";b:0;s:24:\"aam-post-access-user1|37\";b:0;s:26:\"aam-post-access-default|95\";b:0;s:36:\"aam-post-access-roleadministrator|95\";b:0;s:24:\"aam-post-access-user1|95\";b:0;s:26:\"aam-post-access-default|93\";b:0;s:36:\"aam-post-access-roleadministrator|93\";b:0;s:24:\"aam-post-access-user1|93\";b:0;s:26:\"aam-post-access-default|83\";b:0;s:36:\"aam-post-access-roleadministrator|83\";b:0;s:24:\"aam-post-access-user1|83\";b:0;s:26:\"aam-post-access-default|82\";b:0;s:36:\"aam-post-access-roleadministrator|82\";b:0;s:24:\"aam-post-access-user1|82\";b:0;s:26:\"aam-post-access-default|76\";b:0;s:36:\"aam-post-access-roleadministrator|76\";b:0;s:24:\"aam-post-access-user1|76\";b:0;s:27:\"aam-post-access-default|112\";b:0;s:37:\"aam-post-access-roleadministrator|112\";b:0;s:25:\"aam-post-access-user1|112\";b:0;s:27:\"aam-post-access-default|110\";b:0;s:37:\"aam-post-access-roleadministrator|110\";b:0;s:25:\"aam-post-access-user1|110\";b:0;s:27:\"aam-post-access-default|108\";b:0;s:37:\"aam-post-access-roleadministrator|108\";b:0;s:25:\"aam-post-access-user1|108\";b:0;s:27:\"aam-post-access-default|104\";b:0;s:37:\"aam-post-access-roleadministrator|104\";b:0;s:25:\"aam-post-access-user1|104\";b:0;}"),
("304","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("305","1","_woocommerce_tracks_anon_id","woo:LUfXDwU51lJ5wXNNtFe9fObx");




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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_users VALUES
("1","admin","$P$BYfFvCXbdV0QnzGsnpwAutC1eys/IZ.","admin","demobz@gmail.com","","2017-03-16 02:35:54","","0","admin");




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
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bz_woocommerce_sessions VALUES
("127","1","a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:730:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-10-22T07:22:38+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"demobz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}","1558185504");




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