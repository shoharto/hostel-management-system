-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2020 at 09:14 PM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utm_hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@email.com', '123456', '2016-04-04 20:31:45', '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int NOT NULL,
  `adminid` int NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'UFP', 'UFP', 'UTM Foundation Programme', '2020-06-19 19:31:42'),
(2, 'UG', 'UG', 'Undergraduate Degree', '2020-06-19 19:31:42'),
(3, 'PhD', 'PhD', 'Postgraduate Doctoral Degree', '2020-06-19 19:31:42'),
(4, 'PG', 'PG', 'Postgraduate Degree', '2020-06-19 19:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(2, 'manager', 'manager@email.com', '123456', '2020-06-23 16:35:42', '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int NOT NULL,
  `roomno` int DEFAULT NULL,
  `seater` int DEFAULT NULL,
  `feespm` int DEFAULT NULL,
  `foodstatus` int DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(5, 149, 4, 12, 0, '2009-08-19', 3, '3', 608376, 'Abigayle', 'impedit', 'Emmerich', 'Male', 0, 'anika24@example.net', 679, 'enim', 'aut', 1, '081 Nicholas Glens Suite 060\nBartolettibury, VA 82518-2979', 'Claretown', 'Tennessee', 2115, '171 Tara Point\nSouth Sebastian, IN 68566-5100', 'South Reba', 'Alaska', 4824, '1995-04-16 03:14:09', NULL),
(6, 680, 2, 12, 1, '2019-11-28', 5, '4', 448084, 'Leora', 'eaque', 'Stroman', ' Female', 1, 'jacobs.javonte@example.org', 527948485, 'consequatur', 'modi', 473879, '449 Golda Spurs Suite 598\nMyrtiestad, WA 62581-1356', 'North Emmet', 'NewYork', 6865, '4445 Rutherford Valley\nEast Deron, CT 35495', 'New Javier', 'Oklahoma', 3848, '2011-11-20 05:39:40', NULL),
(7, 981, 1, 10, 0, '1989-10-29', 9, '1', 397321, 'Gerardo', 'occaecati', 'Wolff', ' Female', 106566, 'elnora10@example.com', 798067, 'praesentium', 'officia', 0, '892 Meredith Light\nJamirport, ND 48508', 'Cronaburgh', 'Hawaii', 2187, '1893 Lola Stravenue\nKihnfort, TN 53383', 'North Jayden', 'Iowa', 7670, '1980-10-02 08:57:51', NULL),
(8, 921, 4, 20, 1, '1978-06-18', 1, '1', 159799, 'Adeline', 'et', 'Cremin', ' Female', 108567, 'ernie.lakin@example.net', 1, 'qui', 'consectetur', 226281, '7094 Meaghan Landing Apt. 111\nDooleychester, TN 03167-8266', 'Angelview', 'SouthCarolina', 5502, '28539 Dan Hill Suite 257\nMalvinaside, AK 84384', 'Aniyahfort', 'Washington', 4109, '1971-08-07 09:16:39', NULL),
(9, 249, 4, 16, 0, '2015-02-07', 4, '1', 338233, 'Darwin', 'quia', 'Roob', 'Male', 90, 'vladimir.schoen@example.net', 38, 'aliquid', 'iure', 1, '38972 Alfreda Rest Apt. 505\nWest Reva, MS 59877', 'East Janetborough', 'NorthCarolina', 7783, '80291 Kuphal Field Suite 751\nNew Daisyfort, VT 65315-2792', 'Port Earlmouth', 'Minnesota', 2353, '1975-10-26 05:33:34', NULL),
(10, 882, 2, 10, 0, '2001-10-12', 10, '1', 400704, 'Tyshawn', 'voluptatem', 'Grimes', ' Female', 94, 'donnelly.camron@example.com', 91, 'error', 'ut', 83578, '169 Casper Green Apt. 033\nNorth Presley, MT 71852', 'East Tristinville', 'Oregon', 5818, '57027 Fred Plaza\nAlfredoberg, PA 34981-6070', 'East Tommieville', 'Michigan', 5251, '2002-05-17 16:28:45', NULL),
(11, 207, 2, 16, 0, '1998-04-18', 9, '1', 373016, 'Elmer', 'tempore', 'Bode', ' Female', 104, 'ayla50@example.net', 863, 'harum', 'quas', 68, '5541 Jaiden Land\nSchusterborough, MT 15490-6441', 'Lynchburgh', 'Florida', 3273, '27215 Kertzmann Burgs\nSawaynbury, NJ 46298', 'South Maxwell', 'NorthDakota', 5310, '1995-10-18 02:16:04', NULL),
(12, 492, 3, 12, 1, '1982-12-01', 5, '3', 384770, 'Kyla', 'quia', 'Roberts', ' Female', 908, 'sasha35@example.com', 2143609598, 'vero', 'hic', 139899, '4062 Kuhic Center\nBorerside, NJ 27687-6627', 'Gusside', 'Tennessee', 1938, '53218 Ryan Neck\nWest Enoshaven, SD 35992-1608', 'North Kassandra', 'Missouri', 4629, '1991-08-09 12:39:22', NULL),
(13, 322, 1, 20, 0, '2006-10-14', 2, '2', 535853, 'Dorthy', 'et', 'Frami', 'Male', 0, 'gordon.thompson@example.net', 8692306130, 'corporis', 'nam', 1, '957 Hal Valleys\nRicebury, NC 94664', 'Lynchland', 'Virginia', 7402, '45754 Ernser Prairie Apt. 147\nLake Rafaelview, NC 79748-9159', 'West Tillmanmouth', 'Wisconsin', 2603, '1980-07-27 08:44:42', NULL),
(14, 249, 1, 16, 1, '1980-03-23', 8, '1', 126344, 'Emely', 'architecto', 'Swaniawski', 'Male', 0, 'zelma30@example.net', 205193, 'ad', 'error', 97, '9199 Alisha Branch Suite 077\nSophiaburgh, ND 92465-8198', 'Sandrinemouth', 'Minnesota', 6554, '569 Stark Shore\nNorth Lexuschester, ID 12686', 'Lennystad', 'Tennessee', 7228, '1974-04-27 10:29:55', NULL),
(15, 207, 4, 20, 1, '2017-01-10', 9, '4', 439280, 'Claud', 'asperiores', 'Friesen', 'Male', 695, 'hazle.kirlin@example.com', 1, 'repellat', 'debitis', 62, '16382 Javier Falls\nMaudeton, LA 46620-3233', 'Boyerborough', 'Pennsylvania', 1216, '629 Candida Hill Apt. 778\nKirlinshire, VA 50275', 'Maudchester', 'Michigan', 6647, '1980-08-17 21:30:33', NULL),
(16, 631, 2, 20, 1, '2017-06-03', 3, '4', 574917, 'Dawn', 'quo', 'Erdman', ' Female', 402936, 'joy92@example.net', 0, 'eum', 'voluptas', 6219244938, '396 Barbara Forest\nMekhimouth, NJ 01679-1564', 'East Darienshire', 'WestVirginia', 1291, '278 Myrl Causeway Suite 477\nLake Derek, CO 25992-3585', 'East Maddison', 'Mississippi', 1910, '2000-01-31 12:29:22', NULL),
(17, 819, 4, 12, 0, '1991-02-19', 1, '1', 436098, 'Freida', 'ut', 'Murray', ' Female', 5771108125, 'ybrakus@example.com', 1, 'ea', 'rerum', 605, '529 Whitney Islands Suite 502\nProhaskaview, KY 96265-3438', 'Franeckistad', 'Indiana', 2478, '003 Ruecker Port Suite 477\nNorth Stone, IN 86425-8628', 'East Arneton', 'Connecticut', 2948, '1985-05-22 10:44:28', NULL),
(18, 239, 4, 12, 0, '2013-06-19', 3, '4', 411026, 'Cleveland', 'blanditiis', 'Kuhic', ' Female', 0, 'rcrona@example.com', 817258, 'vel', 'eos', 30, '654 Kuhic Hills Suite 969\nEast Kailey, ND 50357', 'Peterport', 'Idaho', 1333, '2831 Kris Stravenue\nRusselville, PA 22254-6834', 'Heathcotetown', 'NewMexico', 2330, '1999-10-10 10:54:50', NULL),
(19, 123, 2, 16, 1, '1991-05-30', 7, '4', 259445, 'Roselyn', 'quidem', 'Paucek', ' Female', 1, 'huels.libbie@example.org', 854327, 'architecto', 'natus', 1, '711 O\'Keefe Mills Apt. 633\nNew Dominiqueville, MA 61685', 'East Yadira', 'NewHampshire', 4506, '9366 Gutkowski Ferry Apt. 526\nPredovicmouth, MA 09393', 'Woodrowborough', 'Iowa', 6492, '1996-12-29 14:06:21', NULL),
(20, 510, 2, 20, 1, '2018-04-14', 6, '4', 447624, 'Remington', 'et', 'Champlin', ' Female', 103, 'swaniawski.esta@example.com', 659, 'eum', 'aspernatur', 716031, '857 Kian Rapids Suite 185\nNorth Jensen, VA 16195-5590', 'South Alichester', 'Alabama', 2597, '28544 Mayert Passage\nPort Lexi, DE 24169-5186', 'East Haydenmouth', 'WestVirginia', 3626, '1975-11-14 19:00:25', NULL),
(22, 908, 2, 20, 0, '2020-06-26', 10, 'UTM Foundation Programme', 10318, 'bayes', 'qui', 'Homenick', 'Male', 23621, 'user@gmail.com', 0, 'jjj', 'jjj', 1521333533, 'hhh', 'joh', 'Edgardoville', 81310, 'hhh', 'joh', 'Edgardoville', 81310, '2020-06-23 13:32:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `seater` int DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(7, 2, 908, 21, '2006-08-02 12:10:33'),
(8, 3, 808, 16, '1982-11-04 04:06:36'),
(9, 2, 470, 12, '2002-02-06 01:15:37'),
(10, 2, 194, 12, '2017-10-13 19:41:44'),
(11, 3, 169, 16, '2007-07-14 07:10:54'),
(12, 4, 222, 20, '1981-07-28 22:04:01'),
(13, 3, 449, 12, '2012-10-22 10:02:29'),
(14, 2, 446, 12, '2004-10-07 10:15:45'),
(15, 3, 614, 16, '2009-04-19 19:42:46'),
(17, 2, 296, 10, '1972-09-28 05:27:23'),
(18, 3, 739, 10, '1995-08-01 16:33:53'),
(19, 4, 665, 12, '1999-02-23 13:40:54'),
(20, 4, 536, 10, '1971-07-07 20:58:46'),
(21, 2, 168, 10, '1973-12-09 10:56:09'),
(22, 4, 131, 12, '1997-12-22 03:45:06'),
(23, 3, 921, 16, '2002-05-06 20:25:06'),
(24, 1, 424, 12, '1989-03-26 01:19:09'),
(25, 3, 998, 20, '2015-09-07 12:49:39'),
(26, 2, 398, 12, '2000-05-03 09:25:45'),
(27, 2, 994, 10, '2010-02-07 13:40:47'),
(28, 2, 976, 16, '2000-09-14 03:23:06'),
(29, 3, 822, 16, '1993-02-21 15:30:09'),
(30, 2, 464, 20, '1990-06-29 03:22:56'),
(31, 3, 909, 10, '2003-06-23 00:09:42'),
(32, 2, 441, 10, '1975-12-18 06:02:25'),
(33, 2, 398, 12, '2010-10-02 21:55:00'),
(34, 3, 452, 10, '2004-07-14 06:07:38'),
(35, 3, 640, 20, '1972-11-11 14:44:16'),
(36, 1, 397, 20, '2018-05-11 19:09:21'),
(37, 1, 445, 10, '2018-08-05 23:42:30'),
(38, 3, 132, 12, '2017-08-04 07:17:29'),
(39, 4, 575, 10, '1993-11-04 07:15:12'),
(40, 3, 561, 16, '1975-05-08 17:49:31'),
(41, 4, 306, 10, '1974-12-10 02:14:30'),
(42, 4, 917, 20, '2006-04-08 15:28:51'),
(43, 3, 856, 10, '1999-05-06 04:33:28'),
(44, 1, 215, 12, '2007-01-11 07:39:11'),
(45, 2, 237, 20, '1989-11-22 06:20:30'),
(46, 1, 971, 20, '2009-02-09 15:10:32'),
(47, 3, 584, 12, '2003-06-24 17:30:18'),
(48, 4, 161, 12, '2003-01-02 03:05:56'),
(49, 3, 703, 20, '2006-08-07 19:19:23'),
(50, 3, 343, 12, '2018-09-08 08:38:20'),
(51, 3, 870, 16, '1981-09-28 02:10:44'),
(52, 2, 780, 10, '2001-10-30 23:46:09'),
(53, 4, 783, 12, '1984-03-22 10:26:05'),
(54, 2, 127, 20, '2015-06-03 18:53:13'),
(55, 2, 907, 16, '1991-09-21 22:16:01'),
(56, 4, 937, 16, '2014-04-27 09:47:13'),
(57, 2, 886, 10, '2004-06-03 20:40:53'),
(58, 3, 386, 16, '1982-12-17 02:46:22'),
(59, 1, 562, 10, '2013-05-04 01:03:28'),
(60, 2, 367, 10, '2000-12-26 03:58:50'),
(61, 2, 844, 10, '2007-08-27 13:55:28'),
(62, 1, 877, 12, '2009-04-05 07:41:15'),
(63, 4, 684, 12, '1982-10-03 05:13:41'),
(64, 1, 347, 16, '2012-10-31 12:43:18'),
(65, 3, 275, 12, '2006-09-02 06:55:42'),
(66, 2, 495, 20, '2004-01-13 21:51:51'),
(67, 3, 260, 20, '2006-05-20 23:50:07'),
(68, 2, 289, 12, '2006-09-24 10:44:13'),
(69, 3, 690, 20, '1977-11-15 11:22:01'),
(70, 4, 101, 12, '2009-03-09 10:09:07'),
(71, 3, 852, 10, '1970-02-09 16:23:41'),
(72, 3, 563, 16, '2011-08-12 21:42:52'),
(73, 2, 616, 16, '1990-07-29 04:59:25'),
(74, 3, 955, 12, '2018-07-21 00:11:43'),
(75, 3, 407, 12, '1992-02-15 12:01:58'),
(76, 1, 494, 16, '2012-01-25 11:06:22'),
(77, 3, 784, 20, '1975-08-28 00:50:21'),
(78, 4, 920, 10, '2018-02-20 14:46:45'),
(79, 1, 879, 20, '1978-02-24 12:48:02'),
(80, 2, 572, 10, '1996-02-28 12:55:03'),
(81, 1, 258, 12, '1982-02-07 17:33:16'),
(82, 3, 310, 12, '2008-07-09 09:42:33'),
(83, 4, 142, 20, '1977-07-19 05:55:55'),
(84, 4, 760, 10, '2006-09-13 17:52:07'),
(85, 1, 888, 12, '2019-06-18 06:24:53'),
(86, 1, 647, 16, '1982-05-23 03:05:04'),
(87, 1, 267, 20, '1991-05-26 12:37:42'),
(88, 1, 183, 16, '2007-07-30 08:47:02'),
(89, 3, 414, 12, '1977-08-28 06:33:46'),
(90, 2, 270, 20, '2008-09-03 00:40:00'),
(91, 4, 812, 16, '1987-06-05 03:42:21'),
(92, 2, 952, 20, '1986-10-31 05:27:07'),
(93, 4, 963, 12, '1986-02-23 10:06:48'),
(94, 2, 838, 20, '2016-04-16 01:23:09'),
(95, 4, 910, 12, '1988-04-13 22:04:50'),
(96, 2, 594, 10, '1975-02-11 01:50:09'),
(97, 3, 132, 16, '1992-03-22 14:36:57'),
(98, 3, 258, 20, '1994-05-01 02:59:11'),
(99, 1, 891, 16, '2018-12-02 23:24:34'),
(100, 2, 764, 12, '1986-04-01 01:52:56'),
(101, 3, 881, 10, '2006-07-10 15:11:51'),
(102, 3, 786, 20, '2015-10-25 08:24:58'),
(103, 3, 482, 12, '1976-02-22 18:13:44'),
(104, 4, 635, 16, '1970-09-20 02:37:45'),
(105, 2, 513, 16, '1992-01-19 17:40:25'),
(106, 3, 332, 20, '1994-11-13 05:26:00'),
(107, 1, 555, 20, '2020-06-23 13:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(37, 'Edythland'),
(38, 'North Johannaview'),
(39, 'Port Gretchen'),
(40, 'Hermistonfurt'),
(41, 'Edgardoville'),
(42, 'New Broderick'),
(43, 'Vonmouth'),
(44, 'North Lonnytown'),
(45, 'Lulahaven'),
(46, 'Suzannestad'),
(47, 'Riceview'),
(48, 'Coytown'),
(49, 'Johathanburgh'),
(50, 'Willardborough'),
(51, 'Port Columbus'),
(52, 'Jamilburgh'),
(53, 'East Giuseppe'),
(54, 'Port Kurt'),
(55, 'Klockostad'),
(56, 'Friesenfurt'),
(57, 'North Eulah'),
(58, 'Rolfsonborough'),
(59, 'New Alycehaven'),
(60, 'Morarhaven'),
(61, 'Felipeborough'),
(62, 'West Aliceland'),
(63, 'North Ramon'),
(64, 'Emeraldhaven'),
(65, 'Bernardside'),
(66, 'North Bertrandside'),
(67, 'Hilpertfort'),
(68, 'Elnoraborough'),
(69, 'West Javier'),
(70, 'South Lisa'),
(71, 'Port Nyahton'),
(72, 'New Misty'),
(73, 'New Alexandrine'),
(74, 'North Luciennechester'),
(75, 'Port Mitchelborough'),
(76, 'Townemouth'),
(77, 'Balistreribury'),
(78, 'Evelineport'),
(79, 'North Maye'),
(80, 'North Saige'),
(81, 'New Adeliashire'),
(82, 'West Samirview'),
(83, 'Abbottside'),
(84, 'Schowalterville'),
(85, 'West Horacestad'),
(86, 'Lake Yazminshire'),
(87, 'South Gustavehaven'),
(88, 'Nameborough'),
(89, 'West Hanktown'),
(90, 'Port Margret'),
(91, 'Faheyhaven'),
(92, 'Port Warrenside'),
(93, 'Emmerichland'),
(94, 'Lefflerside'),
(95, 'South Claudiaville'),
(96, 'Zellaberg'),
(97, 'North Roslyn'),
(98, 'North Quinten'),
(99, 'East Catherine'),
(100, 'South Lesterfort');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(11, 41, 'user@email.com', 0x0000, 'Skudai', 'Malaysia', '2020-06-23 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(21, '10318', 'bayes', 'qui', 'Homenick', 'Male', 23621, 'user@gmail.com', 'user', '1970-03-09 05:49:20', NULL, '20-06-2020 01:00:45'),
(22, '1193', 'Camila', 'voluptas', 'Bednar', ' Female', 887543, 'magdalen.sporer@example.com', 'user', '1993-03-18 17:23:31', NULL, NULL),
(23, '2556', 'Juana', 'consequuntur', 'Robel', 'Male', 0, 'derick94@example.net', 'user', '1978-06-05 05:43:43', NULL, NULL),
(24, '2472', 'Henry', 'provident', 'O\'Keefe', 'Male', 0, 'ekonopelski@example.net', 'user', '2006-02-26 03:37:31', NULL, NULL),
(25, '465', 'Abbie', 'aut', 'Corkery', ' Female', 56, 'xrogahn@example.org', 'user', '1991-11-08 23:02:06', NULL, NULL),
(26, '995', 'Melvin', 'pariatur', 'Weber', 'Male', 0, 'kboyle@example.net', 'user', '2009-09-27 09:25:33', NULL, NULL),
(27, '4253', 'Lenora', 'ratione', 'Stark', 'Male', 702, 'goodwin.kennedi@example.com', 'user', '1979-09-18 04:40:14', NULL, NULL),
(28, '4260', 'Sonya', 'fuga', 'Schamberger', ' Female', 0, 'hilton.pollich@example.net', 'user', '1994-05-04 18:34:57', NULL, NULL),
(29, '8437', 'Zackary', 'molestiae', 'Aufderhar', ' Female', 464, 'deion.renner@example.com', 'user', '2014-04-27 14:56:05', NULL, NULL),
(30, '9858', 'Mortimer', 'omnis', 'Schaefer', 'Male', 409, 'tkihn@example.org', 'user', '1979-02-11 10:25:35', NULL, NULL),
(31, '10328', 'Jamaal', 'voluptatem', 'Jones', ' Female', 4841572079, 'fpadberg@example.com', 'user', '1973-10-29 17:37:20', NULL, NULL),
(32, '1959', 'Max', 'odit', 'Bashirian', 'Male', 459, 'garrett86@example.org', 'user', '2007-03-15 06:03:19', NULL, NULL),
(33, '2213', 'Retha', 'quis', 'Abshire', ' Female', 950, 'hkuhn@example.com', 'user', '1997-10-16 15:47:21', NULL, NULL),
(34, '8708', 'Keshawn', 'ut', 'Lubowitz', ' Female', 0, 'rhea.fisher@example.org', 'user', '2003-03-08 08:39:58', NULL, NULL),
(35, '8350', 'Adriel', 'a', 'McCullough', 'Male', 308, 'tyler.renner@example.org', 'user', '1999-09-19 11:02:11', NULL, NULL),
(36, '5798', 'Stephen', 'sit', 'Wolff', 'Male', 69, 'irma.konopelski@example.org', 'user', '1975-05-12 23:25:45', NULL, NULL),
(37, '2195', 'Maggie', 'suscipit', 'Rath', ' Female', 1, 'koepp.sanford@example.org', 'user', '1988-04-25 09:47:56', NULL, NULL),
(38, '897', 'Haskell', 'doloribus', 'Klocko', 'Male', 1, 'cruickshank.fidel@example.net', 'user', '1974-06-30 00:50:02', NULL, NULL),
(39, '9887', 'Clark', 'voluptatum', 'Dickinson', 'Male', 1, 'myriam16@example.org', 'user', '1974-01-22 18:50:00', NULL, NULL),
(40, '6004', 'Jazmin', 'assumenda', 'Schmitt', ' Female', 80070, 'ahmad55@example.org', 'user', '2000-01-26 06:59:14', NULL, NULL),
(41, '0', 'Bayes', NULL, 'Shoharto', 'Male', 0, 'shoharto@gmail.com', '123456', '2020-06-20 13:17:44', NULL, NULL),
(42, '5555', 'ggg', 'gg', 'gg', 'male', 1521333533, 'shoharto@gmail.com', '123456', '2020-06-24 13:03:52', NULL, NULL),
(43, 'dfnjfhj', 'hhh', 'h', 'h', 'female', 0, 'user@gmail.com', '123456', '2020-06-24 13:08:52', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
