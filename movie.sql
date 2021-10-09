-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 03:50 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ac_id` int(4) NOT NULL,
  `ac_nm` varchar(200) NOT NULL,
  `ac_time` varchar(200) NOT NULL,
  `ac_tmp` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`ac_id`, `ac_nm`, `ac_time`, `ac_tmp`) VALUES
(101, '48 Seats Booked ', '1564273432', ''),
(102, '48 Ticket Cancellled', '1564273585', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(4) NOT NULL,
  `a_nm` varchar(50) NOT NULL,
  `a_unm` varchar(6) NOT NULL,
  `a_mno` varchar(12) NOT NULL,
  `a_pwd` varchar(40) NOT NULL,
  `a_email` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_nm`, `a_unm`, `a_mno`, `a_pwd`, `a_email`) VALUES
(1, 'Darshak Pansuriya', 'admin', '9714007824', '7472', 'pdwapinc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(4) NOT NULL,
  `b_bookid` varchar(100) NOT NULL,
  `b_theatre` varchar(10) NOT NULL,
  `b_unm` varchar(20) NOT NULL,
  `b_show` varchar(20) NOT NULL,
  `b_screen` varchar(20) NOT NULL,
  `b_seat` int(20) NOT NULL,
  `b_amt` int(40) NOT NULL,
  `b_date` varchar(40) NOT NULL,
  `b_time` bigint(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `co_id` int(4) NOT NULL,
  `co_nm` varchar(20) NOT NULL,
  `co_mno` varchar(12) NOT NULL,
  `co_email` varchar(50) NOT NULL,
  `co_msg` longtext NOT NULL,
  `co_time` bigint(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`co_id`, `co_nm`, `co_mno`, `co_email`, `co_msg`, `co_time`) VALUES
(2, 'Darshak', '9714007824', 'pdwapinc@gmail.com', 'Fhjwjwj', 1559740252);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `m_id` int(4) NOT NULL,
  `m_nm` varchar(40) NOT NULL,
  `m_date` varchar(40) NOT NULL,
  `m_cnm` varchar(200) NOT NULL,
  `m_dnm` varchar(200) NOT NULL,
  `m_des` longtext NOT NULL,
  `m_banner` varchar(200) NOT NULL,
  `m_shw` int(1) NOT NULL DEFAULT 0,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`m_id`, `m_nm`, `m_date`, `m_cnm`, `m_dnm`, `m_des`, `m_banner`, `m_shw`, `m_status`) VALUES
(16, 'Article 15', '2019-06-28', 'Ayushmann Khurrana Isha Talwar Sayani Gupta', 'Anubhav Sinha', 'A crime thriller film directed by Anubhav Sinha, starring Ayushmann Khurrana, Isha Talwar and Sayani Gupta in the lead roles.        ', '1563833516_article.jpg', 1, 1),
(15, 'The Lion King', '2019-07-19', 'Amy Sedaris Donald Glover Keegan-Michael Key', 'Jon Favreau ', 'Simba idolizes his father Mufasa and follows his footsteps to achieve his royal destiny with the help of his newfound friends and regain what is rightfully his.    ', '1563833550_lionking.jpeg', 1, 1),
(17, 'Spider Man:Far From Home', '2019-07-04', 'Jake Gyllenhaal Marisa Tomei Samuel L Jackson Tom Hollander', 'Jon Watts', 'Dubbed action adventure film directed by Jon Watts, starring Jake Gyllenhaal, Tom Holland and Zendaya in the lead roles.    ', '1563833608_spider.jpg', 1, 1),
(18, 'Kabir Singh', '2019-06-21', 'Kiara Advani, Shahid Kapoor', 'Sandeep Reddy Vanga ', 'A short-tempered alcoholic surgeon goes down a self-destructive path when the love of his life is forced to marry someone else.', '1563639828_kabir.jpeg', 1, 1),
(19, 'Arjun Patiyala', '2019-07-26', 'Diljit Dosanj ,hKriti Sanon', 'Rohit Jugraj', 'Comic difficulties ensue when a tall female journalist falls in love with a short Punjabi man.', '1563639960_arjun.jpeg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(4) NOT NULL,
  `r_nm` varchar(30) NOT NULL,
  `r_age` varchar(2) NOT NULL,
  `r_gender` varchar(10) NOT NULL,
  `r_mno` varchar(12) NOT NULL,
  `r_email` varchar(40) NOT NULL,
  `r_pwd` varchar(40) NOT NULL,
  `r_time` bigint(40) NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_nm`, `r_age`, `r_gender`, `r_mno`, `r_email`, `r_pwd`, `r_time`, `r_status`) VALUES
(1, 'Darshak', '18', 'Male', '9714007824', 'darshakpansuriya9@gmail.com', '74723342', 1558686743, 1),
(2, 'Darshak', '18', 'Male', '9714007824', 'pdwapofficial@gmail.com', '74723342', 1558687450, 1),
(3, 'Pdwap patel', '28', 'Male', '9714007824', 'pdwapofficial@gmail.com', '747233', 1559047603, 1),
(4, 'Ram bhai', '20', 'Male', '9714007824', 'pdwapinc@gmail.com', '747233', 1559047656, 1),
(5, 'Manish patel', '20', 'Male', '1848583818', 'Maisn@bdnf.com', '123123', 1559047757, 1),
(6, 'Ketan Patel', '40', 'Male', '4727727248', 'Ketan@mail.com', '123123', 1559047783, 1),
(7, 'Ketan Patel', '40', 'Male', '000000000', 'Ketanz@mail.com', '121212', 1559047797, 1),
(8, 'Pd wap', '22', 'Male', '1482848289', 'pdwapofficial@gmail.com', '123123', 1559736049, 1),
(9, 'Darshak', '22', 'Male', '9714007824', 'pdwapinc@gmail.com', '123123', 1559738573, 1),
(10, 'pradip singh', '21', 'Male', '9912456789', 'pradip@gmail.com', '121212', 1563636916, 1);

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `s_id` int(4) NOT NULL,
  `s_nm` varchar(20) NOT NULL,
  `s_theatre` int(2) NOT NULL,
  `s_seats` int(250) NOT NULL DEFAULT 49,
  `s_time` int(40) NOT NULL,
  `s_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`s_id`, `s_nm`, `s_theatre`, `s_seats`, `s_time`, `s_status`) VALUES
(16, 'Local', 11, 49, 1564013078, 1),
(15, 'Silver', 8, 49, 1564013069, 1),
(14, 'Gold', 8, 49, 1564013054, 1),
(13, 'Last', 10, 49, 1564013044, 1),
(12, 'First', 10, 49, 1564012964, 1),
(11, 'Red', 6, 49, 1564012935, 1),
(10, 'Blue', 6, 49, 1564012929, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` int(5) NOT NULL,
  `seat_row` varchar(5) NOT NULL,
  `seat_col` int(5) NOT NULL,
  `seat_show` int(5) NOT NULL DEFAULT 0,
  `seat_uid` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `seat_row`, `seat_col`, `seat_show`, `seat_uid`) VALUES
(1, 'A', 1, 48, 0),
(2, 'A', 2, 48, 0),
(3, 'A', 3, 48, 0),
(4, 'A', 4, 48, 0),
(5, 'A', 5, 48, 0),
(6, 'A', 6, 48, 0),
(7, 'B', 1, 48, 0),
(8, 'B', 2, 48, 0),
(9, 'B', 3, 48, 0),
(10, 'B', 4, 48, 0),
(11, 'B', 5, 48, 0),
(12, 'B', 6, 48, 0),
(13, 'C', 1, 48, 0),
(14, 'C', 2, 48, 0),
(15, 'C', 3, 48, 0),
(16, 'C', 4, 48, 0),
(17, 'C', 5, 48, 0),
(18, 'C', 6, 48, 0),
(19, 'D', 1, 48, 0),
(20, 'D', 2, 48, 0),
(21, 'D', 3, 48, 0),
(22, 'D', 4, 48, 0),
(23, 'D', 5, 48, 0),
(24, 'D', 6, 48, 0),
(25, 'E', 1, 48, 0),
(26, 'E', 2, 48, 0),
(27, 'E', 3, 48, 0),
(28, 'E', 4, 48, 0),
(29, 'E', 5, 48, 0),
(30, 'E', 6, 48, 0),
(31, 'F', 1, 48, 0),
(32, 'F', 2, 48, 0),
(33, 'F', 3, 48, 0),
(34, 'F', 4, 48, 0),
(35, 'F', 5, 48, 0),
(36, 'F', 6, 48, 0),
(37, 'G', 1, 48, 0),
(38, 'G', 2, 48, 0),
(39, 'G', 3, 48, 0),
(40, 'G', 4, 48, 0),
(41, 'G', 5, 48, 0),
(42, 'G', 6, 48, 0),
(43, 'H', 1, 48, 0),
(44, 'H', 2, 48, 0),
(45, 'H', 3, 48, 0),
(46, 'H', 4, 48, 0),
(47, 'H', 5, 48, 0),
(48, 'H', 6, 48, 0),
(49, 'A', 1, 49, 0),
(50, 'A', 2, 49, 0),
(51, 'A', 3, 49, 0),
(52, 'A', 4, 49, 0),
(53, 'A', 5, 49, 0),
(54, 'A', 6, 49, 0),
(55, 'B', 1, 49, 0),
(56, 'B', 2, 49, 0),
(57, 'B', 3, 49, 0),
(58, 'B', 4, 49, 0),
(59, 'B', 5, 49, 0),
(60, 'B', 6, 49, 0),
(61, 'C', 1, 49, 0),
(62, 'C', 2, 49, 0),
(63, 'C', 3, 49, 0),
(64, 'C', 4, 49, 0),
(65, 'C', 5, 49, 0),
(66, 'C', 6, 49, 0),
(67, 'D', 1, 49, 0),
(68, 'D', 2, 49, 0),
(69, 'D', 3, 49, 0),
(70, 'D', 4, 49, 0),
(71, 'D', 5, 49, 0),
(72, 'D', 6, 49, 0),
(73, 'E', 1, 49, 0),
(74, 'E', 2, 49, 0),
(75, 'E', 3, 49, 0),
(76, 'E', 4, 49, 0),
(77, 'E', 5, 49, 0),
(78, 'E', 6, 49, 0),
(79, 'F', 1, 49, 0),
(80, 'F', 2, 49, 0),
(81, 'F', 3, 49, 0),
(82, 'F', 4, 49, 0),
(83, 'F', 5, 49, 0),
(84, 'F', 6, 49, 0),
(85, 'G', 1, 49, 0),
(86, 'G', 2, 49, 0),
(87, 'G', 3, 49, 0),
(88, 'G', 4, 49, 0),
(89, 'G', 5, 49, 0),
(90, 'G', 6, 49, 0),
(91, 'H', 1, 49, 0),
(92, 'H', 2, 49, 0),
(93, 'H', 3, 49, 0),
(94, 'H', 4, 49, 0),
(95, 'H', 5, 49, 0),
(96, 'H', 6, 49, 0),
(97, 'A', 1, 50, 0),
(98, 'A', 2, 50, 0),
(99, 'A', 3, 50, 0),
(100, 'A', 4, 50, 0),
(101, 'A', 5, 50, 0),
(102, 'A', 6, 50, 0),
(103, 'B', 1, 50, 0),
(104, 'B', 2, 50, 0),
(105, 'B', 3, 50, 0),
(106, 'B', 4, 50, 0),
(107, 'B', 5, 50, 0),
(108, 'B', 6, 50, 0),
(109, 'C', 1, 50, 0),
(110, 'C', 2, 50, 0),
(111, 'C', 3, 50, 0),
(112, 'C', 4, 50, 0),
(113, 'C', 5, 50, 0),
(114, 'C', 6, 50, 0),
(115, 'D', 1, 50, 0),
(116, 'D', 2, 50, 0),
(117, 'D', 3, 50, 0),
(118, 'D', 4, 50, 0),
(119, 'D', 5, 50, 0),
(120, 'D', 6, 50, 0),
(121, 'E', 1, 50, 0),
(122, 'E', 2, 50, 0),
(123, 'E', 3, 50, 0),
(124, 'E', 4, 50, 0),
(125, 'E', 5, 50, 0),
(126, 'E', 6, 50, 0),
(127, 'F', 1, 50, 0),
(128, 'F', 2, 50, 0),
(129, 'F', 3, 50, 0),
(130, 'F', 4, 50, 0),
(131, 'F', 5, 50, 0),
(132, 'F', 6, 50, 0),
(133, 'G', 1, 50, 0),
(134, 'G', 2, 50, 0),
(135, 'G', 3, 50, 0),
(136, 'G', 4, 50, 0),
(137, 'G', 5, 50, 0),
(138, 'G', 6, 50, 0),
(139, 'H', 1, 50, 0),
(140, 'H', 2, 50, 0),
(141, 'H', 3, 50, 0),
(142, 'H', 4, 50, 0),
(143, 'H', 5, 50, 0),
(144, 'H', 6, 50, 0),
(145, 'A', 1, 51, 0),
(146, 'A', 2, 51, 0),
(147, 'A', 3, 51, 0),
(148, 'A', 4, 51, 0),
(149, 'A', 5, 51, 0),
(150, 'A', 6, 51, 0),
(151, 'B', 1, 51, 0),
(152, 'B', 2, 51, 0),
(153, 'B', 3, 51, 0),
(154, 'B', 4, 51, 0),
(155, 'B', 5, 51, 0),
(156, 'B', 6, 51, 0),
(157, 'C', 1, 51, 0),
(158, 'C', 2, 51, 0),
(159, 'C', 3, 51, 0),
(160, 'C', 4, 51, 0),
(161, 'C', 5, 51, 0),
(162, 'C', 6, 51, 0),
(163, 'D', 1, 51, 0),
(164, 'D', 2, 51, 0),
(165, 'D', 3, 51, 0),
(166, 'D', 4, 51, 0),
(167, 'D', 5, 51, 0),
(168, 'D', 6, 51, 0),
(169, 'E', 1, 51, 0),
(170, 'E', 2, 51, 0),
(171, 'E', 3, 51, 0),
(172, 'E', 4, 51, 0),
(173, 'E', 5, 51, 0),
(174, 'E', 6, 51, 0),
(175, 'F', 1, 51, 0),
(176, 'F', 2, 51, 0),
(177, 'F', 3, 51, 0),
(178, 'F', 4, 51, 0),
(179, 'F', 5, 51, 0),
(180, 'F', 6, 51, 0),
(181, 'G', 1, 51, 0),
(182, 'G', 2, 51, 0),
(183, 'G', 3, 51, 0),
(184, 'G', 4, 51, 0),
(185, 'G', 5, 51, 0),
(186, 'G', 6, 51, 0),
(187, 'H', 1, 51, 0),
(188, 'H', 2, 51, 0),
(189, 'H', 3, 51, 0),
(190, 'H', 4, 51, 0),
(191, 'H', 5, 51, 0),
(192, 'H', 6, 51, 0),
(193, 'A', 1, 52, 0),
(194, 'A', 2, 52, 0),
(195, 'A', 3, 52, 0),
(196, 'A', 4, 52, 0),
(197, 'A', 5, 52, 0),
(198, 'A', 6, 52, 0),
(199, 'B', 1, 52, 0),
(200, 'B', 2, 52, 0),
(201, 'B', 3, 52, 0),
(202, 'B', 4, 52, 0),
(203, 'B', 5, 52, 0),
(204, 'B', 6, 52, 0),
(205, 'C', 1, 52, 0),
(206, 'C', 2, 52, 0),
(207, 'C', 3, 52, 0),
(208, 'C', 4, 52, 0),
(209, 'C', 5, 52, 0),
(210, 'C', 6, 52, 0),
(211, 'D', 1, 52, 0),
(212, 'D', 2, 52, 0),
(213, 'D', 3, 52, 0),
(214, 'D', 4, 52, 0),
(215, 'D', 5, 52, 0),
(216, 'D', 6, 52, 0),
(217, 'E', 1, 52, 0),
(218, 'E', 2, 52, 0),
(219, 'E', 3, 52, 0),
(220, 'E', 4, 52, 0),
(221, 'E', 5, 52, 0),
(222, 'E', 6, 52, 0),
(223, 'F', 1, 52, 0),
(224, 'F', 2, 52, 0),
(225, 'F', 3, 52, 0),
(226, 'F', 4, 52, 0),
(227, 'F', 5, 52, 0),
(228, 'F', 6, 52, 0),
(229, 'G', 1, 52, 0),
(230, 'G', 2, 52, 0),
(231, 'G', 3, 52, 0),
(232, 'G', 4, 52, 0),
(233, 'G', 5, 52, 0),
(234, 'G', 6, 52, 0),
(235, 'H', 1, 52, 0),
(236, 'H', 2, 52, 0),
(237, 'H', 3, 52, 0),
(238, 'H', 4, 52, 0),
(239, 'H', 5, 52, 0),
(240, 'H', 6, 52, 0),
(241, 'A', 1, 53, 0),
(242, 'A', 2, 53, 0),
(243, 'A', 3, 53, 0),
(244, 'A', 4, 53, 0),
(245, 'A', 5, 53, 0),
(246, 'A', 6, 53, 0),
(247, 'B', 1, 53, 0),
(248, 'B', 2, 53, 0),
(249, 'B', 3, 53, 0),
(250, 'B', 4, 53, 0),
(251, 'B', 5, 53, 0),
(252, 'B', 6, 53, 0),
(253, 'C', 1, 53, 0),
(254, 'C', 2, 53, 0),
(255, 'C', 3, 53, 0),
(256, 'C', 4, 53, 0),
(257, 'C', 5, 53, 0),
(258, 'C', 6, 53, 0),
(259, 'D', 1, 53, 0),
(260, 'D', 2, 53, 0),
(261, 'D', 3, 53, 0),
(262, 'D', 4, 53, 0),
(263, 'D', 5, 53, 0),
(264, 'D', 6, 53, 0),
(265, 'E', 1, 53, 0),
(266, 'E', 2, 53, 0),
(267, 'E', 3, 53, 0),
(268, 'E', 4, 53, 0),
(269, 'E', 5, 53, 0),
(270, 'E', 6, 53, 0),
(271, 'F', 1, 53, 0),
(272, 'F', 2, 53, 0),
(273, 'F', 3, 53, 0),
(274, 'F', 4, 53, 0),
(275, 'F', 5, 53, 0),
(276, 'F', 6, 53, 0),
(277, 'G', 1, 53, 0),
(278, 'G', 2, 53, 0),
(279, 'G', 3, 53, 0),
(280, 'G', 4, 53, 0),
(281, 'G', 5, 53, 0),
(282, 'G', 6, 53, 0),
(283, 'H', 1, 53, 0),
(284, 'H', 2, 53, 0),
(285, 'H', 3, 53, 0),
(286, 'H', 4, 53, 0),
(287, 'H', 5, 53, 0),
(288, 'H', 6, 53, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(4) NOT NULL,
  `show_m` int(4) NOT NULL,
  `show_t` int(4) NOT NULL,
  `show_s` int(4) NOT NULL,
  `show_time` varchar(200) NOT NULL,
  `show_date` varchar(20) NOT NULL,
  `show_price` int(4) NOT NULL,
  `show_status` int(1) NOT NULL DEFAULT 1,
  `show_seat` int(3) NOT NULL DEFAULT 48,
  `show_unq` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `show_m`, `show_t`, `show_s`, `show_time`, `show_date`, `show_price`, `show_status`, `show_seat`, `show_unq`) VALUES
(51, 17, 8, 14, '06:00', '2019-08-15', 240, 1, 48, '5d3c9b00e6b49'),
(50, 18, 6, 11, '09:30', '2020-02-15', 250, 1, 48, '5d3c9aedcce51'),
(49, 15, 11, 16, '09:00', '2019-08-20', 190, 1, 48, '5d3c96eb1c822'),
(48, 16, 11, 16, '09:00', '2019-08-20', 150, 1, 48, '5d3c94555c068'),
(52, 19, 10, 13, '08:00', '2019-08-10', 190, 1, 48, '5d3c9b154ca42'),
(53, 16, 11, 16, '06:00', '2019-08-20', 100, 1, 48, '5d3c9b35e85e9');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `t_id` int(4) NOT NULL,
  `t_nm` varchar(30) NOT NULL,
  `t_city` varchar(30) NOT NULL,
  `t_time` bigint(40) NOT NULL,
  `t_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`t_id`, `t_nm`, `t_city`, `t_time`, `t_status`) VALUES
(6, 'Cosmoplex', 'Rajkot', 1558695729, 1),
(8, 'Angel', 'Amreli      ', 1559134151, 1),
(9, 'Galaxy ', 'Rajkot', 1559548986, 1),
(10, 'R World', 'Rajkot', 1559549005, 1),
(11, 'Rajeshri', 'Rajkot', 1559549033, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upmovies`
--

CREATE TABLE `upmovies` (
  `um_id` int(4) NOT NULL,
  `um_nm` varchar(40) NOT NULL,
  `um_date` varchar(40) NOT NULL,
  `um_cnm` varchar(200) NOT NULL,
  `um_dnm` varchar(30) NOT NULL,
  `um_des` longtext NOT NULL,
  `um_banner` varchar(200) NOT NULL,
  `um_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upmovies`
--

INSERT INTO `upmovies` (`um_id`, `um_nm`, `um_date`, `um_cnm`, `um_dnm`, `um_des`, `um_banner`, `um_status`) VALUES
(16, 'Saaho', '2019-08-15', 'Prabhas,Shraddha Kapoor,Nil Nitin Mukesh', 'Sujeeth', 'Saaho is an upcoming 2019 Indian action thriller film written and directed by Sujeeth, produced by UV Creations and T-Series. The film stars Prabhas and Shraddha Kapoor, and has been shot simultaneously in Hindi, Tamil and Telugu.', '1563637786_saaho.jpeg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `upmovies`
--
ALTER TABLE `upmovies`
  ADD PRIMARY KEY (`um_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `ac_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `co_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `m_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `screen`
--
ALTER TABLE `screen`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `t_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `upmovies`
--
ALTER TABLE `upmovies`
  MODIFY `um_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
