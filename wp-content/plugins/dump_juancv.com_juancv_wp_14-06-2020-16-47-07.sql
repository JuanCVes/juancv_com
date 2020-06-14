# Dumped by C99Shell.SQL v. 1.0 pre-release build #13
# Home page: http://ccteam.ru
#
# Host settings:
# MySQL version: (5.5.5-10.2.32-MariaDB) running on 79.137.64.160 (juancv.com)
# Date: 14.06.2020 16:47:07
# DB: "juancv_wp"
#---------------------------------------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_comments`(`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES ('1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-13 20:13:55', '2020-06-13 20:13:55', 'Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', '0', '1', '', '', '0', '0');
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('1', 'siteurl', 'http://juancv.com', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('2', 'home', 'http://juancv.com', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('3', 'blogname', 'My WordPress Website', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('4', 'blogdescription', 'Just another WordPress site
', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('6', 'admin_email', 'info@sauronz.com', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('28', 'permalink_structure', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('29', 'rewrite_rules', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('33', 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('40', 'template', 'twentytwenty', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('41', 'stylesheet', 'twentytwenty', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('48', 'db_version', '47018', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('51', 'blog_public', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('53', 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('66', 'image_default_link_type', 'none', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('79', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('80', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('81', 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('82', 'timezone_string', '', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('84', 'page_on_front', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('91', 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('92', 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('93', 'admin_email_lifespan', '1607631235', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('94', 'initial_db_version', '47018', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('95', 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('96', 'fresh_site', '1', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('97', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('98', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('99', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('100', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('101', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('102', 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('107', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('108', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('109', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('110', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('111', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('112', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('113', '_transient_doing_cron', '1592151301.2213449478149414062500', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('114', 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('115', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1592133232;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('146', '_site_transient_timeout_available_translations', '1592090500', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('147', '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 13:46:18\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:41:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"????????\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"??????? ????????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"????????\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"????? ?????????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Az?rbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"?????????? ????\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"??????????\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"?????????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"??????\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"????? ??.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-02 09:15:25\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"???????????\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 13:16:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 06:27:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Catal�\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"?e�tina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokra?ovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 15:15:09\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-20 09:36:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Forts�t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:48:51\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:49:05\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:19:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:20:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-19 19:54:21\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (�sterreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 12:34:15\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"????????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"????????\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-08 05:34:29\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:28:24\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:03:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-28 09:08:47\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Da?rigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 19:45:47\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Espa�ol de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 23:14:28\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Espa�ol de M�xico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Espa�ol de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-04 01:49:30\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Espa�ol de Per�\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-05 16:15:41\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Espa�ol\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-31 09:30:36\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Espa�ol de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Espa�ol de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Espa�ol de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Espa�ol de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:04:10\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Espa�ol de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 19:01:12\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Espa�ol de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"J�tka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 17:57:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:36:50\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"?????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"?????\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 10:30:15\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 21:59:14\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Fran�ais\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 21:16:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Fran�ais du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 12:25:22\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Fran�ais de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"G�idhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 09:42:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"???? ??????\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"????? ??\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"?????\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-18 15:51:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"????????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"????\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"????\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-05 20:35:18\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 20:45:26\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserb�?ina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-03 10:58:08\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytat�s\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"??????????\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 21:40:48\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"�slenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"�fram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 12:52:04\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 04:27:22\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"???\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"??\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusak�\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"???????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"??????????\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 12:23:59\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"????? ????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"??????????\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"?????????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"????\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"??????????\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"???\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"??\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"??????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"?????????? ???\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"???????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"??????\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvi? kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"T?sti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-06 14:36:42\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latvie�u valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpin?t\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"?????????? ?????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"????????\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"??????\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"??????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"????????????\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"???? ????\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"??????????????????\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 19:43:01\";s:12:\"english_name\";s:19:\"Norwegian (Bokm�l)\";s:11:\"native_name\";s:13:\"Norsk bokm�l\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"???? ??????????\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 19:01:41\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-07 07:33:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (Belgi�)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 08:33:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"???? ????\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 06:38:25\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"???? ?????\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 23:19:07\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Portugu�s do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:19:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Portugu�s (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-03 12:39:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Portugu�s\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 10:13:20\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Portugu�s de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ru�inga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 14:02:07\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Rom�n?\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continu?\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 14:51:08\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"???????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"??????????\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"???????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"??????\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"????\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"???? ???\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"????? ????? ????\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-08 11:26:21\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Sloven?ina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokra?ova?\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-27 17:42:38\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"???????\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"???? ????\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Sloven�?ina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 15:07:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"?????? ?????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"???????\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-06 09:38:51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Forts�tt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"?l?nsk? g?dka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"K?ntynuowa?\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"?????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"????????\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"??????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"??????????\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 18:21:20\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"???\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"?????\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 19:27:37\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"T�rk�e\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"????? ????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"????? ???\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"????????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"?????????????\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 01:47:18\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"??????????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"??????????\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"????\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"???? ?????\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O�zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Ti?ng Vi?t\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Ti?p t?c\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:34:34\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"??\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"????\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"??\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"?????	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"??\";}}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('150', '_site_transient_timeout_theme_roots', '1592135033', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('151', '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('119', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1592133233;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('120', '_site_transient_timeout_browser_81dd33670f154df1ac6887eccc23e632', '1592684146', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('121', '_site_transient_browser_81dd33670f154df1ac6887eccc23e632', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('122', '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1592684146', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('123', '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('103', 'cron', 'a:5:{i:1592079238;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1592079345;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592079346;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592165638;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('104', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('105', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('106', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('162', '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1592176439', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('163', '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2020/06/wordpress-5-4-2-security-and-maintenance-release/\'>WordPress 5.4.2 Security and Maintenance Release</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/openjs-world-2020-conference-goes-virtual-tickets-are-free-june-23-24?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=openjs-world-2020-conference-goes-virtual-tickets-are-free-june-23-24\'>WPTavern: OpenJS World 2020 Conference Goes Virtual, Tickets Are Free: June 23�24</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-8-3-updates-block-categories-includes-parent-block-selector-and-adds-new-design-controls?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=gutenberg-8-3-updates-block-categories-includes-parent-block-selector-and-adds-new-design-controls\'>WPTavern: Gutenberg 8.3 Updates Block Categories, Includes Parent Block Selector, and Adds New Design Controls</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/asblocks-project-uses-gutenberg-to-create-a-collaborative-writing-environment?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=asblocks-project-uses-gutenberg-to-create-a-collaborative-writing-environment\'>WPTavern: AsBlocks Project Uses Gutenberg to Create a Collaborative Writing Environment</a></li></ul></div>', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('126', 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('156', '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1592176439', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('157', '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1592133239', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('154', '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1592176439', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('155', '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News �  � WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 22:52:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.5-alpha-48034\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"
		
		
		
		
		
				
		
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 5.4.2 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2020/06/wordpress-5-4-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 19:19:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8592\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"WordPress 5.4.2 is now available! This security and maintenance release features 23 fixes and enhancements. Plus, it adds a number of security fixes�see the list below. These bugs affect WordPress versions 5.4.1 and earlier; version 5.4.2 fixes them, so you�ll want to upgrade. If you haven�t yet updated to 5.4, there are also updated versions [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6827:\"
<p>WordPress 5.4.2 is now available!</p>



<p>This security and maintenance release features 23 fixes and enhancements. Plus, it adds a number of security fixes�see the list below.</p>



<p>These bugs affect WordPress versions 5.4.1 and earlier; version 5.4.2 fixes them, so you�ll want to upgrade.</p>



<p>If you haven�t yet updated to 5.4, there are also updated versions of 5.3 and earlier that fix the bugs for you.</p>



<h3><strong>Security Updates</strong></h3>



<p>WordPress versions 5.4 and earlier are affected by the following bugs, which are fixed in version 5.4.2. If you haven�t yet updated to 5.4, there are also updated versions of 5.3 and earlier that fix the security issues.</p>



<ul><li>Props to Sam Thomas (jazzy2fives) for finding an XSS issue where authenticated users with low privileges are able to add JavaScript to posts in the block editor.</li><li>Props to Luigi &#8211; (<a href=\"https://www.gubello.me/\">gubello.me</a>) for discovering an XSS issue where authenticated users with upload permissions are able to add JavaScript to media files.</li><li>Props to Ben Bidner of the WordPress Security Team for finding an open redirect issue in <em>wp_validate_redirect()</em>.</li><li>Props to <a href=\"http://apapedulimu.click\">Nrimo Ing Pandum</a> for finding an authenticated XSS issue via theme uploads.</li><li>Props to <a href=\"https://blog.ripstech.com/authors/simon-scannell\">Simon Scannell of RIPS Technologies</a> for finding an issue where <em>set-screen-option</em> can be misused by plugins leading to privilege escalation.</li><li>Props to <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a> for discovering an issue where comments from password-protected posts and pages could be displayed under certain conditions.</li></ul>



<p>Thank you to all of the reporters for&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>



<p>One maintenance update was also deployed to versions 5.1, 5.2 and 5.3. See the <a href=\"https://make.wordpress.org/core/2020/06/09/wordpress-5-4-2-prevent-unmoderated-comments-from-search-engine-indexation/\">related developer note</a> for more information.</p>



<p>You can browse the&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=5.4.2&amp;order=priority\">full list of changes on Trac</a>.</p>



<p>For more info, browse the full list of changes on Trac or check out the Version&nbsp;<a href=\"https://wordpress.org/support/wordpress-version/version-5-4-2/\">5.4.2 documentation page</a>.</p>



<p>WordPress 5.4.2 is a short-cycle maintenance release. The next major release will be&nbsp;<a href=\"https://make.wordpress.org/core/5-5/\">version 5.5</a>.</p>



<p>You can download WordPress 5.4.2 from the button at the top of this page, or visit your<strong>&nbsp;Dashboard ? Updates</strong>&nbsp;and click&nbsp;<strong>Update Now</strong>.</p>



<p>If you have sites that support automatic background updates, they�ve already started the update process.</p>



<h3>Thanks and props!</h3>



<p>In addition to the security researchers mentioned above, thank you to everyone who helped make WordPress 5.4.2 happen:</p>



<p><a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/argentite\">argentite</a>, <a href=\"https://profiles.wordpress.org/asif2bd\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bdcstr\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/delowardev\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/dhrrob\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/donmhico\">donmhico</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/emlebrun\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/finomeno\">finomeno</a>, <a href=\"https://profiles.wordpress.org/garethgillman\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/giorgio25b\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/h71\">Hector F</a>, <a href=\"https://profiles.wordpress.org/ianbelanger\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/imath\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/javiercasares\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/jonkolbert\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/kjellr\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kthmd\">KT</a>, <a href=\"https://profiles.wordpress.org/markusthiel\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mislavjuric\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/oakesjosh\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/passoniate\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/poena\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sabernhardt\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/samful\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skarabeq\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/skithund\">Toni Viemer�</a>, <a href=\"https://profiles.wordpress.org/suzylah\">suzylah</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/utz119\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a> and <a href=\"https://profiles.wordpress.org/yuhin\">yuhin</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8592\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"
		
		
		
		
		
				
		
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Equity and the Power of Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/06/equity-and-the-power-of-community/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 06 Jun 2020 17:59:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8590\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"Over the past week, I�ve been thinking a lot about George Floyd, Breonna Taylor, and Ahmaud Arbery. I have been thinking about white supremacy, the injustice that Black women and men are standing up against across the world, and all the injustices I can�t know, and don�t see.&#160; The WordPress mission is to democratize publishing, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2535:\"
<p>Over the past week, I�ve been thinking a lot about George Floyd, Breonna Taylor, and Ahmaud Arbery. I have been thinking about white supremacy, the injustice that Black women and men are standing up against across the world, and all the injustices I can�t know, and don�t see.&nbsp;</p>



<p>The WordPress mission is to democratize publishing, and to me, that has always meant more than the freedom to express yourself. Democratizing publishing means giving voices to the voiceless and amplifying those speaking out against injustice. It means learning things that we otherwise wouldn�t. To me, it means that every voice has the ability to be heard, regardless of race, wealth, power, and opportunity. WordPress is a portal to commerce; it is a canvas for identity, and a catalyst for change.</p>



<p>While WordPress as an open source project may not be capable of refactoring unjust judicial systems or overwriting structural inequality, this does not mean that we, the WordPress community, are powerless. WordPress can&#8217;t dismantle white supremacy, but the WordPress community can invest in underrepresented groups (whose experiences cannot be substituted for) and hire them equitably. WordPress can&#8217;t eradicate prejudice, but the WordPress community can hold space for marginalized voices in our community.</p>



<p>There is a lot of racial, societal, and systemic injustice to fight. At times, change may seem impossible, and certainly, it�s been too slow. But I know in my heart that the WordPress community is capable of changing the world.�</p>



<p>If you would like to learn more about how to make a difference in your own community, here are a few resources I�ve gathered from WordPressers just like you.</p>



<ul><li><a href=\"https://href.li/?http://www.socialjusticetoolbox.com/\">Social Justice Toolbox</a></li><li><a href=\"http://antiracismforbeginners.com/\">Anti-racism resource list</a></li><li>An open source <a href=\"https://guidetoallyship.com/\">Guide to Allyship</a></li><li><a href=\"https://allienimmons.com/how-to-be-a-wordpress-ally/\">How to be a WordPress Ally</a></li><li><a href=\"https://www.highsnobiety.com/p/black-lives-matter-europe/\">Supporting Black Lives Matter in Europe</a></li><li><a href=\"https://feminisminindia.com/2019/06/03/colourism-fairness-india/\">Cost of Colourism in India</a>�</li><li><a href=\"https://www.ted.com/talks/verna_myers_how_to_overcome_our_biases_walk_boldly_toward_them?language=en\">Overcoming Biases by Walking Toward Them</a>�</li></ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8590\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:57:\"
		
		
		
		
		
				
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"The Month in WordPress: May 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2020/06/the-month-in-wordpress-may-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jun 2020 07:36:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8585\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"May was an action-packed month for WordPress! WordPress organizers are increasingly moving WordCamps online, and contributors are taking big steps towards Full Site Editing with Gutenberg. To learn more and get all the latest updates, read on.&#160; Gutenberg 8.1 and 8.2 Gutenberg 8.1 was released on May 13, followed quickly by Gutenberg 8.2 on May [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10242:\"
<p>May was an action-packed month for WordPress! WordPress organizers are increasingly moving WordCamps online, and contributors are taking big steps towards Full Site Editing with Gutenberg. To learn more and get all the latest updates, read on.&nbsp;</p>



<hr class=\"wp-block-separator\" />



<h2>Gutenberg 8.1 and 8.2</h2>



<p>Gutenberg <a href=\"https://make.wordpress.org/core/2020/05/13/whats-new-in-gutenberg-13-may/\">8.1</a> was released on May 13, followed quickly by Gutenberg <a href=\"https://make.wordpress.org/core/2020/05/27/whats-new-in-gutenberg-27-may/\">8.2</a> on May 27.&nbsp;</p>



<ul><li>8.1 added new block pattern features making it easier to insert desired patterns, along with a new pattern. It also added a button to&nbsp; collapsed block actions for copying the selected block, which will help touchscreen users or users who don�t use keyboard shortcuts.&nbsp;</li><li>8.2 introduced block pattern categories and a `viewportWidth` property that will be particularly useful for large block patterns. There is also a new content alignment feature, and enhancements to improve the writing experience.&nbsp;</li></ul>



<p>Both releases include a number of new APIs, enhancements, bug fixes, experiments, new documentation, improvement to code quality, and more! To learn the latest, visit the announcement posts for <a href=\"https://make.wordpress.org/core/2020/05/13/whats-new-in-gutenberg-13-may/\">Gutenberg 8.1</a> and <a href=\"https://make.wordpress.org/core/2020/05/27/whats-new-in-gutenberg-27-may/\">Gutenberg 8.2</a>.</p>



<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Gutenberg Phase 2: Steps Towards Full Site Editing</h2>



<p>Contributors are currently working hard on <a href=\"https://wordpress.org/about/roadmap/\">Phase 2 of Gutenberg</a>! Where Phase 1 introduced the new block editor with WordPress 5.0, Phase 2 sees more customization and includes one of the biggest Gutenberg projects: Full Site Editing (FSE). At the moment, <a href=\"https://make.wordpress.org/core/2020/05/13/wordpress-5-5-planning-roundup/\">work on WordPress 5.5 has been initiated</a> and contributors decided to include <a href=\"https://make.wordpress.org/core/2020/05/29/editor-features-for-wordpress-5-5/\">basic functionality for Full Site Editing</a> in this release. FSE hopes to streamline the site creation and building process in WordPress using a block-based approach. There�s a lot of conversation and new information about FSE, so communication around the project is very important. On May 28th, a conversation was held in the #core-customize channel to discuss <a href=\"https://make.wordpress.org/core/2020/05/20/join-a-discussion-about-full-site-editing-and-the-future-of-the-customizer/\">FSE and the future of the Customizer</a>. To help everyone track the latest information, <a href=\"https://make.wordpress.org/core/2020/05/20/ways-to-keep-up-with-full-site-editing-fse/\">this post</a> summarizes ways to keep up with FSE.</p>



<p>Want to get involved with Gutenberg and FSE?&nbsp; Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. You can also check the FSE <a href=\"https://href.li/?https://github.com/WordPress/gutenberg/pulls?q=is%3Aopen+is%3Apr+label%3A%22%5BFeature%5D+Full+Site+Editing%22\">pull requests</a> and <a href=\"https://href.li/?https://github.com/WordPress/gutenberg/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BFeature%5D+Full+Site+Editing%22\">issues</a> on GitHub.</p>



<h2>Theme Review Team Rebranding</h2>



<p>Representatives of the Themes Review Team have decided to update their team name to �Themes Team.� This decision reflects changes that the block editor brings to the landscape of themes with the Full Site Editing project. The team has always been involved in projects beyond reviewing WordPress.org themes and lately, the team has been contributing more to themes in general &#8212; including open-source packages, contributions to Full Site Editing, the Twenty Twenty theme, and more. You can read more about the name change in the <a href=\"https://make.wordpress.org/themes/2020/05/12/meeting-notes-tuesday-12-may-2020/\">team�s meeting notes</a>.</p>



<p>Want to get involved with the Themes Team? <a href=\"https://make.wordpress.org/themes/\">Follow the Themes blog here</a>, or join them in the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Online WordCamp Program Announced</h2>



<p>To assist organizers with moving their WordCamps online, the WordPress Community team has prepared a <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">new set of guidelines for online WordCamps</a>. The Community Team will cover <a href=\"https://make.wordpress.org/community/handbook/virtual-events/online-wordcamp-cost-guidelines-and-the-budget-review-process/\">online production and captioning costs</a> associated with any online WordCamp without the need for local sponsorship. The team also <a href=\"https://make.wordpress.org/community/handbook/virtual-events/welcome/new-guidelines-for-virtual-events-in-2020/\">updated its guidelines</a> to cover the regional focus of online events, and modified the <a href=\"https://make.wordpress.org/community/handbook/virtual-events/online-code-of-conduct/\">code of conduct</a> to cater to the new format. <a href=\"https://central.wordcamp.org/schedule/\">The WordCamp schedule</a> has also been updated to indicate whether an event is taking place online or not. You can find resources, tools, and information about online WordPress events in our <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Online Events Handbook</a>. They have also prepared a <a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/in-person-events-during-covid-19/\">new set of guidelines for in-person events</a> taking place in 2020, in the light of COVID-19 challenges.&nbsp;</p>



<p>Want to get involved with the Community team? <a href=\"https://make.wordpress.org/community/\">Follow the Community blog here</a>, or join them in the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. To organize a Meetup or WordCamp, <a href=\"https://make.wordpress.org/community/handbook/virtual-events/welcome/applying-for-a-virtual-event/\">visit the handbook page</a>.&nbsp;</p>



<h2>BuddyPress 6.0.0 �iovine�s�</h2>



<p>On May 13th, <a href=\"https://buddypress.org/2020/05/buddypress-6-0-0/\">BuddyPress 6.0.0, known as �iovine�s,� was released</a>. This release includes two new blocks for the WordPress Editor: Members and Groups. It also saw the completion of the BP REST API, adding the six remaining endpoints, and the move or local avatar management to the Members component. Beyond that, 6.0.0 includes more than 80 changes, made possible by 42 contributors.&nbsp;</p>



<p>Want to download this latest version of BuddyPress? <a href=\"https://buddypress.org/2020/05/buddypress-6-0-0/\">Get it here</a>.&nbsp; You can also help by <a href=\"https://translate.wordpress.org/projects/wp-plugins/buddypress/dev/\">translating BuddyPress into another language</a> or letting the team know of any issues you find in the <a href=\"https://buddypress.org/support/\">support forums</a>.</p>



<h2>WordCamp Spain Online Concludes Successfully</h2>



<p>WordPress Meetup organizers in Spain joined hands to organize <a href=\"https://2020.spain.wordcamp.org/\">WordCamp Spain online </a>from May 6 to 9, which proved to be a huge success. The event had more than 5,500 attendees, 60 speakers, and 16 sponsors. Over 200 people from around the world participated in the <a href=\"https://2020.spain.wordcamp.org/2020/05/14/asi-fue-contributor-day/\">Contributor Day</a>. Matt Mullenweg <a href=\"https://wordpress.tv/2020/05/09/matias-ventura-matt-mullenweg-matt-y-wordpress/\">hosted an AMA for the participants</a>, facilitated by Mattias Ventura�s on-the-spot Spanish translation.&nbsp;</p>



<p>If you missed the event, you can watch<a href=\"https://wordpress.tv/event/wordcamp-spain-2020/\"> videos from WordCamp Spain online at WordPress.TV</a>. Want to organize a regional WordCamp? <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Learn more about that here</a>!</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>WordPress <a href=\"https://ma.tt/2020/05/celebrate-seventeen/\">celebrated its 17th anniversary</a> on May 27, 2020! WordPress lovers all across the world <a href=\"https://twitter.com/hashtag/WP17?src=hashtag_click\">participated in online meetups</a> to celebrate the 17th birthday of their favorite open-source software.&nbsp;</li><li>The WordCamp Asia team has published <a href=\"https://2021.asia.wordcamp.org/2020/05/11/wordcamp-asia-2021-call-for-organisers/\">a call for organizers</a> for the January 2021 event &#8212; the call will close on June 8.</li><li>PHP and core version checks are coming into WordPress. This feature will prevent end-users from installing or activating a theme that is incompatible with their current version of PHP or WordPress. The change that has <a href=\"https://core.trac.wordpress.org/changeset/47819\">already been merged to core</a> is slated to land in WordPress 5.5.</li><li>The 2020 WordPress release squads <a href=\"https://make.wordpress.org/core/2020/05/29/2020-wordpress-release-squads/\">have been announced</a>.</li><li>Don�t forget that <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">WordCamp Europe Online</a> is happening on June 4-6, 2020.</li></ul>



<p><em>Have a story that we should include in the next �Month in WordPress� post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8585\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:57:\"
		
		
		
		
		
				
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/05/the-month-in-wordpress-april-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 May 2020 09:31:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8571\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"April continued to be a challenging time for the WordPress community, with many under stay-at-home recommendations. However, it was also an exciting month in which we created new ways to connect with and inspire each other! This month, amazing contributors moved more WordCamps online and shipped new releases for WordPress and Gutenberg. For the latest, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8195:\"
<p>April continued to be a challenging time for the WordPress community, with many under stay-at-home recommendations. However, it was also an exciting month in which we created new ways to connect with and inspire each other! This month, amazing contributors moved more WordCamps online and shipped new releases for WordPress and Gutenberg. For the latest, read on.�</p>



<hr class=\"wp-block-separator\" />



<h2>WordPress 5.4.1 released</h2>



<p>On April 24th,&nbsp; <a href=\"https://make.wordpress.org/core/2020/04/24/wordpress-5-4-1-rc1/\">WordPress 5.4.1 Release Candidate 1</a> (RC1) was released for testing, quickly followed by the official <a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">release of WordPress 5.4.1</a> on April 29th. This security release features 17 bug fixes and seven security fixes, so we recommend updating your sites immediately. To download WordPress 5.4.1, visit your Dashboard, click on Updates, then Update Now, or download the latest version directly from WordPress.org. For more information, visit <a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">this post</a>, review the <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes on Trac</a>, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-4-1/\">version 5.4.1 HelpHub documentation page</a>.</p>



<p>Want to get involved in building WordPress Core? Follow<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Gutenberg 7.9 and 8.0 released</h2>



<p>It was another exciting month for Gutenberg, with the release of <a href=\"https://make.wordpress.org/core/2020/04/15/whats-new-in-gutenberg-15-april/\">7.9</a> and <a href=\"https://make.wordpress.org/core/2020/04/29/whats-new-in-gutenberg-29-april/\">8.0</a>! Version 7.9 brought new block design tools, three new patterns, and improved block markup. Gutenberg 8.0 continued to refine the new block patterns feature, with additional options for inline formatting, and extending the functionality of the Code Editor. In addition to these new features, both releases included new enhancements and APIs, along with a number of bug fixes, performance improvements, some experiments, and more! You can read all the details about the latest Gutenberg releases in the announcement posts for <a href=\"https://make.wordpress.org/core/2020/04/15/whats-new-in-gutenberg-15-april/\">7.9</a> and <a href=\"https://make.wordpress.org/core/2020/04/29/whats-new-in-gutenberg-29-april/\">8.0</a>.&nbsp;</p>



<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>BuddyPress 6.0.0</h2>



<p><a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-beta2/\">BuddyPress 6.0.0-beta2</a> was released for testing in mid-April, leading to the <a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-release-candidate/\">BuddyPress 6.0.0 Release Candidate</a>, announced on April 29. This is an important step before&nbsp; the final release of BuddyPress 6.0.0, which is slated for Thursday, May 14. Changes and new features in this release include moving the profile photo and user cover image under the BP Members component, and a new BP Rest API. Additionally, this release will introduce the first round of BuddyPress Blocks! Last, but not least, BuddyPress 6.0.0 will require at least PHP 5.6 and WordPress 4.8.&nbsp;</p>



<p>Want to get involved? <a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-release-candidate/\">Test the 6.0.0-RC here</a>! You can also help by <a href=\"https://translate.wordpress.org/projects/wp-plugins/buddypress/dev/\">translating BuddyPress into another language</a>, or let the team know of any issues you find, either in <a href=\"https://buddypress.org/support\">the support forums</a> and/or in their <a href=\"https://buddypress.trac.wordpress.org/\">development tracker</a>.&nbsp;</p>



<h2>WordCamp US goes online, apply to speak!</h2>



<p>WordCamp US will <a href=\"https://2020.us.wordcamp.org/2020/04/30/wordcamp-us-will-be-virtually-awesome/\">take place online due to the COVID-19 pandemic</a>. The event still runs from October 27-29, 2020, and will be free to anyone who wishes to attend. The team plans to offer&nbsp; what WCUS has historically brought to the community in person: sessions and workshops, Contributor Day, a hallway track, and of course, State of the Word.&nbsp;</p>



<p>Interested in speaking at WCUS? The <a href=\"https://2020.us.wordcamp.org/2020/03/16/call-for-speakers-is-now-open/\">Call for Speakers</a> is still open! You can apply to speak on the <a href=\"https://2020.wcus-speakers.org/\">speaker application site</a> until May 31, 2020 at 11:59 pm CDT (UTC-5).&nbsp;</p>



<p>Additionally, the <a href=\"https://2020.us.wordcamp.org/2020/03/23/call-for-cities-for-wcus-2021-2022/\">Call for Cities is also open</a>. If your community is interested in hosting WordCamp US in 2021 &amp; 2022, please <a href=\"https://wordcampcentral.survey.fm/wcus-2021-2022\">fill out this application</a>.&nbsp;</p>



<p>For the latest information about WordCamp US, sign up for updates on the <a href=\"https://2020.us.wordcamp.org/\">website</a>, or follow <a href=\"https://www.facebook.com/WordCampUSA/\">Facebook</a>, <a href=\"https://twitter.com/WordCampUS\">Twitter</a>, or <a href=\"https://www.instagram.com/wordcampus/?hl=en\">Instagram</a>.&nbsp;</p>



<h2>WordCamp Europe 2020 goes virtual&nbsp;</h2>



<p>Last month, WordCamp Europe decided to postpone its Porto event to 2021. This April, the WCEU organizing team announced that the <a href=\"https://2020.europe.wordcamp.org/2020/04/06/wordcamp-europe-2020-is-moving-online/\">2020 WordCamp will be online</a>! WordCamp Europe 2020 Online will take place from June 4-6, 2020, and tickets will be free. There will be a <a href=\"https://make.wordpress.org/updates/2020/04/15/wordcamp-europe-2020-contributor-day-update/\">virtual Contributor Day</a> on June 4, and then two half days of live-streamed talks and workshops. To participate, get your free ticket <a href=\"https://2020.europe.wordcamp.org/tickets/\">here</a>.&nbsp;</p>



<p>To get the latest news for WordCamp Europe 2020 Online, follow on <a href=\"https://www.facebook.com/WCEurope/\">Facebook</a>, <a href=\"https://twitter.com/wceurope?lang=en\">Twitter</a>, <a href=\"https://www.linkedin.com/company/wordcampeurope/\">LinkedIn</a>, or on <a href=\"https://www.instagram.com/wceurope/?hl=en\">Instagram</a>.&nbsp;</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading</h2>



<ul><li><a href=\"https://make.wordpress.org/core/2020/04/08/wordpress-5-5-call-for-tickets/\">The WordPress 5.5 release cycle has officially been kicked off with a Call for Tickets</a>.</li><li><a href=\"https://make.wordpress.org/themes/2020/04/03/proposal-github-theme-review/\">Read the proposal for a new GitHub Theme review process.</a>.</li><li><a href=\"https://wordpress.tv/event/wpblocktalk-april-2020/\">Did you miss WPBlockTalk, or want to watch that really interesting session again? All talks are available on WordPress.tv!</a></li><li><a href=\"https://make.wordpress.org/core/2020/04/01/feature-plugin-proposal-wp-consent-api/\">The Core team has introduced a proposal for a new Consent API as a feature plugin</a>.</li><li><a href=\"https://make.wordpress.org/updates/2020/04/30/quarterly-updates-q1-2020/\">All WordPress contribution teams have reported on their recent work in the first quarterly update of 2020</a>.</li></ul>



<p><em>Have a story that we should include in the next �Month in WordPress� post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8571\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"
		
		
		
		
		
				
		
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 5.4.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Apr 2020 19:56:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8553\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"WordPress 5.4.1 is now available! This security and maintenance release features 17 bug fixes in addition to 7 security fixes. Because this is a security release, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated. WordPress 5.4.1 is a short-cycle security and maintenance release. The next [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7029:\"
<p>WordPress 5.4.1 is now available!</p>



<p>This security and maintenance release features 17 <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priorityhttps://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">bug fixes</a> in addition to 7 security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated.</p>



<p>WordPress 5.4.1 is a short-cycle security and maintenance release. The next major release will be version 5.5.</p>



<p>You can download WordPress 5.4.1 by downloading from WordPress.org, or visit your Dashboard ? Updates and click Update Now.</p>



<p>If you have sites that support automatic background updates, they�ve already started the update process.</p>



<h3>Security Updates</h3>



<p>Seven security issues affect WordPress versions 5.4 and earlier. If you haven�t yet updated to 5.4, all WordPress versions since 3.7 have also been updated to fix the following security issues:</p>



<ul><li>Props to <a href=\"https://hackerone.com/hijibiji\">Muaz Bin Abdus Sattar</a> and <a href=\"https://hackerone.com/dyennez\">Jannes</a> who both independently reported an issue where password reset tokens were not properly invalidated.</li><li>Props to <a href=\"https://github.com/ka1n4t\">ka1n4t</a> for finding an issue where certain private posts can be viewed unauthenticated.</li><li>Props to <a href=\"https://evanricafort.com/\">Evan Ricafort</a> for discovering an XSS issue in the Customizer</li><li>Props to Ben Bidner from the WordPress Security Team who discovered an XSS issue in the search block.</li><li>Props to Nick Daugherty from <a href=\"https://wpvip.com\">WordPress VIP</a> / WordPress Security Team who discovered an XSS issue in <code>wp-object-cache</code>.</li><li>Props to Ronnie Goodrich (<a href=\"https://hackerone.com/kahoots\">Kahoots</a>) and <a href=\"http://pentestusa.com/\">Jason Medeiros</a> who independently reported an XSS issue in file uploads.</li><li>Props to <a href=\"https://weston.ruter.net/\">Weston Ruter</a> for fixing a stored XSS vulnerability in the WordPress customizer.</li><li>Additionally, an authenticated XSS issue in the block editor was discovered by Nguyen The Duc (<a href=\"https://twitter.com/ducnt_\">ducnt</a>) in WordPress 5.4 RC1 and RC2. It was fixed in 5.4 RC5. We wanted to be sure to give credit and thank them for all of their work in making WordPress more secure.</li></ul>



<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>



<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-4-1/\">version 5.4.1 HelpHub documentation page</a>.</p>



<p>In addition to the security researchers mentioned above, thank you to everyone who helped make WordPress 5.4.1 happen:</p>



<p><a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/arnaudbroes/\">arnaudbroes</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">DhrRob</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">S�ren Br�nsted</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">tellthemachines</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, and <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8553\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:76:\"
		
		
					
		
		
		
				
		
		

					
										
					
					
			
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"People of WordPress: Mario Peshev\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Apr 2020 00:57:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:158:\"In the April edition of our \"People of WordPress\" series, you\'ll find out how Mario Peshev went from self-taught developer to teaching basic digital literacy.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12069:\"
<p><em>You�ve probably heard that WordPress is open source software, and may know that it�s created and run by volunteers. Enthusiasts share many examples of how WordPress has changed people�s lives for the better. In this monthly series, we share some of those lesser-known, amazing stories.</em></p>



<h2><strong>Computer science in the nineties</strong></h2>



<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8539\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=200&amp;ssl=1 200w, https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 200px) 100vw, 200px\" data-recalc-dims=\"1\" /><figcaption>Mario Peshev</figcaption></figure></div>



<p>Mario has been hooked on computers ever since he&nbsp;got his first one in 1996. He started with digging into MS-DOS and Windows 3.1 first and learned tons by trial and error. Following that adventure, Mario built his first HTML site in 1999. He found development so exciting that he spent day and night learning QBasic and started working at the local PC game club. Mario got involved with several other things related to website administration (translating security bulletins, setting up simple sites, etc) and soon found the technology field was full of activities he really enjoyed.</p>



<h2><strong>The Corporate Lifestyle</strong></h2>



<p>Mario started studying programming including an intensive high-level course for C#, Java development, and software engineering, and eventually got a job in a corporate environment. He soon became a team lead there, managing all the planning and paperwork for their projects.</p>



<p>But he continued freelancing on the side. He grew his own network of technical experts through attending, volunteering at, and organizing conferences. He also ran a technical forum and regularly spoke at universities and enterprise companies.</p>



<h2><strong>Remote Working and Business Opportunity</strong></h2>



<p>The combination of a high workload and a daily three-hour-long commute made Mario�s life difficult. Many of his friends were still studying, traveling or unemployed. The blissful and calm lives they lived seemed like a fairy tale to him. And even while both his managers and his clients were abroad, he was unable to obtain permission to work remotely.&nbsp;</p>



<p>So Mario decided to leave his job and start freelancing full time. But he found he faced a massive challenge.&nbsp;</p>



<p>He discovered Java projects were pretty large and required an established team of people working together in an office. All job opportunities were on-site, and some even required relocation abroad. Certified Java programmers weren�t being hired on a remote basis.&nbsp;</p>



<p>As Mario had some PHP experience from previous jobs, he used this to start his freelance career. For his projects, he used both plain PHP and PHP frameworks like CakePHP and CodeIgniter.&nbsp;</p>



<p>For a while, Mario accepted work using commonly known platforms including Joomla, Drupal, and WordPress. In addition, he worked on PHP, Java, Python and some C# projects for a couple of years, after which he decided to switch to WordPress completely.</p>



<h2><strong>Building products</strong></h2>



<p>One of his projects involved a technically challenging charity backed by several international organizations. Unexpected shortages in the team put him in the technical lead position. As a result, Mario found himself planning the next phases, meeting with the client regularly, and renegotiating the terms. The team completed the project successfully, and after the launch, a TV campaign led millions of visitors to the website.</p>



<p>As a result of the successful launch, this client invited Mario to participate in more WordPress projects, including building a custom framework.</p>



<blockquote class=\"wp-block-quote\"><p><em>�I wasn�t that acquainted with WordPress back then. For me, a conventional person trained in architectural design patterns and best practices, WordPress seemed like an eccentric young hipster somewhere on the line between insane and genius at the same time. I had to spend a couple of months learning WordPress from the inside out.�</em></p><cite>Mario Peshev</cite></blockquote>



<p>As his interest in WordPress grew, Mario stopped delivering other custom platforms, and converted clients to WordPress.&nbsp;</p>



<h2><strong>European Community</strong></h2>



<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?fit=632%2C356&amp;ssl=1\" alt=\"Mario presenting to an audience\" class=\"wp-image-8546\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=2560&amp;ssl=1 2560w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1536%2C864&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=2048%2C1152&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Mario presenting at a WordCamp</figcaption></figure>



<p>For Mario, one of the key selling points of WordPress was the international openness. He had previously been involved with other open source communities, some of which were US-focused. He felt they were more reliant on meeting people in person. With events only taking place in the US, this made building relationships much harder for people living in other countries.</p>



<p>While the WordPress project started out in the US, the WordPress community quickly globalized. Dozens of WordCamps and hundreds of Meetup events take place around the globe every year.&nbsp; All of these events bring a wide variety of people sharing their enthusiasm for WordPress together.</p>



<p>For Mario, the birth of WordCamp Europe was something magical. The fact that hundreds, and later on thousands, of people from all over the world gathered around the topic of WordPress speaks for itself. Mario has been involved with organizing WordCamp Europe twice (in 2014 and 2015).&nbsp;</p>



<blockquote class=\"wp-block-quote\"><p><em>�There�s nothing like meeting WordPress enthusiasts and professionals from more than 50 countries brainstorming and working together at a WordCamp. You simply have to be there to understand how powerful it all is.�</em></p><cite>Mario Peshev</cite></blockquote>



<h2><strong>Growing businesses and teams</strong></h2>



<p>A key WordPress benefit is its popularity � an ever growing project currently powering <a href=\"https://w3techs.com/technologies/details/cm-wordpress\">more than 35% of the Internet [2020].</a> It�s popular enough to be a de facto standard for websites, platforms, e-commerce and blogs.&nbsp;</p>



<p>WordPress has a low barrier to entry. You can achieve a lot without being an expert, meaning most people can start gaining experience without having to spend years learning how to code. That also makes it easier to build businesses and teams.</p>



<blockquote class=\"wp-block-quote\"><p><em>�Being able to use a tool that is user-friendly, not overly complicated and easily extensible makes introducing it to team members faster and easier. It requires less time for adjustment, and as a result makes a team stronger and faster. The fact that this tool is cost-effective also allows more startups to enter the market. It requires&nbsp; less time and investments to launch an MVP. This boosts the entire ecosystem.�</em></p><cite>Mario Peshev</cite></blockquote>



<h2><strong>Helping Others</strong></h2>



<p>Mario also introduced WordPress to children and young people. He taught them how to use WordPress as a tool for homework and class assignments. By using WordPress, they were able to learn the basics of designing themes, developing plugins, marketing statistics, social media, copywriting, and so much more. This approachable introduction to the software meant technical skills were not needed.</p>



<p>He was also part of a team of volunteers who helped a group of young people living at a foster home struggling to provide for themselves. The team taught the basic digital literacy skills necessary in the modern workplace and potentially pay for their rent and basic needs. This included working with Microsoft Word, Excel and WordPress, as well as some basic design and marketing skills.�</p>



<blockquote class=\"wp-block-quote\"><p><em>�When you look at that from another perspective, a platform that could save lives &#8211; literally &#8211; and change the world for better is worth contributing to, in any possible manner.�</em></p><cite>Mario Peshev</cite></blockquote>



<h2><strong>Contributing to the WordPress community</strong></h2>



<p>From the core team to supporting and organizing WordCamps, Mario has long been an active contributor to the global WordPress project. He is passionate about the connections fostered by people who are involved in building both the WordPress software and the community around it.</p>



<blockquote class=\"wp-block-quote\"><p><em>�The WordPress community consists of people of all race and color, living all around the world, working as teachers, developers, bloggers, designers, business owners. Let�s work together to help each other. Let�s stick together and show&nbsp; the world WordPress can help make it a better place.�</em></p><cite>Mario Peshev</cite></blockquote>



<h2><strong>Contributors</strong></h2>



<p>Thanks to Alison Rothwell (<a href=\'https://profiles.wordpress.org/wpfiddlybits/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Abha Thakor (<a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>), Josepha Haden (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>) and Topher DeRosia (<a href=\'https://profiles.wordpress.org/topher1kenobe/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>topher1kenobe</a>). Thank you to Mario Peshev (<a href=\'https://profiles.wordpress.org/nofearinc/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nofearinc</a>) for sharing his #ContributorStory.</p>



<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?w=632&#038;ssl=1\" alt=\"HeroPress logo\" class=\"wp-image-8409\" data-recalc-dims=\"1\" /></figure></div>



<p><em>This post is based on�</em><a href=\"https://heropress.com/essays/wordpress-gave-perfect-identity/\"><em>an article originally published on HeroPress.com</em></a><em>, a community initiative created by�</em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>



<p><em>Meet more WordPress community members over at�</em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8536\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"
		
		
		
		
		
				
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/04/the-month-in-wordpress-march-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Apr 2020 12:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8532\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8588:\"
<p>The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, read on.&nbsp;</p>



<hr class=\"wp-block-separator\" />



<h2>WordPress 5.4 �Adderley�</h2>



<p>WordPress 5.4 �Adderley� <a href=\"https://wordpress.org/news/2020/03/adderley/\">was released on March 31</a> and includes a robust list of new blocks, enhancements, and new features for both users and developers. The primary focus areas of this release included the block editor, privacy, accessibility, and developer improvements, with the full list of enhancements covered in <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">the 5.4 field guide</a>.</p>



<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Releases of Gutenberg 7.7 and 7.8</h2>



<p>It�s been another busy month for Gutenberg, this time with the release of Gutenberg <a href=\"https://make.wordpress.org/core/2020/03/11/whats-new-in-gutenberg-11-march/\">7.7</a> and <a href=\"https://make.wordpress.org/core/2020/03/26/whats-new-in-gutenberg-25-march/\">7.8</a>. Gutenberg 7.7 introduced block patterns &#8211; predefined block layouts that are ready to use and tweak. This is an important step towards Full Site Editing, which is currently targeted for inclusion in WordPress 5.6. As a first iteration, you can pick and insert patterns from the Block Patterns UI, which has been added as a sidebar plugin.</p>



<p>Gutenberg 7.7 also includes a refresh of the Block UI, which better responds to the ways users interact with the editor. For more information on the User UI and Block Patterns, read <a href=\"https://make.wordpress.org/themes/2020/03/18/block-based-themes-meeting-notes/\">this summary of the most recent Block-Based Themes meeting</a>. Gutenberg 7.8, introduced on March 25, further enhanced this Block UI redesign. Both releases also included a suite of improvements, bug fixes, new APIs, documentation, and more!</p>



<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>WordCamp cancellations and shift to online events</h2>



<p>In early March, the Community team issued <a href=\"https://make.wordpress.org/community/2020/03/11/new-recommendations-for-event-organizers-in-light-of-covid-19/\">new recommendations for event organizers</a> in light of growing concerns around COVID-19. Following this guidance, and with COVID-19 declared a pandemic, WordPress community organizers reluctantly but responsibly <a href=\"https://make.wordpress.org/community/2020/03/12/latest-updates-on-changes-to-wordcamps/\">postponed or canceled their upcoming WordCamps</a> and meetups.</p>



<p>As community events are an important part of the WordPress open-source project, the Community team made suggestions for <a href=\"https://make.wordpress.org/community/2020/03/20/taking-charity-hackathons-online/\">taking charity hackathons online</a>, <a href=\"https://make.wordpress.org/community/2020/03/24/community-events-in-the-time-of-covid-19/\">proposed interim adjustments</a> to existing community event guidelines, and provided <a href=\"https://make.wordpress.org/community/2020/03/13/online-conference-organizer-training/\">training for online conference organizing</a> with Crowdcast. The team is currently working on building a <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Virtual Events Handbook</a> that will continue to support WordPress community organizers at this time.&nbsp;</p>



<p>Want to get involved with the WordPress Community team, host your own virtual WordPress event, or help improve the documentation for all of this? Follow <a href=\"https://make.wordpress.org/community/\">the Community team blog</a>, learn more about <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">virtual events</a>, and join the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Link your GitHub profile to WordPress.org</h2>



<p>Last month, <a href=\"https://make.wordpress.org/core/2020/02/21/working-on-trac-tickets-using-github-pull-requests/\">an experimental feature</a> was added to Trac, WordPress Core�s bug-tracking system, to improve collaboration between Trac and GitHub. This month, to help make tracking contributions to the WordPress project across multiple locations easier, there is <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">a new option</a> to connect your GitHub account to your WordPress.org profile. This connection allows for more accurate acknowledgement and recognition of contributors. You can connect your GitHub account to your WordPress.org account by editing your WordPress.org profile.</p>



<p>For more information and instructions on how to connect your accounts, <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">read the announcement post</a>.</p>



<h2>Modernizing WordPress coding standards</h2>



<p>Defined coding standards is an important step in creating the consistent codebase needed to prepare for requiring PHP 7.x for WordPress Core. As such, <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">coding standards have been proposed</a> for implementation in WordPress Coding Standards 3.0.0. This includes new proposed standards for namespace declarations, import use statements, fully qualified names in inline code, traits and interfaces, type declarations, declare statements/strict typing, the ::class constant, operators, and more.&nbsp;</p>



<p>Want to get involved or view the full list of currently proposed new coding standards? Visit and add your feedback to the post on <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">updating the Coding standards for modern PHP</a> and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>On March 16, <a href=\"https://make.wordpress.org/core/2020/03/18/auto-updates-feature-meeting-summary-march-17th-2020/\">Version 0.3 of the auto-updates feature was released</a>, including fixes to a number of issues and the introduction of email notifications.&nbsp;</li><li>WordCamp US announced that <a href=\"https://2020.us.wordcamp.org/2020/03/26/wcus-is-happening/\">the 2020 event will happen</a>, one way or another. But the team need your help to make sure that it�s another fantastic event. <a href=\"https://2020.us.wordcamp.org/2020/03/16/call-for-speakers-is-now-open/\">Consider applying to be a speaker</a>!</li><li>Speaking of WordCamp US, <a href=\"https://2020.us.wordcamp.org/2020/03/23/call-for-cities-for-wcus-2021-2022/\">the Call for Cities for WCUS 2021/2022</a> is now open. If your community is interested in being a future WCUS host, <a href=\"https://wordcampcentral.survey.fm/wcus-2021-2022\">apply today</a>!</li><li>With COVID-19 preventing in-person community events, the Diverse Speaker Training (#wpdiversity) Group encourages you to <a href=\"https://make.wordpress.org/community/2020/03/17/covid-19-and-the-diverse-speaker-training-wpdiversity-group/\">host a virtual Diverse Speaker Workshop</a> to prepare speakers for when we are able to meet in person again. To get started, <a href=\"https://tiny.cc/wpdiversity\">visit this page</a>.&nbsp;</li><li>An <a href=\"https://make.wordpress.org/updates/2020/03/06/update-progress-on-goals/\">update for progress on 2020 goals</a> has been posted, sharing some more defined targets and schedule.</li></ul>



<p><em>Have a story that we should include in the next �Month in WordPress� post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8532\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:58:\"
		
		
		
		
		
				
		

					
										
					
		
		

			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.4 �Adderley�\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wordpress.org/news/2020/03/adderley/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Mar 2020 19:04:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8455\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:255:\"Version 5.4 \"Adderley\" of WordPress is available for download or update in your WordPress dashboard. This version brings you more ways to make content come alive with your best images and helps make your vision real by putting blocks in the perfect place.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:45:\"https://s.w.org/images/core/5.4/textcolor.mp4\";s:6:\"length\";s:6:\"440616\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:54364:\"
<p class=\"has-text-color has-very-dark-gray-color\">Here it is! Named �Adderley� in honor of Nat Adderley, the latest and greatest version of WordPress is available for&nbsp;<a href=\"https://wordpress.org/download/\">download</a>&nbsp;or update in your dashboard.</p>



<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=632%2C632&#038;ssl=1\" alt=\"\" class=\"wp-image-8484\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1024%2C1024&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=300%2C300&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=768%2C768&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1536%2C1536&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=2048%2C2048&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>



<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#0400e0\"><div class=\"wp-block-cover__inner-container\">
<p style=\"font-size:32px\" class=\"has-text-align-center\"><strong>Say hello to more and better.</strong></p>



<p class=\"has-text-align-center has-medium-font-size\">More ways to make your pages come alive. With easier ways to get it all done and looking better than ever�and boosts in speed you can feel.</p>
</div></div>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<h2 class=\"has-text-align-left\"><strong>Welcome to WordPress 5.4</strong></h2>



<p style=\"font-size:15px\" class=\"has-text-align-left\"><strong>Every major release adds more to the block editor.</strong></p>



<p style=\"font-size:18px\">More ways to make posts and pages come alive with your best images. More ways to bring your visitors in, and keep them engaged, with the richness of embedded media from the web�s top services.</p>



<p style=\"font-size:18px\">More ways to make your vision real, and put blocks in the perfect place�even if a particular kind of block is new to you. More efficient processes.</p>



<p style=\"font-size:18px\">And more speed everywhere, so as you build sections or galleries, or just type in a line of prose, you can feel how much faster your work flows.</p>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8480\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>



<h3>Two new blocks. And better blocks overall.</h3>



<ul><li>Two brand-new blocks: Social Icons and Buttons make adding interactive features fast and easy.</li><li>New ways with color: Gradients in the Buttons and Cover block, toolbar access to color options in Rich Text blocks, and for the first time, color options in the Group and Columns blocks.</li><li>Guess a whole lot less! Version 5.4 streamlines the whole process for placing and replacing multimedia in every block. Now it works the same way in almost every block!</li><li>And if you�ve ever thought your image in the Media+Text block should link to something else�perhaps a picture of a brochure should download that brochure as a document? Well, now it can.</li></ul>



<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.4/textcolor.mp4\"></video></figure>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<h3>Cleaner UI, clearer navigation�and easier tabbing!</h3>



<ul><li>Clearer block navigation with block breadcrumbs. And easier selection once you get there.</li><li>For when you need to navigate with the keyboard, better tabbing and focus. Plus, you can tab over to the sidebar of nearly any block.</li><li>Speed! 14% faster loading of the editor, 51% faster time-to-type!</li><li>Tips are gone. In their place, a Welcome Guide window you can bring up when you need it�and only when you need it�again and again.</li><li>Know at a glance whether you�re in a block�s Edit or Navigation mode. Or, if you have restricted vision, your screen reader will tell you which mode you�re in.</li></ul>



<p style=\"background-color:#f8f8f9\" class=\"has-background\">Of course, if you want to work with the very latest tools and features, <strong><a href=\"https://wordpress.org/plugins/gutenberg/\">install the Gutenberg plugin</a></strong>. You�ll get to be the first to use new and exciting features in the block editor before anyone else has seen them!</p>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8481\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=2000&amp;ssl=1 2000w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>



<h3>Your fundamental right: privacy</h3>



<p>5.4 helps with a variety of privacy issues around the world. So when users and stakeholders ask about regulatory compliance, or how your team handles user data, the answers should be a lot easier to get right.</p>



<p>Take a look:</p>



<ul><li>Now personal data exports include users session information and users location data from the community events widget. Plus, a table of contents!</li><li>See progress as you process export and erasure requests through the privacy tools.</li><li>Plus, little enhancements throughout give the privacy tools a little cleaner look. Your eyes will thank you!</li></ul>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8482\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>



<h2><strong>Just for developers</strong></h2>



<h3>Add custom fields to menu items�natively</h3>



<p>Two new actions let you add custom fields to menu items�without a plugin and without writing custom walkers.</p>



<p>On the Menus admin screen, <code>wp_nav_menu_item_custom_fields</code> fires just before the move buttons of a nav menu item in the menu editor.</p>



<p>In the Customizer, <code>wp_nav_menu_item_custom_fields_customize_template</code> fires at the end of the menu-items form-fields template.</p>



<p>Check your code and see where these new actions can replace your custom code, and if you�re concerned about duplication, add a check for the WordPress version.</p>



<h3>Blocks! Simpler styling, new APIs and embeds</h3>



<ul><li>Radically simpler block styling. Negative margins and default padding are gone! Now you can style blocks the way you need them. And, a refactor got rid of four redundant wrapper divs.</li><li>If you build plugins, now you can register collections of your blocks by namespace across categories�a great way to get more brand visibility.</li><li>Let users do more with two new APIs: block variations and gradients.</li><li>In embeds, now the block editor supports TikTok�and CollegeHumor is gone.</li></ul>



<p style=\"background-color:#f8f8f9\" class=\"has-background\">There�s lots more for developers to love in WordPress 5.4. To discover more and learn how to make these changes shine on your sites, themes, plugins and more, check the <strong><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a></strong>.</p>



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<h2><strong>The Squad</strong></h2>



<p>This release was led by&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, and&nbsp;<a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. They were enthusiastically supported by a release squad:</p>



<ul><li><strong>Editor Tech</strong>: Jorge Filipe Costa (<strong><a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">@jorgefelipecosta</a></strong>)</li><li><strong>Editor Design</strong>: Mark Uraine (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/mapk/\"><strong>@mapk</strong></a>)</li><li><strong>Core Tech</strong>: Sergey Biryukov (<a href=\"https://profiles.wordpress.org/sergeybiryukov/\"><strong>@sergeybiryukov</strong></a>)</li><li><strong>Design</strong>: Tammie Lister (<strong><a href=\"https://profiles.wordpress.org/karmatosed/\">@karmatosed</a></strong>)</li><li><strong>Docs Coordinator</strong>:&nbsp;JB Audras (<a href=\"https://profiles.wordpress.org/audrasjb/\"><strong>@audrasjb</strong></a>)</li><li><strong>Docs &amp; Comms Wrangler</strong>: Mary Baum (<strong><a href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a></strong>)</li></ul>



<p>The squad was joined throughout the release cycle by <strong>552 generous volunteer contributors</strong> who collectively worked on <strong><a href=\"https://core.trac.wordpress.org/milestone/5.4\">361</a> tickets on Trac</strong> and <strong>1226 pull requests on GitHub</strong>.</p>



<p>Put on a Nat Adderley playlist, click that update button (or&nbsp;<a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>


<a href=\"https://profiles.wordpress.org/0v3rth3d4wn/\">0v3rth3d4wn</a>, <a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb/\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamboro/\">adamboro</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/shaikhaezaz80/\">Aezaz Shaikh</a>, <a href=\"https://profiles.wordpress.org/aftabmuni/\">Aftab Ali Muni</a>, <a href=\"https://profiles.wordpress.org/akibjorklund/\">Aki Bj&#246;rklund</a>, <a href=\"https://profiles.wordpress.org/smallprogrammers/\">Akib</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/akshayar/\">akshayar</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juh&#233; Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/viper007bond/\">Alex Mills</a>, <a href=\"https://profiles.wordpress.org/alexholsgrove/\">AlexHolsgrove</a>, <a href=\"https://profiles.wordpress.org/alexischenal/\">alexischenal</a>, <a href=\"https://profiles.wordpress.org/alextran/\">alextran</a>, <a href=\"https://profiles.wordpress.org/alishankhan/\">alishankhan</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/alpipego/\">alpipego</a>, <a href=\"https://profiles.wordpress.org/amirs17/\">Amir Seljubac</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>, <a href=\"https://profiles.wordpress.org/agawish/\">Amr Gawish</a>, <a href=\"https://profiles.wordpress.org/amykamala/\">Amy Kamala</a>, <a href=\"https://profiles.wordpress.org/anantajitjg/\">Anantajit JG</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Nor&#233;n</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andr&#233;s</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andreaitm/\">andreaitm</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aandrewdixon/\">Andrew Dixon</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>, <a href=\"https://profiles.wordpress.org/eatingrules/\">Andrew Wilder</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/paranoia1906/\">Anthony Ledesma</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/apermo/\">Apermo</a>, <a href=\"https://profiles.wordpress.org/apieschel/\">apieschel</a>, <a href=\"https://profiles.wordpress.org/aravindajith/\">Aravind Ajith</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/arenddeboer/\">arenddeboer</a>, <a href=\"https://profiles.wordpress.org/argentite/\">argentite</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/arnaudbroes/\">arnaudbroes</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/ashokrd2013/\">ashokrd2013</a>, <a href=\"https://profiles.wordpress.org/ataurr/\">Ataur R</a>, <a href=\"https://profiles.wordpress.org/ate-up-with-motor/\">Ate Up With Motor</a>, <a href=\"https://profiles.wordpress.org/autotutorial/\">autotutorial</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/bahia0019/\">bahia0019</a>, <a href=\"https://profiles.wordpress.org/b-07/\">Bappi</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bdcstr/\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/bengreeley/\">ben.greeley</a>, <a href=\"https://profiles.wordpress.org/benedictsinger/\">benedictsinger</a>, <a href=\"https://profiles.wordpress.org/bfintal/\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/bibliofille/\">bibliofille</a>, <a href=\"https://profiles.wordpress.org/bilgilabs/\">bilgilabs</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/skypressatx/\">BMO</a>, <a href=\"https://profiles.wordpress.org/boga86/\">Boga86</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bwmarkle/\">Brad Markle</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/ceyhun0/\">ceyhun0</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">Chetan Satasiya</a>, <a href=\"https://profiles.wordpress.org/chinteshprajapati/\">Chintesh Prajapati</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cklosows/\">Chris Klosowski</a>, <a href=\"https://profiles.wordpress.org/eclare/\">Chris Trynkiewicz (Sukces Strony)</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/christianamohr/\">Christiana Mohr</a>, <a href=\"https://profiles.wordpress.org/clayisland/\">clayisland</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/crdunst/\">crdunst</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/xendo/\">Dademaru</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">Dami�n Su�rez</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/daniloercoli/\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/darrenlambert/\">darrenlambert</a>, <a href=\"https://profiles.wordpress.org/davidshq/\">Dave Mackey</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">Dave Smith</a>, <a href=\"https://profiles.wordpress.org/daveslaughter/\">daveslaughter</a>, <a href=\"https://profiles.wordpress.org/davewp196/\">DaveWP196</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/superdav42/\">David Stone</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/dhavalkasvala/\">Dhaval kasavala</a>, <a href=\"https://profiles.wordpress.org/dhurlburtusa/\">dhurlburtusa</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dipeshkakadiya/\">dipeshkakadiya</a>, <a href=\"https://profiles.wordpress.org/djp424/\">djp424</a>, <a href=\"https://profiles.wordpress.org/dominic_ks/\">dominic_ks</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/dotancohen/\">Dotan Cohen</a>, <a href=\"https://profiles.wordpress.org/dphiffer/\">dphiffer</a>, <a href=\"https://profiles.wordpress.org/dragosh635/\">dragosh635</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eden159/\">eden159</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/disillusia/\">edmundcwm</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">Eduardo Toledo</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">Ellen Bauer</a>, <a href=\"https://profiles.wordpress.org/aliveic/\">Emil E</a>, <a href=\"https://profiles.wordpress.org/emlebrun/\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique S�nchez</a>, <a href=\"https://profiles.wordpress.org/equin0x80/\">equin0x80</a>, <a href=\"https://profiles.wordpress.org/erikkroes/\">erikkroes</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/fabifott/\">Fabian</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/fahimmurshed/\">Fahim Murshed</a>, <a href=\"https://profiles.wordpress.org/faisal03/\">Faisal Alvi</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/felipeloureirosantos/\">Felipe Santos</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fernandovbsouza/\">Fernando Souza</a>, <a href=\"https://profiles.wordpress.org/fervillz/\">fervillz</a>, <a href=\"https://profiles.wordpress.org/fgiannar/\">fgiannar</a>, <a href=\"https://profiles.wordpress.org/finomeno/\">finomeno</a>, <a href=\"https://profiles.wordpress.org/flaviozavan/\">flaviozavan</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/fotisps/\">Fotis Pastrakis</a>, <a href=\"https://profiles.wordpress.org/efarem/\">Frank Martin</a>, <a href=\"https://profiles.wordpress.org/gma992/\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garethgillman/\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/guddu1315/\">Gaurang Dabhi</a>, <a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/giorgio25b/\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/girishpanchal/\">Girish Panchal</a>, <a href=\"https://profiles.wordpress.org/glebkema/\">Gleb Kemarsky</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/grafruessel/\">grafruessel</a>, <a href=\"https://profiles.wordpress.org/gregrickaby/\">Greg Rickaby</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz Zi�?kowski</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/bordoni/\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hamedmoodi/\">hamedmoodi</a>, <a href=\"https://profiles.wordpress.org/hampzter/\">hAmpzter</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">happiryu</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/harry-milatz/\">Harry Milatz</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/h71/\">Hector F</a>, <a href=\"https://profiles.wordpress.org/helgatheviking/\">helgatheviking</a>, <a href=\"https://profiles.wordpress.org/henryholtgeerts/\">Henry Holtgeerts</a>, <a href=\"https://profiles.wordpress.org/imani3011/\">Himani Lotia</a>, <a href=\"https://profiles.wordpress.org/krynes/\">Hubert Kubiak</a>, <a href=\"https://profiles.wordpress.org/i3anaan/\">i3anaan</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianatkins/\">ianatkins</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/ideaboxcreations/\">IdeaBox Creations</a>, <a href=\"https://profiles.wordpress.org/shaampk1/\">Ihtisham Zahoor</a>, <a href=\"https://profiles.wordpress.org/intimez/\">intimez</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ispreview/\">ispreview</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">Jakub Binda</a>, <a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jameslnewell/\">jameslnewell</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/studiotwee/\">Jasper van der Meer</a>, <a href=\"https://profiles.wordpress.org/javiercasares/\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/jaydeep23290/\">jaydeep23290</a>, <a href=\"https://profiles.wordpress.org/jdy68/\">jdy68</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jblz/\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/phpbits/\">Jeffrey Carandang</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/miss_jwo/\">Jenny Wong</a>, <a href=\"https://profiles.wordpress.org/jepperask/\">jepperask</a>, <a href=\"https://profiles.wordpress.org/jeremyclarke/\">Jer Clarke</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">Jerry Jones</a>, <a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/jon81/\">Jon</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jg-visual/\">Jonathan Goldford</a>, <a href=\"https://profiles.wordpress.org/jonkolbert/\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joonasvanhatapio/\">Joonas Vanhatapio</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jqz/\">jqz</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/derweili/\">Julian Weiland</a>, <a href=\"https://profiles.wordpress.org/juliankimmig/\">julian.kimmig</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/nukaga/\">Junko Nukaga</a>, <a href=\"https://profiles.wordpress.org/jurgen/\">jurgen</a>, <a href=\"https://profiles.wordpress.org/justdaiv/\">justdaiv</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/kalpshit/\">KalpShit Akabari</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kennithnichol/\">Kennith Nichol</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/khushbu19/\">Khushbu Modi</a>, <a href=\"https://profiles.wordpress.org/killerbishop/\">killerbishop</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kkarpieszuk/\">kkarpieszuk</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kokkieh/\">KokkieH</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/klopez8/\">Krystyna</a>, <a href=\"https://profiles.wordpress.org/kthmd/\">KT</a>, <a href=\"https://profiles.wordpress.org/kubiq/\">kubiq</a>, <a href=\"https://profiles.wordpress.org/wpkuf/\">kuflievskiy</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kyliesabra/\">kyliesabra</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/leandroalonso/\">leandroalonso</a>, <a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>, <a href=\"https://profiles.wordpress.org/lgrev01/\">lgrev01</a>, <a href=\"https://profiles.wordpress.org/linuxologos/\">linuxologos</a>, <a href=\"https://profiles.wordpress.org/lisota/\">lisota</a>, <a href=\"https://profiles.wordpress.org/lorenzof/\">Lorenzo Fracassi</a>, <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a>, <a href=\"https://profiles.wordpress.org/luisrivera/\">luisrivera</a>, <a href=\"https://profiles.wordpress.org/lukaswaudentio/\">lukaswaudentio</a>, <a href=\"https://profiles.wordpress.org/ljasinskipl/\">Lukasz Jasinski</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/wodarekly/\">Lydia Wodarek</a>, <a href=\"https://profiles.wordpress.org/vinoth06/\">M A Vinoth Kumar</a>, <a href=\"https://profiles.wordpress.org/asif2bd/\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/maciejmackowiak/\">maciejmackowiak</a>, <a href=\"https://profiles.wordpress.org/mahesh901122/\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek D?di?</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/marius84/\">Marius84</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mmarzeotti/\">Mark Marzeotti</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/markusthiel/\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/hinjiriyo/\">Martin Stehle</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matstars/\">Mat Gargano</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/mattkeys/\">Matt Keys</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/mattnyeus/\">mattcursor</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">Matthew Kevins</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/mayanksonawat/\">mayanksonawat</a>, <a href=\"https://profiles.wordpress.org/mbrailer/\">mbrailer</a>, <a href=\"https://profiles.wordpress.org/mehidi258/\">Mehidi Hassan</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michaelecklund/\">Michael Ecklund</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">Michael Panaga</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle Schulp</a>, <a href=\"https://profiles.wordpress.org/mickaelperrin/\">mickaelperrin</a>, <a href=\"https://profiles.wordpress.org/miette49/\">miette49</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mmtr86/\">Miguel Torres</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel [WPLib Box project lead]</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikejdent/\">mikejdent</a>, <a href=\"https://profiles.wordpress.org/msaari/\">Mikko Saari</a>, <a href=\"https://profiles.wordpress.org/iihglobal/\">Milan Patel</a>, <a href=\"https://profiles.wordpress.org/gdragon/\">Milan Petrovic</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mircoraffinetti/\">mircoraffinetti</a>, <a href=\"https://profiles.wordpress.org/mislavjuric/\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/mjnewman/\">mjnewman</a>, <a href=\"https://profiles.wordpress.org/mlbrgl/\">mlbrgl</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/morganestes/\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mppfeiffer/\">mppfeiffer</a>, <a href=\"https://profiles.wordpress.org/mryoga/\">mryoga</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mujuonly/\">mujuonly</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nagoke/\">nagoke</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/finchps/\">Nate Finch</a>, <a href=\"https://profiles.wordpress.org/mukto90/\">Nazmul Ahsan</a>, <a href=\"https://profiles.wordpress.org/nekomajin/\">nekomajin</a>, <a href=\"https://profiles.wordpress.org/nextscripts/\">NextScripts</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nsundberg/\">Nicklas Sundberg</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicole2292/\">nicole2292</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi/\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/nikhilgupte/\">nikhilgupte</a>, <a href=\"https://profiles.wordpress.org/nilamacharya/\">nilamacharya</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/noyle/\">noyle</a>, <a href=\"https://profiles.wordpress.org/nsubugak/\">nsubugak</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/oldenburg/\">oldenburg</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/ottok/\">Otto Kek&#228;l&#228;inen</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/iaaxpage/\">page-carbajal</a>, <a href=\"https://profiles.wordpress.org/pagewidth/\">pagewidth</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/rixeo/\">Paul Kevin</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/pcarvalho/\">pcarvalho</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/perrywagle/\">perrywagle</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pierrelannoy/\">Pierre Lannoy</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/prashantvatsh/\">Prashant Singh</a>, <a href=\"https://profiles.wordpress.org/pratik-jain/\">Pratik Jain</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/priyankabehera155/\">Priyanka Behera</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/raamdev/\">Raam Dev</a>, <a href=\"https://profiles.wordpress.org/bamadesigner/\">Rachel Cherry</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ragnarokatz/\">ragnarokatz</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/raoulunger/\">raoulunger</a>, <a href=\"https://profiles.wordpress.org/razamalik/\">razamalik</a>, <a href=\"https://profiles.wordpress.org/remcotolsma/\">Remco Tolsma</a>, <a href=\"https://profiles.wordpress.org/rephotsirch/\">rephotsirch</a>, <a href=\"https://profiles.wordpress.org/rheinardkorf/\">rheinardkorf</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/quicoto/\">Ricard Torres</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/rimadoshi/\">rimadoshi</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rconde/\">Roi Conde</a>, <a href=\"https://profiles.wordpress.org/murgroland/\">Roland Murg</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Woln&#253;</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/kingkool68/\">Russell Heimlich</a>, <a href=\"https://profiles.wordpress.org/rryyaanndd/\">Ryan</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/looswebstudio/\">Ryo</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">S&#233;bastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">S&#248;ren Br&#248;nsted</a>, <a href=\"https://profiles.wordpress.org/sablednah/\">sablednah</a>, <a href=\"https://profiles.wordpress.org/samful/\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/viralsampat/\">Sampat Viral</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samuelfernandez/\">SamuelFernandez</a>, <a href=\"https://profiles.wordpress.org/zanderz/\">Sander</a>, <a href=\"https://profiles.wordpress.org/santilinwp/\">santilinwp</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/tivus/\">Schuhwerk</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/scvleon/\">scvleon</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/sgastard/\">sgastard</a>, <a href=\"https://profiles.wordpress.org/sgoen/\">sgoen</a>, <a href=\"https://profiles.wordpress.org/shahariaazam/\">Shaharia Azam</a>, <a href=\"https://profiles.wordpress.org/cafenoirdesign/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/shariqkhan2012/\">shariqkhan2012</a>, <a href=\"https://profiles.wordpress.org/sncoker/\">Shawntelle Coker</a>, <a href=\"https://profiles.wordpress.org/sheparddw/\">sheparddw</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shizumi/\">Shizumi Yoshiaki</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sirreal/\">sirreal</a>, <a href=\"https://profiles.wordpress.org/skarabeq/\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/socalchristina/\">socalchristina</a>, <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spenserhale/\">spenserhale</a>, <a href=\"https://profiles.wordpress.org/sproutchris/\">sproutchris</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/starvoters1/\">starvoters1</a>, <a href=\"https://profiles.wordpress.org/steelwagstaff/\">SteelWagstaff</a>, <a href=\"https://profiles.wordpress.org/steevithak/\">steevithak</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/steffanhalv/\">steffanhalv</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell/\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/matthias-reuter/\">straightvisions GmbH</a>, <a href=\"https://profiles.wordpress.org/stroona/\">stroona.com</a>, <a href=\"https://profiles.wordpress.org/subratamal/\">Subrata Mal</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/suzylah/\">suzylah</a>, <a href=\"https://profiles.wordpress.org/swapnild/\">swapnild</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">S�rgio Est�v�o</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/takeshifurusato/\">Takeshi Furusato</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>, <a href=\"https://profiles.wordpress.org/tbschen/\">TBschen</a>, <a href=\"https://profiles.wordpress.org/tdlewis77/\">tdlewis77</a>, <a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/thamaraiselvam/\">Thamaraiselvam</a>, <a href=\"https://profiles.wordpress.org/thefarlilacfield/\">thefarlilacfield</a>, <a href=\"https://profiles.wordpress.org/themezee/\">ThemeZee</a>, <a href=\"https://profiles.wordpress.org/timhavinga/\">Tim Havinga</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timon33/\">timon33</a>, <a href=\"https://profiles.wordpress.org/spaceshipone/\">Timoth&#233;e Brosille</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmanoilov/\">tmanoilov</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tomgreer/\">Tom Greer</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tommix/\">tommix</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, <a href=\"https://profiles.wordpress.org/tristangemus/\">tristangemus</a>, <a href=\"https://profiles.wordpress.org/tristanleboss/\">tristanleboss</a>, <a href=\"https://profiles.wordpress.org/tsuyoring/\">tsuyoring</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/upadalavipul/\">upadalavipul</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/varunshanbhag/\">Varun Shanbhag</a>, <a href=\"https://profiles.wordpress.org/veminom/\">Veminom</a>, <a href=\"https://profiles.wordpress.org/vinita29/\">Vinita Tandulkar</a>, <a href=\"https://profiles.wordpress.org/virgodesign/\">virgodesign</a>, <a href=\"https://profiles.wordpress.org/vsamoletov/\">Vlad. S.</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/waleedt93/\">waleedt93</a>, <a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/websupporter/\">websupporter</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">William Patton</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">wpgurudev</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/wptoolsdev/\">wptoolsdev</a>, <a href=\"https://profiles.wordpress.org/xedinunknown-1/\">xedinunknown-1</a>, <a href=\"https://profiles.wordpress.org/yale01/\">yale01</a>, <a href=\"https://profiles.wordpress.org/collet/\">Yannicki</a>, <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>, <a href=\"https://profiles.wordpress.org/yordansoares/\">Yordan Soares</a>, <a href=\"https://profiles.wordpress.org/yuhin/\">yuhin</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/zachflauaus/\">zachflauaus</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zaffarn/\">Zee</a>, and <a href=\"https://profiles.wordpress.org/zsusag/\">zsusag</a>.



<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>



<p>Many thanks to all of the community volunteers who contribute in the&nbsp;<a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>



<p>Finally, thanks to all the community translators who worked on WordPress 5.4. Their efforts bring WordPress fully translated to&nbsp;46 languages at release time, with more on the way.</p>



<p>If you want to learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8455\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"
		
		
		
		
		
				
		
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Mar 2020 00:47:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8451\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"The fifth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there�if you haven�t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the�WordPress Beta Tester�plugin (choose the �bleeding edge nightlies� option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2181:\"
<p><br>The fifth release candidate for WordPress 5.4 is live!</p>



<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there�if you haven�t tried 5.4 yet, now is the time!</p>



<p>You can test the WordPress 5.4 release candidate in two ways:</p>



<ul><li>Try the�<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>�plugin (choose the �bleeding edge nightlies� option)</li><li>Or�<a href=\"https://wordpress.org/wordpress-5.4-RC5.zip\">download the release candidate here</a>�(zip).</li></ul>



<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It�s your source for details on all the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you�ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We�d love to hear from you! If you�re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8451\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"
		
		
		
		
		
				
		
		

					
										
					
		
		
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Mar 2020 22:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8444\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The fourth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there�if you haven�t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the&#160;WordPress Beta Tester&#160;plugin (choose the �bleeding edge nightlies� option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2395:\"
<p>The fourth release candidate for WordPress 5.4 is live!</p>



<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there�if you haven�t tried 5.4 yet, now is the time!</p>



<p>You can test the WordPress 5.4 release candidate in two ways:</p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the �bleeding edge nightlies� option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC4.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>



<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>



<p>RC4 commits the new <a href=\"https://core.trac.wordpress.org/ticket/49295\">About page</a> and&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/49688\">updates the editor packages</a>.</p>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It&#8217;s your source for details on all the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you�ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We�d love to hear from you! If you�re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8444\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"
	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"
	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 14 Jun 2020 11:13:58 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"?\";s:13:\"last-modified\";s:29:\"Wed, 10 Jun 2020 22:52:20 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('160', '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1592176439', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('161', '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1592133239', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('158', '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1592176439', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('159', '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
	
	
	
	




















































\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: OpenJS World 2020 Conference Goes Virtual, Tickets Are Free: June 23�24\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100686\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:203:\"https://wptavern.com/openjs-world-2020-conference-goes-virtual-tickets-are-free-june-23-24?utm_source=rss&utm_medium=rss&utm_campaign=openjs-world-2020-conference-goes-virtual-tickets-are-free-june-23-24\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2607:\"<p>Like many tech conferences, <a href=\"https://events.linuxfoundation.org/openjs-world\">OpenJS World 2020</a> was forced to go virtual for its upcoming event scheduled for June 23-24, in Austin. The global conference was designed to be&nbsp;representative of all 32 <a href=\"https://openjsf.org/projects/\">projects</a> hosted with the OpenJS Foundation. This includes Node.js, webpack, jQuery, Mocha, ESLint, Lodash, Grunt, and other popular projects. The Foundation is also in the process of initiating AMP and Electron through an incubation process.</p>



<p>Prior to going virtual, regular attendee <a href=\"https://web.archive.org/web/20200403024640/https://events.linuxfoundation.org/openjs-world/register/\">ticket prices</a> for OpenJS World ranged from $350 (early bird) &ndash; $899 (late). Ordinarily, travel expenses and missed work can make conferences like this cost-prohibitive for some attendees whose employers don&rsquo;t sponsor their work travel. Now that the event has moved to be fully online, <a href=\"https://events.linuxfoundation.org/openjs-world/register/\">tickets are free</a> for all who want to attend.</p>



<p>OpenJS World gives developers the opportunity to connect with others across the JavaScript and web ecosystem while learning from a diverse, world-class lineup of speakers. The schedule spans a variety of topics, including JavaScript architectures and patterns, internationalization, diagnostics and debugging, infrastructure, IoT, and more.</p>



<p>Glitch CEO Anil Dash is one of 16 keynote speakers. He will be talking about JavaScript and its place in tech after 25 years, as well as how its community should be working together. NASA astronaut Christina Hammock Koch will also be a keynoting the event on June 24, at 9 AM CT. Koch served as a flight engineer on the International Space Station for multiple expeditions and holds the record for longest single spaceflight by a woman (328 days). The event also features keynote panels with engineers and executives responsible for deploying applications at a massive scale.</p>



<p>While the pandemic has rendered many people housebound, there are a lot of virtual events competing for your attention. Although these sessions are likely to be available on YouTube at some point in the future, there are a few distinct benefits of attending live: the opportunity to network with other attendees, engage in live speaker Q&amp;A sessions, and interact with sponsors.  For WordPress developers, it may be a convenient avenue for getting outside the WordPress bubble and connecting with others in the industry.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Jun 2020 22:52:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"WPTavern: Gutenberg 8.3 Updates Block Categories, Includes Parent Block Selector, and Adds New Design Controls\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100675\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:261:\"https://wptavern.com/gutenberg-8-3-updates-block-categories-includes-parent-block-selector-and-adds-new-design-controls?utm_source=rss&utm_medium=rss&utm_campaign=gutenberg-8-3-updates-block-categories-includes-parent-block-selector-and-adds-new-design-controls\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7470:\"<p class=\"has-drop-cap\">Yesterday, the Gutenberg team <a href=\"https://make.wordpress.org/core/2020/06/11/whats-new-in-gutenberg-11-june/\">released version 8.3</a> of the ongoing plugin behind the block editor. While much of the focus for the team is on the upcoming full-site editing, this update includes several user-facing features, such as a reorganized set of block categories, a parent block selector, a spacing control, and link color options.</p>



<p>One smaller enhancement includes the ability to <a href=\"https://github.com/WordPress/gutenberg/pull/16169\">filter the Latest Posts block by author</a>. The level control for the Heading block has also changed. Instead of selecting the level in the block options sidebar, the level selector is now <a href=\"https://github.com/WordPress/gutenberg/pull/20246\">located in the editor toolbar</a>.</p>



<p>In Gutenberg 8.2, hitting the <code>Enter</code> key within the caption field for an image block created a new paragraph. In 8.3, that feature has been <a href=\"https://github.com/WordPress/gutenberg/pull/22934\">extended to all blocks with captions</a>.</p>



<p>The team corrected over 20 bug fixes in the latest release. On the whole, the new plugin update appears to be solid after a day of use. However, some of the experimental additions, such as the new padding control, may be worth some concern. Theme authors need to start testing this, providing feedback, and making sure development is heading in the right direction.</p>



<h2>New Block Categories</h2>



<img />New &ldquo;Design&rdquo; category in the block inserter.



<p class=\"has-drop-cap\">The Gutenberg team has <a href=\"https://github.com/WordPress/gutenberg/pull/19279\">renamed and reorganized the block categories</a>. The new list seems to make more sense and is better consolidated into proper groups:</p>



<ul><li>Text</li><li>Media</li><li>Design</li><li>Widgets</li><li>Embeds</li></ul>



<p>While I am a fan of the new category names, I find the categories useless for any practical purpose at this point. Ever since Gutenberg dropped the tabbed interface in the block inserter, it has felt like a large wall of blocks. My eyes naturally skip by the category names as I scroll and scroll and scroll through the list of available blocks to find that particular block I need. I almost always use keyboard slash commands for inserting blocks. In those cases where I don&rsquo;t, it is not an ideal user experience, and the new categories do not help much.</p>



<h2>Select Parent Block</h2>



<img />Hovering over toolbar to find parent block selector.



<p class=\"has-drop-cap\">One of the more frustrating experiences in Gutenberg is attempting to select a parent block in a nested-block scenario. Far too often, users feel like they are clicking around at random in the hopes they hit that sweet spot where they can actually navigate to the block they need to edit. It is an exercise in frustration in the best moments.</p>



<p>The Gutenberg team took a step &mdash; <em>a small step</em> &mdash; toward alleviating this pain. When hovering over the &ldquo;change block type or style&rdquo; button in the editor toolbar, a new button appears to <a href=\"https://github.com/WordPress/gutenberg/pull/21056\">select the parent block</a>.</p>



<p>I am unsure if this is the right way of handling the problem. I would like to see some experiments with some sort of arrow button that appears without hovering. For now, I am satisfied that the team is attempting to solve the issue and hope that future iterations improve navigation within nested blocks.</p>



<p>This feature does not seem to work when the top toolbar mode is enabled. For those who use this mode, the best way to select a parent block is via the breadcrumb navigation at the bottom of the editor.</p>



<h2>Experimental Spacing/Padding Control</h2>



<img />Adding custom padding to a Cover block.



<p class=\"has-drop-cap\">Theme authors can now add support for an <a href=\"https://github.com/WordPress/gutenberg/pull/21492\">experimental padding control</a> via <code>add_theme_support( \'experimental-custom-spacing\' )</code>. When supported, the end-user will see a new Spacing tab under the block options sidebar for the Cover block, which should be available for other blocks in the future. By default, users can control the padding for all four sides of a block with a single value. They can also &ldquo;unlink&rdquo; the padding and control the top, bottom, left, and right values individually.</p>



<p>Presumably, the Gutenberg team will extend this spacing feature to include a margin control too. It would be the natural move and one in which I hope that leads to the death of the Spacer block that users have had to live with for the past couple of years.</p>



<p>However, I am not sold on allowing end-users to control padding with explicit values. Haphazardly changing padding values will break the vertical rhythm that many theme authors take the time to meticulously calculate. When using pixel values (the default), users will most certainly run into issues with tablet and mobile screen sizes. Essentially, it will create a complete mess of spacing.</p>



<p>I am not against the idea. I want it done right before this lands in WordPress. Theme authors should be able to register named classes that are handled via the stylesheet. This goes back to the idea of WordPress having a <a href=\"https://wptavern.com/themes-of-the-future-a-design-framework-and-a-master-theme\">design framework</a>. Create a set of utility classes for spacing (oh, hello, <a href=\"https://tailwindcss.com/docs/padding\">Tailwind</a>). Let theme authors define the spacing based on their design. Let users choose from those. Then, provide a custom option for those times where users want to take matters into their own hands. At that point, they have made an explicit decision to break away from the design flow the theme author has chosen.</p>



<h2>Link Colors</h2>



<img />Selecting a custom link color.



<p class=\"has-drop-cap\">One of the tougher hurdles theme authors have had to face when styling for the block editor is figuring out what to do with link colors when the user changes the background color of a block. Users have long had control of the text color in that scenario. However, link colors could quickly become inaccessible or just downright ugly. Forward-thinking theme authors would style those link colors so that they inherited the text color, but that is not always the ideal solution.</p>



<p>That&rsquo;s where <a href=\"https://github.com/WordPress/gutenberg/pull/22722\">user-controlled link colors</a> come in. To add support for custom link colors, theme authors must opt into the feature via <code>add_theme_support( \'experimental-link-color\' )</code>. This will add a new color selector for the Paragraph, Heading, Group, Columns, and Media &amp; Text blocks.</p>



<p>Unable to get this feature working with the theme-support function call, I had to dig into the code a bit to find the issue. For theme authors to add support for link colors, they should also define their default links as shown in the following CSS code snippet:</p>



<pre class=\"wp-block-code\"><code>a {
	color: var( --wp--style--color--link, #000 );
}</code></pre>



<p>WordPress will automatically set the <code>--wp--style--color--link</code> variable. For further specificity, theme authors can also target <code>.has-link-color a</code>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Jun 2020 20:36:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: AsBlocks Project Uses Gutenberg to Create a Collaborative Writing Environment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100653\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"https://wptavern.com/asblocks-project-uses-gutenberg-to-create-a-collaborative-writing-environment?utm_source=rss&utm_medium=rss&utm_campaign=asblocks-project-uses-gutenberg-to-create-a-collaborative-writing-environment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3206:\"<p>The Gutenberg team is currently immersed in bringing full-site editing capabilities to the block editor as part of Phase 2 in the project&rsquo;s longterm <a href=\"https://wordpress.org/about/roadmap/\">roadmap</a>. Meanwhile, Gutenberg engineer Riad Benguella has been experimenting with ideas for the collaboration features coming in Phase 3, which aims to deliver a more intuitive way to co-author content.</p>



<p>Today, Benguella unveiled a collaborative writing prototype called <a href=\"https://asblocks.com/\">AsBlocks</a> that is built using the Gutenberg editor. It is an example of the editor working outside of WordPress. AsBlocks provides an&nbsp;<a href=\"https://en.wikipedia.org/wiki/End-to-end_encryption\">end-to-end encrypted</a> writing environment that can be shared to other users with a link, while the server itself cannot decrypt the content. </p>



<p>In the video demo below you can see a user adds some content, clicks the share button, and is presented with an option to share a link for a live collaboration session (Write) or a link for read-only access (Read). The session is private and only users with the link can access the post. </p>



<div class=\"wp-block-embed__wrapper\">

</div>



<p>None of the content is automatically saved. If collaborators leave the page, all the content is gone but users have the option to save an encrypted version to the server by clicking the Save button. </p>



<p>AsBlocks supports ~30 blocks and the UI is very similar to working inside the WordPress editor. It even includes block settings in the sidebar. AsBlocks also has an optional dark mode. Check out the live demo at <a href=\"https://asblocks.com/\">asblocks.com</a>. </p>



<img />



<p>Benguella said he was inspired by&nbsp;<a href=\"https://excalidraw.com/\">excalidraw</a>, a collaborative drawing and diagram app. &nbsp;In the future, he plans to add the following features:</p>



<ul><li>Comments.</li><li>Live Chat.</li><li>Selection/Caret indicators.</li><li>Document outline, counts.</li><li>Local save button.</li><li>Local storage persistence.</li></ul>



<p>WordPress&rsquo; implementation of collaborating writing may not look exactly like this but AsBlocks is an interesting exploration of what is possible with the block editor. Although Benguella described it as his &ldquo;new side project&rdquo; in his Twitter announcement, his post clarified that AsBlocks is a prototype that was created as an exploration for future WordPress core capabilities.</p>



<p>&ldquo;AsBlocks&nbsp;is an important step in our journey to understand live-collaboration and bring it to Core,&rdquo; Benguella said. &ldquo;A WordPress plugin based on AsBlocks&rsquo; technology is also on the radar.&rdquo;</p>



<p>It will be a long road before something like AsBlocks could rival Google Docs and its vast array of features. But for something like collaborating on a page or blog post, AsBlocks provides a delightfully simple implementation that could give WordPress a major springboard into Gutenberg phase 3. The project is GPL-licensed and available on&nbsp;<a href=\"https://github.com/youknowriad/asblocks\">Github</a>, if you want to dig into the code or contribute.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Jun 2020 01:37:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Fake Ransomware Bitcoin Scam Claims �Your Site Has Been Hacked�\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100624\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"https://wptavern.com/fake-ransomware-bitcoin-scam-claims-your-site-has-been-hacked?utm_source=rss&utm_medium=rss&utm_campaign=fake-ransomware-bitcoin-scam-claims-your-site-has-been-hacked\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5272:\"<p>A fake ransomware scam is going around that targets website contact forms. It sends an email to the site owner with the subject &ldquo;Your Site Has Been Hacked.&rdquo; The body of the email claims the hackers have exploited a vulnerability to gain access to the site&rsquo;s database and &ldquo;move the information to an offshore server.&rdquo; The email threatens to ruin the site owner&rsquo;s reputation by selling the site&rsquo;s database, notifying customers that their information has been compromised, and de-indexing the site with search engines using blackhat techniques. </p>



<p>Within the past few weeks, website owners have reported having received this email on various support channels, including <a href=\"https://wordpress.org/support/topic/hacked-by-ransomware/\">WordPress.org</a>, <a href=\"https://stackoverflow.com/questions/62240267\">stackoverflow</a>, and <a href=\"https://www.reddit.com/r/webdev/comments/h06fjg/what_are_the_chances_that_i_just_got_hacked/\">reddit</a>. The sites in question have not been defaced, nor do they show any other evidence of tampering.</p>



<p>The <a href=\"https://www.bitcoinabuse.com/\">Bitcoin Abuse Database</a> has seen a surge of reports regarding this scam in May and June, logged under various Bitcoin addresses. The scammers send the email out indiscriminately, even targeting sites that do not have a database. So far the campaigns have not been very successful at convincing site owners to pay the ransom.</p>



<ul><li><a href=\"https://www.bitcoinabuse.com/reports/1DQ2F5YsTGSEgvAeJSgjydb5i4jvPKDBW1\">https://www.bitcoinabuse.com/reports/1DQ2F5YsTGSEgvAeJSgjydb5i4jvPKDBW1</a></li><li><a href=\"https://www.bitcoinabuse.com/reports/1Bs6CYDuHy1UGLr5ccz2UxRNcPGpeAa7tz\">https://www.bitcoinabuse.com/reports/1Bs6CYDuHy1UGLr5ccz2UxRNcPGpeAa7tz</a></li><li><a href=\"https://www.bitcoinabuse.com/reports/1Q1DF9rJS6fNDSpiV2iEA46BS1mNEaELtC\">https://www.bitcoinabuse.com/reports/1Q1DF9rJS6fNDSpiV2iEA46BS1mNEaELtC</a></li><li><a href=\"https://www.bitcoinabuse.com/reports/12KLZzgrNX2DvbWQM7yQ1V9vPwy9JPvUKM\">https://www.bitcoinabuse.com/reports/12KLZzgrNX2DvbWQM7yQ1V9vPwy9JPvUKM</a></li></ul>



<p>The Bitcoin Abuse Database advises visitors that extortion emails are 100% fake and those who receive them should not pay ransoms.</p>



<p>If you or one of your clients receive an email like this, rest assured that it is a scam that requires no action. If you want to be extra cautious you can change your passwords and use a security plugin to scan your files for changes. Otherwise, simply delete the email.</p>



<p>An example of this scam email is below for reference:</p>



<blockquote class=\"wp-block-quote\"><p>PLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!</p><p>We have hacked your website [website URL]&nbsp;and extracted your databases.</p><p>How did this happen?<br />Our team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.</p><p>What does this mean?</p><p>We will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your site&nbsp;[website URL]&nbsp;was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.</p><p>How do I stop this?</p><p>We are willing to refrain from destroying your site&rsquo;s reputation for a small fee. The current fee is $2000 USD in bitcoins (BTC).</p><p>Send the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):</p><p>12KLZzgrNX2DvbWQM7yQ1V9vPwy9JPvUKM</p><p>Once you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receiving this notice or the database leak, e-mails dispatched, and de-index of your site WILL start!</p><p>How do I get Bitcoins?</p><p>You can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. We suggest you&nbsp;<a rel=\"noreferrer noopener\" href=\"https://cex.io/\" target=\"_blank\">https://cex.io/</a>&nbsp;for buying bitcoins.</p><p>What if I don&rsquo;t pay?</p><p>If you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there&rsquo;s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.</p><p>This is not a hoax, do not reply to this email, don&rsquo;t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!</p><p>Please note that Bitcoin is anonymous and no one will find out that you have complied.</p></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 23:26:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: WP Caf� to Host Live Discussion on Gutenberg Theme Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100614\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:189:\"https://wptavern.com/wp-cafe-to-host-live-discussion-on-gutenberg-theme-development?utm_source=rss&utm_medium=rss&utm_campaign=wp-cafe-to-host-live-discussion-on-gutenberg-theme-development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3738:\"<p class=\"has-drop-cap\">Highrise Digital is set to host the first of a new video series under the banner of <a href=\"https://highrise.digital/wp-cafe/\">WP Caf&eacute;</a>. The first episode will begin at 11 am BST (10 am UTC) on June 11, which will be a discussion on building WordPress themes in the new era of the block editor.</p>



<p>Highrise Digital is a UK-based agency that focuses on building WordPress sites for post-small, pre-enterprises businesses. The goal for the new video series is to hold live discussions with other professionals on the &ldquo;challenges, solutions, and ideas&rdquo; of developing on top of WordPress. Mark Wilkinson, the company&rsquo;s co-founder, will be hosting the inaugural event.</p>



<p>The first episode is titled &ldquo;Developing Themes With Gutenberg (IRL).&rdquo; The following developers will be joining Wilkinson on the panel:</p>



<ul><li><strong>Ben Gillbanks:</strong> Co-owner of Pro Theme Design and co-writer of the MasterWP newsletter.</li><li><strong>Diane Wallace:</strong> Freelance web developer recently hired by BrightTALK for Gutenberg-related work.</li><li><strong>Michael Bragg:</strong> Senior Developer and Studio Manager at EDGE Creative.</li><li><strong>Keith Devon:</strong> Co-founder and front-end developer at Highrise Digital.</li></ul>



<p>To stay updated with the first event and those to come later, subscribe to the company&rsquo;s <a href=\"https://www.youtube.com/channel/UCPYDDL8LWtXx_WmTY7rMRXg\">YouTube channel</a>. You can watch the first show when it airs via the following video:</p>



<div class=\"wp-block-embed__wrapper\">

</div>



<p>On June 1, Devon put out a call for questions the panel should discuss. A single request came from Ross Wintle. &ldquo;I feel like Gutenberg is a moving target,&rdquo; he <a href=\"https://twitter.com/magicroundabout/status/1267741780486873089\">tweeted</a>. &ldquo;If I develop a theme today, it could look very different from a theme I develop next year. So if I&rsquo;m developing a custom theme today, which bits of Gutenberg are &lsquo;safe&rsquo; to use?&rdquo;</p>



<p>The volatile nature of developing themes against the block editor is a frustration that many theme authors have shared. We have discussed it when covering <a href=\"https://wptavern.com/where-gutenberg-went-wrong-theme-developer-edition\">where Gutenberg went wrong</a> for theme authors. It is an issue that Carolina Nymark is facing while building her <a href=\"https://wptavern.com/begin-prepping-for-full-site-editing-with-new-course-on-block-based-themes\">full-site editing course</a>. It is unlikely the panel can provide a perfect answer to the question. However, given their experience, they may be able to offer some insight into how they are handling theme development in a rapidly changing environment.</p>



<p>Along with the proposed guest question, the WP Caf&eacute; webpage officially lists the following topics of discussion:</p>



<ul><li>What are the biggest challenges when building themes with Gutenberg?</li><li>What opportunities does Gutenberg offer to theme developers?</li><li>How much should we customize the back-end?</li><li>Are you building custom blocks? How?</li><li>How are your clients getting on with the block editor?</li></ul>



<p>Ideally, the answers to those questions should focus on two time periods: today and six months down the road. My hope is the panel can provide some answers to other theme authors on how to hop on the Gutenberg train now and help push them to stay on track in the next six months or year.</p>



<p>If nothing else, these are the types of discussions the theme author community needs to be holding. It is nice to see experienced developers diving into them.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 19:59:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WordPress.org blog: WordPress 5.4.2 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8592\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2020/06/wordpress-5-4-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6813:\"<p>WordPress 5.4.2 is now available!</p>



<p>This security and maintenance release features 23 fixes and enhancements. Plus, it adds a number of security fixes�see the list below.</p>



<p>These bugs affect WordPress versions 5.4.1 and earlier; version 5.4.2 fixes them, so you�ll want to upgrade.</p>



<p>If you haven�t yet updated to 5.4, there are also updated versions of 5.3 and earlier that fix the bugs for you.</p>



<h3><strong>Security Updates</strong></h3>



<p>WordPress versions 5.4 and earlier are affected by the following bugs, which are fixed in version 5.4.2. If you haven�t yet updated to 5.4, there are also updated versions of 5.3 and earlier that fix the security issues.</p>



<ul><li>Props to Sam Thomas (jazzy2fives) for finding an XSS issue where authenticated users with low privileges are able to add JavaScript to posts in the block editor.</li><li>Props to Luigi &#8211; (<a href=\"https://www.gubello.me/\">gubello.me</a>) for discovering an XSS issue where authenticated users with upload permissions are able to add JavaScript to media files.</li><li>Props to Ben Bidner of the WordPress Security Team for finding an open redirect issue in <em>wp_validate_redirect()</em>.</li><li>Props to <a href=\"http://apapedulimu.click\">Nrimo Ing Pandum</a> for finding an authenticated XSS issue via theme uploads.</li><li>Props to <a href=\"https://blog.ripstech.com/authors/simon-scannell\">Simon Scannell of RIPS Technologies</a> for finding an issue where <em>set-screen-option</em> can be misused by plugins leading to privilege escalation.</li><li>Props to <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a> for discovering an issue where comments from password-protected posts and pages could be displayed under certain conditions.</li></ul>



<p>Thank you to all of the reporters for&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>



<p>One maintenance update was also deployed to versions 5.1, 5.2 and 5.3. See the <a href=\"https://make.wordpress.org/core/2020/06/09/wordpress-5-4-2-prevent-unmoderated-comments-from-search-engine-indexation/\">related developer note</a> for more information.</p>



<p>You can browse the&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&resolution=fixed&milestone=5.4.2&order=priority\">full list of changes on Trac</a>.</p>



<p>For more info, browse the full list of changes on Trac or check out the Version&nbsp;<a href=\"https://wordpress.org/support/wordpress-version/version-5-4-2/\">5.4.2 documentation page</a>.</p>



<p>WordPress 5.4.2 is a short-cycle maintenance release. The next major release will be&nbsp;<a href=\"https://make.wordpress.org/core/5-5/\">version 5.5</a>.</p>



<p>You can download WordPress 5.4.2 from the button at the top of this page, or visit your<strong>&nbsp;Dashboard ? Updates</strong>&nbsp;and click&nbsp;<strong>Update Now</strong>.</p>



<p>If you have sites that support automatic background updates, they�ve already started the update process.</p>



<h3>Thanks and props!</h3>



<p>In addition to the security researchers mentioned above, thank you to everyone who helped make WordPress 5.4.2 happen:</p>



<p><a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/argentite\">argentite</a>, <a href=\"https://profiles.wordpress.org/asif2bd\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bdcstr\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/delowardev\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/dhrrob\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/donmhico\">donmhico</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/emlebrun\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/finomeno\">finomeno</a>, <a href=\"https://profiles.wordpress.org/garethgillman\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/giorgio25b\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/h71\">Hector F</a>, <a href=\"https://profiles.wordpress.org/ianbelanger\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/imath\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/javiercasares\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/jonkolbert\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/kjellr\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kthmd\">KT</a>, <a href=\"https://profiles.wordpress.org/markusthiel\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mislavjuric\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/oakesjosh\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/passoniate\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/poena\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sabernhardt\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/samful\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skarabeq\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/skithund\">Toni Viemer�</a>, <a href=\"https://profiles.wordpress.org/suzylah\">suzylah</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/utz119\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a> and <a href=\"https://profiles.wordpress.org/yuhin\">yuhin</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 19:19:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"HeroPress: How Contributing To WordPress Empowers Me\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3177\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:156:\"https://heropress.com/essays/how-contributing-to-wordpress-empowers-me/#utm_source=rss&utm_medium=rss&utm_campaign=how-contributing-to-wordpress-empowers-me\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10436:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/061020-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The people in WordPress have been so encouraging and are always there to cheer me on.\" /><p>One of my favorite WordPress memories is standing in line to register at WordCamp London 2018. Upon saying my first name, no one looked surprised or asked me to say that again, please? Where I live, in the Netherlands, Siobhan is definitely not a common name. Also, the pronunciation is quite different from the spelling. For most languages obviously, I�m guessing in Irish it makes sense! This really gave me a welcoming feeling. At this event, I wasn�t going to be spending time explaining my name. Although I love my name, explaining it does get a bit old sometimes.</p>
<p>To me, this feels like a metaphor for the WordPress community. I�ve always felt very welcome without having to explain myself, or pretend to be someone different. Disclaimer: I do realize not everyone does, but this is me sharing my personal experiences. I understand that I come from a place of privilege. Not in the least by being employed by Yoast, a company that takes contributing to WordPress very seriously. I get to allocate part of my hours to contributing, which is a luxury. I also literally have lunch with a lot of knowledgeable people that can provide context when I don�t understand something, or share their opinions when I ask.</p>
<p>On the other hand, working for a company well-known within WordPress, has also felt like a possible pitfall. For a long time, I have felt the need to prove myself. To show that I�m capable of getting somewhere on my own merits, not just because I have a magenta hoodie.</p>
<h3>Reaching Out</h3>
<p>So at my first contributor day, I purposely joined a team that none of my coworkers were in. The WordPress marketing team. This makes sense anyway, as my regular job is in social media marketing. I joined the marketing team on Slack, as they weren�t physically at this WordCamp. At the time, I didn�t have one of the super recognizable Yoast avatars. I just dove in, read up on the team and the work they did, and asked some questions. To be honest, I found it hard at first to actually get to work, as I was lacking context.</p>
<p>After attending a few Slack meetings, I felt bold enough to take on the meeting notes. It�s a relatively easy job that doesn�t feel meaningful (it is, though!), but I loved having made my first contribution. The team was so welcoming and took the time to acknowledge me and the work I�d done. That motivated me to ask if there was any project or task I could join. Things moved quickly from there. I wrote a piece of content and got some very useful feedback from a native English speaker. They didn�t just correct my text, they explained what they�d change and why. I try to do the same now, as it makes so much sense. I still learn a lot every time I get feedback from someone in the team. Over the next months, I kind of accidentally led a few marketing tables at contributor days. I remembered how I�d struggled myself, so I enjoyed on-boarding people and getting them excited about the team. After a while, the team reps asked me to join them. Such an honor!</p>
<h3>Understanding What Worked</h3>
<p>All it took for me to join the team was taking that first step. Speaking up and just saying �hey, I�m here, what can I do?�. The team didn�t ask for any references of my work, or need to know who I was. I felt trusted, and that made me want to deliver the best work I could. Of course, after a while, I actually got to meet the people in real life. And if you�ve ever been at a WordCamp that Yoast attended, you probably know we take branding seriously. You won�t see me there without my Yoast shirt or hoodie! I�m proud to work for such a company and I get to meet a lot of awesome people because of it. But that also meant, people now couldn�t not know that I am part of Team Yoast.</p>
<p>Being recognizable definitely made it easier for me to move within the community. We have a lovely community team at Yoast that took the effort of introducing me to a lot of people. That helped me meet people outside of the marketing team, which has proven to be pretty valuable for my work within the team as well. So, a lot of perks come from the company I work for. What I�m trying to get at though, is that I feel that other contributors appreciate me for who I am. For my work, my knowledge, my commitment, my personality. I�d like to believe that even though my day job has made it a lot easier for me to find my place within WordPress, a large part of it is down to my own strengths.</p>
<p>When our founder, Joost, became marketing lead at WordPress, we worked together regularly. As team rep for the marketing team, I had experience within the team and already knew the people. Some people out there were only noticing the marketing team for the first time then. Sometimes when I spoke to people, I realized they assumed I�d gotten my position as team rep through Joost. They didn�t know I�d already been a team rep for at least a year. This annoyed me, but it also motivated me to show them this wasn�t the case. I enjoyed working on this with Joost, but I also made sure to keep doing my own thing. I�m currently on maternity leave, but I�m looking forward to returning to the team in a few weeks!</p>
<h3>The Value Of Being On A WordPress Team</h3>
<p>The greatest learning experience I�m having within WordPress, lies within being a team rep. I learn so much from working closely with the other reps, who come from around the world and from all kinds of jobs and companies. I learn to see different points of view, and take things into account that I�d never have thought of myself. I learn to communicate with people from all types of jobs and cultures. I learn a lot about themes I didn�t know of before, like inclusiveness, and accessibility. All of this helps me grow as a person and as a professional. And the other way around: I get to use skills and knowledge I�ve learned at Yoast to help empower the team.</p>
<p>I love the combination of my regular job and the work I do in WordPress. Both teach me different things as the job, the people, the context, the means of communication, basically everything, is different. It�s definitely a win-win situation for me. I also take pride in what I�ve done for myself, by taking opportunities and making the most of them. I�ve been running international meetings, getting up on stage, spoken during an online event, leading discussions on- and offline, and so on. The people in WordPress have been so encouraging and are always there to cheer me on.</p>
<h3>Lifelong Friendships</h3>
<p>And another thing: valuable friendships have come from it. During WordCamps, I love to spend the evenings having a drink with other attendees. I�ve met such diverse people and have had the most interesting conversations, way outside of my own bubble at home. And more recently, Abha and Yvette (two of the other team reps) were even going to come visit me at home, to meet my newborn baby girl! Unfortunately, COVID-19 put a stop to that.</p>
<p>Finding my way within the WordPress community, being backed by Yoast, helps me develop myself in several ways. It�s making me take steps and do things I never thought I would. I hope to make my company proud, and I�m proving to myself that I have skills to bring to the table. I�m not just at the table because of where I work.</p>
<p>Of course, I still feel overwhelmed sometimes, or like I�m just not getting it. But I know we�re a team, and I can ask for help. I got to where I am today, by just diving in and making myself known. Taking that step back then has brought me a lot. I�d be happy if my story inspires someone to do the same. Anyone can contribute, it doesn�t matter where you�re from or where you work. At all times, a lot is happening and contributors are working hard. They might not notice you, but that doesn�t mean they don�t care. Reach out, introduce yourself, you never know where it�ll take you!</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How Contributing To WordPress Empowers Me\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20Contributing%20To%20WordPress%20Empowers%20Me&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-contributing-to-wordpress-empowers-me%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How Contributing To WordPress Empowers Me\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-contributing-to-wordpress-empowers-me%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-contributing-to-wordpress-empowers-me%2F&title=How+Contributing+To+WordPress+Empowers+Me\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How Contributing To WordPress Empowers Me\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/how-contributing-to-wordpress-empowers-me/&media=https://heropress.com/wp-content/uploads/2020/06/061020-min-150x150.jpg&description=How Contributing To WordPress Empowers Me\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How Contributing To WordPress Empowers Me\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/how-contributing-to-wordpress-empowers-me/\" title=\"How Contributing To WordPress Empowers Me\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/how-contributing-to-wordpress-empowers-me/\">How Contributing To WordPress Empowers Me</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 06:00:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Siobhan Cunningham\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WPTavern: PHP Marks 25 Years\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/php-marks-25-years?utm_source=rss&utm_medium=rss&utm_campaign=php-marks-25-years\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4157:\"<p>This week the web is celebrating 25 years since Rasmus Lerdorf released version 1.0 of his&nbsp;&ldquo;Personal Home Page Tools (PHP Tools).&rdquo; PHP is now used by <a href=\"https://w3techs.com/technologies/details/pl-php\">78.9%</a> of all the websites whose server-side programming language W3Techs can detect. (This includes sites in the Alexa top 10 million or in the Tranco top 1 million list.) WordPress makes up a large portion of these sites (<a href=\"https://w3techs.com/technologies/details/cm-wordpress\">37.3% of websites</a>), but many popular sites like Facebook, Wikipedia, and Yahoo, still use PHP in some form.</p>



<p>Although PHP may not be the most fashionable programming language, it is still dominating the web, albeit on a slow decline. It may have already hit its peak usage at 80.6% in January 2015, but PHP keeps getting faster and better with each release. </p>



<div class=\"wp-block-image\"><img /></div>



<p>In a 2017 interview on the <a href=\"https://mappingthejourney.com/single-post/2017/12/01/episode-14-interview-with-matt-mullenweg-founder-of-wordpress/\">Mapping the Journey podcast</a>, Matt Mullenweg explained some of the reasons he was first attracted to PHP. </p>



<p>&ldquo;PHP is amazing in its ubiquity,&rdquo; he said. &ldquo;Part of the reason I switched to it from Perl and Python and other things that I wrote early on, is&hellip;its integration with Apache web servers, which is so darn easy. You didn&rsquo;t have to mess with file permissions and everything else in the same way, and then every web host supporting it also makes distribution easy.&rdquo;</p>



<p>The ease of finding hosting for PHP-based sites is one of the contributing factors to its large marketshare among server-side languages. Mullenweg said he appreciated how PHP and MySQL provided a platform on which people could easily run WordPress from anywhere in the world.</p>



<p>&ldquo;Even to this day, even though a lot of Automattic&rsquo;s work is now in Go, Node, or JavaScript or different things, it&rsquo;s still nothing beats PHP for its server-side scalability and distribution,&rdquo; Mullenweg said. &ldquo;So, we still plan for the server side of WordPress to be in PHP for the foreseeable future.&rdquo; </p>



<p>Mullenweg reaffirmed his dedication to PHP during a <a href=\"https://wptavern.com/matt-mullenwegs-summer-update-at-wordcamp-europe-2019-gutenbergs-progress-and-a-preview-of-upcoming-features\">Q&amp;A session at WordCamp Europe in 2019</a>. When he was asked how he plans to balance chasing the new and shiny with all of WordPress&rsquo; existing legacy APIs, he said, &ldquo;PHP is going to be crucial to us for many years to come.&rdquo;</p>



<p>Although WordPress site owners have historically been slow to adopt newer versions of PHP, the Site Health infrastructure that was put in place last year has brought greater awareness to users about the importance of upgrading. The PHP update instructions, along with better protection for fatal errors, makes it easier than ever for users to contact their hosts about getting on newer versions.</p>



<p><a href=\"https://github.com/jrfnl\">Juliette Reinders Folmer</a>, a prolific contributor to a number of widely used, PHP-based open source projects, including WordPress, wrote a short tribute to the programming language on the <a href=\"https://make.wordpress.org/core/2020/06/08/happy-25th-birthday-php/\">make.wordpress.org/core</a> blog on its 25th birthday.</p>



<p>&ldquo;PHP&nbsp;has evolved hugely, with the Zend Engine seeing the light in PHP 4, much improved support for object-oriented programming being added in PHP 5, and huge performance improvements being gained with the rewritten engine in PHP 7,&rdquo; Reinders Folmer said.</p>



<p>&ldquo;By now, PHP is a fully featured programming language and developers are eagerly looking forward to the&nbsp;release&nbsp;of PHP 8, expected towards the end of this year.</p>



<p>&ldquo;The WordPress community owes a massive debt of gratitude to PHP, so please join me in thanking all the developers behind PHP and in wishing PHP a happy birthday and many happy returns!&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Jun 2020 00:16:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Begin Prepping for Full-Site Editing With New Course on Block-Based Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100349\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:213:\"https://wptavern.com/begin-prepping-for-full-site-editing-with-new-course-on-block-based-themes?utm_source=rss&utm_medium=rss&utm_campaign=begin-prepping-for-full-site-editing-with-new-course-on-block-based-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8723:\"<p class=\"has-drop-cap\">Full-site editing is a mere half a year away from becoming a reality. The feature is expected to land in WordPress 5.6, scheduled for release in December. To prepare theme authors for this upcoming change, Carolina Nymark has created a new website and training course, aptly titled <a href=\"https://fullsiteediting.com/\">Full Site Editing</a>.</p>



<p>Nymark has been a long-time theme author and contributor to the WordPress Themes Team. She has been a team lead or representative for several years and is one of the leaders behind the push for more accessibility-ready themes.</p>



<p>There are two major roadblocks that theme authors face right now. The first is that full-site editing is still in an experimental phase. The second is that there is not enough documentation, tutorials, and courses that do deep dives into this evolution of theming for WordPress. At least for the latter issue, Nymark has enough experience to do something about it, which is exactly what this new undertaking is all about.</p>



<p>After losing her job due to COVID-19, she wanted to use her free time to contribute back to the block editor. &ldquo;At the same time, people around me started asking questions about full-site editing, and with the testing that I had done, I knew how to get started,&rdquo; she said. &ldquo;If I could share that, I could ease the process for others.&rdquo;</p>



<p>Her representative role with the Themes Team also provided a unique insight into the uphill battle that theme authors would be facing. Nymark said she felt a sense of urgency with full-site editing looming ahead. &ldquo;I only see a very small portion of the ecosystem &mdash; the WordPress themes that are submitted to be included in the WordPress theme directory; but most of the themes I see do not take advantage of blocks,&rdquo; she said. &ldquo;The themes do not style blocks, and the editor does not match the front. We as theme authors have not adapted fast enough to the block editor, and now there is another big change coming in six months.&rdquo;</p>



<p>The course is available for free to everyone right now. However, that may not always be the case. Nymark is <a href=\"https://fullsiteediting.com/sponsors/\">seeking sponsorship</a> from people within the WordPress community. The idea is that they could fund the ongoing development of the course. If there is not enough sponsorship money available, she will need to turn it into a paid course. If that happens, she said the plan would be to go with a one-time fee model. Because of the frequent updates to full-site editing she wants customers to have access to the updated course material.</p>



<p>Developers who have a working knowledge of theme development are the primary audience for the course. Before anyone dives in, they should understand WordPress functions, PHP, HTML, and CSS.</p>



<h2>What&rsquo;s in the Course?</h2>



<img />Welcome lesson for the full-site editing course.



<p class=\"has-drop-cap\">Currently, the course is unfinished. That is no surprise as the site editor is still half a year away from inclusion in WordPress. However, it does take theme authors through some of the basics they need to be familiar with before taking the next steps. The site also has an open forum that anyone can join and begin discussions on building themes from blocks.</p>



<p>The course is broken down into the following sections, each with its own lessons:</p>



<ul><li>Introduction</li><li>All About Blocks</li><li>Block-Based Themes</li><li>Site Editor</li></ul>



<p>Most lessons have a short video between two and five minutes. Nymark provides full transcripts of the videos for users who prefer to read. Along with the video and transcript, some lessons have downloadable material, such as code examples. At this time, there is only a single quiz for the &ldquo;All About Blocks&rdquo; part of the course.</p>



<p>Right now, the course covers only the basics. For theme authors who have already stepped into block-based themes, they might find some of the intro material to be a bit too low-level. However, they should expect more advanced topics going forward. For theme authors who have yet to dive into the block system, now would be a prime opportunity to catch up and begin prepping for the next phase of theme development.</p>



<p>Nymark is ready to add more content to the course soon, but it is an ongoing challenge staying on top of things at this point. &ldquo;I have recorded content that I cannot use because of how fast the block editor changes, but that was expected,&rdquo; she said. &ldquo;My biggest concern is that I don&rsquo;t want to spread misinformation, and that is difficult in this early stage.&rdquo;</p>



<p>On the roadmap are example themes and slides that others can download and use for presentations during WordPress meetups. She is also building a parser that will create an improved block reference for theme authors to use in their templates.</p>



<h2>The Road Traveled</h2>



<p class=\"has-drop-cap\">There is a learning curve, even for someone as experienced as Nymark. She said it is still hard to picture how the template system will work when all is said and done. Because things are changing, it is an educational process as she builds out the course to teach others.</p>



<p>&ldquo;The biggest confusion for me when I started was how the templates and template parts were saved,&rdquo; she said. &ldquo;When you edit and save a template in the site editor, it is saved as a custom post type, and that template will be used instead of the file that you have in the theme. Currently, if you change themes, the block structure that you have saved in the template is used, but it is styled by the new theme. This is why it is so important that theme authors style and test blocks.&rdquo;</p>



<p>For theming, particularly one-page sites or blogs, the structure of the theme is likely to be much simpler than what we see today. Nymark said the new system, while under active development, still feels familiar enough to make the transition from traditional themes easy. The big difference is between making fewer decisions regarding custom JavaScript and PHP with more work toward design.</p>



<p>&ldquo;The downside to this is that, in the beginning, I think we will see less variations in the themes,&rdquo; she said. &ldquo;Once the first excitement over playing with new toys passes, this might feel limiting. Block patterns will play a major role and I am looking forward to using them soon.&rdquo;</p>



<p>For theme authors who are dipping their toes into the full-site-editing waters for the first time, she suggests starting by recreating headers, footers, and other small sections as block patterns. It is enough to get your feet wet without diving in headfirst.</p>



<p>Her second recommended step is to start thinking about how to convert customizer options to the block system. For example, when thinking about the various header options that many themes have, it may be worth creating block patterns to expose those user choices through the full-site editor.</p>



<h2>The Road Ahead</h2>



<p class=\"has-drop-cap\">Nymark identified several areas that need to be addressed going forward, namely documentation. &ldquo;The general lack of documentation is a problem, not only for full-site editing but for the entire Gutenberg project,&rdquo; she said. &ldquo;It makes it difficult for people to learn and contribute.&rdquo;</p>



<p>One key feature she would like to see is the ability for theme authors to lock templates to keep users from accidentally removing critical blocks that provide functionality to their websites.</p>



<p>She also listed several necessary components that are under development by the Gutenberg team but are not ready yet:</p>



<ul><li>Selecting and creating template parts in the site editor.</li><li>Finalizing the global styles feature.</li><li>Updating existing full-site editing blocks with more controls.</li><li>Creating new blocks for remaining template tags.</li><li>Improving the Navigation block so that it is responsive.</li></ul>



<p>There is still a lot of work to be done and many questions are still in the air. However, there is hope for a brighter future as WordPress moves toward a common design language through blocks.</p>



<p>&ldquo;It will be easier for designers to create layouts without concern for the code,&rdquo; said Nymark, &ldquo;and once templates can be exported it will also be easier to share those layouts as themes. The barrier of entry will be moved; it will be easy to create a basic theme, but it may be more difficult to create complete solutions for users.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Jun 2020 19:16:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Matt Mullenweg and Mat�as Ventura Demo New Image Editing Tools Coming to Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100467\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://wptavern.com/matt-mullenweg-and-matias-ventura-demo-new-image-editing-tools-coming-to-gutenberg?utm_source=rss&utm_medium=rss&utm_campaign=matt-mullenweg-and-matias-ventura-demo-new-image-editing-tools-coming-to-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2865:\"<p>One of the most exciting parts of Matt Mullenweg&rsquo;s session at WordCamp Europe 2020 Online was the live demo of the new image editing tools that will land in the next release of the Gutenberg plugin. The video is already available on WordPress.tv (and embedded below). At the 8:30 mark, Mullenweg and Mat&iacute;as Ventura, lead architect of the Gutenberg project, unveil a collection of the latest block editor improvements.</p>



<div class=\"wp-block-embed__wrapper\">

</div>



<p>The six-minute demo shows a handful of new features that are coming in WordPress 5.5, which is scheduled for release in August. These include more polished interactions, copying and pasting blocks, block patterns, and new design tools for the cover block. </p>



<p>Ventura also highlighted the team&rsquo;s progress on <a href=\"https://github.com/WordPress/gutenberg/pull/21024\">adding rich image editing capabilities to Gutenberg</a>. </p>



<div class=\"wp-block-image\"><img /></div>



<p>These new tools allow users to easily rotate, flip, and crop the image inside the block. Cropping with zoom mode (shown in the image below), is particularly useful with the live preview showing the results in context of the rest of the content on the page. </p>



<p>The current iteration only allows for&nbsp;cropping with fixed aspect ratios but contributors are working on <a href=\"https://github.com/WordPress/gutenberg/issues/22582\">adding free-form crop</a> to the lineup. They are also discussing refinements such as <a href=\"https://github.com/WordPress/gutenberg/issues/22573\">adding snackbar notices</a> and queuing up image edits to only <a href=\"https://github.com/WordPress/gutenberg/issues/22579\">apply once all edits are complete</a>.</p>



<p>In the past, WordPress users have frequently had to seek out alternative applications to perform quick image edits, taking them outside of the content editor and interrupting their workflow. With the new inline image editing tools in place, most simple edits can now be handled by the image block, making WordPress a more compelling place for writing content.</p>



<div class=\"wp-block-image\"><img />image credit: <a href=\"https://github.com/WordPress/gutenberg/pull/21024\">Gutenberg GitHub Repository</a></div>



<p>Ventura confirmed that these tools change the source image &ndash; they do not not just apply CSS changes. He also said the API for image editing will be available in other parts of the editor. The Gutenberg team is working on making the tools more extensible so developers can add things like image filters. </p>



<p>Contributors are hoping the new image editing tools will be ready for inclusion in WordPress 5.5. Users who want to test them ahead of the release can install the <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg plugin</a> and watch for the upcoming 8.3 update.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Jun 2020 21:13:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Build Versatile Layouts with the GenerateBlocks WordPress Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99069\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:193:\"https://wptavern.com/build-versatile-layouts-with-the-generateblocks-wordpress-plugin?utm_source=rss&utm_medium=rss&utm_campaign=build-versatile-layouts-with-the-generateblocks-wordpress-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6675:\"<p class=\"has-drop-cap\">Over the past few weeks, I have had the <a href=\"https://wordpress.org/plugins/generateblocks/\">GenerateBlocks</a> plugin sitting in my test environment. I have built a few layouts with it, tinkering with the plugin between other projects. The one thing I kept thinking was that it had huge potential. Aside from a couple of issues, I began enjoying the plugin more and more as I played around with its options.</p>



<p><a href=\"https://generateblocks.com/\">GenerateBlocks</a> was created by Tom Usborne. It was built specifically to work along with his popular <a href=\"https://wordpress.org/themes/generatepress/\">GeneratePress</a> theme. However, the plugin claims to work with any WordPress theme.</p>



<p>GenerateBlocks is meant to be the block answer to the <a href=\"https://wptavern.com/will-page-builders-remain-competitive-in-the-block-era\">page builder question</a>. It is meant to take those elements that make page builders so popular and boil them down to a handful of blocks. It is meant to simplify the process of building complex layouts without the need for heavier solutions. The question is whether it holds up &mdash; does it do the job it set out to do?</p>



<p>Overall, it works well, particularly in terms of giving more freedom with layout building. It will not likely eat into the market share of page builders any time soon. However, it may make for a few more converts to the block editor, especially with those who are not tied into an existing solution and are looking for something lightweight.</p>



<p>Watch a quick video on how GenerateBlocks works:</p>



<div class=\"wp-block-embed__wrapper\">
<div class=\"embed-vimeo\"></div>
</div>



<h2>The Plugin&rsquo;s Blocks</h2>



<img />Using each of the GenerateBlocks plugin&rsquo;s blocks in a section.



<p class=\"has-drop-cap\">GenerateBlocks&rsquo; bread and butter is its Container block. It is the WordPress Cover and Group blocks rolled into one with a gluttonous amount of additional options that cover nearly every need.</p>



<p>The one major area that the Container block falls short is with handling full-width sections. Instead of taking advantage of the standard full-width block alignment option that all themes can opt into, it goes with a custom solution. That solution is to provide a notice that the user&rsquo;s theme must have some sort of full-width content option (likely via a page template). By choosing this route it means the majority of themes, including those built to style blocks, will not support the GenerateBlocks Container block when set to full width.</p>



<p>For end-users who are using a theme that supports the standard full-width block alignment, there are two tricks to bypass this limitation. The first solution is to enter <code>alignfull</code> into the CSS Classes field under the Advanced block options tab. The second solution is to wrap the Container block with the WordPress Group block and set it to full width. How these solutions work out will largely depend on how the theme handles those elements.</p>



<p>With all the flexibility of GenerateBlocks, this would be the reason that I would not recommend the plugin to users who want full-width layouts. The two tricks are not an ideal user experience. In design, the most important thing is for the user to not have to think. The provided solution should simply work.</p>



<p>If we gave that single element of the plugin a one-star rating, everything else would be an easy five stars.</p>



<p>The plugin&rsquo;s four blocks can easily replace several other blocks. Instead of creating a library of dozens of one-off blocks, GenerateBlocks adds versatility without going overboard. It is easy to see why users have given it a perfect five-star rating (out of its current 34 reviews).</p>



<p>In total, the plugin adds four blocks to the editor:</p>



<ul><li>Container</li><li>Grid</li><li>Headline</li><li>Buttons</li></ul>



<p>Admittedly, I am partial to Automattic&rsquo;s <a href=\"https://wordpress.org/plugins/layout-grid/\">Layout Grid</a> plugin, primarily because I prefer the visualization of the grid in the background. It puts me at ease. However, the Grid block in GenerateBlocks runs a close second. In practice, it is more flexible, providing more layout options out of the box and fine-grained control. For those who need greater control over column widths and a host of color, typography, background, and spacing options, GenerateBlocks is a no-brainer.</p>



<img />Inserting a new Grid block in the editor.



<p>The Headline and Buttons blocks are essentially recreations of the core Heading and Buttons blocks with all the options that make this plugin useful. Plus, the blocks have an extra icon option, which allows users to choose between entering custom SVG code or selecting from a predefined list of general and social icons. This is a nice touch that I would like to see in core WordPress.</p>



<p>The thing that makes the four plugin blocks so flexible is the bounty of block options. For every block, you will find most of the following options tabs with numerous fields under each:</p>



<ul><li>Typography</li><li>Spacing</li><li>Colors</li><li>Background Image</li><li>Background Gradient</li><li>Advanced (extra options for the core tab)</li><li>Icon</li></ul>



<p>The plugin also provides options based on desktop, tablet, and mobile modes. This allows end-users to make changes based on the screen size of the website visitor.</p>



<p>If I had one other nit-pick about the plugin it would be that its color options do not take advantage of the theme-defined color palette. For design consistency, it would be nice to be able to use those without using a color picker or entering the hex code. <strong>Update:</strong> <em>there is a &ldquo;Show Color Palette&rdquo; button that does this, but it was not apparent that it would provide access to my theme colors.</em></p>



<h2>Final Thoughts</h2>



<p><em>Would I recommend the plugin?</em> Absolutely.</p>



<p>I would make sure to note the full-width Container block issue with that recommendation. If you are using this with a theme other than GeneratePress, you will need to have a solution for handling full-width sections. For me, this is the most vital piece of what is essentially a layout builder, and it failed to live up to that expectation.</p>



<p>However, one issue does not discount the usefulness of what the developer has built. It is a solid plugin. Under the hood, it is a well-coded and documented piece of software. I have no doubt that it will be serving many more users in the years to come and will only continue to improve.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Jun 2020 20:40:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.org blog: Equity and the Power of Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8590\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/06/equity-and-the-power-of-community/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2533:\"<p>Over the past week, I�ve been thinking a lot about George Floyd, Breonna Taylor, and Ahmaud Arbery. I have been thinking about white supremacy, the injustice that Black women and men are standing up against across the world, and all the injustices I can�t know, and don�t see.&nbsp;</p>



<p>The WordPress mission is to democratize publishing, and to me, that has always meant more than the freedom to express yourself. Democratizing publishing means giving voices to the voiceless and amplifying those speaking out against injustice. It means learning things that we otherwise wouldn�t. To me, it means that every voice has the ability to be heard, regardless of race, wealth, power, and opportunity. WordPress is a portal to commerce; it is a canvas for identity, and a catalyst for change.</p>



<p>While WordPress as an open source project may not be capable of refactoring unjust judicial systems or overwriting structural inequality, this does not mean that we, the WordPress community, are powerless. WordPress can&#8217;t dismantle white supremacy, but the WordPress community can invest in underrepresented groups (whose experiences cannot be substituted for) and hire them equitably. WordPress can&#8217;t eradicate prejudice, but the WordPress community can hold space for marginalized voices in our community.</p>



<p>There is a lot of racial, societal, and systemic injustice to fight. At times, change may seem impossible, and certainly, it�s been too slow. But I know in my heart that the WordPress community is capable of changing the world.�</p>



<p>If you would like to learn more about how to make a difference in your own community, here are a few resources I�ve gathered from WordPressers just like you.</p>



<ul><li><a href=\"https://href.li/?http://www.socialjusticetoolbox.com/\">Social Justice Toolbox</a></li><li><a href=\"http://antiracismforbeginners.com/\">Anti-racism resource list</a></li><li>An open source <a href=\"https://guidetoallyship.com/\">Guide to Allyship</a></li><li><a href=\"https://allienimmons.com/how-to-be-a-wordpress-ally/\">How to be a WordPress Ally</a></li><li><a href=\"https://www.highsnobiety.com/p/black-lives-matter-europe/\">Supporting Black Lives Matter in Europe</a></li><li><a href=\"https://feminisminindia.com/2019/06/03/colourism-fairness-india/\">Cost of Colourism in India</a>�</li><li><a href=\"https://www.ted.com/talks/verna_myers_how_to_overcome_our_biases_walk_boldly_toward_them?language=en\">Overcoming Biases by Walking Toward Them</a>�</li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 06 Jun 2020 17:59:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WPTavern: On Politics and WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100468\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"https://wptavern.com/on-politics-and-wordpress?utm_source=rss&utm_medium=rss&utm_campaign=on-politics-and-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5844:\"<p>I wish we lived in a world in which we could discuss code each day, not allowing political<sup><a href=\"https://wptavern.com/feed#footnote-1\">1</a></sup> opinions to seep into the discourse. We could talk about the next exciting project around the corner. We could chat about a small startup getting its first big break or new investments into WordPress companies.</p>



<p>However, I also wish we lived in a world where a developer did not have to <a href=\"https://wptavern.com/the-show-must-be-paused\">create a plugin in support of black Americans</a> who have lost their lives to those charged with protecting us.</p>



<p>I wish we lived in a world where we had no unsavory comments to delete on a post about an <a href=\"https://wptavern.com/wordpress-names-5-5-release-leads-plans-all-women-release-squad-for-5-6\">all-women WordPress release squad</a>.</p>



<p>I wish we lived in a world where WordPress.com had no <a href=\"https://wptavern.com/wordpress-com-boots-sandy-hook-conspiracy-theory-sites-bans-malicious-publication-of-unauthorized-images-of-minors\">Sandy Hook conspiracy theory</a> blogs to boot from its platform.</p>



<p>I wish we lived in a world where major restaurant chains <a href=\"https://wptavern.com/u-s-supreme-court-denies-dominos-appeal-to-determine-whether-websites-must-be-accessible\">complied with accessibility laws</a> without being sued.</p>



<p>I wish we lived in a world where <a href=\"https://wptavern.com/chilean-news-publication-el-soberano-first-to-launch-on-newspack\">Newspack-run Chilean publication El Soberano</a> had no need to defend citizens&rsquo; rights.</p>



<p>I wish we lived in a world where the <a href=\"https://wptavern.com/women-in-tech-salary-transparency-project-addressing-the-gender-pay-gap\">Women in Tech Salary Transparency Project</a> was unnecessary.</p>



<p>I wish we lived in a world where governments did not <a href=\"https://wptavern.com/china-blocks-gravatar-and-wordpress-com-how-to-adjust-wordpress-settings\">block its citizens from viewing websites</a> that support freedom of speech.</p>



<p>Each of these stories may not be important to you as an individual reader. However, they are important to some of our readers. We are a community made up of vastly different opinions, and we must represent this wide array of views as they relate to WordPress.</p>



<p>Sometimes, we will publish stories that do not jive with your personal viewpoint. Sometimes, you will tell us to not post anything political. The answer to that is that we cannot simply separate the code from the politics. As much as many of us would like to, that is not the world we live in today.</p>



<p>WordPress itself is inherently political. From its license to its mission statement, WordPress takes some political stances.</p>



<p>The platform is founded on the bedrock of free software, an idea that is as much political as anything else. It is an idea that has shaped the foundation of the web. The concept that users have the freedom to run, copy, alter, improve, or even distribute software is a political statement. It is a political statement in direct defiance of major corporations and governments controlling software through proprietary licenses.</p>



<p>Politics play a part in how we shape our community. We do not have to agree on all things, and different things brought us together. However, there are some foundational elements that we all must agree on to some extent.</p>



<p>It is a generally accepted principle that all people are born with the inalienable right to free expression. I wager that the majority of our community would agree with this statement. Given that the software we all use is built upon that idea, I would hope so. The idea of democratizing publishing is not just about providing a tool to people who can already freely express themselves. It is also about reaching to the dark corners of the globe and being a beacon of light to those who do not share in our freedom. It is about exposing the horrors of dictators. About newsrooms publishing the wrongdoings of politicians. Citizen bloggers fighting for the oppressed.</p>



<p>No, do not tell me that WordPress is not political.</p>



<p>What you really want to say is to not post political views that you disagree with. You really want us to not share plugins or projects that make you uncomfortable.</p>



<p>While the code itself may not hold political views, the people who use the code do. Politics is woven into the fabric of our lives. It is woven into the licenses of the software we use, the communities we choose to join, and the web we dare to create.</p>



<p>When you tell us to stay away from politics here at the Tavern, the only reasonable answer to provide is that it would be impossible to do so.</p>



<p>We will continue writing about the next companies to receive VC funding, blocked-based WordPress themes, plugins that push the envelope, and every other project that makes WordPress fun. However, at times, we must open the floor to tough discussions. We must be a source for sharing projects in our community that have their own political slant, regardless of whether we agree.</p>



<p>When the day comes that The Show Must Be Paused plugin, the Women in Tech Salary Transparency Project, and a multitude of other important projects no longer need to exist &mdash; on that day &mdash; we can celebrate. We can discuss code, WordPress, and kittens without politics getting in the way.</p>



<hr class=\"wp-block-separator\" />



<ol><li id=\"footnote-1\">The term &ldquo;political&rdquo; is being used in this post in the common vernacular, which more broadly encompasses social, human rights, and political issues. It is the terminology used in those comments which prompted this article. I am merely meeting such comments on the same turf.</li></ol>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Jun 2020 20:39:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Matt: Follow-up Questions from WCEU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=51661\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2020/06/wceu-questions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:841:\"<p><a href=\"https://matiasventura.com/\">Matias</a> and I just finished up the discussion and Q&amp;A for the <a href=\"https://2020.europe.wordcamp.org/\">online WordCamp Europe</a> that is going on right now, which was originally happening in <a href=\"https://photomatt.tumblr.com/post/620102267223343104/me-partially-camouflaged-in-porto-portugal-last\">Porto</a>.</p>



<p>As soon as the recording video is up I&#8217;ll put it right here.</p>



<p>There were more good questions than we had time to get to, so at the end I suggested that we continue the conversation here, in the comments section! Comments are the best part of blogging.</p>



<p>So if you have a question we didn&#8217;t get to, please drop it below. If you <a href=\"https://en.gravatar.com/\">don&#8217;t have a Gravatar yet now&#8217;s a good time to make one</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Jun 2020 18:39:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WPTavern: WordCamp Europe 2020 Online Draws 8,600 Registered Attendees, Following Record-Breaking Contributor Day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100426\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:267:\"https://wptavern.com/wordcamp-europe-2020-online-draws-8600-registered-attendees-following-record-breaking-contributor-day?utm_source=rss&utm_medium=rss&utm_campaign=wordcamp-europe-2020-online-draws-8600-registered-attendees-following-record-breaking-contributor-day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6445:\"<p><a href=\"https://2020.europe.wordcamp.org/\">WordCamp Europe 2020 Online</a> kicked off yesterday with a record-breaking contributor day. More than 2,500 people signed up to participate. The pandemic may have forced the event to go virtual but an enthusiastic flock of contributors, both seasoned and brand new, joined from their homes to carry on supporting the open source project that connects them.</p>



<p>&ldquo;The world is literally on fire, but today I am focusing on WordPress,&rdquo; Francesca Marano <a href=\"https://twitter.com/FrancescaMarano/status/1268534015360892930\">said</a>. &ldquo;WCEU contributor day is on. I am literally crying in my living room: so many familiar faces, so many new faces. Missing people and also feeling this is a huge opportunity.&rdquo;</p>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Missing anything happening around <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> was never an option! Everything ready for <a href=\"https://twitter.com/WCEurope?ref_src=twsrc%5Etfw\">@WCEurope</a>!<br /><br />How does your setup look like? &#129488; <a href=\"https://t.co/7FHQZvSgRz\">pic.twitter.com/7FHQZvSgRz</a></p>&mdash; Milan Ivanovi&#263; #WCEU (@lanche86) <a href=\"https://twitter.com/lanche86/status/1268471900537225216?ref_src=twsrc%5Etfw\">June 4, 2020</a></blockquote>
</div>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">This is what online emceeing looks like! <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> behind one of the many scenes <a href=\"https://t.co/CxjDEZz3jW\">pic.twitter.com/CxjDEZz3jW</a></p>&mdash; Monique Dubbelman (@mdubbelm) <a href=\"https://twitter.com/mdubbelm/status/1268896835176972293?ref_src=twsrc%5Etfw\">June 5, 2020</a></blockquote>
</div>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">First-time contributing to <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> at <a href=\"https://twitter.com/WCEurope?ref_src=twsrc%5Etfw\">@WCEurope</a> <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> <a href=\"https://twitter.com/hashtag/WCEUFamilyPhoto?src=hash&ref_src=twsrc%5Etfw\">#WCEUFamilyPhoto</a> <a href=\"https://t.co/7Y9lEVUnFw\">pic.twitter.com/7Y9lEVUnFw</a></p>&mdash; Fabian Todt (@gaambo_no5) <a href=\"https://twitter.com/gaambo_no5/status/1268573715152998400?ref_src=twsrc%5Etfw\">June 4, 2020</a></blockquote>
</div>



<p>Representatives from 16 Make.WordPress.org teams coordinated contributors for a productive day. Organizers tweeted out progress reports on a variety of initiatives:  </p>



<ul><li> The CLI team had a very successful day: they merged 46 pull-requests, as well as restructuring the handbook on the WordPress content side.</li><li>The Meta team updated the Cookie Policy page, created a new ticket about unexpected redirects, and worked on a WordCamp.org ticket.</li><li>The Training team made several enhancements to the lesson plan &ldquo;Setting Up E-Commerce&rdquo; including a new slide presentation.</li><li>The Polyglots team is making headway in Italian and French localization: 4 plugins translated and 2 new PTEs (Project Translation Editor Request).</li><li>WPTV is having a great time and discussing improvements for outreach, documentation, and possible project status tools. They have also been sharing some great ideas for tutorials on the various video editing tools for future implementation.</li><li>The Marketing team is working on a number of guides to help the community in topics like podcasting and live streaming.</li><li>The Hosting Team has implemented a new contribution process and is working on a new Hosting Handbook.</li><li>The Core team has committed 4 patches and propped 10 different individuals on those commits.</li></ul>



<p>An astounding 8,600 people from 138 countries registered to participate in WCEU online. Opening remarks kicked off day 1 of talks with a poignant and timely reminder of how WordPress publishing can amplify voices that may not otherwise be heard. </p>



<p>The music attendees are hearing throughout the event was written by designer Angel de Franganillo.</p>



<p>&ldquo;When WCEU asked me to make the tune, it was a bit challenging since I only play piano for fun and I&rsquo;m not a professional,&rdquo; de Franganillo said. &ldquo;I usually work with graphics, so I just follow the process I&rsquo;d use for a graphics project, but with an audio piece.</p>



<p>&ldquo;After some research and talks with WCEU, my main goals were:&nbsp;<em>Tech</em>,&nbsp;<em>Europe</em>, and&nbsp;<em>Community</em>. So I sat down in front of my piano to play some chords that suited those concepts and made a loop with them. Later, I looked for some synths to dress the loop and finish the piece.&rdquo;</p>



<p>Attendees are also <a href=\"https://2020.europe.wordcamp.org/2020/06/01/wceu-family-photo/\">sharing selfies</a> using the #WCEUFamilyPhoto hashtag on  social networks. Organizers are gathering these to create a giant WCEU &ldquo;family photo&rdquo; collage.</p>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Hey <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> Friends &#128075;&#127996;<br /><br />Connecting <a href=\"https://twitter.com/wceu?ref_src=twsrc%5Etfw\">@WCEU</a> Family Virtually &#129303;<br /><br />Happy to be part of <a href=\"https://twitter.com/hashtag/WCEUFamilyPhoto?src=hash&ref_src=twsrc%5Etfw\">#WCEUFamilyPhoto</a> &#128525; <a href=\"https://t.co/iqY0Bg8pEw\">pic.twitter.com/iqY0Bg8pEw</a></p>&mdash; Chetan Prajapati &#9446; (@iamchetanp) <a href=\"https://twitter.com/iamchetanp/status/1268593596883599360?ref_src=twsrc%5Etfw\">June 4, 2020</a></blockquote>
</div>



<p>If you did not register in time for WordCamp Europe, you can still <a href=\"https://2020.europe.wordcamp.org/how-to-attend/\">watch live</a> by visiting the site and clicking on any of the tracks to join the broadcast on YouTube. Registered ticket holders have access to exclusive Zoom rooms dedicated to networking with speakers and other attendees, watching sponsors&rsquo; presentations, and visiting <a href=\"https://2020.europe.wordcamp.org/sponsors-area/#virtual-booths\">sponsors&rsquo; virtual booths</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Jun 2020 16:36:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Blockify the WordPress Dashboard with the Mission Ctrl Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100419\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"https://wptavern.com/blockify-the-wordpress-dashboard-with-the-mission-ctrl-plugin?utm_source=rss&utm_medium=rss&utm_campaign=blockify-the-wordpress-dashboard-with-the-mission-ctrl-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5644:\"<p class=\"has-drop-cap\">Nick Hamze makes it no secret that he loves the WordPress block system. He has spearheaded several <a href=\"https://wptavern.com/the-wacky-world-of-sorta-brilliants-sorta-fun-block-plugins\">unique blocks on the fun side of things</a> as well as made more practical blocks through his <a href=\"https://sortabrilliant.com/\">Sorta Brilliant</a> brand. It is his website for funding ideas for the block editor. For his most recent project, he has taken blocks outside of the post-editing screen, and this project is, well, <em>sorta brilliant</em> too.</p>



<p><a href=\"https://missionctrl.is/\">Mission Ctrl</a> is a WordPress plugin that <em>blockifies</em> the WordPress dashboard screen. The plugin allows users, developers, agencies, or even hosts set up the dashboard with custom widgets (called boards) that are built through the block editor.</p>



<p>It is just brilliant enough to make me ask myself why I did not think of the idea first.</p>



<p>It is also low-hanging fruit that took little code to accomplish. Hamze said his mission is to get blocks everywhere in WordPress. The dashboard was a logical place to begin. &ldquo;When I start a new site, I change my permalinks and hide all the dashboard widgets, which is sad, and I knew blocks could fix it,&rdquo; he said.</p>



<p>I would wager that many other WordPress users are in the same boat. The dashboard is essentially a dead-end screen that we all have to live with. Few developers have put much time and effort into revitalizing this admin screen that all WordPress users visit upon logging in.</p>



<p>Mission Ctrl is priced at $29 for version 1.x updates on an unlimited number of sites. While it is not explicitly stated on the site at this time, it appears Sorta Brilliant is taking a more traditional software pricing approach by selling based on major version releases rather than the yearly subscription model that is common in the WordPress ecosystem.</p>



<p>The marketing pitch for the plugin is simple: if the WordPress dashboard screen is useless for you, Mission Ctrl is the solution.</p>



<p>There is huge potential for this plugin. <em>Have a client you want to easily expose training videos to?</em> Create a new board and drop a video in. <em>Want to leave yourself a note?</em> Drop a paragraph block with a bright yellow background to get your attention via another board.</p>



<p>&ldquo;For me, it&rsquo;s the perfect place for documentation,&rdquo; said Hamze. &ldquo;Either for products you use on your site or for things you want you or your users to remember. Since I&rsquo;m just a single user who makes regular sites I probably don&rsquo;t have a wide enough experience to think of all the ideas. This is one product where its future is going to be driven by users.&rdquo;</p>



<p>Mission Ctrl also serves as a framework for others to build on. Block developers can create dashboard-specific blocks that expose useful information to users. However, it is unlikely that this idea will catch on with the broader development community until core WordPress supports blocks on the dashboard out of the box. At the very least, this plugin can provide inspiration to the Gutenberg team.  It is a project worth supporting.</p>



<h2>How Mission Ctrl Works</h2>



<img />Custom boards added to the dashboard screen.



<p class=\"has-drop-cap\">The plugin adds a new screen titled &ldquo;Boards&rdquo; under the normal dashboard menu item in the WordPress admin. It is a custom post type, which works the same as any other post or page. Whenever you add a new board, the plugin essentially translates this into a dashboard widget. Users can add as many boards as they want. Boards can also be enabled or disabled on a per-user basis via the screen options tab like any other dashboard widget.</p>



<p>One important caveat is that Mission Ctrl disables all existing dashboard widgets, regardless of whether they come from WordPress or a third-party plugin. The idea is to provide users with a clean slate to build a dashboard screen to their liking.</p>



<p>Adding boards is as simple as inserting your preferred block and publishing it. If you need some inspiration, how about dropping an RSS block into the editor and linking it to the <a href=\"https://wptavern.com/feed\">WP Tavern feed</a>?</p>



<img />Creating a custom video board for training clients.



<p>By default, the plugin registers a single block. It provides a recreation of the WordPress &ldquo;At a Glance&rdquo; dashboard widget in block form. For now, the rest is left to the user.</p>



<p>However, Hamze does not plan to stop there. He has other blocks under development that will be useful on the dashboard:</p>



<ul><li>World Time Block</li><li>Dictionary/Thesaurus Block</li><li>Notes Block</li><li>Weather Block</li></ul>



<p>Mission Ctrl is a product early in its lifecycle. It has huge potential, particularly in helping the development community move forward with adding blocks to other areas in the WordPress admin interface.</p>



<p>However, it is not without its faults, which is expected with a plugin on its version 1.x branch. Currently, there is a question on how to deal with theme styles applied to the block editor but not applied to the dashboard screen, which can make for some inconsistencies with block design. It is not an insurmountable issue, but it will need to be addressed in the long term.</p>



<p>On the whole, Mission Ctrl actually makes the dashboard screen useful. For far too long, the screen has sat in limbo, awaiting someone to actually do something &mdash; <em>anything</em> &mdash; with it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Jun 2020 20:31:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.1.6 of the Akismet WordPress Plugin is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2072\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2020/06/04/version-4-1-6-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:809:\"<p>Version 4.1.6 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. It contains the following changes:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul>
<li>Disable &#8220;Check for Spam&#8221; button until the page is loaded to avoid errors with clicking through to queue recheck endpoint directly.</li>
<li>Add filter &#8220;akismet_enable_mshots&#8221; to allow disabling screenshot popups on the edit comments admin page.</li>
</ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Jun 2020 17:31:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"WPTavern: Automattic Invests $4.6M in New Vector, Creators of the Matrix Open Standard for Decentralized Communication\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100180\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:277:\"https://wptavern.com/automattic-invests-4-6m-in-new-vector-creators-of-the-matrix-open-standard-for-decentralized-communication?utm_source=rss&utm_medium=rss&utm_campaign=automattic-invests-4-6m-in-new-vector-creators-of-the-matrix-open-standard-for-decentralized-communication\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:15423:\"<p><a href=\"https://automattic.com/\">Automattic</a> has invested $4.6M in <a href=\"https://vector.im/\">New Vector</a>, a company founded by the creators of <a href=\"https://matrix.org/\">Matrix</a>, an open standard that powers decentralized conversations with end-to-end encryption. Matrix.org is home to the open source project that offers HTTP APIs and SDKs, enabling developers to create their own communication clients on top of the Matrix open standard with open federation. This means anyone can communicate with others on the Matrix ecosystem by deploying their own server. </p>



<p>The protocol also allows for bridging existing platforms like Slack, IRC, XMPP, Gitter, Telegram Discord, Facebook, and many more, creating &ldquo;a global open matrix of communication.&rdquo; Matrix is the protocol behind <a href=\"https://about.riot.im/\">Riot.im,</a> a universal chat app that is often described as &ldquo;a Slack alternative.&rdquo; Riot supports groups and teams with chat, file sharing, widgets, and voice/video calls. It is currently the most mature Matrix client and the most well-known New Vector product.</p>



<img />



<p>A loose comparison might liken Automattic&rsquo;s role in the WordPress ecosystem to New Vector&rsquo;s role in growing the Matrix ecosystem while funding the development of the protocol. Co-founders Matthew Hodgson and Amandine Le Pape created the company to keep the lights on for the open source project. Automattic is now <a href=\"https://beta.companieshouse.gov.uk/company/10873661/filing-history/MzI2NDAzMTI4MGFkaXF6a2N4/document?format=pdf&download=0\">one of six investors</a> in the company with voting rights.</p>



<p>In 2017, Matt Mullenweg contributed to Matrix&rsquo;s Patreon when the project was struggling to stay afloat. On a recent Matrix Live podcast <a href=\"https://www.youtube.com/watch?v=7iIuba5IYYc\">episode</a>, he elaborated on why Matrix drew his interest for an investment from Automattic:</p>



<blockquote class=\"wp-block-quote\"><p>I really like when things solve a real user problem and do so in a technically rigorous and an intellectually and morally pure way. Those are things that attracted me then and now to the Matrix project. I also like to think, &lsquo;What if this is successful?&rsquo; What does the world look like if 90% of the messages in the world are sent over the Matrix systems and protocols? That would be kind of amazing&hellip;.I think that a widespread worldwide adoption of what you all are working on could be amazing for humanity.</p></blockquote>



<p>A growing dissatisfaction with the ethics and privacy breaches of today&rsquo;s most popular social platforms has caused a great deal of personal communication and social sharing to shift away from these massive data silos and into a myriad of private messaging apps. Mullenweg has often spoken of his fascination with messaging platforms and their relationship with the independent web. In an <a href=\"https://youtu.be/P2qbSMdCvis\">interview with Om Malik</a> at WordCamp Europe 2017, he mentioned that Automattic was experimenting with Telegram&rsquo;s group broadcasting feature. It&rsquo;s not surprising that the company is making a significant investment in an open, decentralized communication protocol. </p>



<p>Five years ago, at an event in San Francisco, Matt Mullenweg <a href=\"https://techcrunch.com/2015/09/18/move-over-slack-automattic-mulls-commercializing-its-own-internal-messaging-product/\">said</a> that Automattic has &ldquo;flirted with commercializing&rdquo; P2, its internal messaging system. The Matrix ecosystem offers a more real-time version of these types of collaboration tools that are client-agnostic. With the explosion of companies working from home due to the pandemic, Matrix-powered communication tools might be a strategic addition to <a href=\"https://happy.tools/\">Happy Tools</a>, Automattic&rsquo;s suite of products for remote teams.</p>



<p>The Matrix project boasts 10 million global visible accounts with 20,000 federated servers powering 2.5 million messages per day. More than 400 projects and 70 companies are building on this technology, so it is still relatively obscure but growing rapidly since the Matrix 1.0 release in June 2019.</p>



<p>Matrix is somewhat of an underdog among enterprise communications platforms, but New Vector is working to position its client better with competitors by designing a more modern UI. In Matrix.org&rsquo;s <a href=\"https://matrix.org/blog/2019/12/19/welcoming-mozilla-to-matrix\">announcement</a> about Mozilla selecting Matrix as the successor to IRC for its public community, Matthew Hodgson said the Matrix team &ldquo;are absolutely determined for Riot to have as good if not better UX than the likes of Slack or Discord.&rdquo; New Vector also hired more designers to work full-time on Riot&rsquo;s UI and UX, and shifted the product&rsquo;s focus from being developer-led to design-led.</p>



<h2>Automattic Plans to Adopt Matrix-Powered Tools and Build Bridges to WordPress</h2>



<p>Given that New Vector is actively developing Riot as a Slack competitor and selling hosted Matrix services, it seems inevitable that Automattic will incorporate some form of Matrix-powered collaboration in the near future. Hodgson&rsquo;s <a href=\"https://matrix.org/blog/2020/05/21/welcoming-automattic-to-matrix\">announcement</a> about the investment stated they do not yet have a concrete project to announce but &ldquo;at the very least, we should expect to see Automattic&rsquo;s communities migrating over to Matrix in the coming months.&rdquo;</p>



<p>Hodgson was also enthusiastic about the many possibilities of bringing Matrix to WordPress&rsquo; massive user base:</p>



<blockquote class=\"wp-block-quote\"><p>Imagine if every WP site automatically came with its own Matrix room or community? Imagine if all content in WP automatically was published into Matrix as well as the Web? (This isn&rsquo;t so far fetched an idea &ndash; turns out that Automattic already runs a XMPP bridge for wordpress.com over at&nbsp;<a rel=\"noreferrer noopener\" href=\"https://im.wordpress.com/\" target=\"_blank\">im.wordpress.com</a>!). Imagine there was an excellent Matrix client available as a WordPress plugin for embedding realtime chat into your site? Imagine if&nbsp;<a rel=\"noreferrer noopener\" href=\"https://tumblr.com/\" target=\"_blank\">Tumblr</a>&nbsp;(which is part of Automattic these days) became decentralised!?</p></blockquote>



<p>Some bristled at the idea of introducing Matrix in WordPress core, but Mullenweg was quick to clarify that the intention was likely to reference WordPress.com and not self-hosted sites.</p>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">The same way that WP folks mix up New Vector, Modular, Riot, and Matrix, people outside our community sometimes mix up .org and .com, Automattic and WordPress. I think the intention there was to mean .com, as it would be difficult for most shared hosts to run Matrix.</p>&mdash; Matt Mullenweg (@photomatt) <a href=\"https://twitter.com/photomatt/status/1263876235140218886?ref_src=twsrc%5Etfw\">May 22, 2020</a></blockquote>
</div>



<p>Given the hosting requirements for a Matrix client for WordPress, it would have to be offered through WordPress.com, as a SaaS offering through Jetpack, or as an add-on with WordPress hosting companies to gain widespread use.  </p>



<p>Automattic is <a href=\"https://automattic.com/work-with-us/matrix-integrations-engineer/\">hiring</a> Matrix.org/WordPress Integrations engineers to &ldquo;bridge the two software worlds&rdquo; and explore cross pollination opportunities that &ldquo;may include building open-source plugins for either platform, enabling real-time chat and collaboration for business websites, blogs, e-commerce stores, or communities, integration of <a href=\"https://im.wordpress.com/\">existing infrastructure</a>.&rdquo;</p>



<p> &ldquo;I would love to hire a few folks to contribute to the [Matrix] project full-time and help Automattic&rsquo;s adoption of it, because I think it&rsquo;s really healthy for the ecosystem if there&rsquo;s more than one company sponsoring it,&rdquo; Mullenweg said on the Matrix Live podcast. Hodgson said that currently New Vector supplies an estimated 90-95% of the open source contributions to the Synapse release of the Matrix server implementation and to Riot.</p>



<p>One user on Hacker News <a href=\"https://news.ycombinator.com/item?id=23257565\">suggested</a> that WordPress.org also adopt Matrix-powered communication tools for collaborating on the open source project:</p>



<blockquote class=\"wp-block-quote\"><p>Here&rsquo;s hoping Automattic has enough influence to move the WordPress.org open source and community discussions (which are currently hosted on Slack, but used to take place on IRC) to Matrix too.</p></blockquote>



<p>Hodgson responded saying, &ldquo;That&rsquo;s the hope &ndash; the pressure is on the Riot/Matrix side to ensure that the transition is a no-brainer in terms of UX.&rdquo; Ideally, any migration away from Slack would preserve both public and private messages, including emoji reactions, files, and the full treasure of collaborative history of the project for the past five years.</p>



<h2>Can Automattic Take Decentralized Communication Tools Mainstream?</h2>



<p>Although the main commercial thrust for New Vector seems to be centered around enabling enterprise collaboration platforms with Matrix and its necessary infrastructure, Mullenweg had a lot to say about social networking during the recent Matrix Live podcast episode.</p>



<p>&ldquo;I think communication is at the core of what makes us great and what brings us together,&rdquo; Mullenweg said. &ldquo;And the breakdown of communication and separation is the source of most conflict and suffering in the world.&rdquo;</p>



<p>He used Facebook as an example of how a platform&rsquo;s massive success can cause it to fly too close to the sun and ultimately miss the opportunity to deliver what users truly want.</p>



<p>&ldquo;I think as centralized or decentralized systems become ultra successful, what&rsquo;s made them successful also contains the seeds of their own demise,&rdquo; Mullenweg said. &ldquo;When a &lsquo;Facebook&rsquo; becomes a social network which sucks up maybe 90 percent of all media we generate in the world, that also then draws in everyone else creating the alternatives. I think the economic inevitabilities of the commercial self-interests of Facebook, in this example, growing from that particularly in a shareholder beholding system &ndash; their success is the golden handcuffs which prevents them from doing the thing that the users or the audience might want next.&rdquo;</p>



<p>The concept of decentralized social networking has so far failed to attract mainstream attention. Most implementations are woefully difficult to set up for anyone who is not technically inclined. A 2017 Wired op-ed contends these types of networks <a href=\"https://www-wired-com.cdn.ampproject.org/v/s/www.wired.com/story/decentralized-social-networks-sound-great-too-bad-theyll-never-work/amp?usqp=mq331AQFKAGwASA%3D&amp_js_v=0.1#aoh=15912109454217&referrer=https%3A%2F%2Fwww.google.com&amp_tf=From%20%251%24s&ampshare=https%3A%2F%2Fwww.wired.com%2Fstory%2Fdecentralized-social-networks-sound-great-too-bad-theyll-never-work%2F\">will never work</a> because &ldquo;we join [social networks] because our friends are there, not for ideological reasons like decentralization.&rdquo; New social networks can be challenging to navigate. Networks like <a href=\"https://diasporafoundation.org/\">Diaspora</a> and <a href=\"https://mastodon.social/about\">Mastadon</a> still struggle to gain much traction. </p>



<p>Late last year Twitter CEO Jack Dorsey announced that the company is funding a small team under the project name &ldquo;bluesky&rdquo; to develop an open and decentralized standard for social media. If successful, the ultimate goal would be to move Twitter to this new decentralized model.</p>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Twitter is funding a small independent team of up to five open source architects, engineers, and designers to develop an open and decentralized standard for social media. The goal is for Twitter to ultimately be a client of this standard. &#129525;</p>&mdash; jack (@jack) <a href=\"https://twitter.com/jack/status/1204766078468911106?ref_src=twsrc%5Etfw\">December 11, 2019</a></blockquote>
</div>



<p>Dorsey cited challenges that his centralized network struggles to meet, including scaling a centralized enforcement of global policy to address abuse and misleading information. He also credits the advent of blockchain technology for advancing decentralized solutions into the realm of viability.</p>



<p>In response to the thread, many suggested Twitter consider using the existing <a href=\"http://w3.org/TR/activitypub/\">ActivityPub</a> standard that is already a W3C spec. This spec seems quite narrowly focused around networks built on a simple system of following and liking and not as well suited to more dynamic communities with real-time chat capabilities.</p>



<p>I could imagine Matrix-powered communities pioneering a protocol that accounts for a blog or website as the user&rsquo;s home on the web, where content originates and can be automatically published to select streams, such as communities or rooms. </p>



<p>Ten years ago there was a project called <a href=\"https://web.archive.org/web/20151018073042/http://socialriver.org/\">SocialRiver</a> that aimed to bring decentralized social networking to WordPress and BuddyPress. It was based on the the OStatus specification and promised to allow users to host and control their own stream of information, which could then be merged with others&rsquo; streams to make a unique social river. The creators were making a hosted instance as well as a plugin to help site owners create their own SocialRiver instance. </p>



<p>The project was abandoned a few years later. It disappeared without any explanation, but the basic idea seemed to hold so much potential for the growing world of WordPress sites.</p>



<p>Automattic is a company that might be able to take decentralized social networking mainstream with the help of Matrix, freeing users from the clutches of the data silos and their dehumanizing algorithms. The right team of people with enough resources, rooted in the principles of the open web, could change the face of social networking forever.</p>



<p>The Matrix.org homepage calls on visitors to imagine a world:</p>



<ul><li>&hellip;where it is as simple to message or call anyone as it is to send them an email.</li><li>&hellip;where you can communicate without being forced to install the same app.</li><li>&hellip;where you can choose who hosts your communication.</li><li>&hellip;where your conversations are secured by E2E encryption.</li><li>&hellip;where there&rsquo;s a simple standard HTTP API for sharing real-time data on the web.</li></ul>



<p>Combining WordPress&rsquo; mission to democratize publishing with the Matrix project&rsquo;s technology for &ldquo;democratizing control over communication&rdquo; should yield some interesting products that stand to impact both open source ecosystems.</p>



<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Jun 2020 07:37:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Automattic Launches Malware and Vulnerability Scanning Service for Jetpack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100261\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:213:\"https://wptavern.com/automattic-launches-malware-and-vulnerability-scanning-service-for-jetpack?utm_source=rss&utm_medium=rss&utm_campaign=automattic-launches-malware-and-vulnerability-scanning-service-for-jetpack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4539:\"<img />



<p class=\"has-drop-cap\">On Tuesday, Automattic <a href=\"https://jetpack.com/2020/06/02/introducing-jetpack-scan/\">launched Jetpack Scan</a>, an automated malware and vulnerability scanning service. It is a premium service offered to sites connected to a WordPress.com account and the third major add-on launched on top of the plugin in recent months.</p>



<p><a href=\"https://jetpack.com/upgrade/scan/\">Jetpack Scan</a> is available for $7 per month or $70 for an annual subscription. Both options are 30% off the regular price of $10 and $100, respectively. Currently, the feature runs daily scans for security threats. However, the plan is to add a real-time scanning option, presumably at a higher price point.</p>



<p>&ldquo;It&rsquo;s like having a security guard monitoring your site,&rdquo; said Paolo Belcastro, Head of Product for Jetpack. &ldquo;You can rest easy knowing that someone&rsquo;s watching out for you 24/7. And if we find any threats, you&rsquo;ll receive an instant email alert so you can fix it right away and get back to running your business. We can even repair the majority of security threats for you with just one click.&rdquo;</p>



<p>The service comes on the heels of two other big Jetpack launches in the last couple of months. In April, the Jetpack team <a href=\"https://wptavern.com/jetpack-re-launches-search-feature-as-standalone-service\">re-launched Jetpack Search</a> as a standalone service. The team then <a href=\"https://jetpack.com/2020/05/07/the-best-way-to-protect-your-site-jetpack-backup/\">opened the Jetpack Backup service</a> in May, which was the first step in selling what is essentially a two-part security solution for site owners &mdash; backups and security scanning go hand in hand. The backup service is $30 per year for daily backups and $200 per year for real-time backups. For a complete security solution, end-users will probably combine the Jetpack Scan service with Jetpack Backup, which will run at a minimum of $100 every year. These numbers are based on introductory rates, which are expected to increase in the future.</p>



<p>Backup and security scanning services are major moves. Jetpack is likely to gobble up a huge slice of the security pie in the coming months and years, which is a sector that is currently represented by several other big businesses in the industry. With over five million self-installed WordPress users and millions more at WordPress.com, it will be an easy choice for many to opt into Jetpack&rsquo;s solution rather than look elsewhere.</p>



<h2>Jetpack Scan Features and Interface</h2>



<ul><li class=\"blocks-gallery-item\"><img />Desktop View</li><li class=\"blocks-gallery-item\"><img />Mobile View</li></ul>



<p class=\"has-drop-cap\">Jetpack Scan automatically scans connected websites each day. Once a user sets up the feature, they no longer need to perform any actions for routine security maintenance. The feature offloads the actual scanning to Automattic&rsquo;s servers instead of running checks directly on the user&rsquo;s site. This also has the benefit of making scan results accessible even if the user&rsquo;s site is down for some reason.</p>



<p>If the scanning system finds an issue, it sends an email directly to the user. The system comes with a one-click fix feature. &ldquo;Just press a button and Jetpack will fix the majority of known malware problems so you can get your site back up and running,&rdquo; wrote Rob Pugh, Director of Product Marketing at Automattic, in the announcement post.</p>



<p>Jetpack Scan also integrates with the Jetpack Backup service, which will allow end-users to completely restore their site to a previous point in time in the case of site hacks.</p>



<p>For new Scan and Backup customers, they will be able to enjoy a new all-in-one interface on the Jetpack website. The team will bring the upgraded experience to existing customers soon.</p>



<p>&ldquo;Even the best security tools can become useless if they require advanced skills to configure complicated settings,&rdquo; said Filipe Varela, of Jetpack Design. &ldquo;That&rsquo;s why it was so important for us to build an accessible and streamlined service. We&rsquo;re proud to announce a fresh, dedicated interface for Jetpack Scan on Jetpack.com. It will be the central hub for managing all your Jetpack Security products. You can scan your website, check the results, respond to issues, and, when combined with Jetpack Backup, quickly restore your site to working order all in one place.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Jun 2020 19:54:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"HeroPress: Beyond Software: Meeting the WordPress Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3163\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:168:\"https://heropress.com/essays/beyond-software-meeting-the-wordpress-community/#utm_source=rss&utm_medium=rss&utm_campaign=beyond-software-meeting-the-wordpress-community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:20389:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/06/060320-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: I have been able to live a lot of transforming experiences that have shown me the meaning of the words �community� and �volunteerism�. He podido vivir un mont�n de experiencias transformadoras que me han ense�ado el significado de las palabras \" /><p><a href=\"https://heropress.com/feed/#espanol\">Este ensayo tambi�n est� disponible en espa�ol.</a></p>
<p>The first time I used WordPress I had no idea what was going on behind the software&#8230; or beyond it. I knew there was someone making it all work, but I couldn&#8217;t even remotely imagine all the people who were making WordPress not just a tool for developing websites, but a whole movement that comes together to share, build, and help make the world better.</p>
<h3>First steps on the web: from hobby to employment</h3>
<p>Although I have always loved web development, before I started working seriously on it, I earned my income by providing computer technical support and installing computer networks to small and medium-sized businesses.</p>
<p>I started making websites about 15 years ago writing pure code as a hobby: HTML and CSS, but when I understood the concept of CMS, I was impressed: I could make everything dynamic. First I used Drupal, then Joomla, but since a friend introduced me to WordPress in 2010 I haven&#8217;t used another CMS.</p>
<p>In 2013 I started a small advertising agency with some friends. We did commercials for local radio and TV stations, but we also developed about 15 websites in a city where business owners did not believe or value the web.</p>
<p>We were working for almost four years, until at the end of 2017 the crisis in Venezuela became too acute, and we decided to close the agency when we stopped making profits. Taking stock of that period, I think we changed the way merchants saw the Internet business in the city.</p>
<h3>Working full time as freelancer</h3>
<p>It was in 2018 when I started as a full time freelance web developer. My first clients were some of the agency and friends who had migrated to other countries. Then I tried my luck with sites like Workana.com and Freelancer.com.</p>
<p>Making the decision to work as a freelancer web designer or developer while still living in Venezuela is not easy. First of all, it is very difficult to get projects that offer or accept a fair remuneration. On the other hand, almost all over the country there are constant blackouts and Internet connections are very slow or unavailable.</p>
<p>Although I was born in Caracas, the capital of Venezuela, I grew up in the western part of the country, in the city of El Vig�a in the state of M�rida. This is the area of the country called Los Andes and is one of the areas most affected by poor of lack of public services. This led me to move away from my mother&#8217;s family, to the center of the country, looking for stable services to continue working in Venezuela as long as possible.</p>
<p>I currently live in Guarenas, about 30 minutes from Caracas. There are almost no power outages here and I still have an internet speed that allows me to work, but I have not been able to see my family for almost two years.</p>
<h3>Meeting the WordPress community</h3>
<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image1-min.png\"><img /></a>WordPress Guarenas-Guatire logo designed by <a href=\"https://profiles.wordpress.org/bragnieljimenez/\">Bragniel Jimenez</a>
<p>When I moved to Guarenas, I had to begin making friends and contacts again. I started looking for coworking spaces or technology communities nearby and that&#8217;s when I met the WordPress community in Caracas.</p>
<p>I signed up for the first face-to-face event, and just after I finished, I talked to the co-organizer to offer to help with some of the group&#8217;s tasks, such as designing promotional pieces, managing social networks, and organizing events.</p>
<p>In the different events I organized, I met several people who also lived in Guarenas or Guatire (two sister cities that are next to each other): <a href=\"https://twitter.com/guatirepuntocom\">Lu�s Leal</a>, <a href=\"https://www.instagram.com/crisersistemas/\">Crisanto Serrano</a> y <a href=\"https://twitter.com/profesysadmin\">Alexis Arnal</a>. A few months later the idea came up: &#8220;Why don&#8217;t we organize the Guarenas-Guatire group?&#8221;.</p>
<p>And the idea materialized in December 2019 when I requested the WordPress community in Guarenas-Guatire from the WordCamp Central team. Only a week later we would have the approval and start scheduling the activities. <a href=\"http://meetup.com/wordpress-meetup-guarenas-guatire/\">WordPress Meetup Guarenas-Guatire</a> is born.</p>
<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image2-min.jpg\"><img /></a><i>Farewell photo of one of the events organized by the community of Guarenas-Guatire</i></p>
<p>In the first quarter of the year, until just before the Venezuelan authorities prohibited meetings in public spaces because of COVID-19, we organized 5 face-to-face events&#8230; but the community was eager to continue meeting.</p>
<p>So, in order to keep the community active and motivated, with the support of <a href=\"https://www.mowomo.com/\">mowomo</a>, a Spanish web development company very involved with the WordPress community, we started doing online events under a format we called �<a href=\"https://wordpress.tv/event/wordpress-meetup-guarenas-guatire/\">WordPress a la medianoche</a>� (WordPress at midnight)</p>
<p>This format was created from <a href=\"https://t.me/WPGuarenasGuatire/1247\">a message</a> published in our Telegram group by Alexis Arnal, whose premise is to meet at midnight in order to avoid the low speeds of the Internet that usually improve after that time.</p>
<p>At the time of writing, we have organized 6 events of this type with an attendance of up to 50 people online, something that is surprising since this is a relatively small group and transmitting at an unconventional time.</p>
<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image3-min.jpg\"><img /></a><i>Javier Esteban at an online event talking about translations in WordPress.</i></p>
<p>One of the interesting opportunities presented by online events is that we can invite people from other countries. For example, we have already had a special translation event with <a href=\"https://profiles.wordpress.org/nobnob/\">Javier Esteban</a>, a member of the translation team from Spain, and we have extended the invitation to other people from Mexico, Costa Rica, Peru and Colombia.</p>
<h3>My personal experience with the community</h3>
<p>Surely if I hadn&#8217;t met the community, I would have continued to work on my own, like a lone wolf, doing the ordinary work of solving problems for occasional customers and paying my bills.</p>
<p>Fortunately, this was not the case and I have been able to live a lot of transforming experiences that have shown me the meaning of the words �community� and �volunteerism�.</p>
<p>I had never participated in a community like this nor volunteered in any similar movement, but since I started to get involved with the community, I have done several volunteer activities to help in different teams, among them:</p>
<ul>
<li><b>Polyglots</b> as Locale Manager for Spanish Venezuela.</li>
<li><b>WordPress.tv</b> as moderator of the site.</li>
<li><b>Support </b>in the forums helping people with technical issues.</li>
</ul>
<p>I have also developed some <b>plugins </b>that I published in the official WordPress plugin directory and have given several speeches at different events, including <b>WordCamp Spain 2020</b>.</p>
<p>All this has a <i>boomerang </i>effect. At first, when I told my family and friends about the community and the work I was doing, they would ask me &#8220;what do you get in return?&#8221; Perhaps they expected me to tell them a specific amount of money, but the answer is more complex.</p>
<p>All these experiences have allowed me to grow personally and professionally. It&#8217;s rewarding to know that you&#8217;ve helped improve the WordPress ecosystem, the tool you use to work and put food on the table. It also makes you feel good to directly help people when they need it and receive a &#8220;Thank you very much, I solved the problem!&#8221; This is a two-way learning process, you learn as you teach.</p>
<p>I have met wonderful people with interests and values that are in tune with mine, many of those people are now my friends, business partners or customers. At the same time, I have learned new skills and gained more experience in the ones I already had. I feel that this has increased my confidence as a professional and my level of resilience to face such difficult situations as those my country is currently experiencing.</p>
<p>&nbsp;</p>
<h1 id=\"espanol\">M�s all� del software: conociendo la comunidad WordPress</h1>
<p>La primera vez que us� WordPress no ten�a idea de todo lo que estaba pasando detr�s del software� o m�s all� de �l. Sab�a que hab�a alguien haciendo que todo funcionara, pero ni remotamente imaginaba todas las personas que estaban haciendo de WordPress no solo una herramienta para desarrollar sitios web, sino todo un movimiento que se re�ne para compartir, construir y ayudar a hacer un mundo mejor.</p>
<h3>Primeros pasos en la web: del hobby al empleo</h3>
<p>Aunque siempre me ha gustado el desarrollo web, antes de empezar a trabajar en serio en ello, ganaba mis ingresos proporcionando apoyo t�cnico de equipos inform�ticos e instalando redes de computadoras a peque�as y medianas empresas.</p>
<p>Comenc� a hacer sitios web hace unos 15 a�os escribiendo c�digo puro como hobby: HTML y CSS, pero cuando entend� el concepto de los CMS, qued� impresionado: Pod�a hacer que todo fuera din�mico. Primero us� Drupal, luego Joomla, pero desde que un amigo me present� WordPress en 2010 no he usado otro CMS.</p>
<p>En 2013 comenc� una peque�a agencia de publicidad con algunos amigos. Hicimos comerciales para estaciones de radio y televisoras locales, pero tambi�n desarrollamos cerca de 15 sitios web en una ciudad donde los due�os de negocios no cre�an o valoraban la web.</p>
<p>Estuvimos trabajando por casi cuatro a�os, hasta que a finales de 2017 la crisis en Venezuela se agudiz� demasiado y decidimos cerrar la agencia cuando dejamos de obtener beneficios. Haciendo un balance de ese periodo, creo que cambiamos la forma en que los comerciantes ve�an el negocio de Internet en la ciudad.</p>
<h3>Trabajando a tiempo completo como aut�nomo</h3>
<p>Fue en 2018 cuando empec� como desarrollador web independiente a tiempo completo. Mis primeros clientes fueron algunos de la agencia y amigos que hab�an emigrado a otros pa�ses. Luego prob� suerte con sitios como Workana.com y Freelancer.com.</p>
<p>Tomar la decisi�n de trabajar de forma aut�noma como dise�ador o desarrollador web mientras sigues viviendo en Venezuela no es f�cil. En primer lugar, es muy dif�cil conseguir proyectos que ofrezcan o acepten una remuneraci�n justa. Por otro lado, casi en todo el pa�s hay constantes apagones y las conexiones de Internet son muy lentas o no est�n disponibles.</p>
<p>Aunque nac� en Caracas, la capital de Venezuela, crec� en la parte occidental del pa�s, en la ciudad de El Vig�a en el estado de M�rida. Esta es la regi�n de Los Andes venezolanos, una de las m�s afectadas por la falta de servicios p�blicos. Esto fue lo que me llev� a mudarme lejos de mi familia materna, al centro del pa�s, buscando servicios estables para seguir trabajando en Venezuela todo el tiempo posible.</p>
<p>Actualmente vivo en Guarenas, a unos 30 minutos de Caracas. Aqu� casi no hay apagones y todav�a tengo una velocidad de Internet que me permite trabajar, pero no he podido ver a mi familia durante casi dos a�os.</p>
<h3>Conociendo a la comunidad WordPress</h3>
<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image1-min.png\"><img /></a>Logo de WordPress Guarenas-Guatire dise�ado por <a href=\"https://profiles.wordpress.org/bragnieljimenez/\">Bragniel Jimenez</a>
<p>Cuando me mud� a Guarenas, tuve que empezar a hacer amigos y contactos de nuevo. Empec� a buscar espacios de coworking o comunidades tecnol�gicas en las cercan�as y fue entonces cuando conoc� a la comunidad de WordPress en Caracas.</p>
<p>Me apunt� al primer evento presencial y, justo despu�s de terminar, habl� con la coorganizadora para ofrecerme a ayudar en algunas tareas del grupo, como el dise�o de piezas promocionales, la gesti�n de las redes sociales y la organizaci�n de eventos.</p>
<p>En los diferentes eventos que organic�, conoc� a varias personas que tambi�n viv�an en Guarenas o Guatire (dos ciudades hermanas que quedan una al lado de la otra): <a href=\"https://twitter.com/guatirepuntocom\">Lu�s Leal</a>, <a href=\"https://www.instagram.com/crisersistemas/\">Crisanto Serrano</a> y <a href=\"https://twitter.com/profesysadmin\">Alexis Arnal</a>. Unos meses m�s tarde surgi� la idea: <i>��por qu� no organizamos el grupo de Guarenas-Guatire?�</i></p>
<p>Y la idea se materializ� en diciembre de 2019 cuando solicit� la comunidad de WordPress en Guarenas-Guatire al equipo de WordCamp Central. Solo una semana despu�s ya tendr�amos la aprobaci�n y comenzar�amos a programar la agenda de actividades. Ha nacido <a href=\"http://meetup.com/wordpress-meetup-guarenas-guatire/\">WordPress Meetup Guarenas-Guatire</a>.</p>
<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image2-min.jpg\"><img /></a><i>Foto de despedida de uno de los eventos presenciales organizados por la comunidad de Guarenas-Guatire.</i></p>
<p>En el primer trimestre del a�o, hasta justo antes de que las autoridades venezolanas prohibieran los encuentros en espacios p�blicos a causa de la COVID-19, organizamos 5 eventos presenciales� pero la comunidad estaba ansiosa por seguir reuni�ndose.</p>
<p>As� que, para mantener activa y motivada a la comunidad, con el apoyo de <a href=\"https://www.mowomo.com/\">mowomo</a>, una empresa espa�ola de desarrollo web muy involucrada con la comunidad WordPress, comenzamos a hacer eventos en l�nea bajo un formato que llamamos �<a href=\"https://wordpress.tv/event/wordpress-meetup-guarenas-guatire/\">WordPress a la medianoche</a>�</p>
<p>Este formato se cre� a partir de un mensaje publicado en <a href=\"https://t.me/WPGuarenasGuatire/1247\">nuestro grupo de Telegram</a> por Alexis Arnal, cuya premisa es reunirnos a la medianoche para poder sortear las bajas velocidades a Internet que suelen mejorar a partir de esa hora.</p>
<p>Al momento de escribir estas l�neas, hemos organizado 6 eventos de este tipo con una asistencia de hasta 50 personas en l�nea, algo que sorprende siendo este un grupo relativamente peque�o y transmitiendo a un horario no convencional.</p>
<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/06/image3-min.jpg\"><img /></a><i>Javier Esteban en un evento en l�nea hablando sobre las traducciones en WordPress.</i></p>
<p>Una de las oportunidades interesantes que presentan los eventos en l�nea es que podemos invitar a personas de otros pa�ses. Por ejemplo, ya hemos tenido un evento especial de traducciones con <a href=\"https://profiles.wordpress.org/nobnob/\">Javier Esteban</a>, miembro del equipo de traducci�n de Espa�a, y hemos extendido la invitaci�n a otras personas de M�xico, Costa Rica, Per� y Colombia.</p>
<h3>Mi experiencia personal con la comunidad</h3>
<p>Seguramente si no hubiese conocido a la comunidad, hubiera seguido trabajando por mi cuenta como un lobo solitario haciendo el trabajo ordinario de siempre para solucionar problemas a clientes puntuales y pagar mis facturas.</p>
<p>Afortunadamente, no fue as� y he podido vivir un mont�n de experiencias transformadoras que me han ense�ado el significado real de las palabras <b>comunidad</b> y <b>voluntariado</b>.</p>
<p>Y es que nunca hab�a participado en una comunidad como esta ni hab�a sido voluntario en ning�n movimiento parecido, pero desde que empec� a involucrarme con la comunidad, he realizado varias actividades de voluntariado para ayudar en diferentes equipos, entre ellos:</p>
<ul>
<li><b>Polyglots:</b> como �Locale Manager� para espa�ol de Venezuela.</li>
<li><b>WordPress.tv:</b> como moderador de la plataforma.</li>
<li><b>Soporte:</b> brindando asistencia t�cnica en los foros.</li>
</ul>
<p>Tambi�n he desarrollado algunos <b>plugins</b> que he publicado en el directorio oficial de plugins de WordPress y he dictado varias ponencias en diferentes eventos, incluyendo <b>WordCamp Espa�a 2020</b>.</p>
<p>Todo esto tiene un efecto <i>boomerang</i>. Al principio, cuando le contaba a mi familia y amigos sobre la comunidad y el trabajo que estaba realizando, me preguntaban ��qu� obtienes a cambio?�. Quiz�s esperaban que les dijera una cifra de dinero concreta, pero la respuesta es m�s profunda.</p>
<p>Todas estas experiencias me han permitido crecer de forma personal y profesional. Es gratificante saber que has ayudado a mejorar el ecosistema WordPress, la herramienta que usas para trabajar y poner la comida en la mesa. Tambi�n te hace sentir bien ayudar directamente a personas cuando lo necesitaban y recibir un: �Muchas gracias, �he solucionado el problema!�. Este es un proceso de aprendizaje bilateral, aprendes mientras ense�as.</p>
<p>He conocido personas maravillosas con intereses y valores que est�n en sinton�a con los m�os, muchas de esas personas ahora son mis amigos, aliados comerciales o clientes. Al mismo tiempo, he aprendido nuevas habilidades y he ganado m�s experiencia en las que ya ten�a. Siento que esto ha aumentado la confianza en m� mismo como profesional y mi nivel de resiliencia para enfrentar situaciones tan dif�ciles como las que vive mi pa�s actualmente.</p>
<div id=\"gtx-trans\">
<div class=\"gtx-trans-icon\"></div>
</div>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Beyond Software: Meeting the WordPress Community\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Beyond%20Software%3A%20Meeting%20the%20WordPress%20Community&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbeyond-software-meeting-the-wordpress-community%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Beyond Software: Meeting the WordPress Community\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbeyond-software-meeting-the-wordpress-community%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbeyond-software-meeting-the-wordpress-community%2F&title=Beyond+Software%3A+Meeting+the+WordPress+Community\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Beyond Software: Meeting the WordPress Community\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/beyond-software-meeting-the-wordpress-community/&media=https://heropress.com/wp-content/uploads/2021/06/060320-min-150x150.jpg&description=Beyond Software: Meeting the WordPress Community\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Beyond Software: Meeting the WordPress Community\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/beyond-software-meeting-the-wordpress-community/\" title=\"Beyond Software: Meeting the WordPress Community\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/beyond-software-meeting-the-wordpress-community/\">Beyond Software: Meeting the WordPress Community</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Jun 2020 06:00:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Yordan Soares\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WPTavern: The Show Must Be Paused\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100317\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://wptavern.com/the-show-must-be-paused?utm_source=rss&utm_medium=rss&utm_campaign=the-show-must-be-paused\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5364:\"<div class=\"wp-block-cover alignfull has-background-dim\"><div class=\"wp-block-cover__inner-container\">
<div class=\"wp-block-group has-white-color has-text-color text-white\"><div class=\"wp-block-group__inner-container\">
<h2 class=\"has-text-align-center has-white-color has-text-color has-titanic-font-size text-5xl text-center text-white\">George Floyd</h2>



<p class=\"has-text-align-center has-extra-large-font-size text-xl text-center\">Natosha McDade, Yassin Mohamed, Finan H. Berhe, Sean Reed, Steven Demarco Taylor, Breonna Taylor, Ariane McCree, Terrance Franklin, Miles Hall, Darius Tarver, William Green, Samuel David Mallard, Kwame Jones, De&rsquo;von Bailey, Christopher Whitfield, Anthony Hill, Eric Logan, Jamarion Robinson, Gregory Hill Jr, JaQuavion Slaton, Ryan Twyman, Brandon Webber, Jimmy Atchison, Willie McCoy, Emantic Fitzgerald Bradford J, D&rsquo;ettrick Griffin, Jemel Roberson, DeAndre Ballard, Botham Shem Jean, Robert Lawrence White, Anthony Lamar Smith, Ramarley Graham, Manuel Loggins Jr, Trayvon Martin, Wendell Allen, Kendrec McDade, Larry Jackson Jr, Jonathan Ferrell, Jordan Baker, Victor White III, Dontre Hamilton, Eric Garner, John Crawford III, Michael Brown, Ezell Ford, Dante Parker, Kajieme Powell, Laquan McDonald, Akai Gurley, Tamir Rice, Rumain Brisbon, Jerame Reid, Charly Keunang, Tony Robinson, Walter Scott, Freddie Gray, Brendon Glenn, Samuel DuBose, Christian Taylor, Jamar Clark, Mario Woods, Quintonio LeGrier, Gregory Gunn, Akiel Denkins, Alton Sterling, Philando Castile, Terrence Sterling, Terence Crutcher, Keith Lamont Scott, Alfred Olango, Jordan Edwards, Stephon Clark, Danny Ray Thomas, DeJuan Guillory, Patrick Harmon, Jonathan Hart, Maurice Granton, Julius Johnson, Jamee Johnson, Michael Dean&hellip;</p>



<p class=\"has-text-align-center has-extra-large-font-size text-xl text-center\">Organisations that could use your financial support include&nbsp;<a href=\"https://blacklivesmatter.com/\">Black Lives Matter</a>,&nbsp;<a href=\"https://www.naacpldf.org/\">The NAACP Legal Defense and Educational Fund</a>,&nbsp;<a href=\"https://eji.org/\">The Equal Justice Initiative</a>,&nbsp;<a href=\"https://www.wetheprotesters.org/\">We The Protesters</a>, and the&nbsp;<a href=\"https://www.gofundme.com/f/georgefloyd\">George Floyd Memorial Fund</a>.</p>
</div></div>
</div></div>



<h1>The Show Must Be Paused</h1>



<p class=\"has-drop-cap\">The <a href=\"https://twitter.com/hashtag/BlackoutTuesday\">#BlackoutTuesday</a> and <a href=\"https://twitter.com/hashtag/TheShowMustBePaused\">#TheShowMustBePaused</a> hashtags have flooded the internet today. Brianna Agyemang and Jamila Thomas, senior directors of marketing at Atlantic Records, began The Show Must Be Paused movement. The effort calls for disruption to the workweek and to hold the industry at large accountable for the benefits it receives from the &ldquo;efforts, struggles, and successes&rdquo; of black people. </p>



<p>&ldquo;It is a day to take a beat for an honest, reflective and productive conversation about what actions we need to collectively take to support the Black community,&rdquo; according to <a href=\"https://www.theshowmustbepaused.com/\">The Show Must Be Paused</a> website.</p>



<p>WordPress community member and developer Phil Johnston wanted to show support for the movement in any way that he could. &ldquo;After seeing the video of George Floyd, I was really shaken,&rdquo; he said. &ldquo;I saw the Django REST API help site had blacked-out their site with a message of solidarity, and I thought that might make a good plugin if others wanted to quickly do something similar.&rdquo;</p>



<p>Johnston put together a quick plugin named <a href=\"https://github.com/The-Show-Must-Be-Paused/the-show-must-be-paused\">The Show Must Be Paused</a>. It is currently available on GitHub and awaiting approval for the official WordPress plugin directory.</p>



<p>The project is a simple blackout plugin that replaces the front end of the user&rsquo;s website with a message of solidarity (the same opening message of this post). For users who want to use the plugin on their site, they can grab the <a href=\"https://github.com/The-Show-Must-Be-Paused/the-show-must-be-paused/archive/master.zip\">ZIP file</a> from the GitHub repository and upload it. We will update this story with a link to the plugin directory page once it is available.</p>



<p class=\"is-style-highlight has-gray-200-background-color has-background bg-gray-200\"><strong>Update:</strong> <a href=\"https://wordpress.org/plugins/the-show-must-be-paused/\">The Show Must Be Paused</a> plugin is available in the plugin directory.</p>



<p>While posting a message of solidarity with those who have lost their lives, those who are still living under 400 years of oppression, and those who are continuing to fight for justice is a good first step, it is merely a step. The next question we must allow the oppressed to answer is what we as a society, as human beings, can do next. What steps can the WordPress community take?</p>



<p>&ldquo;I wish I had the answer to that question, but I&rsquo;m not sure I know for sure, or that I&rsquo;m qualified to say,&rdquo; Johnston said. &ldquo;All I know right now is that this situation really moved me personally, and I think it is important to be aware of and to really listen to the people in pain right now.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jun 2020 19:26:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WordPress.org blog: The Month in WordPress: May 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8585\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2020/06/the-month-in-wordpress-may-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10240:\"<p>May was an action-packed month for WordPress! WordPress organizers are increasingly moving WordCamps online, and contributors are taking big steps towards Full Site Editing with Gutenberg. To learn more and get all the latest updates, read on.&nbsp;</p>



<hr class=\"wp-block-separator\" />



<h2>Gutenberg 8.1 and 8.2</h2>



<p>Gutenberg <a href=\"https://make.wordpress.org/core/2020/05/13/whats-new-in-gutenberg-13-may/\">8.1</a> was released on May 13, followed quickly by Gutenberg <a href=\"https://make.wordpress.org/core/2020/05/27/whats-new-in-gutenberg-27-may/\">8.2</a> on May 27.&nbsp;</p>



<ul><li>8.1 added new block pattern features making it easier to insert desired patterns, along with a new pattern. It also added a button to&nbsp; collapsed block actions for copying the selected block, which will help touchscreen users or users who don�t use keyboard shortcuts.&nbsp;</li><li>8.2 introduced block pattern categories and a `viewportWidth` property that will be particularly useful for large block patterns. There is also a new content alignment feature, and enhancements to improve the writing experience.&nbsp;</li></ul>



<p>Both releases include a number of new APIs, enhancements, bug fixes, experiments, new documentation, improvement to code quality, and more! To learn the latest, visit the announcement posts for <a href=\"https://make.wordpress.org/core/2020/05/13/whats-new-in-gutenberg-13-may/\">Gutenberg 8.1</a> and <a href=\"https://make.wordpress.org/core/2020/05/27/whats-new-in-gutenberg-27-may/\">Gutenberg 8.2</a>.</p>



<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Gutenberg Phase 2: Steps Towards Full Site Editing</h2>



<p>Contributors are currently working hard on <a href=\"https://wordpress.org/about/roadmap/\">Phase 2 of Gutenberg</a>! Where Phase 1 introduced the new block editor with WordPress 5.0, Phase 2 sees more customization and includes one of the biggest Gutenberg projects: Full Site Editing (FSE). At the moment, <a href=\"https://make.wordpress.org/core/2020/05/13/wordpress-5-5-planning-roundup/\">work on WordPress 5.5 has been initiated</a> and contributors decided to include <a href=\"https://make.wordpress.org/core/2020/05/29/editor-features-for-wordpress-5-5/\">basic functionality for Full Site Editing</a> in this release. FSE hopes to streamline the site creation and building process in WordPress using a block-based approach. There�s a lot of conversation and new information about FSE, so communication around the project is very important. On May 28th, a conversation was held in the #core-customize channel to discuss <a href=\"https://make.wordpress.org/core/2020/05/20/join-a-discussion-about-full-site-editing-and-the-future-of-the-customizer/\">FSE and the future of the Customizer</a>. To help everyone track the latest information, <a href=\"https://make.wordpress.org/core/2020/05/20/ways-to-keep-up-with-full-site-editing-fse/\">this post</a> summarizes ways to keep up with FSE.</p>



<p>Want to get involved with Gutenberg and FSE?&nbsp; Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. You can also check the FSE <a href=\"https://href.li/?https://github.com/WordPress/gutenberg/pulls?q=is%3Aopen+is%3Apr+label%3A%22%5BFeature%5D+Full+Site+Editing%22\">pull requests</a> and <a href=\"https://href.li/?https://github.com/WordPress/gutenberg/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BFeature%5D+Full+Site+Editing%22\">issues</a> on GitHub.</p>



<h2>Theme Review Team Rebranding</h2>



<p>Representatives of the Themes Review Team have decided to update their team name to �Themes Team.� This decision reflects changes that the block editor brings to the landscape of themes with the Full Site Editing project. The team has always been involved in projects beyond reviewing WordPress.org themes and lately, the team has been contributing more to themes in general &#8212; including open-source packages, contributions to Full Site Editing, the Twenty Twenty theme, and more. You can read more about the name change in the <a href=\"https://make.wordpress.org/themes/2020/05/12/meeting-notes-tuesday-12-may-2020/\">team�s meeting notes</a>.</p>



<p>Want to get involved with the Themes Team? <a href=\"https://make.wordpress.org/themes/\">Follow the Themes blog here</a>, or join them in the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Online WordCamp Program Announced</h2>



<p>To assist organizers with moving their WordCamps online, the WordPress Community team has prepared a <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">new set of guidelines for online WordCamps</a>. The Community Team will cover <a href=\"https://make.wordpress.org/community/handbook/virtual-events/online-wordcamp-cost-guidelines-and-the-budget-review-process/\">online production and captioning costs</a> associated with any online WordCamp without the need for local sponsorship. The team also <a href=\"https://make.wordpress.org/community/handbook/virtual-events/welcome/new-guidelines-for-virtual-events-in-2020/\">updated its guidelines</a> to cover the regional focus of online events, and modified the <a href=\"https://make.wordpress.org/community/handbook/virtual-events/online-code-of-conduct/\">code of conduct</a> to cater to the new format. <a href=\"https://central.wordcamp.org/schedule/\">The WordCamp schedule</a> has also been updated to indicate whether an event is taking place online or not. You can find resources, tools, and information about online WordPress events in our <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Online Events Handbook</a>. They have also prepared a <a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/in-person-events-during-covid-19/\">new set of guidelines for in-person events</a> taking place in 2020, in the light of COVID-19 challenges.&nbsp;</p>



<p>Want to get involved with the Community team? <a href=\"https://make.wordpress.org/community/\">Follow the Community blog here</a>, or join them in the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. To organize a Meetup or WordCamp, <a href=\"https://make.wordpress.org/community/handbook/virtual-events/welcome/applying-for-a-virtual-event/\">visit the handbook page</a>.&nbsp;</p>



<h2>BuddyPress 6.0.0 �iovine�s�</h2>



<p>On May 13th, <a href=\"https://buddypress.org/2020/05/buddypress-6-0-0/\">BuddyPress 6.0.0, known as �iovine�s,� was released</a>. This release includes two new blocks for the WordPress Editor: Members and Groups. It also saw the completion of the BP REST API, adding the six remaining endpoints, and the move or local avatar management to the Members component. Beyond that, 6.0.0 includes more than 80 changes, made possible by 42 contributors.&nbsp;</p>



<p>Want to download this latest version of BuddyPress? <a href=\"https://buddypress.org/2020/05/buddypress-6-0-0/\">Get it here</a>.&nbsp; You can also help by <a href=\"https://translate.wordpress.org/projects/wp-plugins/buddypress/dev/\">translating BuddyPress into another language</a> or letting the team know of any issues you find in the <a href=\"https://buddypress.org/support/\">support forums</a>.</p>



<h2>WordCamp Spain Online Concludes Successfully</h2>



<p>WordPress Meetup organizers in Spain joined hands to organize <a href=\"https://2020.spain.wordcamp.org/\">WordCamp Spain online </a>from May 6 to 9, which proved to be a huge success. The event had more than 5,500 attendees, 60 speakers, and 16 sponsors. Over 200 people from around the world participated in the <a href=\"https://2020.spain.wordcamp.org/2020/05/14/asi-fue-contributor-day/\">Contributor Day</a>. Matt Mullenweg <a href=\"https://wordpress.tv/2020/05/09/matias-ventura-matt-mullenweg-matt-y-wordpress/\">hosted an AMA for the participants</a>, facilitated by Mattias Ventura�s on-the-spot Spanish translation.&nbsp;</p>



<p>If you missed the event, you can watch<a href=\"https://wordpress.tv/event/wordcamp-spain-2020/\"> videos from WordCamp Spain online at WordPress.TV</a>. Want to organize a regional WordCamp? <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Learn more about that here</a>!</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>WordPress <a href=\"https://ma.tt/2020/05/celebrate-seventeen/\">celebrated its 17th anniversary</a> on May 27, 2020! WordPress lovers all across the world <a href=\"https://twitter.com/hashtag/WP17?src=hashtag_click\">participated in online meetups</a> to celebrate the 17th birthday of their favorite open-source software.&nbsp;</li><li>The WordCamp Asia team has published <a href=\"https://2021.asia.wordcamp.org/2020/05/11/wordcamp-asia-2021-call-for-organisers/\">a call for organizers</a> for the January 2021 event &#8212; the call will close on June 8.</li><li>PHP and core version checks are coming into WordPress. This feature will prevent end-users from installing or activating a theme that is incompatible with their current version of PHP or WordPress. The change that has <a href=\"https://core.trac.wordpress.org/changeset/47819\">already been merged to core</a> is slated to land in WordPress 5.5.</li><li>The 2020 WordPress release squads <a href=\"https://make.wordpress.org/core/2020/05/29/2020-wordpress-release-squads/\">have been announced</a>.</li><li>Don�t forget that <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">WordCamp Europe Online</a> is happening on June 4-6, 2020.</li></ul>



<p><em>Have a story that we should include in the next �Month in WordPress� post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jun 2020 07:36:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: WordPress Names 5.5 Release Leads, Plans All-Women Release Squad for 5.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100256\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:207:\"https://wptavern.com/wordpress-names-5-5-release-leads-plans-all-women-release-squad-for-5-6?utm_source=rss&utm_medium=rss&utm_campaign=wordpress-names-5-5-release-leads-plans-all-women-release-squad-for-5-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2828:\"<p>WordPress&rsquo; Executive Director, Josepha Haden, <a href=\"https://make.wordpress.org/core/2020/05/29/2020-wordpress-release-squads/\">announced</a> the names of the leaders who will be coordinating releases for the remainder of 2020. Version 5.5, expected to be released in August, will be led by Matt Mullenweg, with Jake Spurlock as the coordinator and David Baumwald on Triage. Haden also named tech and design leads for the editor, media, accessibility, and documentation. This release is set to introduce automatic updates for plugins and themes in core. It will also add the Navigation block and block directory to core.</p>



<p>In November 2019, Haden tweeted that one of her goals was to put together an all-women release squad by the end of 2020, an idea that was well-received by the community. Although WordPress has already had women lead releases, the realization of this idea would be the first time in the project&rsquo;s 17-year history that the entire squad is composed of women leaders. Haden began recruiting for the team in March.</p>



<div class=\"wp-block-embed__wrapper\">
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">I have a stretch goal of an all women release squad by the end of 2020.</p>&mdash; Josepha Haden (@JosephaHaden) <a href=\"https://twitter.com/JosephaHaden/status/1194431234245447680?ref_src=twsrc%5Etfw\">November 13, 2019</a></blockquote>
</div>



<p>&ldquo;My hope is that with a release squad comprised entirely of people who identify as women, we&rsquo;ll be able to increase the number women who have that experience and (hopefully) become returning contributors to&nbsp;Core&nbsp;and elsewhere,&rdquo; Haden said in her initial <a href=\"https://make.wordpress.org/core/2020/03/11/all-women-release-squad/\">proposal</a>. &ldquo;This doesn&rsquo;t mean the release will only contain contributions from women. And if our current squad training process is any indication, it also doesn&rsquo;t mean that we&rsquo;re asking a squad to show up and do this without support.&rdquo;</p>



<p>Last Friday, Haden named 50 women to the upcoming 5.6 <a href=\"https://make.wordpress.org/core/2020/03/11/all-women-release-squad/\">all-women release squad</a>, set to land in December 2020. This group includes women who have volunteered to participate, first by joining a &ldquo;ride along&rdquo; process for the 5.5 release cycle. Participants will join triage sessions and meetings, as well as collaborate on a 5.5.x point release in preparation for steering 5.6. </p>



<p>The <a href=\"https://make.wordpress.org/updates/2020/03/06/update-progress-on-goals/\">proposed scope for WordPress 5.6</a> includes opt-in automatic updates for major core releases, full-site editing in core, a new default theme, and more. Squad leaders will be named in a separate kickoff post.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jun 2020 20:33:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Ajay D�Souza Releases Popular Authors Add-On for Top 10 Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100259\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"https://wptavern.com/ajay-dsouza-releases-popular-authors-add-on-for-top-10-plugin?utm_source=rss&utm_medium=rss&utm_campaign=ajay-dsouza-releases-popular-authors-add-on-for-top-10-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5759:\"<p class=\"has-drop-cap\">Ajay D&rsquo;Souza <a href=\"https://webberzone.com/blog/launching-popular-authors-wordpress-plugin/\">released the Popular Authors</a> plugin last week, which is designed to display authors by the number of post views they have reached. It is an add-on for his <a href=\"https://wordpress.org/plugins/top-10/\">Top 10</a> plugin and uses the underlying data to build the popular authors list. Websites with multiple authors could use it to provide further insight into what its visitors should read.</p>



<p>The Top 10 parent plugin is a page-view tracker and allows end-users to display popular posts. However, it also has the potential to serve as a framework for tracking or displaying various WordPress elements by popularity. For example, a developer could build a popular category plugin to show categories with the most-viewed posts. Top 10 includes an API for developers to build upon its data collection, which is what D&rsquo;Souza has done with the <a href=\"https://wordpress.org/plugins/popular-authors/\">Popular Authors</a> plugin.</p>



<p>The version 1.0 release of Popular Authors is relatively basic. It provides the bare-bones features that are necessary for outputting a simple list of links. The plugin works well enough to provide a solution for users who need an easy way of displaying author popularity.</p>



<p>Both Popular Authors and Top 10 are alternatives to collecting view counts without relying on major companies or possibly running afoul of data tracking laws. All of the data is stored directly in the WordPress database. No personal data of visitors is collected. Both plugins should be compliant with the GDPR and other privacy-related regulations and laws. However, because the data is stored directly on the site as opposed to offloading it to a third party, it will use more resources to save that data on each page load. This is a minimal cost for most.</p>



<h2>How the Plugin Works</h2>



<img />Adding the Popular Authors widget to a footer sidebar.



<p class=\"has-drop-cap\">Using Popular Authors should be simple for the average user. The plugin provides a widget named &ldquo;Popular Authors&rdquo; and a <code>[wzpa_popular_authors]</code> shortcode. Both methods of outputting the popular list offer several configuration options.</p>



<p>When installed and activated, the plugin gathers the data collected by the Top 10 parent plugin and sorts that data by post author. The primary options for both the widget and shortcode are the following:</p>



<ul><li>The number of authors.</li><li>Offset (i.e., skip) authors at the top of the list.</li><li>Whether to display the post view count.</li><li>Popularity within a time range, which can be further configured by days and hours.</li></ul>



<p>The time range option is arguably the most important. Without setting it, authors are sorted by all-time post views. Depending on the site, all-time data may not be representative of current popularity. Setting this option to use a more recent timeframe will sort authors more accurately on their recent posts.</p>



<p>The shortcode has far more options for configuring its output. For users who need extra control, they will likely find it more flexible than the widget. The <a href=\"https://webberzone.com/support/knowledgebase/popular-authors-shortcode/\">shortcode documentation</a> lists all of the available parameters.</p>



<p>It is worth noting that by installing the Top 10 parent plugin, it will add two extra database tables to your site named <code>*_top_ten</code> and <code>*_top_ten_daily</code>. This is necessary for data collection.</p>



<h2>Future Plans and Features</h2>



<p class=\"has-drop-cap\">While the current 1.0 version of the plugin is basic, D&rsquo;Souza has plans to build upon this foundation in upcoming versions. Right now, he is  taking it one step at a time and listening to feedback from users.</p>



<p>In upcoming versions of the plugin, he plans to add a global settings page that allows users to set up defaults for how the plugin outputs its widget and shortcode. Currently, they must set display options on a case-by-case basis. &ldquo;From experience, regular users prefer a place they can set and forget global options,&rdquo; he said.</p>



<p>D&rsquo;Souza wants to provide users with improved display options. The popular list currently outputs a text-based list. However, the goal is to allow users to show an author avatar and possibly expose a grid-based display.</p>



<p>A couple of versions down the road, he hopes to have a block that is on par with the widget and shortcode. He is also researching how he could add support for the <a href=\"https://wordpress.org/plugins/co-authors-plus/\">Co-Authors Plus</a> plugin so that post views are counted toward all authors of any given post. Both of these features are slated for the eventual version 1.2 release. For version 1.3, he plans to have REST API endpoints for fetching the top authors list.</p>



<p>&ldquo;I&rsquo;m still working out other features, but again very open to receive feedback,&rdquo; said D&rsquo;Souza.  &ldquo;A lot depends on the take-up of this plugin.&rdquo;</p>



<p>Most of these features will be follow-ups to work that is going into version 3.0 of the Top 10 parent plugin. D&rsquo;Souza has some major changes in the works. &ldquo;This will include the Gutenberg block to display the top posts with several configuration settings similar to the shortcode,&rdquo; he said. &ldquo;Another feature is to also introduce the REST API endpoints for getting the top posts. Plus, I&rsquo;m also experimenting with how I can use it to update the count which is currently through Ajax. The latter is the more challenging part I believe.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jun 2020 20:28:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: Stream Like a CEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=51324\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://ma.tt/2020/05/ceo-video-streaming/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9289:\"<div class=\"wp-block-embed__wrapper\">

</div>



<p><a href=\"https://www.youtube.com/watch?v=iyFT8qXcOrM\">When Bill Gates was on Trevor Noah&#8217;s show it was amazing how much better quality his video was</a>. I had experimented with using a Sony camera and capture card for the virtual event we did in February when WordCamp Asia was canceled, but that Trevor Noah video and <a href=\"https://twitter.com/garrytan/status/1238506101642907649\">exchanging some tweets with Garry Tan</a> sent me down a bit of a rabbit hole, even <a href=\"https://www.theinformation.com/articles/how-to-zoom-like-a-ceo\">after I was on-record with The Information saying a simpler setup is better</a>.</p>



<p>The quality improved, however something was still missing: I felt like I wasn&#8217;t connecting with the person on the other side. When I reviewed recordings, especially for major broadcasts, my eyes kept looking at the person on the screen rather than looking at the camera.</p>



<p><a href=\"https://www.fastcompany.com/1663105/errol-morriss-secret-weapon-for-unsettling-interviews-the-interrotron\">Then I came across this article about the Interrotron</a>, a teleprompter-like device Errol Morris would use to make his Oscar-winning documentaries. Now we&#8217;re onto something!</p>



<img /><a href=\"http://www.whiterabbitdesigncompany.com/interrotron.html\">Illustration by Steve Hardie</a>



<p>For normal video conferencing a setup this nice is a distraction, but if you&#8217;re running for political office during a quarantine, a public company CEO talking to colleagues and the press, here&#8217;s a cost-is-no-object CEO livestreaming kit you can set up pretty easily at home.</p>



<h2>GEAR GUIDE </h2>



<div class=\"wp-block-columns\">
<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B07K3FN5MR/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B07K3FN5MR/?tag=photomatt08-20\">Elgato Cam Link 4K</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B06WWQ7KLV/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B06WWQ7KLV/?tag=photomatt08-20\">Micro HDMI Cable</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B00YC3BJKQ/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B00YC3BJKQ/?tag=photomatt08-20\">Retractable 3.5mm audio cable</a></p>
</div>
</div>



<div class=\"wp-block-columns\">
<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B082QHRZFW/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B082QHRZFW/?tag=photomatt08-20\"></a><a href=\"https://www.amazon.com/gp/product/B082QHRZFW/?tag=photomatt08-20\">Elgato Key Light Air LED panel</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/dp/B019H3B2DE/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/dp/B019H3B2DE/?tag=photomatt08-20\"></a><a href=\"https://www.amazon.com/dp/B019H3B2DE/?tag=photomatt08-20\">Ikan Elite Generation 2 Universal Large Tablet Teleprompter</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B07VHRP9RL/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B07VHRP9RL/?tag=photomatt08-20\">ECM-B1M Shotgun Microphone</a></p>
</div>
</div>



<div class=\"wp-block-columns\">
<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B07VGHW91J/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B07VGHW91J/?tag=photomatt08-20\"></a><a href=\"https://www.amazon.com/gp/product/B07VGHW91J/?tag=photomatt08-20\">Sony ?7R IV Camera</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B071LHLS11/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B071LHLS11/?tag=photomatt08-20\"></a><a href=\"https://www.amazon.com/gp/product/B071LHLS11/?tag=photomatt08-20\">Sony &#8211; FE 16-35mm F2.8 GM Wide-angle Zoom Lens</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://pro.ultimateears.com/ue-18-flagship-custom-iem.html\"><img /></a>



<p><a href=\"https://pro.ultimateears.com/ue-18-flagship-custom-iem.html\"></a><a href=\"https://pro.ultimateears.com/ue-18-flagship-custom-iem.html\">Ultimate Ears UE 18+ Pro: In-ear monitors</a></p>
</div>
</div>



<div class=\"wp-block-columns\">
<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B07D5V8KY5/?tag=photomatt08-20\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B07D5V8KY5/?tag=photomatt08-20\"></a><a href=\"https://www.amazon.com/gp/product/B07D5V8KY5/?tag=photomatt08-20\">Gonine NP-FZ100 AC Power Adapter</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B00MT0SKAQ/\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B00MT0SKAQ/\">Reticam mini tripod</a></p>
</div>



<div class=\"wp-block-column\">
<a href=\"https://www.amazon.com/gp/product/B07K8JLR4C/\"><img /></a>



<p><a href=\"https://www.amazon.com/gp/product/B07K8JLR4C/\">13&#8243; portable monitor</a></p>
</div>
</div>



<p>Basically what you do is put the A7r camera, shotgun mic, and the lens together and switch it to video mode, go to Setup 3, choose HDMI settings, and turn HDMI Info Display off �&nbsp;this gives you a &#8220;clean&#8221; video output from the camera. You can run off the built-in battery for a few hours, but the Gonine virtual battery above lets you power the camera indefinitely. Plug the HDMI from the camera to the USB Camlink, then plug that into your computer. Now you have the most beautiful webcam you&#8217;ve ever seen, and you can use the Camlink as both a video source and an audio source using the shotgun mic. Put the Key Light wherever it looks best. You&#8217;re fine to record something now.</p>



<p>If you&#8217;d like to have a more two-way conversation Interrotron style, set up the teleprompter on the tripod, put the camera behind it, connect the portable monitor to your computer (I did HMDI to a Mac Mini) and &#8220;mirror&#8221; your display to it. (<a href=\"https://support.apple.com/en-us/HT210380\">You can also use an iPad and Sidecar for that</a>.) Now you&#8217;ll have a reversed copy of your screen on the teleprompter mirror. I like to put the video of the person I&#8217;m talking to right over the lens, so near the bottom of my screen, and voil�! You now have great eye contact with the person you&#8217;re talking to. The only thing I haven&#8217;t been able to figure out is how to horizontally flip the screen in MacOS so all the text isn&#8217;t backward in the mirror reflection. For audio I usually just <a href=\"https://ma.tt/2020/03/dont-mute-get-a-better-headset/\">use a headset at this point</a>, but if you want to not have a headset in the shot&#8230;</p>



<p>Use a discreet earbud. I love <a href=\"https://pro.ultimateears.com/ue-18-flagship-custom-iem.html\">in-ear monitors from Ultimate Ears</a>, so you can put one of these in and run the cable down the back of your shirt, and I use a little audio extender cable to easily reach the computer&#8217;s 3.5mm audio port. This is &#8220;extra&#8221; as the kids say and it may be tricky to get an ear molding taken during a pandemic. For the mic I use the audio feed from the Camlink, run through <a href=\"https://krisp.ai/\">Krisp.ai</a> if there is ambient noise, and it works great (except in the video above where it looks a few frames off and I can&#8217;t figure out why. On Zoom it seems totally normal).</p>



<p>Here&#8217;s what the setup looks like all put together:</p>



<img />



<p>After that photo was taken I got <a href=\"https://www.apple.com/shop/product/HLXK2LL/A/innovelis-totalmount-pro-mounting-system-for-mac-mini\">a Mac Mini mount</a> and put the computer under the desk, which is much cleaner and quieter, but used this earlier photo so you could see everything plugged in. When you run this off a laptop its fan can get really loud.</p>



<p>Again, not the most practical for day to day meetings, but if you&#8217;re doing prominent remote streaming appearances�or if your child is an aspiring YouTube star�that&#8217;s how you can spend ~9k USD going all-out. You could drop about half the cost with only a minor drop in quality switching the camera and lens to a <a href=\"https://www.amazon.com/gp/product/B07VPQV7BY/\">Sony RX100 VII</a> and a <a href=\"https://www.amazon.com/Nikon-ME-1-Stereo-Microphone-Supplied/dp/B004V6BQ3O\">small 3.5mm shotgun mic</a>, and that&#8217;s probably what I&#8217;ll use if I ever start traveling again.</p>



<p>If I were to put together a livestreaming &#8220;hierarchy of needs,&#8221; it would be:</p>



<ol><li>Solid internet connection (the most important thing, <a href=\"https://www.complex.com/music/2020/05/nelly-ludacris-verzuz-battle-twitter-reactions\">always</a>)</li><li>Audio (headset mic or better)</li><li>Lighting (we need to see you, naturally)</li><li>Webcam (video quality)</li></ol>



<p>We&#8217;ve put together a <a href=\"https://distributed.blog/tools/\">Guide to Distributed Work Tools here</a>, which includes a lot of great equipment recommendations for day-to-day video meetings.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 May 2020 23:54:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"WPTavern: Gutenberg 8.2 Includes Editing Flow Improvements, Cover Block Content Positioning, and Pattern Categories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100178\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:271:\"https://wptavern.com/gutenberg-8-2-includes-editing-flow-improvements-cover-block-content-positioning-and-pattern-categories?utm_source=rss&utm_medium=rss&utm_campaign=gutenberg-8-2-includes-editing-flow-improvements-cover-block-content-positioning-and-pattern-categories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7394:\"<p class=\"has-drop-cap\">On Wednesday, the development team behind Gutenberg <a href=\"https://make.wordpress.org/core/2020/05/27/whats-new-in-gutenberg-27-may/\">dropped version 8.2</a> of the plugin. The new release focuses on a better editing flow, includes a new content positioning control for the Cover block, and adds categories to block patterns.</p>



<p>With this release, users can <a href=\"https://github.com/WordPress/gutenberg/pull/22186\">copy an entire block</a> via the <code>Ctrl</code> + <code>C</code> keyboard shortcut or cut a block with <code>Ctrl</code> + <code>X</code> if no specific text is selected. The snackbar popup will appear at the bottom of the screen to show which block was copied.</p>



<p>Hitting the <code>Enter</code> key while <a href=\"https://github.com/WordPress/gutenberg/pull/22290\">editing an image caption</a> will create a new paragraph. For situations where a user wants to continue writing after inserting an image and caption, this is probably a welcome addition. However, it could be a problem for users who need to have multi-line captions &mdash; I am uncertain how to add a line break in a caption with this change.</p>



<p>Gutenberg 8.2 includes several other enhancements, such as <a href=\"https://github.com/WordPress/gutenberg/pull/22521\">limiting the most-used blocks</a> in the inserter to six items. Individual buttons within the Buttons block can be <a href=\"https://github.com/WordPress/gutenberg/pull/22436\">split into two buttons</a> by hitting the <code>Enter</code> key or merged by hitting the <code>Backspace</code> key. Users can also test two new block patterns. One adds a <a href=\"https://github.com/WordPress/gutenberg/pull/21130\">hero section with two columns</a> beneath. The other adds a three-column <a href=\"https://github.com/WordPress/gutenberg/pull/20898\">features/services section</a>.</p>



<p>Overall, this is a solid update with numerous enhancements and bug fixes. The editing flow changes are nice improvements, and the new Cover block positioning and Patterns API updates are welcome additions to the editor.</p>



<h2>Content Positioning for the Cover Block</h2>



<img />



<p class=\"has-drop-cap\">The Gutenberg team has created a <a href=\"https://github.com/WordPress/gutenberg/pull/21091\">new alignment control</a> that allows end-users to position the content within the Cover block. I have been waiting for this feature for at least a year after first seeing it mentioned as a possibility in an unrelated ticket.</p>



<p>The new positioning feature adds a <em>matrix</em> control with nine positions the user can choose from. Once a position is chosen, the inner content of the Cover block will move to that location. It is important to note that some content will not look like it has changed position if the Cover block is full. The inner container&rsquo;s width is set to auto, which means the content inside may already be taking up all the available space. Alignment is more pronounced in Cover blocks with less content inside.</p>



<p>Sure, it was possible to align inner blocks individually in past versions of the plugin. However, it was also sometimes a bit of pain to do on the block level. This new control brings a new level of flexibility to the Cover block.</p>



<p>Theme authors will need to update the CSS in their themes to handle the new positioning classes. There does not seem to be any official documentation for styling these classes, so looking at the <a href=\"https://github.com/WordPress/gutenberg/blob/master/packages/block-library/src/cover/style.scss\">source code</a> is the best course of action. The classes are as follows:</p>



<p><code>.has-custom-content-position</code><br /><code>.is-position-top-left</code><br /><code>.is-position-top-center</code><br /><code>.is-position-top-right</code><br /><code>.is-position-center-left</code><br /><code>.is-position-center-center</code><br /><code>.is-position-center-right</code><br /><code>.is-position-bottom-left</code><br /><code>.is-position-bottom-center</code><br /><code>.is-position-bottom-right</code></p>



<p>It will also be interesting to see what plugin developers do with the new <a href=\"https://github.com/WordPress/gutenberg/blob/master/packages/components/src/alignment-matrix-control/README.md\">AlignMatrixControl component</a> for their own blocks. This component is used for handling the inner block alignment of the Cover block, but it should be easy to extend to other blocks that could also use such alignment.</p>



<h2>Categories for Patterns</h2>



<img />



<p class=\"has-drop-cap\">Gutenberg 8.2 has nearly ticked all my boxes for the Patterns API. The newest release adds support for <a href=\"https://github.com/WordPress/gutenberg/pull/22164\">categorizing patterns</a>. Currently, the default interface shows the following seven categories:</p>



<ul><li>Text</li><li>Hero</li><li>Columns</li><li>Buttons</li><li>Gallery</li><li>Features</li><li>Testimonials</li></ul>



<p>There is also an &ldquo;Uncategorized&rdquo; section at the bottom of the inserter, but it is not technically a category. It merely houses any patterns that have not been categorized.</p>



<p>Theme and plugin authors now have access to the <code>register_block_pattern_category()</code> and <code>unregister_block_pattern_category()</code> functions to register or unregister patterns, respectively. Categories can be assigned to a specific block via the new <code>categories</code> argument. More information is available via the <a href=\"https://developer.wordpress.org/block-editor/developers/block-api/block-patterns/\">Patterns API documentation</a>.</p>



<p>Patterns can be assigned one or multiple categories. Therefore, users may see duplicates of some patterns in the inserter. This is one reason I am holding out hope for the team to bring the tabbed interface or something similar back to the inserter. With categories, that should now be possible for both blocks and patterns. At the moment, my library of patterns is becoming unwieldy.</p>



<p>Slash commands for patterns are still on my wish list, which may cancel the need for a tabbed inserter interface.</p>



<h2>Block Widgets Almost Ready</h2>



<img />



<p class=\"has-drop-cap\">In <a href=\"https://make.wordpress.org/core/2020/05/27/editor-chat-summary-27th-may-2020/\">this week&rsquo;s editor chat</a>, the team discussed the possibility of bringing the new Widgets screen out of the experimental stage. If this happens before July 7, it could mean users might be able to start configuring their sidebars with blocks as early as WordPress 5.5. This is not set in stone yet, but it is exciting to start seeing blocks truly break out of the post content area.</p>



<p>For the most part, the block-based widgets system works well. It does not yet feel as polished as it should be for merging into core WordPress. However, if the team pushes through any remaining roadblocks in the next month, it is within the realm of possibility. I have my doubts, but we&rsquo;ll see where this lands soon.</p>



<p>Now is a good time for end-users to begin testing the experimental widgets via both the &ldquo;Widgets (beta)&rdquo; admin screen and the &ldquo;Widgets Blocks (Experimental)&rdquo; customizer panel. To test this feature, enable the Widgets option under the Experiments settings page for the Gutenberg plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 May 2020 20:48:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Google Search to Introduce New Page Experience Ranking Signal in 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100182\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:203:\"https://wptavern.com/google-search-to-introduce-new-page-experience-ranking-signal-in-2021?utm_source=rss&utm_medium=rss&utm_campaign=google-search-to-introduce-new-page-experience-ranking-signal-in-2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3459:\"<p>Google is preparing to <a href=\"https://webmasters.googleblog.com/2020/05/evaluating-page-experience.html\">introduce a new ranking signal</a> for Search, based on page experience as measured by <a href=\"https://web.dev/vitals/#core-web-vitals\">Core Web Vitals</a> metrics. This includes factors like page speed, responsiveness, and the stability of content as it loads. The upcoming update will combine these signals with previously announced UX-related signals for mobile-friendliness, safe browsing, HTTPS security, and intrusive interstitials.</p>



<p>Google is also updating its requirements for the Top Stories feature. It will no longer be limited to AMP pages &ndash; any content will be eligible: </p>



<blockquote class=\"wp-block-quote\"><p>As part of this update, we&rsquo;ll also incorporate the page experience metrics into our ranking criteria for the Top Stories feature in Search on mobile, and remove the AMP requirement from Top Stories eligibility. Google continues to support AMP, and will continue to link to AMP pages when available. We&rsquo;ve also updated our developer tools to help site owners optimize their page experience.</p></blockquote>



<p>Mobile friendliness, HTTPS, and other UX signals listed in this update have long been included in best practices for WordPress sites. The Core Web Vitals items are a newer area that site owners will want to dig into when preparing for the new page experience signal. </p>



<img />



<p>Measuring things like the unexpected layout shift of visible page content and the experience users get when first interacting with a page are not easy. In anticipation of this ranking signal update, Google has <a href=\"https://web.dev/vitals-tools/\">updated</a> the Lighthouse and PageSpeed Insights tools to give information and recommendations on a site&rsquo;s Core Web Vitals. Google Search Console also provides a dedicated <a href=\"https://support.google.com/webmasters/answer/9205520\">report</a>, and developers can also get more information from <a href=\"https://developers.google.com/web/tools/chrome-devtools\">Chrome DevTools</a>, <a href=\"https://web.dev/measure/\">web.dev&rsquo;s measure tool</a>, and the <a href=\"https://chrome.google.com/webstore/detail/web-vitals/ahfhijdlegdabablpippeagghigmibma\">Web Vitals Chrome extension</a>. There are also several WordPress plugins that incorporate some of these tools, notably <a href=\"https://wordpress.org/plugins/google-site-kit/\">Site Kit by Google</a> and <a href=\"https://wordpress.org/plugins/google-pagespeed-insights/\">Google Pagespeed Insights</a>.</p>



<p>While this is a major change to ranking, Google noted that it will still prioritize pages with the best information overall. Better page experience scores will help a site rank better among multiple pages with similar content.  </p>



<p>Developers who focus on delivering a high quality user experience <a href=\"https://twitter.com/YiannisKrinelos/status/1266049407218302977\">reacted</a> positively to Google&rsquo;s announcement, since this means that UX work is getting validated as a valuable aspect of a site&rsquo;s ranking. </p>



<p>Google plans to put the ranking changes into place sometime in 2021 and will provide at least six months notice before rolling out the update. This will give site owners time to improve their scores on the various page experience metrics. The company also plans to add more page experience signals on a yearly basis.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 May 2020 18:47:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: WooCommerce Is Testing a Block-based Cart and Checkout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100106\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:173:\"https://wptavern.com/woocommerce-is-testing-a-block-based-cart-and-checkout?utm_source=rss&utm_medium=rss&utm_campaign=woocommerce-is-testing-a-block-based-cart-and-checkout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2884:\"<p>As part of an ongoing initiative to convert the plugin&rsquo;s existing shortcodes to blocks, WooCommerce core developers are testing a new block-based cart and checkout experience. This major architectural change has also been redesigned to improve conversion rates for stores. </p>



<p>An initial preview release of the blocks can be tested using the WooCommerce Blocks feature plugin <a href=\"https://woocommerce.wordpress.com/2020/05/27/woocommerce-blocks-2-6-0-release-notes/\">version 2.6.0</a>, which was released yesterday. WooCommerce designer Gary Murray shared screenshots of the new design inside the editor, where store owners can now manipulate a live preview of the cart. It automatically loads demo products in the preview and users can switch between the full cart and the empty cart states.</p>



<img />Cart block



<p>So far, the block settings for the full cart include the option to hide/show the shipping calculator and hide shipping costs until an address is entered. The empty state allows users to do things like change the size of the empty cart icon or replace it with a custom image, edit the &ldquo;continue shopping&rdquo; text, and add more blocks.</p>



<p>Store owners can also preview the entire checkout form in the editor, allowing them to immediately see how any settings changes affect the checkout process.</p>



<p>&ldquo;In some areas we have made incremental improvements (like the cart) while the checkout sees much bigger changes,&rdquo; Murray said. &ldquo;Alongside these design changes we have also started the initial &lsquo;migration&rsquo; of core cart and checkout settings to block settings and have also included a few new features within the block settings to give merchants more &lsquo;direct&rsquo; control of their stores checkout experience.&rdquo;</p>



<p>One of the major benefits of the new blocks is that it instantly gives store owners more customization options. This is much more user-friendly than the prospect of having to customize specific theme templates for the cart and checkout pages. This implementation of blocks in WooCommerce is another reminder of the magic of blocks to put more power in the hands of users.</p>



<p>The blocks currently support only the following payment methods: Stripe Payment Request (ApplePay, ChromePay), Stripe CC payment method, PayPal Standard, or Cheque. They also do not yet support third-party plugins that integrate with regular cart and checkout shortcodes. The WooCommerce core team is working on making these blocks more extensible but developers should still consider them as being in the experimental stage for now. Check out the <a href=\"https://woocommerce.wordpress.com/2020/05/27/available-for-testing-a-block-based-woocommerce-cart-and-checkout/\">initial preview announcement</a> for more information on how to test the new cart and checkout blocks.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 May 2020 21:47:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: GretaThemes Releases Lightweight, Block-Ready eStar WordPress Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100080\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://wptavern.com/gretathemes-releases-lightweight-block-ready-estar-wordpress-theme?utm_source=rss&utm_medium=rss&utm_campaign=gretathemes-releases-lightweight-block-ready-estar-wordpress-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7587:\"<img />



<p class=\"has-drop-cap\">GretaThemes launched its <a href=\"https://wordpress.org/themes/estar/\">eStar theme</a> yesterday. The team&rsquo;s goal was to build a lightweight theme that focused on the block editor. However, it works alongside other page builders such as Elementor, Beaver Builder, and more.</p>



<p>GretaThemes is a project of eLightUp, which is the same company behind the popular Meta Box framework, WP Auto Listings, and FitWP. The site&rsquo;s focus is on selling WordPress themes, many of which are pro versions of its free theme offerings. For now, eStar is merely a free theme with no direct commercial upsells.</p>



<p>eStar is promoted as a multipurpose theme that is suitable for various types of sites. In my tests, I found it to be best designed for businesses that need a clean and professional look. However, with enough tweaks via its numerous customizer options, end-users can get a lot of mileage out of this theme.</p>



<p>With gzipping enabled, the theme&rsquo;s scripts and styles add less than 10 kb of data to the page load. That is reasonably lightweight and should result in a speedy website, assuming nothing else causes issues.</p>



<p>The theme recommends and integrates with the <a href=\"https://wordpress.org/plugins/meta-box/\">Meta Box</a> and <a href=\"https://wordpress.org/plugins/erocket/\">eRocket</a> plugins, both of which are available for free in the WordPress plugin directory. The Meta Box integration will add extra per-post settings, which are primarily related to the layout on the front end. These can be configured globally in the customizer. The plugin integration merely provides the ability to do so on the per-post level. The eRocket plugin adds a contact info and recent posts widget along with social sharing buttons. The eStar theme has additional styles for making these fit into the design on the front end.</p>



<p>eStar ticks many of the boxes that would make it a great go-to option for people who need a reliable theme that supports the block editor. It does not push any artistic boundaries. It is not the type of theme that has an incredible <em>wow</em> factor. It is simply a solid offering that gives users a lot of freedom to take an almost boring default configuration and turn it into something special with a mix of font and color options.</p>



<p>Check out the <a href=\"https://demo.gretathemes.com/estar/\">eStar theme demo</a> for a picture of what the theme looks like.</p>



<h2>Build Landing Pages Like a Pro</h2>



<img />eStar theme landing page.



<p class=\"has-drop-cap\">The GretaThemes team has designed eStar to get out of the way for users who want to build full pages with either the block editor or a third-party page builder. It offers several post and page templates as a starting point:</p>



<ul><li><strong>Blank Canvas:</strong> Displays only the post content.</li><li><strong>Narrow Content:</strong> Shows the header, footer, and post content, which is in a narrow column in the center of the page.</li><li><strong>Full Width:</strong> Shows the header, footer, and post content, which stretches across the page.</li><li><strong>Wide Content:</strong> Shows the header, footer, and post content, which stretches across the page.</li></ul>



<p>No, there is no typo or copy/paste mistake for those final two templates in the preceding list. There seems to be no difference between the Full Width and Wide Content templates. I am unsure why both are included, except to wonder if one or the other is there for backward compatibility with other themes.</p>



<p>What makes the theme great at building landing pages is not its four custom templates. Those are nice additions that provide an open canvas. However, it is the theme&rsquo;s block styling that provides the customizability to build these landing pages. Its block styles will not blow you away with unique design takes. They simply work.</p>



<p>The one thing that would bring this theme to the next level would be the addition of custom patterns. The Patterns API is not available in core WordPress yet, but it will likely land this year. Now is a good time for the team to get on top of this feature, even if it is a part of a commercial offering.</p>



<h2>How Does the Theme Handle Blogging?</h2>



<img />Single post view with custom options selected.



<p>The theme markets itself as suitable for blogging. However, it falls short of being a great blogging theme with the default configuration. For long-form content, single posts have far too many characters per line for comfortable reading. For short, media-rich blog posts, it would work well.</p>



<p>To get the most out of eStar as a blogger, users will need to make some adjustments. Fortunately, this is one area in which the theme shines. It provides a slew of customizer options that provide enough flexibility to make it work. By heading to the Fonts section in the customizer and bumping up the Font Size in the Body section, it would transform the theme into something suitable for long-form content.</p>



<p>There are some other adjustments worth considering. If you routinely use the same image within post content as you do as a featured image, the theme will show that same image twice on single post views &mdash; a common issue in many themes. eStar does provide a customizer option to configure or disable the featured image on single posts. Using the featured image as the header background is also another useful option the theme provides and can make your posts stand out.</p>



<p>I also recommend disabling the sidebar for blog posts if you enjoy wide or full-width media. The theme&rsquo;s design stands out when it can make copious use of the page.</p>



<p>The biggest issue &mdash; and would be a deal-breaker for me if I could not code &mdash; is the theme adds a custom design to the first paragraph of the post content. The font-size is increased and given a light gray color. It is not easy to read. The theme should leave this bit of customization in the user&rsquo;s hands. WordPress provides block-level customization via the editor if the user needs to do something special with the intro paragraph.</p>



<p>I also recommend switching the archive layout to either grid card or grid, which is used in the theme&rsquo;s demo. The grid card option looks a little better and is a concept likely lifted from Tailwind&rsquo;s component documentation.</p>



<img />Grid Card layout option for archive pages.



<h2>Final Thoughts</h2>



<p>The theme is not without a few trivial issues. For example, the site title and description feel a little cramped. I would love to see some extra whitespace above and below it.</p>



<p>With the default configuration of the theme, I would recommend it to anyone who needs a solid design for a business website. By throwing in a custom logo and adjusting a couple of colors, the average end-user would have all they need to launch a business site. With the power of the block editor or a third-party page builder, costs to setting up shop would be minimal.</p>



<p>For people who do not mind a little legwork and need something better suited for blogging, the theme can handle it. It will simply take some minor customization to make the text a bit more readable.</p>



<p>Overall, it is nice to see another good option land in the official WordPress theme directory that caters to the block editor. I look forward to seeing what GretaThemes does in the future with its themes and hope to see other theme companies follow suit with block editor support.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 May 2020 20:47:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: New Carbon Offset Plugin Aims to Make WordPress Sites More Eco-Friendly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100058\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:207:\"https://wptavern.com/new-carbon-offset-plugin-aims-to-make-wordpress-sites-more-eco-friendly?utm_source=rss&utm_medium=rss&utm_campaign=new-carbon-offset-plugin-aims-to-make-wordpress-sites-more-eco-friendly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8114:\"<img />photo credit: <a href=\"https://stocksnap.io/photo/087EFF0277\">Valeriy Poltorak</a>



<p>As developers and internet users become increasingly aware of the CO2 footprint of their data usage, renewed interest in carbon offsetting programs has cropped up in recent years. These programs allow individuals and organizations to &ldquo;offset&rdquo; their carbon dioxide emissions by funding environmental endeavors, which range from planting trees to clean energy projects, with lots of variety in between.</p>



<p>Carbon offsetting schemes <a href=\"https://www.greenpeace.org.uk/news/the-biggest-problem-with-carbon-offsetting-is-that-it-doesnt-really-work/\">remain controversial</a>, as they do not actually directly cancel out emissions. The programs allow corporations to appear &ldquo;environmentally friendly&rdquo; with their contributions while continuing to burn fossil fuels. Ideally, corporations will work on both reducing their emissions and &ldquo;neutralizing&rdquo; the damage done with projects that renew the earth. </p>



<p>For web developers, awareness of your product&rsquo;s CO2 footprint is the first step, and carbon offsetting programs are usually fine-tuned to make this data relatable. This awareness is especially critical if the software you are building is used on millions of devices. <a href=\"https://aristath.github.io/\">Aris Stathopoulos</a>, a WordPress developer known best for authoring the <a href=\"https://w.org/plugins/kirki\">Kirki Customizer Framework</a>, has created a plugin called <a href=\"https://wordpress.org/plugins/carbon-offset/\">Carbon Offset</a> that calculates the greenhouse emissions from your website visits and integrates with the <a href=\"https://cloverly.com\">Cloverly</a> API for offsets and payments.</p>



<p>&ldquo;The internet is a huge machine consuming vast amounts of energy,&rdquo; Stathopoulos said. &ldquo;The whole chain from server farms to ISPs to client devices are usually powered by non-renewable sources of power. What really rang the &lsquo;danger&rsquo; bell in my mind was reading <a href=\"https://internethealthreport.org/2018/the-internet-uses-more-electricity-than/\">Mozilla&rsquo;s Internet-Health report</a> two years ago.</p>



<p>&ldquo;Since then I&rsquo;ve been trying to help make the web a bit more sustainable. Sometimes that means converting a script to vanilla JS, building a theme, or just talking to people about things they can do to make their site more performant and more eco-friendly/sustainable. Carbon Offset is my latest effort on that front.&rdquo;</p>



<p>The first version of the plugin includes a details page with the calculated impact of your site&rsquo;s carbon footprint, displayed next to the weight of the carbon offset. I could see this page evolving to be more visually compelling in the future. The settings page is where users can hook up their sites the Cloverly API.</p>



<img />



<p>Cloverly offers offsets on demand, which means that users fund clean energy for one of the <a href=\"https://dashboard.cloverly.com/offsets/\">projects</a> the company has selected. These include initiatives that do things like capture fugitive gas emissions, improve forest management, and convert methane from manure into renewable energy.</p>



<p>Browsing the WordPress.org plugin repository, it seems the platform only has a handful of plugins designed to raise users&rsquo; awareness about carbon emissions. The <a href=\"https://wordpress.org/plugins/website-carbon/\">Website Carbon</a> plugin gives users a broad overview of the impact of their site&rsquo;s emissions, including reporting on if the data center the site is hosted in is powered by renewable energy. <a href=\"https://wordpress.org/plugins/co2ok-for-woocommerce/\">CO2ok for WooCommerce</a> is another plugin that integrates with a service for purchasing offsets. </p>



<p>Stathopoulos wants to expand his plugin to integrate with additional services so that users have more choices in offsetting their websites&rsquo; carbon footprints.  He has no affiliation with Cloverly. He said the only reason he chose to integrate with it is because they have a great API that is easy to work with. He made his implementation extensible so that adding extra services will be easy when he finds another one with a good API.</p>



<h2>Breaking Website Owners Out of Complacency: Awareness Is the First Step Towards Reducing Emissions</h2>



<p> &ldquo;There are sites out there that <a href=\"https://www.websitecarbon.com/\">measure a site&rsquo;s carbon footprint</a> and they give an idea of how much carbon is generated whenever someone visits a webpage,&rdquo; Stathopoulos said. &ldquo;If you start testing websites you see some good, some bad and some shockingly costly. Take for example w.org: Each visit produces 0.68g of carbon emissions, and that&rsquo;s one of the good sites. NYTimes.com generates 3.2grams of carbon every time someone visits their site.&rdquo;</p>



<p> Stathopoulos wants to use his plugin to raise awareness among WordPress site owners, since the software is so widely used but oftentimes weighed down by third-party extensions.</p>



<p>&ldquo;With WordPress powering 30%+ of the web, we&rsquo;re talking about millions of daily views,&rdquo; he said. &ldquo;In the unlikely optimistic scenario that all of them generate no more than 0.5g per page-load, WP sites generate no less than 500 metric tons of carbon/day. This has nothing to do with WordPress. Instead it&rsquo;s about the 5MB image that the user wants on their frontpage, the fancy wiggling JS animation that requires that extra 5kb of JS, developers insisting on using jQuery in their themes and plugins, the unused 300kb of CSS that a site has, the Facebook widget, social sharing buttons than use 100kb of JS, or the horrendous use of images of text instead of plain text.</p>



<p>&ldquo;It&rsquo;s all data that gets downloaded every single time and each time it does, the server runs a few milliseconds more, the browser takes a few more milliseconds to render. It all adds up to wasted energy, energy that took real resources to generate and in the process of doing that, it generated some more carbon emissions.&rdquo;</p>



<p>It&rsquo;s easy for anyone to get complacent when the data usage seems to run on magic and doesn&rsquo;t immediately impact the site owner. Plugins like Carbon Offset aim to make wasted resources more of a reality. Stathopoulos is currently working to add e-commerce support that will allow customers to offset the carbon footprint of their purchases&rsquo; delivery, or even allow shop owners to fund the offset instead. He said this will usually amount to a few cents per sale, but it can make a meaningful impact if done on a large scale.</p>



<p>&ldquo;One of my hopes is that it will help increase sensitivity and awareness,&rdquo; Stathopoulos said. &ldquo;Hopefully, some people will understand that their website is part of the problem. Hopefully, it will urge them to rethink how they build their sites and want to be part of the solution &ndash; ideally by striving to lower the carbon emissions of our websites.</p>



<p>&ldquo;But since for various reasons that is not always possible, the plugin will show how much our website costs the environment, and some may choose to give something back.&rdquo;</p>



<p>Stathopoulos said that purchasing offsets was &ldquo;surprisingly cheap.&rdquo; He purchased offsets for 50kg of CO2 for approximately $4, and his website &lsquo;burns&rsquo; 0.2g/visit. </p>



<p>&ldquo;This means I&rsquo;m good for the next 2.5 million visits,&rdquo; he said. &ldquo;If my site was as heavy as the NYTimes, then that would buy me 15k views worth of damage to the environment, which would be a pretty good indication that I have to change some things on my site. </p>



<p>&ldquo;The cost is not the point. The point is being conscious about what we build, how much damage we do, and helping undo that damage as much as possible. After all, a sustainable website is a lot faster and more performant than a non-sustainable one. Everyone wins.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 May 2020 01:48:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WPTavern: Happy 17th, WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/happy-17th-wordpress?utm_source=rss&utm_medium=rss&utm_campaign=happy-17th-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4587:\"<img />



<p class=\"has-drop-cap\">Seventeen. It is almost a lost year between sweet 16 and the adulthood that comes along with 18. For many, 17 is a rebellious age when they feel like they have already reached grown-up status but still have some hard lessons to learn, some growing to do.  The past year of WordPress&rsquo;s life has felt much the same. Our community has worked and is still working through some rough patches. We are still learning. We are still growing. For better or worse, we are still coming together to build a better web.</p>



<p>By its next birthday, we should expect to see a much different WordPress. It will have grown from a simple blogging platform to nearly a full site builder. The community will likely stumble a few times as users and developers acquaint themselves with an evolving platform. With luck, we can work through most of the kinks before that day arrives. For now, we will need to suffer a bit through this messy teenage rebellion.</p>



<p>Teens often see the world differently than those of us well into adulthood do. We must be there to temper the worst ideas but encourage the hopes and dreams that accompany the vision of youth. It is this vision that will change the world. I expect no less from WordPress in the coming years.</p>



<p>Currently, WordPress powers <a href=\"https://w3techs.com/technologies/details/cm-wordpress\">36.7% of the top 10 million</a> websites. It has come a long way since its humble beginnings as the basic fork of B2/cafelog that Matt Mullenweg and Mike Little kick-started in 2003. It has brought online publishing to millions and provided careers for 1,000s &mdash; I have been blessed with a 12-year career thanks to WordPress.</p>



<p>The <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first official release of WordPress</a> landed on May 27, 2003. The platform included texturize (<em>so good it&rsquo;ll make your quotes curl</em>), a link manager for building blogrolls, improved automatic line breaks, manual excerpts, XHTML 1.1, new default templates, and a fresh admin interface. Needless to say, the software has changed since its first release &mdash; <em>can we make blogrolls cool again?</em></p>



<p>Perhaps the saddest part of WordPress&rsquo;s 17th birthday is that most of us cannot celebrate it together in person. No slices of birthday cake will be passed to WordCamp attendees. We cannot share a hug or a handshake. We cannot clink our glasses together in a toast. However, we can still celebrate in spirit.</p>



<p>In <a href=\"https://ma.tt/2020/05/celebrate-seventeen/\">Celebrate Seventeen</a>, Mullenweg urges the community to enjoy this day:</p>



<blockquote class=\"wp-block-quote\"><p>If you&rsquo;d like to celebrate with me, put on some jazz, eat some BBQ, light a candle for the contributors who have passed on, help a friend or stranger less technical than you build a home online, and remember that technology is at its best when it brings people together.</p></blockquote>



<p>My addition to his list would be to hop over to your WordPress website and write a blog post. It can be anything. Write in celebration of WordPress turning 17. Write about your children, cats, or dogs. Share your feelings surrounding the COVID-19 pandemic. Whatever it is, just write. The best celebration of WordPress is to use the platform to do the one thing it was meant to do 17 years ago &mdash; publish something on the web.</p>



<p>Then, take a moment to appreciate the ability that we have to share our thoughts with the world. WordPress represents the most important, inalienable right that all humans share &mdash; freedom of expression. It has provided an avenue for people all over the world to share their thoughts for 17 years. That is not something to be taken lightly. So, let today be a celebration, despite the rough patch the world is going through. Let today be a celebration, regardless of our weekly arguments about the project&rsquo;s future. Let today be a celebration of the people from all walks of life who have come together to build this amazing piece of software.</p>



<p>Most of all, take time to appreciate that we have an even brighter future to look forward to. WordPress may be a bit of a dinosaur in this fast-paced world of technological advancement, but it is not done yet. It may be going through a huge transitional phase at the moment, but we are not to the halfway point. We are just getting to the good stuff.</p>



<p>Buckle up. Look for the next 17 years to be an even wilder ride. I welcome the adventure.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 May 2020 19:53:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Matt: Celebrate Seventeen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=51577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://ma.tt/2020/05/celebrate-seventeen/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1158:\"<p>May 27th, 17 years ago, the first release of WordPress was put into the world by Mike Little and myself. It did not have an installer, upgrades, WYSIWYG editor (or hardly any Javascript), comment spam protection, clean permalinks, caching, widgets, themes, plugins, business model, or any funding.</p>



<p><em>The main feedback we got at the time was that the blogging software market was saturated and there wasn�t room or need for anything new.</em></p>



<p>WordPress did have a philosophy, an active blog, a license that protected the freedom of its users and developers, a love of typography, a belief that code is poetry, fantastic support forums and mailing lists and IRC, and firm sense that building software is more fun when you do it together as a community.</p>



<p>We have relentlessly iterated across 38 major releases since then, and here we are.</p>



<p>If you�d like to celebrate with me, put on some jazz, eat some BBQ, light a candle for the contributors who have passed on, help a friend or stranger less technical than you build a home online, and remember that technology is at its best when it brings people together.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 May 2020 15:48:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"HeroPress: How the WordPress community contributes to human development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:194:\"https://heropress.com/essays/how-the-wordpress-community-contributes-to-human-development/#utm_source=rss&utm_medium=rss&utm_campaign=how-the-wordpress-community-contributes-to-human-development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9273:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2020/05/052620-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordPress and the open-source community in general seem to reflect the �ubuntu� ethics.\" /><p><i>In the beginning WordPress being an �</i><a href=\"https://www.wpbeginner.com/glossary/open-source/\">open-source</a><i>� platform concept was only an idea by Matt Mullenweg that was supposed to gather people to contribute for free for a greater cause with no guaranteed success. The idea to gather people around a vague and non-profit cause would not have succeeded without the generosity of WordPress pioneers, believing in humanity and transferring their knowledge to others for free.</i></p>
<p><i>Nowadays, the WordPress community gathers millions of professionals worldwide.�</i></p>
<p><b><i>WordPress enthusiasts have changed the world we live in and contributed to human development from many aspects.</i></b></p>
<p><i>In the later text we will explain how contributing to WordPress would be considered contributing to humanity development, similar to �<a href=\"https://en.wikipedia.org/wiki/Ubuntu_philosophy\">ubuntu</a>� African philosophy.</i></p>
<p>&nbsp;</p>
<p>So, let�s start from the beginning.</p>
<p>Many socio-economic theorists condition the survival of humanity by their members� regular contribution. So, <a href=\"https://www.nature.com/articles/nnano.2015.317?error=cookies_not_supported&code=8c384729-1d47-488b-aa97-8908ba88d642\">physicists or chemists work jointly</a> as professional communities contributing to overall science development. Farmers work closely with the agricultural industry in finding the solution to resolve the issue of hunger worldwide, etc.</p>
<p>All those community members contribute in many different forms; either by revealing their discoveries to other members, or testing their new hypotheses. Sustainability and survival of communities depend on the contribution of their members.</p>
<p>Thanks to Internet development and its ease of access, breakthroughs in human development are just a click away from us.</p>
<p>As such, web designers and developers play an important role in numerous web data systematizations and content design of each website, enabling a wider global audience to find relevant information and apply those new discoveries in their activities.</p>
<p>Sometimes one-click localization is required, or a plugin/theme code change. Very often those requests� are repetitive and come from different territories, and this is where the WordPress community jumps in with their skills relevant to resolving those requests.</p>
<p>Roughly there are <a href=\"https://www.infoplease.com/askeds/how-many-spoken-languages\">6.500 different languages</a> in the world.� If there were no WP community efforts, each WordPress developer would have to localize or translate each plugin for themselves for instance. Just imagine the amount of time each of us would have had to spend in order to create a desired website.</p>
<p>WordPress group contributions save significant amount of time for #MakersOfTheWeb, assisting the global non-tech community to present their business or philanthropic achievements worldwide. Timely published information or findings could change people�s lives.</p>
<p>Deductive conclusion could be that efforts related to WordPress development are the direct assistance to human sustainable development.</p>
<h3>Time of crisis</h3>
<p>Nowadays more than ever, solidarity and compassion have become building blocks of humanity. One could say that hard times bring people together; or perhaps could bring out the best in them, consciously or subconsciously. The current world health crisis has surfaced many social and economic problems, but also has led us to understand new and, perhaps, some forgotten values.</p>
<p><b><i>Joining forces, creating new values or adding to the existing ones are critical to community sustainability in general, similar to the concept of �</i></b><a href=\"https://www.thoughtco.com/the-meaning-of-ubuntu-43307\"><b>ubuntu</b></a><b><i>.��</i></b></p>
<h3>What is the digital �ubuntu� of WordPress?</h3>
<p>For all the tech geeks out there, the free, open-source Linux distribution is not the center of our pledge. The �ubuntu� concept, as said by <a href=\"https://en.wikipedia.org/wiki/Nelson_Mandela\">Nelson Mandela</a>, is the profound sense <a href=\"https://www.revolt.tv/2018/7/18/20822300/remembering-nelson-mandela-through-the-power-of-ubuntu-and-essential-quotes\">�<b>that we are human only through the humanity of others</b></a>. If we are to accomplish anything in this world, it will in equal measure be due to the work and achievements of others�.</p>
<p>WordPress and the open-source community in general seem to reflect the �ubuntu� ethics.</p>
<p>The number of WordPress contributors have been increasing over the time, surging in the past couple of weeks, aiming at providing ease for groups or individuals worldwide in the time of crisis. Companies and individuals are joining forces to support each other in crisis time proving the postulate that humanity can only exist if individuals join forces.</p>
<h3>How can you contribute?</h3>
<p>Choose your own way.</p>
<ol>
<li>You might want to share knowledge, expertise or perhaps come up with new tech solutions and there are plenty of opportunities out there. Each WordCamp hosts a number of tracks which you could join; Polyglots, WPTV, Marketing, Community, Core, etc. Your contribution might look insignificant to you from the perspective of what should be done in general, but combined efforts do make change. After all, <a href=\"https://en.wikipedia.org/wiki/Rome_wasn%27t_built_in_a_day\">Rome was not built in a day</a>.</li>
<li>You might be creative enough and propose a new business model within a certain industry. Challenging times bring out the leaders with unconventional visions. As Roy. T Bennett said: &#8220;Never stop dreaming, never stop believing, never give up, never stop trying, and never stop learning.&#8221;</li>
<li>You might want to assist elderly in your neighborhood, or provide online support to vulnerable communities.</li>
<li>You might want to save strained animals, or feed those while searching for new owners.</li>
</ol>
<p>Everything you do, regardless of your intention has a much larger reach that you can even imagine.</p>
<p>Now is the time to adopt new habits and start understanding the consequence of our behavior and intentions. It&#8217;s about achieving �ubuntu�, and not getting the recognition for contribution or efforts made.</p>
<p>We found our �ubuntu� and we were not surprised when we learned that WordPress is all about it.</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How the WordPress community contributes to human development\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20the%20WordPress%20community%20contributes%20to%20human%20development&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-the-wordpress-community-contributes-to-human-development%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How the WordPress community contributes to human development\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-the-wordpress-community-contributes-to-human-development%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhow-the-wordpress-community-contributes-to-human-development%2F&title=How+the+WordPress+community+contributes+to+human+development\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How the WordPress community contributes to human development\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/how-the-wordpress-community-contributes-to-human-development/&media=https://heropress.com/wp-content/uploads/2020/05/052620-min-150x150.jpg&description=How the WordPress community contributes to human development\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How the WordPress community contributes to human development\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/how-the-wordpress-community-contributes-to-human-development/\" title=\"How the WordPress community contributes to human development\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/how-the-wordpress-community-contributes-to-human-development/\">How the WordPress community contributes to human development</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 May 2020 08:00:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Maja LoncarNoah PlumbPredrag Zdravkovic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: Diving Into Automattic�s Block Experiments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100061\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:147:\"https://wptavern.com/diving-into-automattics-block-experiments?utm_source=rss&utm_medium=rss&utm_campaign=diving-into-automattics-block-experiments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5741:\"<p class=\"has-drop-cap\">One of the repositories I have been keeping an eye on over the past few months is <a href=\"https://github.com/Automattic/block-experiments\">Block Experiments</a>. It is a <em>monorepo</em> of blocks in various stages of development from Automattic. In total, five of the team&rsquo;s block experiments are now available for download from the plugin directory. Three others seem to still be under development.</p>



<p>My interest was first piqued when I saw the company&rsquo;s <a href=\"https://wordpress.org/plugins/starscape/\">Starscape Block</a> plugin. The plugin essentially did something that I had needed on a separate project more than a year ago. If it had existed at the time, it would have saved me from a headache or two, attempting to mix custom HTML into a page that was mostly made from blocks. Since then, I have taken a few moments to check in on what the team has been building.</p>



<p>Except for <a href=\"https://wordpress.org/plugins/bauhaus-centenary/\">Bauhaus Centenary Block</a>, which is likely only of interest to designers as something fun, most of the block plugins should be useful for many users. </p>



<p>Surprisingly, the team has failed to add the &ldquo;block&rdquo; tag to all of its block plugins, so not all of these are listed in the official <a href=\"https://wordpress.org/plugins/browse/block/\">block directory</a>. It is likely an oversight that will be corrected at some point. For now, it just makes it a little harder for those of us looking for standalone block plugins to find them.</p>



<h2>Starscape Block</h2>



<img />Configuring the Starscape block.



<p class=\"has-drop-cap\">The <a href=\"https://wordpress.org/plugins/starscape/\">Starscape Block</a> plugin creates a container with a background of moving stars. End-users can control the density and speed of the stars. The block provides two gradient background options (linear or radial) along with 12 predefined gradient colors to select from. Users can also control the color of the single text input it provides.</p>



<p>The biggest downside of this block at the moment is that it does not behave the same way as the core Cover or Group block. There is no way for users to add anything but a single line of text through a rich text field. If the team would open it up to allow for nested blocks, it would be far more useful.</p>



<p>There is a lot that is possible with this block if the team pushes the envelope a little more. For example, it would also be interesting to have the ability to layer the stars over an image background, such as a cityscape or forest.</p>



<h2>Waves Block</h2>



<img />Adding custom content within the Waves block.



<p class=\"has-drop-cap\">Similar to Starscape Block, the <a href=\"https://wordpress.org/plugins/waves/\">Waves Block</a> plugin creates a container block with a moving background. Instead of stars, the background is made up of &mdash; you guessed it &mdash; waves. It is not a simple copy of a plugin that does the same thing. The Waves block is a more robust solution. It works almost the same as the core Cover block and allows other blocks nested inside.</p>



<p>End-users can control the complexity, mouse speed, and fluid speed of the waves. They can also set the minimum height of the container and choose the four colors that create the effect of flowing waves.</p>



<p>This block was fun to play around with. Users could create some interesting hero-style page headers with this plugin, especially when WordPress treats the post title/header area as a block container in the future.</p>



<h2>Event Block</h2>



<img />Setting up a custom event with the Event block.



<p class=\"has-drop-cap\">More often than not, on most projects that I have worked on that posted events, it was typically a single event once in a while. Many of the event management plugins were overkill. Several times in the past, I have built a widget or a simple shortcode to output a basic event notice. For end-users who need a basic method of outputting an event notification on their sites, the <a href=\"https://wordpress.org/plugins/event/\">Event Block</a> plugin may be the best option.</p>



<p>It is a standalone block that allows users to enter an event title, date, location, description, and image. It is a simple, no-fuss solution.</p>



<p>One missing component I would like to see with this block is the ability to add both a start and end date. For multi-day events, users must provide that information in the description box, which would be acceptable for most use cases. However, the full event date would be better served via the &ldquo;when&rdquo; field.</p>



<h2>Layout Grid Block</h2>



<img />Creating a book section with the Layout Grid block.



<p class=\"has-drop-cap\">We have previously covered the <a href=\"https://wordpress.org/plugins/layout-grid\">Layout Grid Block</a> plugin in a post on whether core <a href=\"https://wptavern.com/should-the-block-editor-have-a-grid-system\">WordPress should include a grid system</a>. However, it is worth noting this block is a part of Automattic&rsquo;s experimental block repository. The plugin has also been updated and improved since the Tavern&rsquo;s last look. It worked well before, but some minor bug fixes have drastically improved its usability.</p>



<p>Layout Grid Block is quickly becoming one of my favorite plugins for creating columns. It is easy to set up between two and four columns of content and change how the content is displayed based on the screen size. Some of the other plugins I have tested are more powerful. However, some of those tend to be more complicated than what the average user may need. This plugin will likely fit the bill for many use cases.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 May 2020 20:34:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"WPTavern: WordCamp Europe 2020 Announces Schedule, Plans to Debut Networking Rooms and Virtual Sponsor Booths\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100013\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:261:\"https://wptavern.com/wordcamp-europe-2020-announces-schedule-plans-to-debut-networking-rooms-and-virtual-sponsor-booths?utm_source=rss&utm_medium=rss&utm_campaign=wordcamp-europe-2020-announces-schedule-plans-to-debut-networking-rooms-and-virtual-sponsor-booths\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2328:\"<p>The 8th annual <a href=\"https://2020.europe.wordcamp.org\">WordCamp Europe</a> is only 9 days away and organizers have just announced the schedule. Friday and Saturday sessions are split into two tracks that will run 30-minute talks simultaneously. Each talk is followed by a 10-minute Q&amp;A. The schedule also mixes in a few 10-minute lightning talks, with 15-minute breaks every hour.</p>



<p>The WordCamp will feature a variety of topics of interest to WordPress professionals and enthusiasts, including freelancing, code review, art direction with Gutenberg, website security, growing communities, and the challenges of headless WordPress. The online <a href=\"https://2020.europe.wordcamp.org/schedule/\">schedule</a> allows users to save their favorite sessions and then email them, share a link, or print the customized schedule.</p>



<img />



<p>In converting the event to be fully online, WCEU PR Team co-organizer Evangelia Pappa said they had to re-work some of their original plans for speakers. Not all previously scheduled speakers were available for an online session. The organizers also had to start from scratch in planning the event, determining the platforms and tools to use, as well as figuring out a new routine for working together from home.</p>



<p>For the first time in WCEU history, both the networking activities and sponsor booths are going virtual using Zoom. Organizers are planning to have two networking rooms, which can also be used for speakers who want to continue Q&amp;A times with attendees following their sessions. Sponsors will have their own schedule of activities and webinars, expanding the event to 3-4 total tracks.</p>



<p>Pappa said the organizing team was inspired by WordCamp Spain, which has so far been the largest online WordPress event. The camp used Zoom to support 5,515 online attendees. </p>



<p>More than 5,650 people have already registered for WCEU 2020. <a href=\"https://2020.europe.wordcamp.org/tickets/\">Tickets</a> continue to be released in batches, and organizers say they have an unlimited number available. Tickets for the virtual Contributor Day, which precedes the<strong> </strong>camp on June 4, are also still available. Attendees can indicate interest by checking the box for Contributor Day during the regular ticket signup process.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 May 2020 15:03:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Shinobi Blocks WordPress Plugin Adds How-To and FAQ Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=100011\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:181:\"https://wptavern.com/shinobi-blocks-wordpress-plugin-adds-how-to-and-faq-blocks?utm_source=rss&utm_medium=rss&utm_campaign=shinobi-blocks-wordpress-plugin-adds-how-to-and-faq-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4929:\"<p class=\"has-drop-cap\">Shinobi Works, a web development and illustration company based in Japan, released <a href=\"https://wordpress.org/plugins/shinobi-blocks\">Shinobi Blocks</a> last week. It is the second plugin the team has added to the WordPress plugin directory. The plugin is a block collection that currently has two blocks for creating how-to and FAQ sections on a site.</p>



<p>Overall, the blocks work well. The developers also make sure to only load any scripts or styles on the front end when the blocks are in use, so it should not add any weight to page speed across the site.</p>



<p>The largest downside of the plugin is that neither of its blocks has wide or full alignment options. This is one feature that I am hoping more block developers begin to add support for. It takes <a href=\"https://developer.wordpress.org/block-editor/developers/block-api/block-registration/#supports-optional\">minimal code</a> and would make blocks more flexible for end-users. The workaround is to wrap the blocks in a core Group block and add alignment to it.</p>



<p>As a user, I would like to see the How-To block split into its own, single-purpose block. It would be a nice addition to the official WordPress <a href=\"https://wordpress.org/plugins/browse/block\">block directory</a> as a standalone solution for users.</p>



<p>Right now, there seems to be a bit of a mad race toward who can build the biggest block collection plugins. It is unclear what the future of Shinobi Blocks holds. Given that it is early in its life as a plugin, I would urge the plugin authors to consider building single-use blocks. This way, users can install only the blocks they need on their sites.</p>



<p>In this particular case, the How-To block would make a good option as a single block plugin. As for the FAQ block, users can find such blocks in several other plugins with more options.</p>



<h2>How-To Block</h2>



<ul><li class=\"blocks-gallery-item\"><img />Adding a how-to item.</li><li class=\"blocks-gallery-item\"><img />How-to second step.</li></ul>Adding step-by-step instructions via the How-To block.



<p class=\"has-drop-cap\">The plugin&rsquo;s How-To block is what drew me in. Its purpose is to allow end-users to provide step-by-step instructions with both a text block and an image for each step. It is a pattern that is common on sites such as wikiHow and other tutorial websites.</p>



<p>The design of the block is well thought out and easy to use. For more complex tutorials, users can split their how-to into multiple sections, each with their own steps. In tests against several themes, I ran into no issues inputting custom content in the editor and it appearing correctly on the front end.</p>



<p>The plugin provides an option to change the <em>dot type</em>, which is the number for each step. Users can choose between displaying numbers or using an icon for individual steps. The available icons are from the core WordPress Dashicons set. The color of the dot type can also be customized. By default, it displays a gradient, but the user can select a solid color if preferred.</p>



<p>The downside of the available color options is the block does not make use of the active theme&rsquo;s color palette if registered. Using this would help the block better blend into the user&rsquo;s current site design.</p>



<p>One option that I would add is to allow the user to input optional, additional text below the image while using the main text as a sort of headline. This would provide more flexibility for how-to instructions that need more information. However, it would also add an extra layer of complexity that may not be desired.</p>



<h2>FAQ Block</h2>



<img />FAQ block accordion on the front end.



<p class=\"has-drop-cap\">The FAQ block almost feels like an afterthought. It does not have the level of detail that was put into the How-To block. There are no color or other options for changing the design. It is basically a bare-bones tabbed accordion. The block works well enough for what it needs to do. Nevertheless, it still feels like a letdown after tinkering with the plugin&rsquo;s first block.</p>



<p>Inputting content on the admin side is simple. Both the question and answer inputs are rich text fields, which allow the same formatting as a standard Paragraph block.</p>



<p>Each inner block for the FAQ block offers a single option that allows users to choose whether to display the tab in an open state. One issue I ran into with disabling this option is that it closes the tab in the editor, which essentially disabled editing the answer&rsquo;s content for the item, at least until I re-ticked the checkbox.</p>



<p>It is not a poorly-designed block. For the most part, I would rather see the How-To and FAQ blocks split into separate, standalone block plugins. They serve two different purposes and would allow users to install just the pieces that they need.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 May 2020 20:34:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Local Brings Back Support for Apache and Site Cloning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99924\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"https://wptavern.com/local-brings-back-support-for-apache-and-site-cloning?utm_source=rss&utm_medium=rss&utm_campaign=local-brings-back-support-for-apache-and-site-cloning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2899:\"<p>Flywheel&rsquo;s <a href=\"https://localwp.com/\">Local development app</a> has received several major updates during the past month. The most recent release brings back support for Apache as a web server choice (version 5.5.1), in response to user feedback. This was the <a href=\"https://feedback.localwp.com/feature-requests/p/apache-web-server-option\">most highly requested feature</a> on the app&rsquo;s community voting board. </p>



<p>Although nginx is the leader in <a href=\"https://www.similartech.com/compare/apache-vs-nginx\">web server market share</a> for the top 10k, top 100k, and top 1M sites, Apache is still used by more of the web. Lack of support for Apache was a deal breaker for many Local users who support clients on shared hosting, which often runs Apache and MySQL. It was also a blocker for potential new users switching from MAMP. Having the option to choose the web server on a per-site basis makes Local much more flexible.</p>



<img />



<p>Site cloning is another highly requested feature that was brought back in <a href=\"https://localwp.com/community/t/local-5-3-3/19132\">version 5.3.3</a> at the end of April. Users can now right-click on a site in Local&rsquo;s sites sidebar and click on &ldquo;Clone Site.&rdquo; This feature is useful for using one site as a jumping off point or even for setting up a &ldquo;blueprint&rdquo; for future sites to use. </p>



<p>Flywheel is gradually adding back a list of features after rebuilding Local&rsquo;s core architecture in 2019. The <a href=\"https://wptavern.com/local-lightning-now-in-public-beta-with-major-performance-improvements\">&ldquo;Local Lightning&rdquo; update</a> moved the app away from virtualization in favor of native, system-level software for running WordPress locally.</p>



<p>&ldquo;Feature parity with Local Classic is the top item for us in our Q2 roadmap,&rdquo; Local creator Clay Griffiths said. So far his team has already brought back 64-bit PHP binaries for Windows, site cloning, and Apache support as part of this process.</p>



<p>The app has become an indispensable development tool for many WordPress developers. In February, WP Engine <a href=\"https://wptavern.com/after-the-acquisition-flywheel-in-the-new-year\">reported</a> that Local is used by more than 50,000 developers. The company has a long-term roadmap that aims to make it easier for users to customize their development environments. </p>



<p>Local has a fairly transparent development process with community feature requests highly prioritized. The app&rsquo;s <a href=\"https://feedback.localwp.com/\">community feedback site</a> gives users an overview of all the features that are currently planned, in progress, and complete. Updates currently in progress include a setting for a default browser and improvements to the Live Link feature. The team is also exploring a Local CLI as part of the Q2 roadmap.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 May 2020 22:21:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Should WordPress Provide an API for Third-Party Editors?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99970\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:175:\"https://wptavern.com/should-wordpress-provide-an-api-for-third-party-editors?utm_source=rss&utm_medium=rss&utm_campaign=should-wordpress-provide-an-api-for-third-party-editors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6858:\"<p class=\"has-drop-cap\">Imagine a future where you log into your website&rsquo;s admin. You head over to the editor. This particular editor has all the tools and features in place that make you more efficient at producing whatever content you put out for the world to see. You immediately start tapping keys or dragging your mouse around the screen, satisfied with what the software you&rsquo;re using has to offer.</p>



<p>Today, that editor may be the default block editor for WordPress. Some may be running the Classic Editor plugin for a familiar writing experience. Others will be crafting beautiful layouts with the Elementor page builder.</p>



<p>As of this week, people are finding themselves at home with <a href=\"https://wptavern.com/new-iceberg-plugin-brings-a-distraction-free-writing-experience-to-wordpress\">Iceberg</a>, an interface built on top of the block editor for folks who prefer a minimalist environment and love Markdown.</p>



<p>Some bloggers post by email. Others use apps from their phone. And, an entire class of people works in third-party, offline editors such as Microsoft Word, Atom, and plain ol&rsquo; Notepad.</p>



<p>If there is one thing I have come to realize over the years it is that editing environments are as varied as the people who use them. There is no one-size-fits-all solution. The experience I am looking for is not necessarily the same experience you need.</p>



<p>Given the freedom to choose, most people would rearrange their desk, use a different notepad, and opt for a different writing utensil than their neighbor. Even if starting with the same tools, we eventually make tweaks to accommodate our personal tastes.</p>



<p>Throughout most of its history, WordPress has had a single editor that its users shared. It has changed over time &mdash; even the addition of TinyMCE was once controversial. However, the default editor has never been sufficient for every user. Personally, I abhorred the classic editing experience. It led me to write in various Markdown editors over the years for efficiency and a true distraction-free experience. It has also led to developers taking on the challenge of creating alternative experiences for large swaths of end-users.</p>



<p>As much as many people love the classic WordPress editor, it was a pain for many others. Otherwise, all of the tools that have cropped up over the years would have been unnecessary.</p>



<p>In much the same way, the block editor is often a love-it-or-hate-it experience. It is the ideal editing environment for many users. For others, it is a roadblock at best.  At worst, it is worthy of a gasoline soaking and a book of matches.</p>



<p>The promise of WordPress is to provide an editing experience that allows people from all walks of life to publish their content on the web. The promise is to make that experience as pain-free as possible and to continue iterating toward that unattainable-but-worthwhile-goal of perfecting the publishing process.</p>



<p>WordPress &mdash; any publishing platform for that matter &mdash; is only as good as its editor.</p>



<p>It is a predicament. There is no way to make the ideal editor for all people.</p>



<p><em>What&rsquo;s the next move?</em></p>



<h2>An Editors Registry and API</h2>



<p class=\"has-drop-cap\">In the comments of the Tavern&rsquo;s Iceberg editor coverage, Phil Johnston <a href=\"https://wptavern.com/new-iceberg-plugin-brings-a-distraction-free-writing-experience-to-wordpress#comment-328746\">proposed a solution</a> for WordPress going forward. &ldquo;With all of the amazing publishing experiences coming out, I wonder if it&rsquo;s time for WP to include the concept of &lsquo;Editors,\'&rdquo;, he wrote. &ldquo;Like an official registry of installed Editors.&rdquo;</p>



<p>He later created a <a href=\"https://core.trac.wordpress.org/ticket/50214\">feature request</a> that called for an API that would make it easier for plugin authors to create new editing experiences on top of WordPress. The proposal is a high-level idea about how the editing screen could allow users to choose their preferred editor.</p>



<p>Potentially, users could install and use various editors, depending on what type of content they are building. A user may want something akin to a Markdown editor for blog posts but switch over to a page builder for their site&rsquo;s pages. eCommerce plugins might have custom editing interfaces that are ideal for shop owners. Ultimately, the possibilities are endless. But, it all starts down at the WordPress level.</p>



<p>The idea is not about dropping the default WordPress editor. It is about creating a flexible framework for plugin developers to cater to more users&rsquo; needs. Additional methods of editing content would make WordPress a stronger CMS, drawing in users who would otherwise prefer a different experience, regardless of the type of site they are building.</p>



<p>It is possible to do this now. However, what could WordPress be doing to improve this process for developers?</p>



<p>Jeffrey Carandang, co-creator of Iceberg, believes that core could open the editing space to more third-party solutions. &ldquo;Creating our own editor mode was challenging but a super exciting experience overall,&rdquo; he said. &ldquo;Gutenberg is still far from being extensible compared to other parts of WordPress, but we managed to hack on some areas that needed to work.&rdquo;</p>



<p>Carandang identified a few hurdles his team had to overcome when building the Iceberg editor:</p>



<ul><li>Limited hooks and filters outside of block development, such as the top and bottom areas of the editor and wrappers.</li><li>Little-to-no options to remove editor components, relying on CSS hacks to hide them.</li><li>The core editor&rsquo;s reliance on <code>localStorage</code>.</li></ul>



<p>In addition to the primary issues, his team had to develop against multiple versions of the block editor to ensure a seamless experience for users. Despite the issues, he still believes in a future where the block editor project can open up &ldquo;potential innovations&rdquo; in the space.</p>



<hr class=\"wp-block-separator\" />



<p>Today, I am composing this post in an offline Markdown editor. I will copy and paste my second or third draft into the block editor, which does a great job of converting Markdown into blocks, before final edits. On other days, I work directly in WordPress, depending on my mood. However, my preferred writing experience is as simple as it gets and often happens in Atom. It is what I am accustomed to.</p>



<p>I wonder if there will one day be an editor that will convert me to writing full time from within WordPress. I eagerly await the plugin developers who will make the attempt. My hope is that WordPress cultivates these ideas without standing in the way.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 May 2020 19:05:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: Molly Burke on the Power of Universal Design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99949\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:153:\"https://wptavern.com/molly-burke-on-the-power-of-universal-design?utm_source=rss&utm_medium=rss&utm_campaign=molly-burke-on-the-power-of-universal-design\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1814:\"<p>In a 2017 speech titled &ldquo;<a href=\"https://www.youtube.com/watch?v=3kIfwE4vJrI\">Stop trying to fix disability</a>,&rdquo; YouTube and motivational speaker Molly Burke says, &ldquo;I live in a world that wasn&rsquo;t built for me, but what if it was?&rdquo; Burke was born with a rare, genetic eye disease that caused her to go blind. In this short but moving 8 minute video, she contends that making the world accessible helps everyone. She introduces the concept of universal design to her audience in simple terms: </p>



<blockquote class=\"wp-block-quote\"><p>&ldquo;Universal design [is] designing and building everything to be accessed, enjoyed, and understood to its fullest extent by everyone, regardless of their size, their age, their ability, or their perceived disability.&rdquo; </p></blockquote>



<p>Burke identified Apple as one company that <a href=\"http://apple.com/accessibility/\">exemplifies universal design</a>.  </p>



<p>&ldquo;Every product they release, I could buy at a store, open up, and use on my own independently, with no extra cost and no assistance needed,&rdquo; she said. &ldquo;I ask you to imagine how liberating, how empowering it is to be shown by a company that they view you as belonging to their customers, when so many others tell you the exact opposite.&rdquo;</p>



<p>In honor of <a href=\"https://en.wikipedia.org/wiki/Global_Accessibility_Awareness_Day\">Global Accessibility Awareness Day</a>, I wanted to highlight this video that tells just one person&rsquo;s story on the powerful impact of technology that is built with everyone in mind. Burke&rsquo;s speech is a poignant reminder of how designers and builders can extend a sense of belonging to their customers by making their products accessible.</p>



<div class=\"wp-block-embed__wrapper\">

</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 May 2020 23:03:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Gradually, Then Suddenly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=51510\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ma.tt/2020/05/gradually-then-suddenly/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4676:\"<img />



<p>The two main theses of my professional career have been that <a href=\"https://distributed.blog/\">distributed is the future of work</a>, and that open source is the future of technology and innovation. I&#8217;ve built <a href=\"https://automattic.com/\">Automattic</a> and <a href=\"https://wordpress.org/\">WordPress</a> around these, and it&#8217;s also informed my investments and hobbies. Just today, <a href=\"https://techcrunch.com/2020/05/21/automattic-pumps-4-6m-into-new-vector-to-help-grow-matrix-an-open-decentralized-comms-ecosystem/\">we announced an investment into a distributed, open source, and encrypted communication company called New Vector</a>.</p>



<p>On the distributed front, the future of work has been arriving quickly. This week, a wave of companies representing over $800B in market capitalization announced they&#8217;re embracing distributed work beyond what&#8217;s required by the pandemic:</p>



<ul><li><a href=\"https://blog.coinbase.com/post-covid-19-coinbase-will-be-a-remote-first-company-cdac6e621df7\">Coinbase is going remote-first</a>.</li><li><a href=\"https://www.theverge.com/2020/5/21/21265780/facebook-remote-work-mark-zuckerberg-interview-wfh\">Facebook wants to be &#8220;the most forward-leaning on remote work.&#8221;</a></li><li><a href=\"https://www.buzzfeednews.com/article/alexkantrowitz/twitter-will-allow-employees-to-work-at-home-forever\">Twitter has allowed permanent work-from-home</a>.</li><li><a href=\"https://twitter.com/tobi/status/1263483496087064579\">Shopify is now a &#8220;digital by default&#8221; company</a>.</li><li><a href=\"https://www.theverge.com/2020/5/18/21261798/square-employees-work-from-home-remote-premanent-policy-ceo\">Square has indefinitely extended remote work</a>.</li><li><a href=\"https://variety.com/2020/music/news/spotify-employees-work-from-home-1234613095/\">Spotify is allowing work-from-home through 2021</a>.</li></ul>



<p>Change happens slowly, then all at once. </p>



<p>The forces that enable working in a distributed fashion have been in motion for decades, and if you talk to anyone who was working in technology in the &#8217;60s and &#8217;70s they expected this to happen much sooner. <a href=\"https://distributed.blog/2019/10/03/turning-ideas-into-real-things/\">Stephan Wolfram has been a remote CEO for 28 years</a>. Automattic has been distributed-first for 15 years.</p>



<p>What&#8217;s been holding us back is fear of the unknown, and attachment to the familiar. I can&#8217;t tell you how many of the investors I see espousing distributed work once told me that Automattic would never scale past a few dozen people unless we brought everyone into an office. Or the CEOs who said this would never work for them, now proclaiming their company hasn&#8217;t missed a beat as tens of thousands of people started working from home.</p>



<p>What&#8217;s going to be newsworthy by the end of the year is not technology companies saying they&#8217;re embracing distributed work, but those that aren&#8217;t. Those who thought this couldn&#8217;t work have been forced by the pandemic to do it anyway, and they&#8217;ve now seen that it&#8217;s possible.</p>



<p>It was probably terrible at first, but now two or three months in it&#8217;s gotten better. We&#8217;ve learned and adapted, and will continue to do so. Necessity breeds invention. <strong>I promise you if you stick with it, <a href=\"https://ma.tt/2020/04/five-levels-of-autonomy/\">you&#8217;ll progress through the levels of distributed autonomy</a>.</strong> Over time people will be able to move houses, tweak furniture, buy equipment, upgrade their internet, and otherwise adapt to being more productive in a distributed environment than they ever could be in an office. Products and services are being developed all around the world that will make it even better. I&#8217;m so excited about how a majority of the economy going distributed will improve people&#8217;s quality of life, and unlock incredible creativity and innovation at work. (They go hand in hand.)</p>



<p>At some point, we&#8217;ll break bread with our colleagues again, and that will be glorious. I can&#8217;t wait. But along the way we&#8217;ll discover that things we thought were impossible were just hard at first, and got easier the more we did it. Some will return to physically co-working with strangers, and some employers trapped in the past will force people to go to offices, but <strong>the illusion that the office was about work</strong> will be shattered forever, and companies that hold on to that legacy will be replaced by companies who embrace the antifragile nature of distributed organizations.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 May 2020 20:28:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: PHP and WordPress Version Checks Coming to Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99928\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:163:\"https://wptavern.com/php-and-wordpress-version-checks-coming-to-themes?utm_source=rss&utm_medium=rss&utm_campaign=php-and-wordpress-version-checks-coming-to-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4753:\"<p class=\"has-drop-cap\">PHP and WordPress version checks are coming to the WordPress theme system &mdash; finally. The feature was <a href=\"https://core.trac.wordpress.org/changeset/47819\">pulled into core WordPress</a> three days ago. It will prevent end-users from installing or activating a theme that is incompatible with their current version of PHP or WordPress. The change is slated to land in WordPress 5.5.</p>



<p>This feature has long been on many theme authors&rsquo; wish lists, particularly PHP version checking. Plugins authors gained the ability to support specific PHP versions starting with WordPress 5.2. However, theme authors were left feeling like the second-class citizens they usually are when it comes to the addition of core features, waiting patiently as plugin authors received the new and shiny tools they were looking forward to.</p>



<p>Previously, the code for manually handling version checking within individual themes was more complex than in plugins. Theme authors needed to run compatibility checks after theme switch and block theme previews in the customizer using two different methods, depending on the user&rsquo;s WordPress version. That is assuming theme authors were covering all their bases.</p>



<p>Users had no real way of knowing whether a theme would work on their site before installing and attempting to activate it. It was a poor user experience, even when a theme gracefully failed for the end-user.</p>



<p>This user experience has also held back some theme authors from transitioning to newer versions of PHP. For years, many were supporting PHP 5.2. Slowly, some of these same authors are now making the move toward newer features up to PHP 5.6, which is now the minimum that WordPress supports. However, not many have made the jump to PHP 7 and newer.</p>



<p>Until now, there has been no mechanism for letting the user know they need to upgrade their PHP to use a particular theme.</p>



<p>Some theme authors may choose to continue supporting older versions of PHP, such as 5.6, for a potentially wider user base. However, developers who want to switch to newer features can now do so with the support of the core platform.</p>



<h2>Changes for Users</h2>



<img />New WordPress and PHP versions added to Twenty Twenty theme.



<p class=\"has-drop-cap\">Users who are browsing the WordPress theme directory may begin to notice new information available for some themes. Similar to plugins, visitors should see a WordPress Version and PHP Version listed for some themes. For example, the <a href=\"https://wordpress.org/themes/twentytwenty/\">Twenty Twenty</a> theme now lists the following minimum requirements:</p>



<ul><li><strong>WordPress Version:</strong> 4.7 or higher</li><li><strong>PHP Version:</strong> 5.2.4 or higher</li></ul>



<p>Not all themes will have these numbers listed yet. It will take some time before older themes are updated with the data required to populate these fields.</p>



<p>In WordPress 5.5, the admin interface for themes will change.  When attempting to install or activate a theme, WordPress will prevent such actions. If a user searches for a theme that has an incompatible WordPress or PHP version, the normal installation button will be replaced with a disabled button that reads &ldquo;Cannot Install.&rdquo; If a theme is installed but not activated, the activation link will similarly be replaced with a disabled &ldquo;Cannot Activate&rdquo; button. Users will also not be allowed to live preview incompatible themes.</p>



<img />Cannot activate Twenty Twenty theme with incompatible PHP version.



<p>The feature works the same from within the customizer interface as it does via the themes screen in the WordPress admin.</p>



<h2>Changes for Theme Authors</h2>



<p class=\"has-drop-cap\">The WordPress Themes Team recently announced two new <a href=\"https://make.wordpress.org/themes/2020/05/14/new-required-header-fields-for-style-css/\">required headers for theme authors</a> to place in their <code>style.css</code> files. The first required field is <code>Tested up to</code>, which is the latest version of WordPress the theme has been tested against. The second is a <code>Requires PHP</code> field, which is the minimum PHP version the theme supports.</p>



<p>It is unclear is why the team decided to require those two fields but not the <code>Requires at least</code> field, which represents the minimum WordPress version needed. Most likely, theme authors will want to place all three headers in their themes.</p>



<p>Theme authors who will still support versions of WordPress earlier than 5.5 will want to continue using their old compatibility checks. However, this is the first step in phasing such code out.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 May 2020 19:57:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: WordCamp Kent Online Features Business and Marketing Tracks, May 30-31\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99897\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:203:\"https://wptavern.com/wordcamp-kent-online-features-business-and-marketing-tracks-may-30-31?utm_source=rss&utm_medium=rss&utm_campaign=wordcamp-kent-online-features-business-and-marketing-tracks-may-30-31\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2315:\"<p>One of the exciting things about WordCamps going virtual is the community gaining access to more events and presentations than ever before, from anywhere in the world. Even in this new online-only format, local camps still retain their unique character as they feature speakers from their respective communities. </p>



<p><a href=\"http://2020.kent.wordcamp.org\">WordCamp Kent</a> (Ohio) is one of these upcoming events that has been forced online by the pandemic. Organizers will be broadcasting all sessions on the weekend of May 30-31, and <a href=\"https://2020.kent.wordcamp.org/tickets/\">tickets</a> are free for anyone who wants to attend. </p>



<p>The schedule for this particular event runs heavy on the business and marketing side of working with WordPress, with very few talks geared towards developers. If you are a freelancer, run an agency, or have a WordPress product business, you will find WordCamp Kent&rsquo;s program more tailored to topics that help you improve client services. </p>



<p>The <a href=\"https://2020.kent.wordcamp.org/schedule/\">schedule</a> on the first day of the event is divided into two tracks: Freelance/Business and User/Marketing. These sessions will run alongside live Q&amp;A and a Help Desk managed by volunteers in the&nbsp;<a rel=\"noreferrer noopener\" href=\"https://app.slack.com/client/T0AST04HG/C011U4S0LKW\" target=\"_blank\">#wp-help-desk channel</a>&nbsp;in the NEO WordPress Slack workspace. The second day of the event will be also be split into two tracks: Freelance/Business/Developer and WordPress 101/User. </p>



<p>Topics include designing websites for generating leads, improving your business model for freelancers and small businesses, client consultations, content marketing, and customer support. </p>



<p>This Kent, Ohio, WordCamp may not have made it on your radar in the past, but the pandemic has opened up events in some ways. It forces a greater number of camps online and allows attendees to join any event without the travel expenses that would ordinarily be prohibitive. In the past, many people who were not local would simply opt to save their money for the bigger camps. The WordPress community has a greater potential to accelerate their learning opportunities, as more smaller camps gain a global audience online.</p>



<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 May 2020 17:19:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"WPTavern: CampusPress Releases Accessible Content Plugin in Time for Global Accessibility Awareness Day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99804\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://wptavern.com/campuspress-releases-accessible-content-plugin-in-time-for-global-accessibility-awareness-day?utm_source=rss&utm_medium=rss&utm_campaign=campuspress-releases-accessible-content-plugin-in-time-for-global-accessibility-awareness-day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10213:\"<p class=\"has-drop-cap\">While it is still Wednesday here in the U.S., some parts of the world are already awakening to the third Thursday in May, which is <a href=\"https://globalaccessibilityawarenessday.org/\">Global Accessibility Awareness Day</a> (GAAD). The purpose of the event is to get more people discussing, learning, and addressing issues related to the inclusion of people with disabilities in the digital world. That is what CampusPress hopes to do with its new plugin.</p>



<p>The CampusPress team <a href=\"https://campuspress.com/free-accessibility-plugins-themes-for-wordpress/\">announced its Accessible Content plugin</a> for WordPress last week. The goal of the plugin is to help end-users address accessibility issues on their sites. Many tools are built for developers and designers, but the team wanted something to put into the hands of users to allow them to take the extra steps necessary in creating an accessible website.</p>



<p>The plugin is currently <a href=\"https://github.com/campuspress/accessible-content\">available through GitHub</a>, but the team plans to submit it to the official WordPress plugin repository soon. The developers are gathering user feedback from customers and the community first.</p>



<p>&ldquo;Our Accessible Content plugin was developed specifically to help with training and putting real-time information into the hands of those creating WordPress pages and posts,&rdquo; said Ronnie Burt, General Manager at CampusPress. &ldquo;There are a ton of site checker tools out there, and many work quite well. But all of them will spit out false positives and list issues on a page that have nothing to do with the content (navigation issues and the like). So as a bit of a disclaimer, by design, this plugin will not find or help with all potential accessibility issues on a site. But if used over time, it will help train content creators to understand many of the best practices that they should be following and avoid mistakes.&rdquo;</p>



<p>CampusPress is a managed WordPress hosting and service provider for organizations in the educational sector. It is a sister service to Edublogs.org, which originally launched 15 years ago.</p>



<p>&ldquo;In that time, we&rsquo;ve been quietly catering to the unique needs of schools and universities that use WordPress in various ways,&rdquo; said Burt. &ldquo;Historically, that was more on the blogging and learning side, but as WordPress has grown into the CMS of choice, we&rsquo;ve moved along with it to high-level main websites too.&rdquo;</p>



<p>Development of the Accessible Content plugin will help the CampusPress team&rsquo;s customers in education, particularly when diving into the world of accessibility guidelines.</p>



<p>&ldquo;Overall, awareness around accessibility has improved considerably in recent years, but for many, the topic is overwhelming,&rdquo; said Burt. &ldquo;In our case, school administrators know they need a &lsquo;compliant&rsquo; site, but when you go to read the compliance standards, some are subjective and, at best, really complex. The biggest hurdle that we see is that we are still in a place where accessibility expertise is left up to specialists or tools that are usually brought in after the fact or at the end of a project. In an ideal world, we&rsquo;ll get to where the expertise is shared by all developers, content creators, and anyone else working on the site. This is because accessibility is so much better and easier when it is built-in and thought about from the beginning and continuously.&rdquo;</p>



<p>The team is releasing this plugin not only to its customer base but as a free tool for all WordPress users.</p>



<h2>How the Plugin Works</h2>



<p class=\"has-drop-cap\">The plugin is simple enough for most people to use. When previewing a post, it labels and points out issues that need attention. The goal is not to focus on larger accessibility issues that may be coming from the theme. Instead, the plugin lists issues directly with the post content.</p>



<p>The interface on the post preview screen is simple enough to understand without documentation. Preview a post and the plugin provides buttons on the sides of the screen to navigate through each issue found. At the bottom of the screen, it leaves a full description of the problem.  Users can also access this feature via the toolbar on the site front end when viewing a post.</p>



<img />Accessible Content plugin&rsquo;s output on post preview.



<p>In some cases, such as missing image alt text, the plugin provides a link to directly add the alt text in the admin. This is done through a custom Alt Text sub-menu under the Media screen in the WordPress admin. Users can also use this screen at any time to manage alt text for images used throughout the site in one location.</p>



<img />



<p>Burt said the original spec for the plugin had all of the accessibility checks and information within the block editor interface. However, the team hit a couple of roadblocks and ended up moving the plugin&rsquo;s interface to the post preview screen as a result.</p>



<p>&ldquo;Gutenberg is still in flux at a pretty rapid pace,&rdquo; he said. &ldquo;Just as we were getting our first proof of concept working on the image block, there was a change and it all broke. No fun! But moving to the previewer had some nice unintended consequences. Namely, the plugin works just as well with Classic Editor and with most page builders. The trade-off is that the warnings and helpful text aren&rsquo;t quite in as real-time as I hope to get them to someday.&rdquo;</p>



<p>In the long term, the team still plans on integrating directly with the block editor. For now, the plugin works well as part of the previewer. However, instant feedback in the editor would be a huge boost to fixing accessibility issues as they arise.</p>



<h2>Community Accessibility Improvements</h2>



<p class=\"has-drop-cap\">Burt was not shy about sharing his thoughts about what the WordPress community can be doing to improve accessibility around the web. He praised some of the work that the WordPress project has done thus far. He also shared some concerns.</p>



<p>&ldquo;One thing I&rsquo;m worried about &mdash; there&rsquo;s a trend out there with a few WordPress plugins and a growing number of third-party tools to add a little &lsquo;accessibility&rsquo; icon to the corner of your website,&rdquo; he said. &ldquo;When clicked, these icons open up options for fonts, contrast ratios, and may give an alternative way of navigating the site. I&rsquo;ve noticed them on bank websites, government sites, and now the schools we work with are buying into them too because it can be tempting to just add a few snippets of embed code to a site and call it a day. To me, this sorta lets all of us that work on websites off the hook to not be responsible for accessible design and development, which really should be our ultimate goal.&rdquo;</p>



<p>He stressed that using quality themes and plugins as a good step for most users along with being mindful of the content we create. Taking these simple steps should make for a more accessible user experience overall.</p>



<p>&ldquo;There is lots of good news when it comes to WordPress and accessibility that we should be shouting from the rooftops,&rdquo; said Burt. &ldquo;For one, while there&rsquo;s still a bit of work to be done, the majority of the issues identified in the WPCampus sponsored audit of Gutenberg have been resolved. That was a great example of the higher-ed community leading the charge to impact change. Without the change, simply put, schools, universities, and government agencies may be forced or encouraged to drop their adoption of WordPress.&rdquo;</p>



<p>The <a href=\"https://wptavern.com/wpcampus-gutenberg-accessibility-audit-finds-significant-and-pervasive-accessibility-problems\">WPCampus-sponsored audit</a> in 2019 resulted in a 329-page technical analysis by Tenon, LLC. It covered user-based testing that included people with various disabilities. Since then, the Gutenberg project has worked to overcome issues identified by the audit.</p>



<p>&ldquo;As I use Gutenberg more and more, there are some nice little accessibility Easter eggs for content creators, such as warnings about contrast ratios and the Headings block won&rsquo;t show you the option for H1 by default,&rdquo; said Burt. &ldquo;I love it! If our community can just continue to highlight these improvements whenever possible, it will make a big difference. I&rsquo;m also hopeful that some of our checks from this plugin can eventually not be needed as future improvements to blocks and the editor are made.&rdquo;</p>



<p>Burt described the best thing the community can do is to be responsive and treat all accessibility issues as a major bug or even a release blocker before plugins or themes go live. In part, it is about being open to communicating and resolving issues that users bring up.</p>



<p>&ldquo;With so many competing priorities, it can be tempting to just write off a complaint or suggestion as coming from one user,&rdquo; he said. &ldquo;But really this is how we continue to make the most progress on all of our tools and services. Feedback from users on barriers and problems they face in using our stuff is pure gold and useful to help ensure we don&rsquo;t repeat those same mistakes.&rdquo;</p>



<p>Burt listed some key questions he believes the community should continue having conversations around:</p>



<ul><li>Should all new themes to WordPress.org be required to meet the &lsquo;accessibility-ready&rsquo; standards?</li><li>Are there similar standards and checks we could add to plugins? How can plugin authors declare if their plugin may impact accessibility?</li><li>Is a separate &lsquo;Accessibility&rsquo; team for WordPress core still the best way? How do we improve accessible design and development earlier on in practice? It is usually much harder to fix accessibility issues than it is to prevent them to begin with.</li></ul>



<p>These are definitely worth discussing further. For now, his team is trying to do its small part with the Accessible Content plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 May 2020 19:39:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: New Iceberg Plugin Brings a Distraction-Free Writing Experience to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99062\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:217:\"https://wptavern.com/new-iceberg-plugin-brings-a-distraction-free-writing-experience-to-wordpress?utm_source=rss&utm_medium=rss&utm_campaign=new-iceberg-plugin-brings-a-distraction-free-writing-experience-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8656:\"<p>Ever on the hunt for a more beautiful, simplified writing experience inside WordPress, I jumped at the chance to beta test the new<a href=\"https://useiceberg.com/\"> Iceberg</a> plugin. Rich Tabor and Jeffrey Caradang, the same team behind CoBlocks, have created a new markdown editor built on top of Gutenberg that provides the best writing experience for WordPress since core&rsquo;s retired <a href=\"https://wptavern.com/wordpress-zen-mode-5-compelling-reasons-to-turn-on-distraction-free-writing\">Distraction Free Writing</a> mode.</p>



<img />



<p>Iceberg features a minimalist editor with four color themes, the ability to create a custom theme, and a set of typography controls. In switching to Iceberg, there is not much missing much from the default block editor that would be necessary for writing. Users can drag and drop media into Iceberg and the backslash command works to trigger the block inserter. It also includes a Table of Contents, word and character counts, reading time, keyboard shortcuts, and support for emoji.</p>



<p>&ldquo;Iceberg was brought to fruition out of an experiment to make WordPress look and feel more like my favorite writing applications,&rdquo; Tabor said. &ldquo;My personal publishing flow was to write in an external application, paste it all into the block editor, followed by fixing/adjusting/resizing everything&ndash;honestly not fun. You see, writing with blocks is just &lsquo;ok&rsquo; &ndash; and doesn&rsquo;t feel natural.</p>



<p>&ldquo;After chatting with others, I realized a lot of folks shared the same sentiment and that such a small number of folks I talked to actually composed articles within WordPress. And although I appreciate how far the block editor has come over the years as a site editor and page builder, I wanted to morph the experience to better support publishing.&rdquo;</p>



<p>The Iceberg name is a nod towards Guten &ldquo;berg.&rdquo; Tabor said he wanted the project to seem more approachable, without being tied to WordPress or emphasizing blocks.</p>



<p>Tabor said he was inspired by dedicated writing applications like Bear, Ulysses, Dropbox Paper, and Google Docs. What he loves most about Iceberg is that its design is centered around the writer&rsquo;s preferences. </p>



<p>&ldquo;The editor themes that sit at the core of Iceberg&rsquo;s design language empower each writer to define their flavor of the editor,&rdquo; he said. &ldquo;Every color variable is auto-generated based on the editor theme and applied throughout the interface as necessary.&rdquo;</p>



<p>Gutenberg was also a strong inspiration for the design principles that guided Tabor in creating Iceberg.</p>



<p>&ldquo;Gutenberg itself is undergoing quite a transformation with what&rsquo;s being dubbed as &lsquo;G2&rsquo; &ndash; a new design system geared towards improved contrast, modern lines and an overall cleaner look,&rdquo; he said. &ldquo;I knew I wanted to push Iceberg in that direction, bringing a clean and modern look to the writing environment.&rdquo;</p>



<p>Under the hood, Iceberg is simply an extension of the block editor that de-emphasizes blocks to better enable writers. Since the plugin manipulates the editor itself, users&rsquo; content remains intact even if it is deactivated. </p>



<p>&ldquo;It&rsquo;s a clever combination of React components, styles, CSS custom variables and UX that is centered entirely around the art of writing,&rdquo; Tabor said. &ldquo;In short, if folks are familiar with Gutenberg development, they&rsquo;ll find Iceberg similarly structured.&rdquo;</p>



<p>Tabor said he wants to keep the plugin simple while also exploring where he can push the writing experience further forward. Possible features coming to the roadmap include goal setting, readability analysis, an improved pre-publish checklist, and better post previews/live previewing.</p>



<h2>Iceberg Gets Positive Reviews at Launch, Fills a Gap in the Block Editor&rsquo;s Support for Writers</h2>



<p>Iceberg is launching as a commercial product, priced at $39 for a single site or<strong> </strong>$99 for unlimited sites. The product seems to have filled a gap in the market, covering Gutenberg&rsquo;s long-standing deficiency in supporting writers. Community feedback during the beta and on Twitter and Product Hunt has so far been overwhelmingly positive.</p>



<p>&ldquo;Iceberg is like a noise-cancellation for the WordPress editor,&rdquo; Rajendra Zore <a href=\"https://twitter.com/rajendrazore/status/1262798934252023808\">said</a>. </p>



<p>Nick Hamze offered feedback in a Twitter <a href=\"https://twitter.com/NickHamze/status/1262749430844801030\">thread</a>, saying he was excited to see a product that can &ldquo;take markdown back from developers.&rdquo; He views Iceberg as a positive development in the WordPress product space, and urged the community to support these kinds of innovations:</p>



<blockquote class=\"wp-block-quote\"><p>The fun thing about Iceberg is it&rsquo;s an enhancement of the block editor not a replacement. No editor can be everything to everyone. Iceberg takes all the parts that are great for writers and emphasizes them while moving everything else into the background.</p><p>It&rsquo;s not a criticism of the block editor but a celebration of it. Even if you aren&rsquo;t a writer I think you should buy a copy. As a community we need to support people who are doing stuff like this. They&rsquo;re never going to stop making cool stuff but they might stop making it for WP.</p></blockquote>



<p>After beta testing the plugin I found that it provides the kind of writing experience that I have been missing in the block editor. Iceberg removes the cumbersome feeling of forcing your writing into blocks. More than anything, I want to see something like this land in WordPress core someday.</p>



<p>It&rsquo;s somewhat bittersweet to see a better writing experience arrive as a commercial plugin, instead of from core improvements. I desperately want WordPress to be home to the best tools for writers, because it is a publishing platform that is so powerful in nearly every other way. This is not to say that core developers cannot adopt something similar. That&rsquo;s the beauty of open source software &ndash; products inspiring new and improved solutions in a never-ending cycle.</p>



<p>Gutenberg designers and engineers have been <a href=\"https://wptavern.com/gutenberg-contributors-considering-a-focus-mode-for-writing\">working for the past two years</a> to bring the writing experience in the editor to a functional place that meets the needs of those who use WordPress primarily for writing. So far the block editor&rsquo;s <a href=\"https://wptavern.com/gutenberg-for-writers-how-to-configure-the-editor-for-fewer-distractions\">Fullscreen mode</a> is incapable of producing the kind of zen writing experience that most writers crave when turning to third-party writing apps.</p>



<p>Iceberg is GPL-licensed and is even <a href=\"https://github.com/useIceberg/iceberg-editor\">available on GitHub</a> for download and collaboration. I asked Tabor what he planned to do if someone proposed that some version of Iceberg be added to core.</p>



<p>&ldquo;Honestly, I think it would be great if WordPress adopted the same high level of support for writers as Iceberg does,&rdquo; he said. &ldquo;Sure it may not be completely ideal economically, but Iceberg is built on an editor built by thousands of hands. If Iceberg is deemed a clever enough solution to be a part of core, then that&rsquo;s ok. Although I&rsquo;m positive there&rsquo;s room to continue experimenting within the realm of empowering writers.&rdquo;</p>



<p>As WordPress continues to move full steam ahead on the site building aspects of the editor, a truly distraction-free writing experience is not likely to become a high priority anytime soon. Tabor sees this as an opportunity for products that can transform the editor for different types of users who may not be focused on building websites.</p>



<p>&ldquo;We&rsquo;re in such a transformative period of WordPress right now,&rdquo; Tabor said. &ldquo;The editing experience we&rsquo;re building with the block editor is much more focused on designing and publishing websites &ndash; not writing posts. Consequently, there&rsquo;s been much more focus on the<em> site building</em> experience, in lieu of the <em>writing</em> experience. That&rsquo;s not to say I don&rsquo;t love the direction WordPress is heading&ndash;I absolutely do. But rather that I feel there&rsquo;s room for a tool to improve the writing experience within the block editor.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 May 2020 23:16:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"WPTavern: WooCommerce Payments Allows Shop Owners to Manage Payments Without Leaving WordPress Admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99776\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:245:\"https://wptavern.com/woocommerce-payments-allows-shop-owners-to-manage-payments-without-leaving-wordpress-admin?utm_source=rss&utm_medium=rss&utm_campaign=woocommerce-payments-allows-shop-owners-to-manage-payments-without-leaving-wordpress-admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5670:\"<img />



<p class=\"has-drop-cap\">Automattic-owned eCommerce platform WooCommerce <a href=\"https://woocommerce.com/posts/woocommerce-payments/\">launched its new WooCommerce Payments</a> feature today. The company seeks to make it easier for plugin users to manage the entirety of their shop from a single location. For users based in the U.S. with WordPress.com-connected accounts, they can begin managing payments directly from their WordPress admin.</p>



<p><a href=\"https://wordpress.org/plugins/woocommerce-payments/\">WooCommerce Payments</a> is available as a free download via the WordPress plugin directory. Any costs associated with the plugin are on a per-transaction basis. Fees start at 2.9% + $0.30 per transaction for cards issued in the U.S. An additional 1% fee is tacked on for cards outside the U.S.</p>



<p>Under the hood, payments are handled through <a href=\"https://docs.woocommerce.com/document/payments/powered-by-stripe/\">Stripe Express</a>. The WooCommerce team developed the front-end so that it would match the look and feel of WooCommerce, making it function like a native part of the plugin. Stripe handles the processing from the backend.</p>



<p>The team began work on the system in 2019 and launched an invitational beta in late February 2020. Since then, it has seen over 1,000 accounts connect to WooCommerce Payments.</p>



<p>&ldquo;New users have been able to add it to their stores in onboarding,&rdquo; said Paul Maiorana, General Manager of WooCommerce. &ldquo;Current customers have heard about it through either our newsletter or virtual community meetups. Through this period, we&rsquo;ve learned what store owners like about WooCommerce Payments &mdash; managing their store and payments in one place; intuitive dashboard views; &lsquo;flow&rsquo; and &lsquo;ease.&rsquo; We&rsquo;ve also heard their questions, which are mostly related to features we&rsquo;ve got planned and are working hard to make available as soon as possible.&rdquo;</p>



<p>WooCommerce Payments creates an integrated payments dashboard in the WordPress admin. It allows shop owners to manage charges, deposits, refunds, and disputes without leaving their store. By not having to toggle between the store and third-party payment processors, administrators should be able to enjoy a more seamless experience.</p>



<p>The following are some screenshots from a demo install of the WooCommerce Payments plugin:</p>



<ul><li class=\"blocks-gallery-item\"><img />Transaction Details</li><li class=\"blocks-gallery-item\"><img />Dispute Overview</li><li class=\"blocks-gallery-item\"><img />Challenge Dispute</li><li class=\"blocks-gallery-item\"><img />Deposits</li><li class=\"blocks-gallery-item\"><img />Transactions</li></ul>



<p>On the customer end, the experience should also be more convenient for shoppers. Instead of being redirected to a processor like PayPal, customers can make payments directly on the site. This may also help curb cart abandonment, which can often happen when shoppers are redirected.</p>



<p>&ldquo;Now that we&rsquo;re announcing general availability in the U.S. and putting focused marketing effort behind it, we&rsquo;re hoping to draw more store owners to join us on the journey,&rdquo; said Maiorana.</p>



<p>New account holders will need to wait for seven business days before receiving their first deposit from sales. Afterward, the payments system will bundle daily revenue into a single deposit and automatically transfer it to the users&rsquo; bank accounts. This also cuts out the process of logging into an account with a payment processor to manually deposit earnings.</p>



<h2>On the Roadmap</h2>



<p class=\"has-drop-cap\">Currently, WooCommerce Payments is only available to U.S.-based shops. However, the team expects to begin rolling out support for more countries and local payment methods in 2020.</p>



<p>&ldquo;We&rsquo;re launching in the U.S. to start to manage scope, but WooCommerce is a global platform and global support for WooCommerce Payments is a priority for us,&rdquo; said Maiorana. &ldquo;Payments is obviously a complex and highly-regulated space. We have a three-year roadmap for WooCommerce Payments that includes feature and geographical expansion. Our legal and business teams are investing the appropriate time and resources to lay a strong foundation for future growth.&rdquo;</p>



<p>Upcoming releases of the WooCommerce Payments plugin are slated to receive support for subscriptions, saved cards, wallets, and instant deposits.</p>



<p>The WooCommerce team also has no plans of stopping with online sales. It is already taking some steps toward moving into the physical world. &ldquo;WooCommerce&rsquo;s mission is to democratize commerce &mdash; not only eCommerce &mdash; so yes, we&rsquo;re thinking a lot about how to bring this great payment experience offline to point-of-sale devices too,&rdquo; said Maiorana.</p>



<p>It would be interesting to see small store owners with physical locations &mdash; from a fruit stand to a collectibles shop to a mom-and-pop restaurant &mdash; be able to manage payments from a central location, all backed with WooCommerce and the WordPress platform.</p>



<p>The new system does not currently support CBD merchants. <a href=\"https://wptavern.com/woocommerce-partners-with-square-to-expand-services-for-cbd-merchants\">WooCommerce has a partnership with Square</a>, and shop owners who are selling CBD-derived products can still use that particular payment processor for the time being. This is likely tied to Stripe&rsquo;s policies on <a href=\"https://stripe.com/restricted-businesses\">restricted businesses</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 May 2020 17:39:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: BuddyPress 6.0.0 Released with New Group and Members Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99784\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"https://wptavern.com/buddypress-6-0-0-released-with-new-group-and-members-blocks?utm_source=rss&utm_medium=rss&utm_campaign=buddypress-6-0-0-released-with-new-group-and-members-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4395:\"<p>BuddyPress has entered the world of blocks with the release of <a href=\"https://buddypress.org/2020/05/buddypress-6-0-0/\">version 6.0</a>, the latest major update that has been in development since November 2019. The release, code-named &ldquo;iovine&rsquo;s&rdquo; for a favorite pizza restaurant in Paris,   introduces blocks for Groups and Members. It also marks the completion of the BP Rest API, adding the final remaining endpoints for Blogs, Blog avatar, Friends, Group Cover Image, Member Cover Image, and User Signups.</p>



<p>The first set of blocks allow community site owners to insert a specific Member or Group from the editor into any WordPress post or page. More<a href=\"https://bpdevel.wordpress.com/2020/03/30/welcome-to-the-first-buddypress-blocks/#advanced-customizations\"> advanced customizations</a> are available to developers who want to make blocks available to (or restricted from) specific custom post types. Developers can also override block output using new filters, disable blocks, and specify a custom stylesheet for a block.</p>



<img />New BP Blocks in action



<p>In a previous WP Tavern review of the 6.0 beta, Justin Tadlock noted that the block settings had each setting is placed within its own tabbed section, which increased the number of clicks required. This feedback was incorporated six weeks ago in a <a href=\"https://buddypress.trac.wordpress.org/ticket/8271\">patch</a> from BuddyPress core developer Mathieu Viet, which places all settings into one panel until such a time as more panels become necessary.</p>



<h2>Next Up for BuddyPress: Block Versions of Existing Widgets and Community-Requested Blocks </h2>



<p>The BuddyPress community has a unique opportunity to shape the future of block development for the plugin. The next blocks are not yet set in stone but Viet said contributors will probably start by adding block versions of the existing widgets, followed by block requests based on community feedback.</p>



<p>&ldquo;The <a href=\"https://poll.fm/10425422\">poll</a> we made about BuddyPress blocks showed there were expectations about a block to share a post or a page into the Activity Stream, so l think we should include such a block,&rdquo; Viet said. &ldquo;But we&rsquo;re are very open to new ideas or contributions to the <a href=\"https://github.com/buddypress/bp-blocks\">GitHub repository</a> we use to develop them.&rdquo;</p>



<p>The poll results indicated that in addition to a block to share a post or a page via the Activity Stream, the community is also strongly interested a block to list the recently published posts from across a network, followed by a block to display Sitewide Notices posted by the site administrator.&nbsp;</p>



<p>Viet said core contributors have not yet set a roadmap but are working in small steps and carefully following the Gutenberg project to see how they can incorporate it more into community features. A block-based activity posting form is one feature they are considering. </p>



<p>Now is an important time for BuddyPress site owners to give input on the future of the project, whether through block recommendations or via the new <a href=\"https://mercime.survey.fm/2020-buddypress-survey\">2020 BuddyPress Survey</a>. It includes 17 questions, which take approximately 7-10 minutes to complete. Most of the questions are centered around how you are using BuddyPress on production sites, but one interesting question asks about the prospect of breaking up the plugin&rsquo;s features to make it more modular:</p>



<blockquote class=\"wp-block-quote\"><p>BuddyPress is a large plugin with optional components (3MB zipped). There&rsquo;s a proposal to reconstitute BuddyPress as core + members only and improved upon with new functionalities and API&rsquo;s among others for new BP plugins to hook into. The current optional components like groups, friends, private messaging, etc. can be migrated into separate plugins which can be activated as needed. What do you think?</p><p></p></blockquote>



<p>Survey respondents have the opportunity to choose between keeping BuddyPress as is with core + members and optional components, or break it down to put the components into BP plugins. Feedback on this proposal and other important survey questions will help the BP core team know how to prioritize features for the next release and long-term roadmap.</p>



<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 May 2020 22:06:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WordPress Theme Review Team Changes Name, Now the Themes Team\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99570\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:185:\"https://wptavern.com/wordpress-theme-review-team-changes-name-now-the-themes-team?utm_source=rss&utm_medium=rss&utm_campaign=wordpress-theme-review-team-changes-name-now-the-themes-team\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6243:\"<p class=\"has-drop-cap\">Last week, the official Theme Review Team (TRT) <a href=\"https://make.wordpress.org/themes/2020/05/12/meeting-notes-tuesday-12-may-2020/\">decided to change its name</a>. The re-branding was mostly about fixing a naming mistake for a team with multiple responsibilities outside of reviews. The hope is that it also shifts the public perception about what the team does.</p>



<p>The idea isn&rsquo;t new. The team has tossed the concept of a name change around for a few years. It was always going to become the Themes Team unless another naming idea came around and stole the spotlight.</p>



<p>The original concept of changing the name was about inviting others in. To most, the team had been little more than the gatekeepers to the theme directory. However, its members and the work they do for the community reach beyond that scope. Few know or recognize its role outside of reviewing themes, which makes it tougher to bring people on board.</p>



<p>&ldquo;We realized that we are doing all these theme-related things &mdash; work on Twenty Twenty, coding standards, meta stuff, reviews, helping out with full-site editing in any capacity we can, etc. &mdash; that being just the Theme Review Team just didn&rsquo;t make any sense,&rdquo; said Denis &#381;oljom, the team&rsquo;s automation representative. &ldquo;So we discussed that idea with Josepha [Haden]. In principle, she had nothing against it, so we decided to just go ahead and do the name change.&rdquo;</p>



<p>The team is in the process of renaming some things, such as its <a href=\"https://github.com/WPTRT/\">GitHub organization</a>. It will take a little time to get everything in order.</p>



<p>The Themes Team&rsquo;s primary mission is not changing in terms of reviewing themes. They will continue taking on that role of making sure themes meet coding and security standards, which is a vital and oftentimes thankless task.</p>



<p>&ldquo;We are reviewing themes as usual, but we are more experimenting with full-site editing,&rdquo; said &#381;oljom. &ldquo;I&rsquo;m playing with Gutenberg outside of the editor context in my own projects, so that also gives me a perspective to see what things will change. We are still maintaining the <a href=\"https://github.com/WPTRT/WPThemeReview\">WPThemeReview</a>. <a href=\"https://github.com/WordPress/theme-check\">Theme Check</a> has seen tons of improvements by Carolina [Nymark], which should be merged on .ORG soon. Ari [Stathopoulos] is working on some Gutenberg-related projects. I have the <a href=\"https://wptavern.com/proposal-to-move-wordpress-theme-review-process-to-github\">GitHub review flow</a> that I&rsquo;d like to explore soon.&rdquo;</p>



<p>&#381;oljom recently dropped the <a href=\"https://github.com/WPTRT/theme-sniffer\">Theme Sniffer</a> plugin, which was a useful tool for theme authors to check their theme against the WPThemeReview coding standards. He did not have the help from the larger theme developer community to continue working on it. Developers can still use the CLI to check their themes. The plugin was a nice stepping stone for theme authors who are less savvy at typing commands, but projects live and die based on participation.</p>



<p>The team representatives want to bring new contributors to the team. &ldquo;Reviewing themes is an exhausting and complicated process,&rdquo; said &#381;oljom, &ldquo;and, unfortunately, most people give up very fast.&rdquo; The team also needs fresh blood so that it can rotate through reps. Few people have the necessary experience to fill this role, and the current reps will eventually burn out.</p>



<p>&ldquo;We want to work on more interesting projects that will bring new people who are willing to help with them,&rdquo; said &#381;oljom. &ldquo;Especially around full-site editing that is coming to core soon. It&rsquo;s a big change, and the more contributors we have to help and test things the better.&rdquo;</p>



<h2>The Evolving Team</h2>



<p class=\"has-drop-cap\">Ari Stathopoulos, the theme packages representative, pointed out the elephant in the room. The name of the team represented a public perception issue. In part, the team name did not make an appealing case for a newcomer to join the team. On the other side of the aisle, it meant the team was sometimes left out on the .ORG side of things, such as not being brought in on key decisions that affect themes.</p>



<p>&ldquo;People don&rsquo;t know that we do all the things we do,&rdquo; said Stathopoulos. &ldquo;They believe that all this team does is reviews because that&rsquo;s what the name of the team was. The truth is that if something has to do with themes, we work on it. There are cases that we don&rsquo;t, but that&rsquo;s usually because of miscommunication. People don&rsquo;t think of consulting with &lsquo;reviewers&rsquo; before making changes that have an impact on themes. Hopefully, this re-branding of the team will eventually lead to better communication and understanding. It may take some time, but we&rsquo;ll get there.&rdquo;</p>



<p>The Themes Team is beginning to take on even more responsibility. It has been holding <a href=\"https://wptavern.com/key-takeaways-from-the-first-future-of-themes-meeting\">block-based themes meetings</a> every two weeks in an attempt to keep everyone updated with the rapid theme-related changes happening in the Gutenberg project. The Make Themes blog will also be <a href=\"https://make.wordpress.org/themes/2020/05/15/gutenberg-themes-week-of-may-11-2020/\">receiving weekly updates</a> to help those who are unable to attend the meetings and offer another line of communication.</p>



<p>Arguably, the Themes Team will become one of the most important teams over the next year or so. It must bring in new volunteers to help the community transition to a different theme development experience.</p>



<p>&ldquo;There is a definite shift of focus, and future themes should be easier to review, leaving this team more time and energy to focus on actions that will have more impact for the community,&rdquo; said Stathopoulos. &ldquo;So changing the name was not only correcting an old mistake but also paving the way for future actions we want to take.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 May 2020 19:29:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: iA Writer Adds Expanded Support for IndieWeb Tools and WordPress Publishing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99636\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:215:\"https://wptavern.com/ia-writer-adds-expanded-support-for-indieweb-tools-and-wordpress-publishing?utm_source=rss&utm_medium=rss&utm_campaign=ia-writer-adds-expanded-support-for-indieweb-tools-and-wordpress-publishing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2360:\"<img />



<p><a href=\"https://ia.net/\">iA Writer</a> has been delighting users with its minimal writing experience for nearly a decade, racking up more than 3 million downloads. The most recent <a href=\"https://ia.net/writer/blog/new-pdf-preview-better-web-publishing-improved-editing\">version 5.5</a> release for Mac and iOS moves the bar higher for competing writing apps with new support for previewing PDFs and improved support for publishing to self-hosted WordPress sites.</p>



<p>In 2019, MacStories selected iA Writer as <a href=\"https://www.macstories.net/stories/macstories-selects-2019-recognizing-the-best-apps-of-the-year/\">App of the Year</a>, describing it as &ldquo;a case study on how to build a desktop-class iOS/iPadOS app in 2019 that understands the traits of each platform while offering an opinionated, sophisticated design at the same time.&rdquo; MacStories&rsquo; writeup details many reasons why the app continues to find success in 2020.</p>



<p>This week&rsquo;s update introduces support for Micropub, which allows users to publish to Micro.blog and other IndieWeb tools. It also expands the availability of the the IndieAuth system for publishing to WordPress. Users are no longer limited to using Jetpack to authenticate their self-hosted sites. </p>



<p>iA Writer users can now use the more lightweight <a href=\"https://wordpress.org/plugins/indieauth/\">IndieAuth plugin</a> to publish to their self-hosted sites. The plugin acts as an extension to OAuth, allowing the user&rsquo;s website to be their own OAuth server. This option is helpful for iA Writer users who were <a href=\"https://steven.brokaw.org/posts/ulysses-vs-ia-writer\">reluctant to install Jetpack</a> just to hook up their accounts for publishing. </p>



<p>Continued support for WordPress publishing comes as no surprise, not just because of its ubiquity on the web, but also because the <a href=\"https://ia.net/\">iA company website</a> and blog rely on WordPress. </p>



<p>iA Writer 5.5 also improves account management for connected services, allowing for the use and reordering of multiple accounts for WordPress, Medium, Ghost and Micropub. Check out the <a href=\"https://ia.net/writer/blog/new-pdf-preview-better-web-publishing-improved-editing\">release</a> post for a more detailed look at the Mac and iOS-specific updates in this release.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 May 2020 21:46:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: Gutenberg 8.1 Includes Block Copying, Testimonials Pattern, and Patterns UI Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99703\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:225:\"https://wptavern.com/gutenberg-8-1-includes-block-copying-testimonials-pattern-and-patterns-ui-update?utm_source=rss&utm_medium=rss&utm_campaign=gutenberg-8-1-includes-block-copying-testimonials-pattern-and-patterns-ui-update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6337:\"<p class=\"has-drop-cap\">On Wednesday, the Gutenberg team <a href=\"https://make.wordpress.org/core/2020/05/13/whats-new-in-gutenberg-13-may/\">released version 8.1.0</a> of the plugin. The update includes a new block-copying feature, block pattern search, testimonials pattern, and API changes. The new version does not add a lot of major user-facing changes but improves the experience overall.</p>



<p>The update included two dozen bug fixes and nearly as many enhancements. This release feels more like a solid update that addresses many minor items and nit-picks, such as the <a href=\"https://github.com/WordPress/gutenberg/pull/22082\">addition of black and white colors</a> for the default color palette.  The ability to <a href=\"https://github.com/WordPress/gutenberg/pull/21758\">paste a document into the post title input</a>, which gets transformed into proper blocks, works great too.</p>



<p>One nice improvement is the ability to <a href=\"https://github.com/WordPress/gutenberg/pull/21779\">transform the HTML block to the Code block</a> and vice versa. File this one under <em>why has this not already been possible?</em></p>



<p>If you are following along with the Gutenberg plugin, there are some definite improvements to look forward to in this release, particularly around the block patterns feature.</p>



<h2>Copy Blocks with Ease</h2>



<img />Copying a pullquote block.



<p class=\"has-drop-cap\">Admittedly, this is quickly becoming one of my favorite features of Gutenberg 8.1. The editor toolbar now has a copy button, which allows end-users to <a href=\"https://github.com/WordPress/gutenberg/pull/22214\">copy one or more blocks</a> at the click of a button. It is tucked under the &ldquo;more rich text controls&rdquo; dropdown menu.</p>



<p>To use the new copy feature, simply select the block or blocks you want to copy. Then, click the copy button. From that point, the block can be pasted back into the editor.</p>



<p>For theme authors, plugin developers, or anyone who wants to share the code for a block, copying a block also produces the HTML that can be pasted into a text editor. No more switching to the code view of the editor and hunting down the HTML you want to copy. For example, the pullquote copied from the post in the above screenshot produced the following HTML when pasting into my text editor:</p>



<pre class=\"wp-block-code\"><code>&lt;!-- wp:pullquote {\"align\":\"wide\"} --&gt;
&lt;figure class=\"wp-block-pullquote alignwide\"&gt;&lt;blockquote&gt;&lt;p&gt;&lt;span class=\"rtex-highlighter-0\"&gt;What has the Duke of Devonshire? The only great instance that I have ever known of the enjoyment of wealth was, that of Jamaica Dawkins...&lt;/span&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/figure&gt;
&lt;!-- /wp:pullquote --&gt;</code></pre>



<p>This should make it easy for developers to copy the code of their custom block patterns.</p>



<h2>Testimonials Pattern</h2>



<img />New pattern for testimonials.



<p class=\"has-drop-cap\">The team added to its growing collection of block patterns with the addition of the <a href=\"https://github.com/WordPress/gutenberg/pull/20894\">Testimonials pattern</a>. The new pattern brings the library to eight in total. It is unclear which patterns will launch when the feature lands in WordPress core. It is still under heavy development and is experimental.</p>



<p>The Testimonials pattern is one of the more complex patterns the team has introduced. It is a mix of groups, columns, images, and paragraphs. At points, the blocks are six levels deep.</p>



<p>Overall, it worked well among the various themes I tested it against with custom block styles. Visually, it is not inspiring, at least in comparison to what a good designer can do with a testimonials section, but it is a solid stepping stone on the way to more interesting layouts.</p>



<h2>Inserter UI Adds Search and Titles</h2>



<img />Search for block patterns via the inserter section.



<p class=\"has-drop-cap\">Crossing off two out of three big wish list items from my <a href=\"https://wptavern.com/gutenberg-8-0-merges-block-and-pattern-inserter-adds-inline-formats-and-updates-code-editor\">Gutenberg 8.0</a> post, the team added search functionality and reintroduced the pattern titles below each pattern in the inserter. These are major improvements. The only item left on my list is for the team to introduce a categorization system for patterns.</p>



<p>The search box switches from searching for blocks to patterns once clicking on the patterns tab. The one issue is the search label and placeholder reads &ldquo;Search for a block&rdquo; in both instances. Instead, it should read &ldquo;Search for a pattern&rdquo; when searching patterns.</p>



<p>With my wish list nearly fulfilled for block patterns, I have one more item to add. I would like to see the team introduce slash commands to insert patterns. Typing <code>/testimonials</code> should provide users the option to insert the new Testimonials pattern without clicking the inserter button.</p>



<h2>Developers: Block Patterns API Changes</h2>



<p class=\"has-drop-cap\">The Block Patterns API methods of <a href=\"https://github.com/WordPress/gutenberg/pull/21970\">registering and unregistering patterns</a> have changed. In previous versions, developers used the <code>register_pattern()</code> and <code>unregister_pattern()</code> functions. These have been deprecated. Beginning with 8.1.0, developers should update their code to use the <code>register_block_pattern()</code> and <code>unregister_block_pattern()</code> functions.</p>



<p>This API change is welcome. It is needed for clarity. However, this sort of API change, even on an experimental feature, is one of the many things that <a href=\"https://wptavern.com/where-gutenberg-went-wrong-theme-developer-edition\">frustrates developers</a> who are attempting to keep up with the project. It is especially frustrating when the discussion was originally opened when the feature was <a href=\"https://github.com/WordPress/gutenberg/pull/21074\">first merged</a>. Naming things is hard. It is one of the hardest things to do in programming, but good naming schemes can also be the difference between great software and poor software. There should be more careful thought and thorough explanations when these issues pop up in tickets.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 May 2020 20:04:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Google Patches Critical Vulnerability in Site Kit Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=99654\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:177:\"https://wptavern.com/google-patches-critical-vulnerability-in-site-kit-plugin?utm_source=rss&utm_medium=rss&utm_campaign=google-patches-critical-vulnerability-in-site-kit-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2865:\"<p>In late April Wordfence discovered a critical vulnerability in <a href=\"https://wordpress.org/plugins/google-site-kit/\">Google&rsquo;s Site Kit plugin for WordPress</a> that would make it possible for any user on the site to gain full access to the Google Search Console without verifying ownership. Google patched the vulnerability and released the fix in version 1.8.0 on May 7, 2020.</p>



<p>Wordfence <a href=\"https://www.wordfence.com/blog/2020/05/vulnerability-in-google-wordpress-plugin-grants-attacker-search-console-access/\">published</a> a timeline of the vulnerability, describing it as a proxySetupURL disclosure: </p>



<blockquote class=\"wp-block-quote\"><p>In order to establish the first connection with Site Kit and Google Search Console, the plugin generates a proxySetupURL that is used to redirect a site&rsquo;s administrator to Google OAuth and run the site owner verification process through a proxy. Due to the lack of capability checks on the admin_enqueue_scripts action, the proxySetupURL was displayed as part of the HTML source code of admin pages to any authenticated user accessing the /wp-admin dashboard.</p></blockquote>



<p>The other aspect of the vulnerability is related to the site ownership verification request, which used a registered admin action that was missing capability checks. As a result, any authenticated WordPress user was capable of initiating the request. </p>



<p>Wordfence identified several ways a malicious attacker might use this vulnerability to the detriment of the site&rsquo;s ranking and reputation, including manipulating search engine results, requesting removal of a competitor&rsquo;s URLs from the search engine, modifying sitemaps, viewing performance data, and more.</p>



<p>The security fixes are not detailed in the plugin&rsquo;s <a href=\"https://github.com/google/site-kit-wp/releases/tag/1.8.0\">changelog on GitHub</a>. It does, however, include a note at the top that states, &ldquo;This release includes security fixes. An update is strongly recommended.&rdquo; Google has not published a post to notify users on the <a href=\"https://sitekit.withgoogle.com/news/\">news</a> section of the plugin&rsquo;s official website. Without Wordfence&rsquo;s public disclosure, users may not know about the importance of the update.</p>



<p><a href=\"https://wordpress.org/plugins/google-site-kit/\">Google&rsquo;s Site Kit plugin</a> has more than 400,000 active installs, according to WordPress.org. Details of the 1.8.0 update are not available to users in the admin, since the plugin&rsquo;s changelog is hosted on GitHub. There is no way for users to know that the update includes security fixes without clicking through to research. Due to the great deal of sensitive information to which attackers could gain access, users are advised to update the plugin as soon as possible. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 May 2020 22:39:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 14 Jun 2020 11:13:59 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sun, 14 Jun 2020 11:00:07 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:2:\"br\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('152', '_site_transient_timeout_community-events-5ae63f0e8b382f5fd42c70ec956bf210', '1592176438', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('153', '_site_transient_community-events-5ae63f0e8b382f5fd42c70ec956bf210', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"62.83.255.0\";}s:6:\"events\";a:5:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:24:\"WordCamp Denver, CO, USA\";s:3:\"url\";s:32:\"https://2020.denver.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-06-26 14:15:00\";s:8:\"end_date\";s:19:\"2020-06-27 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:39.7392358000000029960574465803802013397216796875;s:9:\"longitude\";d:-104.99025100000000065847416408360004425048828125;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:65:\"[ONLINE] WordPress es seguro, y si te dicen lo contrario, mienten\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPressGranollers/events/266778721/\";s:6:\"meetup\";s:20:\"WordPress Granollers\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPressGranollers/\";s:4:\"date\";s:19:\"2020-06-16 18:30:00\";s:8:\"end_date\";s:19:\"2020-06-16 20:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:41.6100006103520030364961712621152400970458984375;s:9:\"longitude\";d:2.27999997138979981770035010413266718387603759765625;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:32:\"Copias de seguridad en WordPress\";s:3:\"url\";s:53:\"https://www.meetup.com/wordpressbcn/events/263549192/\";s:6:\"meetup\";s:19:\"WordPress Barcelona\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/wordpressbcn/\";s:4:\"date\";s:19:\"2020-06-26 18:30:00\";s:8:\"end_date\";s:19:\"2020-06-26 20:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:41.40000152587899862055564881302416324615478515625;s:9:\"longitude\";d:2.17000007629390001540059529361315071582794189453125;}}i:3;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"Dise�o en general WordPress\";s:3:\"url\";s:53:\"https://www.meetup.com/wordpressbcn/events/263549199/\";s:6:\"meetup\";s:19:\"WordPress Barcelona\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/wordpressbcn/\";s:4:\"date\";s:19:\"2020-07-24 18:30:00\";s:8:\"end_date\";s:19:\"2020-07-24 20:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Barcelona, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:41.3869438171389987246584496460855007171630859375;s:9:\"longitude\";d:2.171678066253699856957837255322374403476715087890625;}}i:4;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Gen�ve\";s:3:\"url\";s:33:\"https://2020.geneve.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-10-10 08:15:00\";s:8:\"end_date\";s:19:\"2020-10-10 08:15:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Gen�ve, Suisse\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.2204607999999979028871166519820690155029296875;s:9:\"longitude\";d:6.098682900000000017826096154749393463134765625;}}}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('137', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('138', '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1592090160', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('139', '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4700;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4155;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2673;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2558;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1964;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1810;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1794;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1487;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1478;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1477;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1454;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1430;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1423;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1303;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1201;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1193;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1126;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1124;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1098;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:998;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:882;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:876;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:875;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:868;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:793;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:777;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:774;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:771;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:763;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:749;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:727;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:717;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:717;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:692;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:654;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:654;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:653;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:645;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:630;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:626;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:592;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:584;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:576;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:575;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:573;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:556;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:548;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:548;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:546;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:538;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:536;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:529;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:523;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:517;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:508;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:506;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:503;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:501;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:494;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:479;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:477;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:469;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:443;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:437;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:433;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:428;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:427;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:422;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:408;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:398;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:397;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:397;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:390;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:386;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:377;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:374;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:371;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:367;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:362;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:359;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:357;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:356;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:352;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:349;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:343;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:340;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:336;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:335;}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('140', '_site_transient_timeout_browser_5c391811d216df1f5da3e76cabd74e9b', '1592684168', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('141', '_site_transient_browser_5c391811d216df1f5da3e76cabd74e9b', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"13.1.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('142', '_site_transient_timeout_community-events-62d76a5844ab953e7494ea3d48f7a5d1', '1592122569', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('143', '_site_transient_community-events-62d76a5844ab953e7494ea3d48f7a5d1', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"95.125.127.0\";}s:6:\"events\";a:3:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:24:\"WordCamp Denver, CO, USA\";s:3:\"url\";s:32:\"https://2020.denver.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-06-26 14:15:00\";s:8:\"end_date\";s:19:\"2020-06-27 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:39.7392358000000029960574465803802013397216796875;s:9:\"longitude\";d:-104.99025100000000065847416408360004425048828125;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:76:\"C�mo aumentar las ventas de tu Woocommerce optimizando la ficha de producto\";s:3:\"url\";s:65:\"https://www.meetup.com/Granada-WordPress-Meetup/events/270704548/\";s:6:\"meetup\";s:24:\"Granada WordPress Meetup\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/Granada-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-06-17 18:30:00\";s:8:\"end_date\";s:19:\"2020-06-17 20:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:37.169998168944999861196265555918216705322265625;s:9:\"longitude\";d:-3.58999991416929997711804389837197959423065185546875;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"[ONLINE] +150 snippets de WordPress a un clic con Visual Code\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Malaga/events/271179253/\";s:6:\"meetup\";s:17:\"WordPress M�laga\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Malaga/\";s:4:\"date\";s:19:\"2020-06-25 19:00:00\";s:8:\"end_date\";s:19:\"2020-06-25 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:36.7200012207029971023075631819665431976318359375;s:9:\"longitude\";d:-4.42000007629390001540059529361315071582794189453125;}}}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('145', '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1592133233;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('148', 'recovery_mode_email_last_sent', '1592080243', 'yes');
INSERT INTO `wp_options`(`option_id`, `option_name`, `option_value`, `autoload`) VALUES ('149', 'recovery_keys', 'a:1:{s:22:\"QfnBqY9yfUiNh4SBFxIzgU\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BtHqjKZB/H6TCii9Jx7XXrgyXVs6ED/\";s:10:\"created_at\";i:1592080243;}}', 'yes');
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_postmeta`(`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta`(`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES ('2', '3', '_wp_page_template', 'default');
INSERT INTO `wp_postmeta`(`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES ('3', '5', '_wp_attached_file', '2020/06/MP_VENUS_02.png');
INSERT INTO `wp_postmeta`(`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES ('4', '5', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2020/06/MP_VENUS_02.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"MP_VENUS_02-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"MP_VENUS_02-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"MP_VENUS_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"MP_VENUS_02-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"MP_VENUS_02-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"MP_VENUS_02-1200x675.png\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_posts`(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES ('1', '1', '2020-06-13 20:13:55', '2020-06-13 20:13:55', ' ', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-06-13 20:13:55', '2020-06-13 20:13:55', '', '0', 'http://juancv.com/?p=1', '0', 'post', '', '1');
INSERT INTO `wp_posts`(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES ('2', '1', '2020-06-13 20:13:55', '2020-06-13 20:13:55', '<!-- wp:paragraph -->
<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>...or something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>As a new WordPress user, you should go to <a href=\"http://juancv.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>
<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-06-13 20:13:55', '2020-06-13 20:13:55', '', '0', 'http://juancv.com/?page_id=2', '0', 'page', '', '0');
INSERT INTO `wp_posts`(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES ('3', '1', '2020-06-13 20:13:55', '2020-06-13 20:13:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://juancv.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-13 20:13:55', '2020-06-13 20:13:55', '', '0', 'http://juancv.com/?page_id=3', '0', 'page', '', '0');
INSERT INTO `wp_posts`(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES ('4', '1', '2020-06-13 20:15:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-13 20:15:46', '0000-00-00 00:00:00', '', '0', 'http://juancv.com/?p=4', '0', 'post', '', '0');
INSERT INTO `wp_posts`(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES ('5', '1', '2020-06-13 20:48:46', '2020-06-13 20:48:46', '', 'MP_VENUS_02', '', 'inherit', 'open', 'closed', '', 'mp_venus_02', '', '', '2020-06-13 20:48:46', '2020-06-13 20:48:46', '', '0', 'http://juancv.com/wp-content/uploads/2020/06/MP_VENUS_02.png', '0', 'attachment', 'image/png', '0');
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_term_relationships`(`object_id`, `term_taxonomy_id`, `term_order`) VALUES ('1', '1', '0');
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_term_taxonomy`(`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES ('1', '1', 'category', '', '0', '1');
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_terms`(`term_id`, `name`, `slug`, `term_group`) VALUES ('1', 'Uncategorized', 'uncategorized', '0');
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('1', '1', 'nickname', 'qjHCf4tjFR');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('2', '1', 'first_name', '');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('3', '1', 'last_name', '');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('4', '1', 'description', '');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('8', '1', 'admin_color', 'fresh');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('11', '1', 'locale', '');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('12', '1', 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('13', '1', 'wp_user_level', '10');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('14', '1', 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('16', '1', 'session_tokens', 'a:3:{s:64:\"a95eb88945a3e1d8abf6114e25ffeae228880a0e96d701dd217808905d130610\";a:4:{s:10:\"expiration\";i:1592252145;s:2:\"ip\";s:12:\"62.83.255.37\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1592079345;}s:64:\"0ed75a440e6ba342ab1a64ac5cf6048878b9eef004bb4fcd1c25854699698eea\";a:4:{s:10:\"expiration\";i:1592252167;s:2:\"ip\";s:14:\"95.125.127.105\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15\";s:5:\"login\";i:1592079367;}s:64:\"75e64d20be2ce6921061c2fba768df0838b81a05c26a95787afce37bef7af6fd\";a:4:{s:10:\"expiration\";i:1592306032;s:2:\"ip\";s:12:\"62.83.255.37\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1592133232;}}');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('17', '1', 'wp_dashboard_quick_press_last_post_id', '4');
INSERT INTO `wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"62.83.255.0\";}');
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_users`(`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES ('1', 'qjHCf4tjFR', '$P$BE6G2CoApzCKGF1IbE75tMptFb3N3o/', 'qjhcf4tjfr', 'info@sauronz.com', 'http://juancv.com', '2020-06-13 20:13:55', '', '0', 'qjHCf4tjFR');
#---------------------------------------------------------------------------------

