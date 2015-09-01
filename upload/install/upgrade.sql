-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2015 at 01:40 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `1023-31`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(103, 7, '#', 'catalog/demo_theme/slide.jpg', 0),
(104, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo_theme/slideshow2.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(105, 7, '#', 'catalog/demo_theme/slideshow3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(104, 1, 7, 'Slideshow 2'),
(87, 1, 6, 'HP Banner'),
(93, 1, 8, 'Canon'),
(92, 1, 8, 'Burger King'),
(91, 1, 8, 'Coca Cola'),
(90, 1, 8, 'Disney'),
(89, 1, 8, 'Dell'),
(103, 1, 7, 'Slideshow 1'),
(88, 1, 8, 'Harley Davidson'),
(94, 1, 8, 'NFL'),
(95, 1, 8, 'RedBull'),
(96, 1, 8, 'Sony'),
(97, 1, 8, 'Starbucks'),
(98, 1, 8, 'Nintendo'),
(105, 1, 7, 'Slideshow 3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=430 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'special'),
(429, 'module', 'featuredcategory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(76, 1, 'featured.28', 'content_top', 3),
(75, 1, 'slideshow.27', 'content_top', 1),
(74, 1, 'carousel.29', 'content_top', 3),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(77, 1, 'featuredcategory.32', 'content_top', 2),
(78, 1, 'category', 'column_left', 1),
(79, 1, 'special.31', 'column_left', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(54, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(4, 'Back to top', 'backtotop', 'websitemart.vn', '1.0', 'http://www.octheme.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Back to top</name>\r\n    <code>backtotop</code>\r\n    <version>1.0</version>\r\n    <author>websitemart.vn</author>\r\n    <link>http://www.octheme.com</link>\r\n	<file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search><![CDATA[</head>]]></search>\r\n			<add position="before">\r\n				<![CDATA[\r\n					<link rel="stylesheet" type="text/css" media="screen,projection" href="catalog/view/javascript/backtotop/stylesheet/ui.totop.css" />\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path="catalog/view/theme/*/template/common/footer.tpl">\r\n		<operation>\r\n			<search><![CDATA[</body>]]></search>\r\n			<add position="before">\r\n				<![CDATA[	\r\n					<script src="catalog/view/javascript/backtotop/js/easing.js" type="text/javascript"></script>\r\n					<script src="catalog/view/javascript/backtotop/js/jquery.ui.totop.min.js" type="text/javascript"></script>\r\n					<script type="text/javascript">\r\n						$(document).ready(function() {\r\n							/*\r\n							var defaults = {\r\n								containerID: ''toTop'', // fading element id\r\n								containerHoverID: ''toTopHover'', // fading element hover id\r\n								scrollSpeed: 1200,\r\n								easingType: ''linear'' \r\n							};\r\n							*/\r\n							\r\n							$().UItoTop({ easingType: ''easeOutQuart'' });\r\n							\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-06-28 16:16:43'),
(5, 'Custom background-color Admin page', 'Custom background-color Admin page', 'websitemart.vn', '1.0', 'http://www.octheme.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Custom background-color Admin page</name>\r\n    <code>Custom background-color Admin page</code>\r\n    <version>1.0</version>\r\n    <author>websitemart.vn</author>\r\n    <link>http://www.octheme.com</link>\r\n    <file path="admin/controller/setting/setting.php">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            $data[''heading_title''] = $this->language->get(''heading_title'');\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $data[''text_background''] = $this->language->get(''text_background'');\r\n            $data[''text_backgroundhover''] = $this->language->get(''text_backgroundhover'');\r\n            $data[''text_links''] = $this->language->get(''text_links'');\r\n            $data[''text_links_hover''] = $this->language->get(''text_links_hover'');\r\n            $data[''text_icon''] = $this->language->get(''text_icon'');\r\n            $data[''text_icon_hover''] = $this->language->get(''text_icon_hover'');\r\n            $data[''text_search''] = $this->language->get(''text_search'');\r\n            $data[''text_cart''] = $this->language->get(''text_cart'');\r\n            $data[''text_buttonsearchbg''] = $this->language->get(''text_buttonsearchbg'');\r\n            $data[''text_buttonsearchcolor''] = $this->language->get(''text_buttonsearchcolor'');\r\n            $data[''text_menu''] = $this->language->get(''text_menu'');\r\n            $data[''text_dropdown''] = $this->language->get(''text_dropdown'');\r\n            $data[''text_footer''] = $this->language->get(''text_footer'');\r\n            $data[''text_products''] = $this->language->get(''text_products'');\r\n            $data[''text_buttoncartbg''] = $this->language->get(''text_buttoncartbg'');\r\n            $data[''text_buttoncarttext''] = $this->language->get(''text_buttoncarttext'');\r\n            $data[''text_buttoncartbghover''] = $this->language->get(''text_buttoncartbghover'');\r\n            $data[''text_buttoncarttexthover''] = $this->language->get(''text_buttoncarttexthover'');\r\n            $data[''text_buttoncartlikebg''] = $this->language->get(''text_buttoncartlikebg'');\r\n            $data[''text_buttoncartlikebghover''] = $this->language->get(''text_buttoncartlikebghover'');\r\n            $data[''text_buttoncartlike''] = $this->language->get(''text_buttoncartlike'');\r\n            $data[''text_buttoncartlikehover''] = $this->language->get(''text_buttoncartlikehover'');\r\n            $data[''text_buttondefault''] = $this->language->get(''text_buttondefault'');\r\n            $data[''text_buttondefaulthover''] = $this->language->get(''text_buttondefaulthover'');\r\n            $data[''text_popup_image''] = $this->language->get(''text_popup_image'');\r\n\r\n            $data[''entry_backgroundimage''] = $this->language->get(''entry_backgroundimage'');\r\n            $data[''help_backgroundimage''] = $this->language->get(''help_backgroundimage'');\r\n            $data[''entry_repeatbackground''] = $this->language->get(''entry_repeatbackground'');\r\n            $data[''entry_backgroundcolor''] = $this->language->get(''entry_backgroundcolor'');\r\n\r\n            $data[''text_general''] = $this->language->get(''text_general'');\r\n            $data[''help_general''] = $this->language->get(''help_general'');\r\n            $data[''help_search''] = $this->language->get(''help_search'');\r\n            $data[''help_cart''] = $this->language->get(''help_cart'');\r\n            $data[''help_menu''] = $this->language->get(''help_menu'');\r\n            $data[''help_footer''] = $this->language->get(''help_footer'');\r\n            $data[''help_products''] = $this->language->get(''help_products'');\r\n\r\n            $data[''tab_themepanel''] = $this->language->get(''tab_themepanel'');\r\n\r\n            $data[''entry_text_color''] = $this->language->get(''entry_text_color'');\r\n            $data[''entry_link_color''] = $this->language->get(''entry_link_color'');\r\n            $data[''entry_link_color_hover''] = $this->language->get(''entry_link_color_hover'');\r\n            $data[''entry_title_color''] = $this->language->get(''entry_title_color'');\r\n            $data[''entry_title_colorhover''] = $this->language->get(''entry_title_colorhover'');\r\n\r\n            $data[''text_top_bar''] = $this->language->get(''text_top_bar'');\r\n            $data[''help_top_bar''] = $this->language->get(''help_top_bar'');\r\n            $data[''entry_top_bar_background''] = $this->language->get(''entry_top_bar_background'');\r\n\r\n            ]]></add>\r\n		</operation>\r\n        <operation error="skip">\r\n			<search><![CDATA[\r\n            $this->load->model(''localisation/return_status'');\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            if (isset($this->request->post[''config_backgroundimage''])) {\r\n			$data[''config_backgroundimage''] = $this->request->post[''config_backgroundimage''];\r\n		} else {\r\n			$data[''config_backgroundimage''] = $this->config->get(''config_backgroundimage'');\r\n		}\r\n\r\n		if (isset($this->request->post[''config_backgroundimage'']) && is_file(DIR_IMAGE . $this->request->post[''config_backgroundimage''])) {\r\n			$data[''backgroundimage''] = $this->model_tool_image->resize($this->request->post[''config_logo''], 100, 100);\r\n		} elseif ($this->config->get(''config_backgroundimage'') && is_file(DIR_IMAGE . $this->config->get(''config_backgroundimage''))) {\r\n			$data[''backgroundimage''] = $this->model_tool_image->resize($this->config->get(''config_backgroundimage''), 100, 100);\r\n		} else {\r\n			$data[''backgroundimage''] = $this->model_tool_image->resize(''no_image.png'', 100, 100);\r\n		}\r\n\r\n        if (isset($this->request->post[''config_repeatbackground''])) {\r\n			$data[''config_repeatbackground''] = $this->request->post[''config_repeatbackground''];\r\n		} else {\r\n			$data[''config_repeatbackground''] = $this->config->get(''config_repeatbackground'');\r\n		}\r\n        $data[''repeatbackgrounds''] = array(\r\n        ''no-repeat'',\r\n		''repeat-x'',\r\n		''repeat-y'',\r\n        ''repeat'',\r\n        );\r\n        if (isset($this->request->post[''config_backgroundcolor''])) {\r\n			$data[''config_backgroundcolor''] = $this->request->post[''config_backgroundcolor''];\r\n		} else {\r\n			$data[''config_backgroundcolor''] = $this->config->get(''config_backgroundcolor'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_text_color''])) {\r\n			$data[''config_text_color''] = $this->request->post[''config_text_color''];\r\n		} else {\r\n			$data[''config_text_color''] = $this->config->get(''config_text_color'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_link_color''])) {\r\n			$data[''config_link_color''] = $this->request->post[''config_link_color''];\r\n		} else {\r\n			$data[''config_link_color''] = $this->config->get(''config_link_color'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_link_color_hover''])) {\r\n			$data[''config_link_color_hover''] = $this->request->post[''config_link_color_hover''];\r\n		} else {\r\n			$data[''config_link_color_hover''] = $this->config->get(''config_link_color_hover'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_title_color''])) {\r\n			$data[''config_title_color''] = $this->request->post[''config_title_color''];\r\n		} else {\r\n			$data[''config_title_color''] = $this->config->get(''config_title_color'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_top_bar_background''])) {\r\n			$data[''config_top_bar_background''] = $this->request->post[''config_top_bar_background''];\r\n		} else {\r\n			$data[''config_top_bar_background''] = $this->config->get(''config_top_bar_background'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_top_bar_link_color''])) {\r\n			$data[''config_top_bar_link_color''] = $this->request->post[''config_top_bar_link_color''];\r\n		} else {\r\n			$data[''config_top_bar_link_color''] = $this->config->get(''config_top_bar_link_color'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_top_bar_link_color_hover''])) {\r\n			$data[''config_top_bar_link_color_hover''] = $this->request->post[''config_top_bar_link_color_hover''];\r\n		} else {\r\n			$data[''config_top_bar_link_color_hover''] = $this->config->get(''config_top_bar_link_color_hover'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_top_bar_link_icon''])) {\r\n			$data[''config_top_bar_link_icon''] = $this->request->post[''config_top_bar_link_icon''];\r\n		} else {\r\n			$data[''config_top_bar_link_icon''] = $this->config->get(''config_top_bar_link_icon'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_searchbackground''])) {\r\n			$data[''config_searchbackground''] = $this->request->post[''config_searchbackground''];\r\n		} else {\r\n			$data[''config_searchbackground''] = $this->config->get(''config_searchbackground'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_searchcolor''])) {\r\n			$data[''config_searchcolor''] = $this->request->post[''config_searchcolor''];\r\n		} else {\r\n			$data[''config_searchcolor''] = $this->config->get(''config_searchcolor'');\r\n		}\r\n        if (isset($this->request->post[''config_button_searchcolor''])) {\r\n			$data[''config_button_searchcolor''] = $this->request->post[''config_button_searchcolor''];\r\n		} else {\r\n			$data[''config_button_searchcolor''] = $this->config->get(''config_button_searchcolor'');\r\n		}\r\n        if (isset($this->request->post[''config_button_searchbackground''])) {\r\n			$data[''config_button_searchbackground''] = $this->request->post[''config_button_searchbackground''];\r\n		} else {\r\n			$data[''config_button_searchbackground''] = $this->config->get(''config_button_searchbackground'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_cartbackground''])) {\r\n			$data[''config_cartbackground''] = $this->request->post[''config_cartbackground''];\r\n		} else {\r\n			$data[''config_cartbackground''] = $this->config->get(''config_cartbackground'');\r\n		}\r\n        if (isset($this->request->post[''config_cartbackgroundopen''])) {\r\n			$data[''config_cartbackgroundopen''] = $this->request->post[''config_cartbackgroundopen''];\r\n		} else {\r\n			$data[''config_cartbackgroundopen''] = $this->config->get(''config_cartbackgroundopen'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_cartlink''])) {\r\n			$data[''config_cartlink''] = $this->request->post[''config_cartlink''];\r\n		} else {\r\n			$data[''config_cartlink''] = $this->config->get(''config_cartlink'');\r\n		}\r\n        if (isset($this->request->post[''config_cartlinkopen''])) {\r\n			$data[''config_cartlinkopen''] = $this->request->post[''config_cartlinkopen''];\r\n		} else {\r\n			$data[''config_cartlinkopen''] = $this->config->get(''config_cartlinkopen'');\r\n		}\r\n\r\n\r\n        if (isset($this->request->post[''config_menubackground''])) {\r\n			$data[''config_menubackground''] = $this->request->post[''config_menubackground''];\r\n		} else {\r\n			$data[''config_menubackground''] = $this->config->get(''config_menubackground'');\r\n		}\r\n        if (isset($this->request->post[''config_menulink''])) {\r\n			$data[''config_menulink''] = $this->request->post[''config_menulink''];\r\n		} else {\r\n			$data[''config_menulink''] = $this->config->get(''config_menulink'');\r\n		}\r\n        if (isset($this->request->post[''config_menulinkhover''])) {\r\n			$data[''config_menulinkhover''] = $this->request->post[''config_menulinkhover''];\r\n		} else {\r\n			$data[''config_menulinkhover''] = $this->config->get(''config_menulinkhover'');\r\n		}\r\n        if (isset($this->request->post[''config_menulinkhoverbg''])) {\r\n			$data[''config_menulinkhoverbg''] = $this->request->post[''config_menulinkhoverbg''];\r\n		} else {\r\n			$data[''config_menulinkhoverbg''] = $this->config->get(''config_menulinkhoverbg'');\r\n		}\r\n        if (isset($this->request->post[''config_menubackgrounddropdown''])) {\r\n			$data[''config_menubackgrounddropdown''] = $this->request->post[''config_menubackgrounddropdown''];\r\n		} else {\r\n			$data[''config_menubackgrounddropdown''] = $this->config->get(''config_menubackgrounddropdown'');\r\n		}\r\n         if (isset($this->request->post[''config_menulinkdropdown''])) {\r\n			$data[''config_menulinkdropdown''] = $this->request->post[''config_menulinkdropdown''];\r\n		} else {\r\n			$data[''config_menulinkdropdown''] = $this->config->get(''config_menulinkdropdown'');\r\n		}\r\n         if (isset($this->request->post[''config_menulinkdropdownhover''])) {\r\n			$data[''config_menulinkdropdownhover''] = $this->request->post[''config_menulinkdropdownhover''];\r\n		} else {\r\n			$data[''config_menulinkdropdownhover''] = $this->config->get(''config_menulinkdropdownhover'');\r\n		}\r\n\r\n         if (isset($this->request->post[''config_menulinkdropdownhoverbg''])) {\r\n			$data[''config_menulinkdropdownhoverbg''] = $this->request->post[''config_menulinkdropdownhoverbg''];\r\n		} else {\r\n			$data[''config_menulinkdropdownhoverbg''] = $this->config->get(''config_menulinkdropdownhoverbg'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_footerbg''])) {\r\n			$data[''config_footerbg''] = $this->request->post[''config_footerbg''];\r\n		} else {\r\n			$data[''config_footerbg''] = $this->config->get(''config_footerbg'');\r\n		}\r\n        if (isset($this->request->post[''config_footerlink''])) {\r\n			$data[''config_footerlink''] = $this->request->post[''config_footerlink''];\r\n		} else {\r\n			$data[''config_footerlink''] = $this->config->get(''config_footerlink'');\r\n		}\r\n        if (isset($this->request->post[''config_footerlinkhover''])) {\r\n			$data[''config_footerlinkhover''] = $this->request->post[''config_footerlinkhover''];\r\n		} else {\r\n			$data[''config_footerlinkhover''] = $this->config->get(''config_footerlinkhover'');\r\n		}\r\n        if (isset($this->request->post[''config_footertitle''])) {\r\n			$data[''config_footertitle''] = $this->request->post[''config_footertitle''];\r\n		} else {\r\n			$data[''config_footertitle''] = $this->config->get(''config_footertitle'');\r\n		}\r\n        if (isset($this->request->post[''config_productsbg''])) {\r\n			$data[''config_productsbg''] = $this->request->post[''config_productsbg''];\r\n		} else {\r\n			$data[''config_productsbg''] = $this->config->get(''config_productsbg'');\r\n		}\r\n        if (isset($this->request->post[''config_productsbghover''])) {\r\n			$data[''config_productsbghover''] = $this->request->post[''config_productsbghover''];\r\n		} else {\r\n			$data[''config_productsbghover''] = $this->config->get(''config_productsbghover'');\r\n		}\r\n        if (isset($this->request->post[''config_productstitle''])) {\r\n			$data[''config_productstitle''] = $this->request->post[''config_productstitle''];\r\n		} else {\r\n			$data[''config_productstitle''] = $this->config->get(''config_productstitle'');\r\n		}\r\n        if (isset($this->request->post[''config_productstitlehover''])) {\r\n			$data[''config_productstitlehover''] = $this->request->post[''config_productstitlehover''];\r\n		} else {\r\n			$data[''config_productstitlehover''] = $this->config->get(''config_productstitlehover'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncartbg''])) {\r\n			$data[''config_buttoncartbg''] = $this->request->post[''config_buttoncartbg''];\r\n		} else {\r\n			$data[''config_buttoncartbg''] = $this->config->get(''config_buttoncartbg'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncartbghover''])) {\r\n			$data[''config_buttoncartbghover''] = $this->request->post[''config_buttoncartbghover''];\r\n		} else {\r\n			$data[''config_buttoncartbghover''] = $this->config->get(''config_buttoncartbghover'');\r\n		}\r\n        if (isset($this->request->post[''config_buttontextbg''])) {\r\n			$data[''config_buttontextbg''] = $this->request->post[''config_buttontextbg''];\r\n		} else {\r\n			$data[''config_buttontextbg''] = $this->config->get(''config_buttontextbg'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncarttext''])) {\r\n			$data[''config_buttoncarttext''] = $this->request->post[''config_buttoncarttext''];\r\n		} else {\r\n			$data[''config_buttoncarttext''] = $this->config->get(''config_buttoncarttext'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncarttexthover''])) {\r\n			$data[''config_buttoncarttexthover''] = $this->request->post[''config_buttoncarttexthover''];\r\n		} else {\r\n			$data[''config_buttoncarttexthover''] = $this->config->get(''config_buttoncarttexthover'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncartlikebg''])) {\r\n			$data[''config_buttoncartlikebg''] = $this->request->post[''config_buttoncartlikebg''];\r\n		} else {\r\n			$data[''config_buttoncartlikebg''] = $this->config->get(''config_buttoncartlikebg'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncartlikebghover''])) {\r\n			$data[''config_buttoncartlikebghover''] = $this->request->post[''config_buttoncartlikebghover''];\r\n		} else {\r\n			$data[''config_buttoncartlikebghover''] = $this->config->get(''config_buttoncartlikebghover'');\r\n		}\r\n         if (isset($this->request->post[''config_buttoncartlike''])) {\r\n			$data[''config_buttoncartlike''] = $this->request->post[''config_buttoncartlike''];\r\n		} else {\r\n			$data[''config_buttoncartlike''] = $this->config->get(''config_buttoncartlike'');\r\n		}\r\n        if (isset($this->request->post[''config_buttoncartlikehover''])) {\r\n			$data[''config_buttoncartlikehover''] = $this->request->post[''config_buttoncartlikehover''];\r\n		} else {\r\n			$data[''config_buttoncartlikehover''] = $this->config->get(''config_buttoncartlikehover'');\r\n		}\r\n        if (isset($this->request->post[''config_buttondefault''])) {\r\n			$data[''config_buttondefault''] = $this->request->post[''config_buttondefault''];\r\n		} else {\r\n			$data[''config_buttondefault''] = $this->config->get(''config_buttondefault'');\r\n		}\r\n        if (isset($this->request->post[''config_buttondefaulthover''])) {\r\n			$data[''config_buttondefaulthover''] = $this->request->post[''config_buttondefaulthover''];\r\n		} else {\r\n			$data[''config_buttondefaulthover''] = $this->config->get(''config_buttondefaulthover'');\r\n		}\r\n        if (isset($this->request->post[''config_popup_image''])) {\r\n			$data[''config_popup_image''] = $this->request->post[''config_popup_image''];\r\n		} else {\r\n			$data[''config_popup_image''] = $this->config->get(''config_popup_image'');\r\n		}\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="admin/language/*/setting/setting.php">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <?php\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $_[''entry_text_color'']                      = ''Text color'';\r\n            $_[''text_background'']                      = ''Background'';\r\n            $_[''text_links'']                      = ''Links color'';\r\n            $_[''text_links_hover'']                      = ''Links color hover'';\r\n            $_[''text_backgroundhover'']                      = ''Background hover'';\r\n            $_[''text_icon'']                      = ''Icon'';\r\n            $_[''text_dropdown'']                      = ''Dropdown Menu'';\r\n            $_[''entry_searchandcart'']                      = ''Search and Cart'';\r\n            $_[''text_products'']                      = ''Product box'';\r\n            $_[''text_buttoncartbg'']                      = ''Button Cart background'';\r\n            $_[''text_buttoncartbghover'']                      = ''Button Cart background hover'';\r\n            $_[''text_buttoncarttext'']                      = ''Button Cart Text'';\r\n            $_[''text_buttoncarttexthover'']                      = ''Button Cart Text hover'';\r\n            $_[''text_buttoncartlikebg'']                      = ''Icon wistlist, compare background'';\r\n            $_[''text_buttoncartlikebghover'']                      = ''Icon Wistlist, Compare background hover'';\r\n            $_[''text_buttoncartlike'']                      = ''Icon wistlist, compare color'';\r\n            $_[''text_buttoncartlikehover'']                      = ''Icon Wistlist, Compare color hover'';\r\n            $_[''text_popup_image'']                      = ''Background Popup'';\r\n\r\n            $_[''entry_backgroundimage'']                 = ''Background image'';\r\n            $_[''entry_repeatbackground'']                = ''Background repeat'';\r\n            $_[''entry_backgroundcolor'']                 = ''Background color'';\r\n            $_[''entry_text_color'']                      = ''Text color'';\r\n            $_[''entry_link_color'']                      = ''Links color'';\r\n            $_[''entry_link_color_hover'']                = ''Links hover color'';\r\n            $_[''entry_title_color'']                           = ''Title color'';\r\n            $_[''entry_title_colorhover'']                           = ''Title hover'';\r\n\r\n            $_[''tab_themepanel'']                 = ''Theme Customization'';\r\n            $_[''text_general'']                 = ''General - To restore default color, please clear all characters in color form'';\r\n            $_[''help_general'']                 = ''You can change: Background (color and Image), text color, links color on the template'';\r\n\r\n            $_[''text_top_bar'']                 = ''Top Bar'';\r\n            $_[''help_top_bar'']                 = ''The menu on Top: Currency, Language, Phone, Account, Wishlist, Shopingcart, Checkout'';\r\n\r\n            $_[''help_search'']                      = ''Change Header Search box'';\r\n            $_[''text_search'']                 = ''Search box'';\r\n            $_[''text_buttonsearchbg'']                      = ''Search button background'';\r\n            $_[''text_buttonsearchcolor'']                 = ''Search icon color'';\r\n\r\n            $_[''help_cart'']                      = ''Change Header Cart box'';\r\n            $_[''text_cart'']                 = ''Cart box'';\r\n\r\n            $_[''help_menu'']                      = ''Change Header menu'';\r\n            $_[''text_menu'']                 = ''Menu'';\r\n\r\n            $_[''text_footer'']                      = ''Footer'';\r\n            $_[''help_footer'']                      = ''Edit color, background footer'';\r\n\r\n             $_[''help_products'']                      = ''Edit color, background products module'';\r\n             $_[''text_buttondefault'']                      = ''Button Default'';\r\n              $_[''text_buttondefaulthover'']                      = ''Button Default hover'';\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="admin/view/template/setting/setting.tpl">\r\n        <operation error="skip">\r\n			<search><![CDATA[\r\n            <li><a href="#tab-ftp" data-toggle="tab"><?php echo $tab_ftp; ?></a></li>\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <li><a href="#tab-themepanel" data-toggle="tab"><?php echo $tab_themepanel; ?></a></li>\r\n            ]]></add>\r\n		</operation>\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <div class="tab-pane" id="tab-ftp">\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div class="tab-pane" id="tab-themepanel">\r\n            <fieldset>\r\n                <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_general); ?>"><?php echo $text_general; ?></span></legend>\r\n            <div class="form-group">\r\n                <div class="row">\r\n                <label class="col-sm-2 control-label" for="input-repeatbackground"><?php echo $entry_backgroundimage; ?></span></label>\r\n\r\n                  <div class="col-sm-2"><a href="" id="thumb-backgroundimage" data-toggle="image" class="img-thumbnail"><img src="<?php echo $backgroundimage; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>\r\n                  <input type="hidden" name="config_backgroundimage" value="<?php echo $config_backgroundimage; ?>" id="input-backgroundimage" />\r\n                  </div>\r\n                  <label class="col-sm-2 control-label" for="input-repeatbackground"><?php echo $entry_repeatbackground; ?></label>\r\n                  <div class="col-sm-2">\r\n                    <select name="config_repeatbackground" id="input-repeatbackground" class="form-control">\r\n                    <?php foreach ($repeatbackgrounds as $repeatbackground) { ?>\r\n                    <?php if ($repeatbackground == $config_repeatbackground) { ?>\r\n                    <option value="<?php echo $repeatbackground; ?>" selected="selected"><?php echo $repeatbackground; ?></option>\r\n                    <?php } else { ?>\r\n                    <option value="<?php echo $repeatbackground; ?>"><?php echo $repeatbackground; ?></option>\r\n                    <?php } ?>\r\n                    <?php } ?>\r\n                  </select>\r\n                  </div>\r\n                  <label class="col-sm-2 control-label" for="input-backgroundcolor"><?php echo $entry_backgroundcolor; ?></label>\r\n                <div class="col-sm-1">\r\n                <input type="text" name="config_backgroundcolor" value="<?php echo $config_backgroundcolor; ?>"  id="input-backgroundcolor" size="6" class="color {required:false,hash:true}"  />\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="input-text_color"><?php echo $entry_text_color; ?></label>\r\n                 <div class="col-sm-4">\r\n                  <input type="text" name="config_text_color" value="<?php echo $config_text_color; ?>"  id="input-text_color" size="6" class="color {required:false,hash:true}" />\r\n                 </div>\r\n                <label class="col-sm-2 control-label" for="input-link_color"><?php echo $entry_link_color; ?></label>\r\n               <div class="col-sm-4">\r\n               <input type="text" name="config_link_color" value="<?php echo $config_link_color; ?>"  id="input-link_color" size="6" class="color {required:false,hash:true}" />\r\n              </div>\r\n             </div>\r\n            </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="input-link_color_hover"><?php echo $entry_link_color_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_link_color_hover" value="<?php echo $config_link_color_hover; ?>"  id="input-link_color_hover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-title_color"><?php echo $entry_title_color; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_title_color" value="<?php echo $config_title_color; ?>"  id="input-title_color" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n        <br/>\r\n            <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_top_bar); ?>"><?php echo $text_top_bar; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="input-top_bar_background"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_top_bar_background" value="<?php echo $config_top_bar_background; ?>"  id="input-top_bar_background" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-top_bar_link_color"><?php echo $text_links; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_top_bar_link_color" value="<?php echo $config_top_bar_link_color; ?>"  id="input-top_bar_link_color" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="input-top_bar_background"><?php echo $text_icon; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_top_bar_link_icon" value="<?php echo $config_top_bar_link_icon; ?>"  id="input-top_bar_link_icon" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-top_bar_link_color_hover"><?php echo $text_links_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_top_bar_link_color_hover" value="<?php echo $config_top_bar_link_color_hover; ?>"  id="input-top_bar_link_color_hover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n         <br/>\r\n            <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_search); ?>"><?php echo $text_search; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="searchbackground"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_searchbackground" value="<?php echo $config_searchbackground; ?>"  id="input-searchbackground" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-searchcolor"><?php echo $entry_text_color; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_searchcolor" value="<?php echo $config_searchcolor; ?>"  id="input-searchcolor" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="button_searchbackground"><?php echo $text_buttonsearchbg; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_button_searchbackground" value="<?php echo $config_button_searchbackground; ?>"  id="input-button_searchbackground" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-button_searchcolor"><?php echo $text_buttonsearchcolor; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_button_searchcolor" value="<?php echo $config_button_searchcolor; ?>"  id="input-button_searchcolor" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <br/>\r\n              <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_cart); ?>"><?php echo $text_cart; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="cartbackground"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_cartbackground" value="<?php echo $config_cartbackground; ?>"  id="input-cartbackground" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-cartbackgroundopen"><?php echo $text_backgroundhover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_cartbackgroundopen" value="<?php echo $config_cartbackgroundopen; ?>"  id="input-cartbackgroundopen" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="cartlink"><?php echo $text_links; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_cartlink" value="<?php echo $config_cartlink; ?>"  id="input-cartlink" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-cartlinkopen"><?php echo $text_links_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_cartlinkopen" value="<?php echo $config_cartlinkopen; ?>"  id="input-cartlinkopen" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n             <br/>\r\n              <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_menu); ?>"><?php echo $text_menu; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="menubackground"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menubackground" value="<?php echo $config_menubackground; ?>"  id="input-menubackground" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-menulink"><?php echo $text_links; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulink" value="<?php echo $config_menulink; ?>"  id="input-menulink" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="menulinkhover"><?php echo $text_links_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulinkhover" value="<?php echo $config_menulinkhover; ?>"  id="input-menulinkhover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-menulinkhoverbg"><?php echo $text_backgroundhover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulinkhoverbg" value="<?php echo $config_menulinkhoverbg; ?>"  id="input-menulinkhoverbg" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-3 control-label" for="dropdown"><?php echo $text_dropdown; ?></label>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="menubackgrounddropdown"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menubackgrounddropdown" value="<?php echo $config_menubackgrounddropdown; ?>"  id="input-menubackgrounddropdown" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-menulinkdropdown"><?php echo $text_links; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulinkdropdown" value="<?php echo $config_menulinkdropdown; ?>"  id="input-menulinkdropdown" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="menulinkdropdownhover"><?php echo $text_links_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulinkdropdownhover" value="<?php echo $config_menulinkdropdownhover; ?>"  id="input-menulinkdropdownhover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-menulinkdropdownhoverbg"><?php echo $text_backgroundhover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_menulinkdropdownhoverbg" value="<?php echo $config_menulinkdropdownhoverbg; ?>"  id="input-menulinkdropdownhoverbg" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <br/>\r\n              <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_footer); ?>"><?php echo $text_footer; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="footerbg"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_footerbg" value="<?php echo $config_footerbg; ?>"  id="input-footerbg" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-footerlink"><?php echo $text_links; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_footerlink" value="<?php echo $config_footerlink; ?>"  id="input-footerlink" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="footerlinkhover"><?php echo $text_links_hover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_footerlinkhover" value="<?php echo $config_footerlinkhover; ?>"  id="input-footerlinkhover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-footertitle"><?php echo $entry_title_color; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_footertitle" value="<?php echo $config_footertitle; ?>"  id="input-footertitle" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n            <br/>\r\n              <legend><span data-toggle="tooltip" data-html="true" title="<?php echo htmlspecialchars($help_products); ?>"><?php echo $text_products; ?></span></legend>\r\n\r\n            <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="productsbg"><?php echo $text_background; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_productsbg" value="<?php echo $config_productsbg; ?>"  id="input-productsbg" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-productsbghover"><?php echo $text_backgroundhover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_productsbghover" value="<?php echo $config_productsbghover; ?>"  id="input-productsbghover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="productstitle"><?php echo $entry_title_color; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_productstitle" value="<?php echo $config_productstitle; ?>"  id="input-productstitle" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-productstitlehover"><?php echo $entry_title_colorhover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_productstitlehover" value="<?php echo $config_productstitlehover; ?>"  id="input-productstitlehover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="buttoncartbg"><?php echo $text_buttoncartbg; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncartbg" value="<?php echo $config_buttoncartbg; ?>"  id="input-buttoncartbg" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-buttoncartbghover"><?php echo $text_buttoncartbghover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncartbghover" value="<?php echo $config_buttoncartbghover; ?>"  id="input-buttoncartbghover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="buttoncarttext"><?php echo $text_buttoncarttext; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncarttext" value="<?php echo $config_buttoncarttext; ?>"  id="input-buttoncarttext" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-buttoncarttexthover"><?php echo $text_buttoncarttexthover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncarttexthover" value="<?php echo $config_buttoncarttexthover; ?>"  id="input-buttoncarttexthover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="buttoncartlike"><?php echo $text_buttoncartlike; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncartlike" value="<?php echo $config_buttoncartlike; ?>"  id="input-buttoncartlike" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-buttoncartlikehover"><?php echo $text_buttoncartlikehover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttoncartlikehover" value="<?php echo $config_buttoncartlikehover; ?>"  id="input-buttoncartlikehover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="popup_image"><?php echo $text_popup_image; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_popup_image" value="<?php echo $config_popup_image; ?>"  id="input-popup_image" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n\r\n              <br/>\r\n               <br/>\r\n              <legend><?php echo $text_buttondefault; ?></span></legend>\r\n\r\n              <div class="form-group">\r\n               <div class="row">\r\n                <label class="col-sm-2 control-label" for="buttondefault"><?php echo $text_buttondefault; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttondefault" value="<?php echo $config_buttondefault; ?>"  id="input-buttondefault" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               <label class="col-sm-2 control-label" for="input-buttondefaulthover"><?php echo $text_buttondefaulthover; ?></label>\r\n                <div class="col-sm-4">\r\n                  <input type="text" name="config_buttondefaulthover" value="<?php echo $config_buttondefaulthover; ?>"  id="input-buttondefaulthover" size="6" class="color {required:false,hash:true}" />\r\n                </div>\r\n               </div>\r\n              </div>\r\n\r\n              </fieldset>\r\n             </div>\r\n            ]]></add>\r\n		</operation>\r\n        <operation error="skip">\r\n			<search><![CDATA[\r\n            //--></script></div>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            //--></script>\r\n            <script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script>\r\n            </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-06-28 16:16:49');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(6, 'Custom background-color FRONT PAGE', 'Custom background-color FRONT PAGE', 'websitemart.vn', '1.0', 'http://www.octheme.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Custom background-color FRONT PAGE</name>\r\n    <code>Custom background-color FRONT PAGE</code>\r\n    <version>1.0</version>\r\n    <author>websitemart.vn</author>\r\n    <link>http://www.octheme.com</link>\r\n    <file path="catalog/controller/common/header.php">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            $this->load->language(''common/header'');\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n              if (is_file(DIR_IMAGE . $this->config->get(''config_backgroundimage''))) {\r\n			$data[''backgroundimage''] = $server . ''image/'' . $this->config->get(''config_backgroundimage'');\r\n		} else {\r\n			$data[''backgroundimage''] = '''';\r\n		}\r\n\r\n        $data[''repeatbackground''] = $this->config->get(''config_repeatbackground'');\r\n        $data[''backgroundcolor''] = $this->config->get(''config_backgroundcolor'');\r\n\r\n        $data[''text_color''] = $this->config->get(''config_text_color'');\r\n        $data[''link_color''] = $this->config->get(''config_link_color'');\r\n        $data[''link_color_hover''] = $this->config->get(''config_link_color_hover'');\r\n        $data[''title_color''] = $this->config->get(''config_title_color'');\r\n\r\n        $data[''top_bar_background''] = $this->config->get(''config_top_bar_background'');\r\n        $data[''top_bar_link_color''] = $this->config->get(''config_top_bar_link_color'');\r\n        $data[''top_bar_link_color_hover''] = $this->config->get(''config_top_bar_link_color_hover'');\r\n        $data[''top_bar_link_icon''] = $this->config->get(''config_top_bar_link_icon'');\r\n\r\n        $data[''searchbackground''] = $this->config->get(''config_searchbackground'');\r\n        $data[''searchcolor''] = $this->config->get(''config_searchcolor'');\r\n\r\n        $data[''button_searchbackground''] = $this->config->get(''config_button_searchbackground'');\r\n        $data[''button_searchcolor''] = $this->config->get(''config_button_searchcolor'');\r\n\r\n        $data[''cartbackground''] = $this->config->get(''config_cartbackground'');\r\n        $data[''cartbackgroundopen''] = $this->config->get(''config_cartbackgroundopen'');\r\n\r\n        $data[''cartlink''] = $this->config->get(''config_cartlink'');\r\n        $data[''cartlinkopen''] = $this->config->get(''config_cartlinkopen'');\r\n\r\n        $data[''menubackground''] = $this->config->get(''config_menubackground'');\r\n        $data[''menulink''] = $this->config->get(''config_menulink'');\r\n\r\n        $data[''menulinkhover''] = $this->config->get(''config_menulinkhover'');\r\n        $data[''menulinkhoverbg''] = $this->config->get(''config_menulinkhoverbg'');\r\n\r\n        $data[''menubackgrounddropdown''] = $this->config->get(''config_menubackgrounddropdown'');\r\n        $data[''menulinkdropdown''] = $this->config->get(''config_menulinkdropdown'');\r\n\r\n        $data[''menulinkdropdownhover''] = $this->config->get(''config_menulinkdropdownhover'');\r\n        $data[''menulinkdropdownhoverbg''] = $this->config->get(''config_menulinkdropdownhoverbg'');\r\n\r\n        $data[''footerbg''] = $this->config->get(''config_footerbg'');\r\n        $data[''footerlink''] = $this->config->get(''config_footerlink'');\r\n        $data[''footerlinkhover''] = $this->config->get(''config_footerlinkhover'');\r\n        $data[''footertitle''] = $this->config->get(''config_footertitle'');\r\n\r\n        $data[''productsbg''] = $this->config->get(''config_productsbg'');\r\n        $data[''productsbghover''] = $this->config->get(''config_productsbghover'');\r\n        $data[''productstitlehover''] = $this->config->get(''config_productstitlehover'');\r\n        $data[''productstitle''] = $this->config->get(''config_productstitle'');\r\n\r\n        $data[''buttoncartbg''] = $this->config->get(''config_buttoncartbg'');\r\n        $data[''buttoncartbghover''] = $this->config->get(''config_buttoncartbghover'');\r\n        $data[''buttoncarttext''] = $this->config->get(''config_buttoncarttext'');\r\n        $data[''buttoncarttexthover''] = $this->config->get(''config_buttoncarttexthover'');\r\n        $data[''buttoncartlikebg''] = $this->config->get(''config_buttoncartlikebg'');\r\n        $data[''buttoncartlikebghover''] = $this->config->get(''config_buttoncartlikebghover'');\r\n        $data[''buttoncartlike''] = $this->config->get(''config_buttoncartlike'');\r\n        $data[''buttoncartlikehover''] = $this->config->get(''config_buttoncartlikehover'');\r\n        $data[''buttondefault''] = $this->config->get(''config_buttondefault'');\r\n        $data[''buttondefaulthover''] = $this->config->get(''config_buttondefaulthover'');\r\n        $data[''popup_image''] = $this->config->get(''config_popup_image'');\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <?php echo $google_analytics; ?>\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <style type="text/css">\r\n           body{\r\n           <?php if ($backgroundimage) { ?>\r\n           background-image: url(<?php echo $backgroundimage; ?>) ;\r\n           background-repeat:<?php echo $repeatbackground; ?>;\r\n          <?php } else { ?>\r\n          <?php } ?>\r\n           background-color: <?php echo $backgroundcolor; ?> ;\r\n           color: <?php echo $text_color; ?>;\r\n          }\r\n          h1, h2, h3, h4, h5, h6 {\r\n	      color: <?php echo $title_color; ?>;\r\n          }\r\n          a {\r\n          color: <?php echo $link_color; ?>;\r\n          }\r\n          a:hover {\r\n	      color: <?php echo $link_color_hover; ?>;\r\n          }\r\n          #top {\r\n	     background-color: <?php echo $top_bar_background; ?>;\r\n         }\r\n         header{\r\n         background-color: <?php echo $top_bar_background; ?>;\r\n         }\r\n          #top .btn-link, #top-links li, #top-links a {\r\n	     color: <?php echo $top_bar_link_color; ?>;\r\n         }\r\n         #top .btn-link:hover, #top-links a:hover {\r\n        	color: <?php echo $top_bar_link_color_hover; ?>;\r\n         }\r\n         #top .fa {\r\n        	color: <?php echo $top_bar_link_icon; ?>;\r\n         }\r\n\r\n        #search .input-lg {\r\n         background:<?php echo $searchbackground; ?>;\r\n         color:<?php echo $searchcolor; ?>;\r\n        }\r\n         #search .btn-lg {\r\n         color:<?php echo $button_searchcolor; ?>;\r\n         background: <?php echo $button_searchbackground; ?>;\r\n        }\r\n        #cart > .btn {\r\n    	color: <?php echo $cartlink; ?>;\r\n        background:<?php echo $cartbackground; ?>;\r\n          }\r\n      #cart.open > .btn {\r\n	   background-color: <?php echo $cartbackgroundopen; ?>;\r\n     	color: <?php echo $cartlinkopen; ?>;\r\n       }\r\n       #cart > .btn:hover {\r\n       background: <?php echo $cartbackgroundopen; ?>;\r\n     	color: <?php echo $cartlinkopen; ?>;\r\n      }\r\n      #menu {\r\n      background: <?php echo $menubackground; ?>;\r\n      }\r\n     #menu .nav > li > a {\r\n	color: <?php echo $menulink; ?>;\r\n     }\r\n     #menu .nav > li > a:hover, #menu .nav > li.open > a {\r\n	background: <?php echo $menulinkhoverbg; ?>;\r\n    color: <?php echo $menulinkhover; ?>;\r\n    }\r\n    #menu .dropdown-menu {\r\n	 background: <?php echo $menubackgrounddropdown; ?>;\r\n}\r\n#menu .dropdown-inner a {\r\n	color: <?php echo $menulinkdropdown; ?>;\r\n}\r\n#menu .dropdown-inner li a:hover {\r\n	color: <?php echo $menulinkdropdownhover; ?>;\r\n    background: <?php echo $menulinkdropdownhoverbg; ?>;\r\n}\r\n#menu .see-all:hover, #menu .see-all:focus {\r\n	color: <?php echo $menulinkdropdownhover; ?>;\r\n    background: <?php echo $menulinkdropdownhoverbg; ?>;\r\n}\r\n#menu .btn-navbar:hover, #menu .btn-navbar:focus, #menu .btn-navbar:active, #menu .btn-navbar.disabled, #menu .btn-navbar[disabled] {\r\n	color: <?php echo $menulinkdropdownhover; ?>;\r\n    background: <?php echo $menulinkdropdownhoverbg; ?>;\r\n}\r\nfooter {\r\n    background: <?php echo $footerbg; ?>;\r\n}\r\nfooter a {\r\n	color: <?php echo $footerlink; ?>;\r\n}\r\nfooter a:hover {\r\n	color: <?php echo $footerlinkhover; ?>;\r\n}\r\nfooter h5 {\r\n	color: <?php echo $footertitle; ?>;\r\n}\r\n.product-thumb {\r\n	background: <?php echo $productsbg; ?>;\r\n}\r\n.product-thumb:hover {\r\n	background: <?php echo $productsbghover; ?>;\r\n}\r\n.product-thumb  h4 a{\r\n	color: <?php echo $productstitle; ?>;\r\n}\r\n.product-thumb h4 a:hover {\r\n	color: <?php echo $productstitlehover; ?>;\r\n}\r\n.product-thumb .button-group, .product-thumb .button-group button {\r\n	background: <?php echo $buttoncartbg; ?>;\r\n    color: <?php echo $buttoncarttext; ?>;\r\n}\r\n.product-thumb .button-group button:hover {\r\n	background: <?php echo $buttoncartbghover; ?>;\r\n    color: <?php echo $buttoncarttexthover; ?>;\r\n}\r\n\r\n.product-thumb .button-group button + button {\r\n    color: <?php echo $buttoncartlike; ?>;\r\n}\r\n.product-thumb .button-group button + button:hover {\r\n    color: <?php echo $buttoncartlikehover; ?>;\r\n}\r\n.product-thumb .btn-group .btn-default:hover {\r\n    color: <?php echo $buttoncartlikehover; ?>;\r\n}\r\n.product-thumb .btn-group .btn-default {\r\n    color: <?php echo $buttoncartlike; ?>;\r\n}\r\n.btn-primary {\r\n   background: <?php echo $buttondefault; ?>;\r\n}\r\n.btn-primary:hover {\r\n   background: <?php echo $buttondefaulthover; ?>;\r\n}\r\n.mfp-figure:after {\r\n    background:<?php echo $popup_image; ?>;\r\n    }\r\n            </style>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2015-06-28 16:16:55'),
(7, 'Followme', 'Followme', 'websitemart.vn', '1.0', 'http://www.octheme.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Followme</name>\r\n    <code>Followme</code>\r\n    <version>1.0</version>\r\n    <author>websitemart.vn</author>\r\n    <link>http://www.octheme.com</link>\r\n	<file path="admin/controller/setting/setting.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n            $data[''entry_google_analytics''] = $this->language->get(''entry_google_analytics'');\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $data[''entry_followme_facebook''] = $this->language->get(''entry_followme_facebook'');\r\n            $data[''help_followme_facebook''] = $this->language->get(''help_followme_facebook'');\r\n            $data[''text_followme''] = $this->language->get(''text_followme'');\r\n\r\n            $data[''entry_followme_twitter''] = $this->language->get(''entry_followme_twitter'');\r\n            $data[''help_followme_twitter''] = $this->language->get(''help_followme_twitter'');\r\n\r\n            $data[''entry_followme_google''] = $this->language->get(''entry_followme_google'');\r\n            $data[''help_followme_google''] = $this->language->get(''help_followme_google'');\r\n\r\n            $data[''entry_followme_linkedin''] = $this->language->get(''entry_followme_linkedin'');\r\n            $data[''help_followme_linkedin''] = $this->language->get(''help_followme_linkedin'');\r\n\r\n            $data[''entry_followme_pinterest''] = $this->language->get(''entry_followme_pinterest'');\r\n            $data[''help_followme_pinterest''] = $this->language->get(''help_followme_pinterest'');\r\n            ]]></add>\r\n		</operation>\r\n        <operation>\r\n			<search><![CDATA[\r\n            $data[''header''] = $this->load->controller(''common/header'');\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            if (isset($this->request->post[''config_followme_facebook''])) {\r\n			$data[''config_followme_facebook''] = $this->request->post[''config_followme_facebook''];\r\n		} else {\r\n			$data[''config_followme_facebook''] = $this->config->get(''config_followme_facebook'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_followme_twitter''])) {\r\n			$data[''config_followme_twitter''] = $this->request->post[''config_followme_twitter''];\r\n		} else {\r\n			$data[''config_followme_twitter''] = $this->config->get(''config_followme_twitter'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_followme_google''])) {\r\n			$data[''config_followme_google''] = $this->request->post[''config_followme_google''];\r\n		} else {\r\n			$data[''config_followme_google''] = $this->config->get(''config_followme_google'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_followme_linkedin''])) {\r\n			$data[''config_followme_linkedin''] = $this->request->post[''config_followme_linkedin''];\r\n		} else {\r\n			$data[''config_followme_linkedin''] = $this->config->get(''config_followme_linkedin'');\r\n		}\r\n\r\n        if (isset($this->request->post[''config_followme_pinterest''])) {\r\n			$data[''config_followme_pinterest''] = $this->request->post[''config_followme_pinterest''];\r\n		} else {\r\n			$data[''config_followme_pinterest''] = $this->config->get(''config_followme_pinterest'');\r\n		}\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="admin/language/*/setting/setting.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n            <?php\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $_[''text_followme'']           = ''Follow me'';\r\n\r\n            $_[''entry_followme_facebook'']           = ''Follow ID'';\r\n            $_[''help_followme_facebook'']            = ''Enter Facebook ID name or Facebook Page ID.(i.e facebook.com/example).'';\r\n\r\n            $_[''entry_followme_twitter'']           = ''Twitter usename'';\r\n            $_[''help_followme_twitter'']            = ''Enter Twitter @username(without the @).).'';\r\n\r\n            $_[''entry_followme_pinterest'']           = ''Pinterest usename'';\r\n            $_[''help_followme_pinterest'']            = ''Enter Pinterest company or username.(i.e linkedin.com/example).'';\r\n\r\n            $_[''entry_followme_google'']           = ''Google+ usename'';\r\n            $_[''help_followme_google'']            = ''Enter Google+ Page code.(i.e plus.google.com/0123456...).'';\r\n\r\n            $_[''entry_followme_linkedin'']           = ''linkedin usename'';\r\n            $_[''help_followme_linkedin'']            = ''Enter linkedin  username.(i.e linkedin.com/example).'';\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n        <file path="admin/view/template/setting/setting.tpl">\r\n		<operation>\r\n			<search><![CDATA[\r\n            <legend><?php echo $text_product; ?></legend>\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <legend><?php echo $text_followme; ?></legend>\r\n            <div class="form-group">\r\n                           <label class="col-sm-2 control-label" for="input-followme_facebook"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_followme_facebook); ?>"><?php echo $entry_followme_facebook; ?></span></label>\r\n                <div class="col-sm-10">\r\n                  <textarea  name="config_followme_facebook" rows="1" placeholder="<?php echo $entry_followme_facebook; ?>" id="input-followme_facebook" class="form-control"><?php echo $config_followme_facebook; ?></textarea>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="form-group">\r\n                           <label class="col-sm-2 control-label" for="input-followme_twitter"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_followme_twitter); ?>"><?php echo $entry_followme_twitter; ?></span></label>\r\n                <div class="col-sm-10">\r\n                 <textarea name="config_followme_twitter" rows="1" placeholder="<?php echo $entry_followme_twitter; ?>" id="input-followme_twitter" class="form-control"><?php echo $config_followme_twitter; ?></textarea>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="form-group">\r\n                           <label class="col-sm-2 control-label" for="input-followme_google"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_followme_google); ?>"><?php echo $entry_followme_google; ?></span></label>\r\n                <div class="col-sm-10">\r\n                 <textarea name="config_followme_google" rows="1" placeholder="<?php echo $entry_followme_google; ?>" id="input-followme_google" class="form-control"><?php echo $config_followme_google; ?></textarea>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="form-group">\r\n                           <label class="col-sm-2 control-label" for="input-followme_pinterest"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_followme_pinterest); ?>"><?php echo $entry_followme_pinterest; ?></span></label>\r\n                <div class="col-sm-10">\r\n                 <textarea name="config_followme_pinterest" rows="1" placeholder="<?php echo $entry_followme_pinterest; ?>" id="input-followme_pinterest" class="form-control"><?php echo $config_followme_pinterest; ?></textarea>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="form-group">\r\n                           <label class="col-sm-2 control-label" for="input-followme_linkedin"><span data-toggle="tooltip" data-html="true" data-trigger="click" title="<?php echo htmlspecialchars($help_followme_linkedin); ?>"><?php echo $entry_followme_linkedin; ?></span></label>\r\n                <div class="col-sm-10">\r\n                 <textarea name="config_followme_linkedin" rows="1" placeholder="<?php echo $entry_followme_linkedin; ?>" id="input-followme_linkedin" class="form-control"><?php echo $config_followme_linkedin; ?></textarea>\r\n                </div>\r\n            </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/controller/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n            $this->load->language(''common/footer'');\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $data[''followme_facebook''] = html_entity_decode($this->config->get(''config_followme_facebook''), ENT_QUOTES, ''UTF-8'');\r\n            $data[''text_follow_us''] = $this->language->get(''text_follow_us'');\r\n\r\n            $data[''text_facebook''] = $this->language->get(''text_facebook'');\r\n            $data[''text_followmeon''] = $this->language->get(''text_followmeon'');\r\n            $data[''name''] = $this->config->get(''config_name'');\r\n\r\n            $data[''text_pinterest''] = $this->language->get(''text_pinterest'');\r\n            $data[''followme_pinterest''] = html_entity_decode($this->config->get(''config_followme_pinterest''), ENT_QUOTES, ''UTF-8'');\r\n\r\n            $data[''text_twitter''] = $this->language->get(''text_twitter'');\r\n            $data[''followme_twitter''] = html_entity_decode($this->config->get(''config_followme_twitter''), ENT_QUOTES, ''UTF-8'');\r\n\r\n            $data[''text_google''] = $this->language->get(''text_google'');\r\n            $data[''followme_google''] = html_entity_decode($this->config->get(''config_followme_google''), ENT_QUOTES, ''UTF-8'');\r\n\r\n            $data[''text_linkedin''] = $this->language->get(''text_linkedin'');\r\n            $data[''followme_linkedin''] = html_entity_decode($this->config->get(''config_followme_linkedin''), ENT_QUOTES, ''UTF-8'');\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/language/*/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[\r\n            <?php\r\n            ]]></search>\r\n			<add position="after"><![CDATA[\r\n            $_[''text_follow_us'']           = ''Follow'';\r\n            $_[''text_facebook'']           = ''Facebook'';\r\n            $_[''text_followmeon'']           = ''on'';\r\n            $_[''text_twitter'']           = ''Twitter'';\r\n            $_[''text_pinterest'']           = ''Pinterest'';\r\n            $_[''text_google'']           = ''Google+'';\r\n            $_[''text_linkedin'']           = ''linkedin'';\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/common/footer.tpl">\r\n		<operation>\r\n			<search><![CDATA[\r\n            <p><?php echo $powered; ?></p>\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div class="nav pull-right">\r\n            <ul class="list-inline">\r\n          <?php if ($followme_facebook) { ?><li><a href="http://facebook.com/<?php echo $followme_facebook; ?>"  target="_blank" title="<?php echo $text_follow_us; ?>&nbsp;<?php echo $name; ?>&nbsp;<?php echo $text_followmeon; ?>&nbsp;<?php echo $text_facebook; ?>"><i class="fa fa-facebook"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_facebook; ?></span></a></li><?php } ?>\r\n          <?php if ($followme_twitter) { ?><li><a href="http://twitter.com/<?php echo $followme_twitter; ?>"  target="_blank" title="<?php echo $text_follow_us; ?>&nbsp;<?php echo $name; ?>&nbsp;<?php echo $text_followmeon; ?>&nbsp;<?php echo $text_twitter; ?>"><i class="fa fa-twitter"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_twitter; ?></span></a></li><?php } ?>\r\n          <?php if ($followme_pinterest) { ?><li><a href="http://pinterest.com/<?php echo $followme_pinterest; ?>"  target="_blank" title="<?php echo $text_follow_us; ?>&nbsp;<?php echo $name; ?>&nbsp;<?php echo $text_followmeon; ?>&nbsp;<?php echo $text_pinterest; ?>"><i class="fa fa-pinterest"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_pinterest; ?></span></a></li><?php } ?>\r\n          <?php if ($followme_google) { ?><li><a href="http://plus.google.com/<?php echo $followme_google; ?>"  target="_blank" title="<?php echo $text_follow_us; ?>&nbsp;<?php echo $name; ?>&nbsp;<?php echo $text_followmeon; ?>&nbsp;<?php echo $text_google; ?>"><i class="fa fa-google"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_google; ?></span></a></li><?php } ?>\r\n          <?php if ($followme_linkedin) { ?><li><a href="http://linkedin.com/<?php echo $followme_linkedin; ?>"  target="_blank" title="<?php echo $text_follow_us; ?>&nbsp;<?php echo $name; ?>&nbsp;<?php echo $text_followmeon; ?>&nbsp;<?php echo $text_linkedin; ?>"><i class="fa fa-linkedin"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_linkedin; ?></span></a></li><?php } ?>\r\n          </ul>\r\n          </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-06-28 16:17:00'),
(8, 'OC THEME', 'oc theme', 'websitemart.vn', '1.0', 'http://www.octheme.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>OC THEME</name>\r\n    <code>oc theme</code>\r\n    <version>1.0</version>\r\n    <author>websitemart.vn</author>\r\n    <link>http://www.octheme.com</link>\r\n	<file path="catalog/view/theme/*/template/module/featured.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <h3><?php echo $heading_title; ?></h3>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            <div id="featured"><h3><?php echo $heading_title; ?></h3> </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/special.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <h3><?php echo $heading_title; ?></h3>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            <div id="special"><h3><?php echo $heading_title; ?></h3> </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/latest.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <h3><?php echo $heading_title; ?></h3>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            <div id="latest"><h3><?php echo $heading_title; ?></h3> </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n     <file path="catalog/view/theme/*/template/module/bestseller.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <h3><?php echo $heading_title; ?></h3>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            <div id="special"><h3><?php echo $heading_title; ?></h3> </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/featuredmanufacturer.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <h3><?php echo $heading_title; ?></h3>\r\n            ]]></search>\r\n			<add position="replace"><![CDATA[\r\n            <div id="special" style="margin-top: 15px;"><h3><?php echo $heading_title; ?></h3> </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/category.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <div class="list-group">\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div id="category-box"><h3><?php echo $heading_title; ?></h3></div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/information.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n            <div class="sidebar">\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div id="information"><h3><?php echo $heading_title; ?></h3></div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/account.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n             <div class="list-group">\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div id="category-box"><h3><?php echo $heading_title; ?></h3></div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path="catalog/view/theme/*/template/module/affiliate.tpl">\r\n		<operation error="skip">\r\n			<search><![CDATA[\r\n             <div class="list-group">\r\n            ]]></search>\r\n			<add position="before"><![CDATA[\r\n            <div id="category-box"><h3><?php echo $heading_title; ?></h3></div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n        <file path="catalog/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[foreach ($children as $child) {]]></search>\r\n            <add position="after"><![CDATA[\r\n					$children_lv3_data = array();\r\n\r\n					$children_lv3 = $this->model_catalog_category->getCategories($child[''category_id'']);\r\n\r\n					foreach ($children_lv3 as $child_lv3) {\r\n						$filter_data_lv3 = array(\r\n							''filter_category_id''  => $child_lv3[''category_id''],\r\n							''filter_sub_category'' => true\r\n						);\r\n\r\n						$children_lv3_data[] = array(\r\n							''name''  => $child_lv3[''name''] . ($this->config->get(''config_product_count'') ? '' ('' . $this->model_catalog_product->getTotalProducts($filter_data_lv3) . '')'' : ''''),\r\n							''href''  => $this->url->link(''product/category'', ''path='' . $category[''category_id''] . ''_'' . $child[''category_id''] . ''_'' . $child_lv3[''category_id''])\r\n						);\r\n					}\r\n            ]]></add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[''name''  => $child[''name''] . ($this->config->get(''config_product_count'') ? '' ('' . $this->model_catalog_product->getTotalProducts($filter_data) . '')'' : ''''),]]></search>\r\n            <add position="after"><![CDATA[\r\n						''children_lv3'' => $children_lv3_data,\r\n						''column''   => $child[''column''] ? $child[''column''] : 1,\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2015-06-28 16:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Featured - Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"3";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Slideshow - Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1200";s:6:"height";s:3:"584";s:6:"status";s:1:"1";}'),
(31, 'Home page', 'special', 'a:5:{s:4:"name";s:9:"Home page";s:5:"limit";s:1:"2";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(32, 'Home page', 'featuredcategory', 'a:6:{s:4:"name";s:9:"Home page";s:7:"product";a:6:{i:0;s:2:"33";i:1;s:2:"25";i:2;s:2:"29";i:3;s:2:"28";i:4;s:2:"18";i:5;s:2:"20";}s:5:"limit";s:1:"6";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1390 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1389, 0, 'config', 'config_google_captcha_status', '0', 0),
(1388, 0, 'config', 'config_google_captcha_secret', '', 0),
(1387, 0, 'config', 'config_google_captcha_public', '', 0),
(1386, 0, 'config', 'config_google_analytics_status', '0', 0),
(1383, 0, 'config', 'config_error_log', '1', 0),
(1384, 0, 'config', 'config_error_filename', 'error.log', 0),
(1385, 0, 'config', 'config_google_analytics', '', 0),
(1382, 0, 'config', 'config_error_display', '1', 0),
(1381, 0, 'config', 'config_compression', '0', 0),
(1380, 0, 'config', 'config_encryption', '2751c9719dd50965c491d0958eb86942', 0),
(1379, 0, 'config', 'config_password', '1', 0),
(1371, 0, 'config', 'config_secure', '0', 0),
(1372, 0, 'config', 'config_shared', '0', 0),
(1373, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1378, 0, 'config', 'config_maintenance', '0', 0),
(1374, 0, 'config', 'config_seo_url', '0', 0),
(1375, 0, 'config', 'config_file_max_size', '300000', 0),
(1376, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1377, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1369, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1370, 0, 'config', 'config_mail_alert', '', 0),
(1368, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1367, 0, 'config', 'config_mail_smtp_password', '', 0),
(1366, 0, 'config', 'config_mail_smtp_username', '', 0),
(1365, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1364, 0, 'config', 'config_mail_parameter', '', 0),
(1363, 0, 'config', 'config_mail_protocol', 'mail', 0),
(1361, 0, 'config', 'config_ftp_root', '', 0),
(1362, 0, 'config', 'config_ftp_status', '0', 0),
(1359, 0, 'config', 'config_ftp_username', '', 0),
(1360, 0, 'config', 'config_ftp_password', '', 0),
(1358, 0, 'config', 'config_ftp_port', '21', 0),
(1357, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(1356, 0, 'config', 'config_buttondefaulthover', '', 0),
(1355, 0, 'config', 'config_buttondefault', '', 0),
(1354, 0, 'config', 'config_popup_image', '', 0),
(1353, 0, 'config', 'config_buttoncartlikehover', '', 0),
(1352, 0, 'config', 'config_buttoncartlike', '', 0),
(1351, 0, 'config', 'config_buttoncarttexthover', '', 0),
(1350, 0, 'config', 'config_buttoncarttext', '', 0),
(1348, 0, 'config', 'config_buttoncartbg', '', 0),
(1349, 0, 'config', 'config_buttoncartbghover', '', 0),
(1347, 0, 'config', 'config_productstitlehover', '', 0),
(1346, 0, 'config', 'config_productstitle', '', 0),
(1345, 0, 'config', 'config_productsbghover', '', 0),
(1344, 0, 'config', 'config_productsbg', '', 0),
(1343, 0, 'config', 'config_footertitle', '', 0),
(1342, 0, 'config', 'config_footerlinkhover', '', 0),
(1341, 0, 'config', 'config_footerlink', '', 0),
(1340, 0, 'config', 'config_footerbg', '', 0),
(1339, 0, 'config', 'config_menulinkdropdownhoverbg', '', 0),
(1338, 0, 'config', 'config_menulinkdropdownhover', '', 0),
(1335, 0, 'config', 'config_menulinkhoverbg', '', 0),
(1336, 0, 'config', 'config_menubackgrounddropdown', '', 0),
(1337, 0, 'config', 'config_menulinkdropdown', '', 0),
(1334, 0, 'config', 'config_menulinkhover', '', 0),
(1333, 0, 'config', 'config_menulink', '', 0),
(1332, 0, 'config', 'config_menubackground', '', 0),
(1331, 0, 'config', 'config_cartlinkopen', '', 0),
(1330, 0, 'config', 'config_cartlink', '', 0),
(1329, 0, 'config', 'config_cartbackgroundopen', '', 0),
(1328, 0, 'config', 'config_cartbackground', '', 0),
(1327, 0, 'config', 'config_button_searchcolor', '', 0),
(1326, 0, 'config', 'config_button_searchbackground', '', 0),
(1325, 0, 'config', 'config_searchcolor', '', 0),
(1324, 0, 'config', 'config_searchbackground', '', 0),
(1323, 0, 'config', 'config_top_bar_link_color_hover', '', 0),
(1322, 0, 'config', 'config_top_bar_link_icon', '', 0),
(1321, 0, 'config', 'config_top_bar_link_color', '', 0),
(1320, 0, 'config', 'config_top_bar_background', '', 0),
(1319, 0, 'config', 'config_title_color', '', 0),
(1318, 0, 'config', 'config_link_color_hover', '', 0),
(1317, 0, 'config', 'config_link_color', '', 0),
(1316, 0, 'config', 'config_text_color', '', 0),
(1315, 0, 'config', 'config_backgroundcolor', '', 0),
(1314, 0, 'config', 'config_repeatbackground', 'no-repeat', 0),
(1313, 0, 'config', 'config_backgroundimage', '', 0),
(1312, 0, 'config', 'config_image_location_height', '50', 0),
(1311, 0, 'config', 'config_image_location_width', '268', 0),
(1310, 0, 'config', 'config_image_cart_height', '47', 0),
(1309, 0, 'config', 'config_image_cart_width', '47', 0),
(1308, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1307, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1306, 0, 'config', 'config_image_compare_height', '90', 0),
(1305, 0, 'config', 'config_image_compare_width', '90', 0),
(1304, 0, 'config', 'config_image_related_height', '80', 0),
(1303, 0, 'config', 'config_image_related_width', '80', 0),
(1302, 0, 'config', 'config_image_additional_height', '74', 0),
(1301, 0, 'config', 'config_image_additional_width', '74', 0),
(1300, 0, 'config', 'config_image_product_height', '228', 0),
(1299, 0, 'config', 'config_image_product_width', '228', 0),
(1298, 0, 'config', 'config_image_popup_height', '500', 0),
(1297, 0, 'config', 'config_image_popup_width', '500', 0),
(1296, 0, 'config', 'config_image_thumb_height', '228', 0),
(1295, 0, 'config', 'config_image_thumb_width', '228', 0),
(1294, 0, 'config', 'config_image_category_height', '80', 0),
(1293, 0, 'config', 'config_image_category_width', '80', 0),
(1292, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1291, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1290, 0, 'config', 'config_return_status_id', '2', 0),
(1289, 0, 'config', 'config_return_id', '0', 0),
(1284, 0, 'config', 'config_affiliate_approval', '0', 0),
(1285, 0, 'config', 'config_affiliate_auto', '0', 0),
(1286, 0, 'config', 'config_affiliate_commission', '5', 0),
(1287, 0, 'config', 'config_affiliate_id', '4', 0),
(1288, 0, 'config', 'config_affiliate_mail', '0', 0),
(1283, 0, 'config', 'config_stock_checkout', '0', 0),
(1282, 0, 'config', 'config_stock_warning', '0', 0),
(1281, 0, 'config', 'config_stock_display', '0', 0),
(1279, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(1280, 0, 'config', 'config_order_mail', '0', 0),
(1278, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(1277, 0, 'config', 'config_order_status_id', '1', 0),
(1276, 0, 'config', 'config_checkout_id', '5', 0),
(1275, 0, 'config', 'config_checkout_guest', '1', 0),
(1274, 0, 'config', 'config_cart_weight', '1', 0),
(1273, 0, 'config', 'config_api_id', '1', 0),
(1272, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1271, 0, 'config', 'config_account_mail', '0', 0),
(1270, 0, 'config', 'config_account_id', '3', 0),
(1269, 0, 'config', 'config_login_attempts', '5', 0),
(1267, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1268, 0, 'config', 'config_customer_price', '0', 0),
(1266, 0, 'config', 'config_customer_group_id', '1', 0),
(1265, 0, 'config', 'config_customer_online', '0', 0),
(1264, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1263, 0, 'config', 'config_tax_default', 'shipping', 0),
(1262, 0, 'config', 'config_tax', '1', 0),
(1261, 0, 'config', 'config_voucher_max', '1000', 0),
(1260, 0, 'config', 'config_voucher_min', '1', 0),
(1259, 0, 'config', 'config_review_mail', '0', 0),
(1258, 0, 'config', 'config_review_guest', '1', 0),
(1257, 0, 'config', 'config_review_status', '1', 0),
(1256, 0, 'config', 'config_limit_admin', '20', 0),
(1255, 0, 'config', 'config_product_description_length', '100', 0),
(1254, 0, 'config', 'config_product_limit', '15', 0),
(1253, 0, 'config', 'config_product_count', '1', 0),
(1252, 0, 'config', 'config_followme_linkedin', '', 0),
(1251, 0, 'config', 'config_followme_pinterest', '', 0),
(1250, 0, 'config', 'config_followme_google', '', 0),
(1249, 0, 'config', 'config_followme_twitter', '', 0),
(1248, 0, 'config', 'config_followme_facebook', '', 0),
(1247, 0, 'config', 'config_weight_class_id', '1', 0),
(1246, 0, 'config', 'config_length_class_id', '1', 0),
(1245, 0, 'config', 'config_currency_auto', '1', 0),
(1244, 0, 'config', 'config_currency', 'USD', 0),
(1243, 0, 'config', 'config_admin_language', 'en', 0),
(1242, 0, 'config', 'config_language', 'en', 0),
(1241, 0, 'config', 'config_zone_id', '3563', 0),
(1240, 0, 'config', 'config_country_id', '222', 0),
(1239, 0, 'config', 'config_layout_id', '4', 0),
(1238, 0, 'config', 'config_template', 'octheme_1093', 0),
(1237, 0, 'config', 'config_meta_keyword', '', 0),
(1236, 0, 'config', 'config_meta_description', 'My Store', 0),
(1235, 0, 'config', 'config_meta_title', 'Your Store', 0),
(1234, 0, 'config', 'config_comment', '', 0),
(1233, 0, 'config', 'config_open', '', 0),
(1232, 0, 'config', 'config_image', '', 0),
(1231, 0, 'config', 'config_fax', '', 0),
(1230, 0, 'config', 'config_telephone', '123456789', 0),
(1229, 0, 'config', 'config_email', 'websitemart.vn@gmail.com', 0),
(1228, 0, 'config', 'config_geocode', '', 0),
(1227, 0, 'config', 'config_address', 'Address 1', 0),
(1226, 0, 'config', 'config_owner', 'Your Name', 0),
(1225, 0, 'config', 'config_name', 'Your Store', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
