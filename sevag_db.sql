-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 08:05 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sevag_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 432),
(2, 1, '', NULL, 'Acl', 2, 25),
(3, 2, '', NULL, 'AclActions', 3, 16),
(4, 3, '', NULL, 'admin_index', 4, 5),
(5, 3, '', NULL, 'admin_add', 6, 7),
(6, 3, '', NULL, 'admin_edit', 8, 9),
(7, 3, '', NULL, 'admin_delete', 10, 11),
(8, 3, '', NULL, 'admin_move', 12, 13),
(9, 3, '', NULL, 'admin_generate', 14, 15),
(10, 2, '', NULL, 'AclPermissions', 17, 24),
(11, 10, '', NULL, 'admin_index', 18, 19),
(12, 10, '', NULL, 'admin_toggle', 20, 21),
(13, 10, '', NULL, 'admin_upgrade', 22, 23),
(14, 1, '', NULL, 'Blocks', 26, 55),
(15, 14, '', NULL, 'Blocks', 27, 44),
(16, 15, '', NULL, 'admin_toggle', 28, 29),
(17, 15, '', NULL, 'admin_index', 30, 31),
(18, 15, '', NULL, 'admin_add', 32, 33),
(19, 15, '', NULL, 'admin_edit', 34, 35),
(20, 15, '', NULL, 'admin_delete', 36, 37),
(21, 15, '', NULL, 'admin_moveup', 38, 39),
(22, 15, '', NULL, 'admin_movedown', 40, 41),
(23, 15, '', NULL, 'admin_process', 42, 43),
(24, 14, '', NULL, 'Regions', 45, 54),
(25, 24, '', NULL, 'admin_index', 46, 47),
(26, 24, '', NULL, 'admin_add', 48, 49),
(27, 24, '', NULL, 'admin_edit', 50, 51),
(28, 24, '', NULL, 'admin_delete', 52, 53),
(29, 1, '', NULL, 'Comments', 56, 73),
(30, 29, '', NULL, 'Comments', 57, 72),
(31, 30, '', NULL, 'admin_index', 58, 59),
(32, 30, '', NULL, 'admin_edit', 60, 61),
(33, 30, '', NULL, 'admin_delete', 62, 63),
(34, 30, '', NULL, 'admin_process', 64, 65),
(35, 30, '', NULL, 'index', 66, 67),
(36, 30, '', NULL, 'add', 68, 69),
(37, 30, '', NULL, 'delete', 70, 71),
(38, 1, '', NULL, 'Contacts', 74, 97),
(39, 38, '', NULL, 'Contacts', 75, 86),
(40, 39, '', NULL, 'admin_index', 76, 77),
(41, 39, '', NULL, 'admin_add', 78, 79),
(42, 39, '', NULL, 'admin_edit', 80, 81),
(43, 39, '', NULL, 'admin_delete', 82, 83),
(44, 39, '', NULL, 'view', 84, 85),
(45, 38, '', NULL, 'Messages', 87, 96),
(46, 45, '', NULL, 'admin_index', 88, 89),
(47, 45, '', NULL, 'admin_edit', 90, 91),
(48, 45, '', NULL, 'admin_delete', 92, 93),
(49, 45, '', NULL, 'admin_process', 94, 95),
(50, 1, '', NULL, 'Croogo', 98, 99),
(51, 1, '', NULL, 'Extensions', 100, 149),
(52, 51, '', NULL, 'ExtensionsLocales', 101, 114),
(53, 52, '', NULL, 'admin_index', 102, 103),
(54, 52, '', NULL, 'admin_activate', 104, 105),
(55, 52, '', NULL, 'admin_add', 106, 107),
(56, 52, '', NULL, 'admin_edit', 108, 109),
(57, 52, '', NULL, 'admin_delete', 110, 111),
(58, 51, '', NULL, 'ExtensionsPlugins', 115, 130),
(59, 58, '', NULL, 'admin_index', 116, 117),
(60, 58, '', NULL, 'admin_add', 118, 119),
(61, 58, '', NULL, 'admin_delete', 120, 121),
(62, 58, '', NULL, 'admin_toggle', 122, 123),
(63, 58, '', NULL, 'admin_migrate', 124, 125),
(64, 51, '', NULL, 'ExtensionsThemes', 131, 144),
(65, 64, '', NULL, 'admin_index', 132, 133),
(66, 64, '', NULL, 'admin_activate', 134, 135),
(67, 64, '', NULL, 'admin_add', 136, 137),
(68, 64, '', NULL, 'admin_editor', 138, 139),
(69, 64, '', NULL, 'admin_save', 140, 141),
(70, 64, '', NULL, 'admin_delete', 142, 143),
(71, 1, '', NULL, 'FileManager', 150, 187),
(72, 71, '', NULL, 'Attachments', 151, 164),
(73, 72, '', NULL, 'admin_index', 152, 153),
(74, 72, '', NULL, 'admin_add', 154, 155),
(75, 72, '', NULL, 'admin_edit', 156, 157),
(76, 72, '', NULL, 'admin_delete', 158, 159),
(77, 72, '', NULL, 'admin_browse', 160, 161),
(78, 71, '', NULL, 'FileManager', 165, 186),
(79, 78, '', NULL, 'admin_index', 166, 167),
(80, 78, '', NULL, 'admin_browse', 168, 169),
(81, 78, '', NULL, 'admin_editfile', 170, 171),
(82, 78, '', NULL, 'admin_upload', 172, 173),
(83, 78, '', NULL, 'admin_delete_file', 174, 175),
(84, 78, '', NULL, 'admin_delete_directory', 176, 177),
(85, 78, '', NULL, 'admin_rename', 178, 179),
(86, 78, '', NULL, 'admin_create_directory', 180, 181),
(87, 78, '', NULL, 'admin_create_file', 182, 183),
(88, 78, '', NULL, 'admin_chmod', 184, 185),
(89, 1, '', NULL, 'Install', 188, 201),
(90, 89, '', NULL, 'Install', 189, 200),
(91, 90, '', NULL, 'index', 190, 191),
(92, 90, '', NULL, 'database', 192, 193),
(93, 90, '', NULL, 'data', 194, 195),
(94, 90, '', NULL, 'adminuser', 196, 197),
(95, 90, '', NULL, 'finish', 198, 199),
(96, 1, '', NULL, 'Menus', 202, 235),
(97, 96, '', NULL, 'Links', 203, 222),
(98, 97, '', NULL, 'admin_toggle', 204, 205),
(99, 97, '', NULL, 'admin_index', 206, 207),
(100, 97, '', NULL, 'admin_add', 208, 209),
(101, 97, '', NULL, 'admin_edit', 210, 211),
(102, 97, '', NULL, 'admin_delete', 212, 213),
(103, 97, '', NULL, 'admin_moveup', 214, 215),
(104, 97, '', NULL, 'admin_movedown', 216, 217),
(105, 97, '', NULL, 'admin_process', 218, 219),
(106, 96, '', NULL, 'Menus', 223, 234),
(107, 106, '', NULL, 'admin_index', 224, 225),
(108, 106, '', NULL, 'admin_add', 226, 227),
(109, 106, '', NULL, 'admin_edit', 228, 229),
(110, 106, '', NULL, 'admin_delete', 230, 231),
(111, 1, '', NULL, 'Meta', 236, 243),
(112, 1, '', NULL, 'Migrations', 244, 245),
(113, 1, '', NULL, 'Nodes', 246, 285),
(114, 113, '', NULL, 'Nodes', 247, 284),
(115, 114, '', NULL, 'admin_toggle', 248, 249),
(116, 114, '', NULL, 'admin_index', 250, 251),
(117, 114, '', NULL, 'admin_create', 252, 253),
(118, 114, '', NULL, 'admin_add', 254, 255),
(119, 114, '', NULL, 'admin_edit', 256, 257),
(120, 114, '', NULL, 'admin_update_paths', 258, 259),
(121, 114, '', NULL, 'admin_delete', 260, 261),
(122, 114, '', NULL, 'admin_delete_meta', 262, 263),
(123, 114, '', NULL, 'admin_add_meta', 264, 265),
(124, 114, '', NULL, 'admin_process', 266, 267),
(125, 114, '', NULL, 'index', 268, 269),
(126, 114, '', NULL, 'term', 270, 271),
(127, 114, '', NULL, 'promoted', 272, 273),
(128, 114, '', NULL, 'search', 274, 275),
(129, 114, '', NULL, 'view', 276, 277),
(130, 1, '', NULL, 'Search', 286, 287),
(131, 1, '', NULL, 'Settings', 288, 323),
(132, 131, '', NULL, 'Languages', 289, 304),
(133, 132, '', NULL, 'admin_index', 290, 291),
(134, 132, '', NULL, 'admin_add', 292, 293),
(135, 132, '', NULL, 'admin_edit', 294, 295),
(136, 132, '', NULL, 'admin_delete', 296, 297),
(137, 132, '', NULL, 'admin_moveup', 298, 299),
(138, 132, '', NULL, 'admin_movedown', 300, 301),
(139, 132, '', NULL, 'admin_select', 302, 303),
(140, 131, '', NULL, 'Settings', 305, 322),
(142, 140, '', NULL, 'admin_index', 306, 307),
(143, 140, '', NULL, 'admin_view', 308, 309),
(144, 140, '', NULL, 'admin_add', 310, 311),
(145, 140, '', NULL, 'admin_edit', 312, 313),
(146, 140, '', NULL, 'admin_delete', 314, 315),
(147, 140, '', NULL, 'admin_prefix', 316, 317),
(148, 140, '', NULL, 'admin_moveup', 318, 319),
(149, 140, '', NULL, 'admin_movedown', 320, 321),
(150, 1, '', NULL, 'Taxonomy', 324, 363),
(151, 150, '', NULL, 'Terms', 325, 338),
(152, 151, '', NULL, 'admin_index', 326, 327),
(153, 151, '', NULL, 'admin_add', 328, 329),
(154, 151, '', NULL, 'admin_edit', 330, 331),
(155, 151, '', NULL, 'admin_delete', 332, 333),
(156, 151, '', NULL, 'admin_moveup', 334, 335),
(157, 151, '', NULL, 'admin_movedown', 336, 337),
(158, 150, '', NULL, 'Types', 339, 348),
(159, 158, '', NULL, 'admin_index', 340, 341),
(160, 158, '', NULL, 'admin_add', 342, 343),
(161, 158, '', NULL, 'admin_edit', 344, 345),
(162, 158, '', NULL, 'admin_delete', 346, 347),
(163, 150, '', NULL, 'Vocabularies', 349, 362),
(164, 163, '', NULL, 'admin_index', 350, 351),
(165, 163, '', NULL, 'admin_add', 352, 353),
(166, 163, '', NULL, 'admin_edit', 354, 355),
(167, 163, '', NULL, 'admin_delete', 356, 357),
(168, 163, '', NULL, 'admin_moveup', 358, 359),
(169, 163, '', NULL, 'admin_movedown', 360, 361),
(170, 1, '', NULL, 'Ckeditor', 364, 365),
(171, 1, '', NULL, 'Users', 366, 411),
(172, 171, '', NULL, 'Roles', 367, 376),
(173, 172, '', NULL, 'admin_index', 368, 369),
(174, 172, '', NULL, 'admin_add', 370, 371),
(175, 172, '', NULL, 'admin_edit', 372, 373),
(176, 172, '', NULL, 'admin_delete', 374, 375),
(177, 171, '', NULL, 'Users', 377, 410),
(178, 177, '', NULL, 'admin_index', 378, 379),
(179, 177, '', NULL, 'admin_add', 380, 381),
(180, 177, '', NULL, 'admin_edit', 382, 383),
(181, 177, '', NULL, 'admin_reset_password', 384, 385),
(182, 177, '', NULL, 'admin_delete', 386, 387),
(183, 177, '', NULL, 'admin_login', 388, 389),
(184, 177, '', NULL, 'admin_logout', 390, 391),
(185, 177, '', NULL, 'index', 392, 393),
(186, 177, '', NULL, 'add', 394, 395),
(187, 177, '', NULL, 'activate', 396, 397),
(188, 177, '', NULL, 'edit', 398, 399),
(189, 177, '', NULL, 'forgot', 400, 401),
(190, 177, '', NULL, 'reset', 402, 403),
(191, 177, '', NULL, 'login', 404, 405),
(192, 177, '', NULL, 'logout', 406, 407),
(193, 177, '', NULL, 'view', 408, 409),
(201, 51, NULL, NULL, 'ExtensionsDashboard', 145, 148),
(202, 201, NULL, NULL, 'admin_index', 146, 147),
(203, 52, NULL, NULL, 'admin_reset_locale', 112, 113),
(204, 58, NULL, NULL, 'admin_moveup', 126, 127),
(205, 58, NULL, NULL, 'admin_movedown', 128, 129),
(206, 97, NULL, NULL, 'admin_link_chooser', 220, 221),
(207, 106, NULL, NULL, 'admin_toggle', 232, 233),
(208, 111, NULL, NULL, 'Meta', 237, 242),
(209, 208, NULL, NULL, 'admin_delete_meta', 238, 239),
(210, 208, NULL, NULL, 'admin_add_meta', 240, 241),
(211, 114, NULL, NULL, 'admin_hierarchy', 278, 279),
(212, 114, NULL, NULL, 'admin_moveup', 280, 281),
(213, 114, NULL, NULL, 'admin_movedown', 282, 283),
(214, NULL, NULL, NULL, 'api', 433, 448),
(215, 214, NULL, NULL, 'v1_0', 434, 447),
(216, 215, NULL, NULL, 'Nodes', 435, 440),
(217, 216, NULL, NULL, 'Nodes', 436, 439),
(218, 217, NULL, NULL, 'lookup', 437, 438),
(219, 215, NULL, NULL, 'Users', 441, 446),
(220, 219, NULL, NULL, 'Users', 442, 445),
(221, 220, NULL, NULL, 'lookup', 443, 444),
(222, 1, NULL, NULL, 'Wysiwyg', 412, 413),
(289, 1, NULL, NULL, 'Theme', 414, 415),
(290, 72, NULL, NULL, 'admin_custom', 162, 163),
(296, 1, NULL, NULL, 'Translate', 416, 425),
(297, 296, NULL, NULL, 'Translate', 417, 424),
(298, 297, NULL, NULL, 'admin_index', 418, 419),
(299, 297, NULL, NULL, 'admin_edit', 420, 421),
(300, 297, NULL, NULL, 'admin_delete', 422, 423),
(301, 1, NULL, NULL, 'Assets', 426, 431),
(302, 301, NULL, NULL, 'Assets', 427, 430),
(303, 302, NULL, NULL, 'admin_index', 428, 429);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, 2, 'Role', 1, 'Role-admin', 3, 6),
(2, 3, 'Role', 2, 'Role-registered', 2, 7),
(3, NULL, 'Role', 3, 'Role-public', 1, 8),
(4, 1, 'User', 1, 'admin', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 3, 35, '1', '1', '1', '1'),
(2, 3, 36, '1', '1', '1', '1'),
(3, 2, 37, '1', '1', '1', '1'),
(4, 3, 44, '1', '1', '1', '1'),
(5, 3, 125, '1', '1', '1', '1'),
(6, 3, 126, '1', '1', '1', '1'),
(7, 3, 127, '1', '1', '1', '1'),
(8, 3, 128, '1', '1', '1', '1'),
(9, 3, 129, '1', '1', '1', '1'),
(10, 2, 185, '1', '1', '1', '1'),
(11, 3, 186, '1', '1', '1', '1'),
(12, 3, 187, '1', '1', '1', '1'),
(13, 2, 188, '1', '1', '1', '1'),
(14, 3, 189, '1', '1', '1', '1'),
(15, 3, 190, '1', '1', '1', '1'),
(16, 3, 191, '1', '1', '1', '1'),
(17, 2, 192, '1', '1', '1', '1'),
(18, 2, 193, '1', '1', '1', '1'),
(19, 3, 183, '1', '1', '1', '1'),
(20, 1, 303, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `row_id` int(10) NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `caption`, `plugin`, `model`, `row_id`, `attachment`, `mime_type`, `size`, `status`, `updated`, `created`) VALUES
(1, 'team_01', NULL, NULL, 'Node', 65, 'assets/5a02bab033899.jpg', 'image/jpeg', '9918', 1, '2017-11-08 08:05:04', '2017-11-08 08:05:04'),
(2, 'team_03', NULL, NULL, 'Node', 65, 'assets/5a02bab083a5c.jpg', 'image/jpeg', '10665', 1, '2017-11-08 08:05:04', '2017-11-08 08:05:04'),
(3, 'team_05', NULL, NULL, 'Node', 65, 'assets/5a02bab2c852a.jpg', 'image/jpeg', '10928', 1, '2017-11-08 08:05:06', '2017-11-08 08:05:06'),
(4, 'team_06', NULL, NULL, 'Node', 65, 'assets/5a02bab2f2490.jpg', 'image/jpeg', '10055', 1, '2017-11-08 08:05:07', '2017-11-08 08:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(20) NOT NULL,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `description`, `attachment`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 3, 'test', 'test', 'test', 'test', 'dummy-1760x990-Habitation.jpg', 0, '', 1, 1, '', '', '', NULL, '', NULL, NULL, '2017-06-08 08:00:02', 1, '2017-06-08 07:59:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `color`, `status`, `weight`, `created`, `modified`) VALUES
(3, 'Sevag', 'sevag', '#fffffff', 1, 1, '2017-05-26 11:29:19', '2017-05-26 11:29:19'),
(4, 'Akelian', 'akelian', '#trerttr', 1, 2, '2017-05-26 11:29:32', '2017-05-31 11:06:50'),
(5, 'Accent', 'accent', '#asdsdf', 1, 3, '2017-05-26 11:29:52', '2017-05-26 11:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories_projects`
--

CREATE TABLE `categories_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_projects`
--

INSERT INTO `categories_projects` (`id`, `project_id`, `category_id`) VALUES
(7, 10011, 3),
(8, 10011, 5);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `model`, `foreign_key`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 'Node', 1, 0, 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', NULL, 1, 0, 'blog', 'comment', 1, 2, '2009-12-25 12:00:00', NULL, '2009-12-25 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', 1, 0, 0, 0, 0, 1, 1, '2009-10-07 22:07:49', NULL, '2009-09-16 01:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(20) NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `column` int(20) NOT NULL DEFAULT '0',
  `weight` int(20) NOT NULL DEFAULT '0',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i18n`
--

CREATE TABLE `i18n` (
  `id` int(10) NOT NULL,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i18n`
--

INSERT INTO `i18n` (`id`, `locale`, `model`, `foreign_key`, `field`, `content`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'ara', 'Project', 10011, 'title', 'يسبسيب', '2017-06-06 07:00:58', 1, '2017-06-06 07:22:56', 1),
(2, 'ara', 'Project', 10011, 'description', 'لتلاتالتتال', '2017-06-06 07:00:58', 1, '2017-06-06 07:22:56', 1),
(3, 'fre', 'Project', 10011, 'title', 'tesstE', '2017-06-06 07:01:23', 1, '2017-06-06 07:03:55', 1),
(4, 'fre', 'Project', 10011, 'description', 'tdssdf', '2017-06-06 07:01:23', 1, '2017-06-06 07:03:55', 1),
(5, 'ara', 'Project', 10011, 'date_literal', 'صثق', '2017-06-06 07:03:32', 1, '2017-06-06 07:22:56', 1),
(6, 'fre', 'Project', 10011, 'date_literal', 'khjkjhk', '2017-06-06 07:03:50', 1, '2017-06-06 07:03:55', 1),
(7, 'ara', 'Category', 3, 'name', 'سيبسيب', '2017-06-06 07:06:38', 1, '2017-06-06 07:06:38', 1),
(8, 'fre', 'Category', 3, 'name', 'hjgjghjghj', '2017-06-06 07:06:54', 1, '2017-06-06 07:06:54', 1),
(9, 'ara', 'Phase', 2, 'title', 'تااتنتن', '2017-06-06 07:34:34', 1, '2017-06-06 07:34:34', 1),
(10, 'ara', 'Phase', 2, 'subtitle', 'عهغعهغع', '2017-06-06 07:34:34', 1, '2017-06-06 07:34:34', 1),
(11, 'fre', 'Phase', 2, 'title', 'hggfhfgh', '2017-06-06 07:34:49', 1, '2017-06-06 07:34:49', 1),
(12, 'fre', 'Phase', 2, 'subtitle', 'ghjjhjhj', '2017-06-06 07:34:49', 1, '2017-06-06 07:34:49', 1),
(15, 'ara', 'Node', 65, 'title', 'asdasda', '2017-06-06 08:16:58', 1, '2017-06-06 08:16:58', 1),
(16, 'ara', 'Node', 65, 'excerpt', 'asda', '2017-06-06 08:16:58', 1, '2017-06-06 08:16:58', 1),
(17, 'ara', 'Node', 65, 'body', '<p>sdasdadsasd</p>\r\n', '2017-06-06 08:16:58', 1, '2017-06-06 08:16:58', 1),
(18, 'ara', 'ProjectVideo', 5, 'caption', 'asdasdfsdfبسيي', '2017-06-06 08:19:20', 1, '2017-06-06 08:19:20', 1),
(19, 'fre', 'ProjectVideo', 5, 'caption', 'sdfhf', '2017-06-06 08:19:30', 1, '2017-06-06 08:19:30', 1),
(20, 'ara', 'ProjectDocument', 5, 'caption', 'سبيسيب', '2017-06-06 08:20:19', 1, '2017-06-06 08:20:19', 1),
(21, 'fre', 'ProjectDocument', 5, 'caption', 'dfsdfsdf', '2017-06-06 08:20:30', 1, '2017-06-06 08:20:30', 1),
(22, 'ara', 'ProjectLink', 4, 'caption', 'بيسسيبسيب', '2017-06-06 08:22:16', 1, '2017-06-06 08:22:16', 1),
(23, 'fre', 'ProjectLink', 4, 'caption', 'hfghfghfgh', '2017-06-06 08:22:26', 1, '2017-06-06 08:22:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'English', 'English', 'eng', 1, 1, '2009-11-02 21:37:38', NULL, '2009-11-02 20:52:00', NULL),
(2, 'Arabic', 'Arabic', 'ara', 1, 2, '2017-06-06 07:00:19', 1, '2017-06-06 07:00:11', 1),
(3, 'French', 'French', 'fre', 1, 3, '2017-06-06 07:00:33', 1, '2017-06-06 07:00:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Main Menu', 'main', '', '', 1, NULL, 0, '', NULL, NULL, '2017-04-12 17:56:05', 1, '2009-07-22 01:49:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `id` int(20) NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_taxonomies`
--

CREATE TABLE `model_taxonomies` (
  `id` int(20) NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `attachment`, `external_link`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(64, NULL, 0, 'dummy-1760x990-Habitation', 'dummy-1760x990-Habitation.jpg', '', NULL, NULL, NULL, NULL, 'image/jpeg', 1, 0, 0, '/uploads/dummy-1760x990-Habitation.jpg', NULL, 0, 1, 2, NULL, 'attachment', NULL, NULL, '2017-05-24 09:48:48', 1, '2017-05-24 09:48:48', 1),
(65, NULL, 1, 'asdasda', 'asdasda', '<p>sdasdadsasd</p>\r\n', 'dummy-1760x990-Habitation.jpg', '', 'asda', 1, NULL, 1, 0, 0, '/node/asdasda', '', 0, 3, 4, '', 'node', NULL, NULL, '2017-06-08 07:59:32', 1, '2017-06-06 06:44:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` int(255) NOT NULL,
  `start_date` int(4) DEFAULT NULL,
  `end_date` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `start_date`, `end_date`, `title`, `subtitle`, `status`, `created`, `modified`) VALUES
(1, 2003, 2014, 'sadasd', 'asdasdasdasd', 1, '2017-05-24 10:14:28', '2017-05-24 10:14:56'),
(2, 2033, 2037, 'asdas', 'dasd', 1, '2017-05-24 10:14:49', '2017-05-24 10:41:04'),
(3, 2024, 2029, 'adasd', 'asdasdas', 1, '2017-05-24 10:15:12', '2017-05-24 10:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(255) NOT NULL,
  `phase_id` int(255) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `date` int(4) NOT NULL,
  `date_literal` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `keywords` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `phase_id`, `title`, `description`, `date`, `date_literal`, `thumb`, `status`, `keywords`, `created`, `modified`) VALUES
(10011, 2, 'test', 'test', 2025, '1324234sdf', 'dummy-1760x990-Habitation.jpg', 1, 'sdfsdf', '2017-05-31 11:04:30', '2017-05-31 11:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `project_documents`
--

CREATE TABLE `project_documents` (
  `id` int(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `caption` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_documents`
--

INSERT INTO `project_documents` (`id`, `project_id`, `attachment`, `caption`, `status`, `weight`, `created`, `modified`) VALUES
(5, 10011, 'dummy-1760x990-Habitation.jpg', 'asdasdasd', 1, 1, '2017-06-06 08:20:10', '2017-06-06 08:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `caption` longtext,
  `status` int(1) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_links`
--

CREATE TABLE `project_links` (
  `id` int(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `link` longtext NOT NULL,
  `caption` longtext,
  `status` int(1) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_links`
--

INSERT INTO `project_links` (`id`, `project_id`, `link`, `caption`, `status`, `weight`, `created`, `modified`) VALUES
(4, 10011, 'asd', 'asdasd', 1, 1, '2017-06-06 08:22:03', '2017-06-06 08:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `project_videos`
--

CREATE TABLE `project_videos` (
  `id` int(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `link` longtext NOT NULL,
  `caption` longtext,
  `status` int(1) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_videos`
--

INSERT INTO `project_videos` (`id`, `project_id`, `link`, `caption`, `status`, `weight`, `created`, `modified`) VALUES
(5, 10011, 'asdasdad', 'asdasdfsdf', 1, 1, '2017-06-06 08:18:39', '2017-06-06 08:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(3, 'none', 'none', '', 1, '2017-04-06 11:18:00', NULL, '2017-04-06 11:18:00', NULL),
(4, 'right', 'right', '', 0, '2017-04-06 11:18:00', NULL, '2017-04-06 11:18:00', NULL),
(6, 'left', 'left', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(7, 'header', 'header', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(8, 'footer', 'footer', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(9, 'region1', 'region1', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(10, 'region2', 'region2', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(11, 'region3', 'region3', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(12, 'region4', 'region4', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(13, 'region5', 'region5', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(14, 'region6', 'region6', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(15, 'region7', 'region7', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(16, 'region8', 'region8', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(17, 'region9', 'region9', '', 0, '2017-04-06 11:18:01', NULL, '2017-04-06 11:18:01', NULL),
(18, 'Homepage', 'homepage', NULL, 0, '2017-04-13 06:43:59', 1, '2017-04-13 06:43:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', NULL, '2009-04-06 05:20:38', NULL),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2017-04-06 11:17:04'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2017-04-06 11:17:04'),
(3, 'IncreaseClassNameLength', 'Migrations', '2017-04-06 11:17:04'),
(4, 'FirstMigrationSettings', 'Settings', '2017-04-06 11:17:05'),
(5, 'SettingsTrackableFields', 'Settings', '2017-04-06 11:17:09'),
(6, 'AddedAssetTimestampSetting', 'Settings', '2017-04-06 11:17:09'),
(7, 'ExposeSiteThemeAndLocaleAndHomeUrl', 'Settings', '2017-04-06 11:17:09'),
(8, 'FirstMigrationAcl', 'Acl', '2017-04-06 11:17:10'),
(9, 'SplitSession', 'Acl', '2017-04-06 11:17:10'),
(10, 'FirstMigrationBlocks', 'Blocks', '2017-04-06 11:17:11'),
(11, 'BlocksTrackableFields', 'Blocks', '2017-04-06 11:17:15'),
(12, 'BlocksPublishingFields', 'Blocks', '2017-04-06 11:17:17'),
(13, 'FirstMigrationComments', 'Comments', '2017-04-06 11:17:18'),
(14, 'CommentsTrackableFields', 'Comments', '2017-04-06 11:17:19'),
(15, 'AddCommentsForeignKeys', 'Comments', '2017-04-06 11:17:20'),
(16, 'FirstMigrationContacts', 'Contacts', '2017-04-06 11:17:20'),
(17, 'ContactsTrackableFields', 'Contacts', '2017-04-06 11:17:23'),
(18, 'FirstMigrationMenus', 'Menus', '2017-04-06 11:17:23'),
(19, 'MenusTrackableFields', 'Menus', '2017-04-06 11:17:26'),
(20, 'MenusPublishingFields', 'Menus', '2017-04-06 11:17:30'),
(21, 'FirstMigrationMeta', 'Meta', '2017-04-06 11:17:30'),
(22, 'MetaTrackableFields', 'Meta', '2017-04-06 11:17:33'),
(23, 'FirstMigrationNodes', 'Nodes', '2017-04-06 11:17:34'),
(24, 'NodesTrackableFields', 'Nodes', '2017-04-06 11:17:35'),
(25, 'NodesPublishingFields', 'Nodes', '2017-04-06 11:17:37'),
(26, 'FirstMigrationTaxonomy', 'Taxonomy', '2017-04-06 11:17:39'),
(27, 'TaxonomyTrackableFields', 'Taxonomy', '2017-04-06 11:17:44'),
(28, 'RenameNodesTaxonomy', 'Taxonomy', '2017-04-06 11:17:44'),
(29, 'AddModelTaxonomyForeignKey', 'Taxonomy', '2017-04-06 11:17:44'),
(30, 'AddWysisygEnableField', 'Taxonomy', '2017-04-06 11:17:45'),
(31, 'FirstMigrationUsers', 'Users', '2017-04-06 11:17:46'),
(32, 'UsersTrackableFields', 'Users', '2017-04-06 11:17:49'),
(33, 'UsersEnlargeTimezone', 'Users', '2017-04-06 11:17:50'),
(34, 'FirstMigrationDashboard', 'Dashboards', '2017-04-06 11:17:50'),
(35, 'FirstMigrationTranslate', 'Translate', '2017-06-06 06:35:03'),
(36, 'TranslateTrackableFields', 'Translate', '2017-06-06 06:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(20) NOT NULL,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'Sevag', '', '', '', 1, 1, '', '2017-04-06 11:18:01', NULL, '2017-11-08 08:01:37', 1),
(7, 'Site.tagline', 'A CakePHP powered Content Management System.', '', '', 'textarea', 1, 2, '', '2017-04-06 11:18:01', NULL, '2017-11-08 08:01:37', 1),
(8, 'Site.email', 'you@your-site.com', '', '', '', 1, 3, '', '2017-04-06 11:18:01', NULL, '2017-11-08 08:01:37', 1),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2017-04-06 11:18:02', NULL, '2017-11-08 08:01:37', 1),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(20, 'Site.theme', 'Ghassan', '', '', '', 0, 14, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', 1),
(21, 'Site.feed_url', '', '', '', '', 0, 15, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(24, 'Comment.level', '1', '', 'levels deep (threaded comments)', '', 1, 18, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(26, 'Site.locale', 'eng', '', '', 'text', 1, 20, '', '2017-04-06 11:18:02', NULL, '2017-11-08 08:01:37', 1),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 21, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(28, 'Comment.date_time_format', 'M d, Y', '', '', '', 1, 22, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', '', 1, 4, '', '2017-04-06 11:18:02', NULL, '2017-11-08 08:01:37', 1),
(32, 'Hook.bootstraps', 'Settings,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Wysiwyg,Ckeditor,Translate,Assets', '', '', '', 0, 23, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', 1),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', '2017-04-06 11:18:02', NULL, '2017-04-06 11:18:02', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', '2017-04-06 11:18:03', NULL, '2017-04-06 11:18:03', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '"Remember Me" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2017-04-06 11:18:03', NULL, '2017-04-06 11:18:03', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={"Nodes.Node": "Node", "Blocks.Block": "Block", "Menus.Menu": "Menu", "Menus.Link": "Link"}', '2017-04-06 11:18:03', NULL, '2017-04-06 11:18:03', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2017-04-06 11:18:03', NULL, '2017-11-08 08:01:37', 1),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={"0": "Disabled", "1": "Enabled in debug mode only", "force": "Always enabled"}', '2017-04-06 11:18:03', NULL, '2017-11-08 08:01:37', 1),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 29, '', '2017-04-06 11:18:03', NULL, '2017-11-08 08:01:37', 1),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2017-04-06 11:18:03', NULL, '2017-11-08 08:01:37', 1),
(42, 'Croogo.installed', '1', '', '', '', 0, 31, '', '2017-04-06 11:18:45', NULL, '2017-04-06 11:18:45', NULL),
(43, 'Croogo.version', '2.3.2', '', '', '', 0, 32, '', '2017-04-06 11:20:12', 1, '2017-04-06 11:20:12', 1),
(45, 'Payments.shipping', 'Free Worlwide Shipping via DHL on orders over $200 USD', '', '', 'textarea', 1, 33, '', '2017-04-10 17:18:34', 1, '2017-05-10 08:48:34', 1),
(46, 'Social.facebook_link', 'http://www.facebook.com', '', '', '', 1, 34, '', '2017-04-17 09:29:35', 1, '2017-04-17 09:56:52', 1),
(47, 'Social.twitter_link', 'http://www.twitter.com', '', '', '', 1, 35, '', '2017-04-17 09:29:59', 1, '2017-04-17 09:56:52', 1),
(48, 'Social.instagram_link', 'http://www.instagram.com', '', '', '', 1, 36, '', '2017-04-17 09:30:18', 1, '2017-04-17 09:56:52', 1),
(49, 'Map.link', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d6624.828533045171!2d35.54111730000001!3d33.8789832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2slb!4v1494061447133" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'textarea', 1, 37, '', '2017-05-06 08:33:35', 1, '2017-05-10 08:27:01', 1),
(54, 'Payments.shipping_cost', '0', '', '', 'text', 1, 38, '', '2017-05-10 08:27:54', 1, '2017-05-10 08:48:34', 1),
(55, 'Assets.models', 'Node', '', '(ex: Node, Project, Clients)', '', 1, 39, '', '2017-11-08 08:03:42', 1, '2017-11-08 08:03:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` int(20) NOT NULL,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(1, NULL, 1, 1, 1, 2),
(2, NULL, 2, 1, 3, 4),
(3, NULL, 3, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', NULL, '2009-07-22 03:34:56', NULL),
(2, 'Announcements', 'announcements', '', '2010-05-16 23:57:06', NULL, '2009-07-22 03:45:37', NULL),
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', NULL, '2009-08-26 14:42:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `format_use_wysiwyg` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `format_use_wysiwyg`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 1, 0, 1, 0, 0, '', NULL, '2009-09-09 00:23:24', NULL, '2009-09-02 18:06:27', NULL),
(2, 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', 1, 1, 1, 2, 1, 0, 0, '', NULL, '2009-09-15 12:15:43', NULL, '2009-09-02 18:20:44', NULL),
(4, 'Node', 'node', 'Default content type.', 1, 1, 1, 2, 1, 0, 0, '', NULL, '2009-10-06 21:53:15', NULL, '2009-09-05 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_vocabularies`
--

CREATE TABLE `types_vocabularies` (
  `id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types_vocabularies`
--

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(24, 4, 1, NULL),
(25, 4, 2, NULL),
(30, 2, 1, NULL),
(31, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `status`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(1, 1, 'admin', 'd1011fa71c47b521b8d33db84c4d5a83ec33321c', 'admin', '', NULL, '9e7c82da8d41c768d63a94c598437b74', NULL, NULL, 1, '2017-04-06 11:18:45', NULL, '2017-04-06 11:18:45', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

CREATE TABLE `vocabularies` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vocabularies`
--

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Categories', 'categories', '', 0, 1, 0, NULL, 1, '2010-05-17 20:03:11', NULL, '2009-07-22 02:16:21', NULL),
(2, 'Tags', 'tags', '', 0, 1, 0, NULL, 2, '2010-05-17 20:03:11', NULL, '2009-07-22 02:16:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_alias` (`alias`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_projects`
--
ALTER TABLE `categories_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_fk` (`model`,`foreign_key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locale` (`locale`),
  ADD KEY `model` (`model`),
  ADD KEY `row_id` (`foreign_key`),
  ADD KEY `field` (`field`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_alias` (`alias`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_taxonomies`
--
ALTER TABLE `model_taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_documents`
--
ALTER TABLE `project_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_links`
--
ALTER TABLE `project_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_videos`
--
ALTER TABLE `project_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_alias` (`alias`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_alias` (`alias`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pk_role_users` (`user_id`,`role_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_alias` (`alias`);

--
-- Indexes for table `types_vocabularies`
--
ALTER TABLE `types_vocabularies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vocabularies`
--
ALTER TABLE `vocabularies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vocabulary_alias` (`alias`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories_projects`
--
ALTER TABLE `categories_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meta`
--
ALTER TABLE `meta`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `model_taxonomies`
--
ALTER TABLE `model_taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;
--
-- AUTO_INCREMENT for table `project_documents`
--
ALTER TABLE `project_documents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `project_links`
--
ALTER TABLE `project_links`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project_videos`
--
ALTER TABLE `project_videos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `types_vocabularies`
--
ALTER TABLE `types_vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vocabularies`
--
ALTER TABLE `vocabularies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
