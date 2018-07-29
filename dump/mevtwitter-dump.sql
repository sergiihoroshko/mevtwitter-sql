-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2018 at 01:10 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mevtwitter-sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `idcomments` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(280) NOT NULL,
  `comment_create` datetime NOT NULL,
  `users_idusers` int(11) NOT NULL,
  `twitter_feed_idtwitter_feed` int(11) NOT NULL,
  PRIMARY KEY (`idcomments`),
  KEY `fk_comments_users1_idx` (`users_idusers`),
  KEY `fk_comments_twitter_feed1_idx` (`twitter_feed_idtwitter_feed`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`idcomments`, `comment`, `comment_create`, `users_idusers`, `twitter_feed_idtwitter_feed`) VALUES
(1, 'Lorem ipsum', '2015-02-28 03:57:18', 28, 63),
(2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2016-08-07 04:23:15', 1, 40),
(3, 'Lorem ipsum', '2011-03-05 18:34:52', 47, 94),
(4, 'Lorem ipsum dolor', '2017-03-14 13:17:03', 44, 59),
(5, 'Lorem ipsum dolor sit amet,', '2008-12-17 02:29:00', 45, 65),
(6, 'Lorem ipsum dolor sit amet,', '2018-02-11 19:06:41', 50, 19),
(7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2011-07-17 09:15:38', 7, 2),
(8, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2015-10-19 00:32:28', 39, 21),
(9, 'Lorem', '2010-06-17 15:30:21', 45, 69),
(10, 'Lorem', '2008-08-02 20:16:59', 27, 11),
(11, 'Lorem ipsum dolor', '2013-01-16 08:52:20', 7, 10),
(12, 'Lorem ipsum dolor sit amet,', '2014-12-12 13:51:38', 38, 2),
(13, 'Lorem ipsum dolor sit amet, consectetuer', '2015-09-02 21:23:10', 47, 10),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2008-09-08 04:25:17', 19, 89),
(15, 'Lorem ipsum dolor sit', '2011-08-27 05:52:42', 24, 24),
(16, 'Lorem ipsum dolor', '2012-03-22 22:39:29', 48, 48),
(17, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2018-03-07 23:55:00', 8, 73),
(18, 'Lorem ipsum dolor sit amet,', '2017-09-19 09:09:24', 18, 28),
(19, 'Lorem ipsum', '2009-07-08 11:00:25', 45, 81),
(20, 'Lorem ipsum dolor sit amet, consectetuer', '2012-02-10 05:02:25', 6, 22),
(21, 'Lorem ipsum dolor sit', '2009-04-25 18:31:46', 9, 36),
(22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2013-01-22 02:33:14', 48, 100),
(23, 'Lorem ipsum', '2009-02-06 09:26:27', 27, 61),
(24, 'Lorem ipsum', '2013-10-06 09:34:19', 3, 48),
(25, 'Lorem', '2015-01-05 12:25:34', 3, 80),
(26, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2018-04-04 18:51:21', 45, 65),
(27, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2008-09-26 05:33:55', 42, 37),
(28, 'Lorem ipsum dolor sit amet, consectetuer', '2013-10-10 20:19:50', 2, 24),
(29, 'Lorem ipsum dolor sit amet,', '2012-12-11 07:16:02', 45, 46),
(30, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2009-12-22 01:52:46', 8, 29),
(31, 'Lorem ipsum dolor sit amet,', '2016-05-25 13:10:35', 43, 63),
(32, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2012-04-07 00:56:40', 32, 33),
(33, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2016-05-02 02:00:21', 46, 56),
(34, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-07-06 12:36:41', 33, 67),
(35, 'Lorem ipsum dolor sit amet, consectetuer', '2012-06-27 23:19:26', 37, 36),
(36, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2011-02-14 18:24:24', 7, 6),
(37, 'Lorem ipsum dolor sit', '2016-07-09 07:51:21', 21, 84),
(38, 'Lorem ipsum dolor', '2018-01-18 06:14:34', 45, 64),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2010-09-29 02:18:56', 1, 90),
(40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2013-12-07 13:19:15', 32, 40),
(41, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2017-04-29 03:34:13', 11, 3),
(42, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2009-08-04 00:21:23', 37, 18),
(43, 'Lorem ipsum dolor sit amet, consectetuer', '2010-01-11 14:25:42', 46, 88),
(44, 'Lorem ipsum', '2014-07-09 22:13:11', 41, 76),
(45, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2014-10-11 04:17:46', 4, 26),
(46, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2018-01-12 07:53:04', 38, 80),
(47, 'Lorem ipsum', '2014-02-26 14:59:42', 8, 26),
(48, 'Lorem ipsum dolor sit amet,', '2011-08-17 04:21:01', 40, 76),
(49, 'Lorem ipsum dolor', '2009-07-06 02:41:02', 49, 62),
(50, 'Lorem ipsum dolor sit', '2009-04-02 20:32:08', 14, 44),
(51, 'Lorem ipsum', '2012-08-14 04:30:13', 12, 65),
(52, 'Lorem ipsum dolor sit amet,', '2016-05-14 21:18:20', 31, 70),
(53, 'Lorem ipsum dolor sit amet, consectetuer', '2018-03-22 17:38:04', 23, 89),
(54, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-05-09 12:29:16', 22, 72),
(55, 'Lorem ipsum dolor sit amet, consectetuer', '2015-11-19 10:32:29', 49, 78),
(56, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2012-12-27 21:35:46', 34, 33),
(57, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2009-08-23 15:29:06', 1, 10),
(58, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2012-05-04 14:47:00', 41, 66),
(59, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2018-06-04 21:00:23', 8, 68),
(60, 'Lorem ipsum dolor sit', '2011-08-18 14:59:39', 24, 67),
(61, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2017-07-21 20:36:00', 26, 50),
(62, 'Lorem ipsum dolor sit amet, consectetuer', '2012-05-14 00:04:08', 3, 99),
(63, 'Lorem ipsum dolor sit', '2017-07-12 16:43:27', 4, 3),
(64, 'Lorem ipsum dolor sit amet,', '2015-04-26 10:29:18', 46, 86),
(65, 'Lorem ipsum dolor', '2015-09-01 15:27:53', 49, 32),
(66, 'Lorem ipsum dolor sit amet, consectetuer', '2017-06-15 02:19:26', 9, 44),
(67, 'Lorem ipsum', '2018-01-10 19:25:12', 33, 8),
(68, 'Lorem ipsum dolor sit', '2010-06-19 14:48:55', 25, 44),
(69, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2013-12-24 02:38:31', 25, 29),
(70, 'Lorem ipsum', '2017-12-25 09:48:29', 7, 13),
(71, 'Lorem', '2009-08-03 23:43:25', 13, 58),
(72, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2017-06-18 03:49:27', 25, 24),
(73, 'Lorem', '2015-07-16 14:40:07', 10, 4),
(74, 'Lorem ipsum dolor', '2014-11-03 00:39:12', 22, 4),
(75, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2015-09-03 05:43:51', 34, 64),
(76, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2009-07-11 12:33:56', 46, 10),
(77, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2012-03-18 01:45:35', 14, 55),
(78, 'Lorem ipsum dolor sit', '2009-08-28 20:05:09', 46, 6),
(79, 'Lorem', '2009-02-22 06:33:13', 3, 22),
(80, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2009-03-20 13:27:20', 23, 16),
(81, 'Lorem ipsum dolor sit amet, consectetuer', '2009-04-14 05:47:45', 29, 37),
(82, 'Lorem ipsum dolor', '2013-03-10 19:10:38', 9, 97),
(83, 'Lorem ipsum dolor sit amet,', '2014-06-12 04:09:02', 50, 98),
(84, 'Lorem ipsum dolor', '2009-12-22 12:32:58', 27, 84),
(85, 'Lorem ipsum dolor sit', '2010-04-01 04:55:31', 41, 69),
(86, 'Lorem ipsum dolor sit', '2010-09-18 22:37:10', 27, 94),
(87, 'Lorem ipsum dolor sit amet, consectetuer', '2014-11-08 06:23:37', 20, 94),
(88, 'Lorem ipsum dolor', '2012-01-21 01:44:54', 21, 57),
(89, 'Lorem ipsum dolor sit amet,', '2012-08-07 08:38:35', 27, 44),
(90, 'Lorem ipsum dolor sit', '2011-04-20 19:45:44', 4, 84),
(91, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2013-07-24 14:43:45', 44, 70),
(92, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2012-01-10 05:46:22', 29, 43),
(93, 'Lorem', '2016-05-25 21:59:37', 42, 3),
(94, 'Lorem ipsum dolor sit amet,', '2015-07-14 18:35:20', 3, 56),
(95, 'Lorem ipsum dolor', '2010-05-30 00:18:53', 37, 22),
(96, 'Lorem ipsum dolor sit amet, consectetuer', '2013-04-11 14:31:37', 19, 28),
(97, 'Lorem ipsum', '2013-03-31 00:37:05', 32, 5),
(98, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2009-06-15 15:40:14', 36, 90),
(99, 'Lorem ipsum dolor sit amet, consectetuer', '2016-03-16 10:31:10', 43, 63),
(100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2010-01-26 17:40:39', 29, 6);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `idfollowed` int(11) NOT NULL,
  `idfollower` int(11) NOT NULL,
  KEY `fk_follow_users1_idx` (`idfollowed`),
  KEY `fk_follow_users2_idx` (`idfollower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`idfollowed`, `idfollower`) VALUES
(8, 40),
(32, 22),
(14, 47),
(7, 15),
(29, 9),
(39, 50),
(18, 43),
(35, 50),
(31, 34),
(13, 44),
(48, 21),
(47, 17),
(6, 4),
(47, 40),
(8, 21),
(11, 19),
(34, 11),
(16, 8),
(14, 35),
(12, 20),
(36, 28),
(20, 5),
(34, 27),
(19, 27),
(24, 15),
(32, 14),
(16, 4),
(31, 36),
(35, 29),
(4, 15),
(32, 37),
(1, 50),
(34, 46),
(9, 39),
(34, 12),
(26, 39),
(38, 9),
(46, 47),
(36, 7),
(27, 8),
(15, 39),
(44, 22),
(40, 27),
(29, 12),
(31, 29),
(18, 50),
(19, 33),
(9, 3),
(49, 22),
(18, 48),
(15, 8),
(3, 47),
(26, 7),
(34, 1),
(40, 38),
(23, 15),
(32, 43),
(27, 40),
(16, 46),
(24, 3),
(16, 33),
(11, 21),
(2, 5),
(14, 23),
(29, 48),
(4, 29),
(42, 2),
(50, 16),
(44, 6),
(3, 32),
(11, 47),
(16, 41),
(6, 32),
(27, 42),
(8, 28),
(10, 42),
(23, 24),
(13, 7),
(32, 16),
(43, 34),
(21, 49),
(10, 18),
(39, 32),
(50, 43),
(44, 44),
(10, 32),
(50, 36),
(38, 14),
(45, 6),
(14, 18),
(41, 49),
(48, 6),
(28, 26),
(26, 45),
(50, 22),
(10, 43),
(9, 25),
(6, 13),
(9, 31),
(26, 15);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_feed`
--

DROP TABLE IF EXISTS `twitter_feed`;
CREATE TABLE IF NOT EXISTS `twitter_feed` (
  `idtwitter_feed` int(11) NOT NULL AUTO_INCREMENT,
  `twitt` text NOT NULL,
  `twitt_create` datetime DEFAULT NULL,
  `users_idusers` int(11) NOT NULL,
  PRIMARY KEY (`idtwitter_feed`),
  KEY `fk_twitter_feed_users_idx` (`users_idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `twitter_feed`
--

INSERT INTO `twitter_feed` (`idtwitter_feed`, `twitt`, `twitt_create`, `users_idusers`) VALUES
(1, 'Lorem ipsum dolor sit amet,', '2012-05-17 02:00:40', 13),
(2, 'Lorem ipsum dolor sit amet,', '2012-07-25 14:09:10', 26),
(3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2015-02-19 13:11:44', 27),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2012-05-02 10:16:32', 16),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2015-11-15 17:29:19', 17),
(6, 'Lorem ipsum dolor sit amet, consectetuer', '2012-11-12 19:09:50', 18),
(7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2010-10-07 13:05:54', 30),
(8, 'Lorem ipsum dolor sit amet, consectetuer', '2017-03-25 14:18:55', 16),
(9, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2013-03-17 12:00:35', 8),
(10, 'Lorem ipsum dolor sit amet, consectetuer', '2010-02-13 16:34:11', 17),
(11, 'Lorem', '2011-06-28 00:29:00', 29),
(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2013-08-14 08:42:12', 20),
(13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2009-12-08 04:58:24', 3),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2014-03-06 05:26:41', 37),
(15, 'Lorem ipsum dolor sit amet, consectetuer', '2014-10-26 10:42:54', 9),
(16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2012-11-16 05:41:37', 31),
(17, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2018-05-06 12:10:27', 35),
(18, 'Lorem ipsum dolor sit', '2018-06-06 18:55:16', 7),
(19, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2011-03-31 01:10:04', 36),
(20, 'Lorem ipsum', '2016-07-08 20:35:30', 8),
(21, 'Lorem ipsum dolor', '2012-02-20 12:36:38', 28),
(22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2013-03-04 18:41:33', 6),
(23, 'Lorem ipsum dolor', '2009-04-04 02:23:17', 14),
(24, 'Lorem ipsum dolor sit', '2008-10-11 16:14:15', 38),
(25, 'Lorem ipsum dolor sit amet, consectetuer', '2013-09-05 16:55:14', 40),
(26, 'Lorem ipsum dolor', '2014-03-18 13:25:50', 39),
(27, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2015-07-30 15:28:14', 10),
(28, 'Lorem ipsum dolor', '2016-01-21 04:52:35', 6),
(29, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2018-06-26 04:36:43', 35),
(30, 'Lorem ipsum', '2009-07-09 12:05:22', 14),
(31, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2017-09-04 15:35:30', 15),
(32, 'Lorem ipsum dolor sit amet, consectetuer', '2014-12-24 08:22:57', 17),
(33, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2011-09-09 10:14:48', 13),
(34, 'Lorem ipsum dolor', '2008-07-18 09:49:55', 15),
(35, 'Lorem ipsum dolor sit', '2011-09-01 09:51:15', 11),
(36, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2013-02-20 15:07:10', 19),
(37, 'Lorem', '2016-05-26 04:56:37', 5),
(38, 'Lorem ipsum', '2008-10-04 15:51:58', 30),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2011-01-17 21:59:24', 40),
(40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-03-16 15:08:58', 23),
(41, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-09-18 07:09:15', 4),
(42, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2014-02-26 09:47:35', 11),
(43, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2013-05-07 10:23:26', 31),
(44, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2011-10-08 01:45:04', 18),
(45, 'Lorem', '2014-05-22 20:45:28', 16),
(46, 'Lorem ipsum dolor sit', '2009-10-24 19:13:19', 2),
(47, 'Lorem ipsum dolor sit amet, consectetuer', '2015-02-04 16:38:15', 28),
(48, 'Lorem ipsum dolor sit amet, consectetuer', '2009-02-02 06:32:59', 24),
(49, 'Lorem ipsum dolor', '2010-09-27 03:57:03', 17),
(50, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2015-09-01 12:28:25', 39),
(51, 'Lorem', '2016-06-01 17:41:40', 35),
(52, 'Lorem ipsum dolor', '2013-09-27 09:16:27', 39),
(53, 'Lorem ipsum', '2016-08-14 09:31:56', 16),
(54, 'Lorem ipsum dolor sit amet,', '2010-08-07 08:14:42', 32),
(55, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2009-04-14 12:45:15', 31),
(56, 'Lorem', '2013-05-05 17:58:08', 29),
(57, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2008-09-03 23:29:55', 28),
(58, 'Lorem ipsum dolor sit', '2016-05-01 13:44:24', 31),
(59, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2014-11-14 21:15:52', 12),
(60, 'Lorem ipsum dolor sit amet,', '2008-09-12 02:19:13', 2),
(61, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2015-03-22 07:49:31', 19),
(62, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2011-11-01 18:39:44', 3),
(63, 'Lorem ipsum dolor sit', '2015-07-28 21:01:09', 6),
(64, 'Lorem ipsum dolor sit', '2017-11-25 08:34:50', 13),
(65, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2009-05-24 13:51:16', 28),
(66, 'Lorem ipsum dolor sit', '2012-05-25 13:19:24', 10),
(67, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2011-07-07 02:50:29', 13),
(68, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2015-06-23 00:45:35', 38),
(69, 'Lorem ipsum dolor sit amet, consectetuer', '2010-07-16 21:11:27', 36),
(70, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2017-04-06 09:19:52', 13),
(71, 'Lorem ipsum', '2018-03-14 14:49:13', 23),
(72, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2015-02-10 02:29:31', 25),
(73, 'Lorem ipsum dolor sit amet, consectetuer', '2009-03-28 02:31:49', 18),
(74, 'Lorem ipsum dolor', '2010-10-31 23:32:01', 5),
(75, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2014-08-03 03:24:40', 8),
(76, 'Lorem ipsum dolor sit amet,', '2015-04-17 21:59:11', 27),
(77, 'Lorem ipsum dolor sit amet,', '2010-05-09 20:25:37', 33),
(78, 'Lorem ipsum dolor sit amet, consectetuer', '2012-08-27 09:04:26', 33),
(79, 'Lorem', '2011-07-26 21:30:50', 13),
(80, 'Lorem ipsum dolor sit', '2012-06-23 11:46:04', 40),
(81, 'Lorem ipsum dolor', '2010-09-16 15:39:09', 20),
(82, 'Lorem', '2017-08-07 17:07:05', 10),
(83, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2012-09-23 07:04:29', 39),
(84, 'Lorem ipsum', '2014-08-21 08:53:56', 12),
(85, 'Lorem ipsum dolor sit amet, consectetuer', '2015-05-27 21:30:25', 7),
(86, 'Lorem ipsum dolor sit amet,', '2014-05-04 17:28:20', 14),
(87, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2014-11-06 01:58:51', 34),
(88, 'Lorem ipsum dolor sit amet, consectetuer', '2008-12-07 10:35:49', 28),
(89, 'Lorem ipsum dolor sit', '2008-07-31 22:07:51', 24),
(90, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2011-07-20 09:09:50', 5),
(91, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2008-11-20 05:12:47', 4),
(92, 'Lorem ipsum dolor sit amet,', '2016-10-18 19:11:11', 40),
(93, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-05-06 05:29:24', 23),
(94, 'Lorem ipsum dolor sit amet, consectetuer', '2008-12-30 17:15:48', 23),
(95, 'Lorem', '2012-11-14 02:39:52', 29),
(96, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2017-06-17 18:53:43', 14),
(97, 'Lorem ipsum dolor sit amet,', '2011-12-25 23:30:20', 14),
(98, 'Lorem ipsum dolor sit', '2011-01-25 01:13:51', 6),
(99, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-09-08 12:43:08', 10),
(100, 'Lorem ipsum', '2013-04-09 01:33:10', 28);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `bio` varchar(140) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `user_create` datetime NOT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `name`, `username`, `password`, `birthday`, `bio`, `location`, `website`, `user_create`) VALUES
(1, 'Derek', 'English', 'OKM96TPQ1SD', '1970-10-17', 'Lorem ipsum dolor sit amet,', 'San Giovanni Lipioni', 'Ap #426-4896 Ipsum. Rd.', '2012-01-15 01:32:27'),
(2, 'Nicholas', 'Woods', 'TKS91IXI9VB', '1989-10-01', 'Lorem ipsum dolor sit amet, consectetuer', 'Kilwinning', 'Ap #946-1857 Cras Avenue', '2016-03-26 08:21:42'),
(3, 'Nadine', 'Chaney', 'GBG11IUJ9GC', '1986-08-20', 'Lorem ipsum dolor sit amet,', 'Haßloch', '665-5244 A, Street', '2012-06-27 10:11:00'),
(4, 'Adrienne', 'Richards', 'DOD14OPZ8MK', '1965-07-13', 'Lorem ipsum dolor sit amet,', 'Greifswald', 'Ap #803-8726 Posuere Rd.', '2008-11-18 18:39:56'),
(5, 'Maggy', 'Lane', 'UII77DWE8QR', '1980-01-11', 'Lorem ipsum', 'San Fele', '211-7078 Vel St.', '2010-06-01 05:55:52'),
(6, 'Jarrod', 'Mcgee', 'LUH12XBS1QR', '1965-01-21', 'Lorem ipsum dolor sit amet,', 'York', '992-6461 Auctor Rd.', '2013-07-03 03:54:28'),
(7, 'Davis', 'Nguyen', 'LIC28NFG6QC', '1983-08-03', 'Lorem ipsum dolor sit amet,', 'Worcester', '3871 Felis Road', '2016-09-06 10:14:20'),
(8, 'Vernon', 'Joseph', 'SPE36AWE7XJ', '1979-09-07', 'Lorem ipsum dolor sit amet,', 'Bitterfeld-Wolfen', '4919 Ridiculus Rd.', '2011-10-17 20:57:41'),
(9, 'Vance', 'Bentley', 'BZI76EPQ3NM', '1976-08-15', 'Lorem ipsum dolor sit', 'Frascati', 'P.O. Box 856, 7709 Quam, Rd.', '2009-10-23 11:41:55'),
(10, 'Jeremy', 'Myers', 'PCZ88SFZ5XZ', '1994-06-30', 'Lorem ipsum dolor sit amet, consectetuer', 'St. Andrews', '4891 Venenatis Avenue', '2012-10-17 22:07:05'),
(11, 'Hall', 'Ball', 'KNF19AZV3HC', '1982-11-15', 'Lorem ipsum dolor sit amet,', 'Attimis', '252 Lacus. Road', '2009-10-26 01:22:25'),
(12, 'Naida', 'Walls', 'NZX21GQS4HI', '1966-02-23', 'Lorem ipsum dolor', 'Bonavista', 'P.O. Box 160, 5196 Mus. Avenue', '2009-07-10 02:24:59'),
(13, 'Caesar', 'Torres', 'JLF40TLI5FZ', '1971-12-08', 'Lorem ipsum dolor sit amet, consectetuer', 'Toernich', 'Ap #395-1613 Volutpat Rd.', '2016-08-23 06:17:55'),
(14, 'Lacy', 'Mercer', 'NSJ23YTG9ZQ', '1992-10-16', 'Lorem ipsum dolor', 'Allentown', 'P.O. Box 399, 3386 Amet, Rd.', '2011-03-16 07:32:53'),
(15, 'Jorden', 'Kerr', 'HWG36UAR8NO', '1960-06-20', 'Lorem ipsum dolor sit', 'Geertruidenberg', 'P.O. Box 745, 6945 Enim Road', '2017-09-08 16:06:11'),
(16, 'Philip', 'Crosby', 'IVJ49QWR0ZG', '1998-03-21', 'Lorem ipsum', 'Beaufays', 'Ap #477-529 Integer Street', '2014-03-17 16:52:10'),
(17, 'Levi', 'Rodgers', 'EVJ39YXJ5AM', '1990-03-04', 'Lorem ipsum dolor sit', 'Sepino', 'P.O. Box 558, 1790 Convallis Road', '2009-05-02 07:22:49'),
(18, 'Nomlanga', 'Sanders', 'VWB53HTQ1AY', '1986-11-01', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Krishnanagar', 'Ap #358-614 Neque. St.', '2011-04-11 08:35:11'),
(19, 'Kai', 'Woodward', 'TIJ76MWN7MI', '1997-09-10', 'Lorem', 'Nederhasselt', 'P.O. Box 502, 6688 Sem, St.', '2017-09-17 17:14:22'),
(20, 'Bevis', 'Peters', 'YPW53HTJ8DG', '2000-06-04', 'Lorem ipsum dolor sit', 'Dunfermline', '7444 Laoreet Street', '2014-04-09 18:13:24'),
(21, 'Keith', 'Ellison', 'FIY61GFA9HB', '1992-07-13', 'Lorem ipsum', 'Beauwelz', 'Ap #980-358 Cras Rd.', '2015-03-19 15:23:28'),
(22, 'Randall', 'Glenn', 'BHY19ONK9CP', '1964-09-25', 'Lorem ipsum dolor sit', 'Recklinghausen', '874-8625 Lacus. St.', '2014-02-13 02:35:56'),
(23, 'Barbara', 'Lester', 'RVZ38QQT1YO', '1993-12-02', 'Lorem ipsum', 'María Pinto', '954-1280 Metus St.', '2014-06-12 02:58:03'),
(24, 'Lionel', 'Mcintyre', 'FLI33DUQ2DB', '1960-06-17', 'Lorem ipsum dolor sit amet, consectetuer', 'Calder', '5359 Non Rd.', '2008-10-04 22:38:07'),
(25, 'Jenna', 'Kline', 'DWP27OXA6ID', '1991-11-20', 'Lorem ipsum dolor sit amet,', 'Ely', 'P.O. Box 846, 5077 Metus. Av.', '2016-06-17 09:56:40'),
(26, 'Caldwell', 'Johns', 'JUM82DOQ2XM', '1982-05-29', 'Lorem', 'Dallas', 'Ap #823-5315 Ligula. Road', '2009-06-20 22:53:26'),
(27, 'Rajah', 'Haley', 'PSU61EZY2NM', '1971-10-26', 'Lorem ipsum dolor', 'Tongrinne', '2392 Penatibus St.', '2015-11-18 19:00:19'),
(28, 'Catherine', 'Floyd', 'VEN56DEZ6FI', '1970-05-20', 'Lorem', 'Berwick-upon-Tweed', '365-8266 Eu St.', '2015-12-18 00:50:26'),
(29, 'Lionel', 'Oneil', 'HOY59NZB9YR', '1973-12-22', 'Lorem ipsum dolor sit amet, consectetuer', 'Masterton', 'P.O. Box 423, 477 Duis Rd.', '2017-12-09 12:34:02'),
(30, 'Bradley', 'Kent', 'AOU23WJN7HA', '1995-10-30', 'Lorem ipsum', 'Alert Bay', 'Ap #393-4765 Cras Rd.', '2013-05-08 12:46:06'),
(31, 'Nissim', 'Perkins', 'PGO56DXU6RK', '1981-10-30', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Wals-Siezenheim', 'Ap #972-296 Proin St.', '2010-10-10 10:47:19'),
(32, 'Aladdin', 'Gates', 'PFZ28DKN7WQ', '1986-01-26', 'Lorem ipsum dolor sit amet, consectetuer', 'Moulins', 'P.O. Box 582, 9655 Neque. Rd.', '2015-09-18 15:58:10'),
(33, 'Leroy', 'Short', 'WKV68WLS8IS', '1970-11-06', 'Lorem ipsum dolor sit', 'Strathcona County', '426-7111 Mauris St.', '2015-10-28 23:33:33'),
(34, 'Cruz', 'Albert', 'JII03KKW1JU', '1990-09-10', 'Lorem ipsum dolor sit amet,', 'Surbo', 'P.O. Box 249, 9973 Auctor, St.', '2018-05-03 19:57:59'),
(35, 'Brianna', 'Bradshaw', 'IMQ41XJP9FT', '1956-01-02', 'Lorem', 'Bekkerzeel', '4642 Ipsum Ave', '2013-03-26 03:29:01'),
(36, 'Martin', 'Hughes', 'EJF15YHR2SX', '1973-07-18', 'Lorem ipsum dolor', 'La Salle', '6288 Nulla Av.', '2013-08-08 07:50:12'),
(37, 'Fallon', 'Bauer', 'VXZ81MPC9OW', '1956-02-28', 'Lorem ipsum dolor', 'Sandy', 'P.O. Box 495, 665 Aliquet Av.', '2010-01-30 17:28:25'),
(38, 'Kessie', 'Love', 'EZS89VLP0ID', '1975-09-18', 'Lorem ipsum dolor', 'Dandenong', 'Ap #879-1043 Cursus St.', '2012-07-05 03:59:47'),
(39, 'Myles', 'Carlson', 'PZX57DWD2NW', '1995-02-17', 'Lorem ipsum', 'Olympia', '7926 Donec Road', '2010-04-24 21:24:39'),
(40, 'Hayley', 'Floyd', 'CBY99GHI6PQ', '1994-08-22', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Saint-Laurent', 'P.O. Box 686, 7105 Integer Ave', '2013-08-03 10:25:24'),
(41, 'Ronan', 'Harvey', 'PES69MIY5VG', '1982-08-30', 'Lorem ipsum dolor sit amet,', 'Ñuñoa', '220-3198 Duis Street', '2013-07-24 06:26:48'),
(42, 'Eaton', 'Durham', 'KYT51PCA2AX', '1974-12-25', 'Lorem', 'Raigarh', 'Ap #272-1967 Nascetur Avenue', '2014-03-22 07:47:14'),
(43, 'Jordan', 'Pitts', 'KNX81SBK4CR', '2000-02-18', 'Lorem ipsum dolor', 'Anzio', '981-6815 Dolor, Avenue', '2012-04-01 18:09:13'),
(44, 'Angelica', 'Haley', 'KDH17BEN4MW', '1999-10-06', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Newcastle', '411-6689 Orci, Avenue', '2010-06-07 09:37:50'),
(45, 'Brent', 'Orr', 'MIC36CDB3EH', '1997-06-30', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Fort Providence', 'Ap #406-6962 Duis St.', '2009-03-14 05:43:54'),
(46, 'Rhea', 'Barlow', 'GPY31EQN5SW', '1960-10-07', 'Lorem ipsum dolor', 'Milestone', '458-781 Mollis. Rd.', '2016-04-01 13:28:50'),
(47, 'Avye', 'Lucas', 'NBP83XLS1QT', '1970-01-17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Avigliano Umbro', 'P.O. Box 257, 4273 Tincidunt St.', '2013-08-16 23:49:04'),
(48, 'Yuli', 'Norman', 'FEU50LHL8OY', '1991-01-26', 'Lorem ipsum dolor', 'Bertiolo', '6067 Pellentesque Rd.', '2015-01-30 20:11:53'),
(49, 'Luke', 'Mcfarland', 'XYB99CBP4OD', '1992-12-13', 'Lorem ipsum dolor sit amet,', 'Blaenau Ffestiniog', '418 Sapien. Ave', '2012-09-20 19:08:22'),
(50, 'Barclay', 'Snyder', 'NJT53FIE8FO', '1996-04-07', 'Lorem ipsum dolor', 'Carleton', '6583 Ornare. St.', '2018-06-29 07:07:57'),
(51, 'Russell', 'Williams', 'JLQ72TPC2MG', '1974-09-01', 'Lorem ipsum dolor', 'Jefferson City', '667-8973 Rhoncus. Road', '2008-08-08 10:23:23'),
(52, 'Rosalyn', 'Lamb', 'DMO26OXF0JS', '1985-06-15', 'Lorem ipsum dolor', 'Tallahassee', 'Ap #571-2788 Et St.', '2017-10-16 19:33:11'),
(53, 'Anthony', 'Ferrell', 'MDN84LEJ9XI', '1995-01-29', 'Lorem ipsum dolor sit', 'Pichidegua', '1815 Non, Ave', '2016-06-28 10:39:10'),
(54, 'Clayton', 'Salazar', 'MIC47MUI7VR', '1960-09-28', 'Lorem ipsum dolor sit amet,', 'Castello di Godego', '409-9984 Nunc Rd.', '2014-10-11 01:13:26'),
(55, 'Preston', 'Macdonald', 'ZOG96OGT0IC', '1959-10-29', 'Lorem ipsum dolor', 'Stralsund', '9914 Pellentesque Street', '2010-07-23 15:28:49'),
(56, 'Brady', 'Mason', 'MMC02QMX1GB', '1963-10-17', 'Lorem ipsum', 'Huara', '5823 Non Avenue', '2017-01-22 10:26:59'),
(57, 'Dominic', 'Prince', 'SMA98MXG2IC', '1995-07-12', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Malonne', '144-550 Sed, Street', '2017-04-15 12:51:30'),
(58, 'Anika', 'Mcpherson', 'FKM67WJR7JY', '1968-03-16', 'Lorem ipsum', 'Ongole', '949 Integer Rd.', '2012-06-15 01:33:55'),
(59, 'Lance', 'Middleton', 'GNK52EWM3QA', '1956-05-31', 'Lorem ipsum dolor sit', 'Bracknell', 'P.O. Box 627, 3309 Tincidunt Rd.', '2012-02-06 14:10:49'),
(60, 'Maggy', 'Allison', 'QXI17MZV1IO', '1966-07-02', 'Lorem ipsum dolor', 'Dudzele', '5278 Aliquet St.', '2009-12-10 06:52:48'),
(61, 'Helen', 'Nelson', 'VZS02MMD2AT', '1982-03-14', 'Lorem ipsum dolor sit', 'Koersel', 'P.O. Box 375, 6320 Fusce Av.', '2011-08-15 14:28:41'),
(62, 'Aurelia', 'Melton', 'RGU82ZRC7FD', '1999-12-17', 'Lorem ipsum dolor', 'Palagianello', 'P.O. Box 519, 997 Nunc Av.', '2013-07-25 02:41:19'),
(63, 'Jenna', 'Erickson', 'ARX83DXH8NF', '1987-04-02', 'Lorem ipsum dolor', 'Carlton', 'Ap #477-9154 Amet Rd.', '2012-09-30 18:50:14'),
(64, 'Carolyn', 'Mcgowan', 'LWI68PZP3VH', '1986-11-11', 'Lorem ipsum dolor sit', 'San Zenone degli Ezzelini', '5481 Eu Rd.', '2014-12-22 21:40:01'),
(65, 'Benedict', 'Oneill', 'SQA86AKV0XT', '1980-12-09', 'Lorem ipsum dolor sit', 'Carahue', '577-6480 Eleifend St.', '2010-12-06 18:12:53'),
(66, 'Austin', 'Carson', 'GED68OFL1FT', '1981-10-17', 'Lorem', 'Bassiano', 'P.O. Box 201, 7129 Sit Av.', '2018-04-24 07:16:48'),
(67, 'Bruce', 'Nichols', 'NUJ39CLI9PV', '1970-08-09', 'Lorem ipsum', 'Saint-Brieuc', '690 Libero St.', '2018-02-09 23:26:46'),
(68, 'Sonya', 'Buchanan', 'JFT54XBC1ZW', '1994-07-25', 'Lorem', 'Ripacandida', 'P.O. Box 150, 9604 Eu Rd.', '2017-03-20 16:49:40'),
(69, 'Graham', 'Greer', 'GVS81RPM2OH', '1999-12-22', 'Lorem ipsum dolor', 'Tomaszów Mazowiecki', 'P.O. Box 935, 6519 Ut Rd.', '2013-12-26 20:16:33'),
(70, 'Warren', 'Wood', 'MGS86FAS9TR', '1964-11-18', 'Lorem ipsum dolor sit amet,', 'Guysborough', 'P.O. Box 132, 8549 Egestas St.', '2011-07-11 05:21:31'),
(71, 'Madeline', 'Stokes', 'PAW09JUD6WW', '1994-08-15', 'Lorem ipsum', 'Versailles', 'Ap #966-2223 Feugiat. Rd.', '2010-08-23 17:37:28'),
(72, 'Drew', 'Garner', 'KPV34RPA9OG', '1999-07-05', 'Lorem ipsum dolor sit amet,', 'Pramaggiore', 'P.O. Box 429, 5607 Nullam Av.', '2010-12-14 22:38:38'),
(73, 'Sebastian', 'Grimes', 'HCW29JEF0TX', '1966-03-24', 'Lorem ipsum', 'Acireale', 'Ap #186-7486 Hymenaeos. Ave', '2018-05-31 11:11:31'),
(74, 'Elliott', 'Weiss', 'DJE66ZUH9NS', '1964-10-08', 'Lorem ipsum dolor sit', 'Traralgon', '552 Id Avenue', '2010-01-28 23:29:13'),
(75, 'Felicia', 'Hart', 'JXF36FMY6MC', '1966-06-06', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Tarzo', '895-8750 Mollis St.', '2018-05-21 11:14:11'),
(76, 'Ira', 'Lindsey', 'OIS27FVN8WJ', '1974-04-26', 'Lorem ipsum', 'Palombaro', 'P.O. Box 922, 9271 Risus. St.', '2011-08-09 13:12:34'),
(77, 'Wyatt', 'Haney', 'ARD77CHL1UF', '1987-11-21', 'Lorem', 'Wernigerode', 'P.O. Box 772, 9633 Vitae, Rd.', '2010-09-23 03:23:04'),
(78, 'Malcolm', 'Vang', 'COJ29KCE2NH', '1970-08-30', 'Lorem ipsum', 'Dalkeith', 'P.O. Box 968, 5114 Fusce Road', '2012-09-24 06:57:07'),
(79, 'Reagan', 'Joyce', 'EFU30PVK2BA', '1986-12-11', 'Lorem ipsum dolor sit', 'Durham', 'P.O. Box 382, 1447 A, Rd.', '2018-04-29 21:16:01'),
(80, 'Kenneth', 'Gibson', 'OTP40SNK2TR', '1966-12-28', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'Halanzy', 'P.O. Box 508, 1148 Rhoncus. St.', '2014-06-30 02:36:23'),
(81, 'Gareth', 'Frye', 'ODY77XYG0WO', '1979-08-01', 'Lorem ipsum dolor sit amet,', 'Portezuelo', '2541 Sit Rd.', '2008-12-05 01:32:41'),
(82, 'Phillip', 'Paul', 'SNZ47WNW8CG', '1969-07-30', 'Lorem ipsum dolor sit amet,', 'Ercilla', '689-8207 Risus. Street', '2013-12-15 00:29:22'),
(83, 'Raven', 'Holman', 'AFW00XYR6XU', '1960-09-21', 'Lorem ipsum', 'Saint-Laurent', 'P.O. Box 449, 6710 Augue, Avenue', '2015-05-13 23:20:24'),
(84, 'Zia', 'Guerra', 'VTC59HYY0UV', '1994-05-22', 'Lorem ipsum dolor', 'Nakusp', '391-8119 Aliquam Av.', '2017-01-28 01:24:53'),
(85, 'Yuli', 'Robles', 'BLC48REZ9NK', '1963-11-13', 'Lorem ipsum', 'Aylmer', 'Ap #540-6785 Maecenas Ave', '2012-04-05 12:58:18'),
(86, 'Chandler', 'Day', 'RUS90NLW8RE', '1990-11-14', 'Lorem ipsum dolor sit', 'Bama', 'P.O. Box 131, 1612 Rhoncus. St.', '2010-06-16 07:01:49'),
(87, 'Nelle', 'Campbell', 'QJU77TFW7TZ', '1967-04-10', 'Lorem ipsum dolor sit amet,', 'Bhir', '1936 Magna Street', '2010-01-23 23:55:19'),
(88, 'Quincy', 'Campbell', 'NGM74JTZ0JF', '1999-02-03', 'Lorem', 'Virginal-Samme', 'Ap #218-922 Ornare, Road', '2018-01-28 05:08:38'),
(89, 'Angelica', 'Haley', 'IIF30DIR5FJ', '1975-02-10', 'Lorem ipsum dolor sit amet, consectetuer', 'Lauterach', '3049 Sed Av.', '2010-06-01 11:57:12'),
(90, 'Lane', 'Peterson', 'PSR73MVV4OQ', '1971-03-26', 'Lorem ipsum dolor sit amet, consectetuer', 'Montebello', 'Ap #986-6095 Non, Street', '2013-12-24 23:49:41'),
(91, 'Ryan', 'Carey', 'PUM29UXJ9HI', '1997-07-19', 'Lorem ipsum dolor sit', 'Rollegem', 'Ap #350-5623 Phasellus St.', '2016-06-27 21:57:51'),
(92, 'Yasir', 'French', 'UHD93DMG6RG', '1982-06-04', 'Lorem ipsum dolor sit amet, consectetuer', 'Pucón', '1739 Donec Av.', '2016-01-28 23:11:01'),
(93, 'Kathleen', 'Donovan', 'UQH69SHD0AJ', '1978-07-07', 'Lorem ipsum', 'Haddington', '682-7397 Pharetra. Rd.', '2017-10-22 20:53:53'),
(94, 'Felicia', 'Chaney', 'DMU40VDX6WO', '1994-01-09', 'Lorem ipsum dolor', 'Ödemiş', 'P.O. Box 327, 2887 Bibendum St.', '2015-06-19 23:43:28'),
(95, 'Oscar', 'Joseph', 'PPD96CMZ7LZ', '1967-11-15', 'Lorem', 'Belo Horizonte', 'Ap #541-3385 Quis Road', '2010-09-21 01:10:50'),
(96, 'Dane', 'Brooks', 'ZHJ01UAP8UE', '1981-08-23', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'West Valley City', 'Ap #678-6603 Proin St.', '2009-11-28 03:46:05'),
(97, 'Keegan', 'Hickman', 'BRD26UFS6OM', '1961-04-03', 'Lorem ipsum dolor', 'Indore', 'Ap #868-2905 Lectus Avenue', '2012-01-05 03:16:13'),
(98, 'Kennedy', 'Dillard', 'TWN71BZT6QX', '1976-05-13', 'Lorem ipsum dolor sit amet, consectetuer', 'Castiglione del Lago', '7711 Donec Rd.', '2018-06-03 06:47:48'),
(99, 'Ivan', 'Raymond', 'WNP28ZSB1HK', '1970-01-25', 'Lorem ipsum dolor sit amet, consectetuer', 'Los Sauces', 'Ap #192-670 Massa. Rd.', '2015-04-06 08:55:30'),
(100, 'William', 'Wilcox', 'HMP63FJA5KK', '1979-04-03', 'Lorem', 'Landelies', 'P.O. Box 302, 8326 Nascetur Rd.', '2011-10-28 12:20:18');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_twitter_feed1` FOREIGN KEY (`twitter_feed_idtwitter_feed`) REFERENCES `twitter_feed` (`idtwitter_feed`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comments_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `fk_follow_users1` FOREIGN KEY (`idfollowed`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_follow_users2` FOREIGN KEY (`idfollower`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `twitter_feed`
--
ALTER TABLE `twitter_feed`
  ADD CONSTRAINT `fk_twitter_feed_users` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
