-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25-Maio-2018 às 12:22
-- Versão do servidor: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signbank`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `attachments_attachment`
--

CREATE TABLE `attachments_attachment` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Dataset_Manager');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 2, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 2, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 2, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 2, 72),
(73, 2, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 2, 77),
(78, 2, 78),
(79, 2, 79),
(80, 2, 80),
(81, 2, 81),
(82, 2, 82),
(83, 2, 83),
(84, 2, 84),
(85, 2, 85),
(86, 2, 86),
(87, 2, 87),
(88, 2, 88),
(89, 2, 89),
(90, 2, 90),
(91, 2, 91),
(92, 2, 92),
(93, 2, 93),
(94, 2, 94),
(95, 2, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 2, 100),
(101, 2, 101),
(102, 2, 102),
(103, 2, 103),
(104, 2, 104),
(105, 2, 105),
(106, 2, 106),
(107, 2, 107),
(108, 2, 108),
(109, 2, 109),
(110, 2, 110),
(111, 2, 111),
(112, 2, 112),
(113, 2, 113),
(114, 2, 114),
(115, 2, 115),
(116, 2, 116),
(117, 2, 117),
(118, 2, 118),
(119, 2, 119),
(120, 2, 120),
(121, 2, 121),
(122, 2, 122),
(123, 2, 123),
(124, 2, 124),
(125, 2, 125),
(126, 2, 126),
(127, 2, 127),
(128, 2, 128),
(129, 2, 129),
(130, 2, 130),
(131, 2, 131),
(132, 2, 132),
(133, 2, 133),
(134, 2, 134),
(135, 2, 135),
(136, 2, 136),
(137, 2, 137),
(138, 2, 138),
(139, 2, 139),
(140, 2, 140),
(141, 2, 141),
(142, 2, 142),
(143, 2, 143),
(144, 2, 144),
(145, 2, 145),
(146, 2, 146),
(147, 2, 147),
(148, 2, 148),
(149, 2, 149),
(150, 2, 150),
(151, 2, 151);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `content_type_id`, `codename`, `name`) VALUES
(1, 1, 'add_permission', 'Can add permission'),
(2, 1, 'change_permission', 'Can change permission'),
(3, 1, 'delete_permission', 'Can delete permission'),
(4, 2, 'add_group', 'Can add group'),
(5, 2, 'change_group', 'Can change group'),
(6, 2, 'delete_group', 'Can delete group'),
(7, 3, 'add_user', 'Can add user'),
(8, 3, 'change_user', 'Can change user'),
(9, 3, 'delete_user', 'Can delete user'),
(10, 4, 'add_contenttype', 'Can add content type'),
(11, 4, 'change_contenttype', 'Can change content type'),
(12, 4, 'delete_contenttype', 'Can delete content type'),
(13, 5, 'add_session', 'Can add session'),
(14, 5, 'change_session', 'Can change session'),
(15, 5, 'delete_session', 'Can delete session'),
(16, 6, 'add_site', 'Can add site'),
(17, 6, 'change_site', 'Can change site'),
(18, 6, 'delete_site', 'Can delete site'),
(19, 7, 'add_logentry', 'Can add log entry'),
(20, 7, 'change_logentry', 'Can change log entry'),
(21, 7, 'delete_logentry', 'Can delete log entry'),
(22, 8, 'add_attachment', 'Can add attachment'),
(23, 8, 'change_attachment', 'Can change attachment'),
(24, 8, 'delete_attachment', 'Can delete attachment'),
(25, 9, 'add_translation', 'Can add translation'),
(26, 9, 'change_translation', 'Can change translation'),
(27, 9, 'delete_translation', 'Can delete translation'),
(28, 10, 'add_keyword', 'Can add keyword'),
(29, 10, 'change_keyword', 'Can change keyword'),
(30, 10, 'delete_keyword', 'Can delete keyword'),
(31, 11, 'add_definition', 'Can add definition'),
(32, 11, 'change_definition', 'Can change definition'),
(33, 11, 'delete_definition', 'Can delete definition'),
(34, 12, 'add_language', 'Can add language'),
(35, 12, 'change_language', 'Can change language'),
(36, 12, 'delete_language', 'Can delete language'),
(37, 13, 'add_dialect', 'Can add dialect'),
(38, 13, 'change_dialect', 'Can change dialect'),
(39, 13, 'delete_dialect', 'Can delete dialect'),
(40, 14, 'add_relationtoforeignsign', 'Can add relation to foreign sign'),
(41, 14, 'change_relationtoforeignsign', 'Can change relation to foreign sign'),
(42, 14, 'delete_relationtoforeignsign', 'Can delete relation to foreign sign'),
(43, 15, 'add_fieldchoice', 'Can add field choice'),
(44, 15, 'change_fieldchoice', 'Can change field choice'),
(45, 15, 'delete_fieldchoice', 'Can delete field choice'),
(46, 16, 'add_gloss', 'Can add gloss'),
(47, 16, 'change_gloss', 'Can change gloss'),
(48, 16, 'delete_gloss', 'Can delete gloss'),
(49, 16, 'update_video', 'Can Update Video'),
(50, 16, 'search_gloss', 'Can Search/View Full Gloss Details'),
(51, 16, 'export_csv', 'Can export sign details as CSV'),
(52, 16, 'export_ecv', 'Can create an ECV export file of Signbank'),
(53, 16, 'can_publish', 'Can publish signs and definitions'),
(54, 16, 'can_delete_unpublished', 'Can delete unpub signs or defs'),
(55, 16, 'can_delete_published', 'Can delete pub signs and defs'),
(56, 16, 'view_advanced_properties', 'Include all properties in sign detail view'),
(57, 17, 'add_deletedglossormedia', 'Can add deleted gloss or media'),
(58, 17, 'change_deletedglossormedia', 'Can change deleted gloss or media'),
(59, 17, 'delete_deletedglossormedia', 'Can delete deleted gloss or media'),
(60, 18, 'add_relation', 'Can add relation'),
(61, 18, 'change_relation', 'Can change relation'),
(62, 18, 'delete_relation', 'Can delete relation'),
(63, 19, 'add_morphologydefinition', 'Can add morphology definition'),
(64, 19, 'change_morphologydefinition', 'Can change morphology definition'),
(65, 19, 'delete_morphologydefinition', 'Can delete morphology definition'),
(66, 20, 'add_morpheme', 'Can add morpheme'),
(67, 20, 'change_morpheme', 'Can change morpheme'),
(68, 20, 'delete_morpheme', 'Can delete morpheme'),
(69, 21, 'add_othermedia', 'Can add other media'),
(70, 21, 'change_othermedia', 'Can change other media'),
(71, 21, 'delete_othermedia', 'Can delete other media'),
(72, 22, 'add_userprofile', 'Can add user profile'),
(73, 22, 'change_userprofile', 'Can change user profile'),
(74, 22, 'delete_userprofile', 'Can delete user profile'),
(75, 23, 'add_interpreterfeedback', 'Can add interpreter feedback'),
(76, 23, 'change_interpreterfeedback', 'Can change interpreter feedback'),
(77, 23, 'delete_interpreterfeedback', 'Can delete interpreter feedback'),
(78, 23, 'view_interpreterfeedback', 'Can View Interpreter Feedback'),
(79, 24, 'add_generalfeedback', 'Can add general feedback'),
(80, 24, 'change_generalfeedback', 'Can change general feedback'),
(81, 24, 'delete_generalfeedback', 'Can delete general feedback'),
(82, 25, 'add_signfeedback', 'Can add sign feedback'),
(83, 25, 'change_signfeedback', 'Can change sign feedback'),
(84, 25, 'delete_signfeedback', 'Can delete sign feedback'),
(85, 26, 'add_missingsignfeedback', 'Can add missing sign feedback'),
(86, 26, 'change_missingsignfeedback', 'Can change missing sign feedback'),
(87, 26, 'delete_missingsignfeedback', 'Can delete missing sign feedback'),
(88, 27, 'add_registrationprofile', 'Can add registration profile'),
(89, 27, 'change_registrationprofile', 'Can change registration profile'),
(90, 27, 'delete_registrationprofile', 'Can delete registration profile'),
(91, 28, 'add_userprofile', 'Can add user profile'),
(92, 28, 'change_userprofile', 'Can change user profile'),
(93, 28, 'delete_userprofile', 'Can delete user profile'),
(94, 29, 'add_page', 'Can add page'),
(95, 29, 'change_page', 'Can change page'),
(96, 29, 'delete_page', 'Can delete page'),
(97, 30, 'add_pagevideo', 'Can add page video'),
(98, 30, 'change_pagevideo', 'Can change page video'),
(99, 30, 'delete_pagevideo', 'Can delete page video'),
(100, 31, 'add_attachment', 'Can add attachment'),
(101, 31, 'change_attachment', 'Can change attachment'),
(102, 31, 'delete_attachment', 'Can delete attachment'),
(103, 32, 'add_video', 'Can add video'),
(104, 32, 'change_video', 'Can change video'),
(105, 32, 'delete_video', 'Can delete video'),
(106, 33, 'add_glossvideohistory', 'Can add gloss video history'),
(107, 33, 'change_glossvideohistory', 'Can change gloss video history'),
(108, 33, 'delete_glossvideohistory', 'Can delete gloss video history'),
(109, 34, 'add_glossvideo', 'Can add gloss video'),
(110, 34, 'change_glossvideo', 'Can change gloss video'),
(111, 34, 'delete_glossvideo', 'Can delete gloss video'),
(112, 35, 'add_revision', 'Can add revision'),
(113, 35, 'change_revision', 'Can change revision'),
(114, 35, 'delete_revision', 'Can delete revision'),
(115, 36, 'add_version', 'Can add version'),
(116, 36, 'change_version', 'Can change version'),
(117, 36, 'delete_version', 'Can delete version'),
(118, 37, 'add_tag', 'Can add tag'),
(119, 37, 'change_tag', 'Can change tag'),
(120, 37, 'delete_tag', 'Can delete tag'),
(121, 38, 'add_taggeditem', 'Can add tagged item'),
(122, 38, 'change_taggeditem', 'Can change tagged item'),
(123, 38, 'delete_taggeditem', 'Can delete tagged item'),
(124, 39, 'add_handshape', 'Can add handshape'),
(125, 39, 'change_handshape', 'Can change handshape'),
(126, 39, 'delete_handshape', 'Can delete handshape'),
(127, 12, 'add_signlanguage', 'Can add sign language'),
(128, 12, 'change_signlanguage', 'Can change sign language'),
(129, 12, 'delete_signlanguage', 'Can delete sign language'),
(130, 40, 'add_language', 'Can add language'),
(131, 40, 'change_language', 'Can change language'),
(132, 40, 'delete_language', 'Can delete language'),
(133, 41, 'add_dataset', 'Can add dataset'),
(134, 41, 'change_dataset', 'Can change dataset'),
(135, 41, 'delete_dataset', 'Can delete dataset'),
(136, 41, 'view_dataset', 'View dataset'),
(137, 42, 'add_simultaneousmorphologydefinition', 'Can add simultaneous morphology definition'),
(138, 42, 'change_simultaneousmorphologydefinition', 'Can change simultaneous morphology definition'),
(139, 42, 'delete_simultaneousmorphologydefinition', 'Can delete simultaneous morphology definition'),
(140, 43, 'add_userobjectpermission', 'Can add user object permission'),
(141, 43, 'change_userobjectpermission', 'Can change user object permission'),
(142, 43, 'delete_userobjectpermission', 'Can delete user object permission'),
(143, 44, 'add_groupobjectpermission', 'Can add group object permission'),
(144, 44, 'change_groupobjectpermission', 'Can change group object permission'),
(145, 44, 'delete_groupobjectpermission', 'Can delete group object permission'),
(146, 45, 'add_blendmorphology', 'Can add blend morphology'),
(147, 45, 'change_blendmorphology', 'Can change blend morphology'),
(148, 45, 'delete_blendmorphology', 'Can delete blend morphology'),
(149, 46, 'add_annotationidglosstranslation', 'Can add annotation idgloss translation'),
(150, 46, 'change_annotationidglosstranslation', 'Can change annotation idgloss translation'),
(151, 46, 'delete_annotationidglosstranslation', 'Can delete annotation idgloss translation');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `username`) VALUES
(1, 'pbkdf2_sha256$36000$VuBQLiuq5NSS$YxUzn2PjwVgciakw7ENIpMbz7ZplK7s75lYBv4xcNag=', '2018-05-18 17:23:43.585198', 1, '', '', 'gustavo.borgesfr@gmail.com', 1, 1, '2018-03-29 20:53:30', 'admin'),
(2, 'pbkdf2_sha256$36000$VhWojxZovNIl$2cRe9j4IcrK4qHK/1PkcU1VeVppHoa0taHM0o5Hu2Js=', '2018-05-18 17:35:31.004552', 0, '', '', '', 0, 1, '2018-04-02 20:25:46', 'teste'),
(3, '!bJ3IcEqEcYqN9ofMxK4zPnCtxneK6WjaITZPX4be', NULL, 0, '', '', '', 0, 1, '2018-04-02 20:52:03', 'AnonymousUser'),
(4, 'pbkdf2_sha256$36000$9YWA3zegvMxH$8XnYbXwrDuwaKXHg/oKO1ZdVXHP08G+vmYLXc19QfOo=', '2018-05-02 18:28:48.939000', 1, '', '', '', 1, 1, '2018-05-02 18:28:20', 'tester');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 1, 81),
(82, 1, 82),
(83, 1, 83),
(84, 1, 84),
(85, 1, 85),
(86, 1, 86),
(87, 1, 87),
(88, 1, 88),
(89, 1, 89),
(90, 1, 90),
(91, 1, 91),
(92, 1, 92),
(93, 1, 93),
(94, 1, 94),
(95, 1, 95),
(96, 1, 96),
(97, 1, 97),
(98, 1, 98),
(99, 1, 99),
(100, 1, 100),
(101, 1, 101),
(102, 1, 102),
(103, 1, 103),
(104, 1, 104),
(105, 1, 105),
(106, 1, 106),
(107, 1, 107),
(108, 1, 108),
(109, 1, 109),
(110, 1, 110),
(111, 1, 111),
(112, 1, 112),
(113, 1, 113),
(114, 1, 114),
(115, 1, 115),
(116, 1, 116),
(117, 1, 117),
(118, 1, 118),
(119, 1, 119),
(120, 1, 120),
(121, 1, 121),
(122, 1, 122),
(123, 1, 123),
(124, 1, 124),
(125, 1, 125),
(126, 1, 126),
(127, 1, 127),
(128, 1, 128),
(129, 1, 129),
(130, 1, 130),
(131, 1, 131),
(132, 1, 132),
(133, 1, 133),
(134, 1, 134),
(135, 1, 135),
(136, 1, 136),
(137, 1, 137),
(138, 1, 138),
(139, 1, 139),
(140, 1, 140),
(141, 1, 141),
(142, 1, 142),
(143, 1, 143),
(144, 1, 144),
(145, 1, 145),
(146, 1, 146),
(147, 1, 147),
(148, 1, 148),
(149, 1, 149),
(150, 1, 150),
(151, 1, 151),
(152, 2, 1),
(153, 2, 2),
(154, 2, 3),
(155, 2, 4),
(156, 2, 5),
(157, 2, 6),
(158, 2, 7),
(159, 2, 8),
(160, 2, 9),
(161, 2, 10),
(162, 2, 11),
(163, 2, 12),
(164, 2, 13),
(165, 2, 14),
(166, 2, 15),
(167, 2, 16),
(168, 2, 17),
(169, 2, 18),
(170, 2, 19),
(171, 2, 20),
(172, 2, 21),
(173, 2, 22),
(174, 2, 23),
(175, 2, 24),
(176, 2, 25),
(177, 2, 26),
(178, 2, 27),
(179, 2, 28),
(180, 2, 29),
(181, 2, 30),
(182, 2, 31),
(183, 2, 32),
(184, 2, 33),
(185, 2, 34),
(186, 2, 35),
(187, 2, 36),
(188, 2, 37),
(189, 2, 38),
(190, 2, 39),
(191, 2, 40),
(192, 2, 41),
(193, 2, 42),
(194, 2, 43),
(195, 2, 44),
(196, 2, 45),
(197, 2, 46),
(198, 2, 47),
(199, 2, 48),
(200, 2, 49),
(201, 2, 50),
(202, 2, 51),
(203, 2, 52),
(204, 2, 53),
(205, 2, 54),
(206, 2, 55),
(207, 2, 56),
(208, 2, 57),
(209, 2, 58),
(210, 2, 59),
(211, 2, 60),
(212, 2, 61),
(213, 2, 62),
(214, 2, 63),
(215, 2, 64),
(216, 2, 65),
(217, 2, 66),
(218, 2, 67),
(219, 2, 68),
(220, 2, 69),
(221, 2, 70),
(222, 2, 71),
(223, 2, 72),
(224, 2, 73),
(225, 2, 74),
(226, 2, 75),
(227, 2, 76),
(228, 2, 77),
(229, 2, 78),
(230, 2, 79),
(231, 2, 80),
(232, 2, 81),
(233, 2, 82),
(234, 2, 83),
(235, 2, 84),
(236, 2, 85),
(237, 2, 86),
(238, 2, 87),
(239, 2, 88),
(240, 2, 89),
(241, 2, 90),
(242, 2, 91),
(243, 2, 92),
(244, 2, 93),
(245, 2, 94),
(246, 2, 95),
(247, 2, 96),
(248, 2, 97),
(249, 2, 98),
(250, 2, 99),
(251, 2, 100),
(252, 2, 101),
(253, 2, 102),
(254, 2, 103),
(255, 2, 104),
(256, 2, 105),
(257, 2, 106),
(258, 2, 107),
(259, 2, 108),
(260, 2, 109),
(261, 2, 110),
(262, 2, 111),
(263, 2, 112),
(264, 2, 113),
(265, 2, 114),
(266, 2, 115),
(267, 2, 116),
(268, 2, 117),
(269, 2, 118),
(270, 2, 119),
(271, 2, 120),
(272, 2, 121),
(273, 2, 122),
(274, 2, 123),
(275, 2, 124),
(276, 2, 125),
(277, 2, 126),
(278, 2, 127),
(279, 2, 128),
(280, 2, 129),
(281, 2, 130),
(282, 2, 131),
(283, 2, 132),
(284, 2, 133),
(285, 2, 134),
(286, 2, 135),
(287, 2, 136),
(288, 2, 137),
(289, 2, 138),
(290, 2, 139),
(291, 2, 140),
(292, 2, 141),
(293, 2, 142),
(294, 2, 143),
(295, 2, 144),
(296, 2, 145),
(297, 2, 146),
(298, 2, 147),
(299, 2, 148),
(300, 2, 149),
(301, 2, 150),
(302, 2, 151),
(303, 4, 1),
(304, 4, 2),
(305, 4, 3),
(306, 4, 4),
(307, 4, 5),
(308, 4, 6),
(309, 4, 7),
(310, 4, 8),
(311, 4, 9),
(312, 4, 10),
(313, 4, 11),
(314, 4, 12),
(315, 4, 13),
(316, 4, 14),
(317, 4, 15),
(318, 4, 16),
(319, 4, 17),
(320, 4, 18),
(321, 4, 19),
(322, 4, 20),
(323, 4, 21),
(324, 4, 22),
(325, 4, 23),
(326, 4, 24),
(327, 4, 25),
(328, 4, 26),
(329, 4, 27),
(330, 4, 28),
(331, 4, 29),
(332, 4, 30),
(333, 4, 31),
(334, 4, 32),
(335, 4, 33),
(336, 4, 34),
(337, 4, 35),
(338, 4, 36),
(339, 4, 37),
(340, 4, 38),
(341, 4, 39),
(342, 4, 40),
(343, 4, 41),
(344, 4, 42),
(345, 4, 43),
(346, 4, 44),
(347, 4, 45),
(348, 4, 46),
(349, 4, 47),
(350, 4, 48),
(351, 4, 49),
(352, 4, 50),
(353, 4, 51),
(354, 4, 52),
(355, 4, 53),
(356, 4, 54),
(357, 4, 55),
(358, 4, 56),
(359, 4, 57),
(360, 4, 58),
(361, 4, 59),
(362, 4, 60),
(363, 4, 61),
(364, 4, 62),
(365, 4, 63),
(366, 4, 64),
(367, 4, 65),
(368, 4, 66),
(369, 4, 67),
(370, 4, 68),
(371, 4, 69),
(372, 4, 70),
(373, 4, 71),
(374, 4, 72),
(375, 4, 73),
(376, 4, 74),
(377, 4, 75),
(378, 4, 76),
(379, 4, 77),
(380, 4, 78),
(381, 4, 79),
(382, 4, 80),
(383, 4, 81),
(384, 4, 82),
(385, 4, 83),
(386, 4, 84),
(387, 4, 85),
(388, 4, 86),
(389, 4, 87),
(390, 4, 88),
(391, 4, 89),
(392, 4, 90),
(393, 4, 91),
(394, 4, 92),
(395, 4, 93),
(396, 4, 94),
(397, 4, 95),
(398, 4, 96),
(399, 4, 97),
(400, 4, 98),
(401, 4, 99),
(402, 4, 100),
(403, 4, 101),
(404, 4, 102),
(405, 4, 103),
(406, 4, 104),
(407, 4, 105),
(408, 4, 106),
(409, 4, 107),
(410, 4, 108),
(411, 4, 109),
(412, 4, 110),
(413, 4, 111),
(414, 4, 112),
(415, 4, 113),
(416, 4, 114),
(417, 4, 115),
(418, 4, 116),
(419, 4, 117),
(420, 4, 118),
(421, 4, 119),
(422, 4, 120),
(423, 4, 121),
(424, 4, 122),
(425, 4, 123),
(426, 4, 124),
(427, 4, 125),
(428, 4, 126),
(429, 4, 127),
(430, 4, 128),
(431, 4, 129),
(432, 4, 130),
(433, 4, 131),
(434, 4, 132),
(435, 4, 133),
(436, 4, 134),
(437, 4, 135),
(438, 4, 136),
(439, 4, 137),
(440, 4, 138),
(441, 4, 139),
(442, 4, 140),
(443, 4, 141),
(444, 4, 142),
(445, 4, 143),
(446, 4, 144),
(447, 4, 145),
(448, 4, 146),
(449, 4, 147),
(450, 4, 148),
(451, 4, 149),
(452, 4, 150),
(453, 4, 151);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_annotationidglosstranslation`
--

CREATE TABLE `dictionary_annotationidglosstranslation` (
  `id` int(11) NOT NULL,
  `text` varchar(30) COLLATE utf8_bin NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_annotationidglosstranslation`
--

INSERT INTO `dictionary_annotationidglosstranslation` (`id`, `text`, `gloss_id`, `language_id`) VALUES
(1, 'AA', 2, 1),
(2, 'A', 3, 1),
(3, 'UNICO', 4, 1),
(4, 'mem', 5, 1),
(5, 'Testand', 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_blendmorphology`
--

CREATE TABLE `dictionary_blendmorphology` (
  `id` int(11) NOT NULL,
  `role` varchar(100) COLLATE utf8_bin NOT NULL,
  `glosses_id` int(11) NOT NULL,
  `parent_gloss_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_dataset`
--

CREATE TABLE `dictionary_dataset` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_bin NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `signlanguage_id` int(11) NOT NULL,
  `acronym` varchar(10) COLLATE utf8_bin NOT NULL,
  `conditions_of_use` text COLLATE utf8_bin NOT NULL,
  `copyright` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_dataset`
--

INSERT INTO `dictionary_dataset` (`id`, `name`, `is_public`, `description`, `signlanguage_id`, `acronym`, `conditions_of_use`, `copyright`) VALUES
(1, 'Libras', 1, 'TOP', 1, '', '', ''),
(2, 'AA', 1, 'ADASDSA', 1, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_dataset_owners`
--

CREATE TABLE `dictionary_dataset_owners` (
  `id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_dataset_owners`
--

INSERT INTO `dictionary_dataset_owners` (`id`, `dataset_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_dataset_translation_languages`
--

CREATE TABLE `dictionary_dataset_translation_languages` (
  `id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_dataset_translation_languages`
--

INSERT INTO `dictionary_dataset_translation_languages` (`id`, `dataset_id`, `language_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_definition`
--

CREATE TABLE `dictionary_definition` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_deletedglossormedia`
--

CREATE TABLE `dictionary_deletedglossormedia` (
  `id` int(11) NOT NULL,
  `item_type` varchar(5) COLLATE utf8_bin NOT NULL,
  `idgloss` varchar(50) COLLATE utf8_bin NOT NULL,
  `old_pk` int(11) NOT NULL,
  `filename` varchar(100) COLLATE utf8_bin NOT NULL,
  `deletion_date` date NOT NULL,
  `annotation_idgloss` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_deletedglossormedia`
--

INSERT INTO `dictionary_deletedglossormedia` (`id`, `item_type`, `idgloss`, `old_pk`, `filename`, `deletion_date`, `annotation_idgloss`) VALUES
(1, 'video', 'Testing', 6, 'glossvideo/Te/Testing-6.mp4', '2018-05-18', 'Testando');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_dialect`
--

CREATE TABLE `dictionary_dialect` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `signlanguage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_dialect`
--

INSERT INTO `dictionary_dialect` (`id`, `name`, `description`, `signlanguage_id`) VALUES
(1, 'SHEESH', 'TOp', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_fieldchoice`
--

CREATE TABLE `dictionary_fieldchoice` (
  `id` int(11) NOT NULL,
  `field` varchar(50) COLLATE utf8_bin NOT NULL,
  `english_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `dutch_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `machine_value` int(11) NOT NULL,
  `chinese_name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_fieldchoice`
--

INSERT INTO `dictionary_fieldchoice` (`id`, `field`, `english_name`, `dutch_name`, `machine_value`, `chinese_name`) VALUES
(2, 'Handedness', 'X', 'X', 2, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_gloss`
--

CREATE TABLE `dictionary_gloss` (
  `id` int(11) NOT NULL,
  `idgloss` varchar(50) COLLATE utf8_bin NOT NULL,
  `bsltf` tinyint(1) DEFAULT NULL,
  `asltf` tinyint(1) DEFAULT NULL,
  `aslgloss` varchar(50) COLLATE utf8_bin NOT NULL,
  `asloantf` tinyint(1) DEFAULT NULL,
  `bslgloss` varchar(50) COLLATE utf8_bin NOT NULL,
  `bslloantf` tinyint(1) DEFAULT NULL,
  `useInstr` varchar(50) COLLATE utf8_bin NOT NULL,
  `rmrks` varchar(50) COLLATE utf8_bin NOT NULL,
  `blend` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `blendtf` tinyint(1) DEFAULT NULL,
  `compound` varchar(100) COLLATE utf8_bin NOT NULL,
  `comptf` tinyint(1) DEFAULT NULL,
  `handedness` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `domhndsh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `subhndsh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `final_domhndsh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `final_subhndsh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `locprim` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `final_loc` int(11) DEFAULT NULL,
  `locVirtObj` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `locsecond` int(11) DEFAULT NULL,
  `initial_secondary_loc` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `final_secondary_loc` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `initial_palm_orientation` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `final_palm_orientation` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `initial_relative_orientation` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `final_relative_orientation` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `domSF` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `domFlex` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `oriChAbd` tinyint(1) DEFAULT NULL,
  `oriChFlex` tinyint(1) DEFAULT NULL,
  `inWeb` tinyint(1) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `inittext` varchar(50) COLLATE utf8_bin NOT NULL,
  `morph` varchar(50) COLLATE utf8_bin NOT NULL,
  `sedefinetf` text COLLATE utf8_bin,
  `segloss` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sense` int(11) DEFAULT NULL,
  `sn` int(11) DEFAULT NULL,
  `StemSN` int(11) DEFAULT NULL,
  `relatArtic` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `absOriPalm` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `absOriFing` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `relOriMov` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `relOriLoc` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `oriCh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `handCh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `repeat` tinyint(1) DEFAULT NULL,
  `altern` tinyint(1) DEFAULT NULL,
  `movSh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `movDir` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `movMan` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `contType` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `phonOth` text COLLATE utf8_bin,
  `mouthG` varchar(50) COLLATE utf8_bin NOT NULL,
  `mouthing` varchar(50) COLLATE utf8_bin NOT NULL,
  `phonetVar` varchar(50) COLLATE utf8_bin NOT NULL,
  `locPrimLH` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `locFocSite` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `locFocSiteLH` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `initArtOri` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `finArtOri` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `initArtOriLH` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `finArtOriLH` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `iconImg` varchar(50) COLLATE utf8_bin NOT NULL,
  `iconType` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `namEnt` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `semField` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `wordClass` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `derivHist` varchar(50) COLLATE utf8_bin NOT NULL,
  `lexCatNotes` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `valence` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tokNo` int(11) DEFAULT NULL,
  `tokNoSgnr` int(11) DEFAULT NULL,
  `tokNoA` int(11) DEFAULT NULL,
  `tokNoV` int(11) DEFAULT NULL,
  `tokNoR` int(11) DEFAULT NULL,
  `tokNoGe` int(11) DEFAULT NULL,
  `tokNoGr` int(11) DEFAULT NULL,
  `tokNoO` int(11) DEFAULT NULL,
  `tokNoSgnrA` int(11) DEFAULT NULL,
  `tokNoSgnrV` int(11) DEFAULT NULL,
  `tokNoSgnrR` int(11) DEFAULT NULL,
  `tokNoSgnrGe` int(11) DEFAULT NULL,
  `tokNoSgnrGr` int(11) DEFAULT NULL,
  `tokNoSgnrO` int(11) DEFAULT NULL,
  `creationDate` date NOT NULL,
  `lastUpdated` datetime NOT NULL,
  `alternative_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `excludeFromEcv` tinyint(1) DEFAULT NULL,
  `dataset_id` int(11) DEFAULT NULL,
  `domhndsh_letter` tinyint(1) DEFAULT NULL,
  `domhndsh_number` tinyint(1) DEFAULT NULL,
  `subhndsh_letter` tinyint(1) DEFAULT NULL,
  `subhndsh_number` tinyint(1) DEFAULT NULL,
  `weakdrop` tinyint(1) DEFAULT NULL,
  `weakprop` tinyint(1) DEFAULT NULL,
  `wordClass2` varchar(5) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_gloss`
--

INSERT INTO `dictionary_gloss` (`id`, `idgloss`, `bsltf`, `asltf`, `aslgloss`, `asloantf`, `bslgloss`, `bslloantf`, `useInstr`, `rmrks`, `blend`, `blendtf`, `compound`, `comptf`, `handedness`, `domhndsh`, `subhndsh`, `final_domhndsh`, `final_subhndsh`, `locprim`, `final_loc`, `locVirtObj`, `locsecond`, `initial_secondary_loc`, `final_secondary_loc`, `initial_palm_orientation`, `final_palm_orientation`, `initial_relative_orientation`, `final_relative_orientation`, `domSF`, `domFlex`, `oriChAbd`, `oriChFlex`, `inWeb`, `isNew`, `inittext`, `morph`, `sedefinetf`, `segloss`, `sense`, `sn`, `StemSN`, `relatArtic`, `absOriPalm`, `absOriFing`, `relOriMov`, `relOriLoc`, `oriCh`, `handCh`, `repeat`, `altern`, `movSh`, `movDir`, `movMan`, `contType`, `phonOth`, `mouthG`, `mouthing`, `phonetVar`, `locPrimLH`, `locFocSite`, `locFocSiteLH`, `initArtOri`, `finArtOri`, `initArtOriLH`, `finArtOriLH`, `iconImg`, `iconType`, `namEnt`, `semField`, `wordClass`, `derivHist`, `lexCatNotes`, `valence`, `tokNo`, `tokNoSgnr`, `tokNoA`, `tokNoV`, `tokNoR`, `tokNoGe`, `tokNoGr`, `tokNoO`, `tokNoSgnrA`, `tokNoSgnrV`, `tokNoSgnrR`, `tokNoSgnrGe`, `tokNoSgnrGr`, `tokNoSgnrO`, `creationDate`, `lastUpdated`, `alternative_id`, `excludeFromEcv`, `dataset_id`, `domhndsh_letter`, `domhndsh_number`, `subhndsh_letter`, `subhndsh_number`, `weakdrop`, `weakprop`, `wordClass2`) VALUES
(1, 'Bombeamento', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-04', '2018-04-04 18:22:21', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'AA', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-02', '2018-05-02 18:15:50', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'A', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-02', '2018-05-02 18:34:30', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'A', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16', '2018-05-16 18:25:27', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Bombeamento', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-16', '2018-05-16 18:25:49', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Testing', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18', '2018-05-18 18:02:28', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_gloss_creator`
--

CREATE TABLE `dictionary_gloss_creator` (
  `id` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_gloss_creator`
--

INSERT INTO `dictionary_gloss_creator` (`id`, `gloss_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 4),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_gloss_dialect`
--

CREATE TABLE `dictionary_gloss_dialect` (
  `id` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `dialect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_gloss_dialect`
--

INSERT INTO `dictionary_gloss_dialect` (`id`, `gloss_id`, `dialect_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_gloss_morphemePart`
--

CREATE TABLE `dictionary_gloss_morphemePart` (
  `id` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `morpheme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_gloss_signlanguage`
--

CREATE TABLE `dictionary_gloss_signlanguage` (
  `id` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `signlanguage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_gloss_signlanguage`
--

INSERT INTO `dictionary_gloss_signlanguage` (`id`, `gloss_id`, `signlanguage_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_handshape`
--

CREATE TABLE `dictionary_handshape` (
  `english_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `dutch_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `chinese_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `hsNumSel` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsFingSel` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsFingSel2` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsFingConf` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsFingConf2` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsAperture` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsThumb` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsSpread` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `hsFingUnsel` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `fsT` tinyint(1) DEFAULT NULL,
  `fsI` tinyint(1) DEFAULT NULL,
  `fsM` tinyint(1) DEFAULT NULL,
  `fsR` tinyint(1) DEFAULT NULL,
  `fsP` tinyint(1) DEFAULT NULL,
  `fs2T` tinyint(1) DEFAULT NULL,
  `fs2I` tinyint(1) DEFAULT NULL,
  `fs2M` tinyint(1) DEFAULT NULL,
  `fs2R` tinyint(1) DEFAULT NULL,
  `fs2P` tinyint(1) DEFAULT NULL,
  `ufT` tinyint(1) DEFAULT NULL,
  `ufI` tinyint(1) DEFAULT NULL,
  `ufM` tinyint(1) DEFAULT NULL,
  `ufR` tinyint(1) DEFAULT NULL,
  `ufP` tinyint(1) DEFAULT NULL,
  `machine_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_keyword`
--

CREATE TABLE `dictionary_keyword` (
  `id` int(11) NOT NULL,
  `text` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_keyword`
--

INSERT INTO `dictionary_keyword` (`id`, `text`) VALUES
(7941, 'WESSELISDEBESTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_language`
--

CREATE TABLE `dictionary_language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `name_en` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name_nl` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name_zh_hans` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `language_code_2char` varchar(7) COLLATE utf8_bin NOT NULL,
  `language_code_3char` varchar(3) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_language`
--

INSERT INTO `dictionary_language` (`id`, `name`, `name_en`, `name_nl`, `name_zh_hans`, `language_code_2char`, `language_code_3char`, `description`) VALUES
(1, 'English', 'English', NULL, NULL, 'en', 'eng', ''),
(2, 'Dutch', 'Dutch', NULL, NULL, 'nl', 'nld', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_morpheme`
--

CREATE TABLE `dictionary_morpheme` (
  `gloss_ptr_id` int(11) NOT NULL,
  `mrpType` varchar(5) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_morpheme`
--

INSERT INTO `dictionary_morpheme` (`gloss_ptr_id`, `mrpType`) VALUES
(2, NULL),
(3, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_morphologydefinition`
--

CREATE TABLE `dictionary_morphologydefinition` (
  `id` int(11) NOT NULL,
  `morpheme_id` int(11) NOT NULL,
  `parent_gloss_id` int(11) NOT NULL,
  `role` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_othermedia`
--

CREATE TABLE `dictionary_othermedia` (
  `id` int(11) NOT NULL,
  `alternative_gloss` varchar(50) COLLATE utf8_bin NOT NULL,
  `path` varchar(100) COLLATE utf8_bin NOT NULL,
  `parent_gloss_id` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_relation`
--

CREATE TABLE `dictionary_relation` (
  `id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_relationtoforeignsign`
--

CREATE TABLE `dictionary_relationtoforeignsign` (
  `id` int(11) NOT NULL,
  `loan` tinyint(1) NOT NULL,
  `other_lang` varchar(20) COLLATE utf8_bin NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `other_lang_gloss` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_signlanguage`
--

CREATE TABLE `dictionary_signlanguage` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_signlanguage`
--

INSERT INTO `dictionary_signlanguage` (`id`, `name`, `description`) VALUES
(1, 'Libras', 'Linguagem Brasileira de Sinais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_simultaneousmorphologydefinition`
--

CREATE TABLE `dictionary_simultaneousmorphologydefinition` (
  `id` int(11) NOT NULL,
  `role` varchar(100) COLLATE utf8_bin NOT NULL,
  `morpheme_id` int(11) NOT NULL,
  `parent_gloss_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_translation`
--

CREATE TABLE `dictionary_translation` (
  `id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `translation_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_userprofile`
--

CREATE TABLE `dictionary_userprofile` (
  `id` int(11) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `number_of_logins` int(11) DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `last_used_language` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_userprofile`
--

INSERT INTO `dictionary_userprofile` (`id`, `expiry_date`, `number_of_logins`, `comments`, `user_id`, `last_used_language`) VALUES
(1, NULL, 14, NULL, 1, 'en'),
(2, NULL, 4, NULL, 2, 'cn'),
(3, NULL, 0, NULL, 3, 'en'),
(4, NULL, 0, NULL, 4, 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dictionary_userprofile_selected_datasets`
--

CREATE TABLE `dictionary_userprofile_selected_datasets` (
  `id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dictionary_userprofile_selected_datasets`
--

INSERT INTO `dictionary_userprofile_selected_datasets` (`id`, `userprofile_id`, `dataset_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 4, 1),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `object_id` text COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` text COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `action_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`, `action_time`) VALUES
(1, '2', 'teste', 1, '[{"added": {}}]', 3, 1, '2018-04-02 20:25:47'),
(2, '1', 'Libras', 1, '[{"added": {}}]', 12, 1, '2018-04-04 18:17:44'),
(3, '1', 'Libras', 1, '[{"added": {}}]', 41, 1, '2018-04-04 18:17:54'),
(4, '1', 'Libras/SHEESH', 1, '[{"added": {}}]', 13, 1, '2018-04-04 18:18:13'),
(5, '1', 'Orlandescarpeli: Orland Scarpel, AOPKDAPE (2)', 1, '[{"added": {}}]', 15, 1, '2018-04-04 18:19:40'),
(6, '1', 'Bombeamento', 1, '[{"added": {}}]', 16, 1, '2018-04-04 18:22:21'),
(7, '1', '/teste/ -- Test', 1, '[{"added": {}}]', 29, 1, '2018-04-04 18:31:32'),
(8, '1', 'admin', 2, '[{"changed": {"fields": ["selected_datasets"], "name": "user profile", "object": "Profile for admin"}}]', 3, 1, '2018-05-02 18:12:50'),
(9, '2', 'AA', 1, '[{"added": {}}]', 41, 1, '2018-05-02 18:13:37'),
(10, '1', 'admin', 2, '[{"changed": {"fields": ["selected_datasets"], "name": "user profile", "object": "Profile for admin"}}]', 3, 1, '2018-05-02 18:13:40'),
(11, '1', 'tudo', 1, '[{"added": {}}]', 2, 1, '2018-05-02 18:18:40'),
(12, '1', 'admin', 2, '[]', 3, 1, '2018-05-02 18:19:01'),
(13, '1', 'admin', 2, '[]', 3, 1, '2018-05-02 18:19:33'),
(14, '2', 'Dataset Manager', 1, '[{"added": {}}]', 2, 1, '2018-05-02 18:26:10'),
(15, '1', 'admin', 2, '[]', 3, 1, '2018-05-02 18:26:23'),
(16, '4', 'tester', 1, '[{"added": {}}, {"added": {"name": "user profile", "object": "Profile for tester"}}]', 3, 1, '2018-05-02 18:28:21'),
(17, '4', 'tester', 2, '[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 3, 1, '2018-05-02 18:28:38'),
(18, '2', 'Dataset_Manager', 2, '[{"changed": {"fields": ["name"]}}]', 2, 4, '2018-05-02 18:31:03'),
(19, '1', 'tudo', 3, '', 2, 1, '2018-05-16 17:05:45'),
(20, '1', '/ -- Home', 2, '[{"changed": {"fields": ["url", "title", "title_dutch", "title_chinese", "content", "content_dutch", "content_chinese"]}}]', 29, 1, '2018-05-16 17:09:17'),
(21, '2', '/about/ -- About', 1, '[{"added": {}}]', 29, 1, '2018-05-16 17:10:17'),
(22, '3', '/copyright/ -- Copyright', 1, '[{"added": {}}]', 29, 1, '2018-05-16 17:12:38'),
(23, '4', '/manual/ -- Manual', 1, '[{"added": {}}]', 29, 1, '2018-05-16 17:13:32'),
(24, '5', '/guidelines/ -- Guidelines for new signs', 1, '[{"added": {}}]', 29, 1, '2018-05-16 17:14:25'),
(25, '6', '/release/ -- Release notes', 1, '[{"added": {}}]', 29, 1, '2018-05-16 17:15:26'),
(26, '5', '/guidelines/ -- Guidelines for new signs', 2, '[{"changed": {"fields": ["publish"]}}]', 29, 1, '2018-05-16 17:15:45'),
(27, '7', '/signs/ -- Signs', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:09:15'),
(28, '8', '/search/ -- Search', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:09:39'),
(29, '8', '/signs/search/ -- Search', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:10:56'),
(30, '6', '/about/release/ -- Release notes', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:11:07'),
(31, '3', '/about/copyright/ -- Copyright', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:11:17'),
(32, '5', '/about/guidelines/ -- Guidelines for new signs', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:11:27'),
(33, '4', '/about/manual/ -- Manual', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:11:39'),
(34, '9', '/signs/show_all/ -- Show All', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:12:05'),
(35, '10', '/feedback/ -- Feedback', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:14:25'),
(36, '11', '/feedback/site -- Site feedback', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:15:24'),
(37, '12', '/feedback/missing -- Report a missing sign', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:16:07'),
(38, '13', '/datasets/ -- Datasets', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:18:33'),
(39, '14', '/datasets/available/ -- View available datasets', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:19:16'),
(40, '12', '/feedback/missing/ -- Report a missing sign', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:19:48'),
(41, '11', '/feedback/site/ -- Site feedback', 2, '[{"changed": {"fields": ["url"]}}]', 29, 1, '2018-05-16 18:19:57'),
(42, '15', '/datasets/select/ -- Select datasets', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:20:55'),
(43, '16', '/datasets/manager/ -- Manage datasets', 1, '[{"added": {}}]', 29, 1, '2018-05-16 18:21:30'),
(44, '2', 'teste', 2, '[{"changed": {"fields": ["selected_datasets"], "object": "Profile for teste", "name": "user profile"}}]', 3, 1, '2018-05-16 18:24:37'),
(45, '2', 'Handedness: X, X (2)', 1, '[{"added": {}}]', 15, 1, '2018-05-18 17:31:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'auth', 'permission'),
(2, 'auth', 'group'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'sites', 'site'),
(7, 'admin', 'logentry'),
(8, 'django_summernote', 'attachment'),
(9, 'dictionary', 'translation'),
(10, 'dictionary', 'keyword'),
(11, 'dictionary', 'definition'),
(12, 'dictionary', 'signlanguage'),
(13, 'dictionary', 'dialect'),
(14, 'dictionary', 'relationtoforeignsign'),
(15, 'dictionary', 'fieldchoice'),
(16, 'dictionary', 'gloss'),
(17, 'dictionary', 'deletedglossormedia'),
(18, 'dictionary', 'relation'),
(19, 'dictionary', 'morphologydefinition'),
(20, 'dictionary', 'morpheme'),
(21, 'dictionary', 'othermedia'),
(22, 'dictionary', 'userprofile'),
(23, 'feedback', 'interpreterfeedback'),
(24, 'feedback', 'generalfeedback'),
(25, 'feedback', 'signfeedback'),
(26, 'feedback', 'missingsignfeedback'),
(27, 'registration', 'registrationprofile'),
(28, 'registration', 'userprofile'),
(29, 'pages', 'page'),
(30, 'pages', 'pagevideo'),
(31, 'attachments', 'attachment'),
(32, 'video', 'video'),
(33, 'video', 'glossvideohistory'),
(34, 'video', 'glossvideo'),
(35, 'reversion', 'revision'),
(36, 'reversion', 'version'),
(37, 'tagging', 'tag'),
(38, 'tagging', 'taggeditem'),
(39, 'dictionary', 'handshape'),
(40, 'dictionary', 'language'),
(41, 'dictionary', 'dataset'),
(42, 'dictionary', 'simultaneousmorphologydefinition'),
(43, 'guardian', 'userobjectpermission'),
(44, 'guardian', 'groupobjectpermission'),
(45, 'dictionary', 'blendmorphology'),
(46, 'dictionary', 'annotationidglosstranslation');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-18 17:17:09'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-05-18 17:17:09'),
(3, 'auth', '0001_initial', '2018-05-18 17:17:49'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-05-18 17:17:49'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-05-18 17:17:49'),
(6, 'auth', '0004_alter_user_username_opts', '2018-05-18 17:17:49'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-05-18 17:17:49'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-05-18 17:17:49'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-05-18 17:17:49'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-05-18 17:17:49'),
(11, 'admin', '0001_initial', '2018-05-18 17:18:11'),
(12, 'admin', '0002_logentry_remove_auto_add', '2018-05-18 17:18:11'),
(13, 'attachments', '0001_initial', '2018-05-18 17:18:25'),
(14, 'attachments', '0002_auto_20170323_1337', '2018-05-18 17:18:25'),
(15, 'dictionary', '0001_initial', '2018-05-18 17:19:38'),
(16, 'dictionary', '0002_auto_20170323_1337', '2018-05-18 17:19:38'),
(17, 'dictionary', '0003_auto_20170331_1546', '2018-05-18 17:19:38'),
(18, 'dictionary', '0004_auto_20170517_1210', '2018-05-18 17:19:38'),
(19, 'dictionary', '0005_auto_20170601_1013', '2018-05-18 17:19:38'),
(20, 'dictionary', '0006_auto_20170628_1643', '2018-05-18 17:19:38'),
(21, 'dictionary', '0007_auto_20170707_1349', '2018-05-18 17:19:38'),
(22, 'dictionary', '0008_auto_20170720_1217', '2018-05-18 17:19:38'),
(23, 'dictionary', '0009_auto_20170802_1541', '2018-05-18 17:19:38'),
(24, 'dictionary', '0010_auto_20170802_1648', '2018-05-18 17:19:38'),
(25, 'dictionary', '0011_auto_20170810_1520', '2018-05-18 17:19:38'),
(26, 'dictionary', '0012_auto_20170810_1534', '2018-05-18 17:19:38'),
(27, 'dictionary', '0013_auto_20170830_1143', '2018-05-18 17:19:38'),
(28, 'dictionary', '0014_auto_20170913_1341', '2018-05-18 17:19:38'),
(29, 'dictionary', '0015_auto_20171120_1211', '2018-05-18 17:19:38'),
(30, 'dictionary', '0016_auto_20171123_1654', '2018-05-18 17:19:38'),
(31, 'dictionary', '0017_auto_20171208_0947', '2018-05-18 17:19:38'),
(32, 'dictionary', '0018_auto_20171208_1225', '2018-05-18 17:19:38'),
(33, 'dictionary', '0019_auto_20171221_1524', '2018-05-18 17:19:38'),
(34, 'dictionary', '0020_auto_20180228_1133', '2018-05-18 17:19:38'),
(35, 'dictionary', '0021_auto_20180328_1407', '2018-05-18 17:19:38'),
(36, 'dictionary', '0022_auto_20180409_2243', '2018-05-18 17:19:38'),
(37, 'django_summernote', '0001_initial', '2018-05-18 17:20:00'),
(38, 'feedback', '0001_initial', '2018-05-18 17:20:13'),
(39, 'feedback', '0002_auto_20170323_1337', '2018-05-18 17:20:14'),
(40, 'feedback', '0003_auto_20180402_2254', '2018-05-18 17:20:14'),
(41, 'guardian', '0001_initial', '2018-05-18 17:20:22'),
(42, 'pages', '0001_initial', '2018-05-18 17:20:31'),
(43, 'pages', '0002_auto_20170323_1337', '2018-05-18 17:20:31'),
(44, 'pages', '0003_auto_20170601_1010', '2018-05-18 17:20:31'),
(45, 'reversion', '0001_initial', '2018-05-18 17:20:41'),
(46, 'reversion', '0002_auto_20141216_1509', '2018-05-18 17:20:41'),
(47, 'reversion', '0003_auto_20160601_1600', '2018-05-18 17:20:41'),
(48, 'reversion', '0004_auto_20160611_1202', '2018-05-18 17:20:41'),
(49, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2018-05-18 17:20:41'),
(50, 'sessions', '0001_initial', '2018-05-18 17:21:00'),
(51, 'sites', '0001_initial', '2018-05-18 17:21:14'),
(52, 'sites', '0002_alter_domain_unique', '2018-05-18 17:21:14'),
(53, 'tagging', '0001_initial', '2018-05-18 17:21:31'),
(54, 'tagging', '0002_on_delete', '2018-05-18 17:21:31'),
(55, 'video', '0001_initial', '2018-05-18 17:21:40'),
(56, 'video', '0002_auto_20170323_1337', '2018-05-18 17:21:40'),
(57, 'django_summernote', '0002_update-help_text', '2018-05-21 22:00:39'),
(58, 'tagging', '0003_adapt_max_tag_length', '2018-05-21 22:00:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` text COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0xmq9x6exgbl6xm2ij6jct0f1clq5oso', 'NjI4NjVkZTJmY2FmOTgxM2E3Y2Y1YWRkNTNkNWY3MjFkZWVjZTk5ZDp7InNlYXJjaF9yZXN1bHRzIjpbeyJnbG9zcyI6IkJvbWJlYW1lbnRvIiwiaWQiOjF9XSwiX2F1dGhfdXNlcl9oYXNoIjoiYzYzNzA4OTlhOWQ5MjM1NmU3YTg0OWZlYWNhNjViMDBhOGMwNjA3OSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic2VhcmNoX3R5cGUiOiJzaWduIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfbGFuZ3VhZ2UiOiJlbiJ9', '2018-04-23 20:44:26'),
('4afb076c0v1cstm4obdpbggm9yacql2o', 'NThiNDE4YzhkNmQyOWQwMGIyMzk1MmM1MWI1OWRkMWEyYjA3MGFkNTp7Il9sYW5ndWFnZSI6ImVuLXVzIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzVlNjZhMzAzOWQ5NjYxNTU0YmUwZDk3YmNiMjVkYzg4ZmU1N2U2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJzZWFyY2hfcmVzdWx0cyI6W119', '2018-04-12 21:10:26'),
('4vq09r2h2wadhebomcja3r74f1uqw5kq', 'MzU3MWM0MzM2MDdjMTg4Yzk3Njc4NDI4OWFiMDEwMzYxYzJmMzhjYjp7InRlc3Rjb29raWUiOiJ3b3JrZWQifQ==', '2018-05-09 18:06:07'),
('9nrkxnewmbcaq0p7uy3u791ts2tz0mut', 'MDYzODNiY2ZiZDAwNDMzY2Q1ZmEyMWNiYzExZjJmODM0NDVjZDFiMzp7InRlc3Rjb29raWUiOiJ3b3JrZWQiLCJfbGFuZ3VhZ2UiOiJlbiIsIl9hdXRoX3VzZXJfaGFzaCI6ImM2MzcwODk5YTlkOTIzNTZlN2E4NDlmZWFjYTY1YjAwYThjMDYwNzkiLCJzZWFyY2hfdHlwZSI6InNpZ24iLCJzZWFyY2hfcmVzdWx0cyI6W3siZ2xvc3MiOiJCb21iZWFtZW50byIsImlkIjoxfV0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-05-16 14:52:21'),
('t3zuqmr7bzv0o7bg79ugcg0s56xe6fog', 'YzhmYWU2NmFkOGIxMzY2NmZiM2VlMzJmZjc0Yjc0YTJhMzI4MjI2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwY2JiNTljOThkMGIxMjljNWY5NjkyY2E0Nzk3ZjI4NzczMDI0ZWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImRhdGFzZXRpZCI6MSwic2VhcmNoX3R5cGUiOiJzaWduIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJzZWFyY2hfcmVzdWx0cyI6W3siaWQiOjMsImdsb3NzIjoiQSJ9LHsiaWQiOjIsImdsb3NzIjoiQUEifV19', '2018-05-17 16:25:00'),
('medyar9nev8wbk6gsoy8nyzh9bd9rm7j', 'Y2FlYTIyODcxY2MxMGNmNThlMTdkOGZjNzA3ZjMxMTIxNzQ3ZDExZDp7InNlYXJjaF9yZXN1bHRzIjpbXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJkYXRhc2V0aWQiOjEsIl9hdXRoX3VzZXJfaWQiOiIyIiwic2VhcmNoX3R5cGUiOiJzaWduIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjY0ZTJhMTJjNDJmOTE2MjVlMjE2NmVhZmQ3ZDBkOWM0YjQxMjZmNSJ9', '2018-06-01 18:11:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `domain` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `django_site`
--

INSERT INTO `django_site` (`id`, `name`, `domain`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(100) COLLATE utf8_bin NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback_generalfeedback`
--

CREATE TABLE `feedback_generalfeedback` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `video` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback_interpreterfeedback`
--

CREATE TABLE `feedback_interpreterfeedback` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback_missingsignfeedback`
--

CREATE TABLE `feedback_missingsignfeedback` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `handform` int(11) NOT NULL,
  `handshape` int(11) NOT NULL,
  `althandshape` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `relativelocation` int(11) NOT NULL,
  `handbodycontact` int(11) NOT NULL,
  `handinteraction` int(11) NOT NULL,
  `direction` int(11) NOT NULL,
  `movementtype` int(11) NOT NULL,
  `smallmovement` int(11) NOT NULL,
  `repetition` int(11) NOT NULL,
  `meaning` text COLLATE utf8_bin NOT NULL,
  `comments` text COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `video` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback_signfeedback`
--

CREATE TABLE `feedback_signfeedback` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `kwnotbelong` text COLLATE utf8_bin NOT NULL,
  `whereused` varchar(10) COLLATE utf8_bin NOT NULL,
  `like` int(11) NOT NULL,
  `use` int(11) NOT NULL,
  `suggested` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `translation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isAuslan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guardian_groupobjectpermission`
--

CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL,
  `object_pk` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guardian_userobjectpermission`
--

CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL,
  `object_pk` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `guardian_userobjectpermission`
--

INSERT INTO `guardian_userobjectpermission` (`id`, `object_pk`, `content_type_id`, `permission_id`, `user_id`) VALUES
(1, '1', 41, 136, 2),
(2, '1', 41, 134, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(200) COLLATE utf8_bin NOT NULL,
  `title_dutch` varchar(200) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `content_dutch` text COLLATE utf8_bin NOT NULL,
  `content_chinese` text COLLATE utf8_bin NOT NULL,
  `template_name` varchar(70) COLLATE utf8_bin NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `index` int(11) NOT NULL,
  `title_chinese` varchar(200) COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `pages_page`
--

INSERT INTO `pages_page` (`id`, `url`, `title`, `title_dutch`, `content`, `content_dutch`, `content_chinese`, `template_name`, `publish`, `index`, `title_chinese`, `parent_id`) VALUES
(1, '/', 'Home', 'Home', '<div id="wrap" class="container-fluid" style="box-sizing: content-box; background: white none repeat scroll 0% 0%; padding-top: 204px;"><b>Welcome to Global Signbank.</b><div role="main" id="maincontent" style="background:white;"><div class="row"><div class="col-md-10 col-md-offset-1"><p>Global Signbank is a \r\nlexical database for sign languages. It is the successor to the NGT \r\nSignbank, the lexical database of the annotated NGT corpora at Radboud \r\nUniversity, which include the following:</p><ul><li><a href="http://hdl.handle.net/1839/00-0000-0000-0001-49C8-8@view" target="_blank">ECHO corpus</a>&nbsp;(2004)</li><li><a href="http://hdl.handle.net/1839/00-0000-0000-0004-DF8E-6@view" target="_blank">Corpus NGT</a>&nbsp;(2006–present)</li><li><a href="http://www.ru.nl/sign-lang/projects/handy-connections/" target="_blank">Handy Signs</a> (signs for experiments, 2012-2016)</li></ul><p>The\r\n lexical database does not presently serve as a dictionary. For each \r\ndata set, specific conditions apply as to (open or restricted) access. \r\nBy default, datasets are not accessible to the general public.</p><p>Global Signbank is open to host new datasets under certain strict conditions:</p><ul><li>Lemmatisation guidelines and phonological description of signs follows the conventions laid out in the manual</li><li>Data\r\n become accessible for research use by Radboud University and preferably\r\n any non-commercial research (open access). In exchange, the NGT dataset\r\n will become fully accessible to depositors of a new dataset.</li><li>A \r\ncontribution in kind and/or in cash is made to further software \r\ndevelopment and/or data hosting, depending on the size of the dataset \r\nand the expected and actual use</li></ul><p>Go directly to:</p><ul><li><a href="http://signbank.science.ru.nl/signs/search" target="">Search</a>&nbsp;(login required)</li></ul>\r\n        </div>\r\n   </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        </div>\r\n        \r\n    </div><p><br></p>', '<p><br></p><div id="wrap" class="container-fluid" style="box-sizing: content-box; background: white none repeat scroll 0% 0%; padding-top: 204px;"><b>Welcome to Global Signbank.</b><div role="main" id="maincontent" style="background:white;"><div class="row"><div class="col-md-10 col-md-offset-1"><p>Global Signbank is a \r\nlexical database for sign languages. It is the successor to the NGT \r\nSignbank, the lexical database of the annotated NGT corpora at Radboud \r\nUniversity, which include the following:</p><ul><li><a href="http://hdl.handle.net/1839/00-0000-0000-0001-49C8-8@view" target="_blank">ECHO corpus</a>&nbsp;(2004)</li><li><a href="http://hdl.handle.net/1839/00-0000-0000-0004-DF8E-6@view" target="_blank">Corpus NGT</a>&nbsp;(2006–present)</li><li><a href="http://www.ru.nl/sign-lang/projects/handy-connections/" target="_blank">Handy Signs</a> (signs for experiments, 2012-2016)</li></ul><p>The\r\n lexical database does not presently serve as a dictionary. For each \r\ndata set, specific conditions apply as to (open or restricted) access. \r\nBy default, datasets are not accessible to the general public.</p><p>Global Signbank is open to host new datasets under certain strict conditions:</p><ul><li>Lemmatisation guidelines and phonological description of signs follows the conventions laid out in the manual</li><li>Data\r\n become accessible for research use by Radboud University and preferably\r\n any non-commercial research (open access). In exchange, the NGT dataset\r\n will become fully accessible to depositors of a new dataset.</li><li>A \r\ncontribution in kind and/or in cash is made to further software \r\ndevelopment and/or data hosting, depending on the size of the dataset \r\nand the expected and actual use</li></ul><p>Go directly to:</p><ul><li><a href="http://signbank.science.ru.nl/signs/search" target="">Search</a>&nbsp;(login required)</li></ul>\r\n        </div>\r\n   </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        </div>\r\n        \r\n    </div><p><br></p><p><br></p><p><br></p>', '', '', 1, 1, 'Home', NULL),
(2, '/about/', 'About', 'About', '', '', '', '', 1, 2, '', NULL),
(3, '/about/copyright/', 'Copyright', 'Copyright', '<p><span style="font-size: 36px;">Copyright</span></p><p><span style="font-size: 36px;"><br></span><b>Content of the different datasets</b></p><p><b><br></b>Different licenses apply to access to each dataset in Global Signbank (<a href="https://signbank.science.ru.nl//datasets/available">select a dataset to see the details</a>).</p><p><b style="font-size: 14px;">Site design &amp; development</b></p><p><b style="font-size: 14px;"><br></b>The&nbsp;<a href="https://github.com/signbank/ngt-signbank" target="_blank">NGT Signbank source code</a>&nbsp;is <a href="https://github.com/Signbank/NGT-signbank/blob/master/LICENCE.txt">licensed under a&nbsp;BSD 3-clause "New" or "Revised" License</a>.&nbsp;<span style="line-height: 1.42857143;">&nbsp;Onno\r\n Crasborn, Richard Bank, Wessel Stoop, Erwin Komen, Micha Hulsbosch \r\n&amp; Susan Even (2018, Radboud University, Nijmegen, the Netherlands)</span></p><p><span style="line-height: 1.42857143;"><br></span>NGT Signbank is based on the <a href="https://github.com/Signbank/Auslan-signbank" target="_blank">Auslan Signbank source code</a>&nbsp;by&nbsp;Trevor Johnston &amp; Steve Cassidy (Macquairie University, Sydney, Australia) for the <a href="http://auslan.org.au" target="_blank">Auslan Signbank</a>.<div id="wrap" class="container-fluid" style="box-sizing: content-box; background: white none repeat scroll 0% 0%; padding-top: 204px;"><div role="main" id="maincontent" style="background:white;"><div class="row"><div class="col-md-10 col-md-offset-1"><p><br></p>\r\n        </div>\r\n   </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        </div>\r\n        \r\n    </div><p><br></p></p>', '', '', '', 1, 0, '', 2),
(4, '/about/manual/', 'Manual', 'Manual', '<p><br></p><p>A first version of the manual is now available. It describes primarily the phonological description of signs in Global Signbank.</p><p><br></p><p>Onno Crasborn, Inge Zwitserlood, Els van der Kooij &amp; Anique Schüller (<span style="font-size: 14px;">April 2018)&nbsp;</span><a href="https://www.researchgate.net/publication/324808574_Global_SignBank_manual" target="_blank">Global Signbank Manual</a>, version 1. Radboud University, Centre for Language Studies.</p><p><br></p>', '', '', '', 1, 0, '', 2),
(5, '/about/guidelines/', 'Guidelines for new signs', 'Guidelines for new signs', '<p><br></p><div id="wrap" class="container-fluid" style="box-sizing: content-box; background: white none repeat scroll 0% 0%; padding-top: 204px;">\r\n\r\n        \r\n\r\n\r\n\r\n        <div role="main" id="maincontent" style="background:white;">\r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    <div class="row">\r\n        <div class="col-md-10 col-md-offset-1">\r\n   <h2 style="font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);">Before creating new signs</h2>\r\n\r\n<p>Before adding a new sign to the lexicon, first make sure you are not adding the same sign form twice under different glosses by:</p>\r\n\r\n<ol><li>Checking the already existing <i>glosses</i>;</li><li>Checking the field&nbsp;<i>Translation variants</i>&nbsp;to see whether the sign is glossed under a different Dutch translation of the sign.</li><li>If the sign can be translated in multiple ways, but you can’t find the word you have in mind in the&nbsp;<i>Gloss&nbsp;</i>field or the&nbsp;<i>Translation variants&nbsp;</i>field,\r\n you can check by selecting the phonological features of the sign and \r\nsee whether your sign is already in the lexicon but under a different \r\ntranslation (if so, make sure you add your meaning in the&nbsp;<i>Translation variants&nbsp;</i>field).</li></ol>\r\n        </div>\r\n   </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        </div>\r\n        \r\n    </div><p><br></p>', '', '', '', 1, 0, '', 2),
(6, '/about/release/', 'Release notes', 'Release notes', '<p><br></p><div id="wrap" class="container-fluid" style="box-sizing: content-box; background: white none repeat scroll 0% 0%; padding-top: 204px;">\r\n\r\n        \r\n\r\n\r\n\r\n        <div role="main" id="maincontent" style="background:white;">\r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    <div class="row">\r\n        <div class="col-md-10 col-md-offset-1">\r\n   <p>Development including all bug fixes can be tracked on the <a href="https://github.com/Signbank/Global-signbank">Github repository for Global Signbank</a>. New features implemented from 2018 onwards are summarised below.</p><p><b>February 8, 2018</b></p><ul><li>A\r\n logo designed by the deaf Chinese designer Sun Qian has been added to \r\nthe header, and serves as a button to go to the home page.</li><li>A <a href="https://signbank.science.ru.nl//signs/search_handshape/" style="font-style: italic;">Handshape list</a>&nbsp;has\r\n been added, including both photos and a description in terms of \r\ndistinctive features. The search form allow for searching for handshapes\r\n and for searching for signs based on handshape features.</li><li>ECVs can be exported for each dataset from the page <i><a href="https://signbank.science.ru.nl//datasets/available">View available datasets</a></i>.</li><li>Selected\r\n datasets are listed in the header next to the user name. When no \r\ndatasets are selected, all of them are listed here (and serve as the \r\nscope for searches).</li><li>Datasets can be configured as \'read only\' \r\nor \'read and write\'. Searches for both signs and morphemes respect \r\ndataset permissions.</li><li>The panel&nbsp;<i>Language &amp; Dialect</i> in the detail view has been removed. The <i>Language</i> field is now part of the Dataset value in the Publication Status panel. <i>Dialect </i>is displayed at the top above the glosses when specified.</li></ul>\r\n        </div>\r\n   </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        </div>\r\n        \r\n    </div><p><br></p>', '', '', '', 1, 0, '', 2),
(7, '/signs/', 'Signs', 'Signs', '', '', '', '', 1, 3, '', NULL),
(8, '/signs/search/', 'Search', 'Search', '', '', '', '', 1, 0, '', 7),
(9, '/signs/show_all/', 'Show All', 'Show all', '', '', '', '', 1, 0, '', 7),
(10, '/feedback/', 'Feedback', 'Feedback', '', '', '', '', 1, 4, '', NULL),
(11, '/feedback/site/', 'Site feedback', 'Site feedback', '', '', '', '', 1, 0, '', 10),
(12, '/feedback/missing/', 'Report a missing sign', 'Report a missing sign', '', '', '', '', 1, 0, '', 10),
(13, '/datasets/', 'Datasets', 'Datasets', '', '', '', '', 1, 5, '', NULL),
(14, '/datasets/available/', 'View available datasets', 'View available datasets', '', '', '', '', 1, 0, '', 13),
(15, '/datasets/select/', 'Select datasets', 'Select datasets', '', '', '', '', 1, 0, '', 13),
(16, '/datasets/manager/', 'Manage datasets', 'Manage datasets', '', '', '', '', 1, 0, '', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_pagevideo`
--

CREATE TABLE `pages_pagevideo` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_bin NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `video` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_page_group_required`
--

CREATE TABLE `pages_page_group_required` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registration_registrationprofile`
--

CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registration_userprofile`
--

CREATE TABLE `registration_userprofile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `yob` int(11) NOT NULL,
  `australian` tinyint(1) NOT NULL,
  `postcode` varchar(20) COLLATE utf8_bin NOT NULL,
  `background` varchar(20) COLLATE utf8_bin NOT NULL,
  `auslan_user` tinyint(1) NOT NULL,
  `learned` int(11) NOT NULL,
  `deaf` tinyint(1) NOT NULL,
  `schooltype` int(11) NOT NULL,
  `school` varchar(50) COLLATE utf8_bin NOT NULL,
  `teachercomm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reversion_revision`
--

CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `reversion_revision`
--

INSERT INTO `reversion_revision` (`id`, `comment`, `user_id`, `date_created`) VALUES
(1, 'Added.', 1, '2018-04-04 18:17:44'),
(2, 'Added.', 1, '2018-04-04 18:18:13'),
(3, 'Added.', 1, '2018-04-04 18:19:40'),
(4, 'Added.', 1, '2018-04-04 18:22:20'),
(5, '', 1, '2018-05-02 18:15:50'),
(6, '', 4, '2018-05-02 18:34:30'),
(7, '', 2, '2018-05-16 18:25:27'),
(8, '', 2, '2018-05-16 18:25:49'),
(9, 'Added.', 1, '2018-05-18 17:31:11'),
(10, '', 2, '2018-05-18 17:35:45'),
(11, '', 2, '2018-05-18 18:02:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reversion_version`
--

CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL,
  `object_id` varchar(191) COLLATE utf8_bin NOT NULL,
  `format` varchar(255) COLLATE utf8_bin NOT NULL,
  `serialized_data` text COLLATE utf8_bin NOT NULL,
  `object_repr` text COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `reversion_version`
--

INSERT INTO `reversion_version` (`id`, `object_id`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`, `db`) VALUES
(1, '1', 'json', '[{"model": "dictionary.signlanguage", "pk": 1, "fields": {"name": "Libras", "description": "Linguagem Brasileira de Sinais"}}]', 'Libras', 12, 1, 'default'),
(2, '1', 'json', '[{"model": "dictionary.dialect", "pk": 1, "fields": {"signlanguage": 1, "name": "SHEESH", "description": "TOp"}}]', 'Libras/SHEESH', 13, 2, 'default'),
(3, '1', 'json', '[{"model": "dictionary.fieldchoice", "pk": 1, "fields": {"field": "Orlandescarpeli", "english_name": "Orland Scarpel", "dutch_name": "AOPKDAPE", "chinese_name": "CHING CHONG", "machine_value": 2}}]', 'Orlandescarpeli: Orland Scarpel, AOPKDAPE (2)', 15, 3, 'default'),
(4, '1', 'json', '[{"model": "dictionary.gloss", "pk": 1, "fields": {"dataset": 1, "idgloss": "Bombeamento", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": "", "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": "1", "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2018-04-04", "lastUpdated": "2018-04-04T18:22:20.525Z", "alternative_id": null, "signlanguage": [1], "dialect": [1], "morphemePart": [], "creator": []}}]', 'Bombeamento', 16, 4, 'default'),
(5, '2', 'json', '[{"model": "dictionary.gloss", "pk": 2, "fields": {"dataset": 1, "idgloss": "AA", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2015-01-01T00:00:00", "lastUpdated": "2018-05-02T18:15:50.268Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": []}}]', 'AA', 16, 5, 'default'),
(6, '2', 'json', '[{"model": "dictionary.morpheme", "pk": 2, "fields": {"mrpType": null}}]', 'AA', 20, 5, 'default'),
(7, '3', 'json', '[{"model": "dictionary.morpheme", "pk": 3, "fields": {"mrpType": null}}]', 'A', 20, 6, 'default'),
(8, '3', 'json', '[{"model": "dictionary.gloss", "pk": 3, "fields": {"dataset": 1, "idgloss": "A", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2015-01-01T00:00:00", "lastUpdated": "2018-05-02T18:34:29.579Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": []}}]', 'A', 16, 6, 'default'),
(9, '4', 'json', '[{"model": "dictionary.gloss", "pk": 4, "fields": {"dataset": 1, "idgloss": "A", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2018-05-16T20:25:27.065", "lastUpdated": "2018-05-16T18:25:27.066Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": [2]}}]', 'A', 16, 7, 'default'),
(10, '5', 'json', '[{"model": "dictionary.gloss", "pk": 5, "fields": {"dataset": 1, "idgloss": "Bombeamento", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2018-05-16T20:25:48.563", "lastUpdated": "2018-05-16T18:25:48.564Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": [2]}}]', 'Bombeamento', 16, 8, 'default'),
(11, '2', 'json', '[{"model": "dictionary.fieldchoice", "pk": 2, "fields": {"field": "Handedness", "english_name": "X", "dutch_name": "X", "chinese_name": "", "machine_value": 2}}]', 'Handedness: X, X (2)', 15, 9, 'default'),
(12, '6', 'json', '[{"model": "dictionary.gloss", "pk": 6, "fields": {"dataset": 1, "idgloss": "Testing", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2018-05-18T19:35:45.187", "lastUpdated": "2018-05-18T17:35:45.189Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": [2]}}]', 'Testing', 16, 10, 'default'),
(13, '6', 'json', '[{"model": "dictionary.gloss", "pk": 6, "fields": {"dataset": 1, "idgloss": "Testing", "bsltf": null, "asltf": null, "aslgloss": "", "asloantf": null, "bslgloss": "", "bslloantf": null, "useInstr": "", "rmrks": "", "blend": null, "blendtf": null, "compound": "", "comptf": null, "handedness": null, "weakdrop": null, "weakprop": null, "domhndsh": null, "subhndsh": null, "domhndsh_number": null, "domhndsh_letter": null, "subhndsh_number": null, "subhndsh_letter": null, "final_domhndsh": null, "final_subhndsh": null, "locprim": null, "final_loc": null, "locVirtObj": null, "locsecond": null, "initial_secondary_loc": null, "final_secondary_loc": null, "initial_palm_orientation": null, "final_palm_orientation": null, "initial_relative_orientation": null, "final_relative_orientation": null, "domSF": null, "domFlex": null, "oriChAbd": null, "oriChFlex": null, "inWeb": false, "isNew": false, "excludeFromEcv": false, "inittext": "", "morph": "", "sedefinetf": null, "segloss": null, "sense": null, "sn": null, "StemSN": null, "relatArtic": null, "absOriPalm": null, "absOriFing": null, "relOriMov": null, "relOriLoc": null, "oriCh": null, "handCh": null, "repeat": false, "altern": false, "movSh": null, "movDir": null, "movMan": null, "contType": null, "phonOth": null, "mouthG": "", "mouthing": "", "phonetVar": "", "locPrimLH": null, "locFocSite": null, "locFocSiteLH": null, "initArtOri": null, "finArtOri": null, "initArtOriLH": null, "finArtOriLH": null, "iconImg": "", "iconType": null, "namEnt": null, "semField": null, "wordClass": null, "wordClass2": null, "derivHist": "", "lexCatNotes": null, "valence": null, "tokNo": null, "tokNoSgnr": null, "tokNoA": null, "tokNoV": null, "tokNoR": null, "tokNoGe": null, "tokNoGr": null, "tokNoO": null, "tokNoSgnrA": null, "tokNoSgnrV": null, "tokNoSgnrR": null, "tokNoSgnrGe": null, "tokNoSgnrGr": null, "tokNoSgnrO": null, "creationDate": "2018-05-18", "lastUpdated": "2018-05-18T18:02:27.913Z", "alternative_id": null, "signlanguage": [], "dialect": [], "morphemePart": [], "creator": [2]}}]', 'Testing', 16, 11, 'default');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tagging_tag`
--

CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tagging_taggeditem`
--

CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `video_glossvideo`
--

CREATE TABLE `video_glossvideo` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `videofile` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `video_glossvideo`
--

INSERT INTO `video_glossvideo` (`id`, `version`, `gloss_id`, `videofile`) VALUES
(2, 0, 6, 'glossvideo/Te/Testing-6.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `video_glossvideohistory`
--

CREATE TABLE `video_glossvideohistory` (
  `id` int(11) NOT NULL,
  `action` varchar(6) COLLATE utf8_bin NOT NULL,
  `datestamp` datetime NOT NULL,
  `goal_location` text COLLATE utf8_bin NOT NULL,
  `actor_id` int(11) NOT NULL,
  `gloss_id` int(11) NOT NULL,
  `uploadfile` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `video_glossvideohistory`
--

INSERT INTO `video_glossvideohistory` (`id`, `action`, `datestamp`, `goal_location`, `actor_id`, `gloss_id`, `uploadfile`) VALUES
(1, 'upload', '2018-05-18 17:46:43', '/var/www/signbank/writable/glossvideo/Te/Testing-6.mp4', 2, 6, 'Testing-6.mp4'),
(2, 'delete', '2018-05-18 17:48:02', '(not specified)', 2, 6, '(not specified)'),
(3, 'upload', '2018-05-18 17:48:45', '/var/www/signbank/writable/glossvideo/Te/Testing-6.mp4', 2, 6, 'Testing-6.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `video_video`
--

CREATE TABLE `video_video` (
  `id` int(11) NOT NULL,
  `videofile` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments_attachment`
--
ALTER TABLE `attachments_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploader_id` (`uploader_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`);

--
-- Indexes for table `dictionary_annotationidglosstranslation`
--
ALTER TABLE `dictionary_annotationidglosstranslation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gloss_id` (`gloss_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `dictionary_blendmorphology`
--
ALTER TABLE `dictionary_blendmorphology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `glosses_id` (`glosses_id`),
  ADD KEY `parent_gloss_id` (`parent_gloss_id`);

--
-- Indexes for table `dictionary_dataset`
--
ALTER TABLE `dictionary_dataset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `signlanguage_id` (`signlanguage_id`);

--
-- Indexes for table `dictionary_dataset_owners`
--
ALTER TABLE `dictionary_dataset_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_dataset_translation_languages`
--
ALTER TABLE `dictionary_dataset_translation_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_definition`
--
ALTER TABLE `dictionary_definition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_deletedglossormedia`
--
ALTER TABLE `dictionary_deletedglossormedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_dialect`
--
ALTER TABLE `dictionary_dialect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_fieldchoice`
--
ALTER TABLE `dictionary_fieldchoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_gloss`
--
ALTER TABLE `dictionary_gloss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sn` (`sn`),
  ADD KEY `dataset_id` (`dataset_id`);

--
-- Indexes for table `dictionary_gloss_creator`
--
ALTER TABLE `dictionary_gloss_creator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gloss_id` (`gloss_id`,`user_id`);

--
-- Indexes for table `dictionary_gloss_dialect`
--
ALTER TABLE `dictionary_gloss_dialect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gloss_id` (`gloss_id`,`dialect_id`);

--
-- Indexes for table `dictionary_gloss_morphemePart`
--
ALTER TABLE `dictionary_gloss_morphemePart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gloss_id` (`gloss_id`,`morpheme_id`);

--
-- Indexes for table `dictionary_gloss_signlanguage`
--
ALTER TABLE `dictionary_gloss_signlanguage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_handshape`
--
ALTER TABLE `dictionary_handshape`
  ADD PRIMARY KEY (`machine_value`);

--
-- Indexes for table `dictionary_keyword`
--
ALTER TABLE `dictionary_keyword`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `text` (`text`);

--
-- Indexes for table `dictionary_language`
--
ALTER TABLE `dictionary_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_morpheme`
--
ALTER TABLE `dictionary_morpheme`
  ADD PRIMARY KEY (`gloss_ptr_id`);

--
-- Indexes for table `dictionary_morphologydefinition`
--
ALTER TABLE `dictionary_morphologydefinition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_othermedia`
--
ALTER TABLE `dictionary_othermedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_relation`
--
ALTER TABLE `dictionary_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_relationtoforeignsign`
--
ALTER TABLE `dictionary_relationtoforeignsign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_signlanguage`
--
ALTER TABLE `dictionary_signlanguage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_simultaneousmorphologydefinition`
--
ALTER TABLE `dictionary_simultaneousmorphologydefinition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_translation`
--
ALTER TABLE `dictionary_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary_userprofile`
--
ALTER TABLE `dictionary_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `dictionary_userprofile_selected_datasets`
--
ALTER TABLE `dictionary_userprofile_selected_datasets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_generalfeedback`
--
ALTER TABLE `feedback_generalfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_interpreterfeedback`
--
ALTER TABLE `feedback_interpreterfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_missingsignfeedback`
--
ALTER TABLE `feedback_missingsignfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_signfeedback`
--
ALTER TABLE `feedback_signfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_pagevideo`
--
ALTER TABLE `pages_pagevideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_page_group_required`
--
ALTER TABLE `pages_page_group_required`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id` (`page_id`,`group_id`);

--
-- Indexes for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `registration_userprofile`
--
ALTER TABLE `registration_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `reversion_revision`
--
ALTER TABLE `reversion_revision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reversion_version`
--
ALTER TABLE `reversion_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging_tag`
--
ALTER TABLE `tagging_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_glossvideo`
--
ALTER TABLE `video_glossvideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_glossvideohistory`
--
ALTER TABLE `video_glossvideohistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_video`
--
ALTER TABLE `video_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments_attachment`
--
ALTER TABLE `attachments_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;
--
-- AUTO_INCREMENT for table `dictionary_annotationidglosstranslation`
--
ALTER TABLE `dictionary_annotationidglosstranslation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dictionary_blendmorphology`
--
ALTER TABLE `dictionary_blendmorphology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_dataset`
--
ALTER TABLE `dictionary_dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dictionary_dataset_owners`
--
ALTER TABLE `dictionary_dataset_owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dictionary_dataset_translation_languages`
--
ALTER TABLE `dictionary_dataset_translation_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dictionary_definition`
--
ALTER TABLE `dictionary_definition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_deletedglossormedia`
--
ALTER TABLE `dictionary_deletedglossormedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dictionary_dialect`
--
ALTER TABLE `dictionary_dialect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dictionary_fieldchoice`
--
ALTER TABLE `dictionary_fieldchoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dictionary_gloss`
--
ALTER TABLE `dictionary_gloss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dictionary_gloss_creator`
--
ALTER TABLE `dictionary_gloss_creator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dictionary_gloss_dialect`
--
ALTER TABLE `dictionary_gloss_dialect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dictionary_gloss_morphemePart`
--
ALTER TABLE `dictionary_gloss_morphemePart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_gloss_signlanguage`
--
ALTER TABLE `dictionary_gloss_signlanguage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dictionary_handshape`
--
ALTER TABLE `dictionary_handshape`
  MODIFY `machine_value` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_keyword`
--
ALTER TABLE `dictionary_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7942;
--
-- AUTO_INCREMENT for table `dictionary_language`
--
ALTER TABLE `dictionary_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dictionary_morpheme`
--
ALTER TABLE `dictionary_morpheme`
  MODIFY `gloss_ptr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dictionary_morphologydefinition`
--
ALTER TABLE `dictionary_morphologydefinition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_othermedia`
--
ALTER TABLE `dictionary_othermedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_relation`
--
ALTER TABLE `dictionary_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_relationtoforeignsign`
--
ALTER TABLE `dictionary_relationtoforeignsign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_signlanguage`
--
ALTER TABLE `dictionary_signlanguage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dictionary_simultaneousmorphologydefinition`
--
ALTER TABLE `dictionary_simultaneousmorphologydefinition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_translation`
--
ALTER TABLE `dictionary_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dictionary_userprofile`
--
ALTER TABLE `dictionary_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dictionary_userprofile_selected_datasets`
--
ALTER TABLE `dictionary_userprofile_selected_datasets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_generalfeedback`
--
ALTER TABLE `feedback_generalfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_interpreterfeedback`
--
ALTER TABLE `feedback_interpreterfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_missingsignfeedback`
--
ALTER TABLE `feedback_missingsignfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_signfeedback`
--
ALTER TABLE `feedback_signfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pages_pagevideo`
--
ALTER TABLE `pages_pagevideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_page_group_required`
--
ALTER TABLE `pages_page_group_required`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registration_userprofile`
--
ALTER TABLE `registration_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reversion_revision`
--
ALTER TABLE `reversion_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reversion_version`
--
ALTER TABLE `reversion_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tagging_tag`
--
ALTER TABLE `tagging_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `video_glossvideo`
--
ALTER TABLE `video_glossvideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `video_glossvideohistory`
--
ALTER TABLE `video_glossvideohistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `video_video`
--
ALTER TABLE `video_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `attachments_attachment`
--
ALTER TABLE `attachments_attachment`
  ADD CONSTRAINT `attachments_attachment_ibfk_1` FOREIGN KEY (`uploader_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `dictionary_annotationidglosstranslation`
--
ALTER TABLE `dictionary_annotationidglosstranslation`
  ADD CONSTRAINT `dictionary_annotationidglosstranslation_ibfk_1` FOREIGN KEY (`gloss_id`) REFERENCES `dictionary_gloss` (`id`),
  ADD CONSTRAINT `dictionary_annotationidglosstranslation_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `dictionary_language` (`id`);

--
-- Limitadores para a tabela `dictionary_blendmorphology`
--
ALTER TABLE `dictionary_blendmorphology`
  ADD CONSTRAINT `dictionary_blendmorphology_ibfk_1` FOREIGN KEY (`glosses_id`) REFERENCES `dictionary_gloss` (`id`),
  ADD CONSTRAINT `dictionary_blendmorphology_ibfk_2` FOREIGN KEY (`parent_gloss_id`) REFERENCES `dictionary_gloss` (`id`);

--
-- Limitadores para a tabela `dictionary_dataset`
--
ALTER TABLE `dictionary_dataset`
  ADD CONSTRAINT `dictionary_dataset_ibfk_1` FOREIGN KEY (`signlanguage_id`) REFERENCES `dictionary_signlanguage` (`id`);

--
-- Limitadores para a tabela `dictionary_gloss`
--
ALTER TABLE `dictionary_gloss`
  ADD CONSTRAINT `dictionary_gloss_ibfk_1` FOREIGN KEY (`dataset_id`) REFERENCES `dictionary_dataset` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
