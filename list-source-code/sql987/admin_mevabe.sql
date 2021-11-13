SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w116`
--




CREATE TABLE `bz_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO bz_commentmeta VALUES
("1","2","rating","2"),
("2","2","verified","0"),
("3","3","rating","5"),
("4","3","verified","0"),
("5","4","rating","5"),
("6","4","verified","0"),
("7","5","rating","5"),
("8","5","verified","0"),
("9","6","rating","5"),
("10","6","verified","0");




CREATE TABLE `bz_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO bz_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2017-10-03 09:24:06","2017-10-03 09:24:06","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","966","giuselethien","giuselethien@gmail.com","","118.70.186.115","2017-10-11 09:55:03","2017-10-11 02:55:03","Test bình luận sản phẩm","0","1","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.130 Chrome/52.3.2743.130 Safari/537.36","","0","1"),
("3","958","giuselethien","giuselethien@gmail.com","","118.70.186.115","2017-10-11 10:10:39","2017-10-11 03:10:39","Sản phẩm ngon bổ rẻ","0","1","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.130 Chrome/52.3.2743.130 Safari/537.36","","0","1"),
("4","960","giuselethien","giuselethien@gmail.com","","118.70.186.115","2017-10-11 10:31:31","2017-10-11 03:31:31","Sản phẩm tốt, giá hợp lý","0","1","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.130 Chrome/52.3.2743.130 Safari/537.36","","0","1"),
("5","846","giuselethien","giuselethien@gmail.com","","118.70.186.115","2017-10-11 10:53:21","2017-10-11 03:53:21","Sản phẩm tốt, giá phù hợp","0","1","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.130 Chrome/52.3.2743.130 Safari/537.36","","0","1"),
("6","836","giuselethien","giuselethien@gmail.com","","118.70.186.115","2017-10-11 11:03:15","2017-10-11 04:03:15","Sản phẩm tốt, test sản phẩm!!","0","1","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.130 Chrome/52.3.2743.130 Safari/537.36","","0","1"),
("7","1662","Woocommerce","woocommerce@mevabe.ninhbinhweb.com","","","2017-10-11 15:31:00","2017-10-11 08:31:00","Đang chờ thanh toán BACS Trạng thái đơn hàng đã thay đổi từ đang chờ thanh toán sang Tạm giữ .","0","1","WooCommerce","order_note","0","0");




CREATE TABLE `bz_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15513 DEFAULT CHARSET=utf8;


INSERT INTO bz_options VALUES
("1","siteurl","https://bizhostvn.com/w/mevabe","yes"),
("2","home","https://bizhostvn.com/w/mevabe","yes"),
("3","blogname","mevabe","yes"),
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
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:244:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"sidebars/?$\";s:27:\"index.php?post_type=sidebar\";s:41:\"sidebars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:36:\"sidebars/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=sidebar&feed=$matches[1]\";s:28:\"sidebars/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=sidebar&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:50:\"chat-lieu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_chat-lieu=$matches[1]&feed=$matches[2]\";s:45:\"chat-lieu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_chat-lieu=$matches[1]&feed=$matches[2]\";s:26:\"chat-lieu/([^/]+)/embed/?$\";s:45:\"index.php?pa_chat-lieu=$matches[1]&embed=true\";s:38:\"chat-lieu/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_chat-lieu=$matches[1]&paged=$matches[2]\";s:20:\"chat-lieu/([^/]+)/?$\";s:34:\"index.php?pa_chat-lieu=$matches[1]\";s:48:\"do-tuoi/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_do-tuoi=$matches[1]&feed=$matches[2]\";s:43:\"do-tuoi/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_do-tuoi=$matches[1]&feed=$matches[2]\";s:24:\"do-tuoi/([^/]+)/embed/?$\";s:43:\"index.php?pa_do-tuoi=$matches[1]&embed=true\";s:36:\"do-tuoi/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_do-tuoi=$matches[1]&paged=$matches[2]\";s:18:\"do-tuoi/([^/]+)/?$\";s:32:\"index.php?pa_do-tuoi=$matches[1]\";s:50:\"dung-tich/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dung-tich=$matches[1]&feed=$matches[2]\";s:45:\"dung-tich/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_dung-tich=$matches[1]&feed=$matches[2]\";s:26:\"dung-tich/([^/]+)/embed/?$\";s:45:\"index.php?pa_dung-tich=$matches[1]&embed=true\";s:38:\"dung-tich/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_dung-tich=$matches[1]&paged=$matches[2]\";s:20:\"dung-tich/([^/]+)/?$\";s:34:\"index.php?pa_dung-tich=$matches[1]\";s:50:\"gioi-tinh/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_gioi-tinh=$matches[1]&feed=$matches[2]\";s:45:\"gioi-tinh/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?pa_gioi-tinh=$matches[1]&feed=$matches[2]\";s:26:\"gioi-tinh/([^/]+)/embed/?$\";s:45:\"index.php?pa_gioi-tinh=$matches[1]&embed=true\";s:38:\"gioi-tinh/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?pa_gioi-tinh=$matches[1]&paged=$matches[2]\";s:20:\"gioi-tinh/([^/]+)/?$\";s:34:\"index.php?pa_gioi-tinh=$matches[1]\";s:51:\"khoi-luong/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?pa_khoi-luong=$matches[1]&feed=$matches[2]\";s:46:\"khoi-luong/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?pa_khoi-luong=$matches[1]&feed=$matches[2]\";s:27:\"khoi-luong/([^/]+)/embed/?$\";s:46:\"index.php?pa_khoi-luong=$matches[1]&embed=true\";s:39:\"khoi-luong/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?pa_khoi-luong=$matches[1]&paged=$matches[2]\";s:21:\"khoi-luong/([^/]+)/?$\";s:35:\"index.php?pa_khoi-luong=$matches[1]\";s:51:\"kich-thuoc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?pa_kich-thuoc=$matches[1]&feed=$matches[2]\";s:46:\"kich-thuoc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?pa_kich-thuoc=$matches[1]&feed=$matches[2]\";s:27:\"kich-thuoc/([^/]+)/embed/?$\";s:46:\"index.php?pa_kich-thuoc=$matches[1]&embed=true\";s:39:\"kich-thuoc/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?pa_kich-thuoc=$matches[1]&paged=$matches[2]\";s:21:\"kich-thuoc/([^/]+)/?$\";s:35:\"index.php?pa_kich-thuoc=$matches[1]\";s:48:\"mau-sac/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_mau-sac=$matches[1]&feed=$matches[2]\";s:43:\"mau-sac/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_mau-sac=$matches[1]&feed=$matches[2]\";s:24:\"mau-sac/([^/]+)/embed/?$\";s:43:\"index.php?pa_mau-sac=$matches[1]&embed=true\";s:36:\"mau-sac/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_mau-sac=$matches[1]&paged=$matches[2]\";s:18:\"mau-sac/([^/]+)/?$\";s:32:\"index.php?pa_mau-sac=$matches[1]\";s:47:\"mui-vi/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_mui-vi=$matches[1]&feed=$matches[2]\";s:42:\"mui-vi/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_mui-vi=$matches[1]&feed=$matches[2]\";s:23:\"mui-vi/([^/]+)/embed/?$\";s:42:\"index.php?pa_mui-vi=$matches[1]&embed=true\";s:35:\"mui-vi/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?pa_mui-vi=$matches[1]&paged=$matches[2]\";s:17:\"mui-vi/([^/]+)/?$\";s:31:\"index.php?pa_mui-vi=$matches[1]\";s:52:\"thuong-hieu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?pa_thuong-hieu=$matches[1]&feed=$matches[2]\";s:47:\"thuong-hieu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?pa_thuong-hieu=$matches[1]&feed=$matches[2]\";s:28:\"thuong-hieu/([^/]+)/embed/?$\";s:47:\"index.php?pa_thuong-hieu=$matches[1]&embed=true\";s:40:\"thuong-hieu/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?pa_thuong-hieu=$matches[1]&paged=$matches[2]\";s:22:\"thuong-hieu/([^/]+)/?$\";s:36:\"index.php?pa_thuong-hieu=$matches[1]\";s:48:\"xuat-xu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_xuat-xu=$matches[1]&feed=$matches[2]\";s:43:\"xuat-xu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pa_xuat-xu=$matches[1]&feed=$matches[2]\";s:24:\"xuat-xu/([^/]+)/embed/?$\";s:43:\"index.php?pa_xuat-xu=$matches[1]&embed=true\";s:36:\"xuat-xu/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pa_xuat-xu=$matches[1]&paged=$matches[2]\";s:18:\"xuat-xu/([^/]+)/?$\";s:32:\"index.php?pa_xuat-xu=$matches[1]\";s:35:\"sanpham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"sanpham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"sanpham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"sanpham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"sanpham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"sanpham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"sanpham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"sanpham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"sanpham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"sanpham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"sanpham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"sanpham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"sanpham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"sanpham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"sanpham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"sanpham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"sanpham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"sanpham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"sanpham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"sanpham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"sanpham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"sanpham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sidebars/([^/]+)/embed/?$\";s:40:\"index.php?sidebar=$matches[1]&embed=true\";s:29:\"sidebars/([^/]+)/trackback/?$\";s:34:\"index.php?sidebar=$matches[1]&tb=1\";s:49:\"sidebars/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:44:\"sidebars/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?sidebar=$matches[1]&feed=$matches[2]\";s:37:\"sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&paged=$matches[2]\";s:44:\"sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sidebar=$matches[1]&cpage=$matches[2]\";s:34:\"sidebars/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?sidebar=$matches[1]&wc-api=$matches[3]\";s:40:\"sidebars/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"sidebars/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sidebar=$matches[1]&page=$matches[2]\";s:25:\"sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=102&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:38:\"(.?.+?)/dat-hang-thanh-cong(/(.*))?/?$\";s:62:\"index.php?pagename=$matches[1]&dat-hang-thanh-cong=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:6:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:3;s:37:\"woocommerce-products-filter/index.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:27:\"woosidebars/woosidebars.php\";i:6;s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","https://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:4:{i:0;s:95:\"/home/admin/domains/bizhostvn.com/public_html/w/mevabe/wp-content/themes/me-va-be/functions.php\";i:2;s:91:\"/home/admin/domains/bizhostvn.com/public_html/w/mevabe/wp-content/themes/me-va-be/style.css\";i:3;s:115:\"/home/admin/domains/bizhostvn.com/public_html/w/mevabe/wp-content/plugins/yith-woocommerce-ajax-navigation/init.php\";i:4;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","me-va-be","yes"),
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
("66","image_default_link_type","file","yes"),
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
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:175:\"Gọi <a href=\"tel:+0972939830\"><strong>0972.939.830</strong></a> (7:00 - 21:00) để được hướng dẫn đặt trước và nhận hàng sau 2-3 ngày tại Hà Nội\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:3:{s:55:\"query-multiple-taxonomies/query-multiple-taxonomies.php\";s:14:\"__return_false\";s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";a:2:{i:0;s:13:\"BeRocket_AAPF\";i:1;s:24:\"br_delete_plugin_options\";}s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","102","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","1666","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","initial_db_version","38590","yes"),
("92","bz_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Khách hàng\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}","yes"),
("93","fresh_site","0","yes"),
("94","WPLANG","vi","yes"),
("95","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("96","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes"),
("97","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","sidebars_widgets","a:16:{s:12:\"be-hocwidget\";a:1:{i:0;s:10:\"nav_menu-2\";}s:12:\"sidebar-woof\";a:0:{}s:19:\"wp_inactive_widgets\";a:1:{i:0;s:13:\"woof_widget-2\";}s:11:\"mobile-menu\";a:1:{i:0;s:10:\"nav_menu-9\";}s:11:\"me-an-tam-2\";a:1:{i:0;s:10:\"nav_menu-8\";}s:11:\"me-an-tam-1\";a:1:{i:0;s:10:\"nav_menu-7\";}s:15:\"be-an-be-uong-2\";a:1:{i:0;s:10:\"nav_menu-5\";}s:15:\"be-an-be-uong-1\";a:1:{i:0;s:10:\"nav_menu-4\";}s:14:\"be-choi-widget\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"be-hoc-widget\";a:1:{i:0;s:10:\"nav_menu-6\";}s:12:\"sidebar-main\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:13:\"media_image-3\";i:2;s:11:\"tag_cloud-2\";i:3;s:13:\"media_image-4\";i:4;s:22:\"woocommerce_products-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:1:{i:0;s:13:\"woof_widget-3\";}s:15:\"product-sidebar\";a:3:{i:0;s:13:\"custom_html-2\";i:1;s:6:\"text-2\";i:2;s:13:\"media_image-2\";}s:13:\"array_version\";i:3;}","yes");
INSERT INTO bz_options VALUES
("101","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("103","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_media_image","a:4:{i:2;a:15:{s:13:\"attachment_id\";i:1426;s:3:\"url\";s:100:\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Banner_DSS_gia_re_9-10_HN_tang-300x173.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:400;s:6:\"height\";i:230;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:17:\"link_target_blank\";b:0;}i:3;a:15:{s:13:\"attachment_id\";i:1570;s:3:\"url\";s:77:\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/san-hang-gia-re.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:17:\"link_target_blank\";b:0;}i:4;a:15:{s:13:\"attachment_id\";i:1577;s:3:\"url\";s:80:\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/300x250-01-300x250.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:17:\"link_target_blank\";b:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_tag_cloud","a:2:{i:2;a:3:{s:5:\"title\";s:22:\"Từ khóa tìm kiếm\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_nav_menu","a:9:{i:2;a:1:{s:8:\"nav_menu\";i:94;}i:3;a:1:{s:8:\"nav_menu\";i:93;}i:4;a:1:{s:8:\"nav_menu\";i:111;}i:5;a:1:{s:8:\"nav_menu\";i:112;}i:6;a:1:{s:8:\"nav_menu\";i:94;}i:7;a:1:{s:8:\"nav_menu\";i:139;}i:8;a:1:{s:8:\"nav_menu\";i:138;}i:9;a:1:{s:8:\"nav_menu\";i:323;}s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_custom_html","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:381:\"<div class=\"sidebar-product\">\nSản phẩm sẵn có tại:<br><strong>Cơ sở chính:</strong><br>\n<p>- Tầng 6, tòa nhà Office Hoa Đăng, 290 Nguyễn Trãi, Thanh Xuân, HN</p>\n<p>- [P]: 0972.939.830 - 01256.325.635</p>\n<strong>Showroom Thanh Xuân:</strong><br>\n<p>- Ngõ 18 Lương Ngọc Quyến, Hà Đông, HN</p>\n<p>- [P]: 0972.939.830 - 01256.325.635</p></div>\";}s:12:\"_multiwidget\";i:1;}","yes"),
("109","cron","a:16:{i:1558058469;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558058564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558060194;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558076889;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558079364;a:1:{s:39:\"rocket_database_optimization_time_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558085009;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558085047;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558085093;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558096740;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558098489;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558098499;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558104362;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558109289;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558112400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("110","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1507023058;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("148","recently_activated","a:1:{s:25:\"adminimize/adminimize.php\";i:1558012026;}","yes"),
("153","current_theme","Mẹ và bé","yes"),
("154","theme_mods_flatsome","a:23:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:11:\"https://url\";s:15:\"follow_facebook\";s:11:\"https://url\";s:16:\"follow_instagram\";s:11:\"https://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 03 Oct 2017 09:30:59 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1507023089;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("155","theme_switched","","yes"),
("156","widget_flatsome_recent_posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("157","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("159","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("160","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("161","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("162","flatsome_wup_buyer","trannguyen886","yes"),
("163","allowedthemes","a:1:{s:8:\"me-va-be\";b:1;}","no"),
("164","fl_has_child_theme","me-va-be","yes"),
("165","theme_mods_me-va-be","a:166:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:2:{i:0;s:7:\"account\";i:1;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:3:{i:0;s:3:\"nav\";i:1;s:6:\"html-2\";i:2;s:6:\"html-3\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:7:\"block-2\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:0:\"\";s:15:\"follow_facebook\";s:40:\"https://www.facebook.com/joseph.thien.75\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:22:\"giuselethien@gmail.com\";s:16:\"flatsome_version\";i:3;s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 03 Oct 2017 09:31:32 +0000\";s:9:\"site_logo\";s:74:\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2018/03/BIZHOST-DEMO.png\";s:18:\"custom_css_post_id\";i:-1;s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:5:\"Arimo\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:26:\"Helvetica,Arial,sans-serif\";s:7:\"variant\";s:7:\"regular\";}s:16:\"type_size_mobile\";s:3:\"100\";s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:26:\"Helvetica,Arial,sans-serif\";s:7:\"variant\";s:3:\"300\";}s:17:\"header_top_height\";s:2:\"25\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:10:\"logo_width\";s:3:\"284\";s:11:\"topbar_show\";s:1:\"1\";s:13:\"header_height\";s:2:\"91\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";s:1:\"0\";s:13:\"nav_uppercase\";s:1:\"1\";s:27:\"header_bg_transparent_shade\";s:1:\"0\";s:20:\"header_bottom_height\";s:2:\"43\";s:15:\"nav_position_bg\";s:19:\"rgba(255,255,255,0)\";s:20:\"nav_uppercase_bottom\";s:1:\"1\";s:18:\"nav_position_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#FFFFFF\";s:12:\"topbar_color\";s:5:\"light\";s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:4:\"flat\";s:18:\"search_placeholder\";s:67:\"Tìm kiếm danh mục, thương hiệu hoặc các sản phẩm...\";s:24:\"header_search_categories\";s:1:\"0\";s:19:\"header_search_width\";s:2:\"81\";s:11:\"color_texts\";s:7:\"#0A0A0A\";s:19:\"type_headings_color\";s:7:\"#0A0A0A\";s:11:\"color_links\";s:7:\"#1E73BE\";s:17:\"color_links_hover\";s:7:\"#EA6085\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:0:\"\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:0:\"\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:12:\"fl_portfolio\";s:1:\"0\";s:10:\"site_width\";s:6:\"1300px\";s:13:\"body_bg_image\";s:69:\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/main-bg.jpg\";s:12:\"body_bg_type\";s:8:\"bg-tiled\";s:7:\"body_bg\";s:19:\"rgba(255,255,255,0)\";s:10:\"content_bg\";s:19:\"rgba(255,255,255,0)\";s:16:\"nav_style_bottom\";s:0:\"\";s:17:\"nav_height_bottom\";s:2:\"16\";s:21:\"type_nav_bottom_color\";s:7:\"#0A0A0A\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#4F4F4F\";s:15:\"cart_icon_style\";s:13:\"outline-round\";s:9:\"cart_icon\";s:4:\"cart\";s:17:\"header_cart_total\";s:1:\"1\";s:17:\"header_cart_title\";s:1:\"1\";s:11:\"topbar_left\";s:305:\"<div class=\"html1-header\">Sản phẩm HOT: <a href=\"#\" target=\"blank\">tã giấy Boobie</a>, <a href=\"#\" target=\"blank\">xe đẩy</a>, <a href=\"#\" target=\"blank\">quần đũi trẻ em</a>, <a href=\"#\" target=\"blank\">sữa tắm trẻ em</a>, <a href=\"#\" target=\"blank\">sữa bột dinh dưỡng</a></div>\";s:18:\"nav_menu_locations\";a:4:{s:11:\"top_bar_nav\";i:15;s:7:\"primary\";i:45;s:14:\"primary_mobile\";i:45;s:6:\"footer\";i:15;}s:13:\"nav_style_top\";s:0:\"\";s:14:\"header-block-1\";s:14:\"hotline-header\";s:13:\"color_primary\";s:7:\"#FCC83E\";s:15:\"color_secondary\";s:7:\"#1E73BE\";s:9:\"type_size\";s:3:\"100\";s:15:\"nav_size_bottom\";s:5:\"small\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:14:\"dropdown_arrow\";s:1:\"1\";s:17:\"dropdown_nav_size\";s:2:\"85\";s:12:\"topbar_right\";s:116:\"<div class=\"hotline-nav\"><span>Hotline bán hàng:</span><br><span class=\"hotline-nav-phone\">0909009009</span></div>\";s:14:\"top_right_text\";s:212:\"<div class=\"khuyen-mai\"><a href=\"https://bizhostvn.com/w/mevabe/tin-khuyen-mai/\" target=\"blank\"><img src=\"https://icons.iconarchive.com/icons/lovuhemant/merry-christmas/256/Gift-icon.png\" width=\"43px\"/></a></div>\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:20:\"header_height_sticky\";s:2:\"56\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";s:1:\"0\";s:16:\"bottombar_sticky\";s:1:\"1\";s:18:\"category_row_count\";s:1:\"5\";s:16:\"products_pr_page\";s:2:\"40\";s:23:\"header_shop_bg_featured\";s:1:\"0\";s:15:\"breadcrumb_size\";s:7:\"smaller\";s:9:\"cat_style\";s:6:\"normal\";s:10:\"grid_style\";s:5:\"grid1\";s:13:\"product_hover\";s:4:\"zoom\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:7:\"disable\";s:17:\"add_to_cart_style\";s:7:\"outline\";s:20:\"product_box_category\";s:1:\"0\";s:18:\"product_box_rating\";s:1:\"0\";s:18:\"disable_quick_view\";s:1:\"1\";s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";s:1:\"1\";s:12:\"logo_padding\";s:1:\"7\";s:16:\"category_sidebar\";s:12:\"left-sidebar\";s:15:\"category_shadow\";s:1:\"0\";s:16:\"follow_pinterest\";s:1:\"#\";s:13:\"follow_google\";s:1:\"#\";s:12:\"footer_block\";s:6:\"footer\";s:8:\"footer_1\";s:1:\"0\";s:16:\"footer_left_text\";s:154:\"Thiết kế web bởi <a href=\"https://www.webdesign.com\" target=\"blank\">Webdesign</a> | <a href=\"https://www.webdesign.com\" target=\"blank\">Webdesign</a>\";s:19:\"footer_bottom_color\";s:7:\"#F9CE2A\";s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"footer_bottom_align\";s:6:\"center\";s:13:\"payment_icons\";a:0:{}s:25:\"category_row_count_tablet\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:19:\"category_show_title\";s:1:\"1\";s:14:\"product_header\";s:3:\"top\";s:19:\"product_image_width\";s:1:\"4\";s:16:\"product_lightbox\";s:8:\"disabled\";s:12:\"product_zoom\";s:1:\"1\";s:9:\"tab_title\";s:22:\"Thông tin thanh toán\";s:11:\"tab_content\";s:589:\"Quý khách vui lòng thực hiện giao dịch chuyển khoản vào một trong các tài khoản dưới đây của chúng tôi:<br>\n<b>1. Agribank</b><br>\n- Chủ tài khoản: Lê Văn Thiện<br>\n- Số tài khoản: 2000206180703<br>\n- Chi nhánh: Agribank chi nhánh Đà Nẵng<br>\n<b>2. Vietcombank</b><br>\n- Chủ tài khoản: Lê Văn Thiện<br>\n- Số tài khoản: 2000206180703<br>\n- Chi nhánh: Vietcombank chi nhánh Hà Tây<br>\n<b>3. ACB</b><br>\n- Chủ tài khoản: Lê Văn Thiện<br>\n- Số tài khoản: 201546897<br>\n- Chi nhánh: ACB Chi nhánh Hà Thành<br>\";s:14:\"product_upsell\";s:8:\"disabled\";s:16:\"related_products\";s:4:\"grid\";s:23:\"related_products_pr_row\";s:1:\"6\";s:20:\"max_related_products\";s:1:\"6\";s:23:\"html_before_add_to_cart\";s:678:\"<div class=\"short-desc\"><ul><li>Gọi đặt hàng nhanh:<strong style=\"color: #ff0000;\"> 0972.939.830 (Mr. Thiện)</strong> (miễn phí)</li><li>Đổi trả<strong> MIỄN PHÍ</strong> trong 30 ngày <strong>- </strong><a href=\"https://bizhostvn.com/w/mevabe/quy-dinh-doi-tra-hang/\" target=\"_blank\">Chi tiết</a></li><li>Giao hàng <strong>miễn phí</strong> tận nhà (bán kính <10km) - <a href=\"https://bizhostvn.com/w/mevabe/phuong-thuc-giao-hang/\" target=\"_blank\">Chi tiết</a></li><li>Cam kết hoàn tiền nếu sản phẩm không phải chính hãng - <a href=\"https://bizhostvn.com/w/mevabe/cam-ket-khop-gia/\" target=\"_blank\">Chi tiết</a></li></ul></div>\";s:22:\"html_after_add_to_cart\";s:74:\"<div class=\"block-after-add-to-cart\">[block id=\"after-add-to-cart\"]</div>\n\";s:18:\"product_info_align\";s:4:\"left\";s:17:\"product_info_form\";s:0:\"\";s:18:\"product_tabs_align\";s:4:\"left\";s:12:\"color_review\";s:7:\"#E2CC00\";s:13:\"button_radius\";s:3:\"4px\";s:19:\"blog_layout_divider\";s:1:\"0\";s:10:\"blog_style\";s:5:\"3-col\";s:23:\"blog_posts_header_style\";s:6:\"bottom\";s:16:\"blog_badge_style\";s:6:\"square\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:15:\"blog_author_box\";s:1:\"0\";s:10:\"blog_share\";s:1:\"1\";s:16:\"blog_hide_sticky\";s:1:\"1\";s:18:\"blog_archive_title\";s:1:\"0\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:14:\"header-block-2\";s:7:\"block-2\";s:15:\"menu_icon_style\";s:13:\"outline-round\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.6.2\";}","yes"),
("167","envato_setup_complete","1507023888","yes"),
("182","woocommerce_default_country","VN","yes"),
("183","woocommerce_allowed_countries","all","yes"),
("184","woocommerce_all_except_countries","","yes"),
("185","woocommerce_specific_allowed_countries","","yes"),
("186","woocommerce_ship_to_countries","","yes"),
("187","woocommerce_specific_ship_to_countries","","yes"),
("188","woocommerce_default_customer_address","geolocation","yes"),
("189","woocommerce_calc_taxes","no","yes"),
("190","woocommerce_demo_store","no","yes"),
("191","woocommerce_demo_store_notice","Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.","no"),
("192","woocommerce_currency","VND","yes"),
("193","woocommerce_currency_pos","right","yes"),
("194","woocommerce_price_thousand_sep",".","yes"),
("195","woocommerce_price_decimal_sep",".","yes"),
("196","woocommerce_price_num_decimals","0","yes"),
("197","woocommerce_weight_unit","kg","yes"),
("198","woocommerce_dimension_unit","cm","yes"),
("199","woocommerce_enable_reviews","yes","yes"),
("200","woocommerce_review_rating_verification_label","no","no"),
("201","woocommerce_review_rating_verification_required","no","no"),
("202","woocommerce_enable_review_rating","yes","yes"),
("203","woocommerce_review_rating_required","yes","no"),
("204","woocommerce_shop_page_id","67","yes"),
("205","woocommerce_shop_page_display","","yes"),
("206","woocommerce_category_archive_display","","yes"),
("207","woocommerce_default_catalog_orderby","menu_order","yes"),
("208","woocommerce_cart_redirect_after_add","no","yes"),
("209","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("210","shop_catalog_image_size","a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}","yes"),
("211","shop_single_image_size","a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}","yes"),
("212","shop_thumbnail_image_size","a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}","yes"),
("213","woocommerce_manage_stock","yes","yes"),
("214","woocommerce_hold_stock_minutes","60","no"),
("215","woocommerce_notify_low_stock","yes","no"),
("216","woocommerce_notify_no_stock","yes","no"),
("217","woocommerce_stock_email_recipient","giuselethien@gmail.com","no"),
("218","woocommerce_notify_low_stock_amount","2","no"),
("219","woocommerce_notify_no_stock_amount","0","yes"),
("220","woocommerce_hide_out_of_stock_items","no","yes"),
("221","woocommerce_stock_format","","yes"),
("222","woocommerce_file_download_method","force","no"),
("223","woocommerce_downloads_require_login","no","no"),
("224","woocommerce_downloads_grant_access_after_payment","yes","no"),
("225","woocommerce_prices_include_tax","no","yes"),
("226","woocommerce_tax_based_on","shipping","yes"),
("227","woocommerce_shipping_tax_class","inherit","yes"),
("228","woocommerce_tax_round_at_subtotal","no","yes"),
("229","woocommerce_tax_classes","Reduced rate\nZero rate","yes"),
("230","woocommerce_tax_display_shop","excl","yes"),
("231","woocommerce_tax_display_cart","excl","no"),
("232","woocommerce_price_display_suffix","","yes"),
("233","woocommerce_tax_total_display","itemized","no"),
("234","woocommerce_enable_shipping_calc","yes","no"),
("235","woocommerce_shipping_cost_requires_address","no","no"),
("236","woocommerce_ship_to_destination","billing","no"),
("237","woocommerce_shipping_debug_mode","no","no"),
("238","woocommerce_enable_coupons","yes","yes"),
("239","woocommerce_calc_discounts_sequentially","no","no"),
("240","woocommerce_enable_guest_checkout","yes","no"),
("241","woocommerce_force_ssl_checkout","no","yes"),
("242","woocommerce_unforce_ssl_checkout","no","yes"),
("243","woocommerce_cart_page_id","68","yes"),
("244","woocommerce_checkout_page_id","69","yes"),
("245","woocommerce_terms_page_id","94","no"),
("246","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("247","woocommerce_checkout_order_received_endpoint","dat-hang-thanh-cong","yes"),
("248","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("249","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("250","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("251","woocommerce_myaccount_page_id","70","yes"),
("252","woocommerce_enable_signup_and_login_from_checkout","yes","no"),
("253","woocommerce_enable_myaccount_registration","yes","no"),
("254","woocommerce_enable_checkout_login_reminder","yes","no"),
("255","woocommerce_registration_generate_username","yes","no"),
("256","woocommerce_registration_generate_password","yes","no"),
("257","woocommerce_myaccount_orders_endpoint","orders","yes");
INSERT INTO bz_options VALUES
("258","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("259","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("260","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("261","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("262","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("263","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("264","woocommerce_logout_endpoint","customer-logout","yes"),
("265","woocommerce_email_from_name","Mẫu web Mẹ và Bé","no"),
("266","woocommerce_email_from_address","doivodesign@gmail.com","no"),
("267","woocommerce_email_header_image","","no"),
("268","woocommerce_email_footer_text","Mẫu web Mẹ và Bé - Powered by WooCommerce","no"),
("269","woocommerce_email_base_color","#ec9808","no"),
("270","woocommerce_email_background_color","#f7f7f7","no"),
("271","woocommerce_email_body_background_color","#ffffff","no"),
("272","woocommerce_email_text_color","#3c3c3c","no"),
("273","woocommerce_api_enabled","yes","yes"),
("277","woocommerce_db_version","3.1.2","yes"),
("279","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("281","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("282","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("283","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("284","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("285","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("286","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("287","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("288","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("289","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("290","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("291","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("292","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("293","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("297","woocommerce_meta_box_errors","a:0:{}","yes"),
("300","woocommerce_paypal-ec_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("301","woocommerce_stripe_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("302","woocommerce_paypal_settings","a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:22:\"giuselethien@gmail.com\";}","yes"),
("303","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("304","woocommerce_bacs_settings","a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:315:\"Thanh toán trực tiếp vào tài khoản ngân hàng của chúng tôi. Vui lòng ghi ID đơn đặt hàng của bạn vào phần ghi chú. Đơn đặt hàng của bạn sẽ không được vận chuyển cho đến khi số tiền đã được thanh toán thành công trong tài khoản của chúng tôi.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}","yes"),
("305","woocommerce_cod_settings","a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:26:\"Thanh toán khi giao hàng\";s:11:\"description\";s:47:\"Thanh toán bằng tiền mặt khi giao hàng.\";s:12:\"instructions\";s:47:\"Thanh toán bằng tiền mặt khi giao hàng.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}","yes"),
("323","woosidebars-version","1.4.3","yes"),
("329","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("370","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:8:\"/sanpham\";s:13:\"category_base\";s:8:\"san-pham\";s:8:\"tag_base\";s:3:\"tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("707","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1507290243;s:7:\"version\";s:3:\"4.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("722","widget_staxonomy","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("726","simple-taxonomy","a:1:{s:10:\"taxonomies\";a:1:{s:11:\"thuong-hieu\";a:14:{s:4:\"name\";s:11:\"thuong-hieu\";s:7:\"objects\";a:1:{i:0;s:7:\"product\";}s:21:\"update_count_callback\";s:0:\"\";s:12:\"hierarchical\";s:1:\"1\";s:7:\"rewrite\";s:1:\"1\";s:9:\"query_var\";s:0:\"\";s:7:\"show_ui\";s:1:\"1\";s:13:\"show_tagcloud\";s:1:\"1\";s:17:\"show_in_nav_menus\";s:1:\"1\";s:6:\"labels\";a:15:{s:4:\"name\";s:15:\"Thương hiệu\";s:13:\"singular_name\";s:15:\"Thương hiệu\";s:12:\"search_items\";s:12:\"Search Terms\";s:13:\"popular_items\";s:13:\"Popular Terms\";s:9:\"all_items\";s:9:\"All Terms\";s:11:\"parent_item\";s:11:\"Parent Term\";s:17:\"parent_item_colon\";s:12:\"Parent Term:\";s:9:\"edit_item\";s:9:\"Edit Term\";s:9:\"view_item\";s:9:\"View Term\";s:11:\"update_item\";s:11:\"Update Term\";s:12:\"add_new_item\";s:12:\"Add New Term\";s:13:\"new_item_name\";s:13:\"New Term Name\";s:26:\"separate_items_with_commas\";s:26:\"Separate terms with commas\";s:19:\"add_or_remove_items\";s:19:\"Add or remove terms\";s:21:\"choose_from_most_used\";s:31:\"Choose from the most used terms\";}s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";s:1:\"1\";s:7:\"metabox\";s:7:\"default\";s:4:\"auto\";s:4:\"none\";}}}","yes"),
("740","thuong-hieu_children","a:0:{}","yes"),
("750","berocket_admin_notices","a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";i:2;s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:116:\"https://bizhostvn.com/w/mevabe/wp-content/plugins/woocommerce-ajax-filters/includes/../images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.42372881355932202;}}}}}}","yes"),
("752","widget_berocket_aapf_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("753","berocket_current_displayed_notice","","yes"),
("754","berocket_last_close_notices_time","1507281146","yes"),
("762","wp_installer_settings","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","yes"),
("763","widget_woof_widget","a:3:{i:2;a:5:{s:5:\"title\";s:27:\"WooCommerce Products Filter\";s:22:\"additional_text_before\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:24:\"woof_start_filtering_btn\";s:1:\"1\";s:11:\"ajax_redraw\";s:1:\"1\";}i:3;a:5:{s:5:\"title\";s:0:\"\";s:22:\"additional_text_before\";s:102:\"Tìm kiếm sản phẩm dễ dàng hơn bao giờ hết với trình lọc sản phẩm thông minh. \";s:8:\"redirect\";s:0:\"\";s:24:\"woof_start_filtering_btn\";s:1:\"0\";s:11:\"ajax_redraw\";s:1:\"1\";}s:12:\"_multiwidget\";i:1;}","yes"),
("764","woof_first_init","1","yes"),
("765","woof_set_automatically","0","yes"),
("766","woof_autosubmit","0","yes"),
("767","woof_show_count","1","yes"),
("768","woof_show_count_dynamic","1","yes"),
("769","woof_hide_dynamic_empty_pos","1","yes"),
("770","woof_try_ajax","1","yes"),
("771","woof_checkboxes_slide","0","yes"),
("772","woof_hide_red_top_panel","0","yes"),
("773","woof_sort_terms_checked","0","yes"),
("774","woof_filter_btn_txt","Lọc","yes"),
("775","woof_reset_btn_txt","Lọc lại","yes"),
("776","woof_settings","a:58:{s:11:\"items_order\";s:245:\"by_text,by_price,by_author,by_instock,by_onsales,by_rating,products_messenger,product_visibility,product_cat,product_tag,pa_thuong-hieu,pa_mau-sac,pa_chat-lieu,pa_do-tuoi,pa_dung-tich,pa_gioi-tinh,pa_khoi-luong,pa_kich-thuoc,pa_mui-vi,pa_xuat-xu\";s:7:\"by_text\";a:10:{s:4:\"show\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"placeholder\";s:39:\"Nhập sản phẩm bạn cần tìm...\";s:8:\"behavior\";s:5:\"title\";s:19:\"search_by_full_word\";s:1:\"0\";s:12:\"autocomplete\";s:1:\"0\";s:26:\"post_links_in_autocomplete\";s:1:\"0\";s:17:\"how_to_open_links\";s:1:\"0\";s:5:\"image\";s:0:\"\";s:17:\"sku_compatibility\";s:1:\"1\";}s:8:\"by_price\";a:6:{s:4:\"show\";s:1:\"2\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:12:\"Giá tiền:\";s:6:\"ranges\";s:98:\"0-50000, 51000-100000, 100001-300000, 300001-500000, 500001-2000000, 20000001-10000000, 10000001-i\";s:17:\"first_option_text\";s:37:\"Lựa chọn mức giá phù hợp...\";s:15:\"ion_slider_step\";s:1:\"1\";}s:9:\"by_author\";a:4:{s:4:\"show\";s:1:\"0\";s:11:\"placeholder\";s:0:\"\";s:4:\"role\";s:1:\"0\";s:4:\"view\";s:9:\"drop-down\";}s:10:\"by_instock\";a:2:{s:4:\"show\";s:1:\"0\";s:7:\"use_for\";s:6:\"simple\";}s:10:\"by_onsales\";a:1:{s:4:\"show\";s:1:\"0\";}s:9:\"by_rating\";a:1:{s:4:\"show\";s:1:\"0\";}s:18:\"products_messenger\";a:14:{s:4:\"show\";s:1:\"0\";s:10:\"show_label\";s:1:\"1\";s:5:\"label\";s:18:\"Products Messenger\";s:18:\"notes_for_customer\";s:0:\"\";s:15:\"show_btn_subscr\";s:1:\"0\";s:14:\"wp_cron_period\";s:12:\"twicemonthly\";s:17:\"use_external_cron\";s:24:\"acffb6fed1120368b29a095b\";s:12:\"subscr_count\";s:1:\"2\";s:12:\"header_email\";s:28:\"New Products by your request\";s:13:\"subject_email\";s:12:\"New products\";s:10:\"text_email\";s:101:\"Dear [DISPLAY_NAME], we increased the range of our products. Number of new products: [PRODUCT_COUNT] \";s:11:\"date_expire\";s:2:\"no\";s:13:\"count_message\";s:2:\"-1\";s:14:\"priority_limit\";s:4:\"both\";}s:8:\"tax_type\";a:13:{s:18:\"product_visibility\";s:8:\"checkbox\";s:11:\"product_cat\";s:8:\"checkbox\";s:11:\"product_tag\";s:8:\"checkbox\";s:14:\"pa_thuong-hieu\";s:8:\"checkbox\";s:10:\"pa_mau-sac\";s:8:\"checkbox\";s:12:\"pa_chat-lieu\";s:8:\"checkbox\";s:10:\"pa_do-tuoi\";s:8:\"checkbox\";s:12:\"pa_dung-tich\";s:8:\"checkbox\";s:12:\"pa_gioi-tinh\";s:8:\"checkbox\";s:13:\"pa_khoi-luong\";s:8:\"checkbox\";s:13:\"pa_kich-thuoc\";s:8:\"checkbox\";s:9:\"pa_mui-vi\";s:8:\"checkbox\";s:10:\"pa_xuat-xu\";s:8:\"checkbox\";}s:14:\"excluded_terms\";a:13:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"pa_thuong-hieu\";s:0:\"\";s:10:\"pa_mau-sac\";s:0:\"\";s:12:\"pa_chat-lieu\";s:0:\"\";s:10:\"pa_do-tuoi\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:12:\"pa_gioi-tinh\";s:0:\"\";s:13:\"pa_khoi-luong\";s:0:\"\";s:13:\"pa_kich-thuoc\";s:0:\"\";s:9:\"pa_mui-vi\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";}s:16:\"tax_block_height\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:3:\"400\";s:11:\"product_tag\";s:3:\"400\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:16:\"show_title_label\";a:13:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"pa_thuong-hieu\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:12:\"pa_chat-lieu\";s:1:\"1\";s:10:\"pa_do-tuoi\";s:1:\"1\";s:12:\"pa_dung-tich\";s:1:\"1\";s:12:\"pa_gioi-tinh\";s:1:\"1\";s:13:\"pa_khoi-luong\";s:1:\"1\";s:13:\"pa_kich-thuoc\";s:1:\"1\";s:9:\"pa_mui-vi\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";}s:18:\"show_toggle_button\";a:13:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:13:\"dispay_in_row\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:16:\"custom_tax_label\";a:13:{s:18:\"product_visibility\";s:7:\"ssdffsd\";s:11:\"product_cat\";s:24:\"Danh mục sản phẩm:\";s:11:\"product_tag\";s:15:\"Thương hiệu\";s:14:\"pa_thuong-hieu\";s:16:\"Thương hiệu:\";s:10:\"pa_mau-sac\";s:11:\"Màu sắc:\";s:12:\"pa_chat-lieu\";s:14:\"Chất liệu:\";s:10:\"pa_do-tuoi\";s:13:\"Độ tuổi:\";s:12:\"pa_dung-tich\";s:11:\"Dung tích:\";s:12:\"pa_gioi-tinh\";s:13:\"Giới tính:\";s:13:\"pa_khoi-luong\";s:16:\"Khối lượng:\";s:13:\"pa_kich-thuoc\";s:15:\"Kích thước:\";s:9:\"pa_mui-vi\";s:10:\"Mùi vị:\";s:10:\"pa_xuat-xu\";s:12:\"Xuất xứ:\";}s:23:\"not_toggled_terms_count\";a:13:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"pa_thuong-hieu\";s:0:\"\";s:10:\"pa_mau-sac\";s:0:\"\";s:12:\"pa_chat-lieu\";s:0:\"\";s:10:\"pa_do-tuoi\";s:0:\"\";s:12:\"pa_dung-tich\";s:0:\"\";s:12:\"pa_gioi-tinh\";s:0:\"\";s:13:\"pa_khoi-luong\";s:0:\"\";s:13:\"pa_kich-thuoc\";s:0:\"\";s:9:\"pa_mui-vi\";s:0:\"\";s:10:\"pa_xuat-xu\";s:0:\"\";}s:12:\"show_tooltip\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"1\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:17:\"show_chain_always\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:23:\"select_radio_check_type\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:25:\"select_radio_check_height\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:22:\"slider_dynamic_recount\";a:13:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"pa_thuong-hieu\";s:1:\"0\";s:10:\"pa_mau-sac\";s:1:\"0\";s:12:\"pa_chat-lieu\";s:1:\"0\";s:10:\"pa_do-tuoi\";s:1:\"0\";s:12:\"pa_dung-tich\";s:1:\"0\";s:12:\"pa_gioi-tinh\";s:1:\"0\";s:13:\"pa_khoi-luong\";s:1:\"0\";s:13:\"pa_kich-thuoc\";s:1:\"0\";s:9:\"pa_mui-vi\";s:1:\"0\";s:10:\"pa_xuat-xu\";s:1:\"0\";}s:3:\"tax\";a:12:{s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"pa_thuong-hieu\";s:1:\"1\";s:10:\"pa_mau-sac\";s:1:\"1\";s:12:\"pa_chat-lieu\";s:1:\"1\";s:10:\"pa_do-tuoi\";s:1:\"1\";s:12:\"pa_dung-tich\";s:1:\"1\";s:12:\"pa_gioi-tinh\";s:1:\"1\";s:13:\"pa_khoi-luong\";s:1:\"1\";s:13:\"pa_kich-thuoc\";s:1:\"1\";s:9:\"pa_mui-vi\";s:1:\"1\";s:10:\"pa_xuat-xu\";s:1:\"1\";}s:5:\"color\";a:1:{s:10:\"pa_mau-sac\";a:13:{s:7:\"com-cam\";s:7:\"#dd9933\";s:6:\"da-cam\";s:7:\"#f9c700\";s:3:\"den\";s:7:\"#0c0c0c\";s:4:\"hong\";s:7:\"#ea00c3\";s:9:\"hong-nhat\";s:7:\"#ffc4f7\";s:4:\"inox\";s:7:\"#e5e5e5\";s:6:\"mau-be\";s:7:\"#840202\";s:3:\"nau\";s:7:\"#6d2a01\";s:3:\"tim\";s:7:\"#7421ce\";s:5:\"trang\";s:7:\"#ffffff\";s:10:\"trang-hong\";s:7:\"#ffc9db\";s:4:\"vang\";s:7:\"#eeee22\";s:10:\"xanh-duong\";s:7:\"#94dfef\";}}s:9:\"color_img\";a:1:{s:10:\"pa_mau-sac\";a:13:{s:7:\"com-cam\";s:0:\"\";s:6:\"da-cam\";s:0:\"\";s:3:\"den\";s:0:\"\";s:4:\"hong\";s:0:\"\";s:9:\"hong-nhat\";s:0:\"\";s:4:\"inox\";s:0:\"\";s:6:\"mau-be\";s:0:\"\";s:3:\"nau\";s:0:\"\";s:3:\"tim\";s:0:\"\";s:5:\"trang\";s:0:\"\";s:10:\"trang-hong\";s:0:\"\";s:4:\"vang\";s:0:\"\";s:10:\"xanh-duong\";s:0:\"\";}}s:11:\"icheck_skin\";s:11:\"flat_orange\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:27:\"Đang tải sản phẩm...\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"1\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:12:\"init_only_on\";s:0:\"\";s:17:\"swoof_search_slug\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:14:\"non_latin_mode\";s:1:\"1\";s:17:\"optimize_js_files\";s:1:\"0\";s:20:\"hide_terms_count_txt\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:9:\"woof_stat\";a:9:{s:10:\"is_enabled\";s:1:\"0\";s:14:\"server_options\";a:4:{s:4:\"host\";s:0:\"\";s:9:\"host_user\";s:0:\"\";s:12:\"host_db_name\";s:0:\"\";s:9:\"host_pass\";s:0:\"\";}s:17:\"user_max_requests\";s:2:\"10\";s:16:\"request_max_deep\";s:1:\"5\";s:12:\"cache_folder\";s:16:\"_woof_stat_cache\";s:11:\"cron_system\";s:1:\"0\";s:15:\"cron_secret_key\";s:18:\"woof_stat_updating\";s:14:\"wp_cron_period\";s:5:\"daily\";s:19:\"max_items_per_graph\";s:2:\"10\";}s:20:\"activated_extensions\";a:13:{i:0;s:32:\"d76595f843f20992df1b7233d576315f\";i:1;s:32:\"e7458638158c73e9c9ba8ab11b1dd071\";i:2;s:32:\"89d1fe7408907abf1f9cd0babaabc621\";i:3;s:32:\"5650527bd67cda90912e5977b6914827\";i:4;s:32:\"033a613df49cd5c79cfda3727316d44c\";i:5;s:32:\"92fe22ed6bb9f2d200b52ad99b1af644\";i:6;s:32:\"fb5128813d6a2d24bfb6c89d12d4dbb3\";i:7;s:32:\"884cdb47a7050888afa7379f69861a13\";i:8;s:32:\"1fdc1c630f59c6499ef7c7859fad3ceb\";i:9;s:32:\"1366446fdb7883de5aa0ec551b0d9891\";i:10;s:32:\"69f031349b43a731d27ebc467c8f8536\";i:11;s:32:\"c4aaeaad95843980aefb612b76ce7a2c\";i:12;s:32:\"ceba53221f4092fb43ea72d58538bb97\";}}","yes"),
("777","woof_version","2.1.7","yes"),
("778","woof_woocs_alert","a:1:{s:29:\"woocommerce-currency-switcher\";i:1;}","no"),
("842","woof_messenger_wpcron","a:1:{s:23:\"woof_products_messenger\";a:3:{s:10:\"start_time\";i:1507284049;s:4:\"next\";i:1558517010;s:10:\"recurrence\";i:1209600;}}","yes"),
("854","widget_mgwoocommercebrands_list_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("855","mgb_where_show","0","yes"),
("856","mgb_brand_title","Thương hiệu:","yes"),
("857","mgb_show_image","1","yes"),
("858","mgb_detail_position","7","yes"),
("859","mgb_category_position","3","yes"),
("885","product_brand_children","a:0:{}","yes"),
("897","yit_recently_activated","a:1:{i:0;s:41:\"yith-woocommerce-ajax-navigation/init.php\";}","yes"),
("902","widget_yith-woo-ajax-navigation","a:2:{i:2;a:9:{s:5:\"title\";s:8:\"fsdfđsf\";s:9:\"attribute\";s:7:\"mau-sac\";s:10:\"query_type\";s:2:\"or\";s:4:\"type\";s:6:\"select\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("903","widget_yith-woo-ajax-reset-navigation","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("904","yit_wcan_options","a:6:{s:29:\"yith_wcan_ajax_shop_container\";s:9:\".products\";s:30:\"yith_wcan_ajax_shop_pagination\";s:26:\"nav.woocommerce-pagination\";s:36:\"yith_wcan_ajax_shop_result_container\";s:25:\".woocommerce-result-count\";s:31:\"yith_wcan_ajax_scroll_top_class\";s:19:\".yit-wcan-container\";s:31:\"yith_wcan_ajax_shop_terms_order\";s:12:\"alphabetical\";s:22:\"yith_wcan_custom_style\";s:0:\"\";}","yes"),
("912","widget_filter-plus","a:5:{i:4;a:17:{s:5:\"title\";s:26:\"Lọc theo thương hiệu\";s:6:\"filter\";s:15:\"thương-hiệu\";s:4:\"type\";s:8:\"checkbox\";s:10:\"query_type\";N;s:14:\"filter_options\";a:1:{i:0;s:15:\"bobby:nfp:Bobby\";}s:18:\"fold_options_after\";s:0:\"\";s:11:\"filter_name\";s:20:\"Các thương hiệu\";s:12:\"price_ranges\";N;s:12:\"min_discount\";N;s:9:\"cat_count\";N;s:13:\"cat_hierarchy\";N;s:14:\"cat_show_child\";N;s:18:\"hide_empty_options\";s:4:\"true\";s:14:\"cat_hide_empty\";N;s:12:\"clear_filter\";s:4:\"true\";s:16:\"cat_availability\";N;s:16:\"additional_class\";N;}i:5;a:17:{s:5:\"title\";s:21:\"Lọc theo màu sắc\";s:6:\"filter\";s:10:\"màu-sắc\";s:4:\"type\";s:8:\"checkbox\";s:10:\"query_type\";s:2:\"or\";s:14:\"filter_options\";a:1:{i:0;s:12:\"do:nfp:Đỏ\";}s:18:\"fold_options_after\";s:0:\"\";s:11:\"filter_name\";s:10:\"Màu sắc\";s:12:\"price_ranges\";N;s:12:\"min_discount\";N;s:9:\"cat_count\";N;s:13:\"cat_hierarchy\";N;s:14:\"cat_show_child\";N;s:18:\"hide_empty_options\";s:0:\"\";s:14:\"cat_hide_empty\";N;s:12:\"clear_filter\";s:4:\"true\";s:16:\"cat_availability\";N;s:16:\"additional_class\";N;}i:6;a:17:{s:5:\"title\";s:23:\"Lọc theo độ tuổi\";s:6:\"filter\";s:12:\"Độ-tuổi\";s:4:\"type\";s:8:\"checkbox\";s:10:\"query_type\";N;s:14:\"filter_options\";a:1:{i:0;s:23:\"3-5-tuoi:nfp:3-5 tuổi\";}s:18:\"fold_options_after\";s:0:\"\";s:11:\"filter_name\";s:12:\"Độ tuổi\";s:12:\"price_ranges\";N;s:12:\"min_discount\";N;s:9:\"cat_count\";N;s:13:\"cat_hierarchy\";N;s:14:\"cat_show_child\";N;s:18:\"hide_empty_options\";s:0:\"\";s:14:\"cat_hide_empty\";N;s:12:\"clear_filter\";s:4:\"true\";s:16:\"cat_availability\";N;s:16:\"additional_class\";N;}i:7;a:17:{s:5:\"title\";s:11:\"Xuất xứ\";s:6:\"filter\";s:11:\"xuất-xứ\";s:4:\"type\";s:11:\"Select type\";s:10:\"query_type\";N;s:14:\"filter_options\";a:1:{i:0;s:27:\"trung-quoc:nfp:Trung Quốc\";}s:18:\"fold_options_after\";s:0:\"\";s:11:\"filter_name\";s:11:\"Xuất xứ\";s:12:\"price_ranges\";N;s:12:\"min_discount\";N;s:9:\"cat_count\";N;s:13:\"cat_hierarchy\";N;s:14:\"cat_show_child\";N;s:18:\"hide_empty_options\";s:0:\"\";s:14:\"cat_hide_empty\";N;s:12:\"clear_filter\";s:4:\"true\";s:16:\"cat_availability\";N;s:16:\"additional_class\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("914","nfp_sidebar_archives","shop-sidebar","yes"),
("915","nfp_toogle_position","before_breadcrumb","yes"),
("916","nfp_sidebar_style","absolute","yes"),
("917","nfp_default_per_page","12","yes"),
("918","nfp_insert_perpage_options","","yes"),
("919","nfp_ajax_refresh","đang tải...","yes"),
("920","nfp_custom_css","","yes"),
("921","nfp_products_class","","yes"),
("922","nfp_pagination_class","","yes"),
("923","nfp_taxonomies","a:12:{i:0;a:2:{s:8:\"singular\";s:15:\"Thương hiệu\";s:6:\"plural\";s:20:\"Các thương hiệu\";}i:1;a:2:{s:8:\"singular\";s:10:\"Màu sắc\";s:6:\"plural\";s:10:\"Màu sắc\";}i:2;a:2:{s:8:\"singular\";s:12:\"Độ tuổi\";s:6:\"plural\";s:12:\"Độ tuổi\";}i:3;a:2:{s:8:\"singular\";s:14:\"Kích thước\";s:6:\"plural\";s:14:\"Kích thước\";}i:4;a:2:{s:8:\"singular\";s:12:\"Giới tính\";s:6:\"plural\";s:12:\"Giới tính\";}i:5;a:2:{s:8:\"singular\";s:9:\"Mùi vị\";s:6:\"plural\";s:9:\"Mùi vị\";}i:6;a:2:{s:8:\"singular\";s:13:\"Chất liệu\";s:6:\"plural\";s:13:\"Chất liệu\";}i:7;a:2:{s:8:\"singular\";s:15:\"Khối lượng\";s:6:\"plural\";s:15:\"Khối lượng\";}i:8;a:2:{s:8:\"singular\";s:10:\"Dung tích\";s:6:\"plural\";s:10:\"Dung tích\";}i:9;a:2:{s:8:\"singular\";s:11:\"Xuất xứ\";s:6:\"plural\";s:11:\"Xuất xứ\";}i:10;a:2:{s:8:\"singular\";s:14:\"Khuyến mại\";s:6:\"plural\";s:14:\"Khuyến mại\";}i:11;a:2:{s:8:\"singular\";s:0:\"\";s:6:\"plural\";s:0:\"\";}}","yes"),
("924","nfp_ajax_loading","true","yes"),
("936","mùi-vị_children","a:0:{}","yes"),
("939","dung-tích_children","a:0:{}","yes"),
("941","khuyến-mại_children","a:0:{}","yes"),
("944","màu-sắc_children","a:0:{}","yes"),
("945","Độ-tuổi_children","a:0:{}","yes"),
("946","kích-thước_children","a:0:{}","yes"),
("947","giới-tính_children","a:0:{}","yes"),
("948","chất-liệu_children","a:0:{}","yes"),
("949","xuất-xứ_children","a:0:{}","yes"),
("950","khối-lượng_children","a:0:{}","yes");
INSERT INTO bz_options VALUES
("1037","woocommerce_gateway_order","a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}","yes"),
("1039","woocommerce_bacs_accounts","a:2:{i:0;a:6:{s:12:\"account_name\";s:16:\"Lê Văn Thiện\";s:14:\"account_number\";s:13:\"2000206180703\";s:9:\"bank_name\";s:31:\"Agribank Chi nhánh Đà Nẵng\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:1;a:6:{s:12:\"account_name\";s:16:\"Lê Văn Thiện\";s:14:\"account_number\";s:13:\"0691000374599\";s:9:\"bank_name\";s:31:\"Vietcombank Chi nhánh Hà Tây\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}","yes"),
("1711","installer_repositories_with_theme","a:1:{i:0;s:7:\"toolset\";}","yes"),
("1713","custom_product_tabs_onesix_data_update","1","yes"),
("1714","yikes_woo_reusable_products_tabs","a:1:{i:1;a:7:{s:9:\"tab_title\";s:20:\"Video giới thiệu\";s:8:\"tab_name\";s:20:\"Video giới thiệu\";s:11:\"tab_content\";s:167:\"<center><iframe src=\\\"https://www.youtube.com/embed/3_ENjNkZowA\\\" width=\\\"800\\\" height=\\\"400\\\" frameborder=\\\"0\\\" allowfullscreen=\\\"allowfullscreen\\\"></iframe></center>\";s:6:\"tab_id\";i:1;s:10:\"taxonomies\";a:0:{}s:8:\"tab_slug\";s:16:\"video-gioi-thieu\";s:10:\"global_tab\";b:0;}}","yes"),
("1715","yikes_woo_reusable_products_tabs_applied","a:1:{i:958;a:1:{i:1;a:3:{s:7:\"post_id\";i:958;s:15:\"reusable_tab_id\";s:1:\"1\";s:6:\"tab_id\";s:16:\"video-gioi-thieu\";}}}","yes"),
("1927","category_children","a:0:{}","yes"),
("1954","wp_rocket_dismiss_imagify_notice","0","yes"),
("1968","wp_rocket_settings","a:66:{s:12:\"consumer_key\";s:8:\"9f0ea161\";s:14:\"consumer_email\";s:18:\"sayit123@gmail.com\";s:10:\"secret_key\";s:8:\"a49982e0\";s:7:\"license\";s:10:\"1507707889\";s:16:\"secret_cache_key\";s:22:\"59ddcbeed157e549240662\";s:14:\"minify_css_key\";s:22:\"59ddd226316b9740020006\";s:13:\"minify_js_key\";s:22:\"59ddd226316c0853502490\";s:7:\"version\";s:6:\"2.10.9\";s:23:\"cloudflare_old_settings\";s:1:\"0\";s:18:\"cloudflare_zone_id\";s:0:\"\";s:17:\"minify_css_legacy\";s:1:\"1\";s:16:\"minify_js_legacy\";s:1:\"1\";s:8:\"lazyload\";s:1:\"1\";s:16:\"lazyload_iframes\";s:1:\"1\";s:12:\"cache_mobile\";s:1:\"1\";s:19:\"purge_cron_interval\";i:24;s:15:\"purge_cron_unit\";s:15:\"HOUR_IN_SECONDS\";s:11:\"minify_html\";s:1:\"1\";s:10:\"minify_css\";i:1;s:9:\"minify_js\";i:1;s:19:\"minify_google_fonts\";s:1:\"1\";s:22:\"minify_concatenate_css\";s:1:\"1\";s:21:\"minify_concatenate_js\";s:1:\"1\";s:11:\"exclude_css\";a:0:{}s:10:\"exclude_js\";a:0:{}s:12:\"critical_css\";s:0:\"\";s:10:\"cdn_cnames\";a:0:{}s:8:\"cdn_zone\";a:0:{}s:16:\"cdn_reject_files\";a:0:{}s:16:\"cache_reject_uri\";a:0:{}s:20:\"cache_reject_cookies\";a:0:{}s:15:\"cache_reject_ua\";a:0:{}s:17:\"cache_purge_pages\";a:0:{}s:19:\"cache_query_strings\";a:0:{}s:18:\"database_revisions\";i:1;s:20:\"database_auto_drafts\";i:1;s:22:\"database_trashed_posts\";i:1;s:22:\"database_spam_comments\";i:1;s:25:\"database_trashed_comments\";i:1;s:27:\"database_expired_transients\";i:1;s:23:\"database_all_transients\";i:1;s:24:\"database_optimize_tables\";i:1;s:26:\"schedule_automatic_cleanup\";i:1;s:27:\"automatic_cleanup_frequency\";s:5:\"daily\";s:15:\"sitemap_preload\";i:1;s:25:\"sitemap_preload_url_crawl\";s:7:\"1000000\";s:8:\"sitemaps\";a:0:{}s:14:\"manual_preload\";i:1;s:17:\"automatic_preload\";i:1;s:12:\"dns_prefetch\";a:0:{}s:16:\"cloudflare_email\";s:0:\"\";s:18:\"cloudflare_api_key\";s:0:\"\";s:17:\"cloudflare_domain\";s:15:\"ninhbinhweb.com\";s:18:\"cloudflare_devmode\";i:0;s:24:\"cloudflare_auto_settings\";i:0;s:27:\"cloudflare_protocol_rewrite\";s:1:\"0\";s:14:\"wl_plugin_name\";s:9:\"WP Rocket\";s:13:\"wl_plugin_URI\";s:24:\"https://www.wp-rocket.me\";s:14:\"wl_description\";a:1:{i:0;s:38:\"The best WordPress performance plugin.\";}s:9:\"wl_author\";s:9:\"WP Rocket\";s:13:\"wl_author_URI\";s:24:\"https://www.wp-rocket.me\";s:20:\"remove_query_strings\";i:0;s:16:\"exclude_defer_js\";a:0:{}s:17:\"deferred_js_files\";a:0:{}s:19:\"minify_js_in_footer\";a:0:{}s:14:\"wl_plugin_slug\";s:8:\"wprocket\";}","yes"),
("2099","wdev-frash","a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1507708628;}s:5:\"queue\";a:2:{s:32:\"7de3619981caadc55f30a002bfb299f6\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1507708628;}s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1508313428;}}s:4:\"done\";a:0:{}}","no"),
("2103","smush_global_stats","a:9:{s:11:\"size_before\";i:0;s:10:\"size_after\";i:0;s:7:\"percent\";d:0;s:5:\"human\";s:5:\"0,0 B\";s:5:\"bytes\";i:0;s:12:\"total_images\";i:0;s:14:\"resize_savings\";i:0;s:12:\"resize_count\";i:0;s:18:\"conversion_savings\";i:0;}","no"),
("2111","skip-smush-setup","1","no"),
("2238","woocommerce_new_order_settings","a:5:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:22:\"giuselethien@gmail.com\";s:7:\"subject\";s:73:\"Thông báo đơn hàng mới trên website Mẹ và Bé | Ninh Bình Web\";s:7:\"heading\";s:17:\"Đơn hàng mới\";s:10:\"email_type\";s:4:\"html\";}","yes"),
("2240","woocommerce_customer_completed_order_settings","a:4:{s:7:\"enabled\";s:3:\"yes\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}","yes"),
("2283","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"doivodesign@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533246184;}","no"),
("2310","dbprefix_old_dbprefix","wp_","yes"),
("2311","dbprefix_new","bz_","yes"),
("4000","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("4002","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("4007","_site_transient_update_wprocket_response","O:8:\"stdClass\":5:{s:4:\"slug\";s:9:\"wp-rocket\";s:6:\"plugin\";s:23:\"wp-rocket/wp-rocket.php\";s:11:\"new_version\";s:7:\"3.0.5.1\";s:3:\"url\";s:20:\"https://wp-rocket.me\";s:7:\"package\";s:51:\"https://wp-rocket.me/9f0ea161/wp-rocket_3.0.5.1.zip\";}","no"),
("4014","_site_transient_update_wprocket","1531226340","no"),
("4015","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"6\";s:14:\"total_comments\";i:6;s:3:\"all\";i:6;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("4026","_transient_shipping-transient-version","1531228058","yes"),
("4069","_transient_product_query-transient-version","1531247157","yes"),
("14871","recovery_keys","a:0:{}","yes"),
("14881","_transient_timeout_wc_term_counts","1559912618","no"),
("14882","_transient_wc_term_counts","a:27:{i:24;s:1:\"3\";i:16;s:1:\"8\";i:86;s:1:\"8\";i:140;s:1:\"1\";i:19;s:1:\"1\";i:135;s:1:\"1\";i:31;s:1:\"1\";i:114;s:1:\"1\";i:121;s:1:\"1\";i:113;s:1:\"8\";i:119;s:1:\"3\";i:43;s:1:\"1\";i:20;s:1:\"1\";i:30;s:1:\"1\";i:17;s:1:\"6\";i:117;s:1:\"1\";i:27;s:1:\"1\";i:89;s:1:\"1\";i:116;s:1:\"2\";i:88;s:1:\"1\";i:87;s:1:\"8\";i:103;s:1:\"1\";i:90;s:1:\"1\";i:91;s:1:\"1\";i:92;s:1:\"2\";i:107;s:1:\"1\";i:18;s:1:\"1\";}","no"),
("14884","_transient_timeout_wc_products_will_display_249_1531247157","1559915154","no"),
("14885","_transient_wc_products_will_display_249_1531247157","1","no"),
("14891","_transient_timeout_wc_products_will_display_288_1531247157","1559924180","no"),
("14892","_transient_wc_products_will_display_288_1531247157","1","no"),
("14927","_transient_timeout_wc_products_will_display_298_1531247157","1559968201","no"),
("14928","_transient_wc_products_will_display_298_1531247157","1","no"),
("14931","_transient_timeout_wc_products_will_display_224_1531247157","1560597428","no"),
("14932","_transient_wc_products_will_display_224_1531247157","1","no"),
("14933","_transient_timeout_wc_products_will_display_269_1531247157","1560597388","no"),
("14934","_transient_wc_products_will_display_269_1531247157","1","no"),
("14935","_transient_timeout_wc_products_will_display_260_1531247157","1560597378","no"),
("14936","_transient_wc_products_will_display_260_1531247157","1","no"),
("14937","_transient_timeout_wc_products_will_display_246_1531247157","1560597309","no"),
("14938","_transient_wc_products_will_display_246_1531247157","1","no"),
("14939","_transient_timeout_wc_products_will_display_174_1531247157","1560597239","no"),
("14940","_transient_wc_products_will_display_174_1531247157","1","no"),
("14941","_transient_timeout_wc_products_will_display_190_1531247157","1560597218","no"),
("14942","_transient_wc_products_will_display_190_1531247157","1","no"),
("14950","_transient_timeout_wc_products_will_display_265_1531247157","1560596469","no"),
("14951","_transient_wc_products_will_display_265_1531247157","1","no"),
("14952","_transient_timeout_wc_products_will_display_221_1531247157","1560593230","no"),
("14953","_transient_wc_products_will_display_221_1531247157","1","no"),
("14956","_transient_timeout_wc_products_will_display_310_1531247157","1560596288","no"),
("14957","_transient_wc_products_will_display_310_1531247157","1","no"),
("14990","_transient_timeout_wc_products_will_display_317_1531247157","1560040045","no"),
("14991","_transient_wc_products_will_display_317_1531247157","1","no"),
("15085","_transient_timeout_wc_products_will_display_290_1531247157","1560243880","no"),
("15086","_transient_wc_products_will_display_290_1531247157","1","no"),
("15087","_transient_timeout_wc_products_will_display_197_1531247157","1560243959","no"),
("15088","_transient_wc_products_will_display_197_1531247157","1","no"),
("15089","_transient_timeout_wc_products_will_display_182_1531247157","1560244000","no"),
("15090","_transient_wc_products_will_display_182_1531247157","1","no"),
("15091","_transient_timeout_wc_products_will_display_205_1531247157","1560244269","no"),
("15092","_transient_wc_products_will_display_205_1531247157","1","no"),
("15093","_transient_timeout_wc_products_will_display_311_1531247157","1560244519","no"),
("15094","_transient_wc_products_will_display_311_1531247157","1","no"),
("15095","_transient_timeout_wc_products_will_display_173_1531247157","1560244620","no"),
("15096","_transient_wc_products_will_display_173_1531247157","1","no"),
("15097","_transient_timeout_wc_products_will_display_308_1531247157","1560244799","no"),
("15098","_transient_wc_products_will_display_308_1531247157","1","no"),
("15099","_transient_timeout_wc_products_will_display_261_1531247157","1560244849","no"),
("15100","_transient_wc_products_will_display_261_1531247157","1","no"),
("15105","_transient_timeout_wc_products_will_display_258_1531247157","1560244860","no"),
("15106","_transient_wc_products_will_display_258_1531247157","1","no"),
("15107","_transient_timeout_wc_products_will_display_241_1531247157","1560244891","no"),
("15108","_transient_wc_products_will_display_241_1531247157","1","no"),
("15109","_transient_timeout_wc_products_will_display_318_1531247157","1560244940","no"),
("15110","_transient_wc_products_will_display_318_1531247157","1","no"),
("15111","_transient_timeout_wc_products_will_display_227_1531247157","1560244950","no"),
("15112","_transient_wc_products_will_display_227_1531247157","1","no"),
("15113","_transient_timeout_wc_products_will_display_229_1531247157","1560244970","no"),
("15114","_transient_wc_products_will_display_229_1531247157","1","no"),
("15116","_transient_timeout_wc_products_will_display_313_1531247157","1560245049","no"),
("15117","_transient_wc_products_will_display_313_1531247157","1","no"),
("15123","_transient_timeout_wc_products_will_display_245_1531247157","1560245060","no"),
("15124","_transient_wc_products_will_display_245_1531247157","1","no"),
("15125","_transient_timeout_wc_products_will_display_316_1531247157","1560245079","no"),
("15126","_transient_wc_products_will_display_316_1531247157","1","no"),
("15127","_transient_timeout_wc_products_will_display_156_1531247157","1560245089","no"),
("15128","_transient_wc_products_will_display_156_1531247157","1","no"),
("15130","_transient_timeout_wc_products_will_display_314_1531247157","1560245621","no"),
("15131","_transient_wc_products_will_display_314_1531247157","1","no"),
("15132","_transient_timeout_wc_products_will_display_309_1531247157","1560245626","no"),
("15133","_transient_wc_products_will_display_309_1531247157","1","no"),
("15134","_transient_timeout_wc_products_will_display_165_1531247157","1560246039","no"),
("15135","_transient_wc_products_will_display_165_1531247157","1","no"),
("15136","_transient_timeout_wc_products_will_display_169_1531247157","1560246043","no"),
("15137","_transient_wc_products_will_display_169_1531247157","1","no"),
("15138","_transient_timeout_wc_products_will_display_240_1531247157","1560246879","no"),
("15139","_transient_wc_products_will_display_240_1531247157","1","no"),
("15140","_transient_timeout_wc_products_will_display_237_1531247157","1560246889","no"),
("15141","_transient_wc_products_will_display_237_1531247157","1","no"),
("15142","_transient_timeout_wc_products_will_display_239_1531247157","1560246911","no");
INSERT INTO bz_options VALUES
("15143","_transient_wc_products_will_display_239_1531247157","1","no"),
("15144","_transient_timeout_wc_products_will_display_259_1531247157","1560246940","no"),
("15145","_transient_wc_products_will_display_259_1531247157","1","no"),
("15146","_transient_timeout_wc_products_will_display_243_1531247157","1560246970","no"),
("15147","_transient_wc_products_will_display_243_1531247157","1","no"),
("15148","_transient_timeout_wc_products_will_display_225_1531247157","1560246999","no"),
("15149","_transient_wc_products_will_display_225_1531247157","1","no"),
("15150","_transient_timeout_wc_products_will_display_253_1531247157","1560247009","no"),
("15151","_transient_wc_products_will_display_253_1531247157","1","no"),
("15152","_transient_timeout_wc_products_will_display_320_1531247157","1560247029","no"),
("15153","_transient_wc_products_will_display_320_1531247157","1","no"),
("15155","_transient_timeout_wc_products_will_display_226_1531247157","1560247661","no"),
("15156","_transient_wc_products_will_display_226_1531247157","1","no"),
("15212","_transient_timeout_wc_products_will_display_315_1531247157","1560358046","no"),
("15213","_transient_wc_products_will_display_315_1531247157","1","no"),
("15283","_transient_timeout_wc_related_1071","1558021417","no"),
("15284","_transient_wc_related_1071","a:7:{i:0;s:4:\"1073\";i:1;s:4:\"1075\";i:2;s:4:\"1077\";i:3;s:4:\"1079\";i:4;s:4:\"1081\";i:5;s:4:\"1083\";i:6;s:4:\"1085\";}","no"),
("15304","wp_page_for_privacy_policy","0","yes"),
("15305","show_comments_cookies_opt_in","1","yes"),
("15306","db_upgraded","","yes"),
("15325","_transient_timeout_wc_products_will_display_199_1531247157","1560592568","no"),
("15326","_transient_wc_products_will_display_199_1531247157","1","no"),
("15328","_transient_timeout_wc_products_will_display_202_1531247157","1560592929","no"),
("15329","_transient_wc_products_will_display_202_1531247157","1","no"),
("15334","_transient_timeout_wc_products_will_display_186_1531247157","1560596558","no"),
("15335","_transient_wc_products_will_display_186_1531247157","1","no"),
("15339","_transient_timeout_wc_products_will_display_171_1531247157","1560596739","no"),
("15340","_transient_wc_products_will_display_171_1531247157","1","no"),
("15341","_transient_timeout_wc_related_1083","1558130378","no"),
("15342","_transient_wc_related_1083","a:8:{i:0;s:4:\"1071\";i:1;s:4:\"1073\";i:2;s:4:\"1075\";i:3;s:4:\"1077\";i:4;s:4:\"1079\";i:5;s:4:\"1081\";i:6;s:4:\"1085\";s:52:\"limit=6&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=1083\";a:7:{i:0;s:4:\"1071\";i:1;s:4:\"1073\";i:2;s:4:\"1075\";i:3;s:4:\"1077\";i:4;s:4:\"1079\";i:5;s:4:\"1081\";i:6;s:4:\"1085\";}}","no"),
("15343","_transient_timeout_wc_related_1079","1558091198","no"),
("15344","_transient_wc_related_1079","a:7:{i:0;s:4:\"1071\";i:1;s:4:\"1073\";i:2;s:4:\"1075\";i:3;s:4:\"1077\";i:4;s:4:\"1081\";i:5;s:4:\"1083\";i:6;s:4:\"1085\";}","no"),
("15347","_transient_timeout_wc_products_will_display_247_1531247157","1560596838","no"),
("15348","_transient_wc_products_will_display_247_1531247157","1","no"),
("15349","_transient_timeout_wc_products_will_display_321_1531247157","1560596858","no"),
("15350","_transient_wc_products_will_display_321_1531247157","1","no"),
("15351","_transient_timeout_wc_products_will_display_158_1531247157","1560596869","no"),
("15352","_transient_wc_products_will_display_158_1531247157","1","no"),
("15353","_transient_timeout_wc_products_will_display_228_1531247157","1560596888","no"),
("15354","_transient_wc_products_will_display_228_1531247157","1","no"),
("15356","_site_transient_timeout_browser_d4e45323b0d755ac9998e384872d633c","1558616454","no"),
("15357","_site_transient_browser_d4e45323b0d755ac9998e384872d633c","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("15358","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558616456","no"),
("15359","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("15360","_transient_timeout_wc_report_sales_by_date","1558098056","no"),
("15361","_transient_wc_report_sales_by_date","a:8:{s:32:\"93d13ce0df050fe9550ff1ae4416d5ca\";a:0:{}s:32:\"5bcda1f5af471d5de4c944345ed2cf71\";a:0:{}s:32:\"40348b37e9893ef0ead060e3b26efb09\";a:0:{}s:32:\"1ea05db22b4a12c2b61f2e2d8ef21b91\";N;s:32:\"4d424fd2c70f6c0cab8aae6f2b3ec5e2\";a:0:{}s:32:\"402e5216d826294591812b2bacf86455\";a:0:{}s:32:\"60b971d632a80d6be4e692536ff0f515\";a:0:{}s:32:\"ffddebe0274288d59430254a3ef32665\";a:0:{}}","no"),
("15362","_transient_timeout_wc_admin_report","1558098056","no"),
("15363","_transient_wc_admin_report","a:1:{s:32:\"fac9523c34a56260080d8fbcc79d662b\";a:0:{}}","no"),
("15364","_transient_timeout_wc_low_stock_count","1560603656","no"),
("15365","_transient_wc_low_stock_count","0","no"),
("15366","_transient_timeout_wc_outofstock_count","1560603656","no"),
("15367","_transient_wc_outofstock_count","0","no"),
("15368","can_compress_scripts","0","no"),
("15370","_transient_timeout__woocommerce_helper_subscriptions","1558012815","no"),
("15371","_transient__woocommerce_helper_subscriptions","a:0:{}","no"),
("15374","_transient_timeout__woocommerce_helper_updates","1558055116","no"),
("15375","_transient__woocommerce_helper_updates","a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1558011915;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}","no"),
("15376","_transient_timeout_plugin_slugs","1558098426","no"),
("15377","_transient_plugin_slugs","a:7:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:37:\"woocommerce-products-filter/index.php\";i:6;s:27:\"woosidebars/woosidebars.php\";}","no"),
("15378","_transient_timeout_wc_upgrade_notice_3.1.2","1558098320","no"),
("15379","_transient_wc_upgrade_notice_3.1.2","","no"),
("15385","custom_product_tabs_onesixone_data_update","1","yes"),
("15388","_transient_timeout_external_ip_address_113.173.5.101","1558616889","no"),
("15389","_transient_external_ip_address_113.173.5.101","103.74.117.155","no"),
("15390","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("15391","current_theme_supports_woocommerce","yes","yes"),
("15392","woocommerce_queue_flush_rewrite_rules","no","yes"),
("15395","woocommerce_store_address","","yes"),
("15396","woocommerce_store_address_2","","yes"),
("15397","woocommerce_store_city","","yes"),
("15398","woocommerce_store_postcode","","yes"),
("15399","woocommerce_placeholder_image","1667","yes"),
("15400","woocommerce_erasure_request_removes_order_data","no","no"),
("15401","woocommerce_erasure_request_removes_download_data","no","no"),
("15402","woocommerce_allow_bulk_remove_personal_data","no","no"),
("15403","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("15404","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("15405","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("15406","woocommerce_trash_pending_orders","","no"),
("15407","woocommerce_trash_failed_orders","","no"),
("15408","woocommerce_trash_cancelled_orders","","no"),
("15409","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("15410","woocommerce_allow_tracking","no","no"),
("15411","woocommerce_show_marketplace_suggestions","yes","no"),
("15412","woocommerce_single_image_width","600","yes"),
("15413","woocommerce_thumbnail_image_width","300","yes"),
("15414","woocommerce_checkout_highlight_required_fields","yes","yes"),
("15415","product_cat_children","a:19:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}i:17;a:11:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:23;i:4;i:24;i:5;i:25;i:6;i:26;i:7;i:27;i:8;i:28;i:9;i:29;i:10;i:30;}i:18;a:8:{i:0;i:31;i:1;i:32;i:2;i:33;i:3;i:34;i:4;i:35;i:5;i:36;i:6;i:37;i:7;i:38;}i:19;a:6:{i:0;i:39;i:1;i:40;i:2;i:41;i:3;i:42;i:4;i:43;i:5;i:44;}i:46;a:4:{i:0;i:47;i:1;i:53;i:2;i:57;i:3;i:62;}i:47;a:5:{i:0;i:48;i:1;i:49;i:2;i:50;i:3;i:51;i:4;i:52;}i:53;a:3:{i:0;i:54;i:1;i:55;i:2;i:56;}i:57;a:4:{i:0;i:58;i:1;i:59;i:2;i:60;i:3;i:61;}i:62;a:4:{i:0;i:63;i:1;i:64;i:2;i:65;i:3;i:66;}i:67;a:11:{i:0;i:68;i:1;i:72;i:2;i:77;i:3;i:78;i:4;i:79;i:5;i:80;i:6;i:81;i:7;i:82;i:8;i:83;i:9;i:84;i:10;i:85;}i:68;a:3:{i:0;i:69;i:1;i:70;i:2;i:71;}i:72;a:4:{i:0;i:73;i:1;i:74;i:2;i:75;i:3;i:76;}i:86;a:2:{i:0;i:87;i:1;i:95;}i:87;a:15:{i:0;i:88;i:1;i:89;i:2;i:90;i:3;i:91;i:4;i:92;i:5;i:101;i:6;i:102;i:7;i:103;i:8;i:104;i:9;i:105;i:10;i:106;i:11;i:107;i:12;i:108;i:13;i:109;i:14;i:110;}i:95;a:5:{i:0;i:96;i:1;i:97;i:2;i:98;i:3;i:99;i:4;i:100;}i:113;a:7:{i:0;i:114;i:1;i:115;i:2;i:116;i:3;i:117;i:4;i:118;i:5;i:119;i:6;i:120;}i:114;a:5:{i:0;i:121;i:1;i:122;i:2;i:123;i:3;i:124;i:4;i:125;}i:115;a:6:{i:0;i:126;i:1;i:127;i:2;i:128;i:3;i:129;i:4;i:130;i:5;i:131;}i:116;a:7:{i:0;i:132;i:1;i:133;i:2;i:134;i:3;i:135;i:4;i:136;i:5;i:137;i:6;i:140;}}","yes"),
("15416","default_product_cat","324","yes"),
("15423","woocommerce_version","3.6.2","yes"),
("15425","_transient_timeout_external_ip_address_103.74.117.155","1558616892","no"),
("15426","_transient_external_ip_address_103.74.117.155","103.74.117.155","no"),
("15429","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558042661;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("15431","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558042664;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.2\";s:8:\"me-va-be\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("15432","_transient_wc_attribute_taxonomies","a:10:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"8\";s:14:\"attribute_name\";s:9:\"chat-lieu\";s:15:\"attribute_label\";s:13:\"Chất liệu\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:7:\"do-tuoi\";s:15:\"attribute_label\";s:12:\"Độ tuổi\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"10\";s:14:\"attribute_name\";s:9:\"dung-tich\";s:15:\"attribute_label\";s:10:\"Dung tích\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"6\";s:14:\"attribute_name\";s:9:\"gioi-tinh\";s:15:\"attribute_label\";s:12:\"Giới tính\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:4;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"9\";s:14:\"attribute_name\";s:10:\"khoi-luong\";s:15:\"attribute_label\";s:15:\"Khối lượng\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:5;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:10:\"kich-thuoc\";s:15:\"attribute_label\";s:14:\"Kích thước\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:6;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:7;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"7\";s:14:\"attribute_name\";s:6:\"mui-vi\";s:15:\"attribute_label\";s:9:\"Mùi vị\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:8;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:11:\"thuong-hieu\";s:15:\"attribute_label\";s:15:\"Thương hiệu\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:9;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"11\";s:14:\"attribute_name\";s:7:\"xuat-xu\";s:15:\"attribute_label\";s:11:\"Xuất xứ\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}","yes"),
("15446","_transient_timeout_external_ip_address_35.241.255.251","1558638071","no"),
("15447","_transient_external_ip_address_35.241.255.251","103.74.117.155","no"),
("15484","_transient_timeout_wc_related_972","1558125800","no"),
("15485","_transient_wc_related_972","a:1:{s:51:\"limit=6&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=972\";a:7:{i:0;s:3:\"962\";i:1;s:3:\"964\";i:2;s:3:\"966\";i:3;s:3:\"968\";i:4;s:3:\"970\";i:5;s:3:\"974\";i:6;s:3:\"976\";}}","no"),
("15493","_site_transient_timeout_theme_roots","1558044463","no");
INSERT INTO bz_options VALUES
("15494","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:8:\"me-va-be\";s:7:\"/themes\";}","no"),
("15495","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558042666;s:7:\"checked\";a:6:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";s:6:\"1.6.10\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";s:37:\"woocommerce-products-filter/index.php\";s:5:\"2.1.7\";s:27:\"woosidebars/woosidebars.php\";s:5:\"1.4.5\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:60:\"w.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs\";s:4:\"slug\";s:46:\"yikes-inc-easy-custom-woocommerce-product-tabs\";s:6:\"plugin\";s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";s:11:\"new_version\";s:6:\"1.6.10\";s:3:\"url\";s:77:\"https://wordpress.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/yikes-inc-easy-custom-woocommerce-product-tabs.1.6.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-256x256.png?rev=1558461\";s:2:\"1x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-128x128.png?rev=1558461\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:102:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-1544x500.png?rev=1558461\";s:2:\"1x\";s:101:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-772x250.png?rev=1558478\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"woocommerce-products-filter/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-filter\";s:4:\"slug\";s:27:\"woocommerce-products-filter\";s:6:\"plugin\";s:37:\"woocommerce-products-filter/index.php\";s:11:\"new_version\";s:7:\"1.2.2.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-filter/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-128x128.png?rev=1208072\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=2071519\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woosidebars/woosidebars.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woosidebars\";s:4:\"slug\";s:11:\"woosidebars\";s:6:\"plugin\";s:27:\"woosidebars/woosidebars.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woosidebars/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woosidebars.1.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/woosidebars_a9c7b8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/woosidebars/assets/banner-1544x500.png?rev=633896\";s:2:\"1x\";s:65:\"https://ps.w.org/woosidebars/assets/banner-772x250.png?rev=633896\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("15499","_transient_timeout_wc_related_816","1558132025","no"),
("15500","_transient_wc_related_816","a:1:{s:51:\"limit=6&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=816\";a:6:{i:0;s:3:\"834\";i:1;s:3:\"838\";i:2;s:3:\"844\";i:3;s:3:\"846\";i:4;s:3:\"958\";i:5;s:3:\"960\";}}","no");




CREATE TABLE `bz_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4693 DEFAULT CHARSET=utf8;


INSERT INTO bz_postmeta VALUES
("1","2","_wp_page_template","default"),
("70","49","_wp_attached_file","2017/10/avaat.jpg"),
("71","49","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2017/10/avaat.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"avaat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("72","50","_wp_attached_file","2017/10/cropped-avaat.jpg"),
("73","50","_wp_attachment_context","site-icon"),
("74","50","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2017/10/cropped-avaat.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-avaat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-avaat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-avaat-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-avaat-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-avaat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-avaat-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("85","56","_wp_attached_file","2017/10/main-bg.jpg"),
("86","56","_wp_attachment_metadata","a:5:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:19:\"2017/10/main-bg.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("139","92","_edit_last","1"),
("140","92","_edit_lock","1507041841:1"),
("141","92","_footer","normal"),
("142","92","_wp_page_template","default"),
("143","94","_edit_last","1"),
("144","94","_edit_lock","1507041862:1"),
("145","94","_footer","normal"),
("146","94","_wp_page_template","default"),
("147","96","_edit_last","1"),
("148","96","_footer","normal"),
("149","96","_wp_page_template","default"),
("150","96","_edit_lock","1507041868:1"),
("151","98","_edit_last","1"),
("152","98","_footer","normal"),
("153","98","_wp_page_template","default"),
("154","98","_edit_lock","1507041874:1"),
("155","100","_edit_last","1"),
("156","100","_edit_lock","1507041908:1"),
("157","100","_footer","normal"),
("158","100","_wp_page_template","default"),
("159","102","_edit_last","1"),
("160","102","_footer","normal"),
("161","102","_wp_page_template","page-blank.php"),
("162","102","_edit_lock","1507275503:1"),
("163","104","_menu_item_type","post_type"),
("164","104","_menu_item_menu_item_parent","0"),
("165","104","_menu_item_object_id","100"),
("166","104","_menu_item_object","page"),
("167","104","_menu_item_target",""),
("168","104","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("169","104","_menu_item_xfn",""),
("170","104","_menu_item_url",""),
("171","104","_menu_item_orphaned","1507042080"),
("190","107","_menu_item_type","post_type"),
("191","107","_menu_item_menu_item_parent","0"),
("192","107","_menu_item_object_id","94"),
("193","107","_menu_item_object","page"),
("194","107","_menu_item_target",""),
("195","107","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("196","107","_menu_item_xfn",""),
("197","107","_menu_item_url",""),
("199","108","_menu_item_type","post_type"),
("200","108","_menu_item_menu_item_parent","0"),
("201","108","_menu_item_object_id","92"),
("202","108","_menu_item_object","page"),
("203","108","_menu_item_target",""),
("204","108","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("205","108","_menu_item_xfn",""),
("206","108","_menu_item_url",""),
("208","109","_menu_item_type","custom"),
("209","109","_menu_item_menu_item_parent","0"),
("210","109","_menu_item_object_id","109"),
("211","109","_menu_item_object","custom"),
("212","109","_menu_item_target",""),
("213","109","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("214","109","_menu_item_xfn",""),
("215","109","_menu_item_url","tel:+0909009009"),
("233","122","_edit_last","1"),
("234","122","_edit_lock","1507043818:1"),
("235","122","_thumbnail_id",""),
("264","145","_wp_attached_file","2017/10/logo-giuseart.png"),
("265","145","_wp_attachment_metadata","a:5:{s:5:\"width\";i:374;s:6:\"height\";i:88;s:4:\"file\";s:25:\"2017/10/logo-giuseart.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x88.png\";s:5:\"width\";i:150;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-180x88.png\";s:5:\"width\";i:180;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-300x88.png\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("278","152","_menu_item_type","custom"),
("279","152","_menu_item_menu_item_parent","0"),
("280","152","_menu_item_object_id","152"),
("281","152","_menu_item_object","custom"),
("282","152","_menu_item_target",""),
("283","152","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("284","152","_menu_item_xfn",""),
("285","152","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/"),
("329","189","_menu_item_type","custom"),
("330","189","_menu_item_menu_item_parent","0"),
("331","189","_menu_item_object_id","189"),
("332","189","_menu_item_object","custom"),
("333","189","_menu_item_target",""),
("334","189","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("335","189","_menu_item_xfn",""),
("336","189","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/"),
("376","225","_wp_attached_file","2017/10/slider1.jpg"),
("377","225","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2017/10/slider1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider1-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x223.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x298.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider1-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("381","229","_wp_attached_file","2017/10/BANNER2.jpg"),
("382","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2017/10/BANNER2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"BANNER2-300x62.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"BANNER2-768x159.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"BANNER2-1024x212.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"BANNER2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"BANNER2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"BANNER2-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("400","246","_menu_item_type","custom"),
("401","246","_menu_item_menu_item_parent","0"),
("402","246","_menu_item_object_id","246"),
("403","246","_menu_item_object","custom"),
("404","246","_menu_item_target",""),
("405","246","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("406","246","_menu_item_xfn",""),
("407","246","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/"),
("409","247","_menu_item_type","custom"),
("410","247","_menu_item_menu_item_parent","0");
INSERT INTO bz_postmeta VALUES
("411","247","_menu_item_object_id","247"),
("412","247","_menu_item_object","custom"),
("413","247","_menu_item_target",""),
("414","247","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("415","247","_menu_item_xfn",""),
("416","247","_menu_item_url","#"),
("418","248","_menu_item_type","custom"),
("419","248","_menu_item_menu_item_parent","0"),
("420","248","_menu_item_object_id","248"),
("421","248","_menu_item_object","custom"),
("422","248","_menu_item_target",""),
("423","248","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("424","248","_menu_item_xfn",""),
("425","248","_menu_item_url","#"),
("436","250","_menu_item_type","custom"),
("437","250","_menu_item_menu_item_parent","0"),
("438","250","_menu_item_object_id","250"),
("439","250","_menu_item_object","custom"),
("440","250","_menu_item_target",""),
("441","250","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("442","250","_menu_item_xfn",""),
("443","250","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/"),
("445","251","_menu_item_type","custom"),
("446","251","_menu_item_menu_item_parent","0"),
("447","251","_menu_item_object_id","251"),
("448","251","_menu_item_object","custom"),
("449","251","_menu_item_target",""),
("450","251","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("451","251","_menu_item_xfn",""),
("452","251","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/"),
("454","252","_menu_item_type","custom"),
("455","252","_menu_item_menu_item_parent","0"),
("456","252","_menu_item_object_id","252"),
("457","252","_menu_item_object","custom"),
("458","252","_menu_item_target",""),
("459","252","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("460","252","_menu_item_xfn",""),
("461","252","_menu_item_url","#"),
("463","253","_menu_item_type","custom"),
("464","253","_menu_item_menu_item_parent","0"),
("465","253","_menu_item_object_id","253"),
("466","253","_menu_item_object","custom"),
("467","253","_menu_item_target",""),
("468","253","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("469","253","_menu_item_xfn",""),
("470","253","_menu_item_url","#"),
("480","262","_menu_item_type","custom"),
("481","262","_menu_item_menu_item_parent","0"),
("482","262","_menu_item_object_id","262"),
("483","262","_menu_item_object","custom"),
("484","262","_menu_item_target",""),
("485","262","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("486","262","_menu_item_xfn",""),
("487","262","_menu_item_url","#"),
("489","263","_menu_item_type","custom"),
("490","263","_menu_item_menu_item_parent","0"),
("491","263","_menu_item_object_id","263"),
("492","263","_menu_item_object","custom"),
("493","263","_menu_item_target",""),
("494","263","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("495","263","_menu_item_xfn",""),
("496","263","_menu_item_url","#"),
("497","263","_menu_item_orphaned","1507047522"),
("507","265","_menu_item_type","custom"),
("508","265","_menu_item_menu_item_parent","152"),
("509","265","_menu_item_object_id","265"),
("510","265","_menu_item_object","custom"),
("511","265","_menu_item_target",""),
("512","265","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("513","265","_menu_item_xfn",""),
("514","265","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/"),
("516","266","_menu_item_type","custom"),
("517","266","_menu_item_menu_item_parent","152"),
("518","266","_menu_item_object_id","266"),
("519","266","_menu_item_object","custom"),
("520","266","_menu_item_target",""),
("521","266","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("522","266","_menu_item_xfn",""),
("523","266","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/"),
("525","267","_menu_item_type","custom"),
("526","267","_menu_item_menu_item_parent","152"),
("527","267","_menu_item_object_id","267"),
("528","267","_menu_item_object","custom"),
("529","267","_menu_item_target",""),
("530","267","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("531","267","_menu_item_xfn",""),
("532","267","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/"),
("534","268","_menu_item_type","custom"),
("535","268","_menu_item_menu_item_parent","267"),
("536","268","_menu_item_object_id","268"),
("537","268","_menu_item_object","custom"),
("538","268","_menu_item_target",""),
("539","268","_menu_item_classes","a:1:{i:0;s:10:\"label-sale\";}"),
("540","268","_menu_item_xfn",""),
("541","268","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/mat-ong-cho-be/"),
("543","269","_menu_item_type","custom"),
("544","269","_menu_item_menu_item_parent","267"),
("545","269","_menu_item_object_id","269"),
("546","269","_menu_item_object","custom"),
("547","269","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("548","269","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("549","269","_menu_item_xfn",""),
("550","269","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/ngu-coc-cho-be/"),
("552","270","_menu_item_type","custom"),
("553","270","_menu_item_menu_item_parent","267"),
("554","270","_menu_item_object_id","270"),
("555","270","_menu_item_object","custom"),
("556","270","_menu_item_target",""),
("557","270","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("558","270","_menu_item_xfn",""),
("559","270","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/nuoc-mam-dau-an/"),
("561","271","_menu_item_type","custom"),
("562","271","_menu_item_menu_item_parent","267"),
("563","271","_menu_item_object_id","271"),
("564","271","_menu_item_object","custom"),
("565","271","_menu_item_target",""),
("566","271","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("567","271","_menu_item_xfn",""),
("568","271","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-bot-cho-be/"),
("570","272","_menu_item_type","custom"),
("571","272","_menu_item_menu_item_parent","267"),
("572","272","_menu_item_object_id","272"),
("573","272","_menu_item_object","custom"),
("574","272","_menu_item_target",""),
("575","272","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("576","272","_menu_item_xfn",""),
("577","272","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-non/"),
("579","273","_menu_item_type","custom"),
("580","273","_menu_item_menu_item_parent","267"),
("581","273","_menu_item_object_id","273"),
("582","273","_menu_item_object","custom"),
("583","273","_menu_item_target",""),
("584","273","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("585","273","_menu_item_xfn",""),
("586","273","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-tuoi-cho-be/"),
("588","274","_menu_item_type","custom"),
("589","274","_menu_item_menu_item_parent","267"),
("590","274","_menu_item_object_id","274"),
("591","274","_menu_item_object","custom"),
("592","274","_menu_item_target",""),
("593","274","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("594","274","_menu_item_xfn",""),
("595","274","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/thuc-an-dinh-duong-dong-lo/"),
("597","275","_menu_item_type","custom"),
("598","275","_menu_item_menu_item_parent","267"),
("599","275","_menu_item_object_id","275"),
("600","275","_menu_item_object","custom"),
("601","275","_menu_item_target",""),
("602","275","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("603","275","_menu_item_xfn",""),
("604","275","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/tra-nuoc-ep-hoa-qua-rau/"),
("606","276","_menu_item_type","custom"),
("607","276","_menu_item_menu_item_parent","267"),
("608","276","_menu_item_object_id","276"),
("609","276","_menu_item_object","custom"),
("610","276","_menu_item_target",""),
("611","276","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("612","276","_menu_item_xfn",""),
("613","276","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/vang-sua-pho-mai-sua-chua/"),
("615","277","_menu_item_type","custom"),
("616","277","_menu_item_menu_item_parent","267"),
("617","277","_menu_item_object_id","277"),
("618","277","_menu_item_object","custom"),
("619","277","_menu_item_target",""),
("620","277","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("621","277","_menu_item_xfn",""),
("622","277","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/banh-an-dam-keo-dinh-duong/"),
("633","279","_menu_item_type","custom"),
("634","279","_menu_item_menu_item_parent","265"),
("635","279","_menu_item_object_id","279"),
("636","279","_menu_item_object","custom"),
("637","279","_menu_item_target",""),
("638","279","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("639","279","_menu_item_xfn",""),
("640","279","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/bat-dia-thia-tap-an/"),
("642","280","_menu_item_type","custom"),
("643","280","_menu_item_menu_item_parent","265"),
("644","280","_menu_item_object_id","280"),
("645","280","_menu_item_object","custom"),
("646","280","_menu_item_target",""),
("647","280","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("648","280","_menu_item_xfn",""),
("649","280","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/binh-an-dam-binh-thia/"),
("651","281","_menu_item_type","custom"),
("652","281","_menu_item_menu_item_parent","265"),
("653","281","_menu_item_object_id","281"),
("654","281","_menu_item_object","custom"),
("655","281","_menu_item_target",""),
("656","281","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("657","281","_menu_item_xfn",""),
("658","281","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/bo-che-bien-an-dam/"),
("660","282","_menu_item_type","custom"),
("661","282","_menu_item_menu_item_parent","265"),
("662","282","_menu_item_object_id","282"),
("663","282","_menu_item_object","custom"),
("664","282","_menu_item_target",""),
("665","282","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("666","282","_menu_item_xfn",""),
("667","282","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/chia-sua-chia-thuc-an/"),
("669","283","_menu_item_type","custom");
INSERT INTO bz_postmeta VALUES
("670","283","_menu_item_menu_item_parent","265"),
("671","283","_menu_item_object_id","283"),
("672","283","_menu_item_object","custom"),
("673","283","_menu_item_target",""),
("674","283","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("675","283","_menu_item_xfn",""),
("676","283","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/coc-binh-uong-nuoc/"),
("678","284","_menu_item_type","custom"),
("679","284","_menu_item_menu_item_parent","265"),
("680","284","_menu_item_object_id","284"),
("681","284","_menu_item_object","custom"),
("682","284","_menu_item_target",""),
("683","284","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("684","284","_menu_item_xfn",""),
("685","284","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/dung-cu-giu-nhiet/"),
("687","285","_menu_item_type","custom"),
("688","285","_menu_item_menu_item_parent","265"),
("689","285","_menu_item_object_id","285"),
("690","285","_menu_item_object","custom"),
("691","285","_menu_item_target",""),
("692","285","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("693","285","_menu_item_xfn",""),
("694","285","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/ghe-an-bot/"),
("696","286","_menu_item_type","custom"),
("697","286","_menu_item_menu_item_parent","265"),
("698","286","_menu_item_object_id","286"),
("699","286","_menu_item_object","custom"),
("700","286","_menu_item_target",""),
("701","286","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("702","286","_menu_item_xfn",""),
("703","286","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/gia-up-binh-sua/"),
("705","287","_menu_item_type","custom"),
("706","287","_menu_item_menu_item_parent","266"),
("707","287","_menu_item_object_id","287"),
("708","287","_menu_item_object","custom"),
("709","287","_menu_item_target",""),
("710","287","_menu_item_classes","a:1:{i:0;s:9:\"label-hot\";}"),
("711","287","_menu_item_xfn",""),
("712","287","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/binh-sua/"),
("714","288","_menu_item_type","custom"),
("715","288","_menu_item_menu_item_parent","266"),
("716","288","_menu_item_object_id","288"),
("717","288","_menu_item_object","custom"),
("718","288","_menu_item_target",""),
("719","288","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("720","288","_menu_item_xfn",""),
("721","288","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/co-rua-binh-sua/"),
("723","289","_menu_item_type","custom"),
("724","289","_menu_item_menu_item_parent","266"),
("725","289","_menu_item_object_id","289"),
("726","289","_menu_item_object","custom"),
("727","289","_menu_item_target",""),
("728","289","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("729","289","_menu_item_xfn",""),
("730","289","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/ham-sua/"),
("732","290","_menu_item_type","custom"),
("733","290","_menu_item_menu_item_parent","266"),
("734","290","_menu_item_object_id","290"),
("735","290","_menu_item_object","custom"),
("736","290","_menu_item_target",""),
("737","290","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("738","290","_menu_item_xfn",""),
("739","290","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/may-tiet-trung/"),
("741","291","_menu_item_type","custom"),
("742","291","_menu_item_menu_item_parent","266"),
("743","291","_menu_item_object_id","291"),
("744","291","_menu_item_object","custom"),
("745","291","_menu_item_target",""),
("746","291","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("747","291","_menu_item_xfn",""),
("748","291","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/num-ti/"),
("750","292","_menu_item_type","custom"),
("751","292","_menu_item_menu_item_parent","266"),
("752","292","_menu_item_object_id","292"),
("753","292","_menu_item_object","custom"),
("754","292","_menu_item_target",""),
("755","292","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("756","292","_menu_item_xfn",""),
("757","292","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/nuoc-rua-binh-sua-hoa-qua/"),
("759","293","_wp_attached_file","2017/10/be-an-be-uong_6.jpg"),
("760","293","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:309;s:4:\"file\";s:27:\"2017/10/be-an-be-uong_6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"be-an-be-uong_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"be-an-be-uong_6-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"be-an-be-uong_6-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"be-an-be-uong_6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("761","293","_edit_lock","1507131747:1"),
("762","294","_menu_item_type","custom"),
("763","294","_menu_item_menu_item_parent","152"),
("764","294","_menu_item_object_id","294"),
("765","294","_menu_item_object","custom"),
("766","294","_menu_item_target",""),
("767","294","_menu_item_classes","a:1:{i:0;s:12:\"image-column\";}"),
("768","294","_menu_item_xfn",""),
("769","294","_menu_item_url",""),
("871","389","_menu_item_type","custom"),
("872","389","_menu_item_menu_item_parent","152"),
("873","389","_menu_item_object_id","389"),
("874","389","_menu_item_object","custom"),
("875","389","_menu_item_target",""),
("876","389","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("877","389","_menu_item_xfn",""),
("878","389","_menu_item_url","#"),
("880","390","_menu_item_type","custom"),
("881","390","_menu_item_menu_item_parent","389");
INSERT INTO bz_postmeta VALUES
("882","390","_menu_item_object_id","390"),
("883","390","_menu_item_object","custom"),
("884","390","_menu_item_target",""),
("885","390","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("886","390","_menu_item_xfn",""),
("887","390","_menu_item_url","https://#"),
("979","462","_wp_attached_file","2017/10/be-ve-sinh.jpg"),
("980","462","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:233;s:4:\"file\";s:22:\"2017/10/be-ve-sinh.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"be-ve-sinh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"be-ve-sinh-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"be-ve-sinh-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"be-ve-sinh-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("981","462","_edit_lock","1507141188:1"),
("982","463","_menu_item_type","custom"),
("983","463","_menu_item_menu_item_parent","189"),
("984","463","_menu_item_object_id","463"),
("985","463","_menu_item_object","custom"),
("986","463","_menu_item_target",""),
("987","463","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("988","463","_menu_item_xfn",""),
("989","463","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/"),
("991","464","_menu_item_type","custom"),
("992","464","_menu_item_menu_item_parent","463"),
("993","464","_menu_item_object_id","464"),
("994","464","_menu_item_object","custom"),
("995","464","_menu_item_target",""),
("996","464","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("997","464","_menu_item_xfn",""),
("998","464","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/bim-goo-n/"),
("1000","465","_menu_item_type","custom"),
("1001","465","_menu_item_menu_item_parent","463"),
("1002","465","_menu_item_object_id","465"),
("1003","465","_menu_item_object","custom"),
("1004","465","_menu_item_target",""),
("1005","465","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1006","465","_menu_item_xfn",""),
("1007","465","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/bim-booby/"),
("1009","466","_menu_item_type","custom"),
("1010","466","_menu_item_menu_item_parent","463"),
("1011","466","_menu_item_object_id","466"),
("1012","466","_menu_item_object","custom"),
("1013","466","_menu_item_target",""),
("1014","466","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1015","466","_menu_item_xfn",""),
("1016","466","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/bim-huggies/"),
("1018","467","_menu_item_type","custom"),
("1019","467","_menu_item_menu_item_parent","463"),
("1020","467","_menu_item_object_id","467"),
("1021","467","_menu_item_object","custom"),
("1022","467","_menu_item_target",""),
("1023","467","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1024","467","_menu_item_xfn",""),
("1025","467","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/bim-merrier/"),
("1027","468","_menu_item_type","custom"),
("1028","468","_menu_item_menu_item_parent","463"),
("1029","468","_menu_item_object_id","468"),
("1030","468","_menu_item_object","custom"),
("1031","468","_menu_item_target",""),
("1032","468","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1033","468","_menu_item_xfn",""),
("1034","468","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/cac-loai-bim-khac/"),
("1036","469","_menu_item_type","custom"),
("1037","469","_menu_item_menu_item_parent","189"),
("1038","469","_menu_item_object_id","469"),
("1039","469","_menu_item_object","custom"),
("1040","469","_menu_item_target",""),
("1041","469","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1042","469","_menu_item_xfn",""),
("1043","469","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/"),
("1045","470","_menu_item_type","custom"),
("1046","470","_menu_item_menu_item_parent","469"),
("1047","470","_menu_item_object_id","470"),
("1048","470","_menu_item_object","custom"),
("1049","470","_menu_item_target",""),
("1050","470","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1051","470","_menu_item_xfn",""),
("1052","470","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/kem-tri-ham-cho-be/"),
("1054","471","_menu_item_type","custom"),
("1055","471","_menu_item_menu_item_parent","469"),
("1056","471","_menu_item_object_id","471"),
("1057","471","_menu_item_object","custom"),
("1058","471","_menu_item_target",""),
("1059","471","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1060","471","_menu_item_xfn",""),
("1061","471","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/kem-duong-da-chong-ne/"),
("1063","472","_menu_item_type","custom"),
("1064","472","_menu_item_menu_item_parent","469"),
("1065","472","_menu_item_object_id","472"),
("1066","472","_menu_item_object","custom"),
("1067","472","_menu_item_target",""),
("1068","472","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1069","472","_menu_item_xfn",""),
("1070","472","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/dau-massage-cac-loai/"),
("1072","473","_menu_item_type","custom"),
("1073","473","_menu_item_menu_item_parent","469"),
("1074","473","_menu_item_object_id","473"),
("1075","473","_menu_item_object","custom"),
("1076","473","_menu_item_target",""),
("1077","473","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1078","473","_menu_item_xfn",""),
("1079","473","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/nuoc-hoa-phan-rom/"),
("1081","474","_menu_item_type","custom"),
("1082","474","_menu_item_menu_item_parent","469"),
("1083","474","_menu_item_object_id","474");
INSERT INTO bz_postmeta VALUES
("1084","474","_menu_item_object","custom"),
("1085","474","_menu_item_target",""),
("1086","474","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1087","474","_menu_item_xfn",""),
("1088","474","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/"),
("1090","475","_menu_item_type","custom"),
("1091","475","_menu_item_menu_item_parent","469"),
("1092","475","_menu_item_object_id","475"),
("1093","475","_menu_item_object","custom"),
("1094","475","_menu_item_target",""),
("1095","475","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1096","475","_menu_item_xfn",""),
("1097","475","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/ve-sinh-than-the/ve-sinh-tai-mat-mui-hong/"),
("1099","476","_menu_item_type","custom"),
("1100","476","_menu_item_menu_item_parent","189"),
("1101","476","_menu_item_object_id","476"),
("1102","476","_menu_item_object","custom"),
("1103","476","_menu_item_target",""),
("1104","476","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1105","476","_menu_item_xfn",""),
("1106","476","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/ve-sinh-than-the/"),
("1108","477","_menu_item_type","custom"),
("1109","477","_menu_item_menu_item_parent","476"),
("1110","477","_menu_item_object_id","477"),
("1111","477","_menu_item_object","custom"),
("1112","477","_menu_item_target",""),
("1113","477","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1114","477","_menu_item_xfn",""),
("1115","477","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/ve-sinh-than-the/bam-mong-tay-chan/"),
("1117","478","_menu_item_type","custom"),
("1118","478","_menu_item_menu_item_parent","476"),
("1119","478","_menu_item_object_id","478"),
("1120","478","_menu_item_object","custom"),
("1121","478","_menu_item_target",""),
("1122","478","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1123","478","_menu_item_xfn",""),
("1124","478","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/ve-sinh-than-the/tong-do-keo-luoc-chai-toc/"),
("1126","479","_menu_item_type","custom"),
("1127","479","_menu_item_menu_item_parent","476"),
("1128","479","_menu_item_object_id","479"),
("1129","479","_menu_item_object","custom"),
("1130","479","_menu_item_target",""),
("1131","479","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1132","479","_menu_item_xfn",""),
("1133","479","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/ve-sinh-than-the/ban-chai-kem-danh-rang/"),
("1135","480","_menu_item_type","custom"),
("1136","480","_menu_item_menu_item_parent","189"),
("1137","480","_menu_item_object_id","480"),
("1138","480","_menu_item_object","custom"),
("1139","480","_menu_item_target",""),
("1140","480","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1141","480","_menu_item_xfn",""),
("1142","480","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/"),
("1144","481","_menu_item_type","custom"),
("1145","481","_menu_item_menu_item_parent","480"),
("1146","481","_menu_item_object_id","481"),
("1147","481","_menu_item_object","custom"),
("1148","481","_menu_item_target",""),
("1149","481","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1150","481","_menu_item_xfn",""),
("1151","481","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/be-ngoi-toilet-cho-be/"),
("1153","482","_menu_item_type","custom"),
("1154","482","_menu_item_menu_item_parent","480"),
("1155","482","_menu_item_object_id","482"),
("1156","482","_menu_item_object","custom"),
("1157","482","_menu_item_target",""),
("1158","482","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1159","482","_menu_item_xfn",""),
("1160","482","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/bo-ve-sinh-cho-be/"),
("1162","483","_menu_item_type","custom"),
("1163","483","_menu_item_menu_item_parent","480"),
("1164","483","_menu_item_object_id","483"),
("1165","483","_menu_item_object","custom"),
("1166","483","_menu_item_target",""),
("1167","483","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1168","483","_menu_item_xfn",""),
("1169","483","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/khan-uot-giay-uot/"),
("1171","484","_menu_item_type","custom"),
("1172","484","_menu_item_menu_item_parent","189"),
("1173","484","_menu_item_object_id","484"),
("1174","484","_menu_item_object","custom"),
("1175","484","_menu_item_target",""),
("1176","484","_menu_item_classes","a:1:{i:0;s:12:\"image-column\";}"),
("1177","484","_menu_item_xfn",""),
("1178","484","_menu_item_url","#"),
("1192","497","_wp_attached_file","2017/10/slider2.jpg"),
("1193","497","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2017/10/slider2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x223.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x298.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1203","507","_wp_attached_file","2017/10/slider4.jpg"),
("1204","507","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2017/10/slider4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider4-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider4-768x223.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider4-1024x298.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider4-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1205","509","_wp_attached_file","2017/10/SLIDERR5.jpg"),
("1206","509","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:397;s:4:\"file\";s:20:\"2017/10/SLIDERR5.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"SLIDERR5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"SLIDERR5-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"SLIDERR5-768x223.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"SLIDERR5-1024x298.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"SLIDERR5-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"SLIDERR5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"SLIDERR5-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1207","511","_wp_attached_file","2017/10/SLIDER6.jpg"),
("1208","511","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2017/10/SLIDER6.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"SLIDER6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SLIDER6-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"SLIDER6-768x223.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"SLIDER6-1024x298.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"SLIDER6-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"SLIDER6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"SLIDER6-600x397.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1221","524","_menu_item_type","custom"),
("1222","524","_menu_item_menu_item_parent","0"),
("1223","524","_menu_item_object_id","524"),
("1224","524","_menu_item_object","custom"),
("1225","524","_menu_item_target",""),
("1226","524","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1227","524","_menu_item_xfn","");
INSERT INTO bz_postmeta VALUES
("1228","524","_menu_item_url","#"),
("1269","551","_edit_last","1"),
("1270","551","_footer","normal"),
("1271","551","_wp_page_template","default"),
("1272","551","_edit_lock","1507709342:1"),
("1335","611","_wp_attached_file","2017/10/FSDSFFDS.png"),
("1336","611","_wp_attachment_metadata","a:5:{s:5:\"width\";i:374;s:6:\"height\";i:88;s:4:\"file\";s:20:\"2017/10/FSDSFFDS.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"FSDSFFDS-150x88.png\";s:5:\"width\";i:150;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"FSDSFFDS-300x71.png\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"FSDSFFDS-180x88.png\";s:5:\"width\";i:180;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"FSDSFFDS-300x88.png\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1387","653","_menu_item_type","custom"),
("1388","653","_menu_item_menu_item_parent","246"),
("1389","653","_menu_item_object_id","653"),
("1390","653","_menu_item_object","custom"),
("1391","653","_menu_item_target",""),
("1392","653","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1393","653","_menu_item_xfn",""),
("1394","653","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-cui-tre-em/"),
("1396","654","_menu_item_type","custom"),
("1397","654","_menu_item_menu_item_parent","653"),
("1398","654","_menu_item_object_id","654"),
("1399","654","_menu_item_object","custom"),
("1400","654","_menu_item_target",""),
("1401","654","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1402","654","_menu_item_xfn",""),
("1403","654","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-cui-tre-em/giuong-cui-sieu-nhe/"),
("1405","655","_menu_item_type","custom"),
("1406","655","_menu_item_menu_item_parent","653"),
("1407","655","_menu_item_object_id","655"),
("1408","655","_menu_item_object","custom"),
("1409","655","_menu_item_target",""),
("1410","655","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1411","655","_menu_item_xfn",""),
("1412","655","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-cui-tre-em/cui-cho-be-gia-re/"),
("1414","656","_menu_item_type","custom"),
("1415","656","_menu_item_menu_item_parent","653"),
("1416","656","_menu_item_object_id","656"),
("1417","656","_menu_item_object","custom"),
("1418","656","_menu_item_target",""),
("1419","656","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1420","656","_menu_item_xfn",""),
("1421","656","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-cui-tre-em/cui-cho-be-xuat-khau/"),
("1423","657","_menu_item_type","custom"),
("1424","657","_menu_item_menu_item_parent","246"),
("1425","657","_menu_item_object_id","657"),
("1426","657","_menu_item_object","custom"),
("1427","657","_menu_item_target",""),
("1428","657","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1429","657","_menu_item_xfn",""),
("1430","657","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/phu-kien-be-ngu/"),
("1432","658","_menu_item_type","custom"),
("1433","658","_menu_item_menu_item_parent","657"),
("1434","658","_menu_item_object_id","658"),
("1435","658","_menu_item_object","custom"),
("1436","658","_menu_item_target",""),
("1437","658","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1438","658","_menu_item_xfn",""),
("1439","658","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/phu-kien-be-ngu/bo-quay-cui-cho-be/"),
("1441","659","_menu_item_type","custom"),
("1442","659","_menu_item_menu_item_parent","657"),
("1443","659","_menu_item_object_id","659"),
("1444","659","_menu_item_object","custom"),
("1445","659","_menu_item_target",""),
("1446","659","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1447","659","_menu_item_xfn",""),
("1448","659","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/phu-kien-be-ngu/chan-ga-cho-be/"),
("1450","660","_menu_item_type","custom"),
("1451","660","_menu_item_menu_item_parent","657"),
("1452","660","_menu_item_object_id","660"),
("1453","660","_menu_item_object","custom"),
("1454","660","_menu_item_target",""),
("1455","660","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1456","660","_menu_item_xfn",""),
("1457","660","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/phu-kien-be-ngu/man-va-coc-man/"),
("1459","661","_menu_item_type","custom"),
("1460","661","_menu_item_menu_item_parent","657"),
("1461","661","_menu_item_object_id","661"),
("1462","661","_menu_item_object","custom"),
("1463","661","_menu_item_target",""),
("1464","661","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1465","661","_menu_item_xfn",""),
("1466","661","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/phu-kien-be-ngu/may-bao-khoc-ru-ngu/"),
("1468","662","_menu_item_type","custom"),
("1469","662","_menu_item_menu_item_parent","671"),
("1470","662","_menu_item_object_id","662"),
("1471","662","_menu_item_object","custom"),
("1472","662","_menu_item_target",""),
("1473","662","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1474","662","_menu_item_xfn",""),
("1475","662","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-tang-tre-em/"),
("1477","663","_menu_item_type","custom"),
("1478","663","_menu_item_menu_item_parent","671"),
("1479","663","_menu_item_object_id","663"),
("1480","663","_menu_item_object","custom"),
("1481","663","_menu_item_target",""),
("1482","663","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1483","663","_menu_item_xfn",""),
("1484","663","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/ghe-rung-cho-be/"),
("1486","664","_menu_item_type","custom"),
("1487","664","_menu_item_menu_item_parent","671"),
("1488","664","_menu_item_object_id","664"),
("1489","664","_menu_item_object","custom"),
("1490","664","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("1491","664","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1492","664","_menu_item_xfn",""),
("1493","664","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/xich-du-cho-be/"),
("1495","665","_menu_item_type","custom"),
("1496","665","_menu_item_menu_item_parent","671"),
("1497","665","_menu_item_object_id","665"),
("1498","665","_menu_item_object","custom"),
("1499","665","_menu_item_target",""),
("1500","665","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1501","665","_menu_item_xfn",""),
("1502","665","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/noi-dien-tu-dong/"),
("1504","666","_menu_item_type","custom"),
("1505","666","_menu_item_menu_item_parent","671"),
("1506","666","_menu_item_object_id","666"),
("1507","666","_menu_item_object","custom"),
("1508","666","_menu_item_target",""),
("1509","666","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1510","666","_menu_item_xfn",""),
("1511","666","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/chan-am-chan-sieu-nhe/"),
("1513","667","_menu_item_type","custom"),
("1514","667","_menu_item_menu_item_parent","671"),
("1515","667","_menu_item_object_id","667"),
("1516","667","_menu_item_object","custom"),
("1517","667","_menu_item_target",""),
("1518","667","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1519","667","_menu_item_xfn",""),
("1520","667","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/giuong-xe-o-to/"),
("1522","668","_menu_item_type","custom"),
("1523","668","_menu_item_menu_item_parent","671"),
("1524","668","_menu_item_object_id","668"),
("1525","668","_menu_item_object","custom"),
("1526","668","_menu_item_target",""),
("1527","668","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1528","668","_menu_item_xfn",""),
("1529","668","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/treo-cui-tham-choi/"),
("1531","669","_menu_item_type","custom"),
("1532","669","_menu_item_menu_item_parent","671"),
("1533","669","_menu_item_object_id","669"),
("1534","669","_menu_item_object","custom"),
("1535","669","_menu_item_target",""),
("1536","669","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1537","669","_menu_item_xfn",""),
("1538","669","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/chan-giuong-cho-be/"),
("1540","670","_menu_item_type","custom"),
("1541","670","_menu_item_menu_item_parent","671"),
("1542","670","_menu_item_object_id","670"),
("1543","670","_menu_item_object","custom"),
("1544","670","_menu_item_target",""),
("1545","670","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1546","670","_menu_item_xfn",""),
("1547","670","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/noi-ngu-chung/"),
("1549","671","_menu_item_type","custom"),
("1550","671","_menu_item_menu_item_parent","246"),
("1551","671","_menu_item_object_id","671"),
("1552","671","_menu_item_object","custom"),
("1553","671","_menu_item_target",""),
("1554","671","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1555","671","_menu_item_xfn",""),
("1556","671","_menu_item_url","#"),
("1558","672","_menu_item_type","custom"),
("1559","672","_menu_item_menu_item_parent","246"),
("1560","672","_menu_item_object_id","672"),
("1561","672","_menu_item_object","custom"),
("1562","672","_menu_item_target",""),
("1563","672","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1564","672","_menu_item_xfn",""),
("1565","672","_menu_item_url","#"),
("1567","673","_menu_item_type","custom"),
("1568","673","_menu_item_menu_item_parent","672"),
("1569","673","_menu_item_object_id","673"),
("1570","673","_menu_item_object","custom"),
("1571","673","_menu_item_target",""),
("1572","673","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1573","673","_menu_item_xfn",""),
("1574","673","_menu_item_url","#"),
("1576","674","_menu_item_type","custom"),
("1577","674","_menu_item_menu_item_parent","672"),
("1578","674","_menu_item_object_id","674"),
("1579","674","_menu_item_object","custom"),
("1580","674","_menu_item_target",""),
("1581","674","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1582","674","_menu_item_xfn",""),
("1583","674","_menu_item_url","#"),
("1585","675","_menu_item_type","custom"),
("1586","675","_menu_item_menu_item_parent","672"),
("1587","675","_menu_item_object_id","675"),
("1588","675","_menu_item_object","custom"),
("1589","675","_menu_item_target",""),
("1590","675","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1591","675","_menu_item_xfn",""),
("1592","675","_menu_item_url","#"),
("1594","676","_menu_item_type","custom"),
("1595","676","_menu_item_menu_item_parent","672"),
("1596","676","_menu_item_object_id","676"),
("1597","676","_menu_item_object","custom"),
("1598","676","_menu_item_target",""),
("1599","676","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1600","676","_menu_item_xfn",""),
("1601","676","_menu_item_url","#"),
("1603","677","_menu_item_type","custom");
INSERT INTO bz_postmeta VALUES
("1604","677","_menu_item_menu_item_parent","672"),
("1605","677","_menu_item_object_id","677"),
("1606","677","_menu_item_object","custom"),
("1607","677","_menu_item_target",""),
("1608","677","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1609","677","_menu_item_xfn",""),
("1610","677","_menu_item_url","#"),
("1612","678","_menu_item_type","custom"),
("1613","678","_menu_item_menu_item_parent","672"),
("1614","678","_menu_item_object_id","678"),
("1615","678","_menu_item_object","custom"),
("1616","678","_menu_item_target",""),
("1617","678","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1618","678","_menu_item_xfn",""),
("1619","678","_menu_item_url","#"),
("1621","679","_wp_attached_file","2017/10/bengu.jpg"),
("1622","679","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:297;s:4:\"file\";s:17:\"2017/10/bengu.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bengu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bengu-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"bengu-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"bengu-300x297.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D2X\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1221433335\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"44\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1623","679","_edit_lock","1507180036:1"),
("1624","680","_menu_item_type","custom"),
("1625","680","_menu_item_menu_item_parent","246"),
("1626","680","_menu_item_object_id","680"),
("1627","680","_menu_item_object","custom"),
("1628","680","_menu_item_target",""),
("1629","680","_menu_item_classes","a:1:{i:0;s:12:\"image-column\";}"),
("1630","680","_menu_item_xfn",""),
("1631","680","_menu_item_url","#"),
("1662","716","_wp_attached_file","2017/10/Baby_Care_Baby_Massage_Oil_1.jpg"),
("1663","716","_wp_attachment_metadata","a:5:{s:5:\"width\";i:198;s:6:\"height\";i:192;s:4:\"file\";s:40:\"2017/10/Baby_Care_Baby_Massage_Oil_1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Baby_Care_Baby_Massage_Oil_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Baby_Care_Baby_Massage_Oil_1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1664","718","_wp_attached_file","2017/10/Baby_Care_Diapering_2.jpg"),
("1665","718","_wp_attachment_metadata","a:5:{s:5:\"width\";i:198;s:6:\"height\";i:189;s:4:\"file\";s:33:\"2017/10/Baby_Care_Diapering_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Baby_Care_Diapering_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Baby_Care_Diapering_2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1668","724","_wp_attached_file","2017/10/Baby_Care_New_Born_Registry_3.jpg"),
("1669","724","_wp_attachment_metadata","a:5:{s:5:\"width\";i:360;s:6:\"height\";i:393;s:4:\"file\";s:41:\"2017/10/Baby_Care_New_Born_Registry_3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Baby_Care_New_Born_Registry_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Baby_Care_New_Born_Registry_3-275x300.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"Baby_Care_New_Born_Registry_3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"Baby_Care_New_Born_Registry_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1670","726","_wp_attached_file","2017/10/Baby_Care_Bottles_Teats_4.jpg"),
("1671","726","_wp_attachment_metadata","a:5:{s:5:\"width\";i:230;s:6:\"height\";i:192;s:4:\"file\";s:37:\"2017/10/Baby_Care_Bottles_Teats_4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Baby_Care_Bottles_Teats_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Baby_Care_Bottles_Teats_4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1672","730","_wp_attached_file","2017/10/FSSDFFDSDSF.jpg"),
("1673","730","_wp_attachment_metadata","a:5:{s:5:\"width\";i:230;s:6:\"height\";i:189;s:4:\"file\";s:23:\"2017/10/FSSDFFDSDSF.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"FSSDFFDSDSF-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"FSSDFFDSDSF-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1674","736","_wp_attached_file","2017/10/Baby_Care_Sterilizers_6.jpg"),
("1675","736","_wp_attachment_metadata","a:5:{s:5:\"width\";i:210;s:6:\"height\";i:221;s:4:\"file\";s:35:\"2017/10/Baby_Care_Sterilizers_6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Baby_Care_Sterilizers_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"Baby_Care_Sterilizers_6-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1678","739","_wp_attached_file","2017/10/Baby_Care_Sterilizers_6-1.jpg"),
("1679","739","_wp_attachment_metadata","a:5:{s:5:\"width\";i:210;s:6:\"height\";i:221;s:4:\"file\";s:37:\"2017/10/Baby_Care_Sterilizers_6-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Baby_Care_Sterilizers_6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"Baby_Care_Sterilizers_6-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1684","746","_wp_attached_file","2017/10/FSDFĐSFSDF.jpg"),
("1685","746","_wp_attachment_metadata","a:5:{s:5:\"width\";i:362;s:6:\"height\";i:149;s:4:\"file\";s:23:\"2017/10/FSDFĐSFSDF.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"FSDFĐSFSDF-150x149.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"FSDFĐSFSDF-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"FSDFĐSFSDF-180x149.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"FSDFĐSFSDF-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1686","751","_wp_attached_file","2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner.jpg"),
("1687","751","_wp_attachment_metadata","a:5:{s:5:\"width\";i:362;s:6:\"height\";i:149;s:4:\"file\";s:51:\"2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Home-Page-Unit_Baby-Care-Sliding-Banner-150x149.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Home-Page-Unit_Baby-Care-Sliding-Banner-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"Home-Page-Unit_Baby-Care-Sliding-Banner-180x149.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"Home-Page-Unit_Baby-Care-Sliding-Banner-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1688","753","_wp_attached_file","2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner-1.jpg"),
("1689","753","_wp_attachment_metadata","a:5:{s:5:\"width\";i:362;s:6:\"height\";i:149;s:4:\"file\";s:53:\"2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"Home-Page-Unit_Baby-Care-Sliding-Banner-1-150x149.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"Home-Page-Unit_Baby-Care-Sliding-Banner-1-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:53:\"Home-Page-Unit_Baby-Care-Sliding-Banner-1-180x149.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:53:\"Home-Page-Unit_Baby-Care-Sliding-Banner-1-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1696","772","_wp_attached_file","2017/10/HTTS_banner_web.png"),
("1697","772","_wp_attachment_metadata","a:5:{s:5:\"width\";i:642;s:6:\"height\";i:129;s:4:\"file\";s:27:\"2017/10/HTTS_banner_web.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"HTTS_banner_web-150x129.png\";s:5:\"width\";i:150;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"HTTS_banner_web-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"HTTS_banner_web-180x129.png\";s:5:\"width\";i:180;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"HTTS_banner_web-300x129.png\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"HTTS_banner_web-600x129.png\";s:5:\"width\";i:600;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1698","773","_wp_attached_file","2017/10/HTAD_banner.png"),
("1699","773","_wp_attachment_metadata","a:5:{s:5:\"width\";i:642;s:6:\"height\";i:129;s:4:\"file\";s:23:\"2017/10/HTAD_banner.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"HTAD_banner-150x129.png\";s:5:\"width\";i:150;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"HTAD_banner-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"HTAD_banner-180x129.png\";s:5:\"width\";i:180;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"HTAD_banner-300x129.png\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"HTAD_banner-600x129.png\";s:5:\"width\";i:600;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1700","783","_wp_attached_file","2017/10/Brand_in_focus_Carters.jpg"),
("1701","783","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:393;s:4:\"file\";s:34:\"2017/10/Brand_in_focus_Carters.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Brand_in_focus_Carters-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Brand_in_focus_Carters-184x300.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Brand_in_focus_Carters-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Brand_in_focus_Carters-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1702","785","_wp_attached_file","2017/10/Brand_in_focus_Fox.jpg"),
("1703","785","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:393;s:4:\"file\";s:30:\"2017/10/Brand_in_focus_Fox.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Brand_in_focus_Fox-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Brand_in_focus_Fox-184x300.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Brand_in_focus_Fox-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Brand_in_focus_Fox-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1704","786","_wp_attached_file","2017/10/Brand_in_focus_Little_Kangaroos_3.jpg"),
("1705","786","_wp_attachment_metadata","a:5:{s:5:\"width\";i:230;s:6:\"height\";i:393;s:4:\"file\";s:45:\"2017/10/Brand_in_focus_Little_Kangaroos_3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Brand_in_focus_Little_Kangaroos_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Brand_in_focus_Little_Kangaroos_3-176x300.jpg\";s:5:\"width\";i:176;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"Brand_in_focus_Little_Kangaroos_3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"Brand_in_focus_Little_Kangaroos_3-230x300.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1706","788","_wp_attached_file","2017/10/Brand_in_focus_Toffyhouse_new.jpg"),
("1707","788","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:393;s:4:\"file\";s:41:\"2017/10/Brand_in_focus_Toffyhouse_new.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Brand_in_focus_Toffyhouse_new-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Brand_in_focus_Toffyhouse_new-184x300.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"Brand_in_focus_Toffyhouse_new-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"Brand_in_focus_Toffyhouse_new-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1708","794","_wp_attached_file","2017/10/Brand_in_focus_Ethniks_Newron_5.jpg"),
("1709","794","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:393;s:4:\"file\";s:43:\"2017/10/Brand_in_focus_Ethniks_Newron_5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Brand_in_focus_Ethniks_Newron_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Brand_in_focus_Ethniks_Newron_5-184x300.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Brand_in_focus_Ethniks_Newron_5-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Brand_in_focus_Ethniks_Newron_5-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1712","798","_wp_attached_file","2017/10/fsdsfsdf.jpg"),
("1713","798","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:393;s:4:\"file\";s:20:\"2017/10/fsdsfsdf.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fsdsfsdf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fsdsfsdf-184x300.jpg\";s:5:\"width\";i:184;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"fsdsfsdf-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"fsdsfsdf-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1716","808","_wp_attached_file","2017/10/banner_tang-03.jpg"),
("1717","808","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:230;s:4:\"file\";s:26:\"2017/10/banner_tang-03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner_tang-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner_tang-03-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"banner_tang-03-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"banner_tang-03-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1723","814","_wp_attached_file","2017/10/IMG_1773.jpg"),
("1724","814","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2017/10/IMG_1773.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1773-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_1773-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_1773-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"IMG_1773-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1773-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"IMG_1773-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"IMG_1773-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1798","816","_wc_review_count","0"),
("1799","816","_wc_rating_count","a:0:{}"),
("1800","816","_wc_average_rating","0"),
("1801","816","_edit_last","1"),
("1802","816","_edit_lock","1507695502:1"),
("1803","816","_thumbnail_id","814"),
("1804","816","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1805","816","_sku",""),
("1806","816","_regular_price","150000"),
("1807","816","_sale_price",""),
("1808","816","_sale_price_dates_from",""),
("1809","816","_sale_price_dates_to",""),
("1810","816","total_sales","0"),
("1811","816","_tax_status","taxable"),
("1812","816","_tax_class",""),
("1813","816","_manage_stock","no"),
("1814","816","_backorders","no"),
("1815","816","_sold_individually","no"),
("1816","816","_weight",""),
("1817","816","_length",""),
("1818","816","_width",""),
("1819","816","_height",""),
("1820","816","_upsell_ids","a:0:{}"),
("1821","816","_crosssell_ids","a:0:{}"),
("1822","816","_purchase_note",""),
("1823","816","_default_attributes","a:0:{}"),
("1824","816","_virtual","no"),
("1825","816","_downloadable","no"),
("1826","816","_product_image_gallery","814"),
("1827","816","_download_limit","-1"),
("1828","816","_download_expiry","-1"),
("1829","816","_stock",""),
("1830","816","_stock_status","instock"),
("1831","816","_product_version","3.1.2");
INSERT INTO bz_postmeta VALUES
("1832","816","_price","150000"),
("1843","826","_wc_review_count","0"),
("1844","826","_wc_rating_count","a:0:{}"),
("1845","826","_wc_average_rating","0"),
("1846","826","_edit_last","1"),
("1847","826","_edit_lock","1507196313:1"),
("1848","827","_wp_attached_file","2017/10/do-choi-cau-ca-no-8050-1.jpg"),
("1849","827","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:36:\"2017/10/do-choi-cau-ca-no-8050-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"do-choi-cau-ca-no-8050-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"do-choi-cau-ca-no-8050-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1850","826","_thumbnail_id","827"),
("1851","826","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1852","826","_sku",""),
("1853","826","_regular_price","157000"),
("1854","826","_sale_price",""),
("1855","826","_sale_price_dates_from",""),
("1856","826","_sale_price_dates_to",""),
("1857","826","total_sales","0"),
("1858","826","_tax_status","taxable"),
("1859","826","_tax_class",""),
("1860","826","_manage_stock","no"),
("1861","826","_backorders","no"),
("1862","826","_sold_individually","no"),
("1863","826","_weight",""),
("1864","826","_length",""),
("1865","826","_width",""),
("1866","826","_height",""),
("1867","826","_upsell_ids","a:0:{}"),
("1868","826","_crosssell_ids","a:0:{}"),
("1869","826","_purchase_note",""),
("1870","826","_default_attributes","a:0:{}"),
("1871","826","_virtual","no"),
("1872","826","_downloadable","no"),
("1873","826","_product_image_gallery","827"),
("1874","826","_download_limit","-1"),
("1875","826","_download_expiry","-1"),
("1876","826","_stock",""),
("1877","826","_stock_status","instock"),
("1878","826","_product_version","3.1.2"),
("1879","826","_price","157000"),
("1880","828","_wc_review_count","0"),
("1881","828","_wc_rating_count","a:0:{}"),
("1882","828","_wc_average_rating","0"),
("1883","828","_edit_last","1"),
("1884","828","_edit_lock","1507196451:1"),
("1885","829","_wp_attached_file","2017/10/dan-cho-be-hinh-con-cua-1.jpg"),
("1886","829","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:37:\"2017/10/dan-cho-be-hinh-con-cua-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"dan-cho-be-hinh-con-cua-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"dan-cho-be-hinh-con-cua-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1887","828","_thumbnail_id","829"),
("1888","828","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1889","828","_sku",""),
("1890","828","_regular_price","250000"),
("1891","828","_sale_price",""),
("1892","828","_sale_price_dates_from",""),
("1893","828","_sale_price_dates_to",""),
("1894","828","total_sales","0"),
("1895","828","_tax_status","taxable"),
("1896","828","_tax_class",""),
("1897","828","_manage_stock","no"),
("1898","828","_backorders","no"),
("1899","828","_sold_individually","no"),
("1900","828","_weight",""),
("1901","828","_length",""),
("1902","828","_width",""),
("1903","828","_height",""),
("1904","828","_upsell_ids","a:0:{}"),
("1905","828","_crosssell_ids","a:0:{}"),
("1906","828","_purchase_note",""),
("1907","828","_default_attributes","a:0:{}"),
("1908","828","_virtual","no"),
("1909","828","_downloadable","no"),
("1910","828","_product_image_gallery",""),
("1911","828","_download_limit","-1"),
("1912","828","_download_expiry","-1"),
("1913","828","_stock",""),
("1914","828","_stock_status","instock"),
("1915","828","_product_version","3.1.2"),
("1916","828","_price","250000"),
("1919","834","_wc_review_count","0"),
("1920","834","_wc_rating_count","a:0:{}"),
("1921","834","_wc_average_rating","0"),
("1922","834","_edit_last","1"),
("1923","834","_edit_lock","1507695133:1"),
("1924","835","_wp_attached_file","2017/10/xe-choi-chan-hinh-mo-to-le-ym-008.jpg"),
("1925","835","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:45:\"2017/10/xe-choi-chan-hinh-mo-to-le-ym-008.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"xe-choi-chan-hinh-mo-to-le-ym-008-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"xe-choi-chan-hinh-mo-to-le-ym-008-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1926","834","_thumbnail_id","835"),
("1927","834","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1928","834","_sku",""),
("1929","834","_regular_price","253000"),
("1930","834","_sale_price","200000"),
("1931","834","_sale_price_dates_from",""),
("1932","834","_sale_price_dates_to",""),
("1933","834","total_sales","1"),
("1934","834","_tax_status","taxable"),
("1935","834","_tax_class",""),
("1936","834","_manage_stock","no"),
("1937","834","_backorders","no"),
("1938","834","_sold_individually","no"),
("1939","834","_weight",""),
("1940","834","_length",""),
("1941","834","_width",""),
("1942","834","_height",""),
("1943","834","_upsell_ids","a:0:{}");
INSERT INTO bz_postmeta VALUES
("1944","834","_crosssell_ids","a:0:{}"),
("1945","834","_purchase_note",""),
("1946","834","_default_attributes","a:0:{}"),
("1947","834","_virtual","no"),
("1948","834","_downloadable","no"),
("1949","834","_product_image_gallery",""),
("1950","834","_download_limit","-1"),
("1951","834","_download_expiry","-1"),
("1952","834","_stock",""),
("1953","834","_stock_status","instock"),
("1954","834","_product_version","3.1.2"),
("1955","834","_price","200000"),
("1956","836","_wc_review_count","1"),
("1957","836","_wc_rating_count","a:1:{i:5;i:1;}"),
("1958","836","_wc_average_rating","5.00"),
("1959","836","_edit_last","1"),
("1960","836","_edit_lock","1507694738:1"),
("1961","837","_wp_attached_file","2017/10/do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_.jpg"),
("1962","837","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:64:\"2017/10/do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:64:\"do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1963","836","_thumbnail_id","837"),
("1964","836","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1965","836","_sku",""),
("1966","836","_regular_price","600000"),
("1967","836","_sale_price",""),
("1968","836","_sale_price_dates_from",""),
("1969","836","_sale_price_dates_to",""),
("1970","836","total_sales","1"),
("1971","836","_tax_status","taxable"),
("1972","836","_tax_class",""),
("1973","836","_manage_stock","no"),
("1974","836","_backorders","no"),
("1975","836","_sold_individually","no"),
("1976","836","_weight",""),
("1977","836","_length",""),
("1978","836","_width",""),
("1979","836","_height",""),
("1980","836","_upsell_ids","a:0:{}"),
("1981","836","_crosssell_ids","a:0:{}"),
("1982","836","_purchase_note",""),
("1983","836","_default_attributes","a:0:{}"),
("1984","836","_virtual","no"),
("1985","836","_downloadable","no"),
("1986","836","_product_image_gallery","837"),
("1987","836","_download_limit","-1"),
("1988","836","_download_expiry","-1"),
("1989","836","_stock",""),
("1990","836","_stock_status","instock"),
("1991","836","_product_version","3.1.2"),
("1992","836","_price","600000"),
("1993","838","_wc_review_count","0"),
("1994","838","_wc_rating_count","a:0:{}"),
("1995","838","_wc_average_rating","0"),
("1996","838","_edit_last","1"),
("1997","838","_edit_lock","1507693560:1"),
("1998","839","_wp_attached_file","2017/10/o-to-dieu-khien-tu-xa-nt8161-10.jpg"),
("1999","839","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:43:\"2017/10/o-to-dieu-khien-tu-xa-nt8161-10.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"o-to-dieu-khien-tu-xa-nt8161-10-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2000","838","_thumbnail_id","839"),
("2001","838","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2002","838","_sku",""),
("2003","838","_regular_price","600000"),
("2004","838","_sale_price",""),
("2005","838","_sale_price_dates_from",""),
("2006","838","_sale_price_dates_to",""),
("2007","838","total_sales","0"),
("2008","838","_tax_status","taxable"),
("2009","838","_tax_class",""),
("2010","838","_manage_stock","no"),
("2011","838","_backorders","no"),
("2012","838","_sold_individually","no"),
("2013","838","_weight",""),
("2014","838","_length",""),
("2015","838","_width",""),
("2016","838","_height",""),
("2017","838","_upsell_ids","a:0:{}"),
("2018","838","_crosssell_ids","a:0:{}"),
("2019","838","_purchase_note",""),
("2020","838","_default_attributes","a:0:{}"),
("2021","838","_virtual","no"),
("2022","838","_downloadable","no"),
("2023","838","_product_image_gallery",""),
("2024","838","_download_limit","-1"),
("2025","838","_download_expiry","-1"),
("2026","838","_stock",""),
("2027","838","_stock_status","instock"),
("2028","838","_product_version","3.1.2"),
("2029","838","_price","600000"),
("2032","844","_wc_review_count","0"),
("2033","844","_wc_rating_count","a:0:{}"),
("2034","844","_wc_average_rating","0"),
("2035","844","_edit_last","1"),
("2036","844","_edit_lock","1507694123:1"),
("2037","845","_wp_attached_file","2017/10/do-choi-xep-chong-chu-vit-con-navy-star-69028-.jpg"),
("2038","845","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:58:\"2017/10/do-choi-xep-chong-chu-vit-con-navy-star-69028-.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:58:\"do-choi-xep-chong-chu-vit-con-navy-star-69028--600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2039","844","_thumbnail_id","845"),
("2040","844","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2041","844","_sku",""),
("2042","844","_regular_price","60000"),
("2043","844","_sale_price",""),
("2044","844","_sale_price_dates_from",""),
("2045","844","_sale_price_dates_to","");
INSERT INTO bz_postmeta VALUES
("2046","844","total_sales","0"),
("2047","844","_tax_status","taxable"),
("2048","844","_tax_class",""),
("2049","844","_manage_stock","no"),
("2050","844","_backorders","no"),
("2051","844","_sold_individually","no"),
("2052","844","_weight",""),
("2053","844","_length",""),
("2054","844","_width",""),
("2055","844","_height",""),
("2056","844","_upsell_ids","a:0:{}"),
("2057","844","_crosssell_ids","a:0:{}"),
("2058","844","_purchase_note",""),
("2059","844","_default_attributes","a:0:{}"),
("2060","844","_virtual","no"),
("2061","844","_downloadable","no"),
("2062","844","_product_image_gallery","845"),
("2063","844","_download_limit","-1"),
("2064","844","_download_expiry","-1"),
("2065","844","_stock",""),
("2066","844","_stock_status","instock"),
("2067","844","_product_version","3.1.2"),
("2068","844","_price","60000"),
("2069","846","_wc_review_count","1"),
("2070","846","_wc_rating_count","a:1:{i:5;i:1;}"),
("2071","846","_wc_average_rating","5.00"),
("2072","846","_edit_last","1"),
("2073","846","_edit_lock","1507693968:1"),
("2074","847","_wp_attached_file","2017/10/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1.jpg"),
("2075","847","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:60:\"2017/10/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2076","846","_thumbnail_id","847"),
("2077","846","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2078","846","_sku",""),
("2079","846","_regular_price","630000"),
("2080","846","_sale_price",""),
("2081","846","_sale_price_dates_from",""),
("2082","846","_sale_price_dates_to",""),
("2083","846","total_sales","0"),
("2084","846","_tax_status","taxable"),
("2085","846","_tax_class",""),
("2086","846","_manage_stock","no"),
("2087","846","_backorders","no"),
("2088","846","_sold_individually","no"),
("2089","846","_weight",""),
("2090","846","_length",""),
("2091","846","_width",""),
("2092","846","_height",""),
("2093","846","_upsell_ids","a:0:{}"),
("2094","846","_crosssell_ids","a:0:{}"),
("2095","846","_purchase_note",""),
("2096","846","_default_attributes","a:0:{}"),
("2097","846","_virtual","no"),
("2098","846","_downloadable","no"),
("2099","846","_product_image_gallery",""),
("2100","846","_download_limit","-1"),
("2101","846","_download_expiry","-1"),
("2102","846","_stock",""),
("2103","846","_stock_status","instock"),
("2104","846","_product_version","3.1.2"),
("2105","846","_price","630000"),
("2110","852","_menu_item_type","custom"),
("2111","852","_menu_item_menu_item_parent","0"),
("2112","852","_menu_item_object_id","852"),
("2113","852","_menu_item_object","custom"),
("2114","852","_menu_item_target",""),
("2115","852","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2116","852","_menu_item_xfn",""),
("2117","852","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-bup-be-thu-nhoi-bong/"),
("2119","853","_menu_item_type","custom"),
("2120","853","_menu_item_menu_item_parent","0"),
("2121","853","_menu_item_object_id","853"),
("2122","853","_menu_item_object","custom"),
("2123","853","_menu_item_target",""),
("2124","853","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2125","853","_menu_item_xfn",""),
("2126","853","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-mo-hinh-cho-be/"),
("2128","854","_menu_item_type","custom"),
("2129","854","_menu_item_menu_item_parent","0"),
("2130","854","_menu_item_object_id","854"),
("2131","854","_menu_item_object","custom"),
("2132","854","_menu_item_target",""),
("2133","854","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2134","854","_menu_item_xfn",""),
("2135","854","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-nhua-cho-be/"),
("2137","855","_menu_item_type","custom"),
("2138","855","_menu_item_menu_item_parent","0"),
("2139","855","_menu_item_object_id","855"),
("2140","855","_menu_item_object","custom"),
("2141","855","_menu_item_target",""),
("2142","855","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2143","855","_menu_item_xfn",""),
("2144","855","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-thong-minh-cho-be/"),
("2146","856","_menu_item_type","custom"),
("2147","856","_menu_item_menu_item_parent","0"),
("2148","856","_menu_item_object_id","856"),
("2149","856","_menu_item_object","custom"),
("2150","856","_menu_item_target",""),
("2151","856","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2152","856","_menu_item_xfn",""),
("2153","856","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/xe-choi-chan-cho-be/");
INSERT INTO bz_postmeta VALUES
("2155","857","_menu_item_type","custom"),
("2156","857","_menu_item_menu_item_parent","0"),
("2157","857","_menu_item_object_id","857"),
("2158","857","_menu_item_object","custom"),
("2159","857","_menu_item_target",""),
("2160","857","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2161","857","_menu_item_xfn",""),
("2162","857","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/cau-truot-an-toan/"),
("2164","858","_menu_item_type","custom"),
("2165","858","_menu_item_menu_item_parent","0"),
("2166","858","_menu_item_object_id","858"),
("2167","858","_menu_item_object","custom"),
("2168","858","_menu_item_target",""),
("2169","858","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2170","858","_menu_item_xfn",""),
("2171","858","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-van-dong/"),
("2173","859","_menu_item_type","custom"),
("2174","859","_menu_item_menu_item_parent","0"),
("2175","859","_menu_item_object_id","859"),
("2176","859","_menu_item_object","custom"),
("2177","859","_menu_item_target",""),
("2178","859","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2179","859","_menu_item_xfn",""),
("2180","859","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/nha-leu-nha-bong/"),
("2182","860","_menu_item_type","custom"),
("2183","860","_menu_item_menu_item_parent","0"),
("2184","860","_menu_item_object_id","860"),
("2185","860","_menu_item_object","custom"),
("2186","860","_menu_item_target",""),
("2187","860","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2188","860","_menu_item_xfn",""),
("2189","860","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/xe-lac-cho-be/"),
("2191","861","_menu_item_type","custom"),
("2192","861","_menu_item_menu_item_parent","0"),
("2193","861","_menu_item_object_id","861"),
("2194","861","_menu_item_object","custom"),
("2195","861","_menu_item_target",""),
("2196","861","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2197","861","_menu_item_xfn",""),
("2198","861","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-giai-tri-am-nhac/"),
("2200","862","_menu_item_type","custom"),
("2201","862","_menu_item_menu_item_parent","0"),
("2202","862","_menu_item_object_id","862"),
("2203","862","_menu_item_object","custom"),
("2204","862","_menu_item_target",""),
("2205","862","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2206","862","_menu_item_xfn",""),
("2207","862","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/cap-sach-cho-be/"),
("2209","863","_menu_item_type","custom"),
("2210","863","_menu_item_menu_item_parent","0"),
("2211","863","_menu_item_object_id","863"),
("2212","863","_menu_item_object","custom"),
("2213","863","_menu_item_target",""),
("2214","863","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2215","863","_menu_item_xfn",""),
("2216","863","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/do-dung-hoc-tap/"),
("2218","864","_menu_item_type","custom"),
("2219","864","_menu_item_menu_item_parent","0"),
("2220","864","_menu_item_object_id","864"),
("2221","864","_menu_item_object","custom"),
("2222","864","_menu_item_target",""),
("2223","864","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2224","864","_menu_item_xfn",""),
("2225","864","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/ban-hoc-cho-be/"),
("2227","865","_menu_item_type","custom"),
("2228","865","_menu_item_menu_item_parent","0"),
("2229","865","_menu_item_object_id","865"),
("2230","865","_menu_item_object","custom"),
("2231","865","_menu_item_target",""),
("2232","865","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2233","865","_menu_item_xfn",""),
("2234","865","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/danh-cho-be-trai/"),
("2236","866","_menu_item_type","custom"),
("2237","866","_menu_item_menu_item_parent","0"),
("2238","866","_menu_item_object_id","866"),
("2239","866","_menu_item_object","custom"),
("2240","866","_menu_item_target",""),
("2241","866","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2242","866","_menu_item_xfn",""),
("2243","866","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/danh-cho-be-gai/"),
("2245","867","_menu_item_type","custom"),
("2246","867","_menu_item_menu_item_parent","0"),
("2247","867","_menu_item_object_id","867"),
("2248","867","_menu_item_object","custom"),
("2249","867","_menu_item_target",""),
("2250","867","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2251","867","_menu_item_xfn",""),
("2252","867","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-bap-benh/"),
("2254","868","_menu_item_type","custom"),
("2255","868","_menu_item_menu_item_parent","0"),
("2256","868","_menu_item_object_id","868"),
("2257","868","_menu_item_object","custom"),
("2258","868","_menu_item_target",""),
("2259","868","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2260","868","_menu_item_xfn",""),
("2261","868","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-go-an-toan/"),
("2263","869","_menu_item_type","custom"),
("2264","869","_menu_item_menu_item_parent","0"),
("2265","869","_menu_item_object_id","869"),
("2266","869","_menu_item_object","custom");
INSERT INTO bz_postmeta VALUES
("2267","869","_menu_item_target",""),
("2268","869","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2269","869","_menu_item_xfn",""),
("2270","869","_menu_item_url","#"),
("2272","870","_menu_item_type","custom"),
("2273","870","_menu_item_menu_item_parent","0"),
("2274","870","_menu_item_object_id","870"),
("2275","870","_menu_item_object","custom"),
("2276","870","_menu_item_target",""),
("2277","870","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2278","870","_menu_item_xfn",""),
("2279","870","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-lego/"),
("2281","871","_menu_item_type","custom"),
("2282","871","_menu_item_menu_item_parent","0"),
("2283","871","_menu_item_object_id","871"),
("2284","871","_menu_item_object","custom"),
("2285","871","_menu_item_target",""),
("2286","871","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2287","871","_menu_item_xfn",""),
("2288","871","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-xuc-xac/"),
("2290","872","_edit_last","1"),
("2291","872","_sidebar_to_replace","sidebar-main"),
("2292","872","_edit_lock","1507224736:1"),
("2293","873","_edit_last","1"),
("2294","873","_sidebar_to_replace","sidebar-main"),
("2295","873","_edit_lock","1507221336:1"),
("2320","899","_menu_item_type","custom"),
("2321","899","_menu_item_menu_item_parent","251"),
("2322","899","_menu_item_object_id","899"),
("2323","899","_menu_item_object","custom"),
("2324","899","_menu_item_target",""),
("2325","899","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2326","899","_menu_item_xfn",""),
("2327","899","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/"),
("2329","900","_menu_item_type","custom"),
("2330","900","_menu_item_menu_item_parent","899"),
("2331","900","_menu_item_object_id","900"),
("2332","900","_menu_item_object","custom"),
("2333","900","_menu_item_target",""),
("2334","900","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2335","900","_menu_item_xfn",""),
("2336","900","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/danh-cho-be-trai/"),
("2338","901","_menu_item_type","custom"),
("2339","901","_menu_item_menu_item_parent","899"),
("2340","901","_menu_item_object_id","901"),
("2341","901","_menu_item_object","custom"),
("2342","901","_menu_item_target",""),
("2343","901","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2344","901","_menu_item_xfn",""),
("2345","901","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/danh-cho-be-gai/"),
("2347","902","_menu_item_type","custom"),
("2348","902","_menu_item_menu_item_parent","899"),
("2349","902","_menu_item_object_id","902"),
("2350","902","_menu_item_object","custom"),
("2351","902","_menu_item_target",""),
("2352","902","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2353","902","_menu_item_xfn",""),
("2354","902","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/ban-hoc-cho-be/"),
("2356","903","_menu_item_type","custom"),
("2357","903","_menu_item_menu_item_parent","899"),
("2358","903","_menu_item_object_id","903"),
("2359","903","_menu_item_object","custom"),
("2360","903","_menu_item_target",""),
("2361","903","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2362","903","_menu_item_xfn",""),
("2363","903","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/do-dung-hoc-tap/"),
("2365","904","_menu_item_type","custom"),
("2366","904","_menu_item_menu_item_parent","899"),
("2367","904","_menu_item_object_id","904"),
("2368","904","_menu_item_object","custom"),
("2369","904","_menu_item_target",""),
("2370","904","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2371","904","_menu_item_xfn",""),
("2372","904","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/cho-be-hoc-tot/cap-sach-cho-be/"),
("2374","905","_menu_item_type","custom"),
("2375","905","_menu_item_menu_item_parent","251"),
("2376","905","_menu_item_object_id","905"),
("2377","905","_menu_item_object","custom"),
("2378","905","_menu_item_target",""),
("2379","905","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2380","905","_menu_item_xfn",""),
("2381","905","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/"),
("2383","906","_menu_item_type","custom"),
("2384","906","_menu_item_menu_item_parent","905"),
("2385","906","_menu_item_object_id","906"),
("2386","906","_menu_item_object","custom"),
("2387","906","_menu_item_target",""),
("2388","906","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2389","906","_menu_item_xfn",""),
("2390","906","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/cau-truot-an-toan/"),
("2392","907","_menu_item_type","custom"),
("2393","907","_menu_item_menu_item_parent","905"),
("2394","907","_menu_item_object_id","907"),
("2395","907","_menu_item_object","custom"),
("2396","907","_menu_item_target",""),
("2397","907","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2398","907","_menu_item_xfn",""),
("2399","907","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-bap-benh/"),
("2401","908","_menu_item_type","custom"),
("2402","908","_menu_item_menu_item_parent","905");
INSERT INTO bz_postmeta VALUES
("2403","908","_menu_item_object_id","908"),
("2404","908","_menu_item_object","custom"),
("2405","908","_menu_item_target",""),
("2406","908","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2407","908","_menu_item_xfn",""),
("2408","908","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-bup-be-thu-nhoi-bong/"),
("2410","909","_menu_item_type","custom"),
("2411","909","_menu_item_menu_item_parent","899"),
("2412","909","_menu_item_object_id","909"),
("2413","909","_menu_item_object","custom"),
("2414","909","_menu_item_target",""),
("2415","909","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2416","909","_menu_item_xfn",""),
("2417","909","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-giai-tri-am-nhac/"),
("2419","910","_menu_item_type","custom"),
("2420","910","_menu_item_menu_item_parent","921"),
("2421","910","_menu_item_object_id","910"),
("2422","910","_menu_item_object","custom"),
("2423","910","_menu_item_target",""),
("2424","910","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2425","910","_menu_item_xfn",""),
("2426","910","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-go-an-toan/"),
("2428","911","_menu_item_type","custom"),
("2429","911","_menu_item_menu_item_parent","921"),
("2430","911","_menu_item_object_id","911"),
("2431","911","_menu_item_object","custom"),
("2432","911","_menu_item_target",""),
("2433","911","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2434","911","_menu_item_xfn",""),
("2435","911","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-lego/"),
("2437","912","_menu_item_type","custom"),
("2438","912","_menu_item_menu_item_parent","921"),
("2439","912","_menu_item_object_id","912"),
("2440","912","_menu_item_object","custom"),
("2441","912","_menu_item_target",""),
("2442","912","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2443","912","_menu_item_xfn",""),
("2444","912","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-mo-hinh-cho-be/"),
("2446","913","_menu_item_type","custom"),
("2447","913","_menu_item_menu_item_parent","905"),
("2448","913","_menu_item_object_id","913"),
("2449","913","_menu_item_object","custom"),
("2450","913","_menu_item_target",""),
("2451","913","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2452","913","_menu_item_xfn",""),
("2453","913","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-nhua-cho-be/"),
("2455","914","_menu_item_type","custom"),
("2456","914","_menu_item_menu_item_parent","921"),
("2457","914","_menu_item_object_id","914"),
("2458","914","_menu_item_object","custom"),
("2459","914","_menu_item_target",""),
("2460","914","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2461","914","_menu_item_xfn",""),
("2462","914","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-thong-minh-cho-be/"),
("2464","915","_menu_item_type","custom"),
("2465","915","_menu_item_menu_item_parent","905"),
("2466","915","_menu_item_object_id","915"),
("2467","915","_menu_item_object","custom"),
("2468","915","_menu_item_target",""),
("2469","915","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2470","915","_menu_item_xfn",""),
("2471","915","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-trong-bon-tam/"),
("2473","916","_menu_item_type","custom"),
("2474","916","_menu_item_menu_item_parent","905"),
("2475","916","_menu_item_object_id","916"),
("2476","916","_menu_item_object","custom"),
("2477","916","_menu_item_target",""),
("2478","916","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2479","916","_menu_item_xfn",""),
("2480","916","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-van-dong/"),
("2482","917","_menu_item_type","custom"),
("2483","917","_menu_item_menu_item_parent","921"),
("2484","917","_menu_item_object_id","917"),
("2485","917","_menu_item_object","custom"),
("2486","917","_menu_item_target",""),
("2487","917","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2488","917","_menu_item_xfn",""),
("2489","917","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/do-choi-xuc-xac/"),
("2491","918","_menu_item_type","custom"),
("2492","918","_menu_item_menu_item_parent","905"),
("2493","918","_menu_item_object_id","918"),
("2494","918","_menu_item_object","custom"),
("2495","918","_menu_item_target",""),
("2496","918","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2497","918","_menu_item_xfn",""),
("2498","918","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/nha-leu-nha-bong/"),
("2500","919","_menu_item_type","custom"),
("2501","919","_menu_item_menu_item_parent","905"),
("2502","919","_menu_item_object_id","919"),
("2503","919","_menu_item_object","custom"),
("2504","919","_menu_item_target",""),
("2505","919","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2506","919","_menu_item_xfn",""),
("2507","919","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/xe-choi-chan-cho-be/"),
("2509","920","_menu_item_type","custom"),
("2510","920","_menu_item_menu_item_parent","921"),
("2511","920","_menu_item_object_id","920"),
("2512","920","_menu_item_object","custom"),
("2513","920","_menu_item_target",""),
("2514","920","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO bz_postmeta VALUES
("2515","920","_menu_item_xfn",""),
("2516","920","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/do-choi-cho-be/xe-lac-cho-be/"),
("2518","921","_menu_item_type","custom"),
("2519","921","_menu_item_menu_item_parent","251"),
("2520","921","_menu_item_object_id","921"),
("2521","921","_menu_item_object","custom"),
("2522","921","_menu_item_target",""),
("2523","921","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2524","921","_menu_item_xfn",""),
("2525","921","_menu_item_url","#"),
("2527","922","_menu_item_type","custom"),
("2528","922","_menu_item_menu_item_parent","251"),
("2529","922","_menu_item_object_id","922"),
("2530","922","_menu_item_object","custom"),
("2531","922","_menu_item_target",""),
("2532","922","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2533","922","_menu_item_xfn",""),
("2534","922","_menu_item_url","#"),
("2536","923","_menu_item_type","custom"),
("2537","923","_menu_item_menu_item_parent","922"),
("2538","923","_menu_item_object_id","923"),
("2539","923","_menu_item_object","custom"),
("2540","923","_menu_item_target",""),
("2541","923","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2542","923","_menu_item_xfn",""),
("2543","923","_menu_item_url","#"),
("2545","924","_menu_item_type","custom"),
("2546","924","_menu_item_menu_item_parent","251"),
("2547","924","_menu_item_object_id","924"),
("2548","924","_menu_item_object","custom"),
("2549","924","_menu_item_target",""),
("2550","924","_menu_item_classes","a:1:{i:0;s:12:\"image-column\";}"),
("2551","924","_menu_item_xfn",""),
("2552","924","_menu_item_url","#"),
("2554","925","_wp_attached_file","2017/10/be-hoc-be-choi_2.jpg"),
("2555","925","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2017/10/be-hoc-be-choi_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"be-hoc-be-choi_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"be-hoc-be-choi_2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("2556","925","_edit_lock","1507223860:1"),
("2557","926","_menu_item_type","custom"),
("2558","926","_menu_item_menu_item_parent","922"),
("2559","926","_menu_item_object_id","926"),
("2560","926","_menu_item_object","custom"),
("2561","926","_menu_item_target",""),
("2562","926","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2563","926","_menu_item_xfn",""),
("2564","926","_menu_item_url","#"),
("2566","927","_menu_item_type","custom"),
("2567","927","_menu_item_menu_item_parent","922"),
("2568","927","_menu_item_object_id","927"),
("2569","927","_menu_item_object","custom"),
("2570","927","_menu_item_target",""),
("2571","927","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2572","927","_menu_item_xfn",""),
("2573","927","_menu_item_url","#"),
("2575","932","_wp_attached_file","2017/10/banner-Aptamil-tang.png"),
("2576","932","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:230;s:4:\"file\";s:31:\"2017/10/banner-Aptamil-tang.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"banner-Aptamil-tang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"banner-Aptamil-tang-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"banner-Aptamil-tang-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"banner-Aptamil-tang-300x230.png\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2577","934","_menu_item_type","custom"),
("2578","934","_menu_item_menu_item_parent","0"),
("2579","934","_menu_item_object_id","934"),
("2580","934","_menu_item_object","custom"),
("2581","934","_menu_item_target",""),
("2582","934","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2583","934","_menu_item_xfn",""),
("2584","934","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/mat-ong-cho-be/"),
("2586","935","_menu_item_type","custom"),
("2587","935","_menu_item_menu_item_parent","0"),
("2588","935","_menu_item_object_id","935"),
("2589","935","_menu_item_object","custom"),
("2590","935","_menu_item_target",""),
("2591","935","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2592","935","_menu_item_xfn",""),
("2593","935","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/ngu-coc-cho-be/"),
("2595","936","_menu_item_type","custom"),
("2596","936","_menu_item_menu_item_parent","0"),
("2597","936","_menu_item_object_id","936"),
("2598","936","_menu_item_object","custom"),
("2599","936","_menu_item_target",""),
("2600","936","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2601","936","_menu_item_xfn",""),
("2602","936","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/nuoc-mam-dau-an/"),
("2604","937","_menu_item_type","custom"),
("2605","937","_menu_item_menu_item_parent","0"),
("2606","937","_menu_item_object_id","937"),
("2607","937","_menu_item_object","custom"),
("2608","937","_menu_item_target",""),
("2609","937","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2610","937","_menu_item_xfn",""),
("2611","937","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-bot-cho-be/"),
("2613","938","_menu_item_type","custom"),
("2614","938","_menu_item_menu_item_parent","0"),
("2615","938","_menu_item_object_id","938"),
("2616","938","_menu_item_object","custom"),
("2617","938","_menu_item_target",""),
("2618","938","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2619","938","_menu_item_xfn",""),
("2620","938","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-non/"),
("2622","939","_menu_item_type","custom"),
("2623","939","_menu_item_menu_item_parent","0"),
("2624","939","_menu_item_object_id","939"),
("2625","939","_menu_item_object","custom"),
("2626","939","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("2627","939","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2628","939","_menu_item_xfn",""),
("2629","939","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-tuoi-cho-be/"),
("2631","940","_menu_item_type","custom"),
("2632","940","_menu_item_menu_item_parent","0"),
("2633","940","_menu_item_object_id","940"),
("2634","940","_menu_item_object","custom"),
("2635","940","_menu_item_target",""),
("2636","940","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2637","940","_menu_item_xfn",""),
("2638","940","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/thuc-an-dinh-duong-dong-lo/"),
("2640","941","_menu_item_type","custom"),
("2641","941","_menu_item_menu_item_parent","0"),
("2642","941","_menu_item_object_id","941"),
("2643","941","_menu_item_object","custom"),
("2644","941","_menu_item_target",""),
("2645","941","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2646","941","_menu_item_xfn",""),
("2647","941","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/tra-nuoc-ep-hoa-qua-rau/"),
("2649","942","_menu_item_type","custom"),
("2650","942","_menu_item_menu_item_parent","0"),
("2651","942","_menu_item_object_id","942"),
("2652","942","_menu_item_object","custom"),
("2653","942","_menu_item_target",""),
("2654","942","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2655","942","_menu_item_xfn",""),
("2656","942","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/vang-sua-pho-mai-sua-chua/"),
("2658","943","_menu_item_type","custom"),
("2659","943","_menu_item_menu_item_parent","0"),
("2660","943","_menu_item_object_id","943"),
("2661","943","_menu_item_object","custom"),
("2662","943","_menu_item_target",""),
("2663","943","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2664","943","_menu_item_xfn",""),
("2665","943","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/banh-an-dam-keo-dinh-duong/"),
("2667","944","_menu_item_type","custom"),
("2668","944","_menu_item_menu_item_parent","0"),
("2669","944","_menu_item_object_id","944"),
("2670","944","_menu_item_object","custom"),
("2671","944","_menu_item_target",""),
("2672","944","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2673","944","_menu_item_xfn",""),
("2674","944","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/bat-dia-thia-tap-an/"),
("2676","945","_menu_item_type","custom"),
("2677","945","_menu_item_menu_item_parent","0"),
("2678","945","_menu_item_object_id","945"),
("2679","945","_menu_item_object","custom"),
("2680","945","_menu_item_target",""),
("2681","945","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2682","945","_menu_item_xfn",""),
("2683","945","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/binh-an-dam-binh-thia/"),
("2685","946","_menu_item_type","custom"),
("2686","946","_menu_item_menu_item_parent","0"),
("2687","946","_menu_item_object_id","946"),
("2688","946","_menu_item_object","custom"),
("2689","946","_menu_item_target",""),
("2690","946","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2691","946","_menu_item_xfn",""),
("2692","946","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/bo-che-bien-an-dam/"),
("2694","947","_menu_item_type","custom"),
("2695","947","_menu_item_menu_item_parent","0"),
("2696","947","_menu_item_object_id","947"),
("2697","947","_menu_item_object","custom"),
("2698","947","_menu_item_target",""),
("2699","947","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2700","947","_menu_item_xfn",""),
("2701","947","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/chia-sua-chia-thuc-an/"),
("2703","948","_menu_item_type","custom"),
("2704","948","_menu_item_menu_item_parent","0"),
("2705","948","_menu_item_object_id","948"),
("2706","948","_menu_item_object","custom"),
("2707","948","_menu_item_target",""),
("2708","948","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2709","948","_menu_item_xfn",""),
("2710","948","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/coc-binh-uong-nuoc/"),
("2712","949","_menu_item_type","custom"),
("2713","949","_menu_item_menu_item_parent","0"),
("2714","949","_menu_item_object_id","949"),
("2715","949","_menu_item_object","custom"),
("2716","949","_menu_item_target",""),
("2717","949","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2718","949","_menu_item_xfn",""),
("2719","949","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/dung-cu-giu-nhiet/"),
("2721","950","_menu_item_type","custom"),
("2722","950","_menu_item_menu_item_parent","0"),
("2723","950","_menu_item_object_id","950"),
("2724","950","_menu_item_object","custom"),
("2725","950","_menu_item_target",""),
("2726","950","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2727","950","_menu_item_xfn",""),
("2728","950","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/ghe-an-bot/"),
("2730","951","_menu_item_type","custom"),
("2731","951","_menu_item_menu_item_parent","0"),
("2732","951","_menu_item_object_id","951"),
("2733","951","_menu_item_object","custom"),
("2734","951","_menu_item_target",""),
("2735","951","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2736","951","_menu_item_xfn",""),
("2737","951","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/do-dung-an-uong/gia-up-binh-sua/"),
("2739","952","_menu_item_type","custom");
INSERT INTO bz_postmeta VALUES
("2740","952","_menu_item_menu_item_parent","0"),
("2741","952","_menu_item_object_id","952"),
("2742","952","_menu_item_object","custom"),
("2743","952","_menu_item_target",""),
("2744","952","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2745","952","_menu_item_xfn",""),
("2746","952","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/co-rua-binh-sua/"),
("2748","953","_menu_item_type","custom"),
("2749","953","_menu_item_menu_item_parent","0"),
("2750","953","_menu_item_object_id","953"),
("2751","953","_menu_item_object","custom"),
("2752","953","_menu_item_target",""),
("2753","953","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2754","953","_menu_item_xfn",""),
("2755","953","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/may-tiet-trung/"),
("2757","872","_wp_old_slug","be-hocwidget"),
("2758","954","_edit_last","1"),
("2759","954","_sidebar_to_replace","sidebar-main"),
("2760","954","_edit_lock","1507224605:1"),
("2761","955","_edit_last","1"),
("2762","955","_sidebar_to_replace","sidebar-main"),
("2763","955","_edit_lock","1507224613:1"),
("2764","958","_wc_review_count","1"),
("2765","958","_wc_rating_count","a:1:{i:5;i:1;}"),
("2766","958","_wc_average_rating","5.00"),
("2767","958","_edit_last","1"),
("2768","958","_edit_lock","1507692899:1"),
("2769","959","_wp_attached_file","2017/10/xe-dap-3-banh-f955.jpg"),
("2770","959","_wp_attachment_metadata","a:5:{s:5:\"width\";i:711;s:6:\"height\";i:787;s:4:\"file\";s:30:\"2017/10/xe-dap-3-banh-f955.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-271x300.jpg\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"xe-dap-3-banh-f955-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("2771","958","_thumbnail_id","959"),
("2772","958","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2773","958","_sku",""),
("2774","958","_regular_price","260000"),
("2775","958","_sale_price","250000"),
("2776","958","_sale_price_dates_from",""),
("2777","958","_sale_price_dates_to",""),
("2778","958","total_sales","0"),
("2779","958","_tax_status","taxable"),
("2780","958","_tax_class",""),
("2781","958","_manage_stock","no"),
("2782","958","_backorders","no"),
("2783","958","_sold_individually","no"),
("2784","958","_weight",""),
("2785","958","_length",""),
("2786","958","_width",""),
("2787","958","_height",""),
("2788","958","_upsell_ids","a:0:{}"),
("2789","958","_crosssell_ids","a:0:{}"),
("2790","958","_purchase_note",""),
("2791","958","_default_attributes","a:0:{}"),
("2792","958","_virtual","no"),
("2793","958","_downloadable","no"),
("2794","958","_product_image_gallery",""),
("2795","958","_download_limit","-1"),
("2796","958","_download_expiry","-1"),
("2797","958","_stock",""),
("2798","958","_stock_status","instock"),
("2799","958","_product_version","3.1.2"),
("2800","958","_price","250000"),
("2801","960","_wc_review_count","1"),
("2802","960","_wc_rating_count","a:1:{i:5;i:1;}"),
("2803","960","_wc_average_rating","5.00"),
("2804","960","_edit_last","1"),
("2805","960","_edit_lock","1507692527:1"),
("2806","961","_wp_attached_file","2017/10/tau-hoa-anto-66-2.jpg"),
("2807","961","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2017/10/tau-hoa-anto-66-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"tau-hoa-anto-66-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2808","960","_thumbnail_id","961"),
("2809","960","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2810","960","_sku",""),
("2811","960","_regular_price","85900"),
("2812","960","_sale_price",""),
("2813","960","_sale_price_dates_from",""),
("2814","960","_sale_price_dates_to",""),
("2815","960","total_sales","0"),
("2816","960","_tax_status","taxable"),
("2817","960","_tax_class",""),
("2818","960","_manage_stock","no"),
("2819","960","_backorders","no"),
("2820","960","_sold_individually","no"),
("2821","960","_weight",""),
("2822","960","_length",""),
("2823","960","_width",""),
("2824","960","_height",""),
("2825","960","_upsell_ids","a:0:{}"),
("2826","960","_crosssell_ids","a:0:{}"),
("2827","960","_purchase_note",""),
("2828","960","_default_attributes","a:0:{}"),
("2829","960","_virtual","no"),
("2830","960","_downloadable","no"),
("2831","960","_product_image_gallery","961"),
("2832","960","_download_limit","-1"),
("2833","960","_download_expiry","-1"),
("2834","960","_stock",""),
("2835","960","_stock_status","instock"),
("2836","960","_product_version","3.1.2"),
("2837","960","_price","85900"),
("2838","962","_wc_review_count","0"),
("2839","962","_wc_rating_count","a:0:{}"),
("2840","962","_wc_average_rating","0"),
("2841","962","_edit_last","1");
INSERT INTO bz_postmeta VALUES
("2842","962","_edit_lock","1507696987:1"),
("2843","963","_wp_attached_file","2017/10/banh-quy-an-dam-trung-wakodo-ao3-7-thang-2.jpg"),
("2844","963","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:54:\"2017/10/banh-quy-an-dam-trung-wakodo-ao3-7-thang-2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:54:\"banh-quy-an-dam-trung-wakodo-ao3-7-thang-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2845","962","_thumbnail_id","963"),
("2846","962","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2847","962","_sku",""),
("2848","962","_regular_price","250000"),
("2849","962","_sale_price",""),
("2850","962","_sale_price_dates_from",""),
("2851","962","_sale_price_dates_to",""),
("2852","962","total_sales","0"),
("2853","962","_tax_status","taxable"),
("2854","962","_tax_class",""),
("2855","962","_manage_stock","no"),
("2856","962","_backorders","no"),
("2857","962","_sold_individually","no"),
("2858","962","_weight",""),
("2859","962","_length",""),
("2860","962","_width",""),
("2861","962","_height",""),
("2862","962","_upsell_ids","a:0:{}"),
("2863","962","_crosssell_ids","a:0:{}"),
("2864","962","_purchase_note",""),
("2865","962","_default_attributes","a:0:{}"),
("2866","962","_virtual","no"),
("2867","962","_downloadable","no"),
("2868","962","_product_image_gallery","963"),
("2869","962","_download_limit","-1"),
("2870","962","_download_expiry","-1"),
("2871","962","_stock",""),
("2872","962","_stock_status","instock"),
("2873","962","_product_version","3.1.2"),
("2874","962","_price","250000"),
("2875","964","_wc_review_count","0"),
("2876","964","_wc_rating_count","a:0:{}"),
("2877","964","_wc_average_rating","0"),
("2878","964","_edit_last","1"),
("2879","964","_edit_lock","1507696877:1"),
("2880","965","_wp_attached_file","2017/10/banh-quy-heinz-7-60g-1.jpg"),
("2881","965","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:34:\"2017/10/banh-quy-heinz-7-60g-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"banh-quy-heinz-7-60g-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"banh-quy-heinz-7-60g-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"banh-quy-heinz-7-60g-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"banh-quy-heinz-7-60g-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2882","964","_thumbnail_id","965"),
("2883","964","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2884","964","_sku",""),
("2885","964","_regular_price","230000"),
("2886","964","_sale_price",""),
("2887","964","_sale_price_dates_from",""),
("2888","964","_sale_price_dates_to",""),
("2889","964","total_sales","0"),
("2890","964","_tax_status","taxable"),
("2891","964","_tax_class",""),
("2892","964","_manage_stock","no"),
("2893","964","_backorders","no"),
("2894","964","_sold_individually","no"),
("2895","964","_weight",""),
("2896","964","_length",""),
("2897","964","_width",""),
("2898","964","_height",""),
("2899","964","_upsell_ids","a:0:{}"),
("2900","964","_crosssell_ids","a:0:{}"),
("2901","964","_purchase_note",""),
("2902","964","_default_attributes","a:0:{}"),
("2903","964","_virtual","no"),
("2904","964","_downloadable","no"),
("2905","964","_product_image_gallery","965"),
("2906","964","_download_limit","-1"),
("2907","964","_download_expiry","-1"),
("2908","964","_stock",""),
("2909","964","_stock_status","instock"),
("2910","964","_product_version","3.1.2"),
("2911","964","_price","230000"),
("2912","966","_wc_review_count","1"),
("2913","966","_wc_rating_count","a:1:{i:2;i:1;}"),
("2914","966","_wc_average_rating","2.00"),
("2915","966","_edit_last","1"),
("2916","966","_edit_lock","1507696783:1"),
("2917","967","_wp_attached_file","2017/10/sua-nan-nga-so-2-400gr-1_1.jpg"),
("2918","967","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:38:\"2017/10/sua-nan-nga-so-2-400gr-1_1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"sua-nan-nga-so-2-400gr-1_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"sua-nan-nga-so-2-400gr-1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"sua-nan-nga-so-2-400gr-1_1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"sua-nan-nga-so-2-400gr-1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2919","966","_thumbnail_id","967"),
("2920","966","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2921","966","_sku",""),
("2922","966","_regular_price","560000"),
("2923","966","_sale_price",""),
("2924","966","_sale_price_dates_from",""),
("2925","966","_sale_price_dates_to",""),
("2926","966","total_sales","0"),
("2927","966","_tax_status","taxable"),
("2928","966","_tax_class",""),
("2929","966","_manage_stock","no"),
("2930","966","_backorders","no"),
("2931","966","_sold_individually","no"),
("2932","966","_weight",""),
("2933","966","_length",""),
("2934","966","_width",""),
("2935","966","_height",""),
("2936","966","_upsell_ids","a:0:{}"),
("2937","966","_crosssell_ids","a:0:{}"),
("2938","966","_purchase_note",""),
("2939","966","_default_attributes","a:0:{}"),
("2940","966","_virtual","no"),
("2941","966","_downloadable","no");
INSERT INTO bz_postmeta VALUES
("2942","966","_product_image_gallery","967"),
("2943","966","_download_limit","-1"),
("2944","966","_download_expiry","-1"),
("2945","966","_stock",""),
("2946","966","_stock_status","instock"),
("2947","966","_product_version","3.1.2"),
("2948","966","_price","560000"),
("2949","968","_wc_review_count","0"),
("2950","968","_wc_rating_count","a:0:{}"),
("2951","968","_wc_average_rating","0"),
("2952","968","_edit_last","1"),
("2953","968","_edit_lock","1507696699:1"),
("2954","969","_wp_attached_file","2017/10/banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1.jpg"),
("2955","969","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:60:\"2017/10/banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:70:\"Bánh mỳ La Fournee Doree bơ tươi (500g) bán tại Colorful Shop\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2956","968","_thumbnail_id","969"),
("2957","968","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2958","968","_sku",""),
("2959","968","_regular_price","105000"),
("2960","968","_sale_price",""),
("2961","968","_sale_price_dates_from",""),
("2962","968","_sale_price_dates_to",""),
("2963","968","total_sales","0"),
("2964","968","_tax_status","taxable"),
("2965","968","_tax_class",""),
("2966","968","_manage_stock","no"),
("2967","968","_backorders","no"),
("2968","968","_sold_individually","no"),
("2969","968","_weight",""),
("2970","968","_length",""),
("2971","968","_width",""),
("2972","968","_height",""),
("2973","968","_upsell_ids","a:0:{}"),
("2974","968","_crosssell_ids","a:0:{}"),
("2975","968","_purchase_note",""),
("2976","968","_default_attributes","a:0:{}"),
("2977","968","_virtual","no"),
("2978","968","_downloadable","no"),
("2979","968","_product_image_gallery","969"),
("2980","968","_download_limit","-1"),
("2981","968","_download_expiry","-1"),
("2982","968","_stock",""),
("2983","968","_stock_status","instock"),
("2984","968","_product_version","3.1.2"),
("2985","968","_price","105000"),
("2986","970","_wc_review_count","0"),
("2987","970","_wc_rating_count","a:0:{}"),
("2988","970","_wc_average_rating","0"),
("2989","970","_edit_last","1"),
("2990","970","_edit_lock","1507696607:1"),
("2991","971","_wp_attached_file","2017/10/nuoc-rua-binh-arau-baby-dang-chai-500ml.jpg"),
("2992","971","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:51:\"2017/10/nuoc-rua-binh-arau-baby-dang-chai-500ml.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"nuoc-rua-binh-arau-baby-dang-chai-500ml-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"nuoc-rua-binh-arau-baby-dang-chai-500ml-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"nuoc-rua-binh-arau-baby-dang-chai-500ml-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"nuoc-rua-binh-arau-baby-dang-chai-500ml-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2993","970","_thumbnail_id","971"),
("2994","970","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("2995","970","_sku",""),
("2996","970","_regular_price","560000"),
("2997","970","_sale_price",""),
("2998","970","_sale_price_dates_from",""),
("2999","970","_sale_price_dates_to",""),
("3000","970","total_sales","0"),
("3001","970","_tax_status","taxable"),
("3002","970","_tax_class",""),
("3003","970","_manage_stock","no"),
("3004","970","_backorders","no"),
("3005","970","_sold_individually","no"),
("3006","970","_weight",""),
("3007","970","_length",""),
("3008","970","_width",""),
("3009","970","_height",""),
("3010","970","_upsell_ids","a:0:{}"),
("3011","970","_crosssell_ids","a:0:{}"),
("3012","970","_purchase_note",""),
("3013","970","_default_attributes","a:0:{}"),
("3014","970","_virtual","no"),
("3015","970","_downloadable","no"),
("3016","970","_product_image_gallery","971"),
("3017","970","_download_limit","-1"),
("3018","970","_download_expiry","-1"),
("3019","970","_stock",""),
("3020","970","_stock_status","instock"),
("3021","970","_product_version","3.1.2"),
("3022","970","_price","560000"),
("3023","972","_wc_review_count","0"),
("3024","972","_wc_rating_count","a:0:{}"),
("3025","972","_wc_average_rating","0"),
("3026","973","_wp_attached_file","2017/10/sua-chua-hoa-qua-kids-mix-4x50g-_2_.jpg"),
("3027","973","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:47:\"2017/10/sua-chua-hoa-qua-kids-mix-4x50g-_2_.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"sua-chua-hoa-qua-kids-mix-4x50g-_2_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"sua-chua-hoa-qua-kids-mix-4x50g-_2_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"sua-chua-hoa-qua-kids-mix-4x50g-_2_-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"sua-chua-hoa-qua-kids-mix-4x50g-_2_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3028","972","_edit_last","1"),
("3029","972","_thumbnail_id","973"),
("3030","972","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3031","972","_sku",""),
("3032","972","_regular_price","560000"),
("3033","972","_sale_price",""),
("3034","972","_sale_price_dates_from",""),
("3035","972","_sale_price_dates_to",""),
("3036","972","total_sales","0"),
("3037","972","_tax_status","taxable"),
("3038","972","_tax_class",""),
("3039","972","_manage_stock","no"),
("3040","972","_backorders","no"),
("3041","972","_sold_individually","no");
INSERT INTO bz_postmeta VALUES
("3042","972","_weight",""),
("3043","972","_length",""),
("3044","972","_width",""),
("3045","972","_height",""),
("3046","972","_upsell_ids","a:0:{}"),
("3047","972","_crosssell_ids","a:0:{}"),
("3048","972","_purchase_note",""),
("3049","972","_default_attributes","a:0:{}"),
("3050","972","_virtual","no"),
("3051","972","_downloadable","no"),
("3052","972","_product_image_gallery","973"),
("3053","972","_download_limit","-1"),
("3054","972","_download_expiry","-1"),
("3055","972","_stock",""),
("3056","972","_stock_status","instock"),
("3057","972","_product_version","3.1.2"),
("3058","972","_price","560000"),
("3059","972","_edit_lock","1507696483:1"),
("3060","974","_wc_review_count","0"),
("3061","974","_wc_rating_count","a:0:{}"),
("3062","974","_wc_average_rating","0"),
("3063","975","_wp_attached_file","2017/10/dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho-.jpeg"),
("3064","975","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:69:\"2017/10/dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho-.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho--150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:69:\"dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho--180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:69:\"dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3065","974","_edit_last","1"),
("3066","974","_thumbnail_id","975"),
("3067","974","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3068","974","_sku",""),
("3069","974","_regular_price","250000"),
("3070","974","_sale_price",""),
("3071","974","_sale_price_dates_from",""),
("3072","974","_sale_price_dates_to",""),
("3073","974","total_sales","0"),
("3074","974","_tax_status","taxable"),
("3075","974","_tax_class",""),
("3076","974","_manage_stock","no"),
("3077","974","_backorders","no"),
("3078","974","_sold_individually","no"),
("3079","974","_weight",""),
("3080","974","_length",""),
("3081","974","_width",""),
("3082","974","_height",""),
("3083","974","_upsell_ids","a:0:{}"),
("3084","974","_crosssell_ids","a:0:{}"),
("3085","974","_purchase_note",""),
("3086","974","_default_attributes","a:0:{}"),
("3087","974","_virtual","no"),
("3088","974","_downloadable","no"),
("3089","974","_product_image_gallery","975"),
("3090","974","_download_limit","-1"),
("3091","974","_download_expiry","-1"),
("3092","974","_stock",""),
("3093","974","_stock_status","instock"),
("3094","974","_product_version","3.1.2"),
("3095","974","_price","250000"),
("3096","974","_edit_lock","1507696364:1"),
("3097","976","_wc_review_count","0"),
("3098","976","_wc_rating_count","a:0:{}"),
("3099","976","_wc_average_rating","0"),
("3100","976","_edit_last","1"),
("3101","976","_edit_lock","1507696105:1"),
("3102","977","_wp_attached_file","2017/10/ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1.jpg"),
("3103","977","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:55:\"2017/10/ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:55:\"ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:55:\"ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3104","976","_thumbnail_id","977"),
("3105","976","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3106","976","_sku",""),
("3107","976","_regular_price","1500000"),
("3108","976","_sale_price","100000"),
("3109","976","_sale_price_dates_from",""),
("3110","976","_sale_price_dates_to",""),
("3111","976","total_sales","0"),
("3112","976","_tax_status","taxable"),
("3113","976","_tax_class",""),
("3114","976","_manage_stock","no"),
("3115","976","_backorders","no"),
("3116","976","_sold_individually","no"),
("3117","976","_weight",""),
("3118","976","_length",""),
("3119","976","_width",""),
("3120","976","_height",""),
("3121","976","_upsell_ids","a:0:{}"),
("3122","976","_crosssell_ids","a:0:{}"),
("3123","976","_purchase_note",""),
("3124","976","_default_attributes","a:0:{}"),
("3125","976","_virtual","no"),
("3126","976","_downloadable","no"),
("3127","976","_product_image_gallery","977"),
("3128","976","_download_limit","-1"),
("3129","976","_download_expiry","-1"),
("3130","976","_stock",""),
("3131","976","_stock_status","instock"),
("3132","976","_product_version","3.1.2"),
("3133","976","_price","100000"),
("3134","979","_wp_attached_file","2017/10/logo-bubchen.jpg"),
("3135","979","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2017/10/logo-bubchen.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3136","981","_wp_attached_file","2017/10/logo-goon.png"),
("3137","981","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2017/10/logo-goon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3138","983","_wp_attached_file","2017/10/Logo-merries.jpg"),
("3139","983","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2017/10/Logo-merries.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3140","985","_wp_attached_file","2017/10/logo_bobby_1.jpg"),
("3141","985","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2017/10/logo_bobby_1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1469176375\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO bz_postmeta VALUES
("3142","987","_wp_attached_file","2017/10/kiza_logo.jpg"),
("3143","987","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:21:\"2017/10/kiza_logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3144","989","_wp_attached_file","2017/10/Chicco_logo.png"),
("3145","989","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:23:\"2017/10/Chicco_logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3146","991","_wp_attached_file","2017/10/logo_moony.jpg"),
("3147","991","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:22:\"2017/10/logo_moony.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3148","993","_wp_attached_file","2017/10/ange.png"),
("3149","993","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2017/10/ange.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3150","995","_wp_attached_file","2017/10/Simba-logo.png"),
("3151","995","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:22:\"2017/10/Simba-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3152","997","_wp_attached_file","2017/10/logo-farlin.jpg"),
("3153","997","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:23:\"2017/10/logo-farlin.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3154","1000","_wp_attached_file","2017/10/mamago_logo2.jpg"),
("3155","1000","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:24:\"2017/10/mamago_logo2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3156","1001","_wp_attached_file","2017/10/logo-Aprica.jpg"),
("3157","1001","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:23:\"2017/10/logo-Aprica.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3158","1003","_wp_attached_file","2017/10/image138.jpg"),
("3159","1003","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2017/10/image138.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3160","1005","_wp_attached_file","2017/10/image173.jpg"),
("3161","1005","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:20:\"2017/10/image173.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3162","1016","_menu_item_type","custom"),
("3163","1016","_menu_item_menu_item_parent","250"),
("3164","1016","_menu_item_object_id","1016"),
("3165","1016","_menu_item_object","custom"),
("3166","1016","_menu_item_target",""),
("3167","1016","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3168","1016","_menu_item_xfn",""),
("3169","1016","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/"),
("3171","1017","_menu_item_type","custom"),
("3172","1017","_menu_item_menu_item_parent","1016"),
("3173","1017","_menu_item_object_id","1017"),
("3174","1017","_menu_item_object","custom"),
("3175","1017","_menu_item_target",""),
("3176","1017","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3177","1017","_menu_item_xfn",""),
("3178","1017","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-mamago/"),
("3180","1018","_menu_item_type","custom"),
("3181","1018","_menu_item_menu_item_parent","1016"),
("3182","1018","_menu_item_object_id","1018"),
("3183","1018","_menu_item_object","custom"),
("3184","1018","_menu_item_target",""),
("3185","1018","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3186","1018","_menu_item_xfn",""),
("3187","1018","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-mother-v/"),
("3189","1019","_menu_item_type","custom"),
("3190","1019","_menu_item_menu_item_parent","1016"),
("3191","1019","_menu_item_object_id","1019"),
("3192","1019","_menu_item_object","custom"),
("3193","1019","_menu_item_target",""),
("3194","1019","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3195","1019","_menu_item_xfn",""),
("3196","1019","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-medela/"),
("3198","1020","_menu_item_type","custom"),
("3199","1020","_menu_item_menu_item_parent","1016"),
("3200","1020","_menu_item_object_id","1020"),
("3201","1020","_menu_item_object","custom"),
("3202","1020","_menu_item_target",""),
("3203","1020","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3204","1020","_menu_item_xfn",""),
("3205","1020","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-avent/"),
("3207","1021","_menu_item_type","custom"),
("3208","1021","_menu_item_menu_item_parent","1016"),
("3209","1021","_menu_item_object_id","1021"),
("3210","1021","_menu_item_object","custom"),
("3211","1021","_menu_item_target",""),
("3212","1021","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3213","1021","_menu_item_xfn",""),
("3214","1021","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-spectra/"),
("3216","1022","_menu_item_type","custom"),
("3217","1022","_menu_item_menu_item_parent","250"),
("3218","1022","_menu_item_object_id","1022"),
("3219","1022","_menu_item_object","custom"),
("3220","1022","_menu_item_target",""),
("3221","1022","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3222","1022","_menu_item_xfn",""),
("3223","1022","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/"),
("3225","1023","_menu_item_type","custom"),
("3226","1023","_menu_item_menu_item_parent","1022"),
("3227","1023","_menu_item_object_id","1023"),
("3228","1023","_menu_item_object","custom"),
("3229","1023","_menu_item_target",""),
("3230","1023","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3231","1023","_menu_item_xfn",""),
("3232","1023","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/sua-cho-me-bau/"),
("3234","1024","_menu_item_type","custom"),
("3235","1024","_menu_item_menu_item_parent","1022"),
("3236","1024","_menu_item_object_id","1024"),
("3237","1024","_menu_item_object","custom"),
("3238","1024","_menu_item_target",""),
("3239","1024","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3240","1024","_menu_item_xfn",""),
("3241","1024","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/kem-chong-ran-da/"),
("3243","1025","_menu_item_type","custom"),
("3244","1025","_menu_item_menu_item_parent","1022"),
("3245","1025","_menu_item_object_id","1025"),
("3246","1025","_menu_item_object","custom"),
("3247","1025","_menu_item_target",""),
("3248","1025","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3249","1025","_menu_item_xfn",""),
("3250","1025","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/goi-da-nang-cho-me-bau/");
INSERT INTO bz_postmeta VALUES
("3252","1026","_menu_item_type","custom"),
("3253","1026","_menu_item_menu_item_parent","1022"),
("3254","1026","_menu_item_object_id","1026"),
("3255","1026","_menu_item_object","custom"),
("3256","1026","_menu_item_target",""),
("3257","1026","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3258","1026","_menu_item_xfn",""),
("3259","1026","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/tai-nghe-me-bau/"),
("3261","1027","_menu_item_type","custom"),
("3262","1027","_menu_item_menu_item_parent","1022"),
("3263","1027","_menu_item_object_id","1027"),
("3264","1027","_menu_item_object","custom"),
("3265","1027","_menu_item_target",""),
("3266","1027","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3267","1027","_menu_item_xfn",""),
("3268","1027","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/dai-do-bung-ba-bau/"),
("3270","1028","_menu_item_type","custom"),
("3271","1028","_menu_item_menu_item_parent","1022"),
("3272","1028","_menu_item_object_id","1028"),
("3273","1028","_menu_item_object","custom"),
("3274","1028","_menu_item_target",""),
("3275","1028","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3276","1028","_menu_item_xfn",""),
("3277","1028","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/vitamin-dinh-duong/"),
("3279","1029","_menu_item_type","custom"),
("3280","1029","_menu_item_menu_item_parent","250"),
("3281","1029","_menu_item_object_id","1029"),
("3282","1029","_menu_item_object","custom"),
("3283","1029","_menu_item_target",""),
("3284","1029","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3285","1029","_menu_item_xfn",""),
("3286","1029","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/"),
("3288","1030","_menu_item_type","custom"),
("3289","1030","_menu_item_menu_item_parent","1029"),
("3290","1030","_menu_item_object_id","1030"),
("3291","1030","_menu_item_object","custom"),
("3292","1030","_menu_item_target",""),
("3293","1030","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3294","1030","_menu_item_xfn",""),
("3295","1030","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/bim-do-dung-ve-sinh/"),
("3297","1031","_menu_item_type","custom"),
("3298","1031","_menu_item_menu_item_parent","1029"),
("3299","1031","_menu_item_object_id","1031"),
("3300","1031","_menu_item_object","custom"),
("3301","1031","_menu_item_target",""),
("3302","1031","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3303","1031","_menu_item_xfn",""),
("3304","1031","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/gel-bung-nit-bung/"),
("3306","1032","_menu_item_type","custom"),
("3307","1032","_menu_item_menu_item_parent","1029"),
("3308","1032","_menu_item_object_id","1032"),
("3309","1032","_menu_item_object","custom"),
("3310","1032","_menu_item_target",""),
("3311","1032","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3312","1032","_menu_item_xfn",""),
("3313","1032","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/tui-dung-do-me-be/"),
("3315","1033","_menu_item_type","custom"),
("3316","1033","_menu_item_menu_item_parent","1029"),
("3317","1033","_menu_item_object_id","1033"),
("3318","1033","_menu_item_object","custom"),
("3319","1033","_menu_item_target",""),
("3320","1033","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3321","1033","_menu_item_xfn",""),
("3322","1033","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/ao-cho-con-bu/"),
("3324","1034","_menu_item_type","custom"),
("3325","1034","_menu_item_menu_item_parent","1029"),
("3326","1034","_menu_item_object_id","1034"),
("3327","1034","_menu_item_object","custom"),
("3328","1034","_menu_item_target",""),
("3329","1034","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3330","1034","_menu_item_xfn",""),
("3331","1034","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/tham-sua-tro-ti/"),
("3333","1035","_menu_item_type","custom"),
("3334","1035","_menu_item_menu_item_parent","1029"),
("3335","1035","_menu_item_object_id","1035"),
("3336","1035","_menu_item_object","custom"),
("3337","1035","_menu_item_target",""),
("3338","1035","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3339","1035","_menu_item_xfn",""),
("3340","1035","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/quan-ao-sau-sinh/"),
("3342","1036","_menu_item_type","custom"),
("3343","1036","_menu_item_menu_item_parent","250"),
("3344","1036","_menu_item_object_id","1036"),
("3345","1036","_menu_item_object","custom"),
("3346","1036","_menu_item_target",""),
("3347","1036","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3348","1036","_menu_item_xfn",""),
("3349","1036","_menu_item_url","#"),
("3351","1037","_menu_item_type","custom"),
("3352","1037","_menu_item_menu_item_parent","1036"),
("3353","1037","_menu_item_object_id","1037"),
("3354","1037","_menu_item_object","custom"),
("3355","1037","_menu_item_target",""),
("3356","1037","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3357","1037","_menu_item_xfn",""),
("3358","1037","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/tui-tru-sua/"),
("3360","1038","_menu_item_type","custom"),
("3361","1038","_menu_item_menu_item_parent","1036"),
("3362","1038","_menu_item_object_id","1038"),
("3363","1038","_menu_item_object","custom");
INSERT INTO bz_postmeta VALUES
("3364","1038","_menu_item_target",""),
("3365","1038","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3366","1038","_menu_item_xfn",""),
("3367","1038","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/dau-goi-sua-tam/"),
("3369","1039","_menu_item_type","custom"),
("3370","1039","_menu_item_menu_item_parent","1036"),
("3371","1039","_menu_item_object_id","1039"),
("3372","1039","_menu_item_object","custom"),
("3373","1039","_menu_item_target",""),
("3374","1039","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3375","1039","_menu_item_xfn",""),
("3376","1039","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/my-pham-lam-dep/"),
("3378","1040","_menu_item_type","custom"),
("3379","1040","_menu_item_menu_item_parent","1036"),
("3380","1040","_menu_item_object_id","1040"),
("3381","1040","_menu_item_object","custom"),
("3382","1040","_menu_item_target",""),
("3383","1040","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3384","1040","_menu_item_xfn",""),
("3385","1040","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/thoi-trang-bau/"),
("3387","1041","_wp_attached_file","2017/10/me-an-toan.jpg"),
("3388","1041","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:320;s:4:\"file\";s:22:\"2017/10/me-an-toan.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"me-an-toan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"me-an-toan-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"me-an-toan-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"me-an-toan-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3389","1041","_edit_lock","1507259051:1"),
("3390","1042","_menu_item_type","custom"),
("3391","1042","_menu_item_menu_item_parent","250"),
("3392","1042","_menu_item_object_id","1042"),
("3393","1042","_menu_item_object","custom"),
("3394","1042","_menu_item_target",""),
("3395","1042","_menu_item_classes","a:1:{i:0;s:12:\"image-column\";}"),
("3396","1042","_menu_item_xfn",""),
("3397","1042","_menu_item_url","#"),
("3399","1044","_menu_item_type","custom"),
("3400","1044","_menu_item_menu_item_parent","0"),
("3401","1044","_menu_item_object_id","1044"),
("3402","1044","_menu_item_object","custom"),
("3403","1044","_menu_item_target",""),
("3404","1044","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3405","1044","_menu_item_xfn",""),
("3406","1044","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/thoi-trang-bau/"),
("3408","1045","_menu_item_type","custom"),
("3409","1045","_menu_item_menu_item_parent","0"),
("3410","1045","_menu_item_object_id","1045"),
("3411","1045","_menu_item_object","custom"),
("3412","1045","_menu_item_target",""),
("3413","1045","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3414","1045","_menu_item_xfn",""),
("3415","1045","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/my-pham-lam-dep/"),
("3417","1046","_menu_item_type","custom"),
("3418","1046","_menu_item_menu_item_parent","0"),
("3419","1046","_menu_item_object_id","1046"),
("3420","1046","_menu_item_object","custom"),
("3421","1046","_menu_item_target",""),
("3422","1046","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3423","1046","_menu_item_xfn",""),
("3424","1046","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/tui-tru-sua/"),
("3426","1047","_menu_item_type","custom"),
("3427","1047","_menu_item_menu_item_parent","0"),
("3428","1047","_menu_item_object_id","1047"),
("3429","1047","_menu_item_object","custom"),
("3430","1047","_menu_item_target",""),
("3431","1047","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3432","1047","_menu_item_xfn",""),
("3433","1047","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/quan-ao-sau-sinh/"),
("3435","1048","_menu_item_type","custom"),
("3436","1048","_menu_item_menu_item_parent","0"),
("3437","1048","_menu_item_object_id","1048"),
("3438","1048","_menu_item_object","custom"),
("3439","1048","_menu_item_target",""),
("3440","1048","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3441","1048","_menu_item_xfn",""),
("3442","1048","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/tham-sua-tro-ti/"),
("3444","1049","_menu_item_type","custom"),
("3445","1049","_menu_item_menu_item_parent","0"),
("3446","1049","_menu_item_object_id","1049"),
("3447","1049","_menu_item_object","custom"),
("3448","1049","_menu_item_target",""),
("3449","1049","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3450","1049","_menu_item_xfn",""),
("3451","1049","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/gel-bung-nit-bung/"),
("3453","1050","_menu_item_type","custom"),
("3454","1050","_menu_item_menu_item_parent","0"),
("3455","1050","_menu_item_object_id","1050"),
("3456","1050","_menu_item_object","custom"),
("3457","1050","_menu_item_target",""),
("3458","1050","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3459","1050","_menu_item_xfn",""),
("3460","1050","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/ao-cho-con-bu/"),
("3462","1051","_menu_item_type","custom"),
("3463","1051","_menu_item_menu_item_parent","0"),
("3464","1051","_menu_item_object_id","1051"),
("3465","1051","_menu_item_object","custom"),
("3466","1051","_menu_item_target",""),
("3467","1051","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3468","1051","_menu_item_xfn",""),
("3469","1051","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/kem-chong-ran-da/"),
("3471","1052","_menu_item_type","custom"),
("3472","1052","_menu_item_menu_item_parent","0"),
("3473","1052","_menu_item_object_id","1052"),
("3474","1052","_menu_item_object","custom"),
("3475","1052","_menu_item_target","");
INSERT INTO bz_postmeta VALUES
("3476","1052","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3477","1052","_menu_item_xfn",""),
("3478","1052","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/dai-do-bung-ba-bau/"),
("3480","1053","_menu_item_type","custom"),
("3481","1053","_menu_item_menu_item_parent","0"),
("3482","1053","_menu_item_object_id","1053"),
("3483","1053","_menu_item_object","custom"),
("3484","1053","_menu_item_target",""),
("3485","1053","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3486","1053","_menu_item_xfn",""),
("3487","1053","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/goi-da-nang-cho-me-bau/"),
("3489","1054","_menu_item_type","custom"),
("3490","1054","_menu_item_menu_item_parent","0"),
("3491","1054","_menu_item_object_id","1054"),
("3492","1054","_menu_item_object","custom"),
("3493","1054","_menu_item_target",""),
("3494","1054","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3495","1054","_menu_item_xfn",""),
("3496","1054","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/sua-cho-me-bau/"),
("3498","1055","_menu_item_type","custom"),
("3499","1055","_menu_item_menu_item_parent","0"),
("3500","1055","_menu_item_object_id","1055"),
("3501","1055","_menu_item_object","custom"),
("3502","1055","_menu_item_target",""),
("3503","1055","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3504","1055","_menu_item_xfn",""),
("3505","1055","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/tai-nghe-me-bau/"),
("3507","1056","_menu_item_type","custom"),
("3508","1056","_menu_item_menu_item_parent","0"),
("3509","1056","_menu_item_object_id","1056"),
("3510","1056","_menu_item_object","custom"),
("3511","1056","_menu_item_target",""),
("3512","1056","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3513","1056","_menu_item_xfn",""),
("3514","1056","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-bau/kem-chong-ran-da/"),
("3516","1057","_menu_item_type","custom"),
("3517","1057","_menu_item_menu_item_parent","0"),
("3518","1057","_menu_item_object_id","1057"),
("3519","1057","_menu_item_object","custom"),
("3520","1057","_menu_item_target",""),
("3521","1057","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3522","1057","_menu_item_xfn",""),
("3523","1057","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/bim-do-dung-ve-sinh/"),
("3525","1058","_menu_item_type","custom"),
("3526","1058","_menu_item_menu_item_parent","0"),
("3527","1058","_menu_item_object_id","1058"),
("3528","1058","_menu_item_object","custom"),
("3529","1058","_menu_item_target",""),
("3530","1058","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3531","1058","_menu_item_xfn",""),
("3532","1058","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/tui-dung-do-me-be/"),
("3534","1059","_menu_item_type","custom"),
("3535","1059","_menu_item_menu_item_parent","0"),
("3536","1059","_menu_item_object_id","1059"),
("3537","1059","_menu_item_object","custom"),
("3538","1059","_menu_item_target",""),
("3539","1059","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3540","1059","_menu_item_xfn",""),
("3541","1059","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/do-cho-me-sau-sinh/ao-cho-con-bu/"),
("3543","1060","_menu_item_type","custom"),
("3544","1060","_menu_item_menu_item_parent","0"),
("3545","1060","_menu_item_object_id","1060"),
("3546","1060","_menu_item_object","custom"),
("3547","1060","_menu_item_target",""),
("3548","1060","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3549","1060","_menu_item_xfn",""),
("3550","1060","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-mamago/"),
("3552","1061","_menu_item_type","custom"),
("3553","1061","_menu_item_menu_item_parent","0"),
("3554","1061","_menu_item_object_id","1061"),
("3555","1061","_menu_item_object","custom"),
("3556","1061","_menu_item_target",""),
("3557","1061","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3558","1061","_menu_item_xfn",""),
("3559","1061","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-mother-v/"),
("3561","1062","_menu_item_type","custom"),
("3562","1062","_menu_item_menu_item_parent","0"),
("3563","1062","_menu_item_object_id","1062"),
("3564","1062","_menu_item_object","custom"),
("3565","1062","_menu_item_target",""),
("3566","1062","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3567","1062","_menu_item_xfn",""),
("3568","1062","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-medela/"),
("3570","1063","_menu_item_type","custom"),
("3571","1063","_menu_item_menu_item_parent","0"),
("3572","1063","_menu_item_object_id","1063"),
("3573","1063","_menu_item_object","custom"),
("3574","1063","_menu_item_target",""),
("3575","1063","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("3576","1063","_menu_item_xfn",""),
("3577","1063","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/may-hut-sua-vat-sua/may-hut-sua-avent/"),
("3579","1064","_wp_attached_file","2017/10/banner_Medela_tang_1.png"),
("3580","1064","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:230;s:4:\"file\";s:32:\"2017/10/banner_Medela_tang_1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"banner_Medela_tang_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"banner_Medela_tang_1-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"banner_Medela_tang_1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"banner_Medela_tang_1-300x230.png\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3581","1066","_edit_last","1"),
("3582","1066","_sidebar_to_replace","sidebar-main"),
("3583","1066","_edit_lock","1507259996:1"),
("3584","1067","_edit_last","1"),
("3585","1067","_edit_lock","1507260005:1"),
("3586","1067","_sidebar_to_replace","sidebar-main"),
("3587","1071","_wc_review_count","0");
INSERT INTO bz_postmeta VALUES
("3588","1071","_wc_rating_count","a:0:{}"),
("3589","1071","_wc_average_rating","0"),
("3590","1071","_edit_last","1"),
("3591","1071","_edit_lock","1507703183:1"),
("3592","1072","_wp_attached_file","2017/10/ghe-rung-5.jpg"),
("3593","1072","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2017/10/ghe-rung-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ghe-rung-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ghe-rung-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"ghe-rung-5-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"ghe-rung-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3594","1071","_thumbnail_id","1072"),
("3595","1071","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3596","1071","_sku",""),
("3597","1071","_regular_price","1200000"),
("3598","1071","_sale_price",""),
("3599","1071","_sale_price_dates_from",""),
("3600","1071","_sale_price_dates_to",""),
("3601","1071","total_sales","0"),
("3602","1071","_tax_status","taxable"),
("3603","1071","_tax_class",""),
("3604","1071","_manage_stock","no"),
("3605","1071","_backorders","no"),
("3606","1071","_sold_individually","no"),
("3607","1071","_weight",""),
("3608","1071","_length",""),
("3609","1071","_width",""),
("3610","1071","_height",""),
("3611","1071","_upsell_ids","a:0:{}"),
("3612","1071","_crosssell_ids","a:0:{}"),
("3613","1071","_purchase_note",""),
("3614","1071","_default_attributes","a:0:{}"),
("3615","1071","_virtual","no"),
("3616","1071","_downloadable","no"),
("3617","1071","_product_image_gallery","1072"),
("3618","1071","_download_limit","-1"),
("3619","1071","_download_expiry","-1"),
("3620","1071","_stock",""),
("3621","1071","_stock_status","instock"),
("3622","1071","_product_version","3.1.2"),
("3623","1071","_price","1200000"),
("3624","1073","_wc_review_count","0"),
("3625","1073","_wc_rating_count","a:0:{}"),
("3626","1073","_wc_average_rating","0"),
("3627","1073","_edit_last","1"),
("3628","1073","_edit_lock","1507703031:1"),
("3629","1074","_wp_attached_file","2017/10/dai_nit_bung_s7508.jpg"),
("3630","1074","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:30:\"2017/10/dai_nit_bung_s7508.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"dai_nit_bung_s7508-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"dai_nit_bung_s7508-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"dai_nit_bung_s7508-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"dai_nit_bung_s7508-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3631","1073","_thumbnail_id","1074"),
("3632","1073","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3633","1073","_sku",""),
("3634","1073","_regular_price","560000"),
("3635","1073","_sale_price",""),
("3636","1073","_sale_price_dates_from",""),
("3637","1073","_sale_price_dates_to",""),
("3638","1073","total_sales","0"),
("3639","1073","_tax_status","taxable"),
("3640","1073","_tax_class",""),
("3641","1073","_manage_stock","no"),
("3642","1073","_backorders","no"),
("3643","1073","_sold_individually","no"),
("3644","1073","_weight",""),
("3645","1073","_length",""),
("3646","1073","_width",""),
("3647","1073","_height",""),
("3648","1073","_upsell_ids","a:0:{}"),
("3649","1073","_crosssell_ids","a:0:{}"),
("3650","1073","_purchase_note",""),
("3651","1073","_default_attributes","a:0:{}"),
("3652","1073","_virtual","no"),
("3653","1073","_downloadable","no"),
("3654","1073","_product_image_gallery","1074"),
("3655","1073","_download_limit","-1"),
("3656","1073","_download_expiry","-1"),
("3657","1073","_stock",""),
("3658","1073","_stock_status","instock"),
("3659","1073","_product_version","3.1.2"),
("3660","1073","_price","560000"),
("3661","1075","_wc_review_count","0"),
("3662","1075","_wc_rating_count","a:0:{}"),
("3663","1075","_wc_average_rating","0"),
("3664","1075","_edit_last","1"),
("3665","1075","_edit_lock","1507702823:1"),
("3666","1076","_wp_attached_file","2017/10/may-hut-sua-dien-unimom-kpop-eco-um871104-1_1.jpg"),
("3667","1076","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:625;s:4:\"file\";s:57:\"2017/10/may-hut-sua-dien-unimom-kpop-eco-um871104-1_1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"may-hut-sua-dien-unimom-kpop-eco-um871104-1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS-1Ds Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1423060099\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3668","1075","_thumbnail_id","1076"),
("3669","1075","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3670","1075","_sku",""),
("3671","1075","_regular_price","320000"),
("3672","1075","_sale_price","250000"),
("3673","1075","_sale_price_dates_from",""),
("3674","1075","_sale_price_dates_to",""),
("3675","1075","total_sales","0"),
("3676","1075","_tax_status","taxable"),
("3677","1075","_tax_class",""),
("3678","1075","_manage_stock","no"),
("3679","1075","_backorders","no"),
("3680","1075","_sold_individually","no"),
("3681","1075","_weight",""),
("3682","1075","_length",""),
("3683","1075","_width",""),
("3684","1075","_height",""),
("3685","1075","_upsell_ids","a:0:{}"),
("3686","1075","_crosssell_ids","a:0:{}"),
("3687","1075","_purchase_note","");
INSERT INTO bz_postmeta VALUES
("3688","1075","_default_attributes","a:0:{}"),
("3689","1075","_virtual","no"),
("3690","1075","_downloadable","no"),
("3691","1075","_product_image_gallery","1076"),
("3692","1075","_download_limit","-1"),
("3693","1075","_download_expiry","-1"),
("3694","1075","_stock",""),
("3695","1075","_stock_status","instock"),
("3696","1075","_product_version","3.1.2"),
("3697","1075","_price","250000"),
("3698","1077","_wc_review_count","0"),
("3699","1077","_wc_rating_count","a:0:{}"),
("3700","1077","_wc_average_rating","0"),
("3701","1077","_edit_last","1"),
("3702","1077","_edit_lock","1507702562:1"),
("3703","1078","_wp_attached_file","2017/10/ghe-rung-cao-cap-kiza-3in1-crown-15.jpg"),
("3704","1078","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:47:\"2017/10/ghe-rung-cao-cap-kiza-3in1-crown-15.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"ghe-rung-cao-cap-kiza-3in1-crown-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"ghe-rung-cao-cap-kiza-3in1-crown-15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"ghe-rung-cao-cap-kiza-3in1-crown-15-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"ghe-rung-cao-cap-kiza-3in1-crown-15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("3705","1077","_thumbnail_id","1078"),
("3706","1077","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3707","1077","_sku",""),
("3708","1077","_regular_price","560000"),
("3709","1077","_sale_price",""),
("3710","1077","_sale_price_dates_from",""),
("3711","1077","_sale_price_dates_to",""),
("3712","1077","total_sales","0"),
("3713","1077","_tax_status","taxable"),
("3714","1077","_tax_class",""),
("3715","1077","_manage_stock","no"),
("3716","1077","_backorders","no"),
("3717","1077","_sold_individually","no"),
("3718","1077","_weight",""),
("3719","1077","_length",""),
("3720","1077","_width",""),
("3721","1077","_height",""),
("3722","1077","_upsell_ids","a:0:{}"),
("3723","1077","_crosssell_ids","a:0:{}"),
("3724","1077","_purchase_note",""),
("3725","1077","_default_attributes","a:0:{}"),
("3726","1077","_virtual","no"),
("3727","1077","_downloadable","no"),
("3728","1077","_product_image_gallery","1078"),
("3729","1077","_download_limit","-1"),
("3730","1077","_download_expiry","-1"),
("3731","1077","_stock",""),
("3732","1077","_stock_status","instock"),
("3733","1077","_product_version","3.1.2"),
("3734","1077","_price","560000"),
("3735","1079","_wc_review_count","0"),
("3736","1079","_wc_rating_count","a:0:{}"),
("3737","1079","_wc_average_rating","0"),
("3738","1079","_edit_last","1"),
("3739","1079","_edit_lock","1507697922:1"),
("3740","1080","_wp_attached_file","2017/10/kem-duong-da-hoa-cuc.jpg"),
("3741","1080","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:32:\"2017/10/kem-duong-da-hoa-cuc.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"kem-duong-da-hoa-cuc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"kem-duong-da-hoa-cuc-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"kem-duong-da-hoa-cuc-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"kem-duong-da-hoa-cuc-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3742","1079","_thumbnail_id","1080"),
("3743","1079","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3744","1079","_sku",""),
("3745","1079","_regular_price","630000"),
("3746","1079","_sale_price",""),
("3747","1079","_sale_price_dates_from",""),
("3748","1079","_sale_price_dates_to",""),
("3749","1079","total_sales","0"),
("3750","1079","_tax_status","taxable"),
("3751","1079","_tax_class",""),
("3752","1079","_manage_stock","no"),
("3753","1079","_backorders","no"),
("3754","1079","_sold_individually","no"),
("3755","1079","_weight",""),
("3756","1079","_length",""),
("3757","1079","_width",""),
("3758","1079","_height",""),
("3759","1079","_upsell_ids","a:0:{}"),
("3760","1079","_crosssell_ids","a:0:{}"),
("3761","1079","_purchase_note",""),
("3762","1079","_default_attributes","a:0:{}"),
("3763","1079","_virtual","no"),
("3764","1079","_downloadable","no"),
("3765","1079","_product_image_gallery","1080"),
("3766","1079","_download_limit","-1"),
("3767","1079","_download_expiry","-1"),
("3768","1079","_stock",""),
("3769","1079","_stock_status","instock"),
("3770","1079","_product_version","3.1.2"),
("3771","1079","_price","630000"),
("3772","1081","_wc_review_count","0"),
("3773","1081","_wc_rating_count","a:0:{}"),
("3774","1081","_wc_average_rating","0"),
("3775","1081","_edit_last","1"),
("3776","1081","_edit_lock","1507697725:1"),
("3777","1082","_wp_attached_file","2017/10/img_0228_2.jpg"),
("3778","1082","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2017/10/img_0228_2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"img_0228_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"img_0228_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"img_0228_2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"img_0228_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3779","1081","_thumbnail_id","1082"),
("3780","1081","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3781","1081","_sku",""),
("3782","1081","_regular_price","630000"),
("3783","1081","_sale_price",""),
("3784","1081","_sale_price_dates_from",""),
("3785","1081","_sale_price_dates_to",""),
("3786","1081","total_sales","0"),
("3787","1081","_tax_status","taxable");
INSERT INTO bz_postmeta VALUES
("3788","1081","_tax_class",""),
("3789","1081","_manage_stock","no"),
("3790","1081","_backorders","no"),
("3791","1081","_sold_individually","no"),
("3792","1081","_weight",""),
("3793","1081","_length",""),
("3794","1081","_width",""),
("3795","1081","_height",""),
("3796","1081","_upsell_ids","a:0:{}"),
("3797","1081","_crosssell_ids","a:0:{}"),
("3798","1081","_purchase_note",""),
("3799","1081","_default_attributes","a:0:{}"),
("3800","1081","_virtual","no"),
("3801","1081","_downloadable","no"),
("3802","1081","_product_image_gallery","1082"),
("3803","1081","_download_limit","-1"),
("3804","1081","_download_expiry","-1"),
("3805","1081","_stock",""),
("3806","1081","_stock_status","instock"),
("3807","1081","_product_version","3.1.2"),
("3808","1081","_price","630000"),
("3809","1083","_wc_review_count","0"),
("3810","1083","_wc_rating_count","a:0:{}"),
("3811","1083","_wc_average_rating","0"),
("3812","1083","_edit_last","1"),
("3813","1083","_edit_lock","1507691932:1"),
("3814","1084","_wp_attached_file","2017/10/5319_0_thuoc_tam_dao_spa_mama.jpg"),
("3815","1084","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:398;s:4:\"file\";s:41:\"2017/10/5319_0_thuoc_tam_dao_spa_mama.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-600x398.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"5319_0_thuoc_tam_dao_spa_mama-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3816","1083","_thumbnail_id","1084"),
("3817","1083","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3818","1083","_sku",""),
("3819","1083","_regular_price","235000"),
("3820","1083","_sale_price",""),
("3821","1083","_sale_price_dates_from",""),
("3822","1083","_sale_price_dates_to",""),
("3823","1083","total_sales","0"),
("3824","1083","_tax_status","taxable"),
("3825","1083","_tax_class",""),
("3826","1083","_manage_stock","no"),
("3827","1083","_backorders","no"),
("3828","1083","_sold_individually","no"),
("3829","1083","_weight",""),
("3830","1083","_length",""),
("3831","1083","_width",""),
("3832","1083","_height",""),
("3833","1083","_upsell_ids","a:0:{}"),
("3834","1083","_crosssell_ids","a:0:{}"),
("3835","1083","_purchase_note",""),
("3836","1083","_default_attributes","a:0:{}"),
("3837","1083","_virtual","no"),
("3838","1083","_downloadable","no"),
("3839","1083","_product_image_gallery","1084"),
("3840","1083","_download_limit","-1"),
("3841","1083","_download_expiry","-1"),
("3842","1083","_stock",""),
("3843","1083","_stock_status","instock"),
("3844","1083","_product_version","3.1.2"),
("3845","1083","_price","235000"),
("3846","1085","_wc_review_count","0"),
("3847","1085","_wc_rating_count","a:0:{}"),
("3848","1085","_wc_average_rating","0"),
("3849","1085","_edit_last","1"),
("3850","1085","_edit_lock","1507697095:1"),
("3851","1086","_wp_attached_file","2017/10/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1.jpg"),
("3852","1086","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:58:\"2017/10/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:58:\"dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3853","1085","_thumbnail_id","1086"),
("3854","1085","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("3855","1085","_sku",""),
("3856","1085","_regular_price","560000"),
("3857","1085","_sale_price",""),
("3858","1085","_sale_price_dates_from",""),
("3859","1085","_sale_price_dates_to",""),
("3860","1085","total_sales","0"),
("3861","1085","_tax_status","taxable"),
("3862","1085","_tax_class",""),
("3863","1085","_manage_stock","no"),
("3864","1085","_backorders","no"),
("3865","1085","_sold_individually","no"),
("3866","1085","_weight",""),
("3867","1085","_length",""),
("3868","1085","_width",""),
("3869","1085","_height",""),
("3870","1085","_upsell_ids","a:0:{}"),
("3871","1085","_crosssell_ids","a:0:{}"),
("3872","1085","_purchase_note",""),
("3873","1085","_default_attributes","a:0:{}"),
("3874","1085","_virtual","no"),
("3875","1085","_downloadable","no"),
("3876","1085","_product_image_gallery","1086"),
("3877","1085","_download_limit","-1"),
("3878","1085","_download_expiry","-1"),
("3879","1085","_stock",""),
("3880","1085","_stock_status","instock"),
("3881","1085","_product_version","3.1.2"),
("3882","1085","_price","560000"),
("3883","1090","_wp_attached_file","2017/10/icon-1.png"),
("3884","1090","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:18:\"2017/10/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3885","1093","_wp_attached_file","2017/10/icon-2.png"),
("3886","1093","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:18:\"2017/10/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3887","1096","_wp_attached_file","2017/10/icon-4.png");
INSERT INTO bz_postmeta VALUES
("3888","1096","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:18:\"2017/10/icon-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3889","1099","_wp_attached_file","2017/10/icon-6.png"),
("3890","1099","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:18:\"2017/10/icon-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3891","1105","_wp_attached_file","2017/10/icon-67.png"),
("3892","1105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:19:\"2017/10/icon-67.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3893","1107","_wp_attached_file","2017/10/icon-7.png"),
("3894","1107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:18:\"2017/10/icon-7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3895","1118","_wp_attached_file","2017/10/testimonials-bg.png"),
("3896","1118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:14;s:6:\"height\";i:212;s:4:\"file\";s:27:\"2017/10/testimonials-bg.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"testimonials-bg-14x150.png\";s:5:\"width\";i:14;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"testimonials-bg-14x180.png\";s:5:\"width\";i:14;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("3897","1118","_edit_lock","1507265288:1"),
("3902","1123","_form","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[email* your-email placeholder \"Địa chỉ email của bạn (*)\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký\"]\n    </div>\n    </div>"),
("3903","1123","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:40:\"Mẫu web Mẹ và Bé  \"[your-subject]\"\";s:6:\"sender\";s:37:\"[your-name] <wordpress@bizhostvn.com>\";s:9:\"recipient\";s:21:\"doivodesign@gmail.com\";s:4:\"body\";s:97:\"Email mới đăng ký nhận tin khuyến mại từ website:\n- Địa chỉ Email: [your-email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("3904","1123","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:60:\"Mẫu web Mẹ và Bé của Ninh Bình Web \"[your-subject]\"\";s:6:\"sender\";s:78:\"Mẫu web Mẹ và Bé của Ninh Bình Web <wordpress@mevabe.ninhbinhweb.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:154:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mẫu web Mẹ và Bé của Ninh Bình Web (https://bizhostvn.com/w/mevabe)\";s:18:\"additional_headers\";s:32:\"Reply-To: giuselethien@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("3905","1123","_messages","a:23:{s:12:\"mail_sent_ok\";s:87:\"Thư đã gửi thành công! Cám ơn bạn đã đăng ký nhận tin khuyến mại!\";s:12:\"mail_sent_ng\";s:42:\"Có lỗi xảy ra, vui lòng thử lại!\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:32:\"Địa chỉ email chưa đúng!\";s:11:\"invalid_url\";s:30:\"Địa chỉ URL chưa đúng!\";s:11:\"invalid_tel\";s:49:\"Định dạng số điện thoại chưa đúng!\";}"),
("3906","1123","_additional_settings",""),
("3907","1123","_locale","vi"),
("3916","1170","_edit_last","1"),
("3917","1170","_edit_lock","1519905073:1"),
("3949","1170","_thumbnail_id",""),
("3964","102","_thumbnail_id",""),
("3989","1266","_edit_lock","1507517794:1"),
("3990","1266","_edit_last","1"),
("3991","1266","_footer","normal"),
("3992","1266","_wp_page_template","default"),
("4003","966","_product_attributes","a:5:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4004","1085","_product_attributes","a:10:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:8;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:9;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4007","968","_product_attributes","a:5:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4008","962","_product_attributes","a:7:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4009","964","_product_attributes","a:6:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4010","974","_product_attributes","a:7:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4015","976","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4016","970","_product_attributes","a:6:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4017","972","_product_attributes","a:7:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4055","1308","_edit_last","1"),
("4056","1308","_edit_lock","1507563008:1"),
("4078","1329","_edit_last","1"),
("4079","1329","_footer","normal"),
("4080","1329","_wp_page_template","default"),
("4081","1329","_edit_lock","1507559701:1"),
("4084","1331","_edit_last","1"),
("4085","1331","_footer","normal"),
("4086","1331","_wp_page_template","default"),
("4087","1331","_edit_lock","1507559744:1"),
("4090","1334","_edit_last","1"),
("4091","1334","_footer","normal"),
("4092","1334","_wp_page_template","default"),
("4093","1334","_edit_lock","1507559780:1"),
("4140","1385","_form","<div class=\"contact-form\">\n<h3>ĐĂNG KÝ TƯ VẤN</h3>\n<p>Vui lòng nhập thông tin cá nhân của bạn vào form bên dưới. Sau tối đa 10 phút, nhân viên tư vấn sẽ điện lại cho bạn! Hoặc bạn cũng có thể gọi trực tiếp hotline: 0972.939.830</p>\n[text* text-131 placeholder \"Tên của bạn...\"]\n[email* email-712 placeholder \"Địa chỉ email của bạn...\"]\n[tel* tel-644 placeholder \"Số điện thoại của bạn...\"]\n[text text-131 placeholder \"Bạn cần tư vấn gì?\"]\n[submit \"Đăng ký\"]\n</div>"),
("4141","1385","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:50:\"[mevabe] - Có người mới đăng ký tư vấn\";s:6:\"sender\";s:37:\"[your-name] <wordpress@bizhostvn.com>\";s:9:\"recipient\";s:21:\"doivodesign@gmail.com\";s:4:\"body\";s:309:\"Có một người mới liên hệ tư vấn trên webiste: \n- Họ tên: [text-131]\n- Địa chỉ email:[email-712]\n- Số điện thoại: [tel-644]\n- Nội dung cần tư vấn: [text-131]\nXin cám ơn!\n----------------\nĐây là email tự động, vui lòng không phản hồi lại email này!\nAdmin,\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("4142","1385","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:60:\"Mẫu web Mẹ và Bé của Ninh Bình Web \"[your-subject]\"\";s:6:\"sender\";s:78:\"Mẫu web Mẹ và Bé của Ninh Bình Web <wordpress@mevabe.ninhbinhweb.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:154:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mẫu web Mẹ và Bé của Ninh Bình Web (https://bizhostvn.com/w/mevabe)\";s:18:\"additional_headers\";s:32:\"Reply-To: giuselethien@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("4143","1385","_messages","a:23:{s:12:\"mail_sent_ok\";s:62:\"Xin cám ơn! Thông tin đã được gửi đi thành công!\";s:12:\"mail_sent_ng\";s:71:\"Có lỗi xảy ra, vui lòng kiểm tra và thử lại sau ít phút!\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}"),
("4144","1385","_additional_settings",""),
("4145","1385","_locale","vi"),
("4189","1426","_wp_attached_file","2017/10/Banner_DSS_gia_re_9-10_HN_tang.png"),
("4190","1426","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:230;s:4:\"file\";s:42:\"2017/10/Banner_DSS_gia_re_9-10_HN_tang.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Banner_DSS_gia_re_9-10_HN_tang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Banner_DSS_gia_re_9-10_HN_tang-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"Banner_DSS_gia_re_9-10_HN_tang-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"Banner_DSS_gia_re_9-10_HN_tang-300x230.png\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4259","838","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:18:\"Video sản phẩm\";s:2:\"id\";s:14:\"video-san-pham\";s:7:\"content\";s:140:\"<iframe src=\"https://www.youtube.com/embed/3_ENjNkZowA\" width=\"800\" height=\"400\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4260","958","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:157:\"<center><iframe src=\"https://www.youtube.com/embed/3_ENjNkZowA\" width=\"800\" height=\"400\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></center>\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4267","1083","yikes_woo_products_tabs","a:1:{i:0;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:316:\"<ul>\n 	<li>Không sử dụng nếu xảy ra hiện tượng dị ứng, và phải đến cơ sở y tế gần nhất để khám chữa.</li>\n 	<li>Không để sản phẩm nguyên chai nơi ẩm ướt hoặc nơi có nhiệt độ cao như: ánh nắng trực tiếp, bên cạnh bếp nấu ăn!</li>\n</ul>\";}}"),
("4268","1083","_product_attributes","a:6:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4269","960","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4270","960","yikes_woo_products_tabs","a:1:{i:0;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4462:\"Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.\n<h2><strong>Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\nKhông phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.\n\nThường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản... Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.\n\nNgoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.\n<h2>Lưu ý khi chọn mua đồ chơi nhựa</h2>\nCó thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?\n\nCách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.\n\nKhông mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.\n\nCó rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.\";}}"),
("4277","958","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4304","838","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4313","846","_product_attributes","a:6:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4314","846","yikes_woo_products_tabs","a:1:{i:0;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4315","844","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4316","844","yikes_woo_products_tabs","a:1:{i:0;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4321","836","_product_attributes","a:6:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4322","836","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:0:\"\";s:2:\"id\";s:0:\"\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}i:1;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:38:\"Chèn video giới thiệu tại đây\";}}"),
("4333","834","_product_attributes","a:8:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4334","834","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:26:\"Chèn video tại đây!!!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4518:\"<ul>\n 	<li>\n<p style=\"color: #0a0a0a;\"></p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\n</li>\n</ul>\";}}"),
("4335","816","_product_attributes","a:6:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4336","816","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:35:\"Chèn video của bạn vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4341","976","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:4819:\"<p style=\"color: #0a0a0a;\">Trong các vật liệu sản xuất đồ chơi thì nhựa là vật liệu phổ biến được các nhà sản xuất ưa dùng nhất. Tuy nhiên, chất liệu này cũng không hẳn là an toàn cho bé. Cha mẹ cũng nên thận trọng lựa chọn những món đồ chơi bằng nhựa bảo đảm chất lượng.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\"><strong style=\"font-weight: bolder;\">Tại sao phải cẩn thận với đồ chơi bằng nhựa?</strong></h2>\n<p style=\"color: #0a0a0a;\">Không phải chỉ với đồ chơi bằng nhựa bạn mới cần cẩn trọng mà với tất cả các món đồ chơi cho bé bạn cũng nên lưu ý đến vấn đề an toàn và chọn lựa đồ chơi phù hợp với lứa tuổi của bé. Tuy nhiên do phần lớn các món đồ chơi thường được sản xuất bằng nhựa nên trong khuôn khổ bài viết này chúng tôi xin được đề cập đến nguy cơ từ đồ chơi sản xuất từ nhựa không an toàn.</p>\n<p style=\"color: #0a0a0a;\">Thường để giảm giá thành, các nhà sản xuất có thể sử dụng các loại nhựa tái sinh, nhựa phế thải từ nhiều nguồn khác nhau và thậm chí thu gom cả những loại nhựa có trộn lẫn với các chất thải hữu cơ để sản xuất đồ chơi. Việc sử dụng các loại nhựa không bảo đảm chất lượng như nhựa tái chế PVC khi qua xử lý nhiệt có thể thải ra khí clo, là một chất oxy hóa có độc tính cao hoặc thành phần nhựa có chứa lượng phthalates cao sẽ gây ra các nguy cơ về rối loạn nội tiết tố, nguy cơ dậy thì sớm, bệnh tiểu đường, ảnh hưởng đến khả năng sinh sản… Đây chỉ là 2 ví dụ về ảnh hưởng của các loại hoá chất thường dùng có trong nhựa gây hại đến sức khoẻ của bé còn trong thực tế, các loại hoá chất trong đồ chơi có thể gây hại là rất nhiều.</p>\n<p style=\"color: #0a0a0a;\">Ngoài ra để làm cho các món đồ chơi ấn tượng, màu sắc thật bắt mắt hoặc làm cho món đồ chơi bền, dẻo hay rắn chắc, các nhà sản xuất còn bổ sung thêm một số chất như muối kẽm, muối catmi, muối đồng, hoặc sử dụng thuỷ ngân, chì và các sơn màu giá rẻ không đảm bảo chất lượng. Những loại hoá chất này nếu không được kiểm định phân loại thành phần và hàm lượng an toàn thì một số chất phụ liệu hoàn toàn có khả năng gây hại cho bé (ví dụ chất hoá dẻo DBP (Dibutyl Phthalate) hay DOC (Dioctyl Phthalate) có khả năng gây ung thư nếu tiếp xúc trực tiếp lâu dài. Những chất như chì, thuỷ ngân có thể thẩm thấu và hấp thu bởi cơ thể của trẻ qua đường hô hấp, đường tiêu hóa và ngấm qua da trong quá trình chơi, tiếp xúc với các loại đồ chơi này.</p>\n\n<h2 style=\"font-weight: bold; color: #0a0a0a;\">Lưu ý khi chọn mua đồ chơi nhựa</h2>\n<p style=\"color: #0a0a0a;\">Có thể các bậc cha mẹ biết về những nguy hại do đồ chơi bằng nhựa không an toàn mang lại, nhưng vấn đề là rất khó để phân loại, kiểm định những loại đồ chơi cho bé được bày bán tràn lan trên thị thường như hiện nay. Vì vậy, câu hỏi đặt ra là làm cách nào để chọn mua đồ chơi nhựa an toàn cho bé?</p>\n<p style=\"color: #0a0a0a;\">Cách tốt nhất là chọn đồ chơi từ các nhà sản xuất đồ chơi có uy tín, có nguồn gốc rõ ràng. Ưu tiên những đồ chơi mà các nhà sản xuất công bố được những giấy chứng nhận của các cơ quan chứng minh được nguyên liệu và quá trình sản xuất, sản phẩm an toàn với trẻ nhỏ. Tuyệt đối không vì rẻ hay vì kiểu dáng màu sắc ấn tượng mà chọn mua đồ chơi trôi nổi không rõ nguồn gốc, hãy đặt an toàn sức khoẻ cho bé lên hàng đầu.</p>\n<p style=\"color: #0a0a0a;\">Không mua các loại đồ chơi bằng nhựa có kích thước quá nhỏ, có thể tháo lắp vì bé có thể nuốt chúng trong quá trình chơi. Ngoài ra các đồ chơi có góc cạnh nhọn cũng cần loại ra khỏi danh sách đồ chơi của bé.</p>\n<p style=\"color: #0a0a0a;\">Có rất nhiều loại nhựa có thể nhận định chủ quan ngay khi cầm lên tay như có mùi khét nặng, giòn, dễ gãy, nhiều tạp chất nổi hẳn trên bề mặt. Các bậc cha mẹ cũng nên lưu ý các chi tiết này khi chọn đồ chơi cho con.</p>\";}}"),
("4346","974","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:51:\"Chèn video giới thiệu sản phẩm vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:3234:\"Mùa hè nóng bức, cơ thể đổ nhiều mồ hôi để tỏa nhiệt nên rất nhanh bị khát. Đối với trẻ nhỏ, nếu thiếu nước dễ gây ra các rối loạn nguy hiểm cho sức khỏe và tính mạng. Vấn đề khiến các bậc cha mẹ băn khoăn là nên cho con uống nước gì để vừa giải khát cho trẻ, vừa ngon mát bổ, giúp trẻ luôn khỏe mạnh, hay ăn chóng lớn? Bài viết dưới đây sẽ mách bạn cách chọn nước uống tốt cho trẻ nhỏ trong mùa nóng.\n\n<span style=\"font-weight: bold;\">Lượng nước thích hợp cho trẻ</span>\n\nMuốn cho trẻ uống nước đúng, bạn cần cho trẻ uống số lượng nước mỗi ngày theo lứa tuổi của trẻ. Trẻ dưới 6 tháng tuổi: nếu bạn nuôi con bằng sữa mẹ hoàn toàn hoặc cho trẻ ăn sữa công thức pha đúng theo hướng dẫn trên nhãn hộp sữa thì không cần cho trẻ uống nước. Các trường hợp: trẻ ra nhiều mồ hôi trong những ngày nóng bức, trẻ bị còi xương bị táo bón thì nên cho trẻ uống thêm từ 100-200ml/ngày.\n\nTrẻ 6-12 tháng tuổi cần cho uống số lượng nước là 100ml/kg/ngày, kể cả sữa, nước canh, nước rau, nước trái cây... Chẳng hạn, trẻ nặng 8kg cần cho uống 800ml nước, nếu trẻ đã uống được 600ml sữa rồi thì cần cho uống 200ml nước/ngày gồm nước đun sôi để nguội, nước canh, nước rau luộc, nước ép trái cây…\n\nTrẻ trên một tuổi, nặng 10kg cần uống 1 lít nước mỗi ngày với các loại nước uống như trên. Trẻ nặng trên 10kg thì cứ mỗi kg cân nặng bạn cần cho uống thêm 50ml/ngày. Chẳng hạn, trẻ nặng 15kg thì lượng nước uống mỗi ngày là: 1.000ml + (5kg x 50ml) = 1.250ml. Trẻ từ 30kg trở lên thì uống bằng người lớn (2-2,5 lít/ngày).\n<h2>Chọn nước ngon mát bổ cho trẻ uống</h2>\nCó nhiều loại nước uống có thể dùng hằng ngày cho trẻ: nước máy đun sôi để nguội, nước đóng chai, sữa, nước ép trái cây, nước ép rau củ, nước canh, nước rau… Việc lựa chọn nước uống cho trẻ hằng ngày nên theo cơ cấu: 60% nước uống thông thường, 20% sữa các loại và 20% nước trái cây tươi.\n<h2>Cách uống nước đúng</h2>\nKhi cho trẻ uống nước nên chia làm nhiều lần uống trong ngày chứ không nên uống một lần quá nhiều nước. Trường hợp trẻ khát cũng không nên cho uống quá nhiều một lúc mà cách uống tốt nhất là nên uống từ từ từng ngụm nhỏ để cho nước có thời gian thấm qua thành ruột vào máu làm nhanh hết khát. Bạn cũng không nên cho trẻ uống nước quá lạnh vì ở trạng thái lạnh, các phân tử nước tích hợp lại với nhau khó thấm qua ruột, nên dù trẻ có uống nước vẫn không hết khát do không hấp thu được nước quá lạnh. Tốt nhất, bạn chỉ nên cho trẻ uống nước nguội hoặc hơi lạnh khoảng 15-20oC.\";}}"),
("4347","972","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:38:\"Chèn video giới thiệu vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:1696:\"<p style=\"color: #4b4b4b;\">Thời gian cho trẻ ăn sữa chua tốt nhất là sau bữa ăn vì các vi khuẩn có lợi trong sữa chua phát triển ở điều kiện nồng độ pH lớn hơn hoặc bằng 4,5. Khi đói, độ pH trong dạ dày chỉ bằng 2, còn sau khi ăn, dạ dày co bóp mạnh nên độ pH có thể tăng lên 3-5, tạo điều kiện lý tưởng cho lợi khuẩn hoạt động.</p>\n<p style=\"color: #4b4b4b;\">Cần cho trẻ súc miệng ngay sau khi ăn vì các vi khuẩn có lợi có thể làm hại men răng của trẻ.</p>\n<p style=\"color: #4b4b4b;\">Không dùng sữa chua chung với các loại thuốc khác do trong thuốc có chất kháng sinh hoặc amin lưu huỳnh có thể tiêu diệt lợi khuẩn trong sữa chua.</p>\n<p style=\"color: #4b4b4b;\">Không đun nóng sữa chua hay cho trẻ ăn sữa chua quá lạnh vì  khi đó lượng dinh dưỡng trong sữa chua sẽ bị giảm đi đáng kể.</p>\n<p style=\"color: #4b4b4b;\">Bên cạnh sữa chua là loại thực phẩm giúp tăng cường sức đề kháng, kích thích tiêu hóa, cung cấp canxi cho bé, các bà mẹ có thể lựa chọn một sản phẩm dinh dưỡng dành riêng cho trẻ nhỏ để bảo đảm lượng dưỡng chất tốt nhất cho con. Được thiết kế đặc biệt là cung cấp canxi nano có khả năng vượt qua hàng rào máu não tốt, Siro Kanguru không chỉ cung cấp cho bé lượng canxi dồi dào mà còn cải thiện giấc ngủ, giúp bé phát triển chiều cao, tăng khả năng hấp thụ dưỡng chất và đặc biệt an toàn cho hệ tiêu hóa của trẻ nhỏ.</p>\";}}"),
("4348","970","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:51:\"Chèn video giới thiệu sản phẩm vào đây@\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:942:\"<span style=\"color: #697335;\">Để có được chi phí tối ưu, mẹ không đừng quên quan tâm tới những hướng dẫn sử dụng của nhà sản xuất. Thực tế có những sản phẩm giá thấp hơn, nhưng khi sử dụng lại rất tốn, ngược lại một số loại nước rửa bình sữa có giá cao hơn nhưng lại được sản xuất dưới dạng đậm đặc, nên rất tiết kiệm.</span><br style=\"color: #697335;\" /><br style=\"color: #697335;\" /><span style=\"color: #697335;\">Ngoài ra, cách bảo quản cũng là yếu tố quan trọng để mẹ duy trì chất lượng và hiệu quả làm sạch của sản phẩm. Đặc biệt là đối với những loại nước rửa bình sữa có thành phần từ thiên nhiên, dễ dàng bị phân hủy dưới tác động của các điều kiện không phù hợp như nhiệt độ cao, ánh nắng mặt trời…</span>\";}}"),
("4349","968","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:2435:\"<p style=\"color: #555555;\">Bạn nên đọc đầy đủ thành phần ghi trên bao bì chứ không nên dừng lại khi thấy chữ lúa mì hay ngũ cốc nguyên hạt. Tốt nhất, bạn nên tìm những loại có ghi 100% ngũ cốc hay 100% lúa mì. Nếu loại bánh mì có ghi 100% lúa mì thì nguyên liệu đầu tiên phải ghi là lúa mì. Bạn thường tìm đến loại bánh mì hoàn toàn từ ngũ cốc bởi vì chúng ít béo và không chứa <a style=\"color: #3389f0;\" href=\"https://hellobacsi.com/song-khoe/meo-hay-de-kiem-soat-cholesterol-trong-co-the/\">cholesterol</a>, trong một khẩu phần bánh mì có 10 -15% protein và chứa chất xơ lành mạnh, chất kháng tinh bột, khoáng, vitamin, chất chống oxy hóa và nhiều chất khác. Với thành phần như trên, không có gì lạ khi ngũ cốc nguyên hạt có thể cung cấp cho cơ thể nhiều lợi ích như phòng tránh bệnh tim, đột quỵ, tiểu đường, béo phì, và một số bệnh ung thư.</p>\n\n<h3 style=\"font-weight: 600; color: black;\">Xem xét lượng muối</h3>\n<p style=\"color: #555555;\">Bạn hãy chú ý đến lượng muối trong bánh mì. Các nhà sản xuất thường thêm muối vào bánh mì để kiểm soát hoạt động của men và tăng hương vị. Nếu bạn ăn 3 lát bánh mì ngũ cốc một ngày thì bạn đã nạp đến 600 mgmuối trong ngày. Chỉ số này nghe tuy không cao nhưng nó chiếm tới 1/3 lượng muối giới hạn mỗi ngày.</p>\n\n<h3 style=\"font-weight: 600; color: black;\">Chú ý đến khối lượng</h3>\n<p style=\"color: #555555;\">Khi so sánh các sản phẩm bánh mì, bạn nên nhìn kĩ khối lượng ghi trên bao bì. Một vài lát bánh mì có thể to hơn những loại còn lại.</p>\n\n<h3 style=\"font-weight: 600; color: black;\">Bánh mì lạt không phải lúc nào cũng tốt</h3>\n<p style=\"color: #555555;\">Có nhiều hãng bánh mì quảng cáo rằng sản phẩm của họ chứa ít calo và thường dùng từ “bánh mì lạt” trên nhãn hoặc bao bì. Thông thường, những loại bánh mì này chỉ là loại có kích thước nhỏ và được bổ sung thêm chất xơ.</p>\n<p style=\"color: #555555;\">Hi vọng rằng  những thông tin trên có thể giúp bạn lựa chọn được bánh mì tốt cho sức khỏe nhé.</p>\";}}"),
("4350","966","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:39:\"Chèn video giới thiệu tại đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:800:\"<p style=\"color: #000000;\">Khi đi mua sữa, mẹ hãy để ý tới hạn sử dụng của sữa được in trên từng vỏ hộp. Lưu ý: kiểm tra kỹ xem hạn sử dụng có bị mờ hay có dấu hiệu bong, xóa, sửa không? Nếu mẹ thấy có dấu hiệu bất thường về hạn sử dụng thì mẹ không nên mua đâu nhé để tránh mua phải những loại sữa cận date hoặc hết hạn sử dụng vì sẽ ảnh hưởng xấu tới sức khỏe của bé.</p>\n<p style=\"color: #000000;\">Thông thường phải mất ít nhất 2 tuần mẹ mới có thể biết được bé có hợp loại sữa đó hay không. Nếu thấy bé có dấu hiệu nôn trớ, tiêu chảy, nổi mẩn,…mẹ cần phải đổi sữa bột cho bé ngay nhé</p>\";}}"),
("4351","964","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:33:\"Video giới thiệu sản phẩm\";s:2:\"id\";s:25:\"video-gioi-thieu-san-pham\";s:7:\"content\";s:24:\"Chèn video tại đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:935:\"<span style=\"color: #252525;\">Bạn nên đọc đầy đủ thành phần ghi trên bao bì chứ không nên dừng lại khi thấy chữ lúa mì hay ngũ cốc nguyên hạt. Tốt nhất, bạn nên tìm những loại có ghi 100% ngũ cốc hay 100% lúa mì. Nếu loại bánh mì có ghi 100% lúa mì thì nguyên liệu đầu tiên phải ghi là lúa mì. Bạn thường tìm đến loại bánh mì hoàn toàn từ ngũ cốc bởi vì chúng ít béo và không chứa cholesterol, trong một khẩu phần bánh mì có 10 -15% protein và chứa chất xơ lành mạnh, chất kháng tinh bột, khoáng, vitamin, chất chống oxy hóa và nhiều chất khác. Với thành phần như trên, không có gì lạ khi ngũ cốc nguyên hạt có thể cung cấp cho cơ thể nhiều lợi ích như phòng tránh bệnh tim, đột quỵ, tiểu đường, béo phì, và một số bệnh ung thư.</span>\";}}"),
("4352","962","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:998:\"<p style=\"color: #7d705d;\">Hiện nay, trên thị trường có rất nhiều loại bánh ăn dặm cho bé, mẹ có thể lựa chọn cho bé từ “’Thượng vàng cho đến hạ cám”. Tuy nhiên không phải bánh đắt tiền nào cũng phù hợp cho bé, trong khi đó những loại rẻ tiền vẫn đảm bảo đủ chất lượng và dinh dưỡng. Đối với thực tế, bánh ăn dặm cho em bé không bổ dưỡng, vì chúng cũng chỉ là loại thức ăn nhanh cho bé ăn dặm, khi nguyên liệu đã đưuọc sấy khô hết thì các chất dinh dưỡng cũng bốc hơi.</p>\n<p style=\"color: #7d705d;\">Một mẹo nhỏ mà các bà mẹ nên áp dụng khi ít thời gian chế biến đồ ăn dặm cho con là dùng <em>bánh dăn dặm cho trẻ nhỏ</em> thay thế với cách ngâm bánh trong nước và quậy đều cho tan và sệt ra. Rồi cho bé ăn, nến bé không thích thì nên dừng lại không nên ép bé ăn.</p>\";}}"),
("4353","1085","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:39:\"Chèn video giới thiệu tại đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:1286:\"<p style=\"color: #222222;\">– Không dùng các sản phẩm có tính sát khuẩn cao vì có thể sẽ giết chết các vi khuẩn tốt trong môi trường âm đạo, làm mất cân bằng PH vùng kín, khiến vi khuẩn có hại phát triển mạnh và gây ra mùi. Nên lựa chọn các sản phẩm vệ sinh phụ nữ có PH=4-6, có khả năng diệt khuẩn nhẹ dịu, khử mùi hôi hiệu quả.</p>\n<p style=\"color: #222222;\">– Không nên dùng các sản phẩm có mùi thơm quá mức bởi các sản phẩm này thường chứa nhiều hóa chất độc hại như benzen, este… nên sẽ làm tăng khả năng sinh sôi vi khuẩn một cách nhanh chóng, gây hăm da, kích ứng da và mẩn đỏ…</p>\n<p style=\"color: #222222;\">– Chỉ nên dùng dung dịch vệ sinh phụ nữ mỗi ngày 1 lần và chỉ dùng để rửa bên ngoài, rửa lại bằng nước sạch.</p>\n<p style=\"color: #222222;\">– Khi sử dụng không được thụt rửa sâu vào âm đạo.</p>\n<p style=\"color: #222222;\">Chị em cần tuân thủ đúng các <strong style=\"font-weight: bold;\">lưu ý khi sử dụng dung dịch vệ sinh phụ nữ</strong> kể trên để phòng ngừa các bệnh viêm nhiễm phụ khoa nhé.</p>\";}}"),
("4354","1081","_product_attributes","a:7:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4355","1081","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:3112:\"<h2 id=\"chọn-các-loại-túi-trữ-sữa-không-chứa-bpa\" class=\"wss-anchor\" style=\"font-weight: 500;\">Chọn các loại túi trữ sữa không chứa BPA</h2>\nTúi trữ sữa cho bé là vật dụng tiếp xúc trực tiếp với sữa - nguồn dinh dưỡng chính của con trong năm đầu đời vì thế việc lựa chọn túi trữ sữa được làm từ chất liệu an toàn là vô cùng quan trọng. Túi trữ sữa an toàn là sản phẩm tuyệt đối không chứa BPA - chất gây ra sự phát triển bất thường cho não bộ và hệ sinh dục của trẻ. Khi chọn túi trữ sữa các mẹ cần đọc xem túi được làm từ chất liệu gì, nên chọn loại túi trữ sữa có kí hiệu BPA free.\n<h2 id=\"chọn-túi-trữ-sữa-có-khóa-zip-chống-tràn\" style=\"font-weight: 500;\"><span class=\"text-bold\">Chọn túi trữ sữa có khóa zip chống tràn</span></h2>\nTúi trữ sữa an toàn cầncó thiết kế thông minh với khóa chống tràn tránh rò rỉ sữa và có thể đứng vững khi bảo quản trong tủ lạnh. Ngoài ra, nếu cẩn thận các mẹ nên chọn những túi trữ sữa có nhiều hơn 1 khóa zip để tránh trường hợp sữa bị tràn ra ngoài. Đồng thời, các mẹ cũng nên chú ý xem nhựa của túi trữ sữa có dày dặn không vì những túi trữ sữa mỏng manh có thể dễ bị thủng, nứt không đảm bảo an toàn vệ sinh khi lưu trữ sữa cho bé.\n<h2 id=\"chọn-túi-trữ-sữa-có-dung-tích-phù-hợp\" style=\"font-weight: 500;\"><span class=\"text-bold\">Chọn túi trữ sữa có dung tích phù hợp</span></h2>\nTrên thị trường hiện nay có nhiều loại túi trữ sữa mẹ với các dung tích khác nhau như: 150, 250, 280ml,... Các mẹ nên căn cứ vào lượng sữa mình hút được mỗi lần để chọn loại túi trữ sữa phù hợp. Nếu mua túi trữ sữa có dung tích nhỏ hơn lượng sữa hút ra thì sẽ không thể đựng hết sữa nhưng nếu mẹ mua túi trữ sữa có dung tích quá lớn thì lại gây lãng phí. Hơn nữa, các mẹ cần nhớ nguyên tắc lượng sữa chứa trong túi cần cách miệng túi khoảng 2cm để đảm bảo an toàn, không gây tràn sữa ra ngoài để chọn túi trữ sữa thích hợp với mình.\n<h2 id=\"chọn-túi-trữ-sữa-của-các-thương-hiệu-uy-tín\" style=\"font-weight: 500;\"><span class=\"text-bold\">Chọn túi trữ sữa của các thương hiệu uy tín</span></h2>\nTúi trữ sữa của con là sản phẩm mà các mẹ không nên tiếc tiền, ham rẻ mà mua những sản phẩm trôi nổi, không rõ nguồn gốc, xuất xứ, chất lượng vì có thể gây ảnh hưởng xấu đến hệ tiêu hóa và sức khỏe của bé. Để an tâm về chất lượng sản phẩm, các mẹ nên mua túi trữ sữa của các thương hiệu uy tínvà mua tại các siêu thị lớn để đảm bảo không mua phải hàng giả, hàng kém chất lượng.\";}}"),
("4356","1079","_product_attributes","a:7:{s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_mui-vi\";a:6:{s:4:\"name\";s:9:\"pa_mui-vi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4357","1079","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:38:\"Video giới thiệu chèn vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:1198:\"<p style=\"color: #606060 !important;\"><span style=\"color: #414141;\">Một làn da trắng sáng, mịn màng là niềm ao ước của rất nhiều phụ nữ Á Đông. Chính vì vậy, dưỡng trắng là một bước không thể thiếu trong toàn bộ tiến trình chăm sóc và làm đẹp da của chị em. Việc sử dụng các loại mỹ phẩm dưỡng trắng, viên uống làm […]</span></p>\n<p style=\"color: #606060 !important;\">Một làn da trắng sáng, mịn màng là niềm ao ước của rất nhiều phụ nữ Á Đông. Chính vì vậy, dưỡng trắng là một bước không thể thiếu trong toàn bộ tiến trình chăm sóc và <strong style=\"font-weight: bold;\">làm đẹp da</strong> của chị em. Việc sử dụng các loại mỹ phẩm dưỡng trắng, <strong style=\"font-weight: bold;\">viên uống làm trắng da</strong> là điều hiển nhiên, tuy vậy, khi lựa chọn sản phẩm phù hợp thì chị em đa phần sẽ quan tâm đến công dụng mà ít chú ý về mặt thành phần, chính vì vậy trên thực tế đã có những trường hợp dị ứng khiến làn da bị tàn phá nặng nề.</p>\";}}"),
("4358","1077","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4359","1077","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:1848:\"<span style=\"font-weight: 300; color: #000000;\">- Nếu bạn thường xuyên đi du lịch hoặc đưa bé đi nhiều nơi, thì một chiếc xe siêu nhe, gấp mở được gọn gàng là thực sự cần thiết. Hãy lưu tâm tới kích thước cốp xe và kích thước xe đẩy khi gập gọn để chắc chắn rằng bạn có thể mang nó đi một cách thuận tiện nhất. Với mục đích tối giản trọng lượng thì dòng xe đẩy của Nhật với thiết kế khung nhôm được đánh gia khá cao. Một số loại xe nên mua khi bé đi du lịch như : </span>xe đẩy seebaby<span style=\"font-weight: 300; color: #000000;\"> QQ2, </span>Xe đẩySeebaby QQ1<span style=\"font-weight: 300; color: #000000;\">...</span><br style=\"font-weight: 300; color: #000000;\" /><span style=\"font-weight: 300; color: #000000;\">- Hãy cân nhắc về diện tích cũng như không gian trong nhà ở của bạn trước khi mua một chiếc xe đẩy cho bé. Bạn cần chắc chắn rằng bạn có thể nhấc xe qua cửa trước và lên xuống cầu thang cũng như không gian cất giữ khi không dùng tới.</span><br style=\"font-weight: 300; color: #000000;\" /><span style=\"font-weight: 300; color: #000000;\">- Nếu bạn hay dạo bộ để mua sắm, bạn cần một chiếc xe đẩy trẻ em có giỏ đựng hàng rộng ở bên dưới ghế ngồi của bé. Tránh việc treo đồ phía sau xe đẩy vì tr ọng lượng đồ có thể khiến xe bị lật điều này cực kỳ nguy hiểm cho bé</span><br style=\"font-weight: 300; color: #000000;\" /><span style=\"font-weight: 300; color: #000000;\">- Nếu bạn sinh đôi hoặc sinh thêm một bé mà bé đầu vẫn còn quá bé thì xe đẩy đôi là giải pháp hữu ích và tiết kiệm.</span>\";}}"),
("4360","1075","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_dung-tich\";a:6:{s:4:\"name\";s:12:\"pa_dung-tich\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4361","1075","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:38:\"Chèn video giới thiệu vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:3009:\"<h2 style=\"font-weight: 400; color: #444444;\">1: Tìm hiểu thông tin về sản phẩm:</h2>\n<p style=\"color: #5f6569;\">Hiện nay trên thị trường các dòng về <em><strong style=\"font-weight: bold;\">máy hút sữa</strong></em> đang chia thành 2 loại là <strong style=\"font-weight: bold;\">Maý hút sữa bằng tay</strong> và <strong style=\"font-weight: bold;\">máy hút sữa sử dụng điện</strong>. Giá thành và hiệu quả sử dụng của mổi loại đều khác nhau nên các mẹ cần được tư vấn kỹ để chọn lựa sản phẩm phù hợp.</p>\n\n<h2 style=\"font-weight: 400; color: #444444;\">2: Quan tâm đến xuất xứ, thương hiệu</h2>\n<p style=\"color: #5f6569;\">Trên thị trường các sản phẩm mẹ và bé đặc biệt là các sản phẩm về máy hút sữa rất rất nhiều mẫu mã, kích thước khác nhau tuy nhiên không phải sản phẩm nào cũng có chất lượng tốt và an toàn tuyệt đối cho mẹ và bé. Trước khi mua sản phẩm các mẹ phải hết sức lưu ý về nguồn gốc sản phẩm, chế độ bảo hành, bảo trì, đơn vị nhà phân phối tuyệt đối không mua hàng giá rẻ, hàng trôi nổi không nhãn mác và các thương hiệu lạ chưa được sự tin dùng của khách hàng.</p>\n\n<h2 style=\"font-weight: 400; color: #444444;\">3: Tìm hiểu về tính năng sử dụng</h2>\n<p style=\"color: #5f6569;\">Hầu hết các dòng <em>máy hút sữa</em> đều có công thức sử dụng như nhau tuy nhiên tuỳ theo hãng và sản phẩm có cách sử dụng khác nhau như máy hút sữa một bên và máy hút sữa 2 bên. Đối với các mẹ làm công sở, ít có thời gian rảnh, mà lượng sữa dồi dào chúng tôi khuyên nên sử dụng dòng máy hút sữa bằng điện hút 2 bên để tiết kiệm thời gian và mang lại hiệu quả cao nhất.</p>\n\n<h2 style=\"font-weight: 400; color: #444444;\">4: Vấn đề về giá cả</h2>\n<p style=\"color: #5f6569;\">Ở mổi dòng sản phẩm có giá thành khác nhau thậm chí cùng một sản phẩm mà mổi shop mổi khu vực cũng có giá thành chênh lệch nhau khá lớn vì thế trước khi chọn mua sản phẩm các mẹ cần bỏ chút thời gian tìm hiểu kỹ về giá cả của sản phẩm mình định mua để tránh tình trạng mua hàng bị giá cao chênh lệch với giá thị trường.</p>\n\n<h2 style=\"font-weight: 400; color: #444444;\">5: Một số vấn đề khác</h2>\n<p style=\"color: #5f6569;\">Mua hàng online hiện nay đang là xu hướng của thời đại tuy nhiên các mẹ cũng hết sức lưu ý khi <em><strong style=\"font-weight: bold;\">mua máy hút sữa</strong></em> qua mạng như: Chế độ giao hàng như thế nào ? Bảo hành, bảo trì ra sao ? sản phẩm được giao trong thời gian bao lâu và những qui định về thanh toán..v..v</p>\";}}"),
("4362","1073","_product_attributes","a:7:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4363","1073","yikes_woo_products_tabs","a:2:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video vào đây!\";}i:1;a:3:{s:5:\"title\";s:21:\"Lưu ý cần thiết\";s:2:\"id\";s:15:\"luu-y-can-thiet\";s:7:\"content\";s:0:\"\";}}"),
("4364","1071","_product_attributes","a:8:{s:12:\"pa_chat-lieu\";a:6:{s:4:\"name\";s:12:\"pa_chat-lieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_do-tuoi\";a:6:{s:4:\"name\";s:10:\"pa_do-tuoi\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:12:\"pa_gioi-tinh\";a:6:{s:4:\"name\";s:12:\"pa_gioi-tinh\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_khoi-luong\";a:6:{s:4:\"name\";s:13:\"pa_khoi-luong\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:14:\"pa_thuong-hieu\";a:6:{s:4:\"name\";s:14:\"pa_thuong-hieu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_xuat-xu\";a:6:{s:4:\"name\";s:10:\"pa_xuat-xu\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}"),
("4365","1071","yikes_woo_products_tabs","a:1:{i:0;a:3:{s:5:\"title\";s:20:\"Video giới thiệu\";s:2:\"id\";s:16:\"video-gioi-thieu\";s:7:\"content\";s:23:\"Chèn video tại đây\";}}"),
("4370","1561","_edit_last","1"),
("4371","1561","_edit_lock","1507703526:1"),
("4372","1562","_wp_attached_file","2017/10/may-hut-sua-philip-avents-1-copy.jpg"),
("4373","1562","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:44:\"2017/10/may-hut-sua-philip-avents-1-copy.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"may-hut-sua-philip-avents-1-copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"may-hut-sua-philip-avents-1-copy-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"may-hut-sua-philip-avents-1-copy-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"may-hut-sua-philip-avents-1-copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"may-hut-sua-philip-avents-1-copy-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("4374","1561","_thumbnail_id","1562"),
("4381","1566","_menu_item_type","taxonomy");
INSERT INTO bz_postmeta VALUES
("4382","1566","_menu_item_menu_item_parent","0"),
("4383","1566","_menu_item_object_id","1"),
("4384","1566","_menu_item_object","category"),
("4385","1566","_menu_item_target",""),
("4386","1566","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4387","1566","_menu_item_xfn",""),
("4388","1566","_menu_item_url",""),
("4394","1570","_wp_attached_file","2017/10/san-hang-gia-re.png"),
("4395","1570","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2017/10/san-hang-gia-re.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"san-hang-gia-re-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"san-hang-gia-re-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4396","1","_edit_lock","1507704233:1"),
("4397","1572","_wp_attached_file","2017/10/14.jpg"),
("4398","1572","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:340;s:4:\"file\";s:14:\"2017/10/14.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"14-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4399","1","_edit_last","1"),
("4400","1","_thumbnail_id","1572"),
("4407","1577","_wp_attached_file","2017/10/300x250-01.png"),
("4408","1577","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:22:\"2017/10/300x250-01.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"300x250-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"300x250-01-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"300x250-01-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"300x250-01-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4409","1578","_edit_last","1"),
("4410","1578","_edit_lock","1507704531:1"),
("4411","1579","_wp_attached_file","2017/10/1400299283-cahm-soc-be.jpg"),
("4412","1579","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:34:\"2017/10/1400299283-cahm-soc-be.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"1400299283-cahm-soc-be-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"1400299283-cahm-soc-be-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"1400299283-cahm-soc-be-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"1400299283-cahm-soc-be-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"© Corbis.  All Rights Reserved.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4413","1578","_thumbnail_id","1579"),
("4416","1581","_edit_last","1"),
("4417","1581","_edit_lock","1507704644:1"),
("4418","1582","_wp_attached_file","2017/10/mua-may-xay-cam-tay-braun-o-dau-re-1.jpg"),
("4419","1582","_wp_attachment_metadata","a:5:{s:5:\"width\";i:959;s:6:\"height\";i:694;s:4:\"file\";s:48:\"2017/10/mua-may-xay-cam-tay-braun-o-dau-re-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-768x556.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:556;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"mua-may-xay-cam-tay-braun-o-dau-re-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4420","1581","_thumbnail_id","1582"),
("4423","1584","_edit_last","1"),
("4424","1584","_edit_lock","1507704701:1"),
("4425","1585","_wp_attached_file","2017/10/nga1483779318_3947.png"),
("4426","1585","_wp_attachment_metadata","a:5:{s:5:\"width\";i:626;s:6:\"height\";i:492;s:4:\"file\";s:30:\"2017/10/nga1483779318_3947.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"nga1483779318_3947-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"nga1483779318_3947-300x236.png\";s:5:\"width\";i:300;s:6:\"height\";i:236;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"nga1483779318_3947-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"nga1483779318_3947-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"nga1483779318_3947-600x492.png\";s:5:\"width\";i:600;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4427","1584","_thumbnail_id","1585"),
("4430","1588","_edit_last","1"),
("4431","1588","_edit_lock","1507704787:1"),
("4432","1589","_wp_attached_file","2017/10/bococtaycaigiua_zps9234cb21-768x512.jpg"),
("4433","1589","_wp_attachment_metadata","a:5:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:47:\"2017/10/bococtaycaigiua_zps9234cb21-768x512.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"bococtaycaigiua_zps9234cb21-768x512-600x512.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4434","1588","_thumbnail_id","1589"),
("4449","1601","_edit_last","1"),
("4450","1601","_edit_lock","1507705701:1"),
("4452","1604","_edit_last","1"),
("4453","1604","_sidebar_to_replace","sidebar-main"),
("4454","1604","_edit_lock","1507705600:1"),
("4455","1605","_menu_item_type","custom"),
("4456","1605","_menu_item_menu_item_parent","0"),
("4457","1605","_menu_item_object_id","1605"),
("4458","1605","_menu_item_object","custom"),
("4459","1605","_menu_item_target",""),
("4460","1605","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4461","1605","_menu_item_xfn",""),
("4462","1605","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/"),
("4464","1606","_menu_item_type","custom"),
("4465","1606","_menu_item_menu_item_parent","0"),
("4466","1606","_menu_item_object_id","1606"),
("4467","1606","_menu_item_object","custom"),
("4468","1606","_menu_item_target",""),
("4469","1606","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4470","1606","_menu_item_xfn",""),
("4471","1606","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/"),
("4473","1607","_menu_item_type","custom"),
("4474","1607","_menu_item_menu_item_parent","0"),
("4475","1607","_menu_item_object_id","1607"),
("4476","1607","_menu_item_object","custom"),
("4477","1607","_menu_item_target",""),
("4478","1607","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4479","1607","_menu_item_xfn",""),
("4480","1607","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-ngu-ngon/"),
("4482","1608","_menu_item_type","custom"),
("4483","1608","_menu_item_menu_item_parent","0"),
("4484","1608","_menu_item_object_id","1608"),
("4485","1608","_menu_item_object","custom"),
("4486","1608","_menu_item_target",""),
("4487","1608","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4488","1608","_menu_item_xfn",""),
("4489","1608","_menu_item_url","https://bizhostvn.com/w/mevabe/#"),
("4491","1609","_menu_item_type","custom"),
("4492","1609","_menu_item_menu_item_parent","0"),
("4493","1609","_menu_item_object_id","1609"),
("4494","1609","_menu_item_object","custom"),
("4495","1609","_menu_item_target",""),
("4496","1609","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4497","1609","_menu_item_xfn",""),
("4498","1609","_menu_item_url","https://bizhostvn.com/w/mevabe/#"),
("4500","1610","_menu_item_type","custom"),
("4501","1610","_menu_item_menu_item_parent","0"),
("4502","1610","_menu_item_object_id","1610"),
("4503","1610","_menu_item_object","custom"),
("4504","1610","_menu_item_target",""),
("4505","1610","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4506","1610","_menu_item_xfn",""),
("4507","1610","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/be-hoc-be-choi/"),
("4509","1611","_menu_item_type","custom"),
("4510","1611","_menu_item_menu_item_parent","0"),
("4511","1611","_menu_item_object_id","1611"),
("4512","1611","_menu_item_object","custom"),
("4513","1611","_menu_item_target",""),
("4514","1611","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4515","1611","_menu_item_xfn",""),
("4516","1611","_menu_item_url","https://bizhostvn.com/w/mevabe/san-pham/me-an-tam/"),
("4518","1612","_menu_item_type","custom"),
("4519","1612","_menu_item_menu_item_parent","0"),
("4520","1612","_menu_item_object_id","1612");
INSERT INTO bz_postmeta VALUES
("4521","1612","_menu_item_object","custom"),
("4522","1612","_menu_item_target",""),
("4523","1612","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4524","1612","_menu_item_xfn",""),
("4525","1612","_menu_item_url","https://bizhostvn.com/w/mevabe/#"),
("4527","1613","_menu_item_type","custom"),
("4528","1613","_menu_item_menu_item_parent","0"),
("4529","1613","_menu_item_object_id","1613"),
("4530","1613","_menu_item_object","custom"),
("4531","1613","_menu_item_target",""),
("4532","1613","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4533","1613","_menu_item_xfn",""),
("4534","1613","_menu_item_url","https://bizhostvn.com/w/mevabe/#"),
("4536","1614","_menu_item_type","custom"),
("4537","1614","_menu_item_menu_item_parent","0"),
("4538","1614","_menu_item_object_id","1614"),
("4539","1614","_menu_item_object","custom"),
("4540","1614","_menu_item_target",""),
("4541","1614","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4542","1614","_menu_item_xfn",""),
("4543","1614","_menu_item_url","https://bizhostvn.com/w/mevabe/#"),
("4545","1615","_menu_item_type","custom"),
("4546","1615","_menu_item_menu_item_parent","0"),
("4547","1615","_menu_item_object_id","1615"),
("4548","1615","_menu_item_object","custom"),
("4549","1615","_menu_item_target",""),
("4550","1615","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("4551","1615","_menu_item_xfn",""),
("4552","1615","_menu_item_url","https://bizhostvn.com/w/mevabe/category/kinh-nghiem-huong-dan/"),
("4554","1604","_wp_old_slug","block2"),
("4626","1651","_wp_attached_file","2017/10/470be81ddd1d8864ee4e18de2fe372b7.jpg"),
("4627","1651","_wp_attachment_metadata","a:5:{s:5:\"width\";i:792;s:6:\"height\";i:792;s:4:\"file\";s:44:\"2017/10/470be81ddd1d8864ee4e18de2fe372b7.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"470be81ddd1d8864ee4e18de2fe372b7-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4629","1653","_wp_attached_file","2017/10/b2f0334dc14c585ff0f414d8c6cdc485.jpg"),
("4630","1653","_wp_attachment_metadata","a:5:{s:5:\"width\";i:792;s:6:\"height\";i:390;s:4:\"file\";s:44:\"2017/10/b2f0334dc14c585ff0f414d8c6cdc485.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-768x378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"b2f0334dc14c585ff0f414d8c6cdc485-600x390.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4631","1655","_wp_attached_file","2017/10/567249fb43ed575d33d1577d393a2384.png"),
("4632","1655","_wp_attachment_metadata","a:5:{s:5:\"width\";i:792;s:6:\"height\";i:390;s:4:\"file\";s:44:\"2017/10/567249fb43ed575d33d1577d393a2384.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-768x378.png\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"567249fb43ed575d33d1577d393a2384-600x390.png\";s:5:\"width\";i:600;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4633","1657","_wp_attached_file","2017/10/6abc6c46c38b07d5b83f060144dbf990.jpg"),
("4634","1657","_wp_attachment_metadata","a:5:{s:5:\"width\";i:792;s:6:\"height\";i:390;s:4:\"file\";s:44:\"2017/10/6abc6c46c38b07d5b83f060144dbf990.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-768x378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"6abc6c46c38b07d5b83f060144dbf990-600x390.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4635","1659","_wp_attached_file","2017/10/ade92cc6d705fb91d6d139070d87d07b.jpg"),
("4636","1659","_wp_attachment_metadata","a:5:{s:5:\"width\";i:792;s:6:\"height\";i:390;s:4:\"file\";s:44:\"2017/10/ade92cc6d705fb91d6d139070d87d07b.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-768x378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"ade92cc6d705fb91d6d139070d87d07b-600x390.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4637","1662","_order_key","wc_order_59ddd6c3c719d"),
("4638","1662","_customer_user","1"),
("4639","1662","_payment_method","bacs"),
("4640","1662","_payment_method_title","Chuyển khoản ngân hàng"),
("4641","1662","_transaction_id",""),
("4642","1662","_customer_ip_address","118.70.186.115"),
("4643","1662","_customer_user_agent","mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) coc_coc_browser/58.3.130 chrome/52.3.2743.130 safari/537.36"),
("4644","1662","_created_via","checkout"),
("4645","1662","_date_completed",""),
("4646","1662","_completed_date",""),
("4647","1662","_date_paid",""),
("4648","1662","_paid_date",""),
("4649","1662","_cart_hash","c72f7e9fd7fe8e8450305c705b745678"),
("4650","1662","_billing_first_name","Lê"),
("4651","1662","_billing_last_name","Thiện"),
("4652","1662","_billing_company",""),
("4653","1662","_billing_address_1","Tầng 4, Office 122. Nguyễn Trãi, Thanh Xuân, Hà Nội"),
("4654","1662","_billing_address_2",""),
("4655","1662","_billing_city",""),
("4656","1662","_billing_state",""),
("4657","1662","_billing_postcode",""),
("4658","1662","_billing_country",""),
("4659","1662","_billing_email","giuselethien@gmail.com"),
("4660","1662","_billing_phone","0972939830"),
("4661","1662","_shipping_first_name",""),
("4662","1662","_shipping_last_name",""),
("4663","1662","_shipping_company",""),
("4664","1662","_shipping_address_1",""),
("4665","1662","_shipping_address_2",""),
("4666","1662","_shipping_city",""),
("4667","1662","_shipping_state",""),
("4668","1662","_shipping_postcode",""),
("4669","1662","_shipping_country",""),
("4670","1662","_order_currency","VND"),
("4671","1662","_cart_discount","0"),
("4672","1662","_cart_discount_tax","0"),
("4673","1662","_order_shipping","0"),
("4674","1662","_order_shipping_tax","0"),
("4675","1662","_order_tax","0"),
("4676","1662","_order_total","800000"),
("4677","1662","_order_version","3.1.2"),
("4678","1662","_prices_include_tax","no"),
("4679","1662","_billing_address_index","Lê Thiện  Tầng 4, Office 122. Nguyễn Trãi, Thanh Xuân, Hà Nội      giuselethien@gmail.com 0972939830"),
("4680","1662","_shipping_address_index","        "),
("4681","1662","_shipping_method",""),
("4682","1662","_recorded_sales","yes"),
("4683","1662","_recorded_coupon_usage_counts","yes"),
("4684","1662","_order_stock_reduced","yes"),
("4685","1664","_wp_attached_file","2018/03/BIZHOST-DEMO.png"),
("4686","1664","_wp_attachment_metadata","a:5:{s:5:\"width\";i:286;s:6:\"height\";i:75;s:4:\"file\";s:24:\"2018/03/BIZHOST-DEMO.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BIZHOST-DEMO-180x75.png\";s:5:\"width\";i:180;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4689","1666","_wp_attached_file","2018/03/FAVI.png"),
("4690","1666","_wp_attachment_metadata","a:5:{s:5:\"width\";i:75;s:6:\"height\";i:75;s:4:\"file\";s:16:\"2018/03/FAVI.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("4691","1667","_wp_attached_file","woocommerce-placeholder.png"),
("4692","1667","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




CREATE TABLE `bz_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=1668 DEFAULT CHARSET=utf8;


INSERT INTO bz_posts VALUES
("1","1","2017-10-03 09:24:06","2017-10-03 09:24:06","<p class=\"lead\">Phương pháp ăn dặm đóng vai trò quyết định đến thói quen và khả năng ăn uống khi lớn lên của trẻ, việc ăn uống một cách khoa học, cân đối từ những năm đầu đời sẽ hỗ trợ cho sự phát triển thể chất và tinh thần của trẻ một cách toàn diện.</p>\nTrong năm đầu đời, vấn đề ăn dặm của con trẻ luôn là điều mà các ông bố bà mẹ quan tâm hàng đầu. Cho con ăn như thế nào, ăn món gì để con mau lớn và khỏe mạnh chính là nỗi băn khoăn thường trực của các bậc phụ huynh. Thực tế, có không ít các bà mẹ từng có những “trận chiến” miệt mài với việc ăn uống của con, luôn bắt ép con ăn và căng thẳng tột cùng khi thấy con chán ăn hoặc không thèm ăn. Chính vì vậy, phương pháp ăn dặm đóng vai trò quyết định đến thói quen và khả năng ăn uống khi lớn lên của trẻ, việc ăn uống một cách khoa học, cân đối từ những năm đầu đời sẽ hỗ trợ cho sự phát triển thể chất và tinh thần của trẻ một cách toàn diện.\n\nĂn dặm kiểu Nhật đã không còn quá xa lạ đối với hầu hết các mẹ Việt, nhờ cách chế biến khoa học, tỉ mỉ mà đa số các bé được áp dụng phương pháp này đã có khả năng ăn thực phẩm thô từ rất sớm, thậm chí, có bé hơn 1 tuổi đã có thể ăn được cơm nát thay cháo.\n\nMẹ Min Hun sẽ chia sẻ thực đơn ăn dặm kiểu Nhật mà mẹ đã áp dụng cho bé từ lúc 6 tháng tuổi, mẹ Min Hun vẫn duy trì cho bé bú sữa mẹ kết hợp ăn dặm với cơ cấu bữa ăn cụ thể gồm 1 bữa ăn chính trong 1 tuần đầu với cháo và giới thiệu lần lượt các món hoa quả đơn giản như bơ, chuối, cà rốt, bí đỏ…cho bé. Sang tuần thứ 2, mẹ Min Hun đã tăng dần lượng thực phẩm và thêm một bữa ăn tráng miệng. Về nước dùng để nấu cháo ăn dặm cho bé, mẹ Min Hun cho biết: “Mình chế biến nước dùng dashi bằng rong biển và cá ngừ bào khô, hoặc dùng nước luộc 3 loại rau củ để nấu cháo cho bé, các món đều cho bé ăn riêng biệt, ưu tiên cho bé ăn rau củ trong giai đoạn này vì đây là những món dễ tiêu hóa, trộm vía bé ăn ngoan và ngon miệng”.\n\nNgoài ra, về quan điểm khi cho bé ăn, mẹ Min Hun cũng chia sẻ: “Mình chủ trương không ép bé ăn, nếu bé có dấu hiệu không thích là ngưng ngay, luôn nở nụ cười và trò chuyện với bé để bé cảm thấy bữa ăn thật thú vị. Tuyệt đối không mở TV, đem đồ chơi dụ bé vì điều này sẽ tạo thói quen không tốt cho bé và cũng không có lợi cho việc tiêu hóa của bé”.\n\n<strong>Mời các mẹ tham khảo thực đơn ăn dặm kiểu Nhật của mẹ Min Hun:</strong>\n\n1. Cháo trộn sữa mẹ\n\n<img class=\"size-full wp-image-25038 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-n%E1%BA%A5u-s%E1%BB%AFa-m%E1%BA%B9.jpg\" alt=\"chao-nau-sua-me\" />\n\nMón đầu tiên mẹ Min Hun giới thiệu cho bé chính là cháo trắng trộn sữa. Gạo nấu theo tỷ lệ 1/10 (1 gạo : 10 nước) đun lửa nhỏ đến khi vỡ hạt rồi rây nhuyễn, trộn với sữa mẹ khi vừa nguội sau đó bắt đầu cho bé dùng.\n\n<strong>2. Táo hấp trộn sữa mẹ</strong>\n\n<img class=\"size-full wp-image-25044 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/t%C3%A1o-s%E1%BB%AFa-m%E1%BA%B9.jpg\" alt=\"tao-sua-me\" />\n\nTáo rửa sạch dưới vòi nước, gọt vỏ rồi cắt miếng vừa ăn, sau đó cho vào nồi và hấp cách thủy trong thời gian 10-15 phút đến khi táo chín. Sau khi táo chín, nghiền nhuyễn táo rồi trộn với sữa mẹ và cho bé dùng. Lượng sữa cho vào thức ăn tùy theo mẹ điều chỉnh để có độ sệt phù hợp cho bé.\n\n3. Bí đỏ trộn sữa mẹ\n\n<img class=\"size-full wp-image-25045 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/b%C3%AD-%C4%91%E1%BB%8F-s%E1%BB%AFa-m%E1%BA%B9.jpg\" alt=\"bi-do-sua-me\" />\n\nBí đỏ sửa sạch, gọt vỏ rồi cắt miếng vừa ăn. Sau đó, cho vào nồi hấp cách thủy trong thời gian 10-15 phút đến khi chín rồi rây kết hợp nghiền nhuyễn bí đỏ sao cho dễ ăn, thêm lượng sữa mẹ phù hợp rồi cho bé dùng.\n\n4. Bơ trộn sữa mẹ\n\n<img class=\"size-full wp-image-25046 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/b%C6%A1-s%E1%BB%AFa-m%E1%BA%B9.jpg\" alt=\"bo-sua-me\" />\n\nNguyên liệu chỉ cần 1/4 quả bơ, thái miếng mỏng rồi rây và nghiền nhuyễn, sau đó trộn với sữa mẹ và cho bé dùng.\n\n5. Cháo trắng và cà chua\n\n<img class=\"size-full wp-image-25031 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-c%C3%A0-chua.jpg\" alt=\"chao-ca-chua\" />\n\nCháo trắng nấu với nước dùng dashi hoặc nước luộc rau củ, nấu lửa nhỏ đến khi cháo vỡ hạt rồi lọc qua rây. Cà chua luộc chín, bóc vỏ rồi nghiền nhuyễn. Khi cho bé ăn, cháo trắng, cà chua và nước luộc cà chua dùng riêng biệt, không trộn lẫn để bé có thể phân biệt rõ các loại thực phẩm.\n\n6. Cháo trắng – Củ cải luộc – Táo hấp\n\n<img class=\"size-full wp-image-25033 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-c%E1%BB%A7-c%E1%BA%A3i.jpg\" alt=\"chao-cu-cai\" />\n\nSau khi ăn dặm hơn 1 tuần, sang tuần thứ 2, các mẹ có thể tăng lượng thực phẩm lên cho bé thành 2, 3 món. Tuy nhiên, vẫn cần cho bé ăn riêng biệt các món để bé có thể làm quen với mùi vị đặc trưng của từng món. Cách chế biến cháo trắng và táo hấp tương tự như trên, riêng củ cải thì tương tự như chế biến bí đỏ hấp, các món đều được rây và nghiền nhuyễn, cho bé dùng kết hợp với nước luộc.\n\n7. Cháo trắng – Hạt sen nghiền – Bơ trộn sữa\n\n<img class=\"size-full wp-image-25035 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-h%E1%BA%A1t-sen.jpg\" alt=\"chao-hat-sen\" />\n\nLần lượt cho bé ăn cháo trắng song song với hạt sen nghiền và cuối cùng cho bé ăn tráng miệng với món bơ trộn sữa mẹ. Nước hầm hạt sen cũng nên tận dụng cho bé dùng.\n\n8. Cháo trắng – Cải bó xôi (rau bina) – Kiwi hấp\n\n<img class=\"size-full wp-image-25032 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-c%E1%BA%A3i-b%C3%B3-x%C3%B4i.jpg\" alt=\"chao-cai-bo-xoi\" />\n\nTương tự như 2 thực đơn trên, các món đều được chế biến và cho bé dùng riêng biệt. Cải bó xôi (hay còn gọi là rau bina) luôn là một trong những thực phẩm có lợi hàng đầu cho sức khỏe của bé vì chứa hàng loạt vitamin nhóm B, omega-3 và canxi. Đây là thực phẩm mẹ tuyệt đối không nên bỏ qua khi bắt đầu cho bé ăn dặm.\n\n9. Cháo trắng – Măng tây – Chuối tiêu\n\n<img class=\"size-full wp-image-25037 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-m%C4%83ng.jpg\" alt=\"chao-mang\" />\n\n3 món này cũng được chế biến và cho bé dùng riêng biệt, mẹ nên cho bé dùng cả phần nước hấp luộc măng tây và tráng miệng cuối cùng với món chuối tiêu trộn sữa.\n\n10. Tàu hũ non trộn cam – Cháo trắng – Nước luộc tráng miệng\n\n<img class=\"size-full wp-image-25040 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-t%C3%A0o-h%C5%A9.jpg\" alt=\"chao-tao-hu\" />\n\nTàu hũ non cắt 2-3 khoanh luộc chín sau đó nghiền nhuyễn, kế tiếp vắt 1 thìa cà phê nước cam vào trộn chung, nếu tỷ lệ sệt chưa được như ý, mẹ có thể thêm nước luộc tàu hũ vào (vì dạ dày bé còn yếu, nước cam có khá nhiều axit nên giai đoạn này chỉ cần cho bé ăn 1-2 thìa cà phê là được). Nước luộc tráng miệng được chế biến với 3 loại rau củ tự chọn. Cháo nấu chín theo tỷ lệ 1/10 với nước dùng dashi.\n\n11. Cháo trắng – Bắp hấp – Cà rốt hấp\n\n<img class=\"size-full wp-image-25030 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-b%E1%BA%AFp.jpg\" alt=\"chao-bap\" />\n\nCác món rau củ mẹ có thể chế biến trước và trữ đông, đến khi cần cho bé ăn thì rã đông bằng lò vi sóng hoặc cho vào nồi (chảo) đun lên, đến lúc cho bé ăn sẽ giúp tiết kiệm thời gian hơn.\n\n12. Cháo trắng – Bắp cải – Bơ nghiền\n\n<img class=\"size-full wp-image-25029 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-b%E1%BA%AFp-c%E1%BA%A3i.jpg\" alt=\"chao-bap-cai\" />\n\nCháo trắng được nấu với nước dùng dashi hoặc nước luộc 3 loại rau củ. Bắp cải trắng hấp chín rồi xay nhuyễn, thêm nước luộc bắp cải vào khi xay để món ăn có độ sệt vừa ý. Cho bé dùng lần lượt 2 món trên, cuối cùng là ăn tráng miệng với bơ nghiền.\n\n13. Cháo tàu hũ rau dền – Rau củ luộc\n\n<img class=\"size-full wp-image-25039 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-rau-d%E1%BB%81n.jpg\" alt=\"chao-rau-den\" />\n\nCháo trắng nấu với nước dùng dashi ở độ lửa nhỏ đến khi vỡ hạt. Tàu hũ xắt 2-3 khoanh, nghiền nhuyễn và nấu chung với cháo, rau dền rửa sạch và xắt nhuyễn cho vào cuối cùng khi cháo đã chín. Sau đó, mẹ có thể cho bé dùng.\n\n14. Cháo đậu que – Táo hấp nghiền\n\n<img class=\"size-full wp-image-25034 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/ch%C3%A1o-%C4%91%E1%BA%ADu-que.jpg\" alt=\"chao-dau-que\" />\n\nĐậu que rửa sạch, tước xơ rồi xắt miếng vừa ăn. Đun sôi nước dashi và cho gạo (đã ngâm 15 phút) vào nấu đến khi gạo vừa vỡ hạt thì cho đậu que vào, khi đậu vừa chín thì vớt đậu ra và rây nhuyễn, khi vừa rây xong, cho đậu que trở vào cháo rồi cho bé dùng. Cho bé ăn thêm một bữa phụ trong ngày với món táo hấp nghiền nhuyễn.\n\n15. Cháo măng tây – Bơ dầm sữa mẹ\n\n<img class=\"size-full wp-image-25036 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/Ch%C3%A1o-m%C4%83ng-t%C3%A2y.jpg\" alt=\"chao-mang-tay\" />\n\nCách nấu tương tự như trên, sau khi cho bé ăn cháo thì thêm một bữa ăn phụ trong ngày với món bơ dầm trộn sữa mẹ.\n\n<strong>Nước dùng dashi của mẹ Min Hun</strong>\n\nMẹ Min Hun cho biết : “Mình nấu nước dashi cho mỗi bữa luôn chứ kho trữ đông như các mẹ khác, tuy nhiên, nếu các mẹ không có nhiều thời gian để nấu cho mỗi bữa thì có thể nấu trước sau đó để nguội và cho vào khay đá để trữ đông.”\n\nCách nấu nước dashi:\n\nNguyên liệu gồm có rong biển và cá ngừ bào.\n\nBước 1: Lấy một nhúm nhỏ ong biển khô hoặc lấy 1/2 miếng rong biển chiều dài gần 1 gang tay, rộng khoảng 3-5cm rửa bằng nước thường thật sạch. Sau đó ngâm vào nước trong thời gian 10 phút cho rong biển nở ra.\n\nBước 2: Đun sôi rong biển rồi ninh nhỏ lửa nồi nước ngâm rong biển ở trên khoảng 5 phút, sau đó bốc 1 nhúm cá bào bỏ vào, đun thêm khoảng 1 phút nữa thì tắt bếp.\n\nBước 3: Lọc lấy nước bỏ bã sẽ có nước dashi.\n\nTheo mẹ Min Hun chia sẻ: “Bã của nước dashi các mẹ có thể ăn được vì có tác dụng lợi sữa. Bã cá bào có thể dùng để tráng trứng, còn rong biển đã ninh có thể xắt mỏng cho vào cùng 1 món salad nào đó ăn cũng rất ngon. Nước dashi có thể dùng để nấu cháo, súp, làm chawanmushi (món trứng hấp của Nhật), nấu udon (mỳ Nhật)…Nước dashi thơm, vị thanh thanh, giàu canxi mà lại không béo, không gây đầy bụng và thật sự rất nên dùng cho các bé mới tập ăn dặm”.","Mẹ Việt chia sẻ thực đơn ăn dặm lý tưởng cho bé 6 tháng tuổi","","publish","open","open","","chao-moi-nguoi","","","2017-10-11 13:46:12","2017-10-11 06:46:12","","0","https://bizhostvn.com/w/mevabe/?p=1","0","post","","1"),
("2","1","2017-10-03 09:24:06","2017-10-03 09:24:06","Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"https://bizhostvn.com/w/mevabe/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!","Trang Mẫu","","publish","closed","open","","Trang mẫu","","","2017-10-03 09:24:06","2017-10-03 09:24:06","","0","https://bizhostvn.com/w/mevabe/?page_id=2","0","page","","0"),
("24","1","2017-10-03 17:32:29","2017-10-03 10:32:29","/*\nBạn có thể thêm CSS ở đây.\n\nNhấp chuột vào biểu tượng trợ giúp phía trên để tìm hiểu thêm.\n*/\n.form-flat input:not([type=\"submit\"]){background-color: rgba(255,255,255,0.08);\n    box-shadow: none;\n    border-color: #989898;\n    background-position: 99% 50%;\n    color: currentColor !important;\n    border-radius: 4px;\n    height: 36px;}\n.searchform .button.icon i {\n    font-size: 1.2em;\n    color: #7ec33b;}\ninput[type=\'search\']:focus{border:1px solid #7ec33b;box-shadow: 0 0px 6px 0 #cce6b3, 0 6px 20px 0 rgba(255,255,255,0.08)}\n.header-bottom{background-image: url(https://cdn.fcglcdn.com/brainbees/images/n/link-bg.png);\n    height: 59px;    background-color: white;}\n.html1-header{font-size:13px; color: rgba(102,102,102,0.85)}\n#top-bar .nav>li{margin: 0 5px;}\n#top-bar .nav>li>a:hover{    color: #1E73BE;}\n#top-bar .nav>li.active>a{   color: #1E73BE;}\n.hotline-class{font-size:13px}\n#wide-nav .nav-spacing-xlarge>li{margin:0; height:55px;   border-right: 1px solid rgba(255, 255, 255, 0.37);}\n#wide-nav .header-bottom-nav.nav > li > a{height:55px; padding-left:13px; padding-right:13px; font-size:12.5px; text-align: center; line-height:19px}\n#wide-nav .header-bottom-nav.nav > li > a:hover{background: white}\n.nav-dropdown-default{padding:14px}\n#wide-nav  .nav-dropdown{box-shadow: 1px 1px 1px rgba(0,0,0,0.15);\n    border: 0px solid #ddd;\n    height: 350px;\n    border-bottom: 2px solid #fce234;top:54px}\n .nav-dropdown .menu-item-has-children>a{    text-transform: none;\n    font-size: 15px;\n    font-weight: bolder;}\n .nav-dropdown-default .nav-column li>a{    border-bottom: 0px solid #ececec;}\n.nav-column li>a, .nav-dropdown>li>a{padding: 6px 20px;}\n.nav-dropdown.nav-dropdown-default>li>a{    border-bottom: 0px solid #ececec;}\n#wide-nav .header-bottom-nav.nav > li:active, #wide-nav .header-bottom-nav.nav > li:visited, #wide-nav .header-bottom-nav.nav > li:focus {background: white}\n.nav-dropdown li.image-column{width:240px;min-width:240px; vertical-align: bottom}\n#wide-nav .nav li:first-child{    border-left: 1px solid rgba(255, 255, 255, 0.37);}\n.nav-dropdown>li.nav-dropdown-col{     min-width: 250px;\n    border-right: 0px solid #ececec;}\n.nav-dropdown li.image-column>a img{margin-top: 10px;padding-right: 10px;\n    margin-bottom: 6px;}\n\nli.current-dropdown>.nav-dropdown-full, li.has-dropdown:hover>.nav-dropdown-full{width:100% !important; margin:0 auto  !important;}\n.nav-dropdown-default .nav-column li>a:hover{color:#007ee4}\n\n#main{top:-5px;    background-image: url(\"//cdn.fcglcdn.com/brainbees/images/n/main-bg.jpg\");\n    background-repeat: repeat;}\n.header-bottom{background-color: rgba(255, 255, 255, 0);}\n.header-bg-color{    background-color: rgba(255, 255, 255, 0);}\n\n#wide-nav .nav-dropdown-has-arrow li.has-dropdown:before {\n    z-index: -999;\n    border-bottom-color: #fff;\n    border-width: 8px;\n    margin-left: -8px;}\n.hotline-nav{padding-left:13px; padding-right:13px; text-align:right; padding-top:4px}\n.hotline-nav .hotline-nav-phone{font-size:18px; color: red; font-weight: bold; }\n.khuyen-mai{padding-left:13px; padding-right:13px; padding-top: 4px}\n.icon-angle-down[class^=\"icon-\"]{display:none}\n.button span{    font-family: \"Helvetica,Arial,sans-serif\", sans-serif;\n    font-weight: normal;\n    color: rgba(102,102,102,0.85);padding-top:1px}\n.nav-dropdown{box-shadow: 1px 1px 1px rgba(0,0,0,0.15);\n    border-radius: 4px;\n    border: 1px solid #fcdb2e;}\n.nav-dropdown-has-arrow li.has-dropdown:before{    border-bottom-color: #fcdf34;\n    border-width: 8px;\n    margin-left: -8px;}\n.nav-dropdown.nav-dropdown-default>li>a:hover{color:#007ee4}\n.header-button .is-outline:hover{background: white; border: 1px solid #007ee4;}\n.button.icon.is-small{margin-bottom:5px}\n.button.icon i{COLOR: rgba(102,102,102,0.85);}\n.dashboard-links a{font-size:15px;    padding: 15px 0;}\n.dashboard-links a:hover{    background-color: #fcc83e;}\n.button, button, input, textarea, select, fieldset{border-radius:4px}\n#content .button, button, input, textarea, select, fieldset{  border-radius:4px;  text-transform: none;\n    font-size: 16px;}  \n#content{font-size:15px}\n#shop-sidebar, .shop-container, .woocommerce-result-count, .woocommerce-ordering select, .woocommerce-ordering{font-size:15px}\n.lightbox-content{border-radius: 4px}\n.lightbox-content .lightbox-inner{padding: 20px 20px}\n.nav-dropdown-has-arrow li.has-dropdown:after, .nav-dropdown-has-arrow li.has-dropdown:before{    bottom: 0px;}\n.baby-faishon-text{    height: 48px;\n    width: 100%;\n    position: relative;}\n.baby-faishon-text > div {\n    width: 100%;\n    text-align: center;\n}\n.baby-faishon-text div .ribonleft {\n    display: inline-block;\n    float: left;\n    position: absolute;\n    left: 0px;\n    width: 100%;\n    height: 1px;\n    top: 23px;\n    border-bottom: 1px double silver;\n    border-top: 1px double silver;\n}\n.baby-faishon-text div .riboncenter {\n    display: inline-block;\n    background-image: url(\"//cdn.fcglcdn.com/brainbees/images/n/main-bg.jpg\");\n    position: relative;\n    background-repeat: repeat;\n}\n.baby-faishon-text div .baby {\n    font-size: 22px;\n    color: rgb(51, 51, 51);\n    margin-left: 15px;\n    margin-right: 7px;\n}\n.baby-faishon-text div .fashion {\n    font-size: 22px;\n    color: rgb(51, 51, 51);\n    font-weight: 700;\n    margin-bottom: 9px;\n    margin-right: 7px;\n}\n.baby-faishon-text div .subheading {\n    color: rgb(106, 106, 106);\n    font-size: 14px;\n    position: relative;\n    top: -4px;\n}\n.baby-faishon-text div .ribonleft {\n    display: inline-block;\n    float: left;\n    position: absolute;\n    left: 0px;\n    width: 100%;\n    height: 4px;\n    top: 33px;\n    border-bottom: 1px double #d8d8d8;\n    border-top: 1px double #d8d8d8;}\n.cham-soc-be-yeu .img .img-inner{border: 1px solid #efefef}\n.behoc-bechoi{padding-top:0px}\n.product-main span.amount{font-size: 22px}\nspan.amount{color: #f00;\n    font-weight: bold;\n    font-size: 17px;}\n.box-text a:not(.button){    margin-bottom: 7px;\n    height: 30px;\n    overflow: hidden;}\n.behoc-bechoi .noi-dung .col{padding: 0 9.8px 0px;}\n.behoc-bechoi .noi-dung .sub-menu ul li{font-size:13px; list-style: square; color: #b3b3b3}\n.behoc-bechoi .noi-dung .sub-menu {background: white; margin-left: 0px; margin-right: 0px; margin-top: -15px}\n.behoc-bechoi .noi-dung .sub-menu ul li+li{border-top: 1px dotted #efefef;}\n.top-footer {background-image: url(\"https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/testimonials-bg.png\"); background-repeat: repeat; height: 212px}\n.absolute-footer ul li a{text-transform:none; letter-spacing: 0; color: black}\n.copyright-footer{color: #543b00; font-size:13px}\n.top-footer .col{padding: 0 9.8px 10px;}\n.top-footer input[type=\'submit\']:not(.is-form){border-radius: 4px; font-size:14px}\n.top-footer .blog-footer ul li{list-style: none;    margin-bottom: 2px; margin-left: 0px }\n.top-footer .blog-footer p{margin-bottom:8px;}\n.absolute-footer{padding: 10px 0 5px;}\n#content .button, button, input, textarea, select, fieldset{font-size: 14px;}\n.woof_list_checkbox li div{    margin-top: -7px;}\n.woof_childs_list{margin: 0px 0 0 10px !important;}\n.woof_list label{font-weight:normal}\n.woof_list woof_list_checkbox .woof_list li{font-weight: bold}\n.woof_color_term{    width: 20px;\n    height: 20px;    border: 1px solid #000000;}\n.woof_list label{padding-top:2px; padding-bottom:2px}\n.woof_container{margin-bottom:0}\n.page-title{padding-bottom: 15px;}\n.breadcrumbs{    text-transform: none;\n    color: #0092ff;\n    font-weight: normal;font-size: 15px}\n.is-xlarge{    font-size: 1.5em;\n    letter-spacing: -1px;\n    font-weight: normal;\n    color: #0092ff;    margin-bottom: 5px;\n}\n.product-container .product-main .short-desc{    border: 1px solid #cccccc;\n    padding: 10px;\n    border-radius: 4px;\n    margin-bottom: 20px;\n    margin-top: 0px;}\n.product-container .product-main .short-desc ul li{list-style: square; margin-bottom: 2px}\n.product-main .price-wrapper ins span{font-size:22px}\n.product-main .price-wrapper del span{font-size:17px; color: gray}\n.is-divider{display:none}\n.product-container .product-main .short-desc ul, form{margin-bottom:0px}\n.row .section{padding-left:0px; padding-right:0px}\n.block-after-add-to-cart .button span{color: white}\n.block-after-add-to-cart .col{padding: 0 9.8px 0px;}\n.shop-container .product-footer{padding-top:20px;    background: white;}\n.product-main{padding:0}\n.contact-form p{margin-bottom:20px; font-size: 14px}\n.contact-form input[type=\'submit\']:not(.is-form){border-radius: 4px; margin-bottom:0}\n.sidebar-product{border:1px solid #cccccc; padding:10px; border-radius: 4px}\n.sidebar-product p{font-size:14px;    margin-bottom: 6px;}\n.button.is-outline{    border: 1px solid currentColor;}\n.product-footer .woocommerce-tabs>.nav-line:not(.nav-vertical){background: #f3f3f3;}\n\n.product-footer .woocommerce-tabs .nav>li>a{    font-size: 17px;\n    padding-left: 13px;\n    padding-right: 13px; letter-spacing:0;\n    font-weight: bold;\n    text-transform: none;    border-right: 1px solid #d6d6d6;padding-top: 6px;\n    padding-bottom: 6px;}\n.product-footer .woocommerce-tabs{margin-top: -20px;\n}\n\n.product-footer .woocommerce-tabs .nav>li.active>a{    background: #fcd832;\n    font-weight: bold;\n    text-transform: none;\n    letter-spacing: 0;}\n.product-footer .woocommerce-tabs .nav>li{margin:0}\ndiv.wpcf7-mail-sent-ok{    border: 1px solid #6bcc42;\n    background: #59b532;\n    color: white;}\n.wpcf7 .wpcf7-response-output {\n     border-radius: 4px;}\n.shop_attributes{width:50%}\n.shop_attributes th{    text-transform: none;letter-spacing: 0;}\n.shop_attributes th th, td{padding:2px}\ndel span.amount{    font-size: 14px;\n    color: gray;}\n.badge-container{    margin: 0px 0 0 0;}\n.badge{height: 25px;\n    width: 50px;}\n.badge-inner.on-sale{    background-color: #e60112;\n    border-bottom-right-radius: 10px;}\n.breadcrumbs a{    color: rgb(0, 126, 228);}\n.has-border{border: 1px solid #FCC83E;    background: rgba(234, 234, 234, 0.2);\n    padding: 20px;border-radius: 4px}\n.product-main .product-title{font-size:20px}\n.badge.post-date{top:0}\n.article-inner .relative{display:none}\nspan.widget-title{    font-size: 18px;\n    font-weight: 600;\n    letter-spacing: 0;\n    color: #0092ff;}\n@media (max-width: 549px){#top-bar{display:none}}","me-va-be","","publish","closed","closed","","me-va-be","","","2017-10-11 14:15:32","2017-10-11 07:15:32","","0","https://bizhostvn.com/w/mevabe/me-va-be/","0","custom_css","","0"),
("49","1","2017-10-03 17:44:34","2017-10-03 10:44:34","","avaat","","inherit","open","closed","","avaat","","","2017-10-03 17:44:34","2017-10-03 10:44:34","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/avaat.jpg","0","attachment","image/jpeg","0"),
("50","1","2017-10-03 17:44:37","2017-10-03 10:44:37","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/cropped-avaat.jpg","cropped-avaat.jpg","","inherit","open","closed","","cropped-avaat-jpg","","","2017-10-03 17:44:37","2017-10-03 10:44:37","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/cropped-avaat.jpg","0","attachment","image/jpeg","0"),
("56","1","2017-10-03 21:27:32","2017-10-03 14:27:32","","main-bg","","inherit","open","closed","","main-bg","","","2017-10-03 21:27:32","2017-10-03 14:27:32","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/main-bg.jpg","0","attachment","image/jpeg","0"),
("67","1","2017-10-03 21:36:01","2017-10-03 14:36:01","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2017-10-03 21:36:01","2017-10-03 14:36:01","","0","https://bizhostvn.com/w/mevabe/cua-hang/","0","page","","0"),
("68","1","2017-10-03 21:36:01","2017-10-03 14:36:01","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2017-10-03 21:36:01","2017-10-03 14:36:01","","0","https://bizhostvn.com/w/mevabe/gio-hang/","0","page","","0"),
("69","1","2017-10-03 21:36:01","2017-10-03 14:36:01","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2017-10-03 21:36:01","2017-10-03 14:36:01","","0","https://bizhostvn.com/w/mevabe/thanh-toan/","0","page","","0"),
("70","1","2017-10-03 21:36:01","2017-10-03 14:36:01","[woocommerce_my_account]","My account","","publish","closed","closed","","tai-khoan","","","2017-10-03 21:36:01","2017-10-03 14:36:01","","0","https://bizhostvn.com/w/mevabe/tai-khoan/","0","page","","0"),
("92","1","2017-10-03 21:46:19","2017-10-03 14:46:19","","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2017-10-03 21:46:19","2017-10-03 14:46:19","","0","https://bizhostvn.com/w/mevabe/?page_id=92","0","page","","0"),
("94","1","2017-10-03 21:46:43","2017-10-03 14:46:43","","Liên hệ","","publish","closed","closed","","lien-he","","","2017-10-03 21:46:43","2017-10-03 14:46:43","","0","https://bizhostvn.com/w/mevabe/?page_id=94","0","page","","0"),
("96","1","2017-10-03 21:46:50","2017-10-03 14:46:50","","Đăng nhập","","publish","closed","closed","","dang-nhap","","","2017-10-03 21:46:50","2017-10-03 14:46:50","","0","https://bizhostvn.com/w/mevabe/?page_id=96","0","page","","0"),
("98","1","2017-10-03 21:46:56","2017-10-03 14:46:56","","Đăng ký","","publish","closed","closed","","dang-ky","","","2017-10-03 21:46:56","2017-10-03 14:46:56","","0","https://bizhostvn.com/w/mevabe/?page_id=98","0","page","","0"),
("100","1","2017-10-03 21:47:29","2017-10-03 14:47:29","","Hotline: 0972.939.830","","publish","closed","closed","","hotline-0972-939-830","","","2017-10-03 21:47:29","2017-10-03 14:47:29","","0","https://bizhostvn.com/w/mevabe/?page_id=100","0","page","","0"),
("102","1","2017-10-03 21:47:37","2017-10-03 14:47:37","[ux_slider hide_nav=\"true\" nav_size=\"normal\" nav_style=\"simple\" bullets=\"false\" timer=\"4000\"]\n\n[ux_image id=\"225\" image_size=\"original\"]\n\n[ux_image id=\"497\" image_size=\"original\"]\n\n[ux_image id=\"507\" image_size=\"original\"]\n\n[ux_image id=\"509\" image_size=\"original\"]\n\n[ux_image id=\"511\" image_size=\"original\"]\n\n\n[/ux_slider]\n[section label=\"Chăm sóc bé yêu\" class=\"product-cat\" visibility=\"hide-for-small\"]\n\n[row style=\"small\" class=\"cham-soc-be-yeu\"]\n\n[col span__sm=\"12\"]\n\n[scroll_to title=\"Chăm sóc bé yêu\"]\n\n<div class=\"baby-faishon-text\">\n<div>\n<div class=\"ribonleft\"></div>\n<div class=\"riboncenter\" style=\"margin-top: 7px;\"><span class=\"baby\">CHĂM SÓC</span><span class=\"fashion\">BÉ YÊU</span><br />\n<span class=\"subheading\">Chuyên gia cung cấp các sản phẩm chăm sóc em bé tốt nhất cho bạn</span></div>\n</div>\n</div>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[ux_image id=\"716\" image_size=\"original\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/kem-ham-duong-phan-rom/dau-massage-cac-loai/\" target=\"_blank\"]\n\n[ux_image id=\"718\" image_size=\"original\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/bim-va-ta-giay/\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"724\" image_size=\"original\" height=\"95%\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/ve-sinh-cho-be/do-dung-ve-sinh-cho-be/\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\"]\n\n[ux_image id=\"726\" image_size=\"original\" height=\"95%\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/\" target=\"_blank\"]\n\n[ux_image id=\"730\" image_size=\"original\" height=\"97%\" image_hover=\"zoom\" link=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"736\" image_size=\"original\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/binh-sua-phu-kien/may-tiet-trung/\" target=\"_blank\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"739\" image_size=\"original\" image_hover=\"zoom\" link=\"https://bizhostvn.com/w/mevabe/san-pham/be-an-be-uong/thuc-pham/sua-bot-cho-be/\" target=\"_blank\"]\n\n\n[/col_inner]\n\n[/row_inner]\n[row_inner style=\"small\"]\n\n[col_inner span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullets=\"false\" bullet_style=\"dashes\" timer=\"4000\"]\n\n[ux_image id=\"746\" image_size=\"original\" height=\"40%\" image_hover=\"zoom\" link=\"#\"]\n\n[ux_image id=\"751\" image_size=\"original\" height=\"40%\" image_hover=\"zoom\" link=\"#\"]\n\n[ux_image id=\"753\" image_size=\"original\" height=\"40%\" image_hover=\"zoom\" link=\"#\"]\n\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"772\" image_size=\"original\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"773\" image_size=\"original\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Product\" class=\"behoc-bechoi\" padding=\"0px\"]\n\n[scroll_to title=\"Bé học - Bé chơi\" link=\"#behoc\"]\n\n[row label=\"Học chơi title\" style=\"small\"]\n\n[col span__sm=\"12\"]\n\n<div class=\"baby-faishon-text\">\n<div>\n<div class=\"ribonleft\"></div>\n<div class=\"riboncenter\" style=\"margin-top: 7px;\"><span class=\"baby\">BÉ HỌC</span><span class=\"fashion\">BÉ CHƠI</span><br />\n<span class=\"subheading\">Giúp con yêu tự tin khám phá thế giới!</span></div>\n</div>\n</div>\n[gap height=\"15px\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Học chơi products\" style=\"small\" class=\"noi-dung\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"808\" image_size=\"original\"]\n\n[row_inner style=\"small\" class=\"sub-menu\"]\n\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"be-hoc-widget\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"be-choi-widget\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_products type=\"row\" cat=\"86\" orderby=\"date\"]\n\n\n[/col]\n\n[/row]\n[scroll_to title=\"Bé ăn - Bé uống\"]\n\n[row label=\"Ăn uống title\" style=\"small\"]\n\n[col span__sm=\"12\"]\n\n<div class=\"baby-faishon-text\">\n<div>\n<div class=\"ribonleft\"></div>\n<div class=\"riboncenter\" style=\"margin-top: 7px;\"><span class=\"baby\">BÉ ĂN</span><span class=\"fashion\">BÉ UỐNG</span><br />\n<span class=\"subheading\">Giúp con yêu mau lớn và đủ sức đề kháng!</span></div>\n</div>\n</div>\n[gap height=\"15px\"]\n\n\n[/col]\n\n[/row]\n[row label=\"ăn uống products\" style=\"small\" class=\"noi-dung\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"932\" image_size=\"original\"]\n\n[row_inner style=\"small\" class=\"sub-menu\"]\n\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"be-an-be-uong-1\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"be-an-be-uong-2\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_products type=\"row\" cat=\"16\" orderby=\"date\"]\n\n\n[/col]\n\n[/row]\n[scroll_to title=\"Mẹ an tâm\"]\n\n[row label=\"Cha mẹ an tâm title\" style=\"small\"]\n\n[col span__sm=\"12\"]\n\n<div class=\"baby-faishon-text\">\n<div>\n<div class=\"ribonleft\"></div>\n<div class=\"riboncenter\" style=\"margin-top: 7px;\"><span class=\"baby\">CHA MẸ</span><span class=\"fashion\">AN TÂM</span><br />\n<span class=\"subheading\">Các sản phẩm giúp Mẹ an tâm chăm sóc con</span></div>\n</div>\n</div>\n[gap height=\"15px\"]\n\n\n[/col]\n\n[/row]\n[row label=\"CHa mẹ an tâm products\" style=\"small\" class=\"noi-dung\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"1064\" image_size=\"original\"]\n\n[row_inner style=\"small\" class=\"sub-menu\"]\n\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"me-an-tam-1\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_sidebar id=\"me-an-tam-2\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_products type=\"row\" cat=\"113\" orderby=\"date\"]\n\n\n[/col]\n\n[/row]\n[scroll_to title=\"Lựa chọn thương hiệu\"]\n\n[row style=\"small\" class=\"cham-soc-be-yeu\"]\n\n[col span__sm=\"12\"]\n\n<div class=\"baby-faishon-text\">\n<div>\n<div class=\"ribonleft\"></div>\n<div class=\"riboncenter\" style=\"margin-top: 7px;\"><span class=\"baby\">THƯƠNG HIỆU</span><span class=\"fashion\">BẠN YÊU THÍCH</span><br />\n<span class=\"subheading\">Tìm kiếm sản phẩm nhanh hơn với đúng thương hiệu bạn tin cậy!</span></div>\n</div>\n</div>\n[gap height=\"20px\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"783\" image_size=\"original\" image_hover=\"zoom\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"785\" image_size=\"original\" image_hover=\"zoom\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"786\" image_size=\"original\" height=\"161%\" image_hover=\"zoom\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"788\" image_size=\"original\" image_hover=\"zoom\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"794\" image_size=\"original\" image_hover=\"zoom\" link=\"#\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"798\" image_size=\"original\" image_hover=\"zoom\" link=\"#\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n[row_inner style=\"small\" v_align=\"middle\" h_align=\"center\"]\n\n[col_inner span__sm=\"12\"]\n\n[ux_slider style=\"container\" freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_size=\"normal\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"979\" height=\"60px\"]\n\n[logo img=\"981\" height=\"60px\"]\n\n[logo img=\"983\" height=\"60px\"]\n\n[logo img=\"985\" height=\"60px\"]\n\n[logo img=\"987\" height=\"60px\"]\n\n[logo img=\"989\" height=\"60px\"]\n\n[logo img=\"991\" height=\"60px\"]\n\n[logo img=\"993\" height=\"60px\"]\n\n[logo img=\"995\" height=\"60px\"]\n\n[logo img=\"997\" height=\"60px\"]\n\n[logo img=\"1000\" height=\"60px\"]\n\n[logo img=\"1001\" height=\"60px\"]\n\n[logo img=\"1003\" height=\"60px\"]\n\n[logo img=\"1005\" height=\"60px\"]\n\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","closed","","trang-chu","","","2017-10-11 14:20:22","2017-10-11 07:20:22","","0","https://bizhostvn.com/w/mevabe/?page_id=102","0","page","","0"),
("104","1","2017-10-03 21:48:00","0000-00-00 00:00:00"," ","","","draft","closed","closed","","","","","2017-10-03 21:48:00","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/mevabe/?p=104","1","nav_menu_item","","0"),
("107","1","2017-10-03 21:48:45","2017-10-03 14:48:45"," ","","","publish","closed","closed","","107","","","2017-10-06 14:45:33","2017-10-06 07:45:33","","0","https://bizhostvn.com/w/mevabe/?p=107","2","nav_menu_item","","0"),
("108","1","2017-10-03 21:48:45","2017-10-03 14:48:45"," ","","","publish","closed","closed","","108","","","2017-10-06 14:45:33","2017-10-06 07:45:33","","0","https://bizhostvn.com/w/mevabe/?p=108","1","nav_menu_item","","0"),
("109","1","2017-10-03 21:48:45","2017-10-03 14:48:45","","Hotline: 0909009009","","publish","closed","closed","","hotline-0972-939-830","","","2018-03-01 18:46:04","2018-03-01 11:46:04","","0","https://bizhostvn.com/w/mevabe/?p=109","4","nav_menu_item","","0"),
("122","1","2017-10-03 22:01:27","2017-10-03 15:01:27","[row style=\"small\" class=\"hotline-class\"]\n\n[col span__sm=\"12\"]\n\n<p>Hotline tư vấn:<br /><span style=\"color:#e3657e; font-size: 130%;\"><strong>0972.939.830</strong></span></p>\n\n[/col]\n\n[/row]","Hotline-header","","publish","closed","closed","","hotline-header","","","2017-10-03 22:19:18","2017-10-03 15:19:18","","0","https://bizhostvn.com/w/mevabe/?post_type=blocks&#038;p=122","0","blocks","","0"),
("145","1","2017-10-03 22:10:15","2017-10-03 15:10:15","","logo giuseart","","inherit","open","closed","","logo-giuseart","","","2017-10-03 22:10:15","2017-10-03 15:10:15","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo-giuseart.png","0","attachment","image/png","0"),
("152","1","2017-10-03 22:21:36","2017-10-03 15:21:36","","Bé ăn<br>bé uống","","publish","closed","closed","","be-anbe-uong","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=152","1","nav_menu_item","","0"),
("189","1","2017-10-03 22:32:30","2017-10-03 15:32:30","","Vệ sinh<br>cho bé","","publish","closed","closed","","ve-sinhcho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=189","32","nav_menu_item","","0"),
("225","1","2017-10-03 22:56:29","2017-10-03 15:56:29","","slider1","","inherit","open","closed","","slider1","","","2017-10-03 22:56:29","2017-10-03 15:56:29","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/slider1.jpg","0","attachment","image/jpeg","0"),
("229","1","2017-10-03 22:59:54","2017-10-03 15:59:54","","BANNER2","","inherit","open","closed","","banner2","","","2017-10-03 22:59:54","2017-10-03 15:59:54","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/BANNER2.jpg","0","attachment","image/jpeg","0"),
("246","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Bé<br>ngủ ngon","","publish","closed","closed","","bengu-ngon","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=246","55","nav_menu_item","","0"),
("247","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Bé tắm<br>Bé gội","","publish","closed","closed","","be-tambe-goi","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=247","83","nav_menu_item","","0"),
("248","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Bé<br>ra ngoài","","publish","closed","closed","","bera-ngoai","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=248","84","nav_menu_item","","0"),
("250","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Mẹ<br>an tâm","","publish","closed","closed","","mean-tam","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=250","114","nav_menu_item","","0"),
("251","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Bé học<Br>bé chơi","","publish","closed","closed","","be-hocbe-choi","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=251","85","nav_menu_item","","0"),
("252","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Quần áo<br>thời trang","","publish","closed","closed","","quan-aothoi-trang","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=252","141","nav_menu_item","","0"),
("253","1","2017-10-03 23:15:18","2017-10-03 16:15:18","","Đồ dùng<br>gia đình","","publish","closed","closed","","do-dunggia-dinh","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=253","142","nav_menu_item","","0"),
("262","1","2017-10-03 23:17:59","2017-10-03 16:17:59","","Đồ sơ sinh<br>giá rẻ","","publish","closed","closed","","do-so-sinhgia-re","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=262","143","nav_menu_item","","0"),
("263","1","2017-10-03 23:18:42","0000-00-00 00:00:00","","Khuyến mại<br>HOT nhất","","draft","closed","closed","","","","","2017-10-03 23:18:42","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/mevabe/?p=263","1","nav_menu_item","","0"),
("265","1","2017-10-04 22:26:52","2017-10-04 15:26:52","","Đồ dùng ăn uống","","publish","closed","closed","","sub-menu-1","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=265","13","nav_menu_item","","0"),
("266","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Bình sữa & phụ kiện","","publish","closed","closed","","binh-sua-phu-kien","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=266","22","nav_menu_item","","0"),
("267","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Thực phẩm","","publish","closed","closed","","thuc-pham","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=267","2","nav_menu_item","","0"),
("268","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Mật ong cho bé","","publish","closed","closed","","mat-ong-cho-be","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=268","3","nav_menu_item","","0"),
("269","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Ngũ cốc cho bé","","publish","closed","closed","","ngu-coc-cho-be","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=269","4","nav_menu_item","","0"),
("270","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Nước mắm","","publish","closed","closed","","nuoc-mam","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=270","5","nav_menu_item","","0"),
("271","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Sữa bột cho bé","","publish","closed","closed","","sua-bot-cho-be","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=271","6","nav_menu_item","","0"),
("272","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Sữa non","","publish","closed","closed","","sua-non","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=272","7","nav_menu_item","","0"),
("273","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Sữa tươi cho bé","","publish","closed","closed","","sua-tuoi-cho-be","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=273","8","nav_menu_item","","0"),
("274","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Thức ăn dinh dưỡng đóng lọ","","publish","closed","closed","","thuc-an-dinh-duong-dong-lo","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=274","9","nav_menu_item","","0"),
("275","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Trà - nước ép hoa quả - rau","","publish","closed","closed","","tra-nuoc-ep-hoa-qua-rau","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=275","10","nav_menu_item","","0"),
("276","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Váng sữa - phô mai - sữa chua","","publish","closed","closed","","vang-sua-pho-mai-sua-chua","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=276","11","nav_menu_item","","0"),
("277","1","2017-10-04 22:35:24","2017-10-04 15:35:24","","Bánh ăn dặm - kẹo dinh dưỡng","","publish","closed","closed","","banh-an-dam-keo-dinh-duong","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=277","12","nav_menu_item","","0"),
("279","1","2017-10-04 22:40:40","2017-10-04 15:40:40","","Bát - đĩa - thìa - tập ăn","","publish","closed","closed","","bat-dia-thia-tap-an","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=279","14","nav_menu_item","","0"),
("280","1","2017-10-04 22:40:40","2017-10-04 15:40:40","","Bình ăn dặm - bình thìa","","publish","closed","closed","","binh-an-dam-binh-thia","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=280","15","nav_menu_item","","0"),
("281","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Bộ chế biến ăn dặm","","publish","closed","closed","","bo-che-bien-an-dam","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=281","16","nav_menu_item","","0"),
("282","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Chia sữa - chia thức ăn","","publish","closed","closed","","chia-sua-chia-thuc-an","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=282","17","nav_menu_item","","0"),
("283","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Cốc - bình uống nước","","publish","closed","closed","","coc-binh-uong-nuoc","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=283","18","nav_menu_item","","0"),
("284","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Dụng cụ giữ nhiệt","","publish","closed","closed","","dung-cu-giu-nhiet","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=284","19","nav_menu_item","","0"),
("285","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Ghế ăn bột","","publish","closed","closed","","ghe-an-bot","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=285","20","nav_menu_item","","0"),
("286","1","2017-10-04 22:40:41","2017-10-04 15:40:41","","Giá úp bình sữa","","publish","closed","closed","","gia-up-binh-sua","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=286","21","nav_menu_item","","0"),
("287","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Bình sữa","","publish","closed","closed","","binh-sua","","","2017-10-11 13:38:24","2017-10-11 06:38:24","","0","https://bizhostvn.com/w/mevabe/?p=287","23","nav_menu_item","","0"),
("288","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Cọ rửa bình sữa","","publish","closed","closed","","co-rua-binh-sua","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=288","24","nav_menu_item","","0"),
("289","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Hâm sữa","","publish","closed","closed","","ham-sua","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=289","25","nav_menu_item","","0"),
("290","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Máy tiệt trùng","","publish","closed","closed","","may-tiet-trung","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=290","26","nav_menu_item","","0"),
("291","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Núm ti","","publish","closed","closed","","num-ti","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=291","27","nav_menu_item","","0"),
("292","1","2017-10-04 22:42:36","2017-10-04 15:42:36","","Nước rửa bình sữa - hoa quả","","publish","closed","closed","","nuoc-rua-binh-sua-hoa-qua","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=292","28","nav_menu_item","","0"),
("293","1","2017-10-04 22:43:28","2017-10-04 15:43:28","","be-an-be-uong_6","","inherit","open","closed","","be-an-be-uong_6","","","2017-10-04 22:43:28","2017-10-04 15:43:28","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-an-be-uong_6.jpg","0","attachment","image/jpeg","0"),
("294","1","2017-10-04 22:44:49","2017-10-04 15:44:49","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-an-be-uong_6.jpg","Image Column","","publish","closed","closed","","image-column","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=294","31","nav_menu_item","","0"),
("389","1","2017-10-05 00:01:37","2017-10-04 17:01:37","","Sản phẩm nổi bật khác","","publish","closed","closed","","san-pham-khac","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=389","29","nav_menu_item","","0"),
("390","1","2017-10-05 00:05:56","2017-10-04 17:05:56","","Menu danh mục con 1","","publish","closed","closed","","sub-menu-1-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=390","30","nav_menu_item","","0"),
("462","1","2017-10-05 01:04:02","2017-10-04 18:04:02","","be-ve-sinh","","inherit","open","closed","","be-ve-sinh","","","2017-10-05 01:04:02","2017-10-04 18:04:02","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-ve-sinh.jpg","0","attachment","image/jpeg","0"),
("463","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bỉm và tã giấy","","publish","closed","closed","","bim-va-ta-giay","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=463","33","nav_menu_item","","0"),
("464","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bỉm Goo.N","","publish","closed","closed","","bim-goo-n","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=464","34","nav_menu_item","","0"),
("465","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bỉm Bobby","","publish","closed","closed","","bim-bobby","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=465","35","nav_menu_item","","0"),
("466","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bỉm Huggies","","publish","closed","closed","","bim-huggies","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=466","36","nav_menu_item","","0"),
("467","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bỉm Merrier","","publish","closed","closed","","bim-merrier","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=467","37","nav_menu_item","","0"),
("468","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Các loại bỉm khác","","publish","closed","closed","","cac-loai-bim-khac","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=468","38","nav_menu_item","","0"),
("469","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Đồ dùng vệ sinh cho bé","","publish","closed","closed","","do-dung-ve-sinh-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=469","39","nav_menu_item","","0"),
("470","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Kem trị hăm cho bé","","publish","closed","closed","","kem-tri-ham-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=470","40","nav_menu_item","","0"),
("471","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Kem dưỡng da - chống nẻ","","publish","closed","closed","","kem-duong-da-chong-ne","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=471","41","nav_menu_item","","0"),
("472","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Dầu massage các loại","","publish","closed","closed","","dau-massage-cac-loai","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=472","42","nav_menu_item","","0"),
("473","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Nước hoa - phấn rôm","","publish","closed","closed","","nuoc-hoa-phan-rom","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=473","43","nav_menu_item","","0"),
("474","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Kem hăm - kem dưỡng - phấn","","publish","closed","closed","","kem-ham-kem-duong-phan","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=474","44","nav_menu_item","","0"),
("475","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Vệ sinh tai - mũi - họng","","publish","closed","closed","","ve-sinh-tai-mui-hong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=475","45","nav_menu_item","","0"),
("476","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Vệ sinh thân thể","","publish","closed","closed","","ve-sinh-than-the","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=476","46","nav_menu_item","","0"),
("477","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bấm móng tay, móng chân","","publish","closed","closed","","bam-mong-tay-mong-chan","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=477","47","nav_menu_item","","0"),
("478","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Tông đơ, kéo, lược chải tóc","","publish","closed","closed","","tong-do-keo-luoc-chai-toc","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=478","48","nav_menu_item","","0"),
("479","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bàn chải, kem đánh răng","","publish","closed","closed","","ban-chai-kem-danh-rang","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=479","49","nav_menu_item","","0"),
("480","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Đồ dùng vệ sinh cho bé","","publish","closed","closed","","do-dung-ve-sinh-cho-be-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=480","50","nav_menu_item","","0"),
("481","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bệ ngồi toilet cho bé","","publish","closed","closed","","be-ngoi-toilet-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=481","51","nav_menu_item","","0"),
("482","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Bộ vệ sinh cho bé","","publish","closed","closed","","bo-ve-sinh-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=482","52","nav_menu_item","","0"),
("483","1","2017-10-05 01:12:27","2017-10-04 18:12:27","","Khăn ướt, giấy ướt","","publish","closed","closed","","khan-uot-giay-uot","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=483","53","nav_menu_item","","0"),
("484","1","2017-10-05 01:13:04","2017-10-04 18:13:04","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-ve-sinh.jpg","Image Column","","publish","closed","closed","","image-column-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=484","54","nav_menu_item","","0"),
("497","1","2017-10-05 01:22:33","2017-10-04 18:22:33","","slider2","","inherit","open","closed","","slider2","","","2017-10-05 01:22:33","2017-10-04 18:22:33","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/slider2.jpg","0","attachment","image/jpeg","0"),
("507","1","2017-10-05 01:32:10","2017-10-04 18:32:10","","slider4","","inherit","open","closed","","slider4","","","2017-10-05 01:32:10","2017-10-04 18:32:10","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/slider4.jpg","0","attachment","image/jpeg","0"),
("509","1","2017-10-05 01:36:07","2017-10-04 18:36:07","","SLIDERR5","","inherit","open","closed","","sliderr5","","","2017-10-05 01:36:07","2017-10-04 18:36:07","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/SLIDERR5.jpg","0","attachment","image/jpeg","0"),
("511","1","2017-10-05 01:40:19","2017-10-04 18:40:19","","SLIDER6","","inherit","open","closed","","slider6","","","2017-10-05 01:40:19","2017-10-04 18:40:19","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/SLIDER6.jpg","0","attachment","image/jpeg","0"),
("524","1","2017-10-05 01:49:42","2017-10-04 18:49:42","","Chính sách bán hàng","","publish","closed","closed","","chinh-sach-ban-hang","","","2017-10-06 14:45:33","2017-10-06 07:45:33","","0","https://bizhostvn.com/w/mevabe/?p=524","3","nav_menu_item","","0"),
("551","1","2017-10-05 01:58:01","2017-10-04 18:58:01","[section]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n<h3 style=\"text-align: center;\"><strong>THÔNG TIN KHUYẾN MẠI</strong></h3>\n<p style=\"text-align: center;\">Tìm kiếm những sản phẩm khuyến mại hấp dẫn nhất để tiết kiệm hầu bao cho chính gia đình mình!</p>\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"1651\" image_size=\"original\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"1653\" image_size=\"original\"]\n\n[ux_image id=\"1657\" image_size=\"original\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"1655\" image_size=\"original\"]\n\n[ux_image id=\"1659\"]\n\n[/col]\n\n[/row]\n\n[/section]","Tin khuyến mại","","publish","closed","closed","","tin-khuyen-mai","","","2017-10-11 15:11:22","2017-10-11 08:11:22","","0","https://bizhostvn.com/w/mevabe/?page_id=551","0","page","","0"),
("611","1","2017-10-05 02:33:59","2017-10-04 19:33:59","","FSDSFFDS","","inherit","open","closed","","fsdsffds","","","2017-10-05 02:33:59","2017-10-04 19:33:59","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/FSDSFFDS.png","0","attachment","image/png","0"),
("653","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Giường cũi cho bé","","publish","closed","closed","","giuong-cui-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=653","56","nav_menu_item","","0"),
("654","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Giường cũi siêu nhẹ","","publish","closed","closed","","giuong-cui-sieu-nhe","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=654","57","nav_menu_item","","0"),
("655","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Cũi giá rẻ cho bé","","publish","closed","closed","","cui-gia-re-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=655","58","nav_menu_item","","0"),
("656","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Cũi cho bé xuất khẩu","","publish","closed","closed","","cui-cho-be-xuat-khau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=656","59","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("657","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Phụ kiện bé ngủ","","publish","closed","closed","","phu-kien-be-ngu","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=657","60","nav_menu_item","","0"),
("658","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Bộ quây cũi cho bé","","publish","closed","closed","","bo-quay-cui-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=658","61","nav_menu_item","","0"),
("659","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Chăn ga cho bé","","publish","closed","closed","","chan-ga-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=659","62","nav_menu_item","","0"),
("660","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Màn và cọc màn","","publish","closed","closed","","man-va-coc-man","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=660","63","nav_menu_item","","0"),
("661","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Máy báo khóc - ru ngủ","","publish","closed","closed","","may-bao-khoc-ru-ngu","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=661","64","nav_menu_item","","0"),
("662","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Giường tầng trẻ em","","publish","closed","closed","","giuong-tang-tre-em","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=662","66","nav_menu_item","","0"),
("663","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Ghế rung cho bé","","publish","closed","closed","","ghe-rung-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=663","67","nav_menu_item","","0"),
("664","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Xích đu cho bé","","publish","closed","closed","","xich-du-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=664","68","nav_menu_item","","0"),
("665","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Nôi điện tự động","","publish","closed","closed","","noi-dien-tu-dong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=665","69","nav_menu_item","","0"),
("666","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Chăn ấm - chăn siêu nhẹ","","publish","closed","closed","","chan-am-chan-sieu-nhe","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=666","70","nav_menu_item","","0"),
("667","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Giường xe ô tô","","publish","closed","closed","","giuong-xe-o-to","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=667","71","nav_menu_item","","0"),
("668","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Treo cũi - thảm chơi","","publish","closed","closed","","treo-cui-tham-choi","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=668","72","nav_menu_item","","0"),
("669","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Chặn giường cho bé","","publish","closed","closed","","chan-giuong-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=669","73","nav_menu_item","","0"),
("670","1","2017-10-05 12:05:02","2017-10-05 05:05:02","","Nôi ngủ chung","","publish","closed","closed","","noi-ngu-chung","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=670","74","nav_menu_item","","0"),
("671","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Sản phẩm tiện ích","","publish","closed","closed","","san-pham-tien-ich","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=671","65","nav_menu_item","","0"),
("672","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Thương hiệu nổi tiếng","","publish","closed","closed","","thuong-hieu-noi-tieng","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=672","75","nav_menu_item","","0"),
("673","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Autoru","","publish","closed","closed","","autoru","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=673","76","nav_menu_item","","0"),
("674","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Brevi","","publish","closed","closed","","brevi","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=674","77","nav_menu_item","","0"),
("675","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Calpon","","publish","closed","closed","","calpon","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=675","80","nav_menu_item","","0"),
("676","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Farlin","","publish","closed","closed","","farlin","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=676","81","nav_menu_item","","0"),
("677","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Graco","","publish","closed","closed","","graco","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=677","79","nav_menu_item","","0"),
("678","1","2017-10-05 12:08:36","2017-10-05 05:08:36","","Mamago","","publish","closed","closed","","mamago","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=678","78","nav_menu_item","","0"),
("679","1","2017-10-05 12:09:00","2017-10-05 05:09:00","","bengu","","inherit","open","closed","","bengu","","","2017-10-05 12:09:00","2017-10-05 05:09:00","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/bengu.jpg","0","attachment","image/jpeg","0"),
("680","1","2017-10-05 12:09:38","2017-10-05 05:09:38","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/bengu.jpg","Image Column","","publish","closed","closed","","image-column-3","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=680","82","nav_menu_item","","0"),
("716","1","2017-10-05 14:54:34","2017-10-05 07:54:34","","Baby_Care_Baby_Massage_Oil_1","","inherit","open","closed","","baby_care_baby_massage_oil_1","","","2017-10-05 14:54:34","2017-10-05 07:54:34","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_Baby_Massage_Oil_1.jpg","0","attachment","image/jpeg","0"),
("718","1","2017-10-05 14:57:30","2017-10-05 07:57:30","","Baby_Care_Diapering_2","","inherit","open","closed","","baby_care_diapering_2","","","2017-10-05 14:57:30","2017-10-05 07:57:30","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_Diapering_2.jpg","0","attachment","image/jpeg","0"),
("724","1","2017-10-05 15:00:53","2017-10-05 08:00:53","","Baby_Care_New_Born_Registry_3","","inherit","open","closed","","baby_care_new_born_registry_3","","","2017-10-05 15:00:53","2017-10-05 08:00:53","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_New_Born_Registry_3.jpg","0","attachment","image/jpeg","0"),
("726","1","2017-10-05 15:03:16","2017-10-05 08:03:16","","Baby_Care_Bottles_Teats_4","","inherit","open","closed","","baby_care_bottles_teats_4","","","2017-10-05 15:03:16","2017-10-05 08:03:16","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_Bottles_Teats_4.jpg","0","attachment","image/jpeg","0"),
("730","1","2017-10-05 15:05:29","2017-10-05 08:05:29","","FSSDFFDSDSF","","inherit","open","closed","","fssdffdsdsf","","","2017-10-05 15:05:29","2017-10-05 08:05:29","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/FSSDFFDSDSF.jpg","0","attachment","image/jpeg","0"),
("736","1","2017-10-05 15:08:51","2017-10-05 08:08:51","","Baby_Care_Sterilizers_6","","inherit","open","closed","","baby_care_sterilizers_6","","","2017-10-05 15:08:51","2017-10-05 08:08:51","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_Sterilizers_6.jpg","0","attachment","image/jpeg","0"),
("739","1","2017-10-05 15:10:31","2017-10-05 08:10:31","","Baby_Care_Sterilizers_6","","inherit","open","closed","","baby_care_sterilizers_6-2","","","2017-10-05 15:10:31","2017-10-05 08:10:31","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Baby_Care_Sterilizers_6-1.jpg","0","attachment","image/jpeg","0"),
("746","1","2017-10-05 15:14:47","2017-10-05 08:14:47","","FSDFĐSFSDF","","inherit","open","closed","","fsdfdsfsdf","","","2017-10-05 15:14:47","2017-10-05 08:14:47","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/FSDFĐSFSDF.jpg","0","attachment","image/jpeg","0"),
("751","1","2017-10-05 15:17:18","2017-10-05 08:17:18","","Home-Page-Unit_Baby-Care-Sliding-Banner","","inherit","open","closed","","home-page-unit_baby-care-sliding-banner","","","2017-10-05 15:17:18","2017-10-05 08:17:18","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner.jpg","0","attachment","image/jpeg","0"),
("753","1","2017-10-05 15:19:34","2017-10-05 08:19:34","","Home-Page-Unit_Baby-Care-Sliding-Banner","","inherit","open","closed","","home-page-unit_baby-care-sliding-banner-2","","","2017-10-05 15:19:34","2017-10-05 08:19:34","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Home-Page-Unit_Baby-Care-Sliding-Banner-1.jpg","0","attachment","image/jpeg","0"),
("772","1","2017-10-05 15:47:57","2017-10-05 08:47:57","","HTTS_banner_web","","inherit","open","closed","","htts_banner_web","","","2017-10-05 15:47:57","2017-10-05 08:47:57","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/HTTS_banner_web.png","0","attachment","image/png","0"),
("773","1","2017-10-05 15:48:25","2017-10-05 08:48:25","","HTAD_banner","","inherit","open","closed","","htad_banner","","","2017-10-05 15:48:25","2017-10-05 08:48:25","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/HTAD_banner.png","0","attachment","image/png","0"),
("783","1","2017-10-05 15:58:07","2017-10-05 08:58:07","","Brand_in_focus_Carters","","inherit","open","closed","","brand_in_focus_carters","","","2017-10-05 15:58:07","2017-10-05 08:58:07","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Brand_in_focus_Carters.jpg","0","attachment","image/jpeg","0"),
("785","1","2017-10-05 15:58:43","2017-10-05 08:58:43","","Brand_in_focus_Fox","","inherit","open","closed","","brand_in_focus_fox","","","2017-10-05 15:58:43","2017-10-05 08:58:43","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Brand_in_focus_Fox.jpg","0","attachment","image/jpeg","0"),
("786","1","2017-10-05 15:59:05","2017-10-05 08:59:05","","Brand_in_focus_Little_Kangaroos_3","","inherit","open","closed","","brand_in_focus_little_kangaroos_3","","","2017-10-05 15:59:05","2017-10-05 08:59:05","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Brand_in_focus_Little_Kangaroos_3.jpg","0","attachment","image/jpeg","0"),
("788","1","2017-10-05 15:59:27","2017-10-05 08:59:27","","Brand_in_focus_Toffyhouse_new","","inherit","open","closed","","brand_in_focus_toffyhouse_new","","","2017-10-05 15:59:27","2017-10-05 08:59:27","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Brand_in_focus_Toffyhouse_new.jpg","0","attachment","image/jpeg","0"),
("794","1","2017-10-05 16:02:34","2017-10-05 09:02:34","","Brand_in_focus_Ethniks_Newron_5","","inherit","open","closed","","brand_in_focus_ethniks_newron_5","","","2017-10-05 16:02:34","2017-10-05 09:02:34","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Brand_in_focus_Ethniks_Newron_5.jpg","0","attachment","image/jpeg","0"),
("798","1","2017-10-05 16:08:10","2017-10-05 09:08:10","","fsdsfsdf","","inherit","open","closed","","fsdsfsdf","","","2017-10-05 16:08:10","2017-10-05 09:08:10","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/fsdsfsdf.jpg","0","attachment","image/jpeg","0"),
("808","1","2017-10-05 16:18:07","2017-10-05 09:18:07","","banner_tang-03","","inherit","open","closed","","banner_tang-03","","","2017-10-05 16:18:07","2017-10-05 09:18:07","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banner_tang-03.jpg","0","attachment","image/jpeg","0"),
("814","1","2017-10-05 16:23:33","2017-10-05 09:23:33","","IMG_1773","","inherit","open","closed","","img_1773","","","2017-10-05 16:23:33","2017-10-05 09:23:33","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/IMG_1773.jpg","0","attachment","image/jpeg","0"),
("816","1","2017-10-05 16:30:54","2017-10-05 09:30:54","<h2><strong>Thú bông hình chú thỏ đáng yêu Tilamitu Rabbit thương hiệu nổi tiếng Metoo</strong></h2>\nHình ảnh chú thỏ Rabbit Metoo đáng yêu đã không còn xa lạ với chúng ta nhất là trẻ nhỏ. Nên những thú thỏ bông Rabit không chỉ mang nét đáng yêu, xinh xắn, thích thú mà còn là người bạn thân thiết của các bé. Ngoài ra sản phẩm thú bông hình chú thỏ đáng yêu Tilamitu Rabbit Metoo cũng khiến rất nhiều bé gái tuổi teen mê thích\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/bup-be-thu-bong/IMG_1769.JPG\" alt=\"\" width=\"500\" />\n<h3><strong>Thông tin chính thú bông hình chú thỏ đáng yêu Tilamitu Rabbit</strong></h3>\nSản phẩm được làm bằng bông PP cao cấp, êm ái và an toàn cho sức khỏe. Bên ngoài chất liệu bông ngắn siêu mềm, không xù, không rụng lông nên rất thân thiện với môi trường.\n\n<a title=\"thú bông\" href=\"https://www.kidsplaza.vn/bup-be-thu-nhoi-bong.html\" target=\"_blank\" rel=\"noopener\">Thú bông</a> hình chú thỏ đáng yêu Tilamitu Rabbit Metoo được sản xuất và kiểm duyệt chặt chẽ, nghiêm ngặt với tiêu chuẩn quốc tế, <strong>đạt tiêu chuẩn chất lượng</strong>, thân thiện với người dùng, an toàn với sức khỏe, phù hợp với môi trường.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/bup-be-thu-bong/IMG_1794.JPG\" alt=\"\" width=\"500\" />\n\nSản phẩm thiết kế hình chú thỏ bông Tilamitu Rabbit với đôi tai dài, mắt sáng, đánh má hồng rất ngộ nghĩnh, đáng yêu\n\nThú bông hình chú thỏ đáng yêu Tilamitu Rabbit Metoo khoác trên mình những bộ quần áo dễ thương với <strong>đủ kiểu dáng, màu sắc</strong>\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/bup-be-thu-bong/IMG_1773.JPG\" alt=\"\" width=\"500\" />\n\nNgoài là người bạn thân thiết của bé thì cha mẹ có thể sử dụng chú thú bông hình thỏ đáng yêu Tilamitu Rabbit như một đồ vật <strong>trang trí cho căn phòng của bé thêm sinh động hơn</strong>\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/bup-be-thu-bong/thu-bong-hinh-chu-tho-dang-yeu-tilamitu-rabbit-metoo-4.jpg\" alt=\"\" width=\"500\" />\n\nThú bông thỏ Metoo là sản phẩm đến từ thương hiệu cao cấp của nhà máy chuyên sản xuất đồ chơi Huisen\n\nKích thước sản phẩm (Cao x Rộng): 35 x 15cm","Thú bông hình chú thỏ đáng yêu Tilamitu Rabbit Metoo","Ngoài là người bạn thân thiết của bé thì cha mẹ có thể sử dụng chú thú bông hình thỏ đáng yêu Tilamitu Rabbit như một đồ vật <strong>trang trí cho căn phòng của bé thêm sinh động hơn</strong>","publish","open","closed","","thu-bong-hinh-chu-tho-dang-yeu-tilamitu-rabbit-metoo","","","2017-10-11 11:20:41","2017-10-11 04:20:41","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=816","0","product","","0"),
("826","1","2017-10-05 16:40:52","2017-10-05 09:40:52","<h2><strong>Bộ đồ chơi câu cá No.8050 đem đến cho bé những giờ chơi bổ ích</strong></h2>\nViệc lựa chọn đồ chơi cho bé cũng là việc mà làm cha mẹ luôn băn khoăn, để làm sao chọn cho bé những bộ đồ chơi phù hợp với sở thích và độ tuổi của bé và đặc biệt là phải an toàn khi bé sử dụng. Hiểu được tâm lý của bậc phụ huynh <strong>Kids Plaza</strong> xin giới thiêu bộ <strong>đồ chơi câu cá No.8050</strong> nằm trong bộ sưu tập đồ chơi trẻ em an toàn và thích hợp nhất cho bé. Với thiết kế an toàn, thông minh hứa hẹn sẽ đem đến cho bé những giờ chơi bổ ích nhất.\n<h3><strong>Đồ chơi câu cá No.8050 cho bé trải nhiệm cảm giác thú vị nhất</strong></h3>\n<ul>\n 	<li>Bộ sản phẩm được làm bằng chất liệu nhựa cao cấp, độ bền cao, <strong>an toàn tuyệt đối cho bé</strong>.</li>\n</ul>\n<img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 1\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-5.jpg\" alt=\"\" width=\"500\" />\n\n<em>Chất liệu nhựa cao cấp, an toàn cho bé</em>\n<ul>\n 	<li>Kích thích khả năng <strong>khéo léo, nhanh nhẹn</strong> và <strong>tính kiễn nhẫn</strong> của trẻ.</li>\n</ul>\n<ul>\n 	<li>Một bộ sản phẩm bao gồm: 2 Cần câu, 10 chú cá cho bé tập <strong>làm quen</strong> với loại hình trò chơi câu cá một cách hiệu quả nhất .</li>\n</ul>\n<img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 2\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-1.jpg\" alt=\"\" width=\"500\" />\n\n<em>Một bộ sản phẩm đồ chơi câu cá No.8050</em>\n<ul>\n 	<li>Dây cần câu có thể <strong>điều chỉnh được độ dài ngắn</strong></li>\n</ul>\n<strong><img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 3\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-7.jpg\" alt=\"\" width=\"500\" /></strong>\n\n<em>Dây cần được thiết kế thông minh có thể điều chỉnh được độ dài</em>\n<ul>\n 	<li>Sản phẩm được sản xuất theo dây chuyền công nghệ tiên tiến <strong>đạt tiêu chuẩn chất lượng Châu Âu</strong>.</li>\n 	<li>Sản phẩm có rất nhiều <strong>màu sắc tươi sáng và bắt mắt</strong> khác nhau kích thích thị giác của bé phát triển đồng thời tập cho bé cách phân biệt màu sắc .</li>\n</ul>\n<img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 4\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-2.jpg\" alt=\"\" width=\"500\" />\n\n<em>Màu sắc tươi sáng và cuốn hút đem đến sự thích thú cho bé</em>\n<ul>\n 	<li>Sản phẩm <strong>dễ dàng sử dụng</strong> với nút công tắc bật mở đơn giản</li>\n</ul>\n<img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 5\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-3.jpg\" alt=\"\" width=\"500\" />\n\n<em>Sản phẩm dễ dàng sử dụng</em>\n<ul>\n 	<li><strong>Đồ chơi câu cá No.8050 </strong>thích hợp làm quà tặng cho bé từ 3 tuổi trở lên.</li>\n 	<li>Sử dụng pin AA</li>\n</ul>\n<img class=\"aligncenter\" title=\"Đồ chơi câu cá No.8050 6\" src=\"https://kidsplaza.vn/media/catalog/product/d/o/do-choi-cau-ca-no-8050-6.jpg\" alt=\"\" width=\"500\" />\n\n<em>Đồ chơi câu cá No.8050 dễ dàng thay pin </em>","Bộ đồ chơi câu cá cho bé No.8050","","publish","open","closed","","bo-do-choi-cau-ca-cho-be-no-8050","","","2017-10-05 16:40:52","2017-10-05 09:40:52","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=826","0","product","","0"),
("827","1","2017-10-05 16:40:19","2017-10-05 09:40:19","","do-choi-cau-ca-no-8050-1","","inherit","open","closed","","do-choi-cau-ca-no-8050-1","","","2017-10-05 16:40:19","2017-10-05 09:40:19","","826","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/do-choi-cau-ca-no-8050-1.jpg","0","attachment","image/jpeg","0"),
("828","1","2017-10-05 16:43:12","2017-10-05 09:43:12","<h2><strong>Đàn cho bé hình con cua</strong></h2>\nĐàn cho bé là một món đồ chơi hữu ích, trong quá trình chơi bé sẽ sớm nhận biết được các tiếng kêu của con vật cũng như khả năng cảm thụ âm nhạc với nhiều bài hát vu tươi, phù hợp với lứa tuổi.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/a/dan-cho-be-hinh-con-cua-1.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Ưu điểm nổi bật</strong>\n<ul>\n 	<li>Có 08 phím đàn và 07 con vật khi bé “nhấn” thì sẽ phát 07 tiếng khác nhau tương ứng với từng con vật.</li>\n 	<li>Giúp bé phát triển khả năng nhận dạng mỗi loại con vật khac nhau qua tiếng kêu</li>\n 	<li>Chiếc đàn cho bé có nhiều bài hát vui tươi, sôi nổi, phù hợp với lứa tuổi của bé. Phát triển thính giác của bé toàn diện nhất.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/a/dan-cho-be-hinh-con-cua-2.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Các phím đàn in chữ Đồ rê mi dạy cho bé các nốt nhạc.</li>\n 	<li>Hình dáng chú cua ngộ nghĩnh, với các phím đàn và động vật nhiều sắc màu sẽ khiến bé thích thú.</li>\n 	<li>Nhỏ gọn giúp bé vừa chơi vừa học hỏi phát triển tư duy và trí tuệ.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/a/dan-cho-be-hinh-con-cua.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Thông tin sản phẩm:</strong>\n<ul>\n 	<li>Màu sắc : màu vàng, đỏ</li>\n 	<li>Nhóm tuổi : 3 – 6 tuổi.</li>\n 	<li>Sử dụng: Pin</li>\n 	<li>Chất liệu : nhựa cao cấp</li>\n</ul>","Đàn Organ hình con cua cho bé","","publish","open","closed","","dan-organ-hinh-con-cua-cho-be","","","2017-10-05 16:43:12","2017-10-05 09:43:12","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=828","0","product","","0"),
("829","1","2017-10-05 16:42:56","2017-10-05 09:42:56","","dan-cho-be-hinh-con-cua-1","","inherit","open","closed","","dan-cho-be-hinh-con-cua-1","","","2017-10-05 16:42:56","2017-10-05 09:42:56","","828","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/dan-cho-be-hinh-con-cua-1.jpg","0","attachment","image/jpeg","0"),
("834","1","2017-10-05 16:46:28","2017-10-05 09:46:28","<h2><strong>Xe chòi chân hình xe mô tô KPL.008</strong></h2>\nĐối với những bé dưới 12 tháng tuổi, bé cần đến những chiếc xe đẩy êm ái để có thể dạo chơi và ngắm thế giới xung quanh cùng cha mẹ. Lớn hơn một chút, bé lại cần đến và thích thú với những chiếc xe chòi chân để phát triển khả năng vận động và chơi đùa vui vẻ. Tuy nhiên cha mẹ cần phải lựa chọn chiếc xe chòi chân phù hợp với chiều cao cũng như sự phát triển của bé. Với chiếc xe chòi chân hình mô tô KPL.008 sẽ là 1 gợi ý tuyệt vời dành cho bé yêu nhà bạn. Sản phẩm được làm bằng chất liệu cao cấp cùng thiết kế chắc chắn, ngộ nghĩnh và đáng yêu không chỉ cho bé chơi đùa thoải mái, linh hoạt hơn mà còn giúp cha mẹ đảm bảo sự an toàn tối đa cho bé.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/x/e/xe-choi-chan-hinh-mo-to-le-ym-008.jpg\" alt=\"Xe chòi chân hình mô tô LE.YM.008\" width=\"500\" />\n\n<strong>Đặc điểm nổi bật của sản phẩm</strong>\n<ul>\n 	<li>Xe chòi chân được làm bằng chất liệu nhựa HDPE cao cấp, có <strong>độ bền cao, chịu lực tốt</strong> nên không dễ dàng bị nứt hay vỡ khi bé ngồi trên xe</li>\n 	<li>Chất liệu này không chứa BPA độc hại, thân thiện với môi trường và an toàn với sức khỏe của bé</li>\n 	<li>Lớp sơn phủ bên ngoài  nhẵn bóng, không chỉ, không mùi và lưu màu tốt, không bị phai trong quá trình sử dụng.</li>\n</ul>\n<ul>\n 	<li>Chiếc xe thiết kế hình chiếc xe mô tô ngộ nghĩnh, đáng yêu, là đồ chơi vận động dành cho các <strong>bé từ 1 đến 4 tuổi</strong> được đông đảo cha mẹ lựa chọn</li>\n 	<li>Thiết kế ghế ngồi rộng dài cùng điểm tựa lưng sau cao giúp <strong>bé ngồi vững chắc,</strong> tăng khả năng giữ thăng bằng, thoải mái khi di chuyển.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/x/e/xe-choi-chan-hinh-mo-to-le-ym-008-_3_.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Tay cầm của xe thiết kế các rãnh cao su mềm, chống trơn trượt, có độ cao vừa tầm với của bé giúp <strong>bé điều khiển xe dễ dàng hơn</strong>, rèn luyện khả năng định hướng, điều khiển điêu luyện hơn.</li>\n</ul>\n<div><img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/x/e/xe-choi-chan-hinh-mo-to-le-ym-008-_2_.jpg\" alt=\"\" width=\"500\" /></div>\n<ul>\n 	<li>4 Bánh xe bản to, có bề mặt tiếp xúc rộng, <strong>đảm bảo sự an toàn cho bé</strong> khi bé đi xe.</li>\n 	<li>Xe chòi chân hình chiếc xe mô tô với màu sắc đẹp mắt, nổi bật sẽ khiến bé thêm thích thú, từ đó mà tăng khả năng vận động của bé, bé sẽ linh hoạt hơn và sẽ có 1 sức khỏe tốt hơn.</li>\n 	<li>Mẹ có thể dạy bé cách nhận biết hình dạng và màu sắc thông qua món đồ chơi này, <strong>kích thích các giác quan của bé phát triển</strong>.</li>\n 	<li>Với chiếc xe chòi chân này, bé sẽ có khoảng thời gian vui chơi vui vẻ, đồng thời hoàn thiện cả về thể chất và trí tuệ của trẻ.</li>\n</ul>\n<strong>Thông tin sản phẩm</strong>\n<ul>\n 	<li>Kích thước (L*W*H):  42*26*40cm</li>\n 	<li>Độ tuổi sử dụng: 1-4 tuổi</li>\n 	<li>Chứng nhận chất lượng: EN1176, EN71, CCC, CE, 14000, 28000, GS, SGS</li>\n 	<li>Xuất xứ: Trung Quốc</li>\n</ul>","Xe chòi chân hình xe mô tô KPL.008 cho bé","4 Bánh xe bản to, có bề mặt tiếp xúc rộng, <strong>đảm bảo sự an toàn cho bé</strong> khi bé đi xe. Xe chòi chân hình chiếc xe mô tô với màu sắc đẹp mắt, nổi bật sẽ khiến bé thêm thích thú, từ đó mà tăng khả năng vận động của bé, bé sẽ linh hoạt hơn và sẽ có 1 sức khỏe tốt hơn","publish","open","closed","","xe-choi-chan-hinh-xe-mo-to-kpl-008-cho-be","","","2017-10-11 11:14:31","2017-10-11 04:14:31","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=834","0","product","","0"),
("835","1","2017-10-05 16:45:57","2017-10-05 09:45:57","","xe-choi-chan-hinh-mo-to-le-ym-008","","inherit","open","closed","","xe-choi-chan-hinh-mo-to-le-ym-008","","","2017-10-05 16:45:57","2017-10-05 09:45:57","","834","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/xe-choi-chan-hinh-mo-to-le-ym-008.jpg","0","attachment","image/jpeg","0"),
("836","1","2017-10-05 16:49:57","2017-10-05 09:49:57","<h2><strong>Đồ chơi mô hình chú hươu cao cổ vui vẻ No.603/605</strong></h2>\n<strong>Độ tuổi sử dụng: </strong>bé từ 3 tuổi trở lên\n\n<strong>Chất liệu:</strong> Nhựa an toàn\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_.JPG\" alt=\"\" width=\"500\" />\n\n<strong>Thiết kế:</strong>\n<ul>\n 	<li>Bộ đồ chơi mô hình có kiểu dáng hình chú hươu cao cổ ngộ nghĩnh, màu sắc nổi bật chắc chắn sẽ đem lại thích thú cho bé.</li>\n 	<li>Chú hươu cao cổ có thể di chuyển nhịp nhàng khi bé bật công tắc.</li>\n 	<li>Trên người chú hươu có gắn chữ cái, chữ số để bé học, khi ấn vào các chữ cái này sẽ phát ra âm thanh.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_5_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li>Ngoài ra chú hươu còn được đeo chiếc vòng có thể phát sáng, thu hút sự chú ý của bé.</li>\n</ul>","Đồ chơi mô hình chú hươu cao cổ vui vẻ No.603/605","Bộ đồ chơi mô hình có kiểu dáng hình chú hươu cao cổ ngộ nghĩnh, màu sắc nổi bật chắc chắn sẽ đem lại thích thú cho bé. Chú hươu cao cổ có thể di chuyển nhịp nhàng khi bé bật công tắc. Trên người chú hươu có gắn chữ cái, chữ số để bé học, khi ấn vào các chữ cái này sẽ phát ra","publish","open","closed","","do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603605","","","2017-10-11 11:07:57","2017-10-11 04:07:57","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=836","0","product","","1"),
("837","1","2017-10-05 16:48:59","2017-10-05 09:48:59","","do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_","","inherit","open","closed","","do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_","","","2017-10-05 16:48:59","2017-10-05 09:48:59","","836","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/do-choi-mo-hinh-chu-huou-cao-co-vui-ve-no-603-605_3_.jpg","0","attachment","image/jpeg","0"),
("838","1","2017-10-05 16:52:03","2017-10-05 09:52:03","<h2><strong>Ô tô điều khiển từ xa NT8161</strong></h2>\nNhững chiếc ô tô điều khiển không chỉ cho bé khoảng thời gian vui vẻ, thoải mái mà còn giúp tăng khả năng phản xạ, linh hoạt tay chân cũng như phát triển tư duy của trẻ. Nằm trong danh sách những mẫu siêu xe mô hình mới nhất tại Kids Plaza, chiếc ô tô điều khiển từ xa NT8161 được làm bằng chất liệu cao cấp, mô phỏng 1 cách chân thật sẽ giúp bé thể hiện bản lĩnh và khả năng điều khiển điêu luyện của bản thân.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/o-to-dieu-khien-tu-xa-nt8161-10.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Đặc điểm của sản phẩm</strong>\n<ul>\n 	<li>Xe ô tô điều khiển từ xa được làm bằng <strong>nhựa ABS cao cấ</strong>p, bề mặt nhẵn mịn, đạt chuẩn an toàn cho sức khỏe của bé.</li>\n 	<li>Cầu tạo của xe bền chắc, chịu lực tốt, hạn chế hư tổn khi bị va chạm khi đang diễn ra cuộc đua với bạn bè.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/o-to-dieu-khien-tu-xa-nt8161-6.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Với thiết kế mô phỏng một cách chân thật chiếc <strong>siêu xe đẹp mắt</strong>, giúp bé thể hiện được bản lĩnh và khả năng điều khiển, định hướng các vật thể thông qua việc tăng, giảm tốc độ xe một cách dễ dàng.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/o-to-dieu-khien-tu-xa-nt8161-5.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Hệ thống điều khiển<strong> radio (R/C) ổn định</strong> hoạt động tốt ở khoảng cách xa, cho phép bé điều khiển xe linh hoạt. Bé sẽ nhanh chóng trở thành một tay đua điệu nghệ trong mỗi cuộc thách đấu với bạn bè.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/o-to-dieu-khien-tu-xa-nt8161-8.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Khi chơi với chiếc xe, bé yêu của bạn sẽ có cơ hội được vận động nhiều hơn cả về thể chất lẫn tư duy, bé vừa chạy theo đồ chơi, vừa phải suy nghĩ hướng đi phù hợp để tránh các chướng ngại vật.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/Do-choi-mo-hinh/o-to-dieu-khien-tu-xa-nt8161-4.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Hỗ trợ việc hình thành và<strong> phát triển nhiều kỹ năng quan trọng</strong> ở trẻ như xúc giác, thị giác,...</li>\n 	<li>Kích thước : 35.5*15.5*13cm</li>\n 	<li>Đồ chơi dành cho các bé từ <strong>3 tuổi trở lên</strong></li>\n 	<li>Màu: đỏ &amp; cam</li>\n 	<li>Xuất xứ: China</li>\n</ul>","Ô tô điều khiển từ xa NT8161 cho bé","Khi chơi với chiếc xe, bé yêu của bạn sẽ có cơ hội được vận động nhiều hơn cả về thể chất lẫn tư duy, bé vừa chạy theo đồ chơi, vừa phải suy nghĩ hướng đi phù hợp để tránh các chướng ngại vật.","publish","open","closed","","o-to-dieu-khien-tu-xa-nt8161-cho-be","","","2017-10-11 10:48:19","2017-10-11 03:48:19","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=838","0","product","","0"),
("839","1","2017-10-05 16:51:35","2017-10-05 09:51:35","","o-to-dieu-khien-tu-xa-nt8161-10","","inherit","open","closed","","o-to-dieu-khien-tu-xa-nt8161-10","","","2017-10-05 16:51:35","2017-10-05 09:51:35","","838","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/o-to-dieu-khien-tu-xa-nt8161-10.jpg","0","attachment","image/jpeg","0"),
("844","1","2017-10-05 16:56:26","2017-10-05 09:56:26","<h2><strong>Đồ chơi xếp chồng chú vịt con Navy Star 69028</strong></h2>\nNhững món đồ chơi màu sắc bắt mắt và kiểu dáng đáng yêu luôn có sức hấp dẫn lớn đối với trẻ nhỏ. Không những mang lại cho bé những khoảng thời gian vui chơi thoải mái và còn góp phần phát triển các kỹ năng cho bé một cách toàn diện. Đồ chơi xếp chồng chú vịt con Navy Star 69028 sẽ là món quà ý nghĩa dành cho bé yêu.  Hơn thế nữa, sản phẩm được làm hoàn toàn từ chất liệu an toàn, tuyệt đối không gây nguy hiểm đến sức khỏe của bé.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/o/do-choi-xep-chong-chu-vit-con-navy-star-69028-.jpg\" alt=\"Đồ chơi xếp chồng chú vịt con Navy Star 69028\" width=\"500\" />\n\n<strong>Đặc điểm của sản phẩm</strong>\n<ul>\n 	<li>Bộ đồ chơi mô hình xếp chồng được làm bằng chất liệu <strong>nhựa ABS cao cấp</strong>, không chứa BPA độc hại nên rất an toàn với sức khỏe trẻ nhỏ.</li>\n 	<li>Không những vậy bề mặt của sản phẩm được xử lý nhẵn bóng, không góc cạnh, không làm tổn thương đến da bé khi cầm chơi.</li>\n 	<li>Sản phẩm có màu sắc tươi tắn, nhiều màu sắc bắt mắt sẽ <strong>kích thích thị giác</strong> của trẻ phát triển.</li>\n 	<li>Với những khối hình có hình dạng và kích thước khác nhau sẽ giúp bé nhận biết các loại hình khối đơn giản cùng như đem lại thích thú cho bé.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/o/do-choi-xep-chong-chu-vit-con-navy-star-69028--.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ngoài ra chú vịt ngộ nghĩnh phái trên đầu của khối xếp có thể phát ra âm thanh vui tai và ánh sáng đẹp mắt sẽ kích thích các giác quan của<strong> trẻ phát triển tốt nhất.</strong></li>\n 	<li>Thiết kế kích thước vừa tay cầm của bé, sẽ rèn luyện cho đôi bàn tay của bé thêm khéo kéo và linh hoạt.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/o/do-choi-xep-chong-chu-vit-con-navy-star-69028---.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Bé sẽ học cách nhận dạng và xếp các khối hình sao cho đúng thứ tự của nó, từ đó <strong>thúc đẩy tính tư duy, sáng tạo</strong> của bé hơn.</li>\n 	<li>Sản phẩm được xem là món đồ chơi thông minh được các chuyên gia tâm lý dành cho bé được đánh giá cao và khuyên dùng cho trẻ từ 12 tháng tuổi trở lên.</li>\n</ul>\n<strong>Thông tin chi tiết sản phẩm</strong>\n<ul>\n 	<li>Chất liệu: Nhựa ABS</li>\n 	<li>Độ tuổi: Dành cho bé trên 12 tháng tuổi</li>\n 	<li>Kích thước (D x R x C): 16.8 x 16.8x 23.8cm</li>\n 	<li>Pin: 3 x BR13</li>\n 	<li>Xuất xứ: HongKong</li>\n</ul>","Đồ chơi xếp chồng chú vịt con Navy Star 69028","Những món đồ chơi màu sắc bắt mắt và kiểu dáng đáng yêu luôn có sức hấp dẫn lớn đối với trẻ nhỏ. Không những mang lại cho bé những khoảng thời gian vui chơi thoải mái và còn góp phần phát triển các kỹ năng cho bé một cách toàn diện.","publish","open","closed","","do-choi-xep-chong-chu-vit-con-navy-star-69028","","","2017-10-11 10:57:42","2017-10-11 03:57:42","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=844","0","product","","0"),
("845","1","2017-10-05 16:56:08","2017-10-05 09:56:08","","do-choi-xep-chong-chu-vit-con-navy-star-69028-","","inherit","open","closed","","do-choi-xep-chong-chu-vit-con-navy-star-69028","","","2017-10-05 16:56:08","2017-10-05 09:56:08","","844","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/do-choi-xep-chong-chu-vit-con-navy-star-69028-.jpg","0","attachment","image/jpeg","0"),
("846","1","2017-10-05 16:58:39","2017-10-05 09:58:39","<h2><strong>Đồ chơi hình khối ống My Little Huimei HM132-1 bền, đẹp, an toàn</strong></h2>\nNgoài những món đồ chơi xếp chồng hay xếp hình bằng gỗ thì đồ chơi hình khối ống bằng nhựa cũng nằm trong top những món đồ chơi thông minh được các bà mẹ trên toàn thế giới lựa chọn cho bé yêu nhà mình. Đồ chơi hình khối ống My Little Huimei HM132-1 được làm từ chất liệu nhựa ABS cao cấp, <strong>thiết kế theo công nghệ khuôn mẫu Đức,</strong> rất chắc chắn và an toàn tuyệt đối với làn da của bé yêu. Hơn nữa sản phẩm có nhiều hình khối với kích cỡ và màu sắc khác nhau giúp bé nhận biết được các khối hình cũng như kích thích thị giác phát triển.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/do-choi-thong-minh/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-8.jpg\" alt=\"\" width=\"500\" />\n<h3><strong>Đặc điểm chính đồ chơi hình khối My Little Huimei HM132-1</strong></h3>\n<strong>Chất liệu cao cấp</strong>\n\nBộ sản phẩm được làm hoàn toàn bằng chất liệu nhựa <strong>ABS cao cấp, cứng cáp, không BPA,</strong> an toàn với bé\n\nChống nước tuyệt đối, có khả năng chịu va đập mạnh, rất bền đẹp\n\nBề mặt của từng chi tiết sản phẩm được xử lý nhẵn bóng mịn không làm tổn thương lên da của bé khi chơi\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/do-choi-thong-minh/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-2.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Thiết kế thông minh</strong>\n\nBộ sản phẩm gồm 138 chi tiết khác nhau sử dụng công nghệ khuôn mẫu Đức, cố định 2 miếng ghép với nhau rất chắc chắn\n\nThiết kế gồm nhiều hình khối với màu sắc đa dạng được liên kết với nhau <strong>giúp bé nhận biết được các khối hình và màu sắc</strong> ngay từ nhỏ\n\nChi tiết nhỏ nhắn vừa vặn với đôi tay của bé, dễ dàng thao tác lắp ráp các miếng ghép\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/do-choi-thong-minh/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Phát triển tối đa các giác quan</strong>\n\nKhi chơi bé phải quan sát, ghi nhớ và lắp ráp sao cho đúng khuôn mẫu giúp trí não phát triển tốt nhất\n\n<strong>Rèn luyện sự nhanh nhạy, khéo léo</strong> của đôi tay sao cho lắp đúng và chính xác\n\nRèn khả năng giao tiếp, ứng xử, tăng sự tự tin khi chơi cùng bạn bè, người thân\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/do-choi-thong-minh/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-4.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Đạt chứng nhận tiêu chẩn an toàn</strong>\n\nĐạt tiêu chuẩn xuất khẩu sang nhiều nước trên thế giới về cả độ an toàn và chất lượng\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/dochoi/do-choi-thong-minh/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-6.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Thông tin chi tiết sản phẩm</strong>\n<ul>\n 	<li>Chất liệu: Nhựa ABS</li>\n 	<li>Số lượng: 138 chi tiết</li>\n 	<li>Kích thước:  61 x 44.5 x 12 cm</li>\n 	<li>Thương hiệu: Huimei</li>\n 	<li>Xuất xứ: Trung Quốc</li>\n 	<li>Độ tuổi: dành cho bé từ 3 tuổi trở lên</li>\n</ul>","Đồ chơi hình khối ống My Little Huimei HM132-1","Ngoài những món đồ chơi xếp chồng hay xếp hình bằng gỗ thì đồ chơi hình khối ống bằng nhựa cũng nằm trong top những món đồ chơi thông minh được các bà mẹ trên toàn thế giới lựa chọn cho bé yêu nhà mình.","publish","open","closed","","do-choi-hinh-khoi-ong-my-little-huimei-hm132-1","","","2017-10-11 10:55:08","2017-10-11 03:55:08","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=846","0","product","","1"),
("847","1","2017-10-05 16:58:34","2017-10-05 09:58:34","","do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1","","inherit","open","closed","","do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1","","","2017-10-05 16:58:34","2017-10-05 09:58:34","","846","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/do-choi-hinh-khoi-ong-my-little-huimei-hm132-1-1.jpg","0","attachment","image/jpeg","0"),
("852","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi thú nhồi bông","","publish","closed","closed","","do-choi-thu-nhoi-bong","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=852","1","nav_menu_item","","0"),
("853","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi mô hình","","publish","closed","closed","","do-choi-mo-hinh","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=853","2","nav_menu_item","","0"),
("854","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi nhựa cho bé","","publish","closed","closed","","do-choi-nhua-cho-be","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=854","3","nav_menu_item","","0"),
("855","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi thông minh cho bé","","publish","closed","closed","","do-choi-thong-minh-cho-be","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=855","4","nav_menu_item","","0"),
("856","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Xe chòi chân cho bé","","publish","closed","closed","","xe-choi-chan-cho-be","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=856","5","nav_menu_item","","0"),
("857","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Cầu trượt an toàn","","publish","closed","closed","","cau-truot-an-toan","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=857","6","nav_menu_item","","0"),
("858","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi vận động","","publish","closed","closed","","do-choi-van-dong","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=858","7","nav_menu_item","","0"),
("859","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Lều bóng - Nhà bóng","","publish","closed","closed","","leu-bong-nha-bong","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=859","8","nav_menu_item","","0"),
("860","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Xe lắc cho bé","","publish","closed","closed","","xe-lac-cho-be","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=860","9","nav_menu_item","","0"),
("861","1","2017-10-05 23:35:13","2017-10-05 16:35:13","","Đồ chơi giải trí - âm nhạc","","publish","closed","closed","","do-choi-giai-tri-am-nhac","","","2017-10-06 00:01:00","2017-10-05 17:01:00","","0","https://bizhostvn.com/w/mevabe/?p=861","10","nav_menu_item","","0"),
("862","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Cặp sách cho bé","","publish","closed","closed","","cap-sach-cho-be","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=862","1","nav_menu_item","","0"),
("863","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ dùng học tập","","publish","closed","closed","","do-dung-hoc-tap","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=863","2","nav_menu_item","","0"),
("864","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Bàn học cho bé","","publish","closed","closed","","ban-hoc-cho-be","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=864","3","nav_menu_item","","0"),
("865","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Dành cho bé trai","","publish","closed","closed","","danh-cho-be-trai","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=865","4","nav_menu_item","","0"),
("866","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Dành cho bé gái","","publish","closed","closed","","danh-cho-be-gai","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=866","5","nav_menu_item","","0"),
("867","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ chơi bập bênh","","publish","closed","closed","","do-choi-bap-benh","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=867","6","nav_menu_item","","0"),
("868","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ chơi gỗ an toàn","","publish","closed","closed","","do-choi-go-an-toan","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=868","7","nav_menu_item","","0"),
("869","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ chơi trong bồn tắm","","publish","closed","closed","","do-choi-trong-bon-tam","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=869","8","nav_menu_item","","0"),
("870","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ chơi Lego","","publish","closed","closed","","do-choi-lego","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=870","9","nav_menu_item","","0"),
("871","1","2017-10-05 23:37:28","2017-10-05 16:37:28","","Đồ chơi xúc xắc","","publish","closed","closed","","do-choi-xuc-xac-ngam-nuou","","","2017-10-05 23:59:51","2017-10-05 16:59:51","","0","https://bizhostvn.com/w/mevabe/?p=871","10","nav_menu_item","","0"),
("872","1","2017-10-05 23:37:49","2017-10-05 16:37:49","","Bé học widget","","publish","closed","closed","","be-hoc-widget","","","2017-10-06 00:32:16","2017-10-05 17:32:16","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=872","0","sidebar","","0"),
("873","1","2017-10-05 23:37:57","2017-10-05 16:37:57","","Bé chơi widget","","publish","closed","closed","","be-choi-widget","","","2017-10-05 23:37:57","2017-10-05 16:37:57","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=873","0","sidebar","","0"),
("899","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Cho bé học tốt","","publish","closed","closed","","cho-be-hoc-tot","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=899","86","nav_menu_item","","0"),
("900","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Dành cho bé trai","","publish","closed","closed","","danh-cho-be-trai-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=900","87","nav_menu_item","","0"),
("901","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Dành cho bé gái","","publish","closed","closed","","danh-cho-be-gai-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=901","88","nav_menu_item","","0"),
("902","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Bàn học cho bé","","publish","closed","closed","","ban-hoc-cho-be-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=902","89","nav_menu_item","","0"),
("903","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Đồ dùng học tập","","publish","closed","closed","","do-dung-hoc-tap-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=903","90","nav_menu_item","","0"),
("904","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Cặp sách cho bé","","publish","closed","closed","","cap-sach-cho-be-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=904","91","nav_menu_item","","0"),
("905","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Đồ chơi cho bé","","publish","closed","closed","","do-choi-cho-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=905","93","nav_menu_item","","0"),
("906","1","2017-10-06 00:12:34","2017-10-05 17:12:34","","Cầu trượt an toàn","","publish","closed","closed","","cau-truot-an-toan-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=906","94","nav_menu_item","","0"),
("907","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi bập bênh","","publish","closed","closed","","do-choi-bap-benh-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=907","95","nav_menu_item","","0"),
("908","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Búp bê - thú nhồi bông","","publish","closed","closed","","bup-be-thu-nhoi-bong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=908","96","nav_menu_item","","0"),
("909","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi giải trí - âm nhạc","","publish","closed","closed","","do-choi-giai-tri-am-nhac-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=909","92","nav_menu_item","","0"),
("910","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi gỗ an toàn","","publish","closed","closed","","do-choi-go-an-toan-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=910","105","nav_menu_item","","0"),
("911","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi Lego","","publish","closed","closed","","do-choi-lego-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=911","106","nav_menu_item","","0"),
("912","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi mô hình","","publish","closed","closed","","do-choi-mo-hinh-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=912","104","nav_menu_item","","0"),
("913","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi nhựa cho bé","","publish","closed","closed","","do-choi-nhua-cho-be-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=913","97","nav_menu_item","","0"),
("914","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi thông minh","","publish","closed","closed","","do-choi-thong-minh","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=914","103","nav_menu_item","","0"),
("915","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi trong bồn tắm","","publish","closed","closed","","do-choi-trong-bon-tam-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=915","98","nav_menu_item","","0"),
("916","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi vận động","","publish","closed","closed","","do-choi-van-dong-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=916","99","nav_menu_item","","0"),
("917","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Đồ chơi xúc xắc","","publish","closed","closed","","do-choi-xuc-xac","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=917","107","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("918","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Nhà lều - nhà bóng","","publish","closed","closed","","nha-leu-nha-bong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=918","100","nav_menu_item","","0"),
("919","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Xe chòi chân của bé","","publish","closed","closed","","xe-choi-chan-cua-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=919","101","nav_menu_item","","0"),
("920","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Xe lắc cho bé","","publish","closed","closed","","xe-lac-cho-be-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=920","108","nav_menu_item","","0"),
("921","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Bé khám phá","","publish","closed","closed","","be-kham-pha","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=921","102","nav_menu_item","","0"),
("922","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Các sản phẩm khác","","publish","closed","closed","","cac-san-pham-khac","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=922","109","nav_menu_item","","0"),
("923","1","2017-10-06 00:12:35","2017-10-05 17:12:35","","Thế giới nhà bóng","","publish","closed","closed","","the-gioi-nha-bong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=923","110","nav_menu_item","","0"),
("924","1","2017-10-06 00:14:19","2017-10-05 17:14:19","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-hoc-be-choi_2.jpg","Image Column","","publish","closed","closed","","image-column-4","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=924","113","nav_menu_item","","0"),
("925","1","2017-10-06 00:13:59","2017-10-05 17:13:59","","be-hoc-be-choi_2","","inherit","open","closed","","be-hoc-be-choi_2","","","2017-10-06 00:13:59","2017-10-05 17:13:59","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/be-hoc-be-choi_2.jpg","0","attachment","image/jpeg","0"),
("926","1","2017-10-06 00:18:08","2017-10-05 17:18:08","","Thương hiệu 1","","publish","closed","closed","","thuong-hieu-1","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=926","111","nav_menu_item","","0"),
("927","1","2017-10-06 00:18:08","2017-10-05 17:18:08","","Thương hiệu 2","","publish","closed","closed","","thuong-hieu-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=927","112","nav_menu_item","","0"),
("932","1","2017-10-06 00:26:30","2017-10-05 17:26:30","","banner-Aptamil-tang","","inherit","open","closed","","banner-aptamil-tang","","","2017-10-06 00:26:30","2017-10-05 17:26:30","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banner-Aptamil-tang.png","0","attachment","image/png","0"),
("934","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Mật ong cho bé","","publish","closed","closed","","mat-ong-cho-be-2","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=934","1","nav_menu_item","","0"),
("935","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Ngũ cốc cho bé","","publish","closed","closed","","ngu-coc-cho-be-2","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=935","2","nav_menu_item","","0"),
("936","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Nước mắm cho bé","","publish","closed","closed","","nuoc-mam-cho-be","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=936","3","nav_menu_item","","0"),
("937","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Sữa bột cho bé","","publish","closed","closed","","sua-bot-cho-be-2","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=937","4","nav_menu_item","","0"),
("938","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Sữa non","","publish","closed","closed","","sua-non-2","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=938","5","nav_menu_item","","0"),
("939","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Sữa tươi cho bé","","publish","closed","closed","","sua-tuoi-cho-be-2","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=939","6","nav_menu_item","","0"),
("940","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Thức ăn dinh dưỡng","","publish","closed","closed","","thuc-an-dinh-duong","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=940","7","nav_menu_item","","0"),
("941","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Trà, nước ép, rau","","publish","closed","closed","","tra-nuoc-ep-rau","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=941","8","nav_menu_item","","0"),
("942","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Phô mai, sữa chua","","publish","closed","closed","","pho-mai-sua-chua","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=942","9","nav_menu_item","","0"),
("943","1","2017-10-06 00:29:53","2017-10-05 17:29:53","","Bánh kẹo dinh dưỡng","","publish","closed","closed","","banh-keo-dinh-duong","","","2017-10-06 00:29:53","2017-10-05 17:29:53","","0","https://bizhostvn.com/w/mevabe/?p=943","10","nav_menu_item","","0"),
("944","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Bát, đĩa, thìa, dĩa tập ăn","","publish","closed","closed","","bat-dia-thia-dia-tap-an","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=944","1","nav_menu_item","","0"),
("945","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Bình ăn dặm, bình thìa","","publish","closed","closed","","binh-an-dam-binh-thia-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=945","2","nav_menu_item","","0"),
("946","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Bộ chế biến ăn dặm","","publish","closed","closed","","bo-che-bien-an-dam-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=946","3","nav_menu_item","","0"),
("947","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Dụng cụ chia thức ăn","","publish","closed","closed","","dung-cu-chia-thuc-an","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=947","4","nav_menu_item","","0"),
("948","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Cốc - bình uống nước","","publish","closed","closed","","coc-binh-uong-nuoc-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=948","5","nav_menu_item","","0"),
("949","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Dụng cụ giữ nhiệt","","publish","closed","closed","","dung-cu-giu-nhiet-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=949","6","nav_menu_item","","0"),
("950","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Ghế ăn bột","","publish","closed","closed","","ghe-an-bot-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=950","7","nav_menu_item","","0"),
("951","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Giá úp bình sữa","","publish","closed","closed","","gia-up-binh-sua-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=951","8","nav_menu_item","","0"),
("952","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Dụng cụ rửa bình","","publish","closed","closed","","dung-cu-rua-binh","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=952","9","nav_menu_item","","0"),
("953","1","2017-10-06 00:31:59","2017-10-05 17:31:59","","Máy tiệt trùng","","publish","closed","closed","","may-tiet-trung-2","","","2017-10-06 00:31:59","2017-10-05 17:31:59","","0","https://bizhostvn.com/w/mevabe/?p=953","10","nav_menu_item","","0"),
("954","1","2017-10-06 00:32:27","2017-10-05 17:32:27","","Bé ăn bé uống 1","","publish","closed","closed","","be-an-be-uong-1","","","2017-10-06 00:32:27","2017-10-05 17:32:27","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=954","0","sidebar","","0"),
("955","1","2017-10-06 00:32:35","2017-10-05 17:32:35","","Bé ăn bé uống 2","","publish","closed","closed","","be-an-be-uong-2","","","2017-10-06 00:32:35","2017-10-05 17:32:35","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=955","0","sidebar","","0"),
("958","1","2017-10-06 00:35:59","2017-10-05 17:35:59","<h2><strong>Xe đẩy 3 bánh Family F-955 chắc chắn và an toàn dành cho bé</strong></h2>\n<ul>\n 	<li>Kiểu dáng đẹp, <strong>gọn gàng</strong>, màu sắc phối hợp hài hoà.</li>\n 	<li>Xe đạp trẻ em có tay đẩy điều khiển đằng sau, có bàn đỡ chân thích hợp cho các bé từ khoảng 10 tháng tuổi ( biết ngồi vững )</li>\n 	<li>Xe đạp 3 bánh Famiy F-955 chắc chắn và an toàn</li>\n 	<li>Được làm bằng chất liệu <strong>nhựa cao cấp </strong>an toàn cho sức khỏe của bé.</li>\n 	<li>Thiết kế chắc chắn mang lại sự an toàn nhất dành cho bé</li>\n 	<li>Đằng trước có<strong> bộ phát nhạc</strong> bên trong có hình con thú quay tít bắt mắt thu hút bé</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/x/e/xe-dap-3-banh-f955.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Giỏ xe đạp để đồ cả phía trước và phía sau</li>\n 	<li><strong>Giảm sóc cực êm</strong>, 2 bánh phụ phía dưới bàn để chân giúp cân bằng xe khi đi vào chỗ sóc</li>\n 	<li>Bàn để chân và tay đẩy có thể tháo ra cho bé tự đạp xe khi bé lớn.</li>\n 	<li>Độ tuổi: Dành cho bé từ 10 tháng trở lên</li>\n</ul>","Xe đạp đẩy 3 bánh Family F-955 cho bé yêu","<ul>\n 	<li>Kiểu dáng đẹp, <strong>gọn gàng</strong>, màu sắc phối hợp hài hoà.</li>\n 	<li>Xe đạp trẻ em có tay đẩy điều khiển đằng sau, có bàn đỡ chân thích hợp cho các bé từ khoảng 10 tháng tuổi ( biết ngồi vững )</li>\n</ul>","publish","open","closed","","xe-dap-day-3-banh-family-f-955-cho-be-yeu","","","2017-10-11 10:37:20","2017-10-11 03:37:20","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=958","0","product","","1"),
("959","1","2017-10-06 00:35:53","2017-10-05 17:35:53","","xe-dap-3-banh-f955","","inherit","open","closed","","xe-dap-3-banh-f955","","","2017-10-06 00:35:53","2017-10-05 17:35:53","","958","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/xe-dap-3-banh-f955.jpg","0","attachment","image/jpeg","0"),
("960","1","2017-10-06 00:38:04","2017-10-05 17:38:04","<h2><strong>Xếp hình tàu hỏa Anto 66, kích thích trí tuệ trẻ</strong></h2>\n<strong>Chất liệu cao cấp, an toàn</strong>\n<ul>\n 	<li>Sản phẩm đồ chơi cho bé được sản xuất 100% bằng nhựa nguyên sinh ABS, màu an toàn không gây độc hại, tuyệt đối an toàn cho sức khỏe của bé.</li>\n 	<li>Các chi tiết trong từng miếng ghép được gia công cẩn thận tránh việc bé bị những tổn thương đang tiếc</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/t/a/tau-hoa-anto-66-1.jpg\" alt=\"\" width=\"500\" height=\"500\" />\n\n<strong>Kích thích phát triển trí não toàn diện</strong>\n<ul>\n 	<li>Sản phẩm đồ chơi lắp ráp, xếp hình hỗ trợ phát triển trí tuệ và các kỹ năng cần thiết ngay từ khi còn nhỏ, bé có thể phát huy khả năng tư duy logic, sáng tạo, rèn luyện tính kiên nhẫn, sự khéo léo, cũng như trí tưởng tượng của mình qua việc lắp ráp những hình mà bé thích.</li>\n 	<li>Được thiết kế với nhiều hình ngộ nghĩnh kết hợp với màu sắc sặc sỡ hấp dẫn các em nhỏ. Sản phẩm gồm những miếng ghép nhỏ, được đựng trong hộp nhựa hình tàu hỏa gọn gàng, nhỏ gọn và tiện mang theo khi ra ngoài</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/t/a/tau-hoa-anto-66-2.jpg\" alt=\"\" width=\"500\" height=\"500\" />\n\n<strong>Thông tin chi tiết</strong>\n<ul>\n 	<li>Sản phẩm gồm 36 chi tiết.</li>\n 	<li>Màu sắc bắt mắt, tươi sáng.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/t/a/tau-hoa-anto-66-3.jpg\" alt=\"\" width=\"500\" height=\"500\" />\n<ul>\n 	<li>Kích thước miếng ghép: 40 x 20 x 33 mm (dài x rộng x cao)</li>\n 	<li>Sản phẩm là món quà thú vị cho bé yêu của bạn</li>\n 	<li>Sản phẩm phù hợp với bé từ 2 trở lên.</li>\n 	<li>Xuất xứ: <strong>Việt Nam.</strong></li>\n 	<li>Thương hiệu :<strong> Anto</strong></li>\n</ul>","Đồ chơi tàu hỏa Anto66 cho bé yêu","Sản phẩm đồ chơi lắp ráp, xếp hình hỗ trợ phát triển trí tuệ và các kỹ năng cần thiết ngay từ khi còn nhỏ, bé có thể phát huy khả năng tư duy logic, sáng tạo, rèn luyện tính kiên nhẫn, sự khéo léo, cũng như trí tưởng tượng của mình qua việc lắp ráp những hình mà bé thích.","publish","open","closed","","do-choi-tau-hoa-anto66-cho-be-yeu","","","2017-10-11 10:31:07","2017-10-11 03:31:07","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=960","0","product","","1"),
("961","1","2017-10-06 00:37:50","2017-10-05 17:37:50","","tau-hoa-anto-66-2","","inherit","open","closed","","tau-hoa-anto-66-2","","","2017-10-06 00:37:50","2017-10-05 17:37:50","","960","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/tau-hoa-anto-66-2.jpg","0","attachment","image/jpeg","0"),
("962","1","2017-10-06 00:39:49","2017-10-05 17:39:49","<h2><strong>Bánh quy ăn dặm trứng Wakodo AO3 7 tháng thơm ngon, bổ dưỡng</strong></h2>\n<strong>Thành phần: </strong>tinh bột, đường, lòng đỏ trứng có đường (9,1%), sữa gầy, canxi vỏ trứng\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/banh-an-dam-keo-dinh-duong/banh-quy-an-dam-trung-wakodo-ao3-7-thang-2.JPG\" alt=\"\" width=\"500\" />\n\n<strong>Đặc điểm của sản phẩm </strong>\n<ul>\n 	<li>Bánh ăn dặm Wakodo AO3 là thực phẩm dành cho bé trong giai đoạn ăn dặm từ 7 tháng tuổi trở lên, giúp mẹ cung cấp năng lượng cho sự phát triển toàn diện của trẻ.</li>\n 	<li>Bánh xốp giúp nước bọt dễ thấm, sẽ tan ngay khi đưa vào miệng bé, không lo bị nghẹn hay hóc khi bé ăn</li>\n 	<li>Ngoài ra còn bổ sung protein, canxi <strong>giúp bé phát triển chiều cao .</strong></li>\n</ul>\n<strong><img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/banh-an-dam-keo-dinh-duong/banh-quy-an-dam-trung-wakodo-ao3-7-thang-1.JPG\" alt=\"\" width=\"500\" /></strong>\n<ul>\n 	<li>Những chiếc bánh được thiết kế hình viên tròn nhỏ nhắn vừa vặn với bàn tay của bé, giúp cho bé dễ dàng cầm nắm và thích thú hơn khi ăn.</li>\n 	<li>Bánh quy ăn dặm trứng Wakodo AO3 7 tháng được sản xuất tại Nhật, bánh k<strong>hông sử dụng chất bảo quản</strong><strong>, không chất tạo màu, không chất tạo mùi</strong> nên rất an toàn, mẹ có thể yên tâm khi cho bé ăn.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/banh-an-dam-keo-dinh-duong/banh-quy-an-dam-trung-wakodo-ao3-7-thang-3.JPG\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Bánh có mùi vị thơm ngon sẽ kích thích bé ăn nhiều hơn.</li>\n 	<li>Đóng gói: 45g/hộp (3 túi x 15g)</li>\n 	<li>Xuất xứ: Nhật Bản.</li>\n 	<li>Hạn sử dụng: 18 tháng kể từ ngày sản xuất</li>\n</ul>","Bánh quy ăn dặm trứng Wakodo AO3 7 tháng","Bánh ăn dặm Wakodo AO3 là thực phẩm dành cho bé trong giai đoạn ăn dặm từ 7 tháng tuổi trở lên, giúp mẹ cung cấp năng lượng cho sự phát triển toàn diện của trẻ. Bánh xốp giúp nước bọt dễ thấm, sẽ tan ngay khi đưa vào miệng bé, không lo bị nghẹn hay hóc khi bé ăn","publish","open","closed","","banh-quy-an-dam-trung-wakodo-ao3-7-thang","","","2017-10-11 11:45:25","2017-10-11 04:45:25","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=962","0","product","","0"),
("963","1","2017-10-06 00:39:36","2017-10-05 17:39:36","","banh-quy-an-dam-trung-wakodo-ao3-7-thang-2","","inherit","open","closed","","banh-quy-an-dam-trung-wakodo-ao3-7-thang-2","","","2017-10-06 00:39:36","2017-10-05 17:39:36","","962","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banh-quy-an-dam-trung-wakodo-ao3-7-thang-2.jpg","0","attachment","image/jpeg","0"),
("964","1","2017-10-06 00:41:31","2017-10-05 17:41:31","<h2><strong>Bánh quy Heinz 7+ 60g, an toàn cho bé</strong></h2>\n<ul>\n 	<li>Đặc chế dành cho bé từ 7 tháng tuổi trở lên</li>\n 	<li>Bánh quy Heinz giàu dinh dưỡng, bổ sung những dưỡng chất cần thiết cho bé trong giai đoạn ăn dặm như DHA, viatmin, khoáng chất, sắt và Canxi giúp bé phát triển toàn diện cả về thể chất và trí tuệ.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/b/a/banh-quy-heinz-7-60g-1.jpg\" alt=\"\" width=\"500\" height=\"500\" />\n<ul>\n 	<li>Bánh quy Heinz thiết kế một cách đặc biệt, dạng hơi cứng, có thể tan nhanh trong miệng khi trẻ điều tiết nước bọt, thúc đẩy quá trình mọc răng và khả năng nhai của trẻ.</li>\n 	<li>Sản phẩm với hương táo hoặc chuối  thơm ngon, phù hợp với sở thích của bé</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/b/a/banh-quy-heinz-7-60g_1.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Bé có thể ăn trực tiếp hoặc ăn cùng sữa, bột</li>\n</ul>","Bánh quy Heinz 7+ 60g","Đặc chế dành cho bé từ 7 tháng tuổi trở lên. Bánh quy Heinz giàu dinh dưỡng, bổ sung những dưỡng chất cần thiết cho bé trong giai đoạn ăn dặm như DHA, viatmin, khoáng chất, sắt và Canxi giúp bé phát triển toàn diện cả về thể chất và trí tuệ.","publish","open","closed","","banh-quy-heinz-7-60g","","","2017-10-11 11:43:36","2017-10-11 04:43:36","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=964","0","product","","0"),
("965","1","2017-10-06 00:41:27","2017-10-05 17:41:27","","banh-quy-heinz-7-60g-1","","inherit","open","closed","","banh-quy-heinz-7-60g-1","","","2017-10-06 00:41:27","2017-10-05 17:41:27","","964","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banh-quy-heinz-7-60g-1.jpg","0","attachment","image/jpeg","0"),
("966","1","2017-10-06 00:43:06","2017-10-05 17:43:06","<h2><strong>Sữa Nan Nga số 2 400gr cho bé hệ tiêu hóa khỏe mạnh</strong></h2>\n<ul>\n 	<li>Là loại sữa bột cho bé giúp bổ sung chất dinh dưỡng cho quá trình phát triển trí não và cơ thể của bé.</li>\n 	<li>Giúp bé ổn định chất dinh dưỡng khi mẹ ít sữa đến quá trình cai sữa của bé.</li>\n</ul>\n<ul>\n 	<li>Với công thức đầy đủ các chất protein cần thiết cho bé.</li>\n 	<li>Các loại axit béo được tìm thấy trong thành phần sữa mẹ.</li>\n 	<li>Nuôi dưỡng hệ vi thực vật có lợi cho sức khỏe nhờ vi khuẩn biphidum BL</li>\n 	<li>Tăng cường khả năng miễn dịch cho bé.</li>\n 	<li>Cung cấp DHA cần thiết cho bé: (omega 3) và (omega 6) giúp phát triển trí não và thị lực cho bé</li>\n 	<li>Thành phần chất đạm Optipro 3 : thúc đẩy chiều cao cân đối và giúp bé thông minh hơn.</li>\n 	<li>Thành phần dinh dưỡng gồm: canxi nitrat, canxi fotfat, natri nitrat, kali clorua, natri selen, kali iốt, mantodectrin, kẽm sunfat, sắt sunfat, sữa không béo, đường lacto, dầu thực vật, chất đạm, lexitin đậu nành, dầu cá, đồng sunfat, chất nuôi cấy vi thực vật, các vitamin…</li>\n</ul>\n<div><img class=\"aligncenter\" title=\"Sữa Nan Nga số 2 400gr\" src=\"https://k.r.worldssl.net/media/catalog/product/s/u/sua-nan-nga-so-2-400gr-1_1.jpg\" alt=\"Sữa Nan Nga số 2 400gr\" width=\"500\" height=\"500\" /></div>\n<strong>Thông số sản phẩm sữa Nan Nga số 2 400gr</strong>\n<ul>\n 	<li>Sữa Nan nhập khẩu trực tiếp từ Nga.</li>\n 	<li>Nguyên hộp thiếc 400gr.</li>\n 	<li>Bảo quản ≤ 25°C.</li>\n 	<li>Dành cho bé trên 6 tháng tuổi</li>\n</ul>\n<img class=\"aligncenter\" title=\"Thông tin và cách pha sữa Nan Nga số 2 400gr\" src=\"https://k.r.worldssl.net/media/catalog/product/s/u/sua-nan-nga-so-2-400gr-2.jpg\" alt=\"Thông tin và cách pha sữa Nan Nga số 2 400gr\" width=\"500\" height=\"500\" />\n\n<em>Sữa Nan Nga Số 2 400gr được nhập khẩu trực tiếp từ Nga</em>\n\nHãy lựa chọn sữa Nan Nga số 2 800g hộp lớn để phù hợp hơn với những bé bú nhiều.","Sữa bột dinh dưỡng Nan Nga số 2 (400g) cho bé yêu","Là loại sữa bột cho bé giúp bổ sung chất dinh dưỡng cho quá trình phát triển trí não và cơ thể của bé. Giúp bé ổn định chất dinh dưỡng khi mẹ ít sữa đến quá trình cai sữa của bé.","publish","open","closed","","sua-bot-nan-nga-so-2-400g-cho-be-yeu","","","2017-10-11 11:42:02","2017-10-11 04:42:02","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=966","0","product","","1"),
("967","1","2017-10-06 00:43:03","2017-10-05 17:43:03","","sua-nan-nga-so-2-400gr-1_1","","inherit","open","closed","","sua-nan-nga-so-2-400gr-1_1","","","2017-10-06 00:43:03","2017-10-05 17:43:03","","966","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/sua-nan-nga-so-2-400gr-1_1.jpg","0","attachment","image/jpeg","0"),
("968","1","2017-10-06 00:45:07","2017-10-05 17:45:07","<h2><strong>Bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g - hương vị tuyệt hảo từ Pháp</strong></h2>\nBánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g là dòng sản phẩm rất được các mẹ yêu thích tại Kids Plaza ngay từ khi được đưa ra cửa hàng.\n\nSản phẩm không những mang đến <strong>hương vị truyền thống, hảo hạn</strong> của Pháp mà nó còn tạo sự mới lạ thay đổi khẩu vị hàng ngày cho tất cả các thành viên trong gia đình bạn.\n\nBánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g với thành phần chứa bơ tươi nên khi ăn sẽ cảm nhận được <strong>vị béo và hơi ngậy</strong> hơn so với các loại bánh khác của pháp được làm từ kem tươi\n\nBánh được cắt thành từng lát sẵn nên rất tiện lợi khi sử dụng. Bạn có thể ăn kẹp cùng xúc xích, pho mai hay chế biến thành món hamburger.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/banh-an-dam-keo-dinh-duong/banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1.jpg\" alt=\"\" width=\"500\" />\n<h3><strong>Đặc điểm chính của bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g </strong></h3>\n<ul>\n 	<li>Bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g bơ tươi dạng ổ, có trọng lượng 500g cho bé và cả gia đình thoải mái thưởng thức.</li>\n 	<li>Ổ bánh được cắt lát đều và rất đẹp mắt, tiện lợi khi sử dụng.</li>\n 	<li>Bánh thiết dạng cắt lát dễ kẹp món ăn khác như: thịt, salad, rau củ, gan ngỗng, pa-tê...</li>\n 	<li>Bánh mềm, xốp, có độ dai nhất đinh, béo ngậy cùng hương thơm đặc trưng kích thích vị giác của bé.</li>\n 	<li>Phù hợp với mọi đọ tuổi</li>\n 	<li>Đóng gói cẩn thận có thể mang theo khi đi du lịch xa</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/banh-an-dam-keo-dinh-duong/banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-2.jpg\" alt=\"\" width=\"500\" />\n\n<em>Bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g </em>","Bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g","Bánh mỳ cắt lát bơ tươi La Gâche Tranchée 500g là dòng sản phẩm rất được các mẹ yêu thích tại Kids Plaza ngay từ khi được đưa ra cửa hàng.\n\nSản phẩm không những mang đến <strong>hương vị truyền thống, hảo hạn</strong> của Pháp mà nó còn tạo sự mới lạ thay đổi khẩu vị hàng ngày cho tất cả các thành viên trong gia đình bạn.","publish","open","closed","","banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g","","","2017-10-11 11:40:38","2017-10-11 04:40:38","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=968","0","product","","0"),
("969","1","2017-10-06 00:45:02","2017-10-05 17:45:02","","banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1","","inherit","open","closed","","banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1","","","2017-10-06 00:45:02","2017-10-05 17:45:02","","968","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banh-my-cat-lat-bo-tuoi-la-gache-tranchee-500g-1.jpg","0","attachment","image/jpeg","0"),
("970","1","2017-10-06 00:46:34","2017-10-05 17:46:34","<h2><strong>Nước rửa bình Arau baby dạng chai 500ml số 1 Nhật Bản</strong></h2>\nNước rửa bình Arau baby dạng chai 500ml là sản phẩm làm sạch bình sữa và phụ kiện được rất nhiều bà mẹ trên toàn thế giới ưu chuộng không chỉ vì đó là thương hiệu nổi tiếng mà nó khác hoàn toàn các loại tẩy rửa thông thường. Sản phẩm hoàn toàn không chứa chất tẩy rửa, không hóa chất, mùi dễ chịu an toàn tuyệt đối khi cho bé sử dụng.\n\n<strong>Thành phần:</strong> có chiết xuất 100% từ lá tía tô. Không chất tạo màu, không có chất phụ gia, không chất tạo mùi và chất bảo quản. An toàn cho sức khỏe của trẻ.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/nuoc-rua-binh/nuoc-rua-binh-arau-baby-dang-chai-500ml.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Công dụng:</strong> vệ sinh bình sữa, núm ty, ty giả, dụng cụ ăn uống, đồ chơi,....\n\n<strong>Hướng dẫn sử dụng:</strong>\n\nHoà tan với nước 1 lượng nhỏ nước rửa bình arau cho vào dụng cụ cần rửa, sử dụng dụng cụ cọ rửa mềm vệ sinh\n\nSản phẩm dễ dàng tạo bọt nhanh và nhiều với các hạt nhỏ li ti. Bọt xà phòng sẽ len và từng kẽ hở và tẩy sạch các vết bẩn đảm bảo vệ sinh cho bé\n\n<strong>Đa công dụng</strong>\n\nCó thể sử dụng nước rửa để tiệt trùng vệ sinh bình sữa, đĩa ăn, núm ty, ty giả, đồ chơi cho bé,...\n\n<strong>Thiết kế tiện lợi</strong>\n\nSản phẩm có thiết kế dạng chai có vòi tiện dụng cho mẹ và vệ sinh cho bé.\n\nDung tích : 500ml\n\nSản xuất tại Nhật Bản","Nước rửa bình Arau baby dạng chai 500ml","Và để tặng hiệu quả và giảm giá thành sản phẩm không tí các nhà sản xuấ nước rửa bình sữa giá rẻ lại sẵn sàng sử dụng hóa chất tẩy rửa tổng hợp và phụ gia.","publish","open","closed","","nuoc-rua-binh-arau-baby-dang-chai-500ml","","","2017-10-11 11:39:06","2017-10-11 04:39:06","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=970","0","product","","0"),
("971","1","2017-10-06 00:46:21","2017-10-05 17:46:21","","nuoc-rua-binh-arau-baby-dang-chai-500ml","","inherit","open","closed","","nuoc-rua-binh-arau-baby-dang-chai-500ml","","","2017-10-06 00:46:21","2017-10-05 17:46:21","","970","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/nuoc-rua-binh-arau-baby-dang-chai-500ml.jpg","0","attachment","image/jpeg","0"),
("972","1","2017-10-06 00:48:23","2017-10-05 17:48:23","<h2><strong>Sữa chua hoa quả Kids Mix 4x50g</strong></h2>\n<strong>Thành phần: </strong>Sữa chua (42.6%), kem phô mai (22.9%), đường, nước, hoa quả nghiền (dâu, chuối, mâm xôi...) 4%, kem, tinh bột, Glucose – fuctose, nước ép táo cô đặc, Canxi lactate, axit citron các loại Vitamin (B2, B12, D3)…\n\n<strong>Giá trị dinh dưỡng trong 100g sữa chua</strong>\n\nNăng lượng        :  132Kcal\n\nProtein                 :   4.3g\n\nChất béo             :   4.5g\n\nCarbohydrate    :   16.1g\n\nVitamin D            :   0.86µg\n\nVitamin B12        :    0.7µg\n\nCanxi                    :   154mg\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/vang-sua-pho-mai-sua-chua/sua-chua-hoa-qua-kids-mix-4x50g.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Công dụng</strong>\n<ul>\n 	<li>Sữa chua hoa quả Kids Mix <strong>bổ sung các vitamin</strong> giúp tăng cường sức đề kháng và cũng như kích thích bé ăn ngon miệng hơn.</li>\n 	<li>Các vi lợi khuẩn như  Lactobacillus Acidophilus và Bifido Bacterium được hình thành sau quá trình ủ lên men có trong sản phẩm sẽ <strong>kích thích hệ tiêu hóa</strong> của bé phát triển.</li>\n</ul>\n<ul>\n 	<li>Trong 100g sữa chua Kids Mix có chứa khoảng 154mg Canxi. Do đó, trẻ đang trong độ tuổi dậy thì nên ăn sữa chua hàng ngày để tăng trưởng tốt hơn.</li>\n 	<li>Không những vậy, vị ngọt ngọt chua chua, béo và thơm mát kết hợp hương vị thơm ngon của các loại hoa quả (chuối, mơ, lê, dâu) sẽ tạo hứng thú hơn cho bé khi ăn cũng như <strong>kích thích vị giác</strong> của trẻ.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/vang-sua-pho-mai-sua-chua/sua-chua-hoa-qua-kids-mix-4x50g-_2_.jpg\" alt=\"\" width=\"500\" /></li>\n 	<li>Ngoài vai trò cực kỳ tốt cho bé thì ăn sữa chua còn <strong>hạn chế cảm giác đói</strong> nên rất thích hợp cho những người đang trong chế độ giảm cân nữa đó mẹ nhé.</li>\n 	<li>Sản phẩm đảm bảo vệ sinh an toàn thực phẩm, đạt chất lượng theo tiêu chuẩn khắt khe của Châu Âu.</li>\n 	<li>Một vỉ gồm 4 hộp, mỗi hộp 50g.</li>\n 	<li>Bảo quản ở ngăn mát tủ lạnh, nhiệt độ 4 - 8ºC.</li>\n 	<li>Xuất xứ: Đức</li>\n</ul>","Sữa chua hoa quả Kids Mix 4x50g","Siro Kanguru không chỉ cung cấp cho bé lượng canxi dồi dào mà còn cải thiện giấc ngủ, giúp bé phát triển chiều cao, tăng khả năng hấp thụ dưỡng chất và đặc biệt an toàn cho hệ tiêu hóa của trẻ nhỏ.","publish","open","closed","","sua-chua-hoa-qua-kids-mix-4x50g","","","2017-10-11 11:37:02","2017-10-11 04:37:02","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=972","0","product","","0"),
("973","1","2017-10-06 00:48:19","2017-10-05 17:48:19","","sua-chua-hoa-qua-kids-mix-4x50g-_2_","","inherit","open","closed","","sua-chua-hoa-qua-kids-mix-4x50g-_2_","","","2017-10-06 00:48:19","2017-10-05 17:48:19","","972","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/sua-chua-hoa-qua-kids-mix-4x50g-_2_.jpg","0","attachment","image/jpeg","0"),
("974","1","2017-10-06 00:50:04","2017-10-05 17:50:04","<h2><strong>Dinh dưỡng trái cây Fleur Alpine Organic vị táo, mận khô</strong></h2>\n<strong>Thành phần</strong>: táo xay nhuyễn, mận khô nghiền.\n\n<strong>Giá trị dinh dưỡng trong 100g: </strong>\n\nNăng lượng           :    42,7 kcal\n\nCarbohydrate        :    10,5 g\n\nProtein                    :    0,53 g\n\nChất rắn hòa tan   :   18%\n\nKali                          :   226 mg\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/thuc-pham-dong-lo/dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho.jpeg\" alt=\"\" width=\"500\" />\n\n<strong>Đặc tính sản phẩm</strong>\n<ul>\n 	<li>Dinh dưỡng đóng lọ Fleur Alpine được làm bằng 100% trái cây (táo, mận chín đã được phơi khô dưới ánh mặt trời).</li>\n 	<li>Táo rất giàu các loại đường tự nhiên, axit hữu cơ, vitamin và nguyên tố vi lượng. Sắt kết hợp với vitamin C được hấp thu tốt trong ruột, góp phần ngăn ngừa bệnh thiếu máu. Pectin và axit hữu cơ nhẹ nhàng kích thích hoạt động ruột. Kali và magiê tăng cường hệ tim mạch.</li>\n 	<li>Mận rất giàu khoáng chất, vitamin, axit hữu cơ và các nguyên tố vi lượng. Hàm lươngk kali cao giúp ngăn ngừa các bệnh tim mạch. <span class=\"goog-text-highlight\">Mận có tác dụng nhuận tràng nhẹ, diễn xuất rất tế nhị và được khuyến khích cho táo bón và mất trương lực</span></li>\n 	<li>Không bổ sung thêm tinh bột, bột mì, muối, đường, vitamin, nước</li>\n 	<li>Không thành phần biến đổi gen (GMO), không thuốc trừ sâu, không phân bón hóa học, không hoóc môn tăng trưởng, không chất bảo quản, không chất phụ gia<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/thuc-pham-dong-lo/dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho-.jpeg\" alt=\"\" width=\"500\" /></li>\n</ul>\n<strong>Hướng dẫn sử dụng</strong>: Sản phẩm dùng trực tiếp. Mở nắp và nhấn tuýp dùng trực tiếp\n\n<strong>Lời khuyên khi sử dụng</strong>: Nên dùng trước một muỗng cà phê, liều lượng: 2 lần/ngày Tăng dần để phù hợp với lứa tuổi của trẻ hoặc làm theo khuyến cáo của bác sĩ.\n\n<strong>Bảo quản</strong>: Bảo quản ở nhiệt độ 0°C đến + 25°С và độ ẩm - không quá 75%. Bảo quản trong tủ lạnh và sử dụng sau khi mở nắp không quá 24h.\n\n<strong>Thời hạn sử dụng:</strong> 15 tháng kể từ ngày sản xuất ghi trên bao bì sản phẩm. Dòng trên là ngày sản xuất , dòng dưới là ngày hết hạn và số lô.\n\n<strong>Nhà sản xuất:</strong> The Natural Fruit &amp; Beverage CompanyViewfield Park, Viewfield Road, Coatbridge, ML55QS, Scotland","Dinh dưỡng trái cây Fleur Alpine Organic vị táo, mận khô","","publish","open","closed","","dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho","","","2017-10-11 11:35:00","2017-10-11 04:35:00","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=974","0","product","","0"),
("975","1","2017-10-06 00:50:00","2017-10-05 17:50:00","","dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho-","","inherit","open","closed","","dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho","","","2017-10-06 00:50:00","2017-10-05 17:50:00","","974","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/dinh-duong-trai-cay-fleur-alpine-organic-vi-tao-man-kho-.jpeg","0","attachment","image/jpeg","0"),
("976","1","2017-10-06 00:52:00","2017-10-05 17:52:00","<h2><strong>Ghế ăn cho bé siêu gấp gọn 4 cấp độ Kiza (màu xanh lá)</strong></h2>\n<div class=\"box-buy-detail\">\n\nVới ghế ăn siêu gấp gọn 4 cấp độ Kiza (màu xanh lá) cho bé cảm giác thoải mái. Ghế được thiết kế có kèm theo bàn ăn có phần để cốc riêng cùng các nấc điều chỉnh độ cao giúp cha mẹ chăm sóc bé từng bữa ăn một cách dễ dàng nhất. Sản phẩm được thiết kế với khả năng siêu gấp gọn giúp mẹ có thể mang ghế cho bé ăn đi mọi nơi một cách tiện dụng nhất. Hãy cho bé yêu tập ăn dặm mỗi ngày bằng chiếc ghế tiện lợi này.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1.jpg\" alt=\"\" width=\"500\" />\n<h3><strong>Đặc điểm nổi trội ghế ăn siêu gấp gọn 4 cấp độ Kiza (màu xanh lá)</strong></h3>\n<ul>\n 	<li style=\"list-style-type: none;\">\n<ul>\n 	<li>Ghế ngồi ăn cho bé siêu gấp gọn 4 cấp độ Kiza (màu xanh lá) sử dụng thích hợp cho bé từ <strong>6 tháng tuổi trở lên.</strong></li>\n 	<li>Ghế ăn thông minh điều chỉnh độ cao linh hoạt và thích hợp với mọi bộ bàn ghế ăn gia đình. Hơn nữa ghế có 2 dây buộc cố định chắc chắn ghế ăn Kiza với ghế ăn của gia đình bạn để bé có thể chung vui cùng bữa cơm gia đình.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la_10_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li><strong>Ghế có 4 nấc điều chỉnh</strong> cao thấp, dễ dàng thao tác với nút bấm nằm ở mặt đáy ghế.</li>\n</ul>\n</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-duong-20.gif\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Thiết kế gập thông minh, gọn nhẹ nên tiện lợi để mang đi xa, di chuyển cùng bé và gia đình.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la_11_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li>Màu sắc ấn tượng, bắt mắt ghế ăn siêu gấp gon 4 cấp độ Kiza giúp giờ ăn của bé trở nên vui vẻ và sinh động hơn.</li>\n 	<li><strong>Khay ăn có thể tháo rời dễ dàng</strong> khi bé ngồi ăn chung bàn cùng cả nhà.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la_2_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li>Bề mặt ghế và khay ăn trơn, <strong>dễ dàng lau chùi, vệ sinh sạch sẽ</strong>.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la_5_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li>Ghế ăn siêu gấp gọn 4 cấp độ Kiza <strong>có dây an toàn cho bé và dây đai</strong> để giữ ghế chắc trên ghế ăn người lớn.<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la_4_.JPG\" alt=\"\" width=\"500\" /></li>\n 	<li>Ghế ăn Kiza nhỏ nhắn nhưng lại có tác dụng lớn trong việc hỗ trợ cho bé khi ngồi ăn cùng gia đình. Từ đó, bé có thể tập làm quen với việc tự lập ngồi ăn và vẫn có thể học hỏi và giao tiếp với người thân trong bữa ăn chung cùng cả nhà.</li>\n 	<li>Sản phẩm có dây quai đeo và quai xách ở lưng ghế, tiện lợi khi mang theo, di chuyển trong mỗi chuyến đi cùng cả gia đình.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/be-an-be-uong/ghe-an-dam/ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-2.jpg\" alt=\"\" width=\"500\" />\n\n<em>Ghế ăn siêu gấp gọn 4 cấp độ Kiza (màu xanh lá)</em>\n\n</div>","Ghế ăn siêu gấp gọn 4 cấp độ Kiza (màu xanh lá)","","publish","open","closed","","ghe-an-sieu-gap-gon-4-cap-do-kiza-mau-xanh-la","","","2017-10-11 11:28:49","2017-10-11 04:28:49","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=976","0","product","","0"),
("977","1","2017-10-06 00:51:57","2017-10-05 17:51:57","","ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1","","inherit","open","closed","","ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1","","","2017-10-06 00:51:57","2017-10-05 17:51:57","","976","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/ghe-an-dieu-chinh-do-cao-kiza-mau-xanh-la-1.jpg","0","attachment","image/jpeg","0"),
("979","1","2017-10-06 00:54:08","2017-10-05 17:54:08","","logo-bubchen","","inherit","open","closed","","logo-bubchen","","","2017-10-06 00:54:08","2017-10-05 17:54:08","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo-bubchen.jpg","0","attachment","image/jpeg","0"),
("981","1","2017-10-06 00:54:38","2017-10-05 17:54:38","","logo-goon","","inherit","open","closed","","logo-goon","","","2017-10-06 00:54:38","2017-10-05 17:54:38","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo-goon.png","0","attachment","image/png","0"),
("983","1","2017-10-06 00:55:00","2017-10-05 17:55:00","","Logo-merries","","inherit","open","closed","","logo-merries","","","2017-10-06 00:55:00","2017-10-05 17:55:00","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Logo-merries.jpg","0","attachment","image/jpeg","0"),
("985","1","2017-10-06 00:55:20","2017-10-05 17:55:20","","logo_bobby_1","","inherit","open","closed","","logo_bobby_1","","","2017-10-06 00:55:20","2017-10-05 17:55:20","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo_bobby_1.jpg","0","attachment","image/jpeg","0"),
("987","1","2017-10-06 00:55:39","2017-10-05 17:55:39","","kiza_logo","","inherit","open","closed","","kiza_logo","","","2017-10-06 00:55:39","2017-10-05 17:55:39","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/kiza_logo.jpg","0","attachment","image/jpeg","0"),
("989","1","2017-10-06 00:55:58","2017-10-05 17:55:58","","Chicco_logo","","inherit","open","closed","","chicco_logo","","","2017-10-06 00:55:58","2017-10-05 17:55:58","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Chicco_logo.png","0","attachment","image/png","0"),
("991","1","2017-10-06 00:56:18","2017-10-05 17:56:18","","logo_moony","","inherit","open","closed","","logo_moony","","","2017-10-06 00:56:18","2017-10-05 17:56:18","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo_moony.jpg","0","attachment","image/jpeg","0"),
("993","1","2017-10-06 00:56:35","2017-10-05 17:56:35","","ange","","inherit","open","closed","","ange","","","2017-10-06 00:56:35","2017-10-05 17:56:35","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/ange.png","0","attachment","image/png","0"),
("995","1","2017-10-06 00:57:08","2017-10-05 17:57:08","","Simba-logo","","inherit","open","closed","","simba-logo","","","2017-10-06 00:57:08","2017-10-05 17:57:08","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Simba-logo.png","0","attachment","image/png","0"),
("997","1","2017-10-06 00:57:35","2017-10-05 17:57:35","","logo-farlin","","inherit","open","closed","","logo-farlin","","","2017-10-06 00:57:35","2017-10-05 17:57:35","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo-farlin.jpg","0","attachment","image/jpeg","0"),
("1000","1","2017-10-06 00:58:43","2017-10-05 17:58:43","","mamago_logo2","","inherit","open","closed","","mamago_logo2","","","2017-10-06 00:58:43","2017-10-05 17:58:43","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/mamago_logo2.jpg","0","attachment","image/jpeg","0"),
("1001","1","2017-10-06 00:59:02","2017-10-05 17:59:02","","logo-Aprica","","inherit","open","closed","","logo-aprica","","","2017-10-06 00:59:02","2017-10-05 17:59:02","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/logo-Aprica.jpg","0","attachment","image/jpeg","0"),
("1003","1","2017-10-06 00:59:24","2017-10-05 17:59:24","","image138","","inherit","open","closed","","image138","","","2017-10-06 00:59:24","2017-10-05 17:59:24","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/image138.jpg","0","attachment","image/jpeg","0"),
("1005","1","2017-10-06 00:59:48","2017-10-05 17:59:48","","image173","","inherit","open","closed","","image173","","","2017-10-06 00:59:48","2017-10-05 17:59:48","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/image173.jpg","0","attachment","image/jpeg","0"),
("1016","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa - vắt sữa","","publish","closed","closed","","may-hut-sua-vat-sua","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1016","115","nav_menu_item","","0"),
("1017","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa Mamago","","publish","closed","closed","","may-hut-sua-mamago","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1017","116","nav_menu_item","","0"),
("1018","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa Mother-V","","publish","closed","closed","","may-hut-sua-mother-v","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1018","117","nav_menu_item","","0"),
("1019","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa Medela","","publish","closed","closed","","may-hut-sua-medela","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1019","118","nav_menu_item","","0"),
("1020","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa Avent","","publish","closed","closed","","may-hut-sua-avent","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1020","119","nav_menu_item","","0"),
("1021","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Máy hút sữa Spectra","","publish","closed","closed","","may-hut-sua-spectra","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1021","120","nav_menu_item","","0"),
("1022","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Đồ cho mẹ bầu","","publish","closed","closed","","do-cho-me-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1022","121","nav_menu_item","","0"),
("1023","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Sữa cho mẹ bầu","","publish","closed","closed","","sua-cho-me-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1023","122","nav_menu_item","","0"),
("1024","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Kem chống rạn da","","publish","closed","closed","","kem-chong-ran-da","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1024","126","nav_menu_item","","0"),
("1025","1","2017-10-06 10:05:15","2017-10-06 03:05:15","","Gối đa năng mẹ bầu","","publish","closed","closed","","goi-da-nang-me-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1025","123","nav_menu_item","","0"),
("1026","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Tai nghe mẹ bầu","","publish","closed","closed","","tai-nghe-me-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1026","124","nav_menu_item","","0"),
("1027","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Đai đỡ bụng mẹ bầu","","publish","closed","closed","","dai-do-bung-me-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1027","125","nav_menu_item","","0"),
("1028","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Vitamin - dinh dưỡng","","publish","closed","closed","","vitamin-dinh-duong","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1028","127","nav_menu_item","","0"),
("1029","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Đồ cho mẹ sau sinh","","publish","closed","closed","","do-cho-me-sau-sinh","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1029","128","nav_menu_item","","0"),
("1030","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Bỉm - đồ dùng vệ sinh","","publish","closed","closed","","bim-do-dung-ve-sinh","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1030","129","nav_menu_item","","0"),
("1031","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Gel bụng - nịt bụng","","publish","closed","closed","","gel-bung-nit-bung","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1031","132","nav_menu_item","","0"),
("1032","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Túi đựng đồ mẹ & bé","","publish","closed","closed","","tui-dung-do-me-be","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1032","130","nav_menu_item","","0"),
("1033","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Áo cho con bú","","publish","closed","closed","","ao-cho-con-bu","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1033","131","nav_menu_item","","0"),
("1034","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Thấm sữa - trợ ti","","publish","closed","closed","","tham-sua-tro-ti","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1034","133","nav_menu_item","","0"),
("1035","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Quần áo sau sinh","","publish","closed","closed","","quan-ao-sau-sinh","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1035","134","nav_menu_item","","0"),
("1036","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Các sản phẩm khác","","publish","closed","closed","","cac-san-pham-khac-2","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1036","135","nav_menu_item","","0"),
("1037","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Túi trữ sữa","","publish","closed","closed","","tui-tru-sua","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1037","136","nav_menu_item","","0"),
("1038","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Dầu gội - sữa tắm","","publish","closed","closed","","dau-goi-sua-tam","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1038","137","nav_menu_item","","0"),
("1039","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Mỹ phẩm - làm đẹp","","publish","closed","closed","","my-pham-lam-dep","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1039","138","nav_menu_item","","0"),
("1040","1","2017-10-06 10:05:16","2017-10-06 03:05:16","","Thời trang bầu","","publish","closed","closed","","thoi-trang-bau","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1040","139","nav_menu_item","","0"),
("1041","1","2017-10-06 10:04:42","2017-10-06 03:04:42","","me-an-toan","","inherit","open","closed","","me-an-toan","","","2017-10-06 10:04:42","2017-10-06 03:04:42","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/me-an-toan.jpg","0","attachment","image/jpeg","0"),
("1042","1","2017-10-06 10:05:16","2017-10-06 03:05:16","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/me-an-toan.jpg","Image","","publish","closed","closed","","image","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1042","140","nav_menu_item","","0"),
("1044","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Thời trang bầu","","publish","closed","closed","","thoi-trang-bau-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1044","1","nav_menu_item","","0"),
("1045","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Mỹ phẩm - làm đẹp","","publish","closed","closed","","my-pham-lam-dep-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1045","2","nav_menu_item","","0"),
("1046","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Túi trữ sữa","","publish","closed","closed","","tui-tru-sua-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1046","3","nav_menu_item","","0"),
("1047","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Quần áo sau sinh","","publish","closed","closed","","quan-ao-sau-sinh-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1047","4","nav_menu_item","","0"),
("1048","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Thấm sữa - trợ ti","","publish","closed","closed","","tham-sua-tro-ti-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1048","5","nav_menu_item","","0"),
("1049","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Gel bụng - nịt bụng","","publish","closed","closed","","gel-bung-nit-bung-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1049","6","nav_menu_item","","0");
INSERT INTO bz_posts VALUES
("1050","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Áo cho con bú","","publish","closed","closed","","ao-cho-con-bu-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1050","7","nav_menu_item","","0"),
("1051","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Kem chống rạn da","","publish","closed","closed","","kem-chong-ran-da-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1051","8","nav_menu_item","","0"),
("1052","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Đai bụng bà bầu","","publish","closed","closed","","dai-bung-ba-bau","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1052","9","nav_menu_item","","0"),
("1053","1","2017-10-06 10:18:08","2017-10-06 03:18:08","","Gối đa năng mẹ bầu","","publish","closed","closed","","goi-da-nang-me-bau-2","","","2017-10-06 10:18:08","2017-10-06 03:18:08","","0","https://bizhostvn.com/w/mevabe/?p=1053","10","nav_menu_item","","0"),
("1054","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Sữa cho bà bầu","","publish","closed","closed","","sua-cho-ba-bau","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1054","1","nav_menu_item","","0"),
("1055","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Tai nghe bà bầu","","publish","closed","closed","","tai-nghe-ba-bau","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1055","2","nav_menu_item","","0"),
("1056","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Kem chống rạn da","","publish","closed","closed","","kem-chong-ran-da-3","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1056","3","nav_menu_item","","0"),
("1057","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Bỉm - đồ dùng vệ sinh","","publish","closed","closed","","bim-do-dung-ve-sinh-2","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1057","4","nav_menu_item","","0"),
("1058","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Túi đồ mẹ - bé","","publish","closed","closed","","tui-do-me-be","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1058","5","nav_menu_item","","0"),
("1059","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Áo cho con bú","","publish","closed","closed","","ao-cho-con-bu-3","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1059","6","nav_menu_item","","0"),
("1060","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Máy hút sữa Mamago","","publish","closed","closed","","may-hut-sua-mamago-2","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1060","7","nav_menu_item","","0"),
("1061","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Máy hút sữa Mother-V","","publish","closed","closed","","may-hut-sua-mother-v-2","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1061","8","nav_menu_item","","0"),
("1062","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Máy hút sữa Medela","","publish","closed","closed","","may-hut-sua-medela-2","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1062","9","nav_menu_item","","0"),
("1063","1","2017-10-06 10:20:44","2017-10-06 03:20:44","","Máy hút sữa Avent","","publish","closed","closed","","may-hut-sua-avent-2","","","2017-10-06 10:20:44","2017-10-06 03:20:44","","0","https://bizhostvn.com/w/mevabe/?p=1063","10","nav_menu_item","","0"),
("1064","1","2017-10-06 10:21:24","2017-10-06 03:21:24","","banner_Medela_tang_1","","inherit","open","closed","","banner_medela_tang_1","","","2017-10-06 10:21:24","2017-10-06 03:21:24","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/banner_Medela_tang_1.png","0","attachment","image/png","0"),
("1066","1","2017-10-06 10:22:18","2017-10-06 03:22:18","","Mẹ an tâm 1","","publish","closed","closed","","me-an-tam-1","","","2017-10-06 10:22:18","2017-10-06 03:22:18","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=1066","0","sidebar","","0"),
("1067","1","2017-10-06 10:22:27","2017-10-06 03:22:27","","Mẹ an tâm 2","","publish","closed","closed","","me-an-tam-2","","","2017-10-06 10:22:27","2017-10-06 03:22:27","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=1067","0","sidebar","","0"),
("1071","1","2017-10-06 10:27:20","2017-10-06 03:27:20","<h2><strong>Ghế rung, bập bênh Newborn to Toddler Kiza  - Cùng mẹ chăm sóc bé!</strong></h2>\nMang thai và sinh con là niềm vui vô bờ bến và thiêng liêng của các bậc làm cha mẹ, nhất là đối với những người lần đầu làm cha mẹ. Vì vậy các ông bố bà mẹ luôn đầu tư rất nhiều thời gian vào việc nghiên cứu, tìm hiểu để mua sắm các vật dụng tốt nhất chăm sóc cho bé yêu, nhất là những vật dụng liên quan đến bữa ăn giấc ngủ của con.\n\nThấu hiểu những mong muốn từ bố mẹ, thương hiệu Kiza cho ra đời sản phẩm ghế rung cao cấp Kiza với thiết kế thông minh, chắc chắn và an toàn nhằm hỗ trợ đáng kể trong việc mang đến cho bé những bữa ăn ngon miệng và giấc ngủ sâu hơn.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza.jpg\" alt=\"\" width=\"500\" />\n<h3><strong>Ghế rung, bập bênh Newborn to Toddler Kiza - mang lại sự an toàn cho bé và tiện dụng nhất cho mẹ !</strong></h3>\n<strong>Chất liệu cao cấp</strong>\n<ul>\n 	<li>Khung ghế được làm bằng chất liệu kim loại không rỉ, không bị oxy hóa, bền đẹp theo thời gian</li>\n 	<li>Vải bọc ghế được thiết kế với hoa văn đẹp mắt và làm bằng chất liệu thấm hút tốt, thông thoáng, phù hợp sử dụng cho cả những mùa hè oi bức.</li>\n 	<li>Chất liệu vải bọc đã <strong>được viện dệt may chứng nhận</strong> nên an toàn tuyệt đối cho sức khỏe của bé, cha mẹ hoàn toàn an tâm khi sử dụng sản phẩm này cho con yêu</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-6.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Thiết kế thông minh</strong>\n<div>\n<ul>\n 	<li>Thiết kế khung ghế chắc chắn, độ chịu lực cao, trọng lượng tối đa 18kg. Dành cho các bé từ 0m đến 4 tuổi.</li>\n 	<li>Hệ thống đai khóa 3 chốt an toàn cùng chân đế chắc chắn, không trơn trượt nên cha mẹ hoàn toàn an tâm khi sử dụng ghế cho con yêu</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-5.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ghế có<strong> 3 vị trí tựa lưng có thể điều chỉnh</strong> cho bé: nằm, nghiêng và ngồi thẳng . Mẹ có thể dễ dàng điều chỉnh từ chế độ nghiêng sang tư thế ngồi hay nằm vô cùng thuận tiện, phù hợp với từng giai đoạn lớn của bé.</li>\n 	<li>Chiếc ghế rung có thể trở thành một chiếc giường êm ái và chắc chắn chỉ sau vài thao tác điều chỉnh. Lúc này, phần gối lõm êm ái trên ghế hỗ trợ rất tốt cho cổ và lưng của trẻ qua đó đảm bảo trẻ có được một giấc ngủ sâu và dễ chịu.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-13.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li><strong>Ghế có chế độ rung nhẹ nhàng với nhiều nấc rung</strong> khác nhau có thể giúp trẻ chìm vào giấc ngủ dễ dàng, ngay cả những trẻ khó ngủ cũng sẽ tìm được một giấc ngủ êm ái.</li>\n 	<li>Khi cho trẻ ăn, ghế có thể được điều chỉnh về góc ngồi thẳng giúp việc cho trẻ ăn trở nên dễ dàng và trẻ sẽ tiêu hóa thức ăn tốt hơn.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-5.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Bao nệm ghế có thể <strong>tháo rời để giặt sạch</strong>, do đó với những bé hay nghịch thức ăn, mẹ sẽ không còn phải lo lắng và khó chịu.</li>\n 	<li>Thanh chắn treo đồ chơi trước ghế được bọc vài cẩn thận tránh những tổn thương lên làn da của bé. Thanh chắn có thể tháo rời tiện dụng khi mẹ cho bé ăn hay cho bé ngủ.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-1.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Những món đồ chơi nhiều màu sắc, hình dáng và chức năng khác nhau sẽ giúp bé học cách quan sát, khả năng cầm nắm, ghi nhớ cũng như phối hợp tay mắt, <strong>kích thích thị giác</strong>của bé phát triển</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-3.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ghế rung có thể phát ra <strong>âm thanh vui tai, s</strong>ống động khuyến khích sự học hỏi và phát triển thính giác của bé, khả năng nghe của bé sẽ nhạy bén hơn.</li>\n 	<li>Cũng như thanh chắn đồ chơi, củ rung phát nhạc cũng có thể tháo rời khi bé lớn hơn 1 chút chỉ bằng 1 thao tác đơn giản</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-11.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Chiếc ghế có trọng lượng nhẹ, <strong>dễ dàng gấp gọn</strong> lại, tiện lợi khi đi du lịch, đi ra ngoài chỉ bằng 1 vài thao tác đơn giản</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cc-kiza-12.jpg\" alt=\"\" width=\"500\" />\n<div>\n\n<strong>Thông tin sản phẩm</strong>\n\n</div>\n</div>\n<ul>\n 	<li>Xuất xứ<strong>: </strong> Thương hiệu Kiza</li>\n 	<li>Trọng lượng:<strong> </strong>2,5 kg</li>\n 	<li>Đóng gói: 3,2 kg</li>\n 	<li>Kích thước (R x C x D): 44x16x85cm</li>\n 	<li>Dành cho bé từ 0-4 tuổi</li>\n 	<li>Bảo hành: 6 tháng (Lưu ý chỉ bảo hành củ rung)</li>\n</ul>","Ghế rung, bập bênh Newborn to Toddler Kiza","Mang thai và sinh con là niềm vui vô bờ bến và thiêng liêng của các bậc làm cha mẹ, nhất là đối với những người lần đầu làm cha mẹ.","publish","open","closed","","ghe-rung-bap-benh-newborn-to-toddler-kiza","","","2017-10-11 13:28:41","2017-10-11 06:28:41","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1071","0","product","","0"),
("1072","1","2017-10-06 10:27:14","2017-10-06 03:27:14","","ghe-rung-5","","inherit","open","closed","","ghe-rung-5","","","2017-10-06 10:27:14","2017-10-06 03:27:14","","1071","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/ghe-rung-5.jpg","0","attachment","image/jpeg","0"),
("1073","1","2017-10-06 10:28:52","2017-10-06 03:28:52","<h2><strong>Đai nịt bụng KuKu s750</strong> <strong>giúp mẹ lấy lại vóc dáng thon gọn sau khi sinh</strong></h2>\n<strong>C</strong>ác mẹ sau khi sinh đau đầu nhất là vòng 2 không còn thon thả nữa. <strong>Đai nịt bụng KuKu s750 </strong>thương hiệu Kuku sẽ giúp mẹ xóa tan lo lắng này. Sản phẩm được sản xuất từ chất liệu vải mềm, co dãn tốt, là sự đồ dùng sau khi sinh hoàn hảo cho bạn ở giai đoạn sau sinh.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/d/a/dai_nit_bung_s7508.jpg\" alt=\"\" width=\"500\" />\n\n<em>Cho bạn vóc dáng tự nhiên và hoản hảo nhất</em>\n<h3><strong>Những chi tiết nổi bật của sản phẩm</strong></h3>\n<ul>\n 	<li>Sản phẩm với <strong>những đường cắt cúp phù hợp để tạo nên sự quyến rũ cho cơ thể</strong>.</li>\n 	<li>Đai nịt bụng kuku 7503 có tác dụng nâng ngực và làm thon eo, cho bạn vóc dáng tự nhiên và hoản hảo nhất</li>\n 	<li>Chất liệu vải cao cấp, mềm mại và rất thoáng khí, luôn mang đến cho bạn cảm giác thoải mái và dễ chịu nhất.</li>\n 	<li>Được làm từ vải lưới <strong>có tính đàn hồi và có áp lực cao giúp vùng bụng trở nên thon gọn</strong>, phục hồi lại đường cong hoàn hảo sau khi sinh.</li>\n 	<li>Giúp cải thiện vóc dáng</li>\n 	<li>Chất liệu thoáng khí</li>\n 	<li>Thiết kế thông minh</li>\n 	<li>Size M: Eo: 66-72cm / Mông: 89-98cm.</li>\n</ul>","Đai nịt bụng KuKu s7508 cho mẹ","<strong>C</strong>ác mẹ sau khi sinh đau đầu nhất là vòng 2 không còn thon thả nữa. <strong>Đai nịt bụng KuKu s750 </strong>thương hiệu Kuku sẽ giúp mẹ xóa tan lo lắng này. Sản phẩm được sản xuất từ chất liệu vải mềm, co dãn tốt, là sự đồ dùng sau khi sinh hoàn hảo cho bạn ở giai đoạn sau sinh.","publish","open","closed","","dai-nit-bung-kuku-s7508-cho-me","","","2017-10-11 13:26:11","2017-10-11 06:26:11","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1073","0","product","","0"),
("1074","1","2017-10-06 10:28:48","2017-10-06 03:28:48","","dai_nit_bung_s7508","","inherit","open","closed","","dai_nit_bung_s7508","","","2017-10-06 10:28:48","2017-10-06 03:28:48","","1073","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/dai_nit_bung_s7508.jpg","0","attachment","image/jpeg","0"),
("1075","1","2017-10-06 10:30:32","2017-10-06 03:30:32","<h2><strong>Máy hút sữa điện đơn Unimom K-Pop - Eco UM871104</strong></h2>\nSữa mẹ là tốt nhất cho con trẻ, nguồn sữa của mẹ nhiều sẽ cung cấp đầy đủ dưỡng chất cho bé. Để có nhiều sữa, các mẹ phải thường xuyên kích thích việc tiết sữa bằng cách cho con bú trực tiếp hoặc dùng máy <strong>máy hút sữa unimom</strong> bằng điện để vắt sữa cho bé. Bí quyết thứ 2 để tiếp tục tạo sữa nhiều hơn là các bầu vú phải được hút hết sữa nhiều lần và hoàn toàn. Càng được hút nhiều thì càng tạo ra sữa nhiều. Việc hút sữa thường xuyên làm tăng mức kích thích tố prolactin và giúp duy trì nguồn sữa. Điều này quan trọng đối với những người mẹ đi làm, bởi vì họ có thể bị thiếu sữa do không phải lúc nào cũng có con bên cạnh mình để bú và kích thích nguồn sữa. Vì vậy, một dụng cụ hút sữa là quan trọng với các mẹ đang cho con bú.\n\nDưới đây, <strong>Kidsplaza</strong> xin giới thiệu đến các mẹ sản phẩm <strong>máy hút sữa Unimom Kpop</strong> - Eco UM871104 có thiết kế tiện lợi giúp mẹ tái tạo được nhiều sữa mỗi ngày.\n\n&nbsp;\n\n&nbsp;\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/m/a/may-hut-sua-dien-unimom-kpop-eco-um871104-1_1.jpg\" alt=\"may hut sua unimom kpop\" width=\"500\" />\n\n<strong><em>Thiết kế tiện lợi giúp mẹ tái tạo được nhiều sữa mỗi ngày</em></strong>\n<h2><strong>Những chi tiết nổi bật của sản phẩm máy vắt sữa unimom Kpop - eco</strong></h2>\n<strong>Máy hút sữa Unimom Kpop - Eco</strong> UM871104 với thiết kế an toàn, lực hút vừa đủ, giúp các bà mẹ cảm thấy máy hút giống như trẻ bú. Máy hút được nhiều sữa trong thời gian ngắn, dòng sữa về sớm hơn và nhiều hơn, giúp bạn nuôi con hoàn toàn bằng sữa mẹ, thậm chí mẹ có thể thừa sữa để bảo quản cho bé trong những lúc mẹ đi vắng.\n\n&nbsp;\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/m/a/may-hut-sua-unimom-k-pop-um871098-1_1.jpg\" alt=\"may vat sua unimom kpop\" width=\"500\" />\n\n<strong><em>Sơ đồ các bộ phận của máy hút sữa mẹ unimom Kpop eco</em></strong>\n<ul>\n 	<li><strong>Unimom Kpop</strong> được sản xuất bằng chất liệu nhựa an toàn, không chứa BPA, đạt tiêu chuẩn CE (tiêu chuẩn chất lượng Châu Âu), ISO 9001, ISO 13485.</li>\n 	<li>Thiết kế có lực hút tự nhiên giống như trẻ bú với nhiều cấp độ khác nhau điều chỉnh rất dễ dàng, nhịp nhàng để sữa chảy nhiều hơn.</li>\n 	<li>Máy có chế độ hút 2 giai đoạn. Cấp độ hút 1: giai đoạn massage, Cấp độ hút 2-6: giai đoạn hút sữa.</li>\n 	<li>Dễ dàng điều chỉnh lực hút, chu kỳ hút bằng bộ điều khiển điện tử để công việc vắt sữa của mẹ với chiếc máy unimom kpop được dễ dàng nhất</li>\n 	<li>Kiểu dáng trang nhã, kết cấu gọn nhẹ, không gây ồn để mẹ tiện mang đi theo, tiện sử dụng mà không gây ảnh hưởng đến người khác.</li>\n 	<li>Hệ thống khép kín, đảm bảo vệ sinh cho bé và giữ <strong>máy hút sữa mẹ bền nhất</strong></li>\n 	<li>Có kèm theo bình sữa 150 ml PP không BPA, thiết kế mới bền, đẹp.</li>\n</ul>\n<h3><strong>Tiêu chuẩn kỹ thuật máy Unimom Kpop</strong></h3>\n<ul>\n 	<li>Lực hút: 0 - 240 mmHg - Mức độ hút : 1 - 6 - Loại: máy hút sữa đơn</li>\n 	<li>Nguồn điện đầu vào: 100-240V, 50-60Hz, đầu ra 5VDC 0.8A</li>\n 	<li>Bộ phụ kiện của <strong>máy vắt sữa mẹ unimom kpop</strong> bao gồm: 1 Phiễu chụp vú + 1 Bình đựng sữa + 1 AC adapter + 1 động cơ chính + 1 Chân đế bình sữa +1 màng van silicon Kpop + 1 van silicone mầu trắng + 1 Nắp bình sữa + 1 Núm vú + 1 cổ bình sữa + 1 nắp đậy bình sữa.</li>\n 	<li>Bảo hành: 06 tháng cho động cơ máy.</li>\n</ul>\n<div></div>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/m/a/may-hut-sua-unimom-k-pop-um871098-4_1.jpg\" alt=\"huong dan lap dat may hut sua me unimom kpop\" width=\"500\" />\n\n<em>Hướng dẫn sử dụng máy</em>\n<h3><strong>Hướng dẫn làm sạch máy</strong></h3>\n<ul>\n 	<li>Trước và sau mỗi lần vắt sữa cho con bằng <strong>Unimom Kpop</strong> các mẹ cần làm sạch và tiệt trùng phễu chụp đầu ti, van silicone, bình sữa, núm ti.</li>\n 	<li>Luôn Kiểm tra van silicone trước khi vận hành máy (cẩn thận không làm rơi mất van chân không silicone khi vệ sinh các phụ kiện)</li>\n 	<li>Khi có vấn đề hoặc máy hút yếu hãy gọi cho Tư vấn (số điện thoại ở bên dưới) để được hướng dẫn sử dụng).</li>\n</ul>","Máy hút sữa điện đơn Unimom K-Pop - Eco UM871104","<strong>Máy hút sữa Unimom Kpop - Eco</strong> UM871104 với thiết kế an toàn, lực hút vừa đủ, giúp các bà mẹ cảm thấy máy hút giống như trẻ bú. Máy hút được nhiều sữa trong thời gian ngắn, dòng sữa về sớm hơn và nhiều hơn, giúp bạn nuôi con hoàn toàn bằng sữa mẹ, thậm chí mẹ có thể thừa sữa để bảo quản cho bé trong những lúc mẹ đi vắng.","publish","open","closed","","may-hut-sua-dien-don-unimom-k-pop-eco-um871104","","","2017-10-11 13:22:40","2017-10-11 06:22:40","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1075","0","product","","0"),
("1076","1","2017-10-06 10:30:15","2017-10-06 03:30:15","","may-hut-sua-dien-unimom-kpop-eco-um871104-1_1","","inherit","open","closed","","may-hut-sua-dien-unimom-kpop-eco-um871104-1_1","","","2017-10-06 10:30:15","2017-10-06 03:30:15","","1075","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/may-hut-sua-dien-unimom-kpop-eco-um871104-1_1.jpg","0","attachment","image/jpeg","0"),
("1077","1","2017-10-06 10:33:14","2017-10-06 03:33:14","<h2><strong>Ghế rung cao cấp Kiza 3in1 Crown</strong></h2>\nGhế rung cho bé, một trong những sản phẩm với sự sáng tạo thông minh đã tạo nên một cơn sốt không hề nhỏ đối với các khách hàng trên toàn thế giới nói chung và các khách hàng của Kids plaza tại Việt Nam nói riêng. Sản phẩm đặc sắc ở chỗ rất nhiều các chức năng trên một chiếc ghế nhỏ nhắn và xinh xắn cho bé yêu nhà bạn. Không chỉ tạo cho trẻ sơ sinh một không gian ngủ an toàn tuyệt đối mà chiếc ghế còn tạo cho bé cảm giác vô cùng thoải mái, dễ chịu cũng như đưa bé vào những giấc ngủ êm ái như vòng tay của mẹ.\n\nVới thiết kế sang trọng và đẹp mắt, Ghế rung cải tiến 3 trong 1 của thương hiệu Kiza là một sản phẩm đa năng tuyệt vời dành cho bé, đặc biệt có thể chuyển chế độ ngồi sang chế độ nằm một cách dễ dàng. Chức năng rung và ru ngủ có thể điều chỉnh theo cả 3 tư thế ngửa, tấm đệm nằm nghiêng 170 độ là những yếu tố quan trọng tạo nên sự an toàn và môi trường ấm áp thân thiện cho giấc ngủ của bé cũng như lúc bé vui đùa.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-15.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Cùng Kids Plaza khám phá những ưu điểm nổi bật của chiếc ghế rung cao cấp 3in1 Kiza Crown nhé!</strong>\n\n<strong>Chất liệu cao cấp</strong>\n<ul>\n 	<li>Sản phẩm được thiết kế chắc chắn với khung kim loại thép cao cấp, không rỉ, không bị oxy hóa. Và đặc biệt <strong>độ chịu lực cao lên đến 12kg.</strong></li>\n 	<li>Ghế được xử lý bo tròn các góc cạnh nên cha mẹ an tâm không ảnh hưởng tới làn da của bé.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-8.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Vải bọc ghế được thiết kế với hoa văn đẹp mắt và làm bằng chất liệu vải thấm hút tốt, ấm áp mùa đông - thoáng mát mùa hè. Độ cao của vành ghế cũng có thể hạ cao thấp tuy theo mục đích của cha mẹ.</li>\n</ul>\n<ul>\n 	<li>Chất liệu vải bọc đã <strong>được viện dệt may Việt Nam chứng nhận</strong> nên an toàn tuyệt đối cho sức khỏe của bé.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-10.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Và vải nệm ghế <strong>có thể tháo rời</strong> để giặt sạch, do đó với những bé hay nghịch thức ăn, mẹ sẽ không còn phải lo lắng và khó chịu nữa nhé !</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-13.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Thiết kế thông minh, tiện dụng</strong>\n<ul>\n 	<li>Ghế rung nhẹ nhàng với <strong>3 mức rung</strong> khác nhau để mẹ lựa chọn phù hợp với mục đích, hoàn cảnh của bé giúp bé chìm vào giấc ngủ dễ dàng, ngay cả những bé khó ngủ cũng sẽ tìm được một giấc ngủ êm ái</li>\n 	<li>Kết hợp với đó là những bản nhạc du dương như lời ru của mẹ, kích thích phần nào đó thính giác của bé hoàn thiện, phát triển hơn.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-9.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Hệ thống<strong> đai khóa 3 điểm</strong> an toàn cùng chân đế chắc chắn, không trơn trượt nên cha mẹ hoàn toàn an tâm khi sử dụng ghế cho con yêu.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-12.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ghế có <strong>3 vị trí ngả lưng</strong> có thể điều chỉnh cho bé: <strong>nằm, nghiêng và ngồi thẳng</strong> . Mẹ có thể dễ dàng điều chỉnh từ chế độ nghiêng sang tư thế ngồi hay nằm vô cùng thuận tiện, phù hợp với từng giai đoạn lớn của bé.</li>\n</ul>\n<img src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-1.jpg\" alt=\"\" width=\"250\" /><img src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-2.jpg\" alt=\"\" width=\"250\" /><img src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-3.jpg\" alt=\"\" width=\"250\" />\n<ul>\n 	<li>Chiếc ghế rung có thể trở thành một chiếc giường, chiếc nôi êm ái cho bé ngủ hoặc là 1 chiếc ghế ngồi ăn hay chơi chỉ bằng 1 thao tác đẩy cần gạt phía sau ghế đơn giản.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-11.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ngoài ra chỉ cần đẩy chân ghế lên là có ngay 1 chiếc <strong>ghế bập bênh</strong> cho bé chơi đùa.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown.gif\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Thanh chắn treo đồ chơi trước ghế được bọc vài cẩn thận tránh những tổn thương lên làn da của bé. <strong>Thanh chắn có thể tháo rời</strong> tiện dụng khi mẹ cho bé ăn hay cho bé ngủ.</li>\n</ul>\n<ul>\n 	<li>Những món đồ chơi ngộ nghĩnh, đáng yêu sẽ giúp bé học cách quan sát, khả năng cầm nắm, ghi nhớ cũng như phối hợp tay mắt, kích thích thị giác của bé phát triển.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-4.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Ngoài ra ghế rung còn được trang bị chiếc <strong>màn chụp lưới thoáng khí</strong> giúp tránh côn trùng mỗi khi bé ngủ.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/g/h/ghe-rung-cao-cap-kiza-3in1-crown-6.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Chiếc ghế có trọng lượng nhẹ, dễ dàng gấp gọn lại, tiện lợi khi đi du lịch, đi ra ngoài.</li>\n 	<li>Ghế sử dụng 2 pin AA sẽ tiết kiệm hơn.</li>\n</ul>\n<strong>Thông tin sản phẩm</strong>\n<ul>\n 	<li>Kích thước: 81*47*52cm</li>\n 	<li>Màu sắc: Trắng sữa</li>\n 	<li>Dành cho bé từ 0-12kg</li>\n 	<li>Có thể điều chỉnh 3 vị trí: nằm, ngồi, bập bênh</li>\n 	<li>Lưu ý: Ghế rung không kèm pin</li>\n</ul>\n<strong>Một số lưu ý khi sử dụng ghế rung</strong>\n<div>\n<ul>\n 	<li>Luôn luôn để mắt tới trẻ.</li>\n 	<li>Vui lòng sử dụng ghế trên mặt sàn phẳng, tránh trường hợp bị xê dịch bởi các mặt gồ ghề.</li>\n 	<li>Kiếm tra hệ thống phanh trước khi sử dụng.</li>\n 	<li>Không nên sử dụng tay đồ chơi để xách sản phẩm.</li>\n 	<li>Kiểm tra sản phẩm thường xuyên để đảm bảo việc lắp ráp vừa vặn và đúng cách trước khi sử dụng. Không sử dụng bất cứ bộ phận hay đinh vít nào bị lỏng hoặc các bộ phận có dấu hiệu hư hỏng hoặc vỡ.</li>\n 	<li>Không sử dụng thêm gối, đệm, chăn ngoài đệm và gối hỗ trợ đầu kèm theo để đảm bảo độ an toàn cho hệ thống xương của trẻ.</li>\n 	<li>Luôn dùng gối hỗ trợ đầu đi kèm đệm theo chỉ dẫn.</li>\n 	<li>Không được tháo/lắp màn khi trẻ đang nằm trong ghế, để tránh bị thương.</li>\n 	<li>Khi gập/mở màn, không đụng tay vào các bộ phận chuyển động tránh các trường hợp bị kẹt tay.</li>\n 	<li>Nên tháo màn ra khỏi ghế khi trẻ bắt đầu ngồi được vững vàng</li>\n</ul>\n</div>","Ghế rung Kiza 3in1 Crown","Thanh chắn treo đồ chơi trước ghế được bọc vài cẩn thận tránh những tổn thương lên làn da của bé. <strong>Thanh chắn có thể tháo rời</strong> tiện dụng khi mẹ cho bé ăn hay cho bé ngủ. Những món đồ chơi ngộ nghĩnh, đáng yêu sẽ giúp bé học cách quan sát, khả năng cầm nắm, ghi nhớ cũng như phối hợp tay mắt, kích thích thị giác của bé phát triển.","publish","open","closed","","ghe-rung-kiza-3in1-crown","","","2017-10-11 13:18:21","2017-10-11 06:18:21","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1077","0","product","","0"),
("1078","1","2017-10-06 10:33:01","2017-10-06 03:33:01","","ghe-rung-cao-cap-kiza-3in1-crown-15","","inherit","open","closed","","ghe-rung-cao-cap-kiza-3in1-crown-15","","","2017-10-06 10:33:01","2017-10-06 03:33:01","","1077","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/ghe-rung-cao-cap-kiza-3in1-crown-15.jpg","0","attachment","image/jpeg","0"),
("1079","1","2017-10-06 10:42:30","2017-10-06 03:42:30","<h2><strong>Kem dưỡng da mặt Bubchen hoa Cúc 20ml</strong></h2>\nKem dưỡng da cho bé mùi hoa cúc Bubchen 20ml chăm sóc nhẹ nhàng cho khuôn mặt và bàn tay bé hàng ngày khi tiết trời lạnh, khô hanh. Kem dưỡng da Bubchen cung cấp độ ẩm giúp da thêm mịn màng và mềm mại. Sản phẩm này cũng rất lý tưởng cho người lớn.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/k/e/kem-duong-da-hoa-cuc-2.jpg\" alt=\"\" width=\"500\" />\n<h3><strong>Thông tin sản phẩm kem dưỡng da mặt Bubchen hoa Cúc</strong></h3>\n<ul>\n 	<li>Thành phần có tinh dầu cây cỏ nguyên chất như dầu hạt dẻ, dầu cây Carite <strong>cung cấp cho da độ ẩm cần thiết</strong> và giúp da trẻ luôn mềm mại, mịn màng, không khô, ngứa.</li>\n 	<li>Không chứa dầu, khoáng chất,<strong> không chứa màu nhân tạo</strong>, không gây kích ứng.</li>\n 	<li>Làm lành những vùng da bị viêm nẻ, mang đến cho bạn và bé một làn da mịn màng.</li>\n 	<li>Giúp duy trì làn da mịn màng, <strong>có độ đàn hồi cao</strong>.</li>\n 	<li>Ngăn ngừa viêm nhiễm và giảm kích ứng.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/k/e/kem-duong-da-hoa-cuc.jpg\" alt=\"\" width=\"500\" />\n<ul>\n 	<li>Mùi hoa cúc nhẹ nhàng, luôn đem lại <strong>cảm giác dễ chịu</strong>, thoải mái.</li>\n</ul>\n<strong>Hướng dẫn sử dụng:</strong> Bôi và thoa đều kem lên da sau mỗi lần rửa mặt hoặc trước khi đi ra ngoài sẽ tránh cho da khỏi bị mất nước.\n\n<strong>Thông tin sản phẩm:</strong>\n<ul>\n 	<li>Độ tuổi : Mọi lứa tuổi</li>\n 	<li>Dung tích: 20ml</li>\n 	<li>Xuất xứ: Bubchen - Đức</li>\n</ul>","Kem dưỡng da hoa cúc 20ml cho mẹ","Kem dưỡng da cho bé mùi hoa cúc Bubchen 20ml chăm sóc nhẹ nhàng cho khuôn mặt và bàn tay bé hàng ngày khi tiết trời lạnh, khô hanh. Kem dưỡng da Bubchen cung cấp độ ẩm giúp da thêm mịn màng và mềm mại. Sản phẩm này cũng rất lý tưởng cho người lớn.","publish","open","closed","","kem-duong-da-hoa-cuc-20ml","","","2017-10-11 12:00:58","2017-10-11 05:00:58","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1079","0","product","","0"),
("1080","1","2017-10-06 10:42:26","2017-10-06 03:42:26","","kem-duong-da-hoa-cuc","","inherit","open","closed","","kem-duong-da-hoa-cuc","","","2017-10-06 10:42:26","2017-10-06 03:42:26","","1079","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/kem-duong-da-hoa-cuc.jpg","0","attachment","image/jpeg","0"),
("1081","1","2017-10-06 10:55:08","2017-10-06 03:55:08","<h2><strong>Túi trữ sữa cảm ứng nhiệt Plora 30pcs</strong></h2>\nTúi trữ sữa cảm ứng nhiệt Plora 30pcs với thiết kế thông minh độc đáo giúp mẹ có thể trữ sữa cho bé một cách an toàn và hiệu quả. Sản phẩm được sản xuất tại Hàn Quốc với chất lượng đã được kiểm định rõ ràng mang đến sự yên tâm cho các bà mẹ khi sử dụng cho bé.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/i/m/img_0228_2.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Đặc điểm chi tiết của sản phẩm:</strong>\n\n<strong>Chất liệu an toàn:</strong>\n<ul>\n 	<li>Được làm từ chất liệu PET (Polyethylene) an toàn tuyệt đối khi sử dụng để trữ sữa cho bé.</li>\n 	<li>Chất túi dày dặn, chắc chắn, mẹ có thể dùng bút bi bút chì để dễ dàng viết lên thân túi ( các loại túi khác thường phải dùng bút lông để viết).</li>\n</ul>\n<div><img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/i/m/img_0232_2.jpg\" alt=\"\" width=\"500\" /></div>\n<div><strong>Là loại túi trữ sữa cảm ứng nhiệt:</strong></div>\n<ul>\n 	<li>Có<strong> vạch báo nhiệt chuyển màu</strong> khi nhiệt độ thay đổi. Cụ thể Khi nhiệt độ dưới 37 độ, vạch cảnh báo nhiệt sẽ có màu đỏ, khi nhiệt độ tăng lên, vạch cảnh báo sẽ mờ dần và chuyển sang khô màu khi nhiệt độ cao hơn 37 độ C.</li>\n</ul>\n<div><strong>Thiết kế thông minh:</strong></div>\n<ul>\n 	<li>Túi đã được tiệt trùng sẵn và được niêm phong giúp bảo quản sữa tinh khiết không bị lẫn tạp chất.</li>\n</ul>\n<ul>\n 	<li>Có 1 lớp zipper tuyệt đối an toàn, chắc chắc. Khi sử dụng, mẹ chỉ cần xé phía trên mép túi và mở lớp zipper ra để dùng thật an toàn và tiện lợi.</li>\n</ul>\n<div><img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/i/m/img_0225_2.jpg\" alt=\"\" width=\"500\" /></div>\n<div><strong>Tiện lợi khi sử dụng:</strong></div>\n<ul>\n 	<li>Túi có khả năng tự đứng thẳng giúp trữ sữa hiệu quả mà không lo bị tràn sữa ra ngoài.</li>\n 	<li>Sản phẩm được sản xuất tại Hàn Quốc, là nhãn hàng được các bà mẹ Hàn Quốc tin dùng và ưa chuộng, sản phẩm đạt các chứng nhận chất lượng GMP của Hàn Quốc và Mỹ.</li>\n</ul>\n<div><img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/i/m/img_0226_2.jpg\" alt=\"\" width=\"500\" /></div>\n<ul>\n 	<li>Thể tích: 200ml/túi.</li>\n 	<li>Số lượng: 30 túi/ hộp.</li>\n</ul>","Túi trữ sữa cảm ứng nhiệt Plora 30pcs","Có<strong> vạch báo nhiệt chuyển màu</strong> khi nhiệt độ thay đổi. Cụ thể Khi nhiệt độ dưới 37 độ, vạch cảnh báo nhiệt sẽ có màu đỏ, khi nhiệt độ tăng lên, vạch cảnh báo sẽ mờ dần và chuyển sang khô màu khi nhiệt độ cao hơn 37 độ C","publish","open","closed","","tui-tru-sua-cam-ung-nhiet-plora-30pcs","","","2017-10-11 11:57:45","2017-10-11 04:57:45","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1081","0","product","","0"),
("1082","1","2017-10-06 10:54:37","2017-10-06 03:54:37","","img_0228_2","","inherit","open","closed","","img_0228_2","","","2017-10-06 10:54:37","2017-10-06 03:54:37","","1081","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/img_0228_2.jpg","0","attachment","image/jpeg","0"),
("1083","1","2017-10-06 10:58:10","2017-10-06 03:58:10","<h2><strong>Sau khi sinh việc vệ sinh cơ thể cho mẹ là một việc làm quan trọng và cần thiết.</strong></h2>\n<ul>\n 	<li>Giờ đây bạn không phải tìm các loại thuốc dân gian hiếm nữa mà thay vào đó là loại thuốc tắm rất hiệu quả và an toàn cho các mẹ sau khi sinh</li>\n 	<li>Với Dao\'spa Mama, các bà mẹ trẻ hoàn toàn yên tâm là mình được tắm một cách khoa học, nhanh chóng hồi phục sức khỏe thể chất và tinh thần để chăm sóc cho con yêu.</li>\n 	<li>Đây là sản phẩm tắm dược thảo từ nguồn cây thuốc quý của Sapa, được nghiên cứu phát triển một cách hệ thống và khoa học trong gần 10 năm bởi các nhà Thực vật học Trường Đại học Dược Hà Nội.</li>\n 	<li><strong>Dao’spa Mama</strong> là sản phẩm tắm cho phụ nữ sau sinh được nghiên cứu và phát triển bởi Trường Đại học Dược.</li>\n 	<li>Duy nhất Dao’spa Mama là sản phẩm tắm cho phụ nữ sau sinh được kiểm chứng khoa học về tác dụng và độ an toàn khi sử dụng.</li>\n 	<li>Được đăng tải trên hệ thống truyền thông.</li>\n</ul>\n&nbsp;\n<h3><strong>Thành phần tạo nên thuốc tắm Dao SPA MAMA</strong></h3>\n<strong><img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam_dao_spa_mama.jpg\" alt=\"\" width=\"500\" /></strong>\n<ul>\n 	<li>Aromatherapy (Hương trị liệu): là cơ chế trị liệu bằng hương thơm tinh dầu.</li>\n</ul>\n+ Công thức tinh dầu đặc biệt với thành phần chính là tinh dầu Oải hương và các tinh dầu khác có sẵn trong bài thuốc tắm.\n\n+ Được thiết kế với 3 tầng hương giải phóng dần dần trước, trong và lưu trên da sau khi tắm.\n\n+ Tinh dầu tác động lên não qua cơ quan thụ cảm ở khoang mũi, một phần được hấp thu qua da và đường hô hấp.\n\n+ Liệu pháp này giúp cơ thể thư giãn, giảm căng thẳng, giảm stress, đem lại sự cân bằng về tâm thái và giúp giải phóng tận cùng các chất thải, chất độc qua da.\n\n+ Theo Y văn cổ Châu Âu, tinh dầu Oải hương giúp cân bằng cảm xúc, làm dịu thần kinh, giảm đau, tăng lưu thông máu, hồi phục sức khỏe và khử mùi.\n<ul>\n 	<li>Hydrotherapy (Thủy trị liệu): là cơ chế trị liệu bằng nước.</li>\n</ul>\n+ Nhiệt độ nước luôn duy trì ở 37-420C giúp làm sạch lỗ chân lông, tăng tuần hoàn dưới da, tạo điều kiện tối ưu để dược chất &amp; tinh dầu thấm nhanh qua da vào cơ thể và phát huy tác dụng.\n<ul>\n 	<li>Pharmacotherapy (Dược lý trị liệu): là cơ chế trị liệu bằng các dược chất trong cây thuốc.</li>\n</ul>\n+ Dao’spa Mama sử dụng công thức đã được các nhà khoa học Trường Đại học Dược Hà Nội sàng lọc và nghiên cứu kỹ lưỡng.\n\n+ Theo các nghiên cứu, thành phần của cây thuốc thấm qua da làm giảm các cơn đau nhức thường gặp sau khi sinh, hỗ trợ hoạt động của hệ tim mạch, phòng chống các chứng bệnh sản hậu,                      giúp điều hòa trao đổi chất và tăng cường sinh lực.\n\n+ Đặc biệt, tinh chất Hoa Đào Sapa có trong Dao’spa Mama giúp hạn chế hình thành các vết thâm nám, nuôi dưỡng và lấy lại sức sống cho làn da; làm da mịn đẹp, hồng nhuận tự nhiên.\n\n<strong>Tác dụng của Dao’spa Mama</strong>\n<ul>\n 	<li>Tăng cường sinh lực, phục hồi sức khỏe cho phụ nữ sau sinh.</li>\n 	<li>Phòng chống các chứng bệnh hậu sản.</li>\n 	<li>Tăng cường thải độc qua da khi tắm, co lỗ chân lông, hạn chế các tác nhân có hại xâm nhập vào cơ thể.</li>\n 	<li>Giảm đau mỏi, chống stress, tạo giấc ngủ sâu, lấy lại cân bằng về cảm xúc.</li>\n 	<li>Hỗ trợ điều trị và ngăn ngừa các bệnh chứng: phong thấp, nhức mỏi, đau đầu, cảm cúm…</li>\n</ul>\n<strong>Hướng dẫn sử dụng</strong>\n\n<strong>1. Cách tắm</strong>\n<ul>\n 	<li><strong>Xông hơi, tắm dội</strong></li>\n</ul>\n+ Chuẩn bị chậu nhỏ nước sôi (5-10 lit) ; lắc đều, pha 1 lọ nước tắm Dao’spa vào chậu, khuấy đều; xông hơi kĩ trong 10-15 phút.\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam1.jpg\" alt=\"\" />\n\n+ Đổ chậu nước xông ra chậu lớn, pha loãng với nước để được độ nóng vừa phải, thể tích khoảng 20-30 lit ; choàng khăn tắm quanh người, dội nước tắm vừa pha từ từ để thấm đều vào khăn(hoặc lấy khăn thấm nước tắm lau đều kháp người), điều chỉnh để thời gian tắm giai đoạn này được 5-10 phút).\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam2.jpg\" alt=\"\" />\n\n&nbsp;\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam3.jpg\" alt=\"\" />\n\n+Tắm xong lau khô người, không tráng lại bằng nước nóng thông thường.\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam4.jpg\" alt=\"\" />\n<ul>\n 	<li><strong>Tắm bồn</strong></li>\n</ul>\n+ Pha 1 một chai Dao’spa vào bồn tắm có sẵn 50-100 lit nước nóng từ 37-420C (nước nóng già) để ngâm trong 15-20 phút. Không tráng lại bằng nước thường sau khi ngâm.\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam5.jpg\" alt=\"\" />\n\n<img class=\"aligncenter\" src=\"https://www.kidsplaza.vn/media/product/5319_0_thuoc_tam6.jpg\" alt=\"\" />\n\n<strong>2. Liệu trình tắm</strong>\n<ul>\n 	<li>Nên tắm sau khi sinh 3 ngày nếu sinh thường, 7 ngày nếu sinh mổ (sau khi vết mổ đã khô).</li>\n 	<li>Liệu trình tắm nên kéo dài tối thiểu là 6 lần tắm.</li>\n 	<li>Sau thời gian này, bạn có thể tắm nhắc lại 1-2 lần mỗi tuần để đạt được hiệu quả tốt nhất.</li>\n</ul>\n<strong>Chú ý</strong>\n+ Dung dịch dùng ngoài, không uống.\n\n+ Không sử dụng khi có tiền sử mẫn cảm với bất kỳ thành phần nào của sản phẩm, người say rượu bia, phụ nữ đang mang thai hoặc trong kỳ kinh nguyệt, người bệnh tim mạch, huyết áp cao hoặc thấp.\n\n+ Một số trường hợp khi tắm có thể có cảm giác mất thăng bằng, buồn ngủ… thì nên ngừng tắm, nghỉ ngơi 5-10 phút sẽ trở lại hoàn toàn bình thường","Thuốc tắm Dao\'Spa Mama","Sữa tắm phù hợp cho các bà mẹ trẻ, giúp tăng cường sức đề kháng, giảm căng thẳng - mệt mỏi. Không sử dụng khi có tiền sử mẫn cảm với bất kỳ thành phần nào của sản phẩm, người say rượu bia, phụ nữ đang mang thai hoặc trong kỳ kinh nguyệt, người bệnh tim mạch, huyết áp cao hoặc thấp.","publish","open","closed","","thuoc-tam-daospa-mama","","","2017-10-11 10:21:11","2017-10-11 03:21:11","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1083","0","product","","0"),
("1084","1","2017-10-06 10:57:44","2017-10-06 03:57:44","","5319_0_thuoc_tam_dao_spa_mama","","inherit","open","closed","","5319_0_thuoc_tam_dao_spa_mama","","","2017-10-06 10:57:44","2017-10-06 03:57:44","","1083","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/5319_0_thuoc_tam_dao_spa_mama.jpg","0","attachment","image/jpeg","0"),
("1085","1","2017-10-06 11:00:30","2017-10-06 04:00:30","<h2><strong>Dung dịch vệ sinh phụ nữ Lactacyd Confidence mang lại cho mẹ cảm giác dễ chịu, tự tin và thoải mái</strong></h2>\nViệc vệ sinh cho các mẹ sau khi sinh luôn làm các mẹ băn khoăn lo lắng. Một trong những giải pháp an toàn luôn mang lại cho mẹ sự thoải mái và dễ chịu nhất khi vệ sinh vùng kín là <strong>dung dịch vệ sinh cho mẹ</strong> Lactacyd Confidence với hai thành phần chính có trong Dung dịch vệ sinh phụ nữ Lactacyd Confidence là acid lactic và lactoserum. Đây là  các thành phần tự nhiên chiết xuất từ sữa tươi, giúp cân bằng sinh lý của niêm mạc.\nAcid lactic là một thành phần tự nhiên đựợc cơ thể tiết ra để tạo độ pH acid cho âm đạo và hạn chế sự phát triển của vi khuẩn gây bệnh.\nLactoserum được chiết xuất từ sữa, chứa nhiều vitamin và khoáng chất, giúp làm sạch nhẹ nhàng và nuôi dưỡng da.\nSự kết hợp của hai thành phần tự nhiên này giúp bạn bảo vệ vùng kín, không bị ngứa ngáy, rát bỏng, mùi khó chịu.\n\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/do-cho-me/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1.jpg\" alt=\"\" width=\"500\" />\n\n<em>Giúp bạn bảo vệ vùng kín, không bị ngứa ngáy, rát bỏng, mùi khó chịu</em>\n<h3><strong>Đặc điểm nổi trội của dung dịch vệ sinh phụ nữ Lactacyd Confidence</strong></h3>\n<ul>\n 	<li>Hương thơm nhẹ nhàng, tự nhiên của Lactacyd Confidence còn mang lại cho bạn <strong>cảm giác dễ chịu</strong>, tự tin và thoải mái.</li>\n 	<li>Ưu điểm nổi bật của sản phẩm mới Lactacyd Confidence là độ <strong>an toàn</strong> cao và <strong>không gây khô</strong>, thích hợp cho việc sử dụng hàng ngày. Độ an toàn này đã được chứng minh qua nghiên cứu lâm sàn trên hơn một ngàn phụ nữ châu Á, với kết quả 99,75% người sử dụng không gặp bất kỳ kích ứng nào khi sử dụng hàng ngày.</li>\n 	<li>Lactacyd Confidence chứa Acid lactic và Lactoserum, các thành phần tự nhiên được <strong>chiết xuất từ sữa tươi</strong>, giúp <strong>nhẹ nhàng rửa sạch</strong> âm hộ và <strong>bảo vệ</strong> bạn khỏi ngứa ngáy, rát bỏng, mùi khó chịu.</li>\n 	<li>Lactoserum, chiết xuất từ sữa, chứa nhiều vitamin và khoáng chất, giúp<strong> làm sạch nhẹ nhàng và nuôi dưỡng da</strong>.</li>\n 	<li>Lactacyd Confidence tự tin sẽ là người bạn đồng hành của phụ nữ Việt Nam.</li>\n</ul>\n<h3> <strong>Vệ sinh phụ nữ hàng ngày với dung dịch Lactacyd Confidence</strong></h3>\n<ul>\n 	<li>Vệ sinh phụ nữ thời kỳ hành kinh</li>\n 	<li>Vệ sinh phụ nữ sau khi sinh, giúp phòng ngừa nhiễm trùng</li>\n 	<li>Phụ khoa: điều trị hỗ trợ viêm âm đạo, huyết trắng, viêm âm hộ, ngứa âm hộ.</li>\n 	<li>Ngoài ra, với đặc tính là dung dịch dạng sữa, Lactacyd Confidence rất dễ sử dụng, có thể dùng rửa nhiều lần trong ngày và thích hợp cho mọi độ tuổi.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/do-cho-me/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-3.jpg\" alt=\"\" width=\"500\" />\n\n<strong>Cách dùng dung dịch Lactacyd Confidence , liều lương đúng tiêu chuẩn</strong>\n<ul>\n 	<li> Lắc kỹ trước khi dùng.</li>\n 	<li>Dùng như xà bông nước. Rửa nước lại thật kỹ sau khi dùng. Có thể dùng rửa nhiều lần trong ngày.</li>\n 	<li>Bơm rửa âm đạo : 2-4 muỗng canh trong 1 lít nước. Hoặc dùng dụng cụ bơm rửa âm đạo.</li>\n 	<li>Thông thường có thể bơm rửa 2 lần/tuần. Khi có nhiễm trùng âm đạo thì bơm rửa hàng ngày.</li>\n</ul>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/wysiwyg/product/do-cho-me/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-2.jpg\" alt=\"\" width=\"500\" />\n\nPhụ nữ cần chú ý lựa chọn cho mình một phương pháp chăm sóc vệ sinh một cách khoa học để tự bảo vệ mình tốt hơn. Vì vậy, hãy chọn và sử dụng Lactacyd Confidence!","Dung dịch vệ sinh phụ nữ Lactacyd Confidence","Dung dịch vệ sinh phụ nữ Lactacyd Confidence là acid lactic và lactoserum. Đây là  các thành phần tự nhiên chiết xuất từ sữa tươi, giúp cân bằng sinh lý của niêm mạc.","publish","open","closed","","dung-dich-ve-sinh-phu-nu-lactacyd-confidence","","","2017-10-11 11:47:15","2017-10-11 04:47:15","","0","https://bizhostvn.com/w/mevabe/?post_type=product&#038;p=1085","0","product","","0"),
("1086","1","2017-10-06 10:59:54","2017-10-06 03:59:54","","dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1","","inherit","open","closed","","dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1","","","2017-10-06 10:59:54","2017-10-06 03:59:54","","1085","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/dung-dich-ve-sinh-phu-nu-lactacyd-confidence-1.jpg","0","attachment","image/jpeg","0"),
("1090","1","2017-10-06 11:13:46","2017-10-06 04:13:46","","icon 1","","inherit","open","closed","","icon-1","","","2017-10-06 11:13:46","2017-10-06 04:13:46","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-1.png","0","attachment","image/png","0"),
("1093","1","2017-10-06 11:15:53","2017-10-06 04:15:53","","icon 2","","inherit","open","closed","","icon-2","","","2017-10-06 11:15:53","2017-10-06 04:15:53","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-2.png","0","attachment","image/png","0"),
("1096","1","2017-10-06 11:17:05","2017-10-06 04:17:05","","icon 4","","inherit","open","closed","","icon-4","","","2017-10-06 11:17:05","2017-10-06 04:17:05","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-4.png","0","attachment","image/png","0"),
("1099","1","2017-10-06 11:18:12","2017-10-06 04:18:12","","icon 6","","inherit","open","closed","","icon-6","","","2017-10-06 11:18:12","2017-10-06 04:18:12","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-6.png","0","attachment","image/png","0"),
("1105","1","2017-10-06 11:21:11","2017-10-06 04:21:11","","icon 67","","inherit","open","closed","","icon-67","","","2017-10-06 11:21:11","2017-10-06 04:21:11","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-67.png","0","attachment","image/png","0"),
("1107","1","2017-10-06 11:23:43","2017-10-06 04:23:43","","icon 7","","inherit","open","closed","","icon-7","","","2017-10-06 11:23:43","2017-10-06 04:23:43","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/icon-7.png","0","attachment","image/png","0"),
("1118","1","2017-10-06 11:37:39","2017-10-06 04:37:39","","testimonials-bg","","inherit","open","closed","","testimonials-bg","","","2017-10-06 11:37:39","2017-10-06 04:37:39","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/testimonials-bg.png","0","attachment","image/png","0"),
("1123","1","2017-10-06 11:44:03","2017-10-06 04:44:03","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[email* your-email placeholder \"Địa chỉ email của bạn (*)\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"Đăng ký\"]\n    </div>\n    </div>\n1\nMẫu web Mẹ và Bé  \"[your-subject]\"\n[your-name] <wordpress@bizhostvn.com>\ndoivodesign@gmail.com\nEmail mới đăng ký nhận tin khuyến mại từ website:\n- Địa chỉ Email: [your-email]\nReply-To: [your-email]\n\n\n\n\nMẫu web Mẹ và Bé của Ninh Bình Web \"[your-subject]\"\nMẫu web Mẹ và Bé của Ninh Bình Web <wordpress@mevabe.ninhbinhweb.com>\n[your-email]\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mẫu web Mẹ và Bé của Ninh Bình Web (https://bizhostvn.com/w/mevabe)\nReply-To: giuselethien@gmail.com\n\n\n\nThư đã gửi thành công! Cám ơn bạn đã đăng ký nhận tin khuyến mại!\nCó lỗi xảy ra, vui lòng thử lại!\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nĐịa chỉ email chưa đúng!\nĐịa chỉ URL chưa đúng!\nĐịnh dạng số điện thoại chưa đúng!","Đăng ký nhận tin","","publish","closed","closed","","contact-form-1","","","2018-03-01 18:42:51","2018-03-01 11:42:51","","0","https://bizhostvn.com/w/mevabe/?post_type=wpcf7_contact_form&#038;p=1123","0","wpcf7_contact_form","","0"),
("1170","1","2017-10-06 14:40:54","2017-10-06 07:40:54","[section bg_color=\"rgb(217, 243, 244)\" padding=\"0px\"]\n\n[row label=\"Bà mẹ chu đáo\" style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[gap height=\"20px\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 120%;\"><span style=\"color: #333333;\">HÃY LÀ BÀ MẸ</span><strong> CHU ĐÁO VÀ TINH TẾ<br />\n</strong></span><span style=\"font-size: 90%;\">hãy đến với Siêu thị Mẹ và Bé để lựa chọn những sản phẩm ưu việt nhất</span></p>\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1090\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Thiên đường đồ chơi<br />\n</span><span style=\"font-size: 90%;\">cho bé</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1093\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">200 thương hiệu<br />\n</span><span style=\"font-size: 90%;\">nổi tiếng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1096\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">95% khách hàng</span><br />\n<span style=\"font-size: 90%;\"> hài lòng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1099\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Đổi trả dễ dàng</span><br />\n<span style=\"font-size: 90%;\"> trong 7 ngày</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1105\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Vận chuyển miễn phí</span><br />\n<span style=\"font-size: 90%;\"> nội thành HN</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"1107\" img_width=\"39\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">0972.939.830</span><br />\n<span style=\"font-size: 90%;\">tư vấn 24/7</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section class=\"top-footer\" bg_color=\"rgb(217, 243, 244)\"]\n\n[row class=\"blog-footer\"]\n\n[col span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[row_inner]\n\n[col_inner span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[gap height=\"40px\"]\n\n<p><strong>Giới thiệu</strong></p>\n<ul>\n<li class=\"box_title\"><span style=\"font-size: 85%;\"><a href=\"#\">Về Công ty</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Hệ thống cửa hàng</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Khuyến mại</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Tuyển dụng</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Liên hệ</a></span></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[gap height=\"40px\"]\n\n<p><strong>Hướng dẫn, hỗ trợ</strong></p>\n<ul>\n<li><span style=\"font-size: 90%;\"><a href=\"#\">Hướng dẫn mua hàng</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"#\">Vận chuyển - giao hàng</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"#\">Phương thức thanh toán</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"#\">Sử dụng mã giảm giá</a></span></li>\n<li><span style=\"font-size: 90%;\"><a href=\"#\">Hướng dẫn tạo tài khoản</a></span></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[gap height=\"40px\"]\n\n<p><span style=\"font-size: 100%;\"><strong>Chính sách</strong></span></p>\n<ul>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Chính sách bán hàng</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Hỗ trợ vay trả góp</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Tư vấn 24/7</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Giao hàng tận nơi</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Đổi trả hàng hóa</a></span></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"2\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[gap height=\"40px\"]\n\n<p><span style=\"font-size: 100%;\"><strong>Liên kết website</strong></span></p>\n<ul>\n<li><span style=\"font-size: 85%;\">Demo.com</span></li>\n<li><span style=\"font-size: 85%;\">Webdesign</span></li>\n<li><span style=\"font-size: 85%;\">In hình lên áo</span></li>\n<li>Đồ họa Công Giáo</li>\n<li><span style=\"font-size: 85%;\">Học Photoshop</span></li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[gap height=\"50px\"]\n\n<p><strong><span style=\"font-size: 100%;\">Kênh thông tin</span><br />\n</strong><span style=\"font-size: 90%;\">Nhập Email để có thể nhận được thông tin đầy đủ và mới nhất mỗi khi có khuyến mãi</span></p>\n[contact-form-7 id=\"1123\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span__sm=\"12\" visibility=\"show-for-small\" align=\"center\"]\n\n[gap]\n\n<p><strong>Giới thiệu</strong></p>\n<ul>\n<li class=\"box_title\"><span style=\"font-size: 85%;\"><a href=\"#\">Về GiuseArt</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Hệ thống cửa hàng</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Khuyến mại</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Tuyển dụng</a></span></li>\n<li><span style=\"font-size: 85%;\"><a href=\"#\">Liên hệ</a></span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2018-03-01 18:55:35","2018-03-01 11:55:35","","0","https://bizhostvn.com/w/mevabe/?post_type=blocks&#038;p=1170","0","blocks","","0"),
("1266","1","2017-10-09 09:55:07","2017-10-09 02:55:07","","Đặt hàng thành công","","publish","closed","closed","","dat-hang-thanh-cong","","","2017-10-09 09:55:07","2017-10-09 02:55:07","","0","https://bizhostvn.com/w/mevabe/?page_id=1266","0","page","","0"),
("1308","1","2017-10-09 21:25:22","2017-10-09 14:25:22","[section label=\"Chinh sach ban hang\" class=\"cs-ban-hang\" padding=\"10px\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[button text=\"Chat Facebook\" letter_case=\"lowercase\" color=\"secondary\" radius=\"4\" expand=\"true\" icon=\"icon-facebook\" icon_pos=\"left\" link=\"https://www.messenger.com/t/joseph.thien.75\" target=\"_blank\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[button text=\"Đăng ký tư vấn\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" icon=\"icon-star\" icon_pos=\"left\" link=\"#test\" target=\"_blank\"]\n\n[lightbox id=\"test\" width=\"600px\" padding=\"20px\"]\n[contact-form-7 id=\"1385\" title=\"Đăng ký tư vấn\"]\n[/lightbox]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" visibility=\"show-for-small\"]\n\n[button text=\"Hotline: 0972.939.830\" letter_case=\"lowercase\" radius=\"4\" expand=\"true\" icon=\"icon-star\" icon_pos=\"left\" link=\"Tel:+84972939830\" target=\"_blank\"]\n\n[/col]\n\n[/row]\n\n[/section]","After Add to Cart","","publish","closed","closed","","after-add-to-cart","","","2017-10-09 22:32:28","2017-10-09 15:32:28","","0","https://bizhostvn.com/w/mevabe/?post_type=blocks&#038;p=1308","0","blocks","","0"),
("1329","1","2017-10-09 21:37:19","2017-10-09 14:37:19","","Quy định đổi trả hàng","","publish","closed","closed","","quy-dinh-doi-tra-hang","","","2017-10-09 21:37:19","2017-10-09 14:37:19","","0","https://bizhostvn.com/w/mevabe/?page_id=1329","0","page","","0"),
("1331","1","2017-10-09 21:38:04","2017-10-09 14:38:04","","Phương thức giao hàng","","publish","closed","closed","","phuong-thuc-giao-hang","","","2017-10-09 21:38:04","2017-10-09 14:38:04","","0","https://bizhostvn.com/w/mevabe/?page_id=1331","0","page","","0"),
("1334","1","2017-10-09 21:38:40","2017-10-09 14:38:40","","Cam kết khớp giá","","publish","closed","closed","","cam-ket-khop-gia","","","2017-10-09 21:38:40","2017-10-09 14:38:40","","0","https://bizhostvn.com/w/mevabe/?page_id=1334","0","page","","0"),
("1385","1","2017-10-09 22:28:17","2017-10-09 15:28:17","<div class=\"contact-form\">\n<h3>ĐĂNG KÝ TƯ VẤN</h3>\n<p>Vui lòng nhập thông tin cá nhân của bạn vào form bên dưới. Sau tối đa 10 phút, nhân viên tư vấn sẽ điện lại cho bạn! Hoặc bạn cũng có thể gọi trực tiếp hotline: 0972.939.830</p>\n[text* text-131 placeholder \"Tên của bạn...\"]\n[email* email-712 placeholder \"Địa chỉ email của bạn...\"]\n[tel* tel-644 placeholder \"Số điện thoại của bạn...\"]\n[text text-131 placeholder \"Bạn cần tư vấn gì?\"]\n[submit \"Đăng ký\"]\n</div>\n1\n[mevabe] - Có người mới đăng ký tư vấn\n[your-name] <wordpress@bizhostvn.com>\ndoivodesign@gmail.com\nCó một người mới liên hệ tư vấn trên webiste: \n- Họ tên: [text-131]\n- Địa chỉ email:[email-712]\n- Số điện thoại: [tel-644]\n- Nội dung cần tư vấn: [text-131]\nXin cám ơn!\n----------------\nĐây là email tự động, vui lòng không phản hồi lại email này!\nAdmin,\n\n\n\n\n\nMẫu web Mẹ và Bé của Ninh Bình Web \"[your-subject]\"\nMẫu web Mẹ và Bé của Ninh Bình Web <wordpress@mevabe.ninhbinhweb.com>\n[your-email]\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mẫu web Mẹ và Bé của Ninh Bình Web (https://bizhostvn.com/w/mevabe)\nReply-To: giuselethien@gmail.com\n\n\n\nXin cám ơn! Thông tin đã được gửi đi thành công!\nCó lỗi xảy ra, vui lòng kiểm tra và thử lại sau ít phút!\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.","Đăng ký tư vấn","","publish","closed","closed","","dang-ky-tu-van","","","2018-03-01 18:43:13","2018-03-01 11:43:13","","0","https://bizhostvn.com/w/mevabe/?post_type=wpcf7_contact_form&#038;p=1385","0","wpcf7_contact_form","","0"),
("1426","1","2017-10-09 23:14:34","2017-10-09 16:14:34","","Banner_DSS_gia_re_9-10_HN_tang","","inherit","open","closed","","banner_dss_gia_re_9-10_hn_tang","","","2017-10-09 23:14:34","2017-10-09 16:14:34","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/Banner_DSS_gia_re_9-10_HN_tang.png","0","attachment","image/png","0"),
("1561","1","2017-10-11 13:34:25","2017-10-11 06:34:25","<p class=\"lead\">Trên thị trường hiện nay có rất nhiều <strong>máy hút sữa</strong> khác nhau. Vì thế nên có nhiều ông bố bà mẹ không biết cách chọn <strong>máy hút sữa tốt</strong>, máy hút sữa nào tốt và phù hợp nhất với mình. Thấu hiểu điều  này , sau đây chúng tôi xin liệt  kê các loại máy hút sữa tốt được nhiều bà mẹ tin dùng hiện nay.</p>\n\n<h2><strong>Danh sách các loại máy hút sữa tốt nhất hiện nay</strong></h2>\n<h3><strong><em>Máy hút sữa medela</em></strong></h3>\nĐây là thương hiệu đến từ Thụy Sỹ và được nhiều chuyên gia đánh giá cao. Máy hút sữa Medela không chỉ được các ông bố bà mẹ chọn dùng mà ở nhiều bệnh viện cũng tin tưởng. Có thể khẳng định rằng máy hút sữa mẹ Medela chính là lựa chọn thông minh cho các bà mẹ hiện nay.\n\nƯu điểm\n\n– Sử dụng chất liệu an toàn và không hề có chất Bisphenol A nên rất an toàn cho bé.\n\n– Có công nghệ 2 Phase Expression nên giúp mẹ thêm phần thoải mái khi hút.\n\n– Máy có thể điều chỉnh được áp lực hút không gây đau cho mẹ.\n\n– Có cả máy hút sữa bằng tay và máy hút sữa điện nên dễ dàng tùy chọn dựa vào ngân sách bạn có.\n\n– Động cơ êm ái.\n<h3><strong><em>Máy hút sữa Avent</em></strong></h3>\n<strong>Máy hút sữa Avent</strong> là một thương hiệu đến từ Anh Quốc với chất lượng an toàn và đạt tiêu chuẩn chất lượng Châu Âu. Đây là một trong số những loại <strong>máy hút sữa tốt</strong> được nhiều gia đình lựa chọn cho bé yêu của mình.\n\nƯu điểm\n\n– Thiết kế hiện đại, đơn giản với nhiều chế độ hoạt động khác nhau để mẹ dễ dàng lựa chọn.\n\n– Lúc hoạt động rất nhẹ nhàng, không ồn không đau, tựa như lúc bạn đang cho con bú mà thôi.\n\n– Các phụ kiện tháo lắp dễ dàng, giúp bạn thuận tiện hơn khi vệ sinh máy.\n\n– Bộ máy chắc chắn và bền.\n\n<img class=\"alignnone size-full wp-image-31638 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/10/may-hut-sua-philip-avents-5-copy.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/10/may-hut-sua-philip-avents-5-copy.jpg 600w, https://k.r.worldssl.net/blog/wp-content/uploads/2017/10/may-hut-sua-philip-avents-5-copy-220x220.jpg 220w\" alt=\"Máy hút sữa nào tốt\" />\n<h3><strong><em>Máy hút sữa Mamago</em></strong></h3>\nVới các dòng máy hút sữa của Mamago thì mẹ có thể yên tâm vì đã có thêm được một sự hỗ trợ trong việc chăm sóc bé hiệu quả. Các thiết kế đến từ Mamago đều được sản xuất bằng dây chuyền công nghệ hiện đại từ công ty Bellema USA – Chuyên sản xuất, phân phối sản phẩm máy hút sữa cao cấp bên Mỹ. Đơn vị sản xuất chính là công ty Horigen Coporation, China. Sử dụng máy hút sữa Mamago thì mẹ vẫn có thể đi làm bình thường mà không lo bé chịu đói. Bé yêu của bạn vẫn được cung cấp đầy đủ chất dinh dưỡng để thông minh và khỏe mạnh.\n\nƯu điểm\n\n– Có  2 dòng máy hút sữa bằng tay và bằng điện thì mẹ sẽ có thêm sự lựa chọn đa dạng hơn.\n\n– Sở hữu nhiều tính năng vượt trội như có thể điều chỉnh được lực hút của mỗi bên, áp dụng công nghệ 3D, …\n\n– Có mức giá cạnh tranh.\n\n– Hoạt động êm ái, không gây đau cho mẹ.\n<h3><strong><em>Máy hút sữa Unimom</em></strong></h3>\nNếu bạn vẫn đang còn băn khoăn việc chọn máy hút sữa nào tốt thì có thể tham khảo qua các thiết kế đến từ thương hiệu Unimom. Đây là một thương hiệu hàng đầu đến từ Hàn Quốc và được rất nhiều người lựa chọn bởi tiêu chuẩn Châu Âu và nhiều ưu điểm hấp dẫn khác.\n\nƯu điểm\n\n– Thiết kế máy nhỏ gọn, đơn giản dễ sử dụng cùng nhiều chế độ điều chỉnh hút khác nhau.\n\n– Sử dụng chất liệu an toàn không chứa Bisphonol-A.\n\n– Bộ máy hoạt động một cách êm ái, nhẹ nhàng không gây ảnh hưởng đến mẹ và bé.\n\n– Máy đa dạng và phong phú, bạn có thể chọn <strong>máy hút sữa điện đôi Unimom</strong> hoặc máy hút bằng tay. Vì thế nên mẹ dễ dàng lựa chọn loại máy phù hợp với tình hình tài chính.\n\n<img class=\"alignnone size-full wp-image-31639 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/10/hut-sua-dien-doi-unimom_1.gif\" alt=\"máy hút sữa tốt nhất\" />\n<h3><strong><em>Máy hút sữa Spectra</em></strong></h3>\nThêm một thương hiệu lớn đến từ Hàn Quốc, máy hút sữa Spectra đạt chứng nhận về an toàn tiêu chuẩn Châu Âu, FDA Mỹ cùng hệ thống quản lý chất lượng quốc tế. Đây là <strong>máy hút sữa tốt</strong> có thiết kế sang trọng, công nghệ tiên tiến. Nếu mẹ đang phân vân thì hãy lựa chọn sớm máy hút sữa Spectra để chăm sóc bé tốt hơn.\n\nƯu điểm\n\n– Không sử dụng chất Bisphonol-A trong sản phẩm.\n\n– Thiết kế đơn giản, dễ dàng sử dụng.\n\n– Máy hoạt động êm ái nên không gây ồn hay ảnh hưởng đến mẹ và bé.\n\n– Sản phẩm luôn được cải tiến về mẫu mã và chủng loại nên mang đến nhiều ưu điểm vượt trội hơn so với các máy cùng chức năng khác.\n\nTrên đây là danh sách các thương hiệu <strong>máy hút sữa tốt</strong> mà các mẹ nên lựa chọn để hỗ trợ trong việc chăm sóc và nuôi dưỡng bé được tốt hơn. Và các mẹ đang lưỡng lự máy hút sữa nào tốt thì qua bài viết này tin chắc bạn cũng đã có cho mình câu trả lời thích hợp.\n\nNguồn: Kidplaza","Top những thương hiệu máy hút sữa tốt nhất hiện nay","","publish","open","open","","top-nhung-thuong-hieu-may-hut-sua-tot-nhat-hien-nay","","","2017-10-11 13:34:25","2017-10-11 06:34:25","","0","https://bizhostvn.com/w/mevabe/?p=1561","0","post","","0"),
("1562","1","2017-10-11 13:34:19","2017-10-11 06:34:19","","may-hut-sua-philip-avents-1-copy","","inherit","open","closed","","may-hut-sua-philip-avents-1-copy","","","2017-10-11 13:34:19","2017-10-11 06:34:19","","1561","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/may-hut-sua-philip-avents-1-copy.jpg","0","attachment","image/jpeg","0"),
("1566","1","2017-10-11 13:38:25","2017-10-11 06:38:25","","Kinh nghiệm<br>hướng dẫn","","publish","closed","closed","","kinh-nghiemhuong-dan","","","2017-10-11 13:38:25","2017-10-11 06:38:25","","0","https://bizhostvn.com/w/mevabe/?p=1566","144","nav_menu_item","","0"),
("1570","1","2017-10-11 13:41:39","2017-10-11 06:41:39","","san-hang-gia-re","","inherit","open","closed","","san-hang-gia-re","","","2017-10-11 13:41:39","2017-10-11 06:41:39","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/san-hang-gia-re.png","0","attachment","image/png","0"),
("1572","1","2017-10-11 13:45:51","2017-10-11 06:45:51","","14","","inherit","open","closed","","14","","","2017-10-11 13:45:51","2017-10-11 06:45:51","","1","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/14.jpg","0","attachment","image/jpeg","0"),
("1577","1","2017-10-11 13:48:11","2017-10-11 06:48:11","","300x250-01","","inherit","open","closed","","300x250-01","","","2017-10-11 13:48:11","2017-10-11 06:48:11","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/300x250-01.png","0","attachment","image/png","0"),
("1578","1","2017-10-11 13:51:11","2017-10-11 06:51:11","<p class=\"lead\"><strong>Đồ dùng tắm gội cho bé là một trong những món dụng cụ không thế thiếu mà mẹ cần mua khi đi mua đồ sơ sinh cho con. Bé sơ sinh cũng giống như chúng ta bé cần được tắm gội hàng ngày để giúp làm sạch lớp da giấy cũng như tạo sự thoáng mát cho lỗ chân lông đảm bảm cho trẻ được thoải mái nhất. Khi mua đồ tắm gội cho bé mẹ cần phải mua khá nhiều món đồ khác nhau. Dưới đây là một vài gợi ý cho mẹ và bé có thể chọn được những đồ dùng tốt nhất.</strong></p>\n<img class=\"aligncenter wp-image-31329\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/09/1_55257.jpg\" alt=\"\" />\n<h2>Danh sách đồ dùng tắm gội của trẻ sơ sinh</h2>\n<h3>1. Sữa tắm.</h3>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/cache/1/image/430x/9df78eab33525d08d6e5fb8d27136e95/s/u/sua-tam-goi-so-sinh-bubchen-400ml-3.jpg\" alt=\"Kết quả hình ảnh cho sữa tắm cho bé kidsplaza\" />\n\n+ Một trong những đồ dùng cần thiết nhất để tắm cho bé chính là sữa tắm. Hiện nay trên thị trường có nhiều loại sữa tắm khác nhau mẹ có thể mua, tuy nhiên mẹ lưu ý cần mua những loại sữa tắm chuyên biệt dành riêng cho trẻ nhỏ không nên dùng sữa tắm của người lớn. Bởi sữa tắm của người lớn có thể gây ảnh hưởng tới sức khỏe của bé vì trong đó có chưa nhiều chất hóa học, chất tạo mầu, mùi, chất làm trắng. Những loại sữa tắm cho bé thì được làm từ những nguồn nguyên liệu thiên nhiên, an toàn cho bé.\n\n+ Một số loại nước tắm an toàn hiện nay cho bé như: sữa tắm pigeon, sữa tắm, lactalyst, sữa tắm buchen, chicco…những loại sữa tắm được làm từ 100% tinh chất thảo dược tự nhiên, vừa giúp làm sạch da và làm mềm làn da mỏng manh của trẻ, đồng thời bảo vệ da của bé khỏi những tác động bên ngoài\n<h3>2. Chậu tắm cho bé</h3>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/c/h/chau-tam-simba-1.jpg\" alt=\"Kết quả hình ảnh cho chậu tắm cho bé\" />\n\n+ Khi chọn sữa tắm cho con thì mẹ nên chọn lựa những loại chậu to, nhựa chất lượng tốt, hơn nữa mẹ cũng nên chọn những loại chậu có kèm theo nhiệt kế sẽ giúp mẹ kiểm soát được nhiệt độ nước tránh làm bỏng da hay làm bé bị lạnh.\n\n+ Chậu tắm cho con hiện nay như chậu tắm mamago, kiza, duy tân, việt nhật là những chậu tắm bền, đẹp, chịu lực tốt giá bán cũng khá phải chăng, đảm bảo phù hợp với các bé.\n<h3>3. Khăn tắm cho bé</h3>\n<img class=\"aligncenter\" src=\"https://k.r.worldssl.net/media/catalog/product/i/m/img_3935.jpg\" alt=\"Hình ảnh có liên quan\" />\n\n+ Khi chọn khăn tắm cho con thì các mẹ nên chọn những loại khăn tắm mềm mại, khả năng thấm nước tốt. Thường thì mọi người hay chọn khăn xô dùng trước và sau khi tắm để quấn ủ cho bé. Khăn xô có ưu điểm làm mềm, thấm nước tốt. Sử dụng loại khăn to để quấn ủ cho bé sau khi tắm.\n\n+ Khi tắm thì mẹ có thể chọn khăn tăm và khăn mặt riêng và vẫn ưu tiên chọn khăn tắm.\n\nMua đồ cho bé tưởng chừng dễ nhưng cũng không hề dễ chút nào bởi những món đồ sơ sinh cho bé mẹ cần lựa chọn những món đồ chất lượng, có nguồn gốc và đảm bảo tốt an toàn cho bé.\n\nNguồn: Kidplaza","Đồ dùng tắm gội mẹ cần mua cho bé sơ sinh","","publish","open","open","","do-dung-tam-goi-me-can-mua-cho-be-so-sinh","","","2017-10-11 13:51:11","2017-10-11 06:51:11","","0","https://bizhostvn.com/w/mevabe/?p=1578","0","post","","0"),
("1579","1","2017-10-11 13:51:07","2017-10-11 06:51:07","","1400299283-cahm-soc-be","","inherit","open","closed","","1400299283-cahm-soc-be","","","2017-10-11 13:51:07","2017-10-11 06:51:07","","1578","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/1400299283-cahm-soc-be.jpg","0","attachment","image/jpeg","0"),
("1581","1","2017-10-11 13:52:52","2017-10-11 06:52:52","<p class=\"lead\">Bạn đang có nhu cầu mua một chiếc máy xay hiện đại và bạn quyết định chọn dòng máy xay thương hiệu Braun. Nhưng phân vân chưa biết mua máy xay cầm tay braun ở đâu rẻ.</p>\n\n<h2>Bạn có biết mua máy xay cầm tay Braun ở đâu rẻ</h2>\nChia sẻ bạn những cách mua được <strong>máy xay giá rẻ</strong> và đặc biệt chúng đáp ứng được những nhu cầu sử dụng cơ bản của bạn. Mua của những người muốn thanh lý máy xay cầm tay\n<ol>\n 	<li>\n<h3>Các trang giao vặt trên mạng</h3>\n</li>\n</ol>\nBạn có thể vào những trang web rao vặt trên mạng như chotot.vn, vatgia.com…để tìm kiếm những người đang có nhu cầu bán máy xay. Những người đã và đang sử dụng máy xay binhg thường nhưng vì lý do chủ quan nào đó. Mà họ phải bán chiếc máy xay của mình lấy tiền tập trung vào việc cấp thiết của họ.\n\nVà bạn không quá quan trọng máy đó mới hay cũ thì có thể mua được những chiếc máy xay đã qua sử dụng với mức giá rẻ. Phần lớn người bán là những người dùng, bạn có thể hỏi thông tin một cách thực tế nhất\n<div id=\"attachment_25707\" class=\"wp-caption aligncenter\"><img class=\"wp-image-25707 size-full\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/mua-may-xay-cam-tay-braun-o-dau-re-1.jpg\" sizes=\"(max-width: 959px) 100vw, 959px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/mua-may-xay-cam-tay-braun-o-dau-re-1.jpg 959w, https://k.r.worldssl.net/blog/wp-content/uploads/2016/12/mua-may-xay-cam-tay-braun-o-dau-re-1-768x556.jpg 768w\" alt=\"mua máy xay cầm tay braun ở đâu rẻ\" />\n<p class=\"wp-caption-text\">Mua máy xay cầm tay Braun ở đâu rẻ – Mua tại các trang giao vặt</p>\n\n</div>\n<ol start=\"2\">\n 	<li>\n<h3>Mua ở các chợ công nghệ truyền thống</h3>\n</li>\n</ol>\nCác chợ công nghệ luôn nhộn nhịp vào mỗi cuối tuần bới kẻ bán người mua là những người trẻ đi săn những món đồ mình thích với giá rẻ hơn rất nhiều so với giá ở các cửa hàng chính hãng khác.\n\nBạn không quan tâm đến hàng chính hãng và điều kiện bảo hành thì có thể sử dụng những sản phẩm này. Bạn nên lưu ý tìm hiểu nguồn gốc của hàng ở mức cơ bản như máy này là mới 100% hay đã được sang nhượng nhiều lần.\n\nXem máy xay có bị lỗi gì không, sử dụng được những chức năng nào, độ bền người bán cam kết ít nhất là bao lâu.\n<ol start=\"3\">\n 	<li>\n<h3>Tham gia các chương trình khuyến mãi, giảm giá</h3>\n</li>\n</ol>\nCác trung tâm mua sắm lớn thường có những dịp giảm giá sốc trong năm. Bạn nên thường xuyên theo dõi các thông tin để nhận được những ưu đãi lớn từ các trung tâm mua sắm này. Một mẹo mua sắm thông minh các mẹ nên áp dụng. Giúp các mẹ tiết kiệm được chi phí một cách đáng kể.\n\nCác mẹ có thể tham khảo nhiều mẫu <strong>máy xay cầm tay braun</strong> hoặc các loại máy xay cầm tay khác tại hệ thống cửa hàng mẹ và bé KidsPlaza. Để được tư vấn ngay bây giờ hãy gọi điện trực tiếp tới hotline 18006608 (hoàn toàn miễn phí)\n\nNguồn: Kid Plaza","Mua máy xay cầm tay braun ở đâu rẻ tại Sài Gòn","","publish","open","open","","mua-may-xay-cam-tay-braun-o-dau-re-tai-sai-gon","","","2017-10-11 13:52:52","2017-10-11 06:52:52","","0","https://bizhostvn.com/w/mevabe/?p=1581","0","post","","0"),
("1582","1","2017-10-11 13:52:46","2017-10-11 06:52:46","","mua-may-xay-cam-tay-braun-o-dau-re-1","","inherit","open","closed","","mua-may-xay-cam-tay-braun-o-dau-re-1","","","2017-10-11 13:52:46","2017-10-11 06:52:46","","1581","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/mua-may-xay-cam-tay-braun-o-dau-re-1.jpg","0","attachment","image/jpeg","0"),
("1584","1","2017-10-11 13:54:00","2017-10-11 06:54:00","<p class=\"lead\">Sự thay đổi về thời tiết khiến nhiều trẻ nhỏ bị ho, sổ mũi kéo dài. Bài thuốc từ củ gừng giúp trị dứt cơn ho, sổ mũi cho trẻ chỉ sau 3 ngày sử dụng ngay lập tức được hàng triệu mẹ bỉm sữa đón nhận.</p>\n<img class=\"alignnone size-full wp-image-26093\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh1.png\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh1.png 500w, https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh1-350x230.png 350w\" alt=\"\" />\n\nBài thuốc giúp trị dứt cơn ho, sổ mũi cho trẻ nhỏ từ củ gừng theo chia sẻ của Lương y Phạm Như Tá (Nguyên Giáo viên ĐH Y Dược TP HCM, hiện đang là Chủ nhiệm Tiểu ban Thuốc Cổ truyền Hội Đông y TP HCM). Cách làm cực đơn giản như sau:\n\n<strong>Nguyên liệu:</strong>\n<ul>\n 	<li>Gừng già: 50g</li>\n</ul>\n<ul>\n 	<li>Muối hột: 20g</li>\n</ul>\n<ul>\n 	<li>Nước: 1 lít</li>\n</ul>\n<ul>\n 	<li>Nồi, thau…</li>\n</ul>\n<strong>Cách làm:</strong>\n<ul>\n 	<li>Gừng chọn củ già, gọt vỏ và rửa sạch dưới vòi nước.</li>\n</ul>\n<ul>\n 	<li>Cho gừng vào cối giã nhỏ, nấu chung với 1 lít nước và muối hột.</li>\n</ul>\n<ul>\n 	<li>Khi nước sôi thì vặn nhỏ lửa, để chừng 5 phút cho tinh chất gừng ra hết sau đó tắt bếp và để nguội khoảng 40 độ là có thể sử dụng được.</li>\n</ul>\n<strong>Cách dùng:</strong>\n\nTrước khi đi ngủ, mẹ hãy đổ nước gừng ấm vừa đun ra thau để ngâm chân cho bé, vừa ngâm vừa massage gan chân cho con, nếu mẹ biết huyệt dũng huyền thì bấm cho con sẽ có tác dụng nhanh hơn. Tuy nhiên, nếu không biết thì mẹ chỉ cần massage chân cho bé là đủ.\n\n<img class=\"alignnone size-full wp-image-26094\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh2.png\" sizes=\"(max-width: 501px) 100vw, 501px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh2.png 501w, https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/Be-bi-so-mui-co-nen-tam-hay-ngam-chan-nuoc-gung-hinh-anh2-350x230.png 350w\" alt=\"\" />\n\n<strong>Cách massage</strong>: dùng ngón tay cái tì lên mu bàn chan của bé, các ngón còn lại bóp nhẹ vào gan bàn chân, đi dọc từ gót chân lên gần ngón chân. Cũng có thể dùng gừng chà vào lòng bàn chân của bé.\nKhi nước hết ấm, mẹ lấy chân con ra đặt vào khăn sạch, lau khô 2 chân con xong nhẹ nhàng massage bằng dầu khuynh diệp hoặc dầu tràm đều được để dầu thấm và lan tỏa vào các huyệt đạo ở chân bé. Sau đó mang vớ chân cho con rồi đi ngủ.\n\n<img class=\"alignnone size-full wp-image-26095\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/01/nga1483779318_3947.png\" alt=\"\" />\n\nKiên trì sử dụng đều đặn mỗi ngày một lần, trong 3 ngày liên tiếp các triệu chứng ho, sổ mũi của bé sẽ khỏi hẳn.\n\n<strong>Cách tắm bằng nước gừng:</strong>\n\nTrẻ đang bị ốm thì mẹ có thể tắm cho bé mỗi ngày\n\nCòn để phòng bệnh có thể tấm  1 tuần 2 – 3 lần vào mùa hè hoặc tắm mỗi ngày vào mùa đông. Tắm bằng gừng giúp trẻ giữ ấm phổi, cơ thể luôn ấm áp phòng bệnh rất tốt.\n\n<em><strong>Cách 1</strong></em>: Giã gừng thật nát, cho vào 1 bát nước sôi, để chừng 15phút, sau đó pha cả gừng và nước gừng vào chậu nước ấm để tắm cho con. Chọn chậu tắm sâu lòng một chút, thả con ngập gần ngực luôn là tắm thoải mái trong phòng kín gió là ổn.\nCòn hôm nào rét quá, hay con cảm nhưng đang sốt, các MẸ có thể áp dụng cách sau: Nấu nồi nước có gừng cho cả sả cây vào luôn càng tốt. Nấu sôi lên chừng 10phút rồi cho nồi nước vào chăn to, mẹ ôm con, ngồi vào trong, cho hơi nóng nó tỏa ra ấm thật ấm đã rồi mới cởi đồ con ra, nhớ he hé góc chăn cho có không khí, ủ vậy chừng 5 – 7 phút, rồi lau người con lại là giải cảm ngừa bệnh mà không cần tắm luôn\n\n<em><strong>Cách 2:</strong></em> Nên áp dụng với trẻ ho lâu ngày\nNấu nước gừng, chọn gừng già 200 gram, giã nát gừng với 2-3 lít nước, sau đó pha với nước lạnh, còn ấm và tắm cho con, cho con ngâm cả người (cho con nằm hay bế đỡ lưng cho con để ngâm đến qua phần ngực luôn) trong nước trong vòng 5 – 7 phút.\n\nSẽ có tác dụng giải cảm, trị ho lâu ngày rất tốt.\n\n<strong>LƯU Ý:</strong>\n<ul>\n 	<li>Trong quá trình ngâm người cho con, nếu nước giảm độ ấm thì thêm 1 ít nước nóng vào tiếp.</li>\n</ul>\n<ul>\n 	<li>Các mẹ nhớ để ý xem da của bé có bị với gừng hay không để giảm bớt lượng gừng cho phù hợp</li>\n</ul>\nGừng trị ho cho trẻ được hàng chục nghìn độc giả chia sẻ, hàng triệu bình luận của các mẹ bỉm sữa trên khắp mọi miền tổ quốc!\n\nNguồn: KID PLAZA","Hàng nghìn em bé đã khỏi ho, sổ mũi nhờ bài thuốc từ củ gừng","","publish","open","open","","hang-nghin-em-be-da-khoi-ho-so-mui-nho-bai-thuoc-tu-cu-gung","","","2017-10-11 13:54:00","2017-10-11 06:54:00","","0","https://bizhostvn.com/w/mevabe/?p=1584","0","post","","0"),
("1585","1","2017-10-11 13:53:53","2017-10-11 06:53:53","","nga1483779318_3947","","inherit","open","closed","","nga1483779318_3947","","","2017-10-11 13:53:53","2017-10-11 06:53:53","","1584","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/nga1483779318_3947.png","0","attachment","image/png","0"),
("1588","1","2017-10-11 13:55:25","2017-10-11 06:55:25","<p class=\"lead\"><em><strong>Ngày nay các bà mẹ khi chọn mua quần áo cho con, thường ưa chuộng những thương hiệu quần áo Việt Nam hơn. Bởi quần áo Việt Nam ngày càng được thiết kế với kiểu dáng, chất liệu và màu sắc bắt mắt hơn, tốt hơn. </strong><strong>Trên thị trường hiện nay thì có nhiều hãng quần áo sơ sinh cho bé khác nhau, từ hàng cao cấp có, bình dân cũng có.</strong></em></p>\nDưới đây sẽ là 3 hãng <strong>quần áo sơ sinh Việt Nam</strong> được các bà mẹ chọn mua nhiều.\n<h2>1. Quần áo sơ sinh Kiza</h2>\n<strong>Quần áo sơ sinh kiza</strong> là lựa chọn hàng đầu cho bé . Thương hiệu Kiza của Việt Nam chuyên sản xuất đồ dùng, quần áo cho bé với tiêu chí sản phẩm, an toàn chất lượng cho trẻ nhỏ. Quần áo kiza được thiết kế với kiểu dáng đẹp rất bắt mắt, cùng với nhiều mẫu mã và lứa tuổi khác nhau. Có quần áo cho trẻ sơ sinh, có quần áo cho các bé từ 1- 5 tuổi.\n\n<img class=\"alignnone size-full wp-image-30819 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/Untitled-1.png\" alt=\"\" />\n\nChất liệu quần áo sơ sinh kiza được làm hoàn toàn bằng 100% vải cotton chất lượng thoáng mát, thấm hút mồ hôi tốt, khi mặc không bị nóng và bí. Vải cotton cũng rất mềm, mịn không gây xước da của bé.\n\nVới quần áo sơ sinh kiza có rất nhiều loại như: quần, áo, body sơ sinh, tã dán, tã chéo…\n<h2>2. Quần áo sơ sinh Mio</h2>\nMioMio là thương hiệu quần áo sơ sinh cao cấp được các bà mẹ ưa chuộng và chọn mua từ nhiều năm nay. Mio có sự da dạng về mẫu mã và kiểu dáng chất lượng. Quần áo sơ sinh Mio được nhiều mẹ chọn mua bởi chất liệu vải cao cấp, khi mặc thoáng mát không hề gây bí bách cho bé. Kiểu dáng thì đơn giản nhưng lại rất bắt mắt.\n\n<img class=\"alignnone size-full wp-image-30817 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/10872_ao_so_sinh_mio_dai_tay_03.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/10872_ao_so_sinh_mio_dai_tay_03.jpg 500w, https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/10872_ao_so_sinh_mio_dai_tay_03-350x230.jpg 350w\" alt=\"\" />\n\nƯu điểm của quần áo sơ sinh Mio là vải mềm, khi giặt không bị sờn chỉ, bạc mầu. Thiết kế vừa vặn với cơ thể bé, giúp bé mặc một cách thoải mái nhất. Ngoài ra với việc đóng khuy chéo sẽ làm hạn chế việc bị gió lùa làm cho trẻ bị lạnh.\n\nQuần áo sơ sinh Mio có nhiều size phù hợp với các bé từ 1- 12 tháng.\n<h2>3. Quần áo sơ sinh Lullaby</h2>\nQuần áo sơ sinh cho bé Lullaby dành cho bé từ 1- 24 tháng. Cũng là một trong những thương hiệu quần áo sơ sinh được các bà mẹ chọn mua nhiều. Quần áo Lullaby với vải 100% cotton đẹp, thoáng mát, không gây kích ứng da bé. Trên áo có in nhiều họa tiết bắt mắt, đáng yêu màu sắc, nhẹ nhàng. Với thiết kể đủ đa dạng các mẫu mã quần áo.\n\n<img class=\"wp-image-30816 aligncenter\" src=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/bococtaycaigiua_zps9234cb21-768x512.jpg\" sizes=\"(max-width: 488px) 100vw, 488px\" srcset=\"https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/bococtaycaigiua_zps9234cb21-768x512.jpg 768w, https://k.r.worldssl.net/blog/wp-content/uploads/2017/07/bococtaycaigiua_zps9234cb21.jpg 960w\" alt=\"\" />\n\nNguồn: KID PLAZA","3 hãng quần áo sơ sinh Việt Nam được chọn mua nhiều","","publish","open","open","","3-hang-quan-ao-so-sinh-viet-nam-duoc-chon-mua-nhieu","","","2017-10-11 13:55:25","2017-10-11 06:55:25","","0","https://bizhostvn.com/w/mevabe/?p=1588","0","post","","0"),
("1589","1","2017-10-11 13:55:20","2017-10-11 06:55:20","","bococtaycaigiua_zps9234cb21-768x512","","inherit","open","closed","","bococtaycaigiua_zps9234cb21-768x512","","","2017-10-11 13:55:20","2017-10-11 06:55:20","","1588","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/bococtaycaigiua_zps9234cb21-768x512.jpg","0","attachment","image/jpeg","0"),
("1601","1","2017-10-11 14:02:48","2017-10-11 07:02:48","[ux_sidebar id=\"mobile-menu\"]","Mobile menu","","publish","closed","closed","","block-2","","","2017-10-11 14:10:42","2017-10-11 07:10:42","","0","https://bizhostvn.com/w/mevabe/?post_type=blocks&#038;p=1601","0","blocks","","0"),
("1604","1","2017-10-11 14:03:49","2017-10-11 07:03:49","","Mobile menu","","publish","closed","closed","","mobile-menu","","","2017-10-11 14:06:40","2017-10-11 07:06:40","","0","https://bizhostvn.com/w/mevabe/?post_type=sidebar&#038;p=1604","0","sidebar","","0"),
("1605","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Bé ăn - bé uống","","publish","closed","closed","","be-an-be-uong","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1605","1","nav_menu_item","","0"),
("1606","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Vệ sinh cho bé","","publish","closed","closed","","ve-sinh-cho-be","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1606","2","nav_menu_item","","0"),
("1607","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Bé ngủ ngon","","publish","closed","closed","","be-ngu-ngon","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1607","3","nav_menu_item","","0"),
("1608","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Bé tắm - bé gội","","publish","closed","closed","","be-tam-be-goi","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1608","4","nav_menu_item","","0"),
("1609","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Bé ra ngoài","","publish","closed","closed","","be-ra-ngoai","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1609","5","nav_menu_item","","0"),
("1610","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Bé học - bé chơi","","publish","closed","closed","","be-hoc-be-choi","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1610","6","nav_menu_item","","0"),
("1611","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Mẹ an tâm","","publish","closed","closed","","me-an-tam","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1611","7","nav_menu_item","","0"),
("1612","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Quần áo thời trang","","publish","closed","closed","","quan-ao-thoi-trang","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1612","8","nav_menu_item","","0"),
("1613","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Đồ dùng gia đình","","publish","closed","closed","","do-dung-gia-dinh","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1613","9","nav_menu_item","","0"),
("1614","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Đồ sơ sinh giá rẻ","","publish","closed","closed","","do-so-sinh-gia-re","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1614","10","nav_menu_item","","0"),
("1615","1","2017-10-11 14:06:25","2017-10-11 07:06:25","","Kinh nghiệm - hướng dẫn","","publish","closed","closed","","kinh-nghiem-huong-dan","","","2017-10-11 14:06:25","2017-10-11 07:06:25","","0","https://bizhostvn.com/w/mevabe/?p=1615","11","nav_menu_item","","0"),
("1651","1","2017-10-11 15:07:38","2017-10-11 08:07:38","","470be81ddd1d8864ee4e18de2fe372b7","","inherit","open","closed","","470be81ddd1d8864ee4e18de2fe372b7","","","2017-10-11 15:07:38","2017-10-11 08:07:38","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/470be81ddd1d8864ee4e18de2fe372b7.jpg","0","attachment","image/jpeg","0"),
("1653","1","2017-10-11 15:08:11","2017-10-11 08:08:11","","b2f0334dc14c585ff0f414d8c6cdc485","","inherit","open","closed","","b2f0334dc14c585ff0f414d8c6cdc485","","","2017-10-11 15:08:11","2017-10-11 08:08:11","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/b2f0334dc14c585ff0f414d8c6cdc485.jpg","0","attachment","image/jpeg","0"),
("1655","1","2017-10-11 15:08:39","2017-10-11 08:08:39","","567249fb43ed575d33d1577d393a2384","","inherit","open","closed","","567249fb43ed575d33d1577d393a2384","","","2017-10-11 15:08:39","2017-10-11 08:08:39","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/567249fb43ed575d33d1577d393a2384.png","0","attachment","image/png","0"),
("1657","1","2017-10-11 15:09:13","2017-10-11 08:09:13","","6abc6c46c38b07d5b83f060144dbf990","","inherit","open","closed","","6abc6c46c38b07d5b83f060144dbf990","","","2017-10-11 15:09:13","2017-10-11 08:09:13","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/6abc6c46c38b07d5b83f060144dbf990.jpg","0","attachment","image/jpeg","0"),
("1659","1","2017-10-11 15:09:38","2017-10-11 08:09:38","","ade92cc6d705fb91d6d139070d87d07b","","inherit","open","closed","","ade92cc6d705fb91d6d139070d87d07b","","","2017-10-11 15:09:38","2017-10-11 08:09:38","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2017/10/ade92cc6d705fb91d6d139070d87d07b.jpg","0","attachment","image/jpeg","0"),
("1662","1","2017-10-11 15:30:59","2017-10-11 08:30:59","","Order &ndash; Tháng Mười 11, 2017 @ 03:30 Chiều","Mua thêm","wc-on-hold","open","closed","order_59ddd6c3c7359","order-oct-11-2017-0830-am","","","2017-10-11 15:30:59","2017-10-11 08:30:59","","0","https://bizhostvn.com/w/mevabe/?post_type=shop_order&#038;p=1662","0","shop_order","","1"),
("1664","1","2018-03-01 18:42:31","2018-03-01 11:42:31","","BIZHOST-DEMO","","inherit","open","closed","","bizhost-demo","","","2018-03-01 18:42:31","2018-03-01 11:42:31","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2018/03/BIZHOST-DEMO.png","0","attachment","image/png","0"),
("1666","1","2018-03-01 18:43:59","2018-03-01 11:43:59","","FAVI","","inherit","open","closed","","favi","","","2018-03-01 18:43:59","2018-03-01 11:43:59","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2018/03/FAVI.png","0","attachment","image/png","0"),
("1667","1","2019-05-16 20:08:09","2019-05-16 13:08:09","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-16 20:08:09","2019-05-16 13:08:09","","0","https://bizhostvn.com/w/mevabe/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `bz_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO bz_term_relationships VALUES
("1","1","0"),
("107","15","0"),
("108","15","0"),
("109","15","0"),
("152","45","0"),
("189","45","0"),
("246","45","0"),
("247","45","0"),
("248","45","0"),
("250","45","0"),
("251","45","0"),
("252","45","0"),
("253","45","0"),
("262","45","0"),
("265","45","0"),
("266","45","0"),
("267","45","0"),
("268","45","0"),
("269","45","0"),
("270","45","0"),
("271","45","0"),
("272","45","0"),
("273","45","0"),
("274","45","0"),
("275","45","0"),
("276","45","0"),
("277","45","0"),
("279","45","0"),
("280","45","0"),
("281","45","0"),
("282","45","0"),
("283","45","0"),
("284","45","0"),
("285","45","0"),
("286","45","0"),
("287","45","0"),
("288","45","0"),
("289","45","0"),
("290","45","0"),
("291","45","0"),
("292","45","0"),
("294","45","0"),
("389","45","0"),
("390","45","0"),
("463","45","0"),
("464","45","0"),
("465","45","0"),
("466","45","0"),
("467","45","0"),
("468","45","0"),
("469","45","0"),
("470","45","0"),
("471","45","0"),
("472","45","0"),
("473","45","0"),
("474","45","0"),
("475","45","0"),
("476","45","0"),
("477","45","0"),
("478","45","0"),
("479","45","0"),
("480","45","0"),
("481","45","0"),
("482","45","0"),
("483","45","0"),
("484","45","0"),
("524","15","0"),
("653","45","0"),
("654","45","0"),
("655","45","0"),
("656","45","0"),
("657","45","0"),
("658","45","0"),
("659","45","0"),
("660","45","0"),
("661","45","0"),
("662","45","0"),
("663","45","0"),
("664","45","0"),
("665","45","0"),
("666","45","0"),
("667","45","0"),
("668","45","0"),
("669","45","0"),
("670","45","0"),
("671","45","0"),
("672","45","0"),
("673","45","0"),
("674","45","0"),
("675","45","0"),
("676","45","0"),
("677","45","0"),
("678","45","0"),
("680","45","0"),
("816","2","0"),
("816","86","0"),
("816","87","0"),
("816","88","0"),
("816","157","0"),
("816","197","0");
INSERT INTO bz_term_relationships VALUES
("816","224","0"),
("816","225","0"),
("816","226","0"),
("816","227","0"),
("816","228","0"),
("816","242","0"),
("816","301","0"),
("816","320","0"),
("826","2","0"),
("828","2","0"),
("834","2","0"),
("834","86","0"),
("834","87","0"),
("834","89","0"),
("834","199","0"),
("834","229","0"),
("834","233","0"),
("834","243","0"),
("834","301","0"),
("834","314","0"),
("834","315","0"),
("834","316","0"),
("836","2","0"),
("836","14","0"),
("836","90","0"),
("836","156","0"),
("836","170","0"),
("836","228","0"),
("836","229","0"),
("836","243","0"),
("836","301","0"),
("836","314","0"),
("838","2","0"),
("838","86","0"),
("838","87","0"),
("838","91","0"),
("838","141","0"),
("838","148","0"),
("838","149","0"),
("838","150","0"),
("838","151","0"),
("838","152","0"),
("838","153","0"),
("838","154","0"),
("838","169","0"),
("838","228","0"),
("838","234","0"),
("838","241","0"),
("838","301","0"),
("838","314","0"),
("838","316","0"),
("844","2","0"),
("844","86","0"),
("844","87","0"),
("844","92","0"),
("844","186","0"),
("844","228","0"),
("844","229","0"),
("844","234","0"),
("844","243","0"),
("844","301","0"),
("844","314","0"),
("844","319","0"),
("846","2","0"),
("846","14","0"),
("846","86","0"),
("846","87","0"),
("846","92","0"),
("846","170","0"),
("846","228","0"),
("846","243","0"),
("846","301","0"),
("846","314","0"),
("846","319","0"),
("852","93","0"),
("853","93","0"),
("854","93","0"),
("855","93","0"),
("856","93","0"),
("857","93","0"),
("858","93","0"),
("859","93","0"),
("860","93","0"),
("861","93","0"),
("862","94","0"),
("863","94","0"),
("864","94","0"),
("865","94","0"),
("866","94","0"),
("867","94","0"),
("868","94","0"),
("869","94","0"),
("870","94","0"),
("871","94","0"),
("899","45","0"),
("900","45","0"),
("901","45","0"),
("902","45","0"),
("903","45","0"),
("904","45","0");
INSERT INTO bz_term_relationships VALUES
("905","45","0"),
("906","45","0"),
("907","45","0"),
("908","45","0"),
("909","45","0"),
("910","45","0"),
("911","45","0"),
("912","45","0"),
("913","45","0"),
("914","45","0"),
("915","45","0"),
("916","45","0"),
("917","45","0"),
("918","45","0"),
("919","45","0"),
("920","45","0"),
("921","45","0"),
("922","45","0"),
("923","45","0"),
("924","45","0"),
("926","45","0"),
("927","45","0"),
("934","111","0"),
("935","111","0"),
("936","111","0"),
("937","111","0"),
("938","111","0"),
("939","111","0"),
("940","111","0"),
("941","111","0"),
("942","111","0"),
("943","111","0"),
("944","112","0"),
("945","112","0"),
("946","112","0"),
("947","112","0"),
("948","112","0"),
("949","112","0"),
("950","112","0"),
("951","112","0"),
("952","112","0"),
("953","112","0"),
("958","2","0"),
("958","14","0"),
("958","86","0"),
("958","87","0"),
("958","107","0"),
("958","146","0"),
("958","164","0"),
("958","170","0"),
("958","228","0"),
("958","243","0"),
("958","301","0"),
("958","314","0"),
("958","315","0"),
("960","2","0"),
("960","14","0"),
("960","86","0"),
("960","87","0"),
("960","103","0"),
("960","141","0"),
("960","145","0"),
("960","164","0"),
("960","168","0"),
("960","228","0"),
("960","234","0"),
("960","243","0"),
("960","298","0"),
("960","314","0"),
("962","2","0"),
("962","16","0"),
("962","17","0"),
("962","24","0"),
("962","157","0"),
("962","170","0"),
("962","228","0"),
("962","243","0"),
("962","246","0"),
("962","261","0"),
("962","292","0"),
("964","2","0"),
("964","16","0"),
("964","17","0"),
("964","24","0"),
("964","168","0"),
("964","228","0"),
("964","243","0"),
("964","260","0"),
("964","310","0"),
("964","311","0"),
("966","2","0"),
("966","11","0"),
("966","16","0"),
("966","17","0"),
("966","20","0"),
("966","164","0"),
("966","190","0"),
("966","224","0"),
("966","225","0"),
("966","265","0");
INSERT INTO bz_term_relationships VALUES
("966","311","0"),
("968","2","0"),
("968","16","0"),
("968","17","0"),
("968","24","0"),
("968","175","0"),
("968","247","0"),
("968","261","0"),
("968","299","0"),
("968","309","0"),
("970","2","0"),
("970","16","0"),
("970","19","0"),
("970","43","0"),
("970","158","0"),
("970","182","0"),
("970","225","0"),
("970","243","0"),
("970","278","0"),
("970","292","0"),
("972","2","0"),
("972","16","0"),
("972","17","0"),
("972","27","0"),
("972","187","0"),
("972","228","0"),
("972","243","0"),
("972","259","0"),
("972","290","0"),
("972","316","0"),
("972","317","0"),
("974","2","0"),
("974","16","0"),
("974","17","0"),
("974","30","0"),
("974","147","0"),
("974","173","0"),
("974","229","0"),
("974","243","0"),
("974","276","0"),
("974","285","0"),
("974","312","0"),
("974","313","0"),
("976","2","0"),
("976","16","0"),
("976","18","0"),
("976","31","0"),
("976","171","0"),
("976","228","0"),
("976","243","0"),
("976","298","0"),
("976","312","0"),
("976","314","0"),
("976","315","0"),
("1016","45","0"),
("1017","45","0"),
("1018","45","0"),
("1019","45","0"),
("1020","45","0"),
("1021","45","0"),
("1022","45","0"),
("1023","45","0"),
("1024","45","0"),
("1025","45","0"),
("1026","45","0"),
("1027","45","0"),
("1028","45","0"),
("1029","45","0"),
("1030","45","0"),
("1031","45","0"),
("1032","45","0"),
("1033","45","0"),
("1034","45","0"),
("1035","45","0"),
("1036","45","0"),
("1037","45","0"),
("1038","45","0"),
("1039","45","0"),
("1040","45","0"),
("1042","45","0"),
("1044","138","0"),
("1045","138","0"),
("1046","138","0"),
("1047","138","0"),
("1048","138","0"),
("1049","138","0"),
("1050","138","0"),
("1051","138","0"),
("1052","138","0"),
("1053","138","0"),
("1054","139","0"),
("1055","139","0"),
("1056","139","0"),
("1057","139","0"),
("1058","139","0"),
("1059","139","0"),
("1060","139","0"),
("1061","139","0"),
("1062","139","0"),
("1063","139","0");
INSERT INTO bz_term_relationships VALUES
("1071","2","0"),
("1071","113","0"),
("1071","140","0"),
("1071","174","0"),
("1071","224","0"),
("1071","225","0"),
("1071","226","0"),
("1071","227","0"),
("1071","228","0"),
("1071","234","0"),
("1071","243","0"),
("1071","253","0"),
("1071","298","0"),
("1071","314","0"),
("1071","315","0"),
("1071","322","0"),
("1073","2","0"),
("1073","113","0"),
("1073","116","0"),
("1073","135","0"),
("1073","205","0"),
("1073","235","0"),
("1073","237","0"),
("1073","238","0"),
("1073","239","0"),
("1073","240","0"),
("1073","253","0"),
("1073","299","0"),
("1073","306","0"),
("1073","308","0"),
("1073","318","0"),
("1073","320","0"),
("1075","2","0"),
("1075","113","0"),
("1075","114","0"),
("1075","121","0"),
("1075","144","0"),
("1075","165","0"),
("1075","182","0"),
("1075","224","0"),
("1075","225","0"),
("1075","226","0"),
("1075","243","0"),
("1075","269","0"),
("1075","299","0"),
("1075","314","0"),
("1077","2","0"),
("1077","113","0"),
("1077","182","0"),
("1077","224","0"),
("1077","225","0"),
("1077","226","0"),
("1077","227","0"),
("1077","243","0"),
("1077","253","0"),
("1077","292","0"),
("1077","314","0"),
("1077","315","0"),
("1077","321","0"),
("1079","2","0"),
("1079","113","0"),
("1079","119","0"),
("1079","164","0"),
("1079","170","0"),
("1079","232","0"),
("1079","245","0"),
("1079","258","0"),
("1079","288","0"),
("1079","318","0"),
("1081","2","0"),
("1081","113","0"),
("1081","117","0"),
("1081","157","0"),
("1081","202","0"),
("1081","234","0"),
("1081","249","0"),
("1081","272","0"),
("1081","290","0"),
("1081","318","0"),
("1083","2","0"),
("1083","113","0"),
("1083","119","0"),
("1083","221","0"),
("1083","278","0"),
("1083","299","0"),
("1083","306","0"),
("1083","312","0"),
("1083","318","0"),
("1085","2","0"),
("1085","113","0"),
("1085","119","0"),
("1085","168","0"),
("1085","232","0"),
("1085","245","0"),
("1085","261","0"),
("1085","275","0"),
("1085","292","0"),
("1085","305","0"),
("1085","306","0"),
("1085","307","0");
INSERT INTO bz_term_relationships VALUES
("1085","308","0"),
("1561","1","0"),
("1566","45","0"),
("1578","1","0"),
("1581","1","0"),
("1584","1","0"),
("1588","1","0"),
("1605","323","0"),
("1606","323","0"),
("1607","323","0"),
("1608","323","0"),
("1609","323","0"),
("1610","323","0"),
("1611","323","0"),
("1612","323","0"),
("1613","323","0"),
("1614","323","0"),
("1615","323","0");




CREATE TABLE `bz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;


INSERT INTO bz_term_taxonomy VALUES
("1","1","category","","0","6"),
("2","2","product_type","","0","26"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_visibility","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","1"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","4"),
("15","15","nav_menu","","0","4"),
("16","16","product_cat","Là một trong những siêu thị mẹ và bé hàng đầu hiện nay trên thị trường Việt Nam. GiuseArt chúng tôi luôn cung cấp các sản phẩm đồ dùng, phụ kiện phục vụ quá trình ăn uống của bé một cách tốt nhất. Ngoài ra thực phẩm cho bé là điểm vượt trội của GiuseArt so với các cửa hàng mẹ và bé khác.","0","8"),
("17","17","product_cat","","16","6"),
("18","18","product_cat","","16","1"),
("19","19","product_cat","","16","1"),
("20","20","product_cat","","17","1"),
("21","21","product_cat","","17","0"),
("22","22","product_cat","","17","0"),
("23","23","product_cat","","17","0"),
("24","24","product_cat","","17","3"),
("25","25","product_cat","","17","0"),
("26","26","product_cat","","17","0"),
("27","27","product_cat","","17","1"),
("28","28","product_cat","","17","0"),
("29","29","product_cat","","17","0"),
("30","30","product_cat","","17","1"),
("31","31","product_cat","","18","1"),
("32","32","product_cat","","18","0"),
("33","33","product_cat","","18","0"),
("34","34","product_cat","","18","0"),
("35","35","product_cat","","18","0"),
("36","36","product_cat","","18","0"),
("37","37","product_cat","","18","0"),
("38","38","product_cat","","18","0"),
("39","39","product_cat","","19","0"),
("40","40","product_cat","","19","0"),
("41","41","product_cat","","19","0"),
("42","42","product_cat","","19","0"),
("43","43","product_cat","","19","1"),
("44","44","product_cat","","19","0"),
("45","45","nav_menu","","0","144"),
("46","46","product_cat","","0","0"),
("47","47","product_cat","","46","0"),
("48","48","product_cat","","47","0"),
("49","49","product_cat","","47","0"),
("50","50","product_cat","","47","0"),
("51","51","product_cat","","47","0"),
("52","52","product_cat","","47","0"),
("53","53","product_cat","","46","0"),
("54","54","product_cat","","53","0"),
("55","55","product_cat","","53","0"),
("56","56","product_cat","","53","0"),
("57","57","product_cat","","46","0"),
("58","58","product_cat","","57","0"),
("59","59","product_cat","","57","0"),
("60","60","product_cat","","57","0"),
("61","61","product_cat","","57","0"),
("62","62","product_cat","","46","0"),
("63","63","product_cat","","62","0"),
("64","64","product_cat","","62","0"),
("65","65","product_cat","","62","0"),
("66","66","product_cat","","62","0"),
("67","67","product_cat","","0","0"),
("68","68","product_cat","","67","0"),
("69","69","product_cat","","68","0"),
("70","70","product_cat","","68","0"),
("71","71","product_cat","","68","0"),
("72","72","product_cat","","67","0"),
("73","73","product_cat","","72","0"),
("74","74","product_cat","","72","0"),
("75","75","product_cat","","72","0"),
("76","76","product_cat","","72","0"),
("77","77","product_cat","","67","0"),
("78","78","product_cat","","67","0"),
("79","79","product_cat","","67","0"),
("80","80","product_cat","","67","0"),
("81","81","product_cat","","67","0"),
("82","82","product_cat","","67","0"),
("83","83","product_cat","","67","0"),
("84","84","product_cat","","67","0"),
("85","85","product_cat","","67","0"),
("86","86","product_cat","","0","7"),
("87","87","product_cat","","86","7"),
("88","88","product_cat","","87","1"),
("89","89","product_cat","","87","1"),
("90","90","product_cat","","87","1"),
("91","91","product_cat","","87","1"),
("92","92","product_cat","","87","2"),
("93","93","nav_menu","","0","10"),
("94","94","nav_menu","","0","10"),
("95","95","product_cat","","86","0"),
("96","96","product_cat","","95","0"),
("97","97","product_cat","","95","0"),
("98","98","product_cat","","95","0"),
("99","99","product_cat","","95","0"),
("100","100","product_cat","","95","0");
INSERT INTO bz_term_taxonomy VALUES
("101","101","product_cat","","87","0"),
("102","102","product_cat","","87","0"),
("103","103","product_cat","","87","1"),
("104","104","product_cat","","87","0"),
("105","105","product_cat","","87","0"),
("106","106","product_cat","","87","0"),
("107","107","product_cat","","87","1"),
("108","108","product_cat","","87","0"),
("109","109","product_cat","","87","0"),
("110","110","product_cat","","87","0"),
("111","111","nav_menu","","0","10"),
("112","112","nav_menu","","0","10"),
("113","113","product_cat","","0","8"),
("114","114","product_cat","","113","1"),
("115","115","product_cat","","113","0"),
("116","116","product_cat","","113","1"),
("117","117","product_cat","","113","1"),
("118","118","product_cat","","113","0"),
("119","119","product_cat","","113","3"),
("120","120","product_cat","","113","0"),
("121","121","product_cat","","114","1"),
("122","122","product_cat","","114","0"),
("123","123","product_cat","","114","0"),
("124","124","product_cat","","114","0"),
("125","125","product_cat","","114","0"),
("126","126","product_cat","","115","0"),
("127","127","product_cat","","115","0"),
("128","128","product_cat","","115","0"),
("129","129","product_cat","","115","0"),
("130","130","product_cat","","115","0"),
("131","131","product_cat","","115","0"),
("132","132","product_cat","","116","0"),
("133","133","product_cat","","116","0"),
("134","134","product_cat","","116","0"),
("135","135","product_cat","","116","1"),
("136","136","product_cat","","116","0"),
("137","137","product_cat","","116","0"),
("138","138","nav_menu","","0","10"),
("139","139","nav_menu","","0","10"),
("140","140","product_cat","","116","1"),
("141","141","thuong-hieu","Bobby là thương hiệu nổi tiếng của Công ty Diana, chuyên cung cấp những sản phẩm chất lượng cao cấp dành cho trẻ em. Vào Việt Nam từ năm 2003, Bobby trở thành thương hiệu được ưa chuộng và tin dùng bởi sự sáng tạo độc đáo và đầy yêu thương dành cho trẻ em với thiết kế các loại tã giấy màng đáy thoáng khí dạng vải, đem đến sự khô thoáng và bảo vệ làn da của các bé.\nTháng 12/2005 Bobby lại đi tiên phong trên thị trường Việt Nam bằng việc cải tiến sản phẩm tã giấy chống hăm 3 tác động với lõi bông siêu thấm, màng đáy thoáng khí dạng vải và tinh chất trà xanh. Sản phẩm này phù hợp với đặc trưng khí hậu nóng ẩm của Việt Nam và đời sống bận rộn của các ông bố bà mẹ, giúp các bé thoải mái và thơm mát suốt cả ngày.\nCông ty Diana với thương hiệu Bobby có tổ chức nhiều hoạt động dành cho người tiêu dùng như tổ chức các buổi hội thảo về chăm sóc trẻ em và sử dụng tã, phát hành các tài liệu cho các bà mẹ chăm sóc bé yêu, tổ chức các cuộc thi tìm hiểu những nhu cầu và mong muốn thầm kín cho bé yêu dành cho các bậc cha mẹ...","0","2"),
("144","144","product_brand","","0","1"),
("145","145","product_brand","","0","1"),
("146","146","product_brand","","0","1"),
("147","147","product_brand","","0","1"),
("148","148","màu-sắc","","0","1"),
("149","149","Độ-tuổi","","0","1"),
("150","150","kích-thước","","0","1"),
("151","151","giới-tính","","0","1"),
("152","152","chất-liệu","","0","1"),
("153","153","xuất-xứ","","0","1"),
("154","154","khối-lượng","","0","1"),
("155","155","pa_mau-sac","","0","0"),
("156","156","pa_mau-sac","","0","1"),
("157","157","pa_mau-sac","","0","3"),
("158","158","pa_mau-sac","","0","1"),
("159","159","pa_mau-sac","","0","0"),
("160","160","pa_mau-sac","","0","0"),
("161","161","pa_mau-sac","","0","0"),
("162","162","pa_mau-sac","","0","0"),
("163","163","pa_mau-sac","","0","0"),
("164","164","pa_mau-sac","","0","4"),
("165","165","pa_mau-sac","","0","1"),
("166","166","pa_mau-sac","","0","0"),
("167","167","pa_thuong-hieu","","0","0"),
("168","168","pa_thuong-hieu","","0","3"),
("169","169","pa_thuong-hieu","","0","1"),
("170","170","pa_thuong-hieu","","0","5"),
("171","171","pa_thuong-hieu","","0","1"),
("172","172","pa_thuong-hieu","","0","0"),
("173","173","pa_thuong-hieu","","0","1"),
("174","174","pa_thuong-hieu","","0","1"),
("175","175","pa_thuong-hieu","","0","1"),
("176","176","pa_thuong-hieu","","0","0"),
("177","177","pa_thuong-hieu","","0","0"),
("178","178","pa_thuong-hieu","","0","0"),
("179","179","pa_thuong-hieu","","0","0"),
("180","180","pa_thuong-hieu","","0","0"),
("181","181","pa_thuong-hieu","","0","0"),
("182","182","pa_thuong-hieu","","0","3"),
("183","183","pa_thuong-hieu","","0","0"),
("184","184","pa_thuong-hieu","","0","0"),
("185","185","pa_thuong-hieu","","0","0"),
("186","186","pa_thuong-hieu","","0","1"),
("187","187","pa_thuong-hieu","","0","1"),
("188","188","pa_thuong-hieu","","0","0"),
("189","189","pa_thuong-hieu","","0","0"),
("190","190","pa_thuong-hieu","","0","1"),
("191","191","pa_thuong-hieu","","0","0"),
("192","192","pa_thuong-hieu","","0","0"),
("193","193","pa_thuong-hieu","","0","0"),
("194","194","pa_thuong-hieu","","0","0"),
("195","195","pa_thuong-hieu","","0","0"),
("196","196","pa_thuong-hieu","","0","0"),
("197","197","pa_thuong-hieu","","0","1"),
("198","198","pa_thuong-hieu","","0","0"),
("199","199","pa_thuong-hieu","","0","1"),
("200","200","pa_thuong-hieu","","0","0"),
("201","201","pa_thuong-hieu","","0","0"),
("202","202","pa_thuong-hieu","","0","1");
INSERT INTO bz_term_taxonomy VALUES
("203","203","pa_thuong-hieu","","0","0"),
("204","204","pa_thuong-hieu","","0","0"),
("205","205","pa_thuong-hieu","","0","1"),
("206","206","pa_thuong-hieu","","0","0"),
("207","207","pa_thuong-hieu","","0","0"),
("208","208","pa_thuong-hieu","","0","0"),
("209","209","pa_thuong-hieu","","0","0"),
("210","210","pa_thuong-hieu","","0","0"),
("211","211","pa_thuong-hieu","","0","0"),
("212","212","pa_thuong-hieu","","0","0"),
("213","213","pa_thuong-hieu","","0","0"),
("214","214","pa_thuong-hieu","","0","0"),
("215","215","pa_thuong-hieu","","0","0"),
("216","216","pa_thuong-hieu","","0","0"),
("217","217","pa_thuong-hieu","","0","0"),
("218","218","pa_thuong-hieu","","0","0"),
("219","219","pa_thuong-hieu","","0","0"),
("220","220","pa_thuong-hieu","","0","0"),
("221","221","pa_thuong-hieu","","0","1"),
("222","222","pa_thuong-hieu","","0","0"),
("223","223","pa_thuong-hieu","","0","0"),
("224","224","pa_do-tuoi","","0","5"),
("225","225","pa_do-tuoi","","0","6"),
("226","226","pa_do-tuoi","","0","4"),
("227","227","pa_do-tuoi","","0","3"),
("228","228","pa_do-tuoi","","0","12"),
("229","229","pa_do-tuoi","","0","4"),
("230","230","pa_do-tuoi","","0","0"),
("231","231","pa_do-tuoi","","0","0"),
("232","232","pa_kich-thuoc","","0","2"),
("233","233","pa_kich-thuoc","","0","1"),
("234","234","pa_kich-thuoc","","0","5"),
("235","235","pa_kich-thuoc","","0","1"),
("237","237","pa_kich-thuoc","","0","1"),
("238","238","pa_kich-thuoc","","0","1"),
("239","239","pa_kich-thuoc","","0","1"),
("240","240","pa_kich-thuoc","","0","1"),
("241","241","pa_gioi-tinh","","0","1"),
("242","242","pa_gioi-tinh","","0","1"),
("243","243","pa_gioi-tinh","","0","15"),
("244","244","pa_mui-vi","","0","0"),
("245","245","pa_mui-vi","","0","2"),
("246","246","pa_mui-vi","","0","1"),
("247","247","pa_mui-vi","","0","1"),
("248","248","pa_mui-vi","","0","0"),
("249","249","pa_mui-vi","","0","1"),
("250","250","pa_mui-vi","","0","0"),
("251","251","pa_chat-lieu","","0","0"),
("252","252","pa_chat-lieu","","0","0"),
("253","253","pa_chat-lieu","","0","3"),
("254","254","pa_chat-lieu","","0","0"),
("255","255","pa_khoi-luong","","0","0"),
("256","256","pa_khoi-luong","","0","0"),
("257","257","pa_khoi-luong","","0","0"),
("258","258","pa_khoi-luong","","0","1"),
("259","259","pa_khoi-luong","","0","1"),
("260","260","pa_khoi-luong","","0","1"),
("261","261","pa_khoi-luong","","0","3"),
("262","262","pa_khoi-luong","","0","0"),
("263","263","pa_khoi-luong","","0","0"),
("264","264","pa_khoi-luong","","0","0"),
("265","265","pa_khoi-luong","","0","1"),
("266","266","pa_dung-tich","","0","0"),
("267","267","pa_dung-tich","","0","0"),
("268","268","pa_dung-tich","","0","0"),
("269","269","pa_dung-tich","","0","1"),
("270","270","pa_dung-tich","","0","0"),
("271","271","pa_dung-tich","","0","0"),
("272","272","pa_dung-tich","","0","1"),
("273","273","pa_dung-tich","","0","0"),
("274","274","pa_dung-tich","","0","0"),
("275","275","pa_dung-tich","","0","1"),
("276","276","pa_dung-tich","","0","1"),
("277","277","pa_dung-tich","","0","0"),
("278","278","pa_dung-tich","","0","2"),
("279","279","pa_dung-tich","","0","0"),
("280","280","pa_dung-tich","","0","0"),
("281","281","pa_dung-tich","","0","0"),
("282","282","pa_dung-tich","","0","0"),
("283","283","pa_dung-tich","","0","0"),
("284","284","pa_xuat-xu","","0","0"),
("285","285","pa_xuat-xu","","0","1"),
("286","286","pa_xuat-xu","","0","0"),
("287","287","pa_xuat-xu","","0","0"),
("288","288","pa_xuat-xu","","0","1"),
("289","289","pa_xuat-xu","","0","0"),
("290","290","pa_xuat-xu","","0","2"),
("291","291","pa_xuat-xu","","0","0"),
("292","292","pa_xuat-xu","","0","4"),
("293","293","pa_xuat-xu","","0","0"),
("294","294","pa_xuat-xu","","0","0"),
("295","295","pa_xuat-xu","","0","0"),
("296","296","pa_xuat-xu","","0","0"),
("297","297","pa_xuat-xu","","0","0"),
("298","298","pa_xuat-xu","","0","3"),
("299","299","pa_xuat-xu","","0","4"),
("300","300","pa_xuat-xu","","0","0"),
("301","301","pa_xuat-xu","","0","7"),
("302","302","pa_xuat-xu","","0","0"),
("303","303","pa_xuat-xu","","0","0");
INSERT INTO bz_term_taxonomy VALUES
("304","304","pa_xuat-xu","","0","0"),
("305","305","pa_do-tuoi","","0","1"),
("306","306","pa_gioi-tinh","","0","3"),
("307","307","pa_chat-lieu","","0","1"),
("308","308","pa_mau-sac","","0","2"),
("309","309","pa_chat-lieu","","0","1"),
("310","310","pa_mau-sac","","0","1"),
("311","311","pa_xuat-xu","","0","2"),
("312","312","pa_mau-sac","","0","3"),
("313","313","pa_mui-vi","","0","1"),
("314","314","pa_chat-lieu","","0","11"),
("315","315","pa_khoi-luong","","0","5"),
("316","316","pa_mau-sac","","0","3"),
("317","317","pa_mui-vi","","0","1"),
("318","318","pa_do-tuoi","","0","4"),
("319","319","pa_mau-sac","","0","2"),
("320","320","pa_chat-lieu","","0","2"),
("321","321","pa_mau-sac","","0","1"),
("322","322","pa_mau-sac","","0","1"),
("323","323","nav_menu","","0","11"),
("324","324","product_cat","","0","0");




CREATE TABLE `bz_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;


INSERT INTO bz_termmeta VALUES
("1","16","order","0"),
("2","16","display_type","products"),
("3","16","thumbnail_id","0"),
("4","17","order","0"),
("5","17","display_type",""),
("6","17","thumbnail_id","0"),
("7","18","order","0"),
("8","18","display_type",""),
("9","18","thumbnail_id","0"),
("10","19","order","0"),
("11","19","display_type",""),
("12","19","thumbnail_id","0"),
("13","20","order","0"),
("14","20","display_type",""),
("15","20","thumbnail_id","0"),
("16","21","order","0"),
("17","21","display_type",""),
("18","21","thumbnail_id","0"),
("19","22","order","0"),
("20","22","display_type",""),
("21","22","thumbnail_id","0"),
("22","20","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("23","21","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("24","22","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("25","23","order","0"),
("26","23","display_type",""),
("27","23","thumbnail_id","0"),
("28","24","order","0"),
("29","24","display_type",""),
("30","24","thumbnail_id","0"),
("31","25","order","0"),
("32","25","display_type",""),
("33","25","thumbnail_id","0"),
("34","26","order","0"),
("35","26","display_type",""),
("36","26","thumbnail_id","0"),
("37","27","order","0"),
("38","27","display_type",""),
("39","27","thumbnail_id","0"),
("40","28","order","0"),
("41","28","display_type",""),
("42","28","thumbnail_id","0"),
("43","29","order","0"),
("44","29","display_type",""),
("45","29","thumbnail_id","0"),
("46","30","order","0"),
("47","30","display_type",""),
("48","30","thumbnail_id","0"),
("49","31","order","0"),
("50","31","display_type",""),
("51","31","thumbnail_id","0"),
("52","32","order","0"),
("53","32","display_type",""),
("54","32","thumbnail_id","0"),
("55","33","order","0"),
("56","33","display_type",""),
("57","33","thumbnail_id","0"),
("58","34","order","0"),
("59","34","display_type",""),
("60","34","thumbnail_id","0"),
("61","35","order","0"),
("62","35","display_type",""),
("63","35","thumbnail_id","0"),
("64","36","order","0"),
("65","36","display_type",""),
("66","36","thumbnail_id","0"),
("67","37","order","0"),
("68","37","display_type",""),
("69","37","thumbnail_id","0"),
("70","38","order","0"),
("71","38","display_type",""),
("72","38","thumbnail_id","0"),
("73","39","order","0"),
("74","39","display_type",""),
("75","39","thumbnail_id","0"),
("76","40","order","0"),
("77","40","display_type",""),
("78","40","thumbnail_id","0"),
("79","41","order","0"),
("80","41","display_type",""),
("81","41","thumbnail_id","0"),
("82","42","order","0"),
("83","42","display_type",""),
("84","42","thumbnail_id","0"),
("85","43","order","0"),
("86","43","display_type",""),
("87","43","thumbnail_id","0"),
("88","44","order","0"),
("89","44","display_type",""),
("90","44","thumbnail_id","0"),
("91","16","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("92","46","order","0"),
("93","46","display_type",""),
("94","46","thumbnail_id","0"),
("95","47","order","0"),
("96","47","display_type",""),
("97","47","thumbnail_id","0"),
("98","48","order","0"),
("99","48","display_type",""),
("100","48","thumbnail_id","0");
INSERT INTO bz_termmeta VALUES
("101","49","order","0"),
("102","49","display_type",""),
("103","49","thumbnail_id","0"),
("104","50","order","0"),
("105","50","display_type",""),
("106","50","thumbnail_id","0"),
("107","51","order","0"),
("108","51","display_type",""),
("109","51","thumbnail_id","0"),
("110","52","order","0"),
("111","52","display_type",""),
("112","52","thumbnail_id","0"),
("113","53","order","0"),
("114","53","display_type",""),
("115","53","thumbnail_id","0"),
("116","54","order","0"),
("117","54","display_type",""),
("118","54","thumbnail_id","0"),
("119","55","order","0"),
("120","55","display_type",""),
("121","55","thumbnail_id","0"),
("122","56","order","0"),
("123","56","display_type",""),
("124","56","thumbnail_id","0"),
("125","57","order","0"),
("126","57","display_type",""),
("127","57","thumbnail_id","0"),
("128","58","order","0"),
("129","58","display_type",""),
("130","58","thumbnail_id","0"),
("131","59","order","0"),
("132","59","display_type",""),
("133","59","thumbnail_id","0"),
("134","60","order","0"),
("135","60","display_type",""),
("136","60","thumbnail_id","0"),
("137","61","order","0"),
("138","61","display_type",""),
("139","61","thumbnail_id","0"),
("140","62","order","0"),
("141","62","display_type",""),
("142","62","thumbnail_id","0"),
("143","63","order","0"),
("144","63","display_type",""),
("145","63","thumbnail_id","0"),
("146","64","order","0"),
("147","64","display_type",""),
("148","64","thumbnail_id","0"),
("149","65","order","0"),
("150","65","display_type",""),
("151","65","thumbnail_id","0"),
("152","66","order","0"),
("153","66","display_type",""),
("154","66","thumbnail_id","0"),
("155","67","order","0"),
("156","67","display_type",""),
("157","67","thumbnail_id","0"),
("158","68","order","0"),
("159","68","display_type",""),
("160","68","thumbnail_id","0"),
("161","69","order","0"),
("162","69","display_type",""),
("163","69","thumbnail_id","0"),
("164","70","order","0"),
("165","70","display_type",""),
("166","70","thumbnail_id","0"),
("167","71","order","0"),
("168","71","display_type",""),
("169","71","thumbnail_id","0"),
("170","72","order","0"),
("171","72","display_type",""),
("172","72","thumbnail_id","0"),
("173","73","order","0"),
("174","73","display_type",""),
("175","73","thumbnail_id","0"),
("176","74","order","0"),
("177","74","display_type",""),
("178","74","thumbnail_id","0"),
("179","75","order","0"),
("180","75","display_type",""),
("181","75","thumbnail_id","0"),
("182","76","order","0"),
("183","76","display_type",""),
("184","76","thumbnail_id","0"),
("185","77","order","0"),
("186","77","display_type",""),
("187","77","thumbnail_id","0"),
("188","78","order","0"),
("189","78","display_type",""),
("190","78","thumbnail_id","0"),
("191","79","order","0"),
("192","79","display_type",""),
("193","79","thumbnail_id","0"),
("194","80","order","0"),
("195","80","display_type",""),
("196","80","thumbnail_id","0"),
("197","81","order","0"),
("198","81","display_type",""),
("199","81","thumbnail_id","0"),
("200","82","order","0");
INSERT INTO bz_termmeta VALUES
("201","82","display_type",""),
("202","82","thumbnail_id","0"),
("203","83","order","0"),
("204","83","display_type",""),
("205","83","thumbnail_id","0"),
("206","84","order","0"),
("207","84","display_type",""),
("208","84","thumbnail_id","0"),
("209","85","order","0"),
("210","85","display_type",""),
("211","85","thumbnail_id","0"),
("212","86","order","0"),
("213","87","order","0"),
("214","88","order","0"),
("215","86","product_count_product_cat","8"),
("216","87","product_count_product_cat","8"),
("217","88","product_count_product_cat","1"),
("218","89","order","0"),
("219","89","product_count_product_cat","1"),
("220","90","order","0"),
("221","90","product_count_product_cat","1"),
("222","91","order","0"),
("223","91","product_count_product_cat","1"),
("224","92","order","0"),
("225","92","product_count_product_cat","2"),
("226","95","order","0"),
("227","95","display_type",""),
("228","95","thumbnail_id","0"),
("229","96","order","0"),
("230","96","display_type",""),
("231","96","thumbnail_id","0"),
("232","97","order","0"),
("233","97","display_type",""),
("234","97","thumbnail_id","0"),
("235","98","order","0"),
("236","98","display_type",""),
("237","98","thumbnail_id","0"),
("238","99","order","0"),
("239","99","display_type",""),
("240","99","thumbnail_id","0"),
("241","100","order","0"),
("242","100","display_type",""),
("243","100","thumbnail_id","0"),
("244","101","order","0"),
("245","101","display_type",""),
("246","101","thumbnail_id","0"),
("247","102","order","0"),
("248","102","display_type",""),
("249","102","thumbnail_id","0"),
("250","103","order","0"),
("251","103","display_type",""),
("252","103","thumbnail_id","0"),
("253","104","order","0"),
("254","104","display_type",""),
("255","104","thumbnail_id","0"),
("256","105","order","0"),
("257","105","display_type",""),
("258","105","thumbnail_id","0"),
("259","106","order","0"),
("260","106","display_type",""),
("261","106","thumbnail_id","0"),
("262","107","order","0"),
("263","107","display_type",""),
("264","107","thumbnail_id","0"),
("265","108","order","0"),
("266","108","display_type",""),
("267","108","thumbnail_id","0"),
("268","109","order","0"),
("269","109","display_type",""),
("270","109","thumbnail_id","0"),
("271","110","order","0"),
("272","110","display_type",""),
("273","110","thumbnail_id","0"),
("274","107","product_count_product_cat","1"),
("275","103","product_count_product_cat","1"),
("276","16","product_count_product_cat","8"),
("277","17","product_count_product_cat","6"),
("278","24","product_count_product_cat","3"),
("279","20","product_count_product_cat","1"),
("280","19","product_count_product_cat","1"),
("281","43","product_count_product_cat","1"),
("282","27","product_count_product_cat","1"),
("283","30","product_count_product_cat","1"),
("284","18","product_count_product_cat","1"),
("285","31","product_count_product_cat","1"),
("286","113","order","0"),
("287","113","display_type",""),
("288","113","thumbnail_id","0"),
("289","114","order","0"),
("290","114","display_type",""),
("291","114","thumbnail_id","0"),
("292","115","order","0"),
("293","115","display_type",""),
("294","115","thumbnail_id","0"),
("295","116","order","0"),
("296","116","display_type",""),
("297","116","thumbnail_id","0"),
("298","117","order","0"),
("299","117","display_type",""),
("300","117","thumbnail_id","0");
INSERT INTO bz_termmeta VALUES
("301","118","order","0"),
("302","118","display_type",""),
("303","118","thumbnail_id","0"),
("304","119","order","0"),
("305","119","display_type",""),
("306","119","thumbnail_id","0"),
("307","120","order","0"),
("308","120","display_type",""),
("309","120","thumbnail_id","0"),
("310","121","order","0"),
("311","121","display_type",""),
("312","121","thumbnail_id","0"),
("313","122","order","0"),
("314","122","display_type",""),
("315","122","thumbnail_id","0"),
("316","123","order","0"),
("317","123","display_type",""),
("318","123","thumbnail_id","0"),
("319","124","order","0"),
("320","124","display_type",""),
("321","124","thumbnail_id","0"),
("322","125","order","0"),
("323","125","display_type",""),
("324","125","thumbnail_id","0"),
("325","126","order","0"),
("326","126","display_type",""),
("327","126","thumbnail_id","0"),
("328","127","order","0"),
("329","127","display_type",""),
("330","127","thumbnail_id","0"),
("331","128","order","0"),
("332","128","display_type",""),
("333","128","thumbnail_id","0"),
("334","129","order","0"),
("335","129","display_type",""),
("336","129","thumbnail_id","0"),
("337","130","order","0"),
("338","130","display_type",""),
("339","130","thumbnail_id","0"),
("340","131","order","0"),
("341","131","display_type",""),
("342","131","thumbnail_id","0"),
("343","132","order","0"),
("344","132","display_type",""),
("345","132","thumbnail_id","0"),
("346","133","order","0"),
("347","133","display_type",""),
("348","133","thumbnail_id","0"),
("349","134","order","0"),
("350","134","display_type",""),
("351","134","thumbnail_id","0"),
("352","135","order","0"),
("353","135","display_type",""),
("354","135","thumbnail_id","0"),
("355","136","order","0"),
("356","136","display_type",""),
("357","136","thumbnail_id","0"),
("358","137","order","0"),
("359","137","display_type",""),
("360","137","thumbnail_id","0"),
("361","140","order","0"),
("362","113","product_count_product_cat","8"),
("363","140","product_count_product_cat","1"),
("364","116","product_count_product_cat","2"),
("365","135","product_count_product_cat","1"),
("366","114","product_count_product_cat","1"),
("367","121","product_count_product_cat","1"),
("368","119","product_count_product_cat","3"),
("369","117","product_count_product_cat","1"),
("370","155","order_pa_mau-sac","0"),
("371","156","order_pa_mau-sac","0"),
("372","157","order_pa_mau-sac","0"),
("373","158","order_pa_mau-sac","0"),
("374","159","order_pa_mau-sac","0"),
("375","160","order_pa_mau-sac","0"),
("376","161","order_pa_mau-sac","0"),
("377","162","order_pa_mau-sac","0"),
("378","163","order_pa_mau-sac","0"),
("379","164","order_pa_mau-sac","0"),
("380","165","order_pa_mau-sac","0"),
("381","166","order_pa_mau-sac","0"),
("382","167","order_pa_thuong-hieu","0"),
("383","168","order_pa_thuong-hieu","0"),
("384","169","order_pa_thuong-hieu","0"),
("385","170","order_pa_thuong-hieu","0"),
("386","171","order_pa_thuong-hieu","0"),
("387","172","order_pa_thuong-hieu","0"),
("388","173","order_pa_thuong-hieu","0"),
("389","174","order_pa_thuong-hieu","0"),
("390","175","order_pa_thuong-hieu","0"),
("391","176","order_pa_thuong-hieu","0"),
("392","177","order_pa_thuong-hieu","0"),
("393","178","order_pa_thuong-hieu","0"),
("394","179","order_pa_thuong-hieu","0"),
("395","180","order_pa_thuong-hieu","0"),
("396","181","order_pa_thuong-hieu","0"),
("397","182","order_pa_thuong-hieu","0"),
("398","183","order_pa_thuong-hieu","0"),
("399","184","order_pa_thuong-hieu","0"),
("400","185","order_pa_thuong-hieu","0");
INSERT INTO bz_termmeta VALUES
("401","186","order_pa_thuong-hieu","0"),
("402","187","order_pa_thuong-hieu","0"),
("403","188","order_pa_thuong-hieu","0"),
("404","189","order_pa_thuong-hieu","0"),
("405","190","order_pa_thuong-hieu","0"),
("406","191","order_pa_thuong-hieu","0"),
("407","192","order_pa_thuong-hieu","0"),
("408","193","order_pa_thuong-hieu","0"),
("409","194","order_pa_thuong-hieu","0"),
("410","195","order_pa_thuong-hieu","0"),
("411","196","order_pa_thuong-hieu","0"),
("412","197","order_pa_thuong-hieu","0"),
("413","198","order_pa_thuong-hieu","0"),
("414","199","order_pa_thuong-hieu","0"),
("415","200","order_pa_thuong-hieu","0"),
("416","201","order_pa_thuong-hieu","0"),
("417","202","order_pa_thuong-hieu","0"),
("418","203","order_pa_thuong-hieu","0"),
("419","204","order_pa_thuong-hieu","0"),
("420","205","order_pa_thuong-hieu","0"),
("421","206","order_pa_thuong-hieu","0"),
("422","207","order_pa_thuong-hieu","0"),
("423","208","order_pa_thuong-hieu","0"),
("424","209","order_pa_thuong-hieu","0"),
("425","210","order_pa_thuong-hieu","0"),
("426","211","order_pa_thuong-hieu","0"),
("427","212","order_pa_thuong-hieu","0"),
("428","213","order_pa_thuong-hieu","0"),
("429","214","order_pa_thuong-hieu","0"),
("430","215","order_pa_thuong-hieu","0"),
("431","216","order_pa_thuong-hieu","0"),
("432","217","order_pa_thuong-hieu","0"),
("433","218","order_pa_thuong-hieu","0"),
("434","219","order_pa_thuong-hieu","0"),
("435","220","order_pa_thuong-hieu","0"),
("436","221","order_pa_thuong-hieu","0"),
("437","222","order_pa_thuong-hieu","0"),
("438","223","order_pa_thuong-hieu","0"),
("439","224","order_pa_do-tuoi","0"),
("440","225","order_pa_do-tuoi","0"),
("441","226","order_pa_do-tuoi","0"),
("442","227","order_pa_do-tuoi","0"),
("443","228","order_pa_do-tuoi","0"),
("444","229","order_pa_do-tuoi","0"),
("445","230","order_pa_do-tuoi","0"),
("446","231","order_pa_do-tuoi","0"),
("447","232","order_pa_kich-thuoc","0"),
("448","233","order_pa_kich-thuoc","0"),
("449","234","order_pa_kich-thuoc","0"),
("450","235","order_pa_kich-thuoc","0"),
("452","237","order_pa_kich-thuoc","0"),
("453","238","order_pa_kich-thuoc","0"),
("454","239","order_pa_kich-thuoc","0"),
("455","240","order_pa_kich-thuoc","0"),
("456","241","order_pa_gioi-tinh","0"),
("457","242","order_pa_gioi-tinh","0"),
("458","243","order_pa_gioi-tinh","0"),
("459","244","order_pa_mui-vi","0"),
("460","245","order_pa_mui-vi","0"),
("461","246","order_pa_mui-vi","0"),
("462","247","order_pa_mui-vi","0"),
("463","248","order_pa_mui-vi","0"),
("464","249","order_pa_mui-vi","0"),
("465","250","order_pa_mui-vi","0"),
("466","251","order_pa_chat-lieu","0"),
("467","252","order_pa_chat-lieu","0"),
("468","253","order_pa_chat-lieu","0"),
("469","254","order_pa_chat-lieu","0"),
("470","255","order_pa_khoi-luong","0"),
("471","256","order_pa_khoi-luong","0"),
("472","257","order_pa_khoi-luong","0"),
("473","258","order_pa_khoi-luong","0"),
("474","259","order_pa_khoi-luong","0"),
("475","260","order_pa_khoi-luong","0"),
("476","261","order_pa_khoi-luong","0"),
("477","262","order_pa_khoi-luong","0"),
("478","263","order_pa_khoi-luong","0"),
("479","264","order_pa_khoi-luong","0"),
("480","265","order_pa_khoi-luong","0"),
("481","266","order_pa_dung-tich","0"),
("482","267","order_pa_dung-tich","0"),
("483","268","order_pa_dung-tich","0"),
("484","269","order_pa_dung-tich","0"),
("485","270","order_pa_dung-tich","0"),
("486","271","order_pa_dung-tich","0"),
("487","272","order_pa_dung-tich","0"),
("488","273","order_pa_dung-tich","0"),
("489","274","order_pa_dung-tich","0"),
("490","275","order_pa_dung-tich","0"),
("491","276","order_pa_dung-tich","0"),
("492","277","order_pa_dung-tich","0"),
("493","278","order_pa_dung-tich","0"),
("494","279","order_pa_dung-tich","0"),
("495","280","order_pa_dung-tich","0"),
("496","281","order_pa_dung-tich","0"),
("497","282","order_pa_dung-tich","0"),
("498","283","order_pa_dung-tich","0"),
("499","284","order_pa_xuat-xu","0"),
("500","285","order_pa_xuat-xu","0"),
("501","286","order_pa_xuat-xu","0");
INSERT INTO bz_termmeta VALUES
("502","287","order_pa_xuat-xu","0"),
("503","288","order_pa_xuat-xu","0"),
("504","289","order_pa_xuat-xu","0"),
("505","290","order_pa_xuat-xu","0"),
("506","291","order_pa_xuat-xu","0"),
("507","292","order_pa_xuat-xu","0"),
("508","293","order_pa_xuat-xu","0"),
("509","294","order_pa_xuat-xu","0"),
("510","295","order_pa_xuat-xu","0"),
("511","296","order_pa_xuat-xu","0"),
("512","297","order_pa_xuat-xu","0"),
("513","298","order_pa_xuat-xu","0"),
("514","299","order_pa_xuat-xu","0"),
("515","300","order_pa_xuat-xu","0"),
("516","301","order_pa_xuat-xu","0"),
("517","302","order_pa_xuat-xu","0"),
("518","303","order_pa_xuat-xu","0"),
("519","304","order_pa_xuat-xu","0"),
("520","305","order_pa_do-tuoi","0"),
("521","306","order_pa_gioi-tinh","0"),
("522","307","order_pa_chat-lieu","0"),
("523","308","order_pa_mau-sac","0"),
("524","309","order_pa_chat-lieu","0"),
("525","310","order_pa_mau-sac","0"),
("526","311","order_pa_xuat-xu","0"),
("527","312","order_pa_mau-sac","0"),
("528","313","order_pa_mui-vi","0"),
("529","314","order_pa_chat-lieu","0"),
("530","315","order_pa_khoi-luong","0"),
("531","316","order_pa_mau-sac","0"),
("532","317","order_pa_mui-vi","0"),
("533","318","order_pa_do-tuoi","0"),
("534","319","order_pa_mau-sac","0"),
("535","320","order_pa_chat-lieu","0"),
("536","321","order_pa_mau-sac","0"),
("537","322","order_pa_mau-sac","0");




CREATE TABLE `bz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;


INSERT INTO bz_terms VALUES
("1","Kinh nghiệm - hướng dẫn","kinh-nghiem-huong-dan","0"),
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
("15","Topbar","topbar","0"),
("16","Bé ăn - bé uống","be-an-be-uong","0"),
("17","Thực phẩm","thuc-pham","0"),
("18","Đồ dùng ăn uống","do-dung-an-uong","0"),
("19","Bình sữa &amp; phụ kiện","binh-sua-phu-kien","0"),
("20","Sữa bột cho bé","sua-bot-cho-be","0"),
("21","Bột ăn dặm","bot-an-dam","0"),
("22","Trà - nước ép hoa quả - rau","tra-nuoc-ep-hoa-qua-rau","0"),
("23","Ngũ cốc cho bé","ngu-coc-cho-be","0"),
("24","Bánh ăn dặm - kẹo dinh dưỡng","banh-an-dam-keo-dinh-duong","0"),
("25","Sữa tươi cho bé","sua-tuoi-cho-be","0"),
("26","Sữa non","sua-non","0"),
("27","Váng sữa - phô mai - sữa chua","vang-sua-pho-mai-sua-chua","0"),
("28","Nước mắm - Dầu ăn","nuoc-mam-dau-an","0"),
("29","Mật ong cho bé","mat-ong-cho-be","0"),
("30","Thức ăn dinh dưỡng đóng lọ","thuc-an-dinh-duong-dong-lo","0"),
("31","Ghế ăn bột","ghe-an-bot","0"),
("32","Bình ăn dặm - bình thìa","binh-an-dam-binh-thia","0"),
("33","Bộ chế biến ăn dặm","bo-che-bien-an-dam","0"),
("34","Bát - đĩa - thìa tập ăn","bat-dia-thia-tap-an","0"),
("35","Cốc - bình uống nước","coc-binh-uong-nuoc","0"),
("36","Giá úp bình sữa","gia-up-binh-sua","0"),
("37","Chia sữa - chia thức ăn","chia-sua-chia-thuc-an","0"),
("38","Dụng cụ giữ nhiệt","dung-cu-giu-nhiet","0"),
("39","Bình sữa","binh-sua","0"),
("40","Máy tiệt trùng","may-tiet-trung","0"),
("41","Hâm sữa","ham-sua","0"),
("42","Núm ti","num-ti","0"),
("43","Nước rửa bình sữa, hoa quả","nuoc-rua-binh-sua-hoa-qua","0"),
("44","Cọ rửa bình sữa","co-rua-binh-sua","0"),
("45","Main-menu","main-menu","0"),
("46","Vệ sinh cho bé","ve-sinh-cho-be","0"),
("47","Bỉm và tã giấy","bim-va-ta-giay","0"),
("48","Bỉm Goo.N","bim-goo-n","0"),
("49","Bỉm Booby","bim-booby","0"),
("50","Bỉm Huggies","bim-huggies","0"),
("51","Bỉm Merrier","bim-merrier","0"),
("52","Các loại bỉm khác","cac-loai-bim-khac","0"),
("53","Đồ dùng vệ sinh cho bé","do-dung-ve-sinh-cho-be","0"),
("54","Khăn ướt - giấy ướt","khan-uot-giay-uot","0"),
("55","Bộ vệ sinh cho bé","bo-ve-sinh-cho-be","0"),
("56","Bệ ngồi toilet cho bé","be-ngoi-toilet-cho-be","0"),
("57","Kem hăm - dưỡng - phấn rôm","kem-ham-duong-phan-rom","0"),
("58","Kem trị hăm cho bé","kem-tri-ham-cho-be","0"),
("59","Kem dưỡng da - chống nẻ","kem-duong-da-chong-ne","0"),
("60","Dầu massage các loại","dau-massage-cac-loai","0"),
("61","Nước hoa - phấn rôm","nuoc-hoa-phan-rom","0"),
("62","Vệ sinh thân thể","ve-sinh-than-the","0"),
("63","Vệ sinh tai, mắt, mũi, họng","ve-sinh-tai-mat-mui-hong","0"),
("64","Bàn chải - kem đánh răng","ban-chai-kem-danh-rang","0"),
("65","Tông đơ, kéo, lược chải tóc","tong-do-keo-luoc-chai-toc","0"),
("66","Bấm móng tay, chân","bam-mong-tay-chan","0"),
("67","Bé ngủ ngon","be-ngu-ngon","0"),
("68","Giường cũi trẻ em","giuong-cui-tre-em","0"),
("69","Cũi cho bé xuất khẩu","cui-cho-be-xuat-khau","0"),
("70","Cũi cho bé giá rẻ","cui-cho-be-gia-re","0"),
("71","Giường cũi siêu nhẹ","giuong-cui-sieu-nhe","0"),
("72","Phụ kiện bé ngủ","phu-kien-be-ngu","0"),
("73","Máy báo khóc, ru ngủ","may-bao-khoc-ru-ngu","0"),
("74","Màn và cọc màn","man-va-coc-man","0"),
("75","Chăn ga cho bé","chan-ga-cho-be","0"),
("76","Bộ quây cũi cho bé","bo-quay-cui-cho-be","0"),
("77","Giường tầng trẻ em","giuong-tang-tre-em","0"),
("78","Ghế rung cho bé","ghe-rung-cho-be","0"),
("79","Xích đu cho bé","xich-du-cho-be","0"),
("80","Nôi điện tự động","noi-dien-tu-dong","0"),
("81","Chăn ấm - chăn siêu nhẹ","chan-am-chan-sieu-nhe","0"),
("82","Giường xe ô tô","giuong-xe-o-to","0"),
("83","Treo cũi - thảm chơi","treo-cui-tham-choi","0"),
("84","Chặn giường cho bé","chan-giuong-cho-be","0"),
("85","Nôi ngủ chung","noi-ngu-chung","0"),
("86","Bé học - bé chơi","be-hoc-be-choi","0"),
("87","Đồ chơi cho bé","do-choi-cho-be","0"),
("88","Đồ chơi búp bê - thú nhồi bông","do-choi-bup-be-thu-nhoi-bong","0"),
("89","Xe chòi chân cho bé","xe-choi-chan-cho-be","0"),
("90","Đồ chơi mô hình cho bé","do-choi-mo-hinh-cho-be","0"),
("91","Đồ chơi nhựa cho bé","do-choi-nhua-cho-be","0"),
("92","Đồ chơi thông mình cho bé","do-choi-thong-minh-cho-be","0"),
("93","Bé chơi sub menu","be-choi-sub-menu","0"),
("94","Bé học Sub menu","be-hoc-sub-menu","0"),
("95","Cho bé học tốt","cho-be-hoc-tot","0"),
("96","Cặp sách cho bé","cap-sach-cho-be","0"),
("97","Đồ dùng học tập","do-dung-hoc-tap","0"),
("98","Bàn học cho bé","ban-hoc-cho-be","0"),
("99","Dành cho bé gái","danh-cho-be-gai","0"),
("100","Dành cho bé trai","danh-cho-be-trai","0");
INSERT INTO bz_terms VALUES
("101","Đồ chơi bập bênh","do-choi-bap-benh","0"),
("102","Đồ chơi gỗ an toàn","do-choi-go-an-toan","0"),
("103","Đồ chơi Lego","do-choi-lego","0"),
("104","Đồ chơi xúc xắc","do-choi-xuc-xac","0"),
("105","Đồ chơi trong bồn tắm","do-choi-trong-bon-tam","0"),
("106","Cầu trượt an toàn","cau-truot-an-toan","0"),
("107","Đồ chơi vận động","do-choi-van-dong","0"),
("108","Nhà lều - Nhà bóng","nha-leu-nha-bong","0"),
("109","Xe lắc cho bé","xe-lac-cho-be","0"),
("110","Đồ chơi giải trí - âm nhạc","do-choi-giai-tri-am-nhac","0"),
("111","Bé ăn - bé uống 1","be-an-be-uong-1","0"),
("112","Bé ăn - bé uống 2","be-an-be-uong-2","0"),
("113","Mẹ an tâm","me-an-tam","0"),
("114","Máy hút sữa - vắt sữa","may-hut-sua-vat-sua","0"),
("115","Đồ cho mẹ bầu","do-cho-me-bau","0"),
("116","Đồ cho mẹ sau sinh","do-cho-me-sau-sinh","0"),
("117","Túi trữ sữa","tui-tru-sua","0"),
("118","Dầu gội - sữa tắm","dau-goi-sua-tam","0"),
("119","Mỹ phẩm - làm đẹp","my-pham-lam-dep","0"),
("120","Thời trang bầu","thoi-trang-bau","0"),
("121","Máy hút sữa Mamago","may-hut-sua-mamago","0"),
("122","Máy hút sữa Mother-V","may-hut-sua-mother-v","0"),
("123","Máy hút sữa Medela","may-hut-sua-medela","0"),
("124","Máy hút sữa Avent","may-hut-sua-avent","0"),
("125","Máy hút sữa Spectra","may-hut-sua-spectra","0"),
("126","Sữa cho mẹ bầu","sua-cho-me-bau","0"),
("127","Gối đa năng cho mẹ bầu","goi-da-nang-cho-me-bau","0"),
("128","Tai nghe mẹ bầu","tai-nghe-me-bau","0"),
("129","Đai đỡ bụng bà bầu","dai-do-bung-ba-bau","0"),
("130","Kem chống rạn da","kem-chong-ran-da","0"),
("131","Vitamin - dinh dưỡng","vitamin-dinh-duong","0"),
("132","Bỉm - đồ dùng vệ sinh","bim-do-dung-ve-sinh","0"),
("133","Túi đựng đồ mẹ &amp; bé","tui-dung-do-me-be","0"),
("134","Áo cho con bú","ao-cho-con-bu","0"),
("135","Gel bụng - nịt bụng","gel-bung-nit-bung","0"),
("136","Thấm sữa - trợ ti","tham-sua-tro-ti","0"),
("137","Quần áo sau sinh","quan-ao-sau-sinh","0"),
("138","Mẹ an tâm 1","me-an-tam-1","0"),
("139","Mẹ an tâm 2","me-an-tam-2","0"),
("140","Bé ngủ ngon","be-ngu-ngon-do-cho-me-sau-sinh","0"),
("141","Bobby","bobby","0"),
("144","Bobby","bobby","0"),
("145","Anto","anto","0"),
("146","Mother-V","mother-v","0"),
("147","Viewfield Road","viewfield-road","0"),
("148","Đỏ","do","0"),
("149","3-5 tuổi","3-5-tuoi","0"),
("150","30x20cm","30x20cm","0"),
("151","Nam","nam","0"),
("152","Nhựa cao cấp","nhua-cao-cap","0"),
("153","Trung Quốc","trung-quoc","0"),
("154","0.9kg","0-9kg","0"),
("155","Cốm - Cam","com-cam","0"),
("156","Da cam","da-cam","0"),
("157","Hồng","hong","0"),
("158","Hồng Nhạt","hong-nhat","0"),
("159","Inox","inox","0"),
("160","Màu be","mau-be","0"),
("161","Nâu","nau","0"),
("162","Tím","tim","0"),
("163","Vàng","vang","0"),
("164","Xanh dương","xanh-duong","0"),
("165","Trắng","trang","0"),
("166","Đen","den","0"),
("167","Abbott","abbott","0"),
("168","AirBorne","airborne","0"),
("169","ANGE","ange","0"),
("170","Annumn","annumn","0"),
("171","Aprica","aprica","0"),
("172","Aptamil","aptamil","0"),
("173","Arau","arau","0"),
("174","Autoru","autoru","0"),
("175","Avent","avent","0"),
("176","Babiboo","babiboo","0"),
("177","Barbie","barbie","0"),
("178","BBCooker","bbcooker","0"),
("179","Bebe Confort","bebe-confort","0"),
("180","Beegadog &amp; Beiner","beegadog-beiner","0"),
("181","Blédina","bledina","0"),
("182","Bomann","bomann","0"),
("183","Borges","borges","0"),
("184","Born Free","born-free","0"),
("185","Bosch","bosch","0"),
("186","Braun","braun","0"),
("187","Brevi","brevi","0"),
("188","Canpol","canpol","0"),
("189","Carters","carters","0"),
("190","Celia Expert","celia-expert","0"),
("191","Chicco","chicco","0"),
("192","Chính hãng","chinh-hang","0"),
("193","Chu-chu","chu-chu","0"),
("194","Combi","combi","0"),
("195","Comotomo","comotomo","0"),
("196","D-nee","d-nee","0"),
("197","Disney","disney","0"),
("198","Br Brown","br-brown","0"),
("199","Dreanbaby","dreanbaby","0"),
("200","Dumex","dumex","0"),
("201","Dược phẩm Đông Á","duoc-pham-dong-a","0"),
("202","Duy Tân","duy-tan","0");
INSERT INTO bz_terms VALUES
("203","Farlin","farlin","0"),
("204","Fatz baby","fatz-baby","0"),
("205","FEDORA","fedora","0"),
("206","Fisher Price","fisher-price","0"),
("207","Fleur Alpine","fleur-alpine","0"),
("208","Frisco","frisco","0"),
("209","Fructo NyaNya","fructo-nyanya","0"),
("210","Galia","galia","0"),
("211","Gerber","gerber","0"),
("212","Glico","glico","0"),
("213","Goodbaby","goodbaby","0"),
("214","Graco","graco","0"),
("215","Grand Noble","grand-noble","0"),
("216","Happy Days","happy-days","0"),
("217","HEALTHERIER","healtherier","0"),
("218","Heinz","heinz","0"),
("219","Hipz","hipz","0"),
("220","Humana","humana","0"),
("221","Made in Viet Nam","made-in-viet-nam","0"),
("222","Mamachi","mamachi","0"),
("223","Mamago","mamago","0"),
("224","0-3 tháng","0-3-thang","0"),
("225","3 - 6 tháng","3-6-thang","0"),
("226","6 - 9 tháng","6-9-thang","0"),
("227","9 - 12 tháng","9-12-thang","0"),
("228","1 - 3 tuổi","1-3-tuoi","0"),
("229","3 - 6 tuổi","3-6-tuoi","0"),
("230","6 - 9 tuổi","6-9-tuoi","0"),
("231","6 - 8 tuổi","6-8-tuoi","0"),
("232","Loại nhỏ","loai-nho","0"),
("233","Loại to","loai-to","0"),
("234","Loại vừa","loai-vua","0"),
("235","XS","xs","0"),
("237","S","s","0"),
("238","M","m","0"),
("239","L","l","0"),
("240","XL","xl","0"),
("241","Bé trai","be-trai","0"),
("242","Bé gái","be-gai","0"),
("243","Bé trai, bé gái","be-trai-be-gai","0"),
("244","Ca cao","ca-cao","0"),
("245","Hoa cúc","hoa-cuc","0"),
("246","Vani","vani","0"),
("247","Socola","socola","0"),
("248","Sầu riêng","sau-rieng","0"),
("249","Cam","cam","0"),
("250","Chanh","chanh","0"),
("251","Gỗ tự nhiên","go-tu-nhien","0"),
("252","Gỗ công nghiệp","go-cong-nghiep","0"),
("253","Vải Cotton 100%","vai-cotton-100","0"),
("254","Vải Cotton 65/35","vai-cotton-6535","0"),
("255","10g","10g","0"),
("256","80g","80g","0"),
("257","150g","150g","0"),
("258","200g","200g","0"),
("259","300g","300g","0"),
("260","400g","400g","0"),
("261","500g","500g","0"),
("262","600g","600g","0"),
("263","800g","800g","0"),
("264","900g","900g","0"),
("265","1000g","1000g","0"),
("266","100ml","100ml","0"),
("267","120ml","120ml","0"),
("268","125ml","125ml","0"),
("269","150ml","150ml","0"),
("270","160ml","160ml","0"),
("271","200ml","200ml","0"),
("272","240ml","240ml","0"),
("273","260ml","260ml","0"),
("274","280ml","280ml","0"),
("275","300ml","300ml","0"),
("276","350ml","350ml","0"),
("277","400ml","400ml","0"),
("278","500ml","500ml","0"),
("279","600ml","600ml","0"),
("280","700ml","700ml","0"),
("281","800ml","800ml","0"),
("282","900ml","900ml","0"),
("283","1000ml","1000ml","0"),
("284","Anh Quốc","anh-quoc","0"),
("285","Áo","ao","0"),
("286","Ba Lan","ba-lan","0"),
("287","Bỉ","bi","0"),
("288","Canada","canada","0"),
("289","Hà Lan","ha-lan","0"),
("290","New Zealand","new-zealand","0"),
("291","Nga","nga","0"),
("292","Nhật Bản","nhat-ban","0"),
("293","Pháp","phap","0"),
("294","Đức","duc","0"),
("295","Singapore","singapore","0"),
("296","Tây Ban Nha","tay-ban-nha","0"),
("297","Hàn Quốc","han-quoc","0"),
("298","Đài Loan","dai-loan","0"),
("299","Việt Nam","viet-nam","0"),
("300","Hồng Kông","hong-kong","0"),
("301","Trung Quốc","trung-quoc","0"),
("302","Italian","italian","0"),
("303","Thụy Sỹ","thuy-sy","0");
INSERT INTO bz_terms VALUES
("304","ÚC","uc","0"),
("305","&gt; 20 tuổi","20-tuoi","0"),
("306","Sản phẩm của Mẹ","san-pham-cua-me","0"),
("307","Gel trong","gel-trong","0"),
("308","Trắng - Hồng","trang-hong","0"),
("309","Bột mỳ","bot-my","0"),
("310","Xanh - Vàng","xanh-vang","0"),
("311","USA","usa","0"),
("312","Xanh lá","xanh-la","0"),
("313","Táo","tao","0"),
("314","Nhựa ABS cao cấp","nhua-abs-cao-cap","0"),
("315","20kg","20kg","0"),
("316","Đỏ","do","0"),
("317","Dâu","dau","0"),
("318","Dành cho mẹ","danh-cho-me","0"),
("319","Đủ màu","du-mau","0"),
("320","Nhung - Bông","nhung-bong","0"),
("321","Xám lông chuột","xam-long-chuot","0"),
("322","Xanh ngoc","xanh-ngoc","0"),
("323","Mobile menu","mobile-menu","0"),
("324","Uncategorized","uncategorized","0");




CREATE TABLE `bz_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;


INSERT INTO bz_usermeta VALUES
("1","1","nickname","giuselethien"),
("2","1","first_name","Lê"),
("3","1","last_name","Thiện"),
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
("16","1","bz_dashboard_quick_press_last_post_id","1667"),
("17","1","community-events-location","a:1:{s:2:\"ip\";s:11:\"113.173.5.0\";}"),
("18","1","bz_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("19","1","bz_user-settings-time","1558011651"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","managenav-menuscolumnshidden","a:2:{i:0;s:11:\"link-target\";i:1;s:3:\"xfn\";}"),
("22","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:15:\"add-product_cat\";i:6;s:15:\"add-product_tag\";}"),
("23","1","nav_menu_recently_edited","323"),
("25","1","last_update","1507710659"),
("26","1","edit_product_cat_per_page","500"),
("43","1","session_tokens","a:2:{s:64:\"e27610e76dd73805123dafc1acb71fc896693dc392fc50ab2aa0cf255a53b94b\";a:4:{s:10:\"expiration\";i:1558170526;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1557997726;}s:64:\"01349128f95f45a384c228c68c6bf7f8d186b2fcb32276d1ea13cef8a80e63d1\";a:4:{s:10:\"expiration\";i:1558184448;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558011648;}}"),
("44","1","closedpostboxes_product","a:0:{}"),
("45","1","metaboxhidden_product","a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}"),
("46","1","billing_first_name","Lê"),
("47","1","billing_last_name","Thiện"),
("48","1","billing_company",""),
("49","1","billing_address_1","Tầng 4, Office 122. Nguyễn Trãi, Thanh Xuân, Hà Nội"),
("50","1","billing_address_2",""),
("51","1","billing_city",""),
("52","1","billing_postcode",""),
("53","1","billing_country",""),
("54","1","billing_state",""),
("55","1","billing_phone","0972939830"),
("56","1","billing_email","giuselethien@gmail.com"),
("57","1","shipping_first_name",""),
("58","1","shipping_last_name",""),
("59","1","shipping_company",""),
("60","1","shipping_address_1",""),
("61","1","shipping_address_2",""),
("62","1","shipping_city",""),
("63","1","shipping_postcode",""),
("64","1","shipping_country",""),
("65","1","shipping_state",""),
("67","1","rocket_boxes","a:2:{i:0;s:23:\"__rocket_imagify_notice\";i:1;s:21:\"rocket_imagify_notice\";}"),
("68","1","shipping_method",""),
("69","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("70","1","_woocommerce_tracks_anon_id","woo:mWXB/Td0PPFstDCW/s5Q7Mia");




CREATE TABLE `bz_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO bz_users VALUES
("1","admin","$P$B2XOMPUKGmTdSAPnWiVLN6XymJvXpM.","admin","demobz@gmail.com","","2017-10-03 09:24:06","","0","admin");




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
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO bz_woocommerce_attribute_taxonomies VALUES
("1","mau-sac","Màu sắc","select","menu_order","1"),
("2","thuong-hieu","Thương hiệu","select","menu_order","1"),
("3","do-tuoi","Độ tuổi","select","menu_order","1"),
("4","kich-thuoc","Kích thước","select","menu_order","1"),
("6","gioi-tinh","Giới tính","select","menu_order","1"),
("7","mui-vi","Mùi vị","select","menu_order","1"),
("8","chat-lieu","Chất liệu","select","menu_order","1"),
("9","khoi-luong","Khối lượng","select","menu_order","1"),
("10","dung-tich","Dung tích","select","menu_order","1"),
("11","xuat-xu","Xuất xứ","select","menu_order","1");




CREATE TABLE `bz_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO bz_woocommerce_order_itemmeta VALUES
("1","1","_product_id","836"),
("2","1","_variation_id","0"),
("3","1","_qty","1"),
("4","1","_tax_class",""),
("5","1","_line_subtotal","600000"),
("6","1","_line_subtotal_tax","0"),
("7","1","_line_total","600000"),
("8","1","_line_tax","0"),
("9","1","_line_tax_data","a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}"),
("10","2","_product_id","834"),
("11","2","_variation_id","0"),
("12","2","_qty","1"),
("13","2","_tax_class",""),
("14","2","_line_subtotal","200000"),
("15","2","_line_subtotal_tax","0"),
("16","2","_line_total","200000"),
("17","2","_line_tax","0"),
("18","2","_line_tax_data","a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}");




CREATE TABLE `bz_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO bz_woocommerce_order_items VALUES
("1","Đồ chơi mô hình chú hươu cao cổ vui vẻ No.603/605","line_item","1662"),
("2","Xe chòi chân hình xe mô tô KPL.008 cho bé","line_item","1662");




CREATE TABLE `bz_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO bz_woocommerce_sessions VALUES
("1","1","a:7:{s:8:\"customer\";s:879:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2017-10-11T08:30:59+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:60:\"Tầng 4, Office 122. Nguyễn Trãi, Thanh Xuân, Hà Nội\";s:7:\"address\";s:60:\"Tầng 4, Office 122. Nguyễn Trãi, Thanh Xuân, Hà Nội\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"Lê\";s:9:\"last_name\";s:7:\"Thiện\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0972939830\";s:5:\"email\";s:22:\"giuselethien@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";}","1558184888");




CREATE TABLE `bz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woof_query_cache` (
  `mkey` varchar(64) NOT NULL,
  `mvalue` text NOT NULL,
  KEY `mkey` (`mkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woof_stat_buffer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` text NOT NULL,
  `user_ip` text NOT NULL,
  `taxonomy` text NOT NULL,
  `value` int(11) NOT NULL,
  `page` text NOT NULL,
  `tax_page_term_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;






CREATE TABLE `bz_woof_stat_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ip` text NOT NULL,
  `page` varchar(16) NOT NULL DEFAULT 'shop',
  `request` text NOT NULL,
  `hash` text NOT NULL,
  `tax_page` text NOT NULL,
  `tax_page_term_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `is_collected` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;