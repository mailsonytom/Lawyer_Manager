-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2019 at 05:49 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$h5M5IO4ckHflOGfMFHGmp.mMXFFtMr3vApXeh48.gkgbkXn921IE6');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` int(200) NOT NULL,
  `description` text NOT NULL,
  `casetype_id` int(200) NOT NULL,
  `uid` int(200) NOT NULL,
  `lid` int(200) NOT NULL,
  `cid` int(200) NOT NULL,
  `active_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `description`, `casetype_id`, `uid`, `lid`, `cid`, `active_status`) VALUES
(1, 'posiofjkn', 1, 1, 1, 1, 0),
(2, 'ljsdgpifp9ushdb;of', 2, 2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `casetype`
--

CREATE TABLE `casetype` (
  `casetype_id` int(200) NOT NULL,
  `case_id` int(200) NOT NULL,
  `casetype` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casetype`
--

INSERT INTO `casetype` (`casetype_id`, `case_id`, `casetype`, `description`) VALUES
(1, 1, 'Criminal case', 'mpsjf[oigh[anwl'),
(2, 2, 'civil case', 'sckjnvjbihbdibv');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(200) NOT NULL,
  `uid` int(200) NOT NULL,
  `lid` int(200) NOT NULL,
  `case_id` int(200) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `uid`, `lid`, `case_id`, `comment`) VALUES
(1, 1, 1, 1, 'ndijvbso'),
(2, 2, 2, 2, '                                '),
(3, 2, 2, 2, ''),
(4, 2, 2, 2, ''),
(5, 2, 2, 2, ''),
(6, 2, 2, 2, ''),
(7, 2, 2, 2, ''),
(8, 2, 2, 2, ''),
(9, 2, 2, 2, ''),
(10, 2, 2, 2, ''),
(11, 2, 2, 2, ''),
(12, 2, 2, 2, ''),
(13, 2, 2, 2, ''),
(14, 2, 2, 2, ''),
(15, 2, 2, 2, ''),
(16, 2, 2, 2, ''),
(17, 2, 2, 2, ''),
(18, 2, 2, 2, ''),
(19, 2, 2, 2, ''),
(20, 2, 2, 2, ''),
(21, 2, 2, 2, ''),
(22, 2, 2, 2, ''),
(23, 2, 2, 2, ''),
(24, 2, 2, 2, ''),
(25, 2, 2, 2, ''),
(26, 2, 2, 2, ''),
(27, 2, 2, 2, ''),
(28, 2, 2, 2, ''),
(29, 2, 2, 2, ''),
(30, 2, 2, 2, ''),
(31, 2, 2, 2, ''),
(32, 2, 2, 2, ''),
(33, 2, 2, 2, ''),
(34, 2, 2, 2, ''),
(35, 2, 2, 2, ''),
(36, 2, 2, 2, ''),
(37, 2, 2, 2, ''),
(38, 2, 2, 2, ''),
(39, 2, 2, 2, ''),
(40, 2, 2, 2, ''),
(41, 2, 2, 2, ''),
(42, 2, 2, 2, ''),
(43, 2, 2, 2, ''),
(44, 2, 2, 2, ''),
(45, 2, 2, 2, ''),
(46, 2, 2, 2, ''),
(47, 2, 2, 2, ''),
(48, 2, 2, 2, ''),
(49, 2, 2, 2, ''),
(50, 2, 2, 2, ''),
(51, 2, 2, 2, ''),
(52, 2, 2, 2, ''),
(53, 2, 2, 2, ''),
(54, 2, 2, 2, ''),
(55, 2, 2, 2, ''),
(56, 2, 2, 2, ''),
(57, 2, 2, 2, ''),
(58, 2, 2, 2, ''),
(59, 2, 2, 2, ''),
(60, 2, 2, 2, ''),
(61, 2, 2, 2, ''),
(62, 2, 2, 2, ''),
(63, 2, 2, 2, ''),
(64, 2, 2, 2, ''),
(65, 2, 2, 2, ''),
(66, 2, 2, 2, ''),
(67, 2, 2, 2, ''),
(68, 2, 2, 2, ''),
(69, 2, 2, 2, ''),
(70, 2, 2, 2, ''),
(71, 2, 2, 2, ''),
(72, 2, 2, 2, ''),
(73, 2, 2, 2, ''),
(74, 2, 2, 2, ''),
(75, 2, 2, 2, ''),
(76, 2, 2, 2, ''),
(77, 2, 2, 2, ''),
(78, 2, 2, 2, ''),
(79, 2, 2, 2, ''),
(80, 2, 2, 2, ''),
(81, 2, 2, 2, ''),
(82, 2, 2, 2, ''),
(83, 2, 2, 2, ''),
(84, 2, 2, 2, ''),
(85, 2, 2, 2, ''),
(86, 2, 2, 2, ''),
(87, 2, 2, 2, ''),
(88, 2, 2, 2, ''),
(89, 2, 2, 2, ''),
(90, 2, 2, 2, ''),
(91, 2, 2, 2, ''),
(92, 2, 2, 2, ''),
(93, 2, 2, 2, ''),
(94, 2, 2, 2, ''),
(95, 2, 2, 2, ''),
(96, 2, 2, 2, ''),
(97, 2, 2, 2, ''),
(98, 2, 2, 2, ''),
(99, 2, 2, 2, ''),
(100, 2, 2, 2, ''),
(101, 2, 2, 2, ''),
(102, 2, 2, 2, ''),
(103, 2, 2, 2, ''),
(104, 2, 2, 2, ''),
(105, 2, 2, 2, ''),
(106, 2, 2, 2, ''),
(107, 2, 2, 2, ''),
(108, 2, 2, 2, ''),
(109, 2, 2, 2, ''),
(110, 2, 2, 2, ''),
(111, 2, 2, 2, ''),
(112, 2, 2, 2, ''),
(113, 2, 2, 2, ''),
(114, 2, 2, 2, ''),
(115, 2, 2, 2, ''),
(116, 2, 2, 2, ''),
(117, 2, 2, 2, ''),
(118, 2, 2, 2, ''),
(119, 2, 2, 2, ''),
(120, 2, 2, 2, ''),
(121, 2, 2, 2, ''),
(122, 2, 2, 2, ''),
(123, 2, 2, 2, ''),
(124, 2, 2, 2, ''),
(125, 2, 2, 2, ''),
(126, 2, 2, 2, ''),
(127, 2, 2, 2, ''),
(128, 2, 2, 2, ''),
(129, 2, 2, 2, ''),
(130, 2, 2, 2, ''),
(131, 2, 2, 2, ''),
(132, 2, 2, 2, ''),
(133, 2, 2, 2, ''),
(134, 2, 2, 2, ''),
(135, 2, 2, 2, ''),
(136, 2, 2, 2, ''),
(137, 2, 2, 2, ''),
(138, 2, 2, 2, ''),
(139, 2, 2, 2, ''),
(140, 2, 2, 2, ''),
(141, 2, 2, 2, ''),
(142, 2, 2, 2, ''),
(143, 2, 2, 2, ''),
(144, 2, 2, 2, ''),
(145, 2, 2, 2, ''),
(146, 2, 2, 2, ''),
(147, 2, 2, 2, ''),
(148, 2, 2, 2, ''),
(149, 2, 2, 2, ''),
(150, 2, 2, 2, ''),
(151, 2, 2, 2, ''),
(152, 2, 2, 2, ''),
(153, 2, 2, 2, ''),
(154, 2, 2, 2, ''),
(155, 2, 2, 2, ''),
(156, 2, 2, 2, ''),
(157, 2, 2, 2, ''),
(158, 2, 2, 2, ''),
(159, 2, 2, 2, ''),
(160, 2, 2, 2, ''),
(161, 2, 2, 2, ''),
(162, 2, 2, 2, ''),
(163, 2, 2, 2, ''),
(164, 2, 2, 2, ''),
(165, 2, 2, 2, ''),
(166, 2, 2, 2, ''),
(167, 2, 2, 2, ''),
(168, 2, 2, 2, ''),
(169, 2, 2, 2, ''),
(170, 2, 2, 2, ''),
(171, 2, 2, 2, ''),
(172, 2, 2, 2, ''),
(173, 2, 2, 2, ''),
(174, 2, 2, 2, ''),
(175, 2, 2, 2, ''),
(176, 2, 2, 2, ''),
(177, 2, 2, 2, ''),
(178, 2, 2, 2, ''),
(179, 2, 2, 2, ''),
(180, 2, 2, 2, ''),
(181, 2, 2, 2, ''),
(182, 2, 2, 2, ''),
(183, 2, 2, 2, ''),
(184, 2, 2, 2, ''),
(185, 2, 2, 2, ''),
(186, 2, 2, 2, ''),
(187, 2, 2, 2, ''),
(188, 2, 2, 2, ''),
(189, 2, 2, 2, ''),
(190, 2, 2, 2, ''),
(191, 2, 2, 2, ''),
(192, 2, 2, 2, ''),
(193, 2, 2, 2, ''),
(194, 2, 2, 2, ''),
(195, 2, 2, 2, ''),
(196, 2, 2, 2, ''),
(197, 2, 2, 2, ''),
(198, 2, 2, 2, ''),
(199, 2, 2, 2, ''),
(200, 2, 2, 2, ''),
(201, 2, 2, 2, ''),
(202, 2, 2, 2, ''),
(203, 2, 2, 2, ''),
(204, 2, 2, 2, ''),
(205, 2, 2, 2, ''),
(206, 2, 2, 2, ''),
(207, 2, 2, 2, ''),
(208, 2, 2, 2, ''),
(209, 2, 2, 2, ''),
(210, 2, 2, 2, ''),
(211, 2, 2, 2, ''),
(212, 2, 2, 2, ''),
(213, 2, 2, 2, ''),
(214, 2, 2, 2, ''),
(215, 2, 2, 2, ''),
(216, 2, 2, 2, ''),
(217, 2, 2, 2, ''),
(218, 2, 2, 2, ''),
(219, 2, 2, 2, ''),
(220, 2, 2, 2, ''),
(221, 2, 2, 2, ''),
(222, 2, 2, 2, ''),
(223, 2, 2, 2, ''),
(224, 2, 2, 2, ''),
(225, 2, 2, 2, ''),
(226, 2, 2, 2, ''),
(227, 2, 2, 2, ''),
(228, 2, 2, 2, ''),
(229, 2, 2, 2, ''),
(230, 2, 2, 2, ''),
(231, 2, 2, 2, ''),
(232, 2, 2, 2, ''),
(233, 2, 2, 2, ''),
(234, 2, 2, 2, ''),
(235, 2, 2, 2, ''),
(236, 2, 2, 2, ''),
(237, 2, 2, 2, ''),
(238, 2, 2, 2, ''),
(239, 2, 2, 2, ''),
(240, 2, 2, 2, ''),
(241, 2, 2, 2, ''),
(242, 2, 2, 2, ''),
(243, 2, 2, 2, ''),
(244, 2, 2, 2, ''),
(245, 2, 2, 2, ''),
(246, 2, 2, 2, ''),
(247, 2, 2, 2, ''),
(248, 2, 2, 2, ''),
(249, 2, 2, 2, ''),
(250, 2, 2, 2, ''),
(251, 2, 2, 2, ''),
(252, 2, 2, 2, ''),
(253, 2, 2, 2, ''),
(254, 2, 2, 2, ''),
(255, 2, 2, 2, ''),
(256, 2, 2, 2, ''),
(257, 2, 2, 2, ''),
(258, 2, 2, 2, ''),
(259, 2, 2, 2, ''),
(260, 2, 2, 2, ''),
(261, 2, 2, 2, ''),
(262, 2, 2, 2, ''),
(263, 2, 2, 2, ''),
(264, 2, 2, 2, ''),
(265, 2, 2, 2, ''),
(266, 2, 2, 2, ''),
(267, 2, 2, 2, ''),
(268, 2, 2, 2, ''),
(269, 2, 2, 2, ''),
(270, 2, 2, 2, ''),
(271, 2, 2, 2, ''),
(272, 2, 2, 2, ''),
(273, 2, 2, 2, ''),
(274, 2, 2, 2, ''),
(275, 2, 2, 2, ''),
(276, 2, 2, 2, ''),
(277, 2, 2, 2, ''),
(278, 2, 2, 2, ''),
(279, 2, 2, 2, ''),
(280, 2, 2, 2, ''),
(281, 2, 2, 2, ''),
(282, 2, 2, 2, ''),
(283, 2, 2, 2, ''),
(284, 2, 2, 2, ''),
(285, 2, 2, 2, ''),
(286, 2, 2, 2, ''),
(287, 2, 2, 2, ''),
(288, 2, 2, 2, ''),
(289, 2, 2, 2, ''),
(290, 2, 2, 2, ''),
(291, 2, 2, 2, ''),
(292, 2, 2, 2, ''),
(293, 2, 2, 2, ''),
(294, 2, 2, 2, ''),
(295, 2, 2, 2, ''),
(296, 2, 2, 2, ''),
(297, 2, 2, 2, ''),
(298, 2, 2, 2, ''),
(299, 2, 2, 2, ''),
(300, 2, 2, 2, ''),
(301, 2, 2, 2, ''),
(302, 2, 2, 2, ''),
(303, 2, 2, 2, ''),
(304, 2, 2, 2, ''),
(305, 2, 2, 2, ''),
(306, 2, 2, 2, ''),
(307, 2, 2, 2, ''),
(308, 2, 2, 2, ''),
(309, 2, 2, 2, ''),
(310, 2, 2, 2, ''),
(311, 2, 2, 2, ''),
(312, 2, 2, 2, ''),
(313, 2, 2, 2, ''),
(314, 2, 2, 2, ''),
(315, 2, 2, 2, ''),
(316, 2, 2, 2, ''),
(317, 2, 2, 2, ''),
(318, 2, 2, 2, ''),
(319, 2, 2, 2, ''),
(320, 2, 2, 2, ''),
(321, 2, 2, 2, ''),
(322, 2, 2, 2, ''),
(323, 2, 2, 2, ''),
(324, 2, 2, 2, ''),
(325, 2, 2, 2, ''),
(326, 2, 2, 2, ''),
(327, 2, 2, 2, ''),
(328, 2, 2, 2, ''),
(329, 2, 2, 2, ''),
(330, 2, 2, 2, ''),
(331, 2, 2, 2, ''),
(332, 2, 2, 2, ''),
(333, 2, 2, 2, ''),
(334, 2, 2, 2, ''),
(335, 2, 2, 2, ''),
(336, 2, 2, 2, ''),
(337, 2, 2, 2, ''),
(338, 2, 2, 2, ''),
(339, 2, 2, 2, ''),
(340, 2, 2, 2, ''),
(341, 2, 2, 2, ''),
(342, 2, 2, 2, ''),
(343, 2, 2, 2, ''),
(344, 2, 2, 2, ''),
(345, 2, 2, 2, ''),
(346, 2, 2, 2, ''),
(347, 2, 2, 2, ''),
(348, 2, 2, 2, ''),
(349, 2, 2, 2, ''),
(350, 2, 2, 2, ''),
(351, 2, 2, 2, ''),
(352, 2, 2, 2, ''),
(353, 2, 2, 2, ''),
(354, 2, 2, 2, ''),
(355, 2, 2, 2, ''),
(356, 2, 2, 2, ''),
(357, 2, 2, 2, ''),
(358, 2, 2, 2, ''),
(359, 2, 2, 2, ''),
(360, 2, 2, 2, ''),
(361, 2, 2, 2, ''),
(362, 2, 2, 2, ''),
(363, 2, 2, 2, ''),
(364, 2, 2, 2, ''),
(365, 2, 2, 2, ''),
(366, 2, 2, 2, ''),
(367, 2, 2, 2, ''),
(368, 2, 2, 2, ''),
(369, 2, 2, 2, ''),
(370, 2, 2, 2, ''),
(371, 2, 2, 2, ''),
(372, 2, 2, 2, ''),
(373, 2, 2, 2, ''),
(374, 2, 2, 2, ''),
(375, 2, 2, 2, ''),
(376, 2, 2, 2, ''),
(377, 2, 2, 2, ''),
(378, 2, 2, 2, ''),
(379, 2, 2, 2, ''),
(380, 2, 2, 2, ''),
(381, 2, 2, 2, ''),
(382, 2, 2, 2, ''),
(383, 2, 2, 2, ''),
(384, 2, 2, 2, ''),
(385, 2, 2, 2, ''),
(386, 2, 2, 2, ''),
(387, 2, 2, 2, ''),
(388, 2, 2, 2, ''),
(389, 2, 2, 2, ''),
(390, 2, 2, 2, ''),
(391, 2, 2, 2, ''),
(392, 2, 2, 2, ''),
(393, 2, 2, 2, ''),
(394, 2, 2, 2, ''),
(395, 2, 2, 2, ''),
(396, 2, 2, 2, ''),
(397, 2, 2, 2, ''),
(398, 2, 2, 2, ''),
(399, 2, 2, 2, ''),
(400, 2, 2, 2, ''),
(401, 2, 2, 2, ''),
(402, 2, 2, 2, ''),
(403, 2, 2, 2, ''),
(404, 2, 2, 2, ''),
(405, 2, 2, 2, ''),
(406, 2, 2, 2, ''),
(407, 2, 2, 2, ''),
(408, 2, 2, 2, ''),
(409, 2, 2, 2, ''),
(410, 2, 2, 2, ''),
(411, 2, 2, 2, ''),
(412, 2, 2, 2, ''),
(413, 2, 2, 2, ''),
(414, 2, 2, 2, ''),
(415, 2, 2, 2, ''),
(416, 2, 2, 2, ''),
(417, 2, 2, 2, ''),
(418, 2, 2, 2, ''),
(419, 2, 2, 2, ''),
(420, 2, 2, 2, ''),
(421, 2, 2, 2, ''),
(422, 2, 2, 2, ''),
(423, 2, 2, 2, ''),
(424, 2, 2, 2, ''),
(425, 2, 2, 2, ''),
(426, 2, 2, 2, ''),
(427, 2, 2, 2, ''),
(428, 2, 2, 2, ''),
(429, 2, 2, 2, ''),
(430, 2, 2, 2, ''),
(431, 2, 2, 2, ''),
(432, 2, 2, 2, ''),
(433, 2, 2, 2, ''),
(434, 2, 2, 2, ''),
(435, 2, 2, 2, ''),
(436, 2, 2, 2, ''),
(437, 2, 2, 2, ''),
(438, 2, 2, 2, ''),
(439, 2, 2, 2, ''),
(440, 2, 2, 2, ''),
(441, 2, 2, 2, ''),
(442, 2, 2, 2, ''),
(443, 2, 2, 2, ''),
(444, 2, 2, 2, ''),
(445, 2, 2, 2, ''),
(446, 2, 2, 2, ''),
(447, 2, 2, 2, ''),
(448, 2, 2, 2, ''),
(449, 2, 2, 2, ''),
(450, 2, 2, 2, ''),
(451, 2, 2, 2, ''),
(452, 2, 2, 2, ''),
(453, 2, 2, 2, ''),
(454, 2, 2, 2, ''),
(455, 2, 2, 2, ''),
(456, 2, 2, 2, ''),
(457, 2, 2, 2, ''),
(458, 2, 2, 2, ''),
(459, 2, 2, 2, ''),
(460, 2, 2, 2, ''),
(461, 2, 2, 2, ''),
(462, 2, 2, 2, ''),
(463, 2, 2, 2, ''),
(464, 2, 2, 2, ''),
(465, 2, 2, 2, ''),
(466, 2, 2, 2, ''),
(467, 2, 2, 2, ''),
(468, 2, 2, 2, ''),
(469, 2, 2, 2, ''),
(470, 2, 2, 2, ''),
(471, 2, 2, 2, ''),
(472, 2, 2, 2, ''),
(473, 2, 2, 2, ''),
(474, 2, 2, 2, ''),
(475, 2, 2, 2, ''),
(476, 2, 2, 2, ''),
(477, 2, 2, 2, ''),
(478, 2, 2, 2, ''),
(479, 2, 2, 2, ''),
(480, 2, 2, 2, ''),
(481, 2, 2, 2, ''),
(482, 2, 2, 2, ''),
(483, 2, 2, 2, ''),
(484, 2, 2, 2, ''),
(485, 2, 2, 2, ''),
(486, 2, 2, 2, ''),
(487, 2, 2, 2, ''),
(488, 2, 2, 2, ''),
(489, 2, 2, 2, ''),
(490, 2, 2, 2, ''),
(491, 2, 2, 2, ''),
(492, 2, 2, 2, ''),
(493, 2, 2, 2, ''),
(494, 2, 2, 2, ''),
(495, 2, 2, 2, ''),
(496, 2, 2, 2, ''),
(497, 2, 2, 2, ''),
(498, 2, 2, 2, ''),
(499, 2, 2, 2, ''),
(500, 2, 2, 2, ''),
(501, 2, 2, 2, ''),
(502, 2, 2, 2, ''),
(503, 2, 2, 2, ''),
(504, 2, 2, 2, ''),
(505, 2, 2, 2, ''),
(506, 2, 2, 2, ''),
(507, 2, 2, 2, ''),
(508, 2, 2, 2, ''),
(509, 2, 2, 2, ''),
(510, 2, 2, 2, ''),
(511, 2, 2, 2, ''),
(512, 2, 2, 2, ''),
(513, 2, 2, 2, ''),
(514, 2, 2, 2, ''),
(515, 2, 2, 2, ''),
(516, 2, 2, 2, ''),
(517, 2, 2, 2, ''),
(518, 2, 2, 2, ''),
(519, 2, 2, 2, ''),
(520, 2, 2, 2, ''),
(521, 2, 2, 2, ''),
(522, 2, 2, 2, ''),
(523, 2, 2, 2, ''),
(524, 2, 2, 2, ''),
(525, 2, 2, 2, ''),
(526, 2, 2, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `cid` int(200) NOT NULL,
  `court_name` text NOT NULL,
  `place` text NOT NULL,
  `activestatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`cid`, `court_name`, `place`, `activestatus`) VALUES
(1, 'District Court', 'Kottayam', 0),
(2, 'High Court', 'Eranakulam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(200) NOT NULL,
  `uid` int(200) NOT NULL,
  `lid` int(200) NOT NULL,
  `cid` int(200) NOT NULL,
  `case_id` int(200) NOT NULL,
  `history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `uid`, `lid`, `cid`, `case_id`, `history`) VALUES
(1, 2, 1, 1, 1, 'Case Won');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_details`
--

CREATE TABLE `lawyer_details` (
  `lid` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `speciality` text NOT NULL,
  `experience` text NOT NULL,
  `fees` text NOT NULL,
  `phone` text NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` text NOT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyer_details`
--

INSERT INTO `lawyer_details` (`lid`, `name`, `email`, `password`, `speciality`, `experience`, `fees`, `phone`, `gender`, `dob`, `approved`) VALUES
(1, 'Sony', 'mailsonytom@gmail.com', '$2y$10$9mhcf7RF2s8fwhMzvmQ9qOsqRDM7H8bPMmMLcULg4VY36bGZS/0Re', 'Criminal Case', 'two years', '10000', '8078518030', 'male', '13/08/1999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` text NOT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `name`, `email`, `password`, `phone`, `approved`) VALUES
(4, 'Saran Sasi', 'saransasi@gmail.com', '$2y$10$GEnnR1Ali0mB9zKiWRjHsu7BGySru3JImUtEz08hvy7gvVuie7pai', '9087654321', 0),
(5, 'shijin santhosh', '', '$2y$10$aIbpsx38IDPiyoIAzp30TOr/5.WckluB5Gcx5aZw6cjkpuPwM.KEu', '', 0),
(6, 'Sony', 'wwwshijinsanthosh54@gmail.com', '$2y$10$XDnf/l8DU4KzxvYdC7crXuXrjQzHom5i9xanpRpxi43V7AQPlIO2y', '1234567', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `casetype`
--
ALTER TABLE `casetype`
  ADD PRIMARY KEY (`casetype_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `casetype`
--
ALTER TABLE `casetype`
  MODIFY `casetype_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `cid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  MODIFY `lid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `uid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
