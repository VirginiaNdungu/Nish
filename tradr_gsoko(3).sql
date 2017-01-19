-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2017 at 09:22 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradr_gsoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) NOT NULL,
  `address` varchar(254) NOT NULL,
  `description` varchar(254) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `address`, `description`, `last_modified_date`, `created_date`, `status`) VALUES
(8, 'KILOLO', 'TODO', 'KILOLO in TODO', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(9, 'MBARALI', 'TODO', 'MBARALI in TODO', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(10, 'KATINE JOINT', 'SOROTI', 'KATINE JOINT in SOROTI', '2016-10-12 09:34:11', '2016-10-12 09:34:11', 'ACTIVE'),
(11, 'MAJENGO', 'MBARALI', 'MAJENGO in MBARALI', '2016-10-21 07:43:49', '2016-10-21 07:43:49', 'ACTIVE'),
(12, 'MBUYUNI', 'MBARALI', 'MBUYUNI in MBARALI', '2016-10-21 07:43:50', '2016-10-21 07:43:50', 'ACTIVE'),
(13, 'MAHANGO', 'MBARALI', 'MAHANGO in MBARALI', '2016-10-21 07:43:50', '2016-10-21 07:43:50', 'ACTIVE'),
(14, 'KIBAIGWA FLOUR SUPPLIES LTD', 'Dodoma', 'KIBAIGWA FLOUR SUPPLIES LTD in Dodoma', '2016-11-08 11:46:50', '2016-11-08 11:46:50', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `no_of_units` int(11) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(254) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) NOT NULL,
  `parent_category_id` bigint(20) DEFAULT NULL,
  `description` varchar(254) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_category_id`, `description`, `last_modified_date`, `created_date`, `status`) VALUES
(1000, 'Featured', NULL, 'Featured Commodities', '2016-06-21 01:00:00', '2016-06-21 00:15:00', 'ACTIVE'),
(1014, 'Maize', NULL, 'Maize', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(1015, 'Grade1', 1014, 'Grade1', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(1016, 'Paddy Rice', NULL, 'Paddy Rice', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(1017, 'Accepted', 1016, 'Accepted', '2016-10-06 13:36:30', '2016-10-06 13:36:30', 'ACTIVE'),
(1018, 'Green Grams', NULL, 'Green Grams', '2016-10-12 09:34:11', '2016-10-12 09:34:11', 'ACTIVE'),
(1019, '1', 1018, '1', '2016-10-12 09:34:11', '2016-10-12 09:34:11', 'ACTIVE'),
(1020, 'Accept', 1014, 'Accept', '2016-11-08 11:46:50', '2016-11-08 11:46:50', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `charging_info`
--

CREATE TABLE `charging_info` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `tx_id` bigint(20) DEFAULT NULL,
  `type` varchar(254) NOT NULL,
  `long_description` varchar(254) DEFAULT NULL,
  `short_description` varchar(254) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charging_info`
--

INSERT INTO `charging_info` (`id`, `invoice_id`, `tx_id`, `type`, `long_description`, `short_description`, `created_date`, `last_modified_date`) VALUES
(1, 29, 1513185, 'SYNC', NULL, NULL, '2016-10-19 05:27:37', '2016-10-19 05:27:37'),
(2, 28, 4709740, 'SYNC', NULL, NULL, '2016-10-19 09:48:16', '2016-10-19 09:48:16'),
(3, 31, 7651666, 'SYNC', NULL, NULL, '2016-10-19 09:50:32', '2016-10-19 09:50:32'),
(4, 41, 2090411, 'SYNC', NULL, NULL, '2016-10-28 06:28:13', '2016-10-28 06:28:13'),
(5, 43, 3083383, 'SYNC', NULL, NULL, '2016-10-28 06:29:19', '2016-10-28 06:29:19'),
(6, 42, 1699581, 'SYNC', NULL, NULL, '2016-10-31 06:50:21', '2016-10-31 06:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('89066598d64ecb7a3910a41c2121c0dd', '197.232.18.239', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1484641247, 'a:8:{s:9:"user_data";s:0:"";s:2:"id";s:2:"27";s:5:"fname";s:7:"Charles";s:5:"sname";s:6:"Wahome";s:5:"oname";s:0:"";s:4:"role";s:7:"MANAGER";s:6:"status";s:6:"Active";s:9:"logged_in";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `controller_users`
--

CREATE TABLE `controller_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `oname` varchar(40) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `role` varchar(30) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `controller_users`
--

INSERT INTO `controller_users` (`id`, `username`, `password`, `fname`, `surname`, `oname`, `mobile`, `email`, `role`, `code`, `status`, `modified`, `created`) VALUES
(1, 'bethuel', 'DOYW149Acb2lsgukLU16IekOFfuv3M3UgkJdJY2HJ6GEuAvnkO9Ewu6+9zm+lEMb85YXNz1MITOQMDoqDPTbgg==', 'Bethuel', 'Lulalire', 'Shem', '254720934467', 'lsbethuel@gmail.com', 'ADMIN', NULL, 'Active', NULL, '2014-07-30 12:55:35'),
(26, 'virtual', 'r46ml7lxoOKhnpaSpAZ5GeaFAh6b5IMlJ4wThxWmfNP5U+YUJBET3raJyiNQEb1qLWF+w1ojsSC58awTrKfv4A==', 'Virtual', 'City', '', '', '', 'ADMIN', NULL, 'Active', NULL, '2015-08-19 10:01:28'),
(27, 'wahome', '/sUTKBYHY3KoH+jKMT/X5hWCKa3I8G7h7zP/G1O14y6razIewLepTKOWmp28hO1bXOhB10Rt8edQEZqoe6jR8g==', 'Charles', 'Wahome', '', '254710934467', 'thewahome@gmail.com', 'MANAGER', NULL, 'Active', NULL, '2016-05-12 14:35:43'),
(28, 'george', '3uINshRnhZQi1+EspgV2ziGtXAArdkEmhqqheRxSo2m+ggY3NwBMyq7Z3cLoH+mYzpGTnw0hVekusizgHxet5g==', 'George', 'Rugut', '', '254720934461', '', 'CLERK', NULL, 'Active', NULL, '2016-05-16 15:04:41'),
(29, 'patrick', 'uxAXd0nhbR3wp5j0MJTNr2rFBTMTQs9G0LKHfmuCMq4bK0Sm99SdWTyV+SbAwePZ9xo2ErqsUcPwm3h/a7ETlQ==', 'Patrick', 'Njoroge', '', '254721122411', '', 'CLERK', NULL, 'Active', NULL, '2016-05-17 05:55:26'),
(30, 'admin1', 'lSB9hAvGjaUiCbxd2Z294BIaCJfDDK7CD5uJfUGwHhaT3iTfgts8S1xeTebt0fB9YFuueULnbu4Ts1EEd1e18g==', 'Emanuella', 'Atito', '', '254727375323', '', 'ADMIN', NULL, 'Active', NULL, '2016-05-18 10:12:50'),
(31, 'manager', 'KQ0IuvuTWxJxgHw+aOYBzaPBRYr3+jIVaRqJ6iNrq7hYWLkBnWd7FqsOI4Zb/mm7v6bH4m7QYWgWHU/6Kp/dKQ==', 'Martha', 'Njogu', '', '254727375324', '', 'MANAGER', NULL, 'Active', NULL, '2016-05-18 10:13:27'),
(32, 'clerk1', 'X2y3QfWEfNNcX10xsE4tMvSRiNo+TZkP0ktfiBgVfDbOMSlzou7WDmCdKccr7mI3o/3xt88uu6pw8CxCy/Soiw==', 'Sam', 'Ruto', '', '254727375325', '', 'CLERK', NULL, 'Active', NULL, '2016-05-18 10:14:13'),
(33, 'Martha', 'zaf609no7CVlXCo2jlWI11cQnxDWtZ7GTwuAsCqf6r+tnTfF+jdClUpkdZ85K7BM8DC1hpjKBSQ9t4+CjWZ6Og==', 'Martha', 'Njogu', '', '254712651928', '', 'MANAGER', NULL, 'Active', NULL, '2016-09-08 08:32:45'),
(34, 'MarthaN', 'aZEyG+Gs/66G1uR6tKL1k6+LC0HL+panjffPvZ5NnbQG7KpXR/dmdf4Vox1iqVGen60IllqOlrzqIdLNZaVweA==', 'Martha', 'Njogu', '', '254722636969', '', 'MANAGER', NULL, 'Active', NULL, '2016-10-12 09:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `gnote_imports`
--

CREATE TABLE `gnote_imports` (
  `product_id` int(40) UNSIGNED NOT NULL,
  `gnote_number` varchar(40) NOT NULL,
  `owner` varchar(55) NOT NULL,
  `warehouse` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL,
  `expiry_date` date NOT NULL,
  `catalog` varchar(40) NOT NULL,
  `grade` varchar(40) NOT NULL,
  `weight` bigint(40) NOT NULL,
  `reserve_price` decimal(15,2) NOT NULL,
  `bids` int(20) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `close_date` datetime DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gnote_imports`
--

INSERT INTO `gnote_imports` (`product_id`, `gnote_number`, `owner`, `warehouse`, `location`, `expiry_date`, `catalog`, `grade`, `weight`, `reserve_price`, `bids`, `status`, `invoice_id`, `created_by`, `processed_by`, `approved_by`, `created`, `close_date`, `approve_date`) VALUES
(57, 'GN0000004', 'Rudi Kilolo-Famers group', 'KILOLO', 'TODO', '2016-10-07', 'Maize', 'Grade1', 38000, '8740.00', 0, 'APPROVED', 28, 1, 33, 33, '2016-10-06 16:36:30', '2016-10-12 12:34:36', '2016-10-19 12:48:16'),
(58, 'GN0000005', 'RUDI CS MBUYUNI', 'MBARALI', 'TODO', '2016-10-07', 'Paddy Rice', 'Accepted', 540000, '208636.00', 0, 'REJECTED', NULL, 1, 33, 33, '2016-10-06 16:36:31', '2016-10-12 12:29:22', '2016-10-13 09:44:53'),
(59, 'GN0000006', 'RUDI CS MBUYUNI', 'MBARALI', 'MBARALI', '2016-10-07', 'Paddy Rice', 'Accepted', 10000, '3000.00', 0, 'APPROVED', 29, 1, 33, 33, '2016-10-12 11:03:24', '2016-10-12 12:29:10', '2016-10-19 08:27:37'),
(60, 'GN0000007', 'Katine Joint Farmers', 'KATINE JOINT', 'SOROTI', '2016-10-12', 'Green Grams', '1', 7500, '500.00', 0, 'REJECTED', NULL, 1, 34, 34, '2016-10-12 12:34:11', '2016-10-12 13:10:38', '2016-10-12 13:11:02'),
(61, 'GN0000008', 'Katine Joint Farmers', 'KATINE JOINT', 'SOROTI', '2016-10-13', 'Green Grams', '1', 10000, '5000.00', 0, 'APPROVED', 31, 1, 33, 33, '2016-10-13 07:19:23', '2016-10-13 13:58:27', '2016-10-19 12:50:32'),
(62, 'GN0000009', 'RUDI CS MAJENGO', 'MAJENGO', 'MBARALI', '2016-10-19', 'Paddy Rice', 'Accepted', 362000, '94120.00', 0, 'APPROVED', 41, 1, 33, 34, '2016-10-21 10:43:49', '2016-10-28 08:43:33', '2016-10-28 09:28:14'),
(63, 'GN0000010', 'RUDI CS MBUYUNI', 'MBUYUNI', 'MBARALI', '2016-10-19', 'Paddy Rice', 'Accepted', 540000, '140400.00', 0, 'APPROVED', 42, 1, 33, 33, '2016-10-21 10:43:50', '2016-10-28 08:47:26', '2016-10-31 09:50:21'),
(64, 'GN0000011', 'RUDI CS MAHANGO', 'MAHANGO', 'MBARALI', '2016-10-19', 'Paddy Rice', 'Accepted', 198000, '51480.00', 0, 'APPROVED', 43, 1, 33, 34, '2016-10-21 10:43:50', '2016-10-28 08:48:50', '2016-10-28 09:29:19'),
(65, 'GN0000001', 'RUDI CS MAJENGO', 'MAJENGO', 'MBARALI', '2016-10-29', 'Paddy Rice', 'Accepted', 362000, '94120.00', 0, 'ACTIVE', NULL, 1, NULL, NULL, '2016-10-28 10:57:38', NULL, NULL),
(66, 'GN0000002', 'ANNA URASA ', 'KIBAIGWA FLOUR SUPPLIES LTD', 'Dodoma', '2016-11-11', 'Maize', 'Accept', 5000, '100000.00', 0, 'PENDING_APPROVE', NULL, 1, 27, NULL, '2016-11-08 14:46:50', '2017-01-11 16:05:55', NULL),
(67, 'GN0000003', 'ANNA URASA ', 'KIBAIGWA FLOUR SUPPLIES LTD', 'Dodoma', '2016-11-11', 'Maize', 'Accept', 6000, '200000.00', 0, 'ACTIVE', NULL, 1, NULL, NULL, '2016-11-08 14:46:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(254) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `payment_instrument` varchar(254) NOT NULL,
  `account_id` varchar(254) DEFAULT NULL,
  `delivery_address` varchar(254) DEFAULT NULL,
  `status` varchar(254) NOT NULL,
  `sub_total` double DEFAULT NULL,
  `service_charges` double DEFAULT NULL,
  `currency` varchar(254) NOT NULL,
  `invoiced_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `retailer_updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_person` varchar(256) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `transport_fare` double NOT NULL,
  `total_amount` double DEFAULT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_no`, `user_id`, `payment_instrument`, `account_id`, `delivery_address`, `status`, `sub_total`, `service_charges`, `currency`, `invoiced_time`, `retailer_updated_time`, `contact_person`, `contact_no`, `transport_fare`, `total_amount`, `last_modified_date`, `created_date`) VALUES
(27, '4579062b', 146, 'GSoko Trade/GSK254718534584', NULL, NULL, 'REJECTED', 132545, 0, 'USD', '2016-10-06 14:32:12', '2016-10-06 14:32:12', NULL, NULL, 0, 132545, '2016-10-13 06:44:53', '2016-10-06 14:32:12'),
(28, 'bd081f2e', 147, 'GSoko Trade/GSK254710124158', NULL, NULL, 'CHARGING_SUCCESS', 7773, 0, 'USD', '2016-10-06 14:45:55', '2016-10-06 14:45:55', NULL, NULL, 0, 7773, '2016-10-19 09:48:16', '2016-10-06 14:45:55'),
(29, '585606a5', 149, 'GSoko Trade/GSK254710757628', NULL, NULL, 'CHARGING_SUCCESS', 3000, 0, 'USD', '2016-10-12 08:57:46', '2016-10-12 08:57:46', NULL, NULL, 0, 3000, '2016-10-19 05:27:37', '2016-10-12 08:57:46'),
(30, 'f34c115a', 150, 'GSoko Trade/GSK254724044435', NULL, NULL, 'REJECTED', 2300, 0, 'USD', '2016-10-12 09:19:20', '2016-10-12 09:19:20', NULL, NULL, 0, 2300, '2016-10-19 05:27:38', '2016-10-12 09:19:20'),
(31, '53b8fbba', 153, 'GSoko Trade/GSK254721473551', NULL, NULL, 'CHARGING_SUCCESS', 5100, 0, 'USD', '2016-10-13 10:17:46', '2016-10-13 10:17:46', NULL, NULL, 0, 5100, '2016-10-19 09:50:32', '2016-10-13 10:17:46'),
(32, 'a4f6c9de', 152, 'GSoko Trade/GSK254722990100', NULL, NULL, 'REJECTED', 1000, 0, 'USD', '2016-10-13 10:18:51', '2016-10-13 10:18:51', NULL, NULL, 0, 1000, '2016-10-19 09:50:34', '2016-10-13 10:18:51'),
(33, '8c4fedec', 154, 'GSoko Trade/GSK254722563439', NULL, NULL, 'REJECTED', 2000, 0, 'USD', '2016-10-13 10:19:00', '2016-10-13 10:19:00', NULL, NULL, 0, 2000, '2016-10-19 09:50:34', '2016-10-13 10:19:00'),
(34, '5bfc5a69', 151, 'GSoko Trade/GSK254721999411', NULL, NULL, 'REJECTED', 2000, 0, 'USD', '2016-10-13 10:19:04', '2016-10-13 10:19:04', NULL, NULL, 0, 2000, '2016-10-19 09:50:34', '2016-10-13 10:19:04'),
(35, 'e5786c4b', 145, 'GSoko Trade/GSK254722522685', NULL, NULL, 'REJECTED', 94000, 0, 'USD', '2016-10-27 13:07:59', '2016-10-27 13:07:59', NULL, NULL, 0, 94000, '2016-10-28 06:28:17', '2016-10-27 13:07:59'),
(36, '95a68cd0', 145, 'GSoko Trade/GSK254722522685', NULL, NULL, 'REJECTED', 140000, 0, 'USD', '2016-10-27 13:11:02', '2016-10-27 13:11:02', NULL, NULL, 0, 140000, '2016-10-31 06:50:32', '2016-10-27 13:11:02'),
(37, '76251fd4', 145, 'GSoko Trade/GSK254722522685', NULL, NULL, 'REJECTED', 51000, 0, 'USD', '2016-10-27 13:14:01', '2016-10-27 13:14:01', NULL, NULL, 0, 51000, '2016-10-28 06:29:21', '2016-10-27 13:14:01'),
(38, 'db175b72', 147, 'GSoko Trade/GSK254710124158', NULL, NULL, 'REJECTED', 94100, 0, 'USD', '2016-10-27 14:25:40', '2016-10-27 14:25:40', NULL, NULL, 0, 94100, '2016-10-28 06:28:17', '2016-10-27 14:25:40'),
(39, '253f2b04', 147, 'GSoko Trade/GSK254710124158', NULL, NULL, 'REJECTED', 140300, 0, 'USD', '2016-10-27 14:27:15', '2016-10-27 14:27:15', NULL, NULL, 0, 140300, '2016-10-31 06:50:32', '2016-10-27 14:27:15'),
(40, '0f0cc83c', 147, 'GSoko Trade/GSK254710124158', NULL, NULL, 'REJECTED', 51400, 0, 'USD', '2016-10-27 14:27:58', '2016-10-27 14:27:58', NULL, NULL, 0, 51400, '2016-10-28 06:29:21', '2016-10-27 14:27:58'),
(41, '6d4dcaa1', 146, 'GSoko Trade/GSK254718534584', NULL, NULL, 'CHARGING_SUCCESS', 94120, 0, 'USD', '2016-10-27 15:57:52', '2016-10-27 15:57:52', NULL, NULL, 0, 94120, '2016-10-28 06:28:13', '2016-10-27 15:57:52'),
(42, '3d32a99b', 146, 'GSoko Trade/GSK254718534584', NULL, NULL, 'CHARGING_SUCCESS', 140400, 0, 'USD', '2016-10-27 15:59:21', '2016-10-27 15:59:21', NULL, NULL, 0, 140400, '2016-10-31 06:50:21', '2016-10-27 15:59:21'),
(43, '12b9bcd9', 146, 'GSoko Trade/GSK254718534584', NULL, NULL, 'CHARGING_SUCCESS', 51480, 0, 'USD', '2016-10-27 16:00:37', '2016-10-27 16:00:37', NULL, NULL, 0, 51480, '2016-10-28 06:29:19', '2016-10-27 16:00:37'),
(44, '5070e9f9', 137, 'GSoko Trade/GSK254727375321', NULL, NULL, 'PENDING_APPROVE', 4000, NULL, 'USD', '2016-11-08 12:39:07', '2016-11-08 12:39:07', NULL, NULL, 0, NULL, '2016-11-08 12:39:07', '2016-11-08 12:39:07'),
(45, '3d4b6460', 137, 'GSoko Trade/GSK254727375321', NULL, NULL, 'PENDING_APPROVE', 1200, NULL, 'USD', '2016-11-09 12:57:01', '2016-11-09 12:57:01', NULL, NULL, 0, NULL, '2016-11-09 12:57:01', '2016-11-09 12:57:01'),
(46, 'a529d78c', 137, 'GSoko Trade/GSK254727375321', NULL, NULL, 'PENDING_APPROVE', 1000, NULL, 'USD', '2016-12-15 06:28:58', '2016-12-15 06:28:58', NULL, NULL, 0, NULL, '2016-12-15 06:28:58', '2016-12-15 06:28:58'),
(47, 'ee47a606', 137, 'GSoko Trade/GSK254727375321', NULL, NULL, 'PENDING_APPROVE', 10000, NULL, 'USD', '2017-01-09 14:11:13', '2017-01-09 14:11:13', NULL, NULL, 0, NULL, '2017-01-09 14:11:13', '2017-01-09 14:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `invoiced_products`
--

CREATE TABLE `invoiced_products` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `no_of_units` int(11) NOT NULL,
  `is_delivery_required` tinyint(1) NOT NULL,
  `status` varchar(254) NOT NULL,
  `delivered_or_issued_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoiced_products`
--

INSERT INTO `invoiced_products` (`id`, `invoice_id`, `product_id`, `no_of_units`, `is_delivery_required`, `status`, `delivered_or_issued_date`, `last_modified_date`, `created_date`) VALUES
(27, 27, 58, 132545, 0, 'REJECTED', '2016-10-06 14:32:12', '2016-10-13 06:44:53', '2016-10-06 14:32:12'),
(28, 28, 57, 7773, 0, 'ACCEPTED', '2016-10-06 14:45:55', '2016-10-19 09:48:16', '2016-10-06 14:45:55'),
(29, 29, 59, 3000, 0, 'ACCEPTED', '2016-10-12 08:57:46', '2016-10-19 05:27:37', '2016-10-12 08:57:46'),
(30, 30, 59, 2300, 0, 'REJECTED', '2016-10-12 09:19:20', '2016-10-19 05:27:38', '2016-10-12 09:19:20'),
(31, 31, 61, 5100, 0, 'ACCEPTED', '2016-10-13 10:17:46', '2016-10-19 09:50:32', '2016-10-13 10:17:46'),
(32, 32, 61, 1000, 0, 'REJECTED', '2016-10-13 10:18:51', '2016-10-19 09:50:34', '2016-10-13 10:18:51'),
(33, 33, 61, 2000, 0, 'REJECTED', '2016-10-13 10:19:00', '2016-10-19 09:50:34', '2016-10-13 10:19:00'),
(34, 34, 61, 2000, 0, 'REJECTED', '2016-10-13 10:19:04', '2016-10-19 09:50:34', '2016-10-13 10:19:04'),
(35, 35, 62, 94000, 0, 'REJECTED', '2016-10-27 13:07:59', '2016-10-28 06:28:17', '2016-10-27 13:07:59'),
(36, 36, 63, 140000, 0, 'REJECTED', '2016-10-27 13:11:02', '2016-10-31 06:50:32', '2016-10-27 13:11:02'),
(37, 37, 64, 51000, 0, 'REJECTED', '2016-10-27 13:14:01', '2016-10-28 06:29:21', '2016-10-27 13:14:01'),
(38, 38, 62, 94100, 0, 'REJECTED', '2016-10-27 14:25:40', '2016-10-28 06:28:17', '2016-10-27 14:25:40'),
(39, 39, 63, 140300, 0, 'REJECTED', '2016-10-27 14:27:15', '2016-10-31 06:50:32', '2016-10-27 14:27:15'),
(40, 40, 64, 51400, 0, 'REJECTED', '2016-10-27 14:27:58', '2016-10-28 06:29:21', '2016-10-27 14:27:58'),
(41, 41, 62, 94120, 0, 'ACCEPTED', '2016-10-27 15:57:52', '2016-10-28 06:28:14', '2016-10-27 15:57:52'),
(42, 42, 63, 140400, 0, 'ACCEPTED', '2016-10-27 15:59:21', '2016-10-31 06:50:21', '2016-10-27 15:59:21'),
(43, 43, 64, 51480, 0, 'ACCEPTED', '2016-10-27 16:00:37', '2016-10-28 06:29:19', '2016-10-27 16:00:37'),
(44, 44, 66, 4000, 0, 'PENDING_APPROVE', '2016-11-08 12:39:07', '2016-11-08 12:39:07', '2016-11-08 12:39:07'),
(45, 45, 66, 1200, 0, 'PENDING_APPROVE', '2016-11-09 12:57:01', '2016-11-09 12:57:01', '2016-11-09 12:57:01'),
(46, 46, 66, 1000, 0, 'PENDING_APPROVE', '2016-12-15 06:28:58', '2016-12-15 06:28:58', '2016-12-15 06:28:58'),
(47, 47, 66, 10000, 0, 'PENDING_APPROVE', '2017-01-09 14:11:13', '2017-01-09 14:11:13', '2017-01-09 14:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) NOT NULL,
  `address` varchar(254) DEFAULT NULL,
  `state` varchar(254) DEFAULT NULL,
  `province` varchar(254) DEFAULT NULL,
  `country` varchar(254) DEFAULT NULL,
  `profession` varchar(254) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `user_id`, `first_name`, `last_name`, `address`, `state`, `province`, `country`, `profession`, `created_at`, `last_modified`) VALUES
(1, 1, 'Stevens', 'Tikolors', 'Castle streets c', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2011-11-23 10:52:52', '2012-05-11 11:43:46'),
(2, 2, 'James', 'Marumba', 'Park avenue', 'Mombasa', 'Northern', 'Kenya', 'Businessman', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(3, 3, 'Henry', 'Diaoda', 'Hyde park', 'Nairobi', 'Central', 'Kenya', 'Businessman', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(4, 4, 'Paul', 'Odumbe', 'Queens boulevard', 'Mombasa', 'Southern', 'Kenya', 'Businessman', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(5, 5, 'Carl', 'Shaza', 'Johns street', 'Nairobi', 'Central', 'Kenya', 'Businessman', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(6, 6, 'David', 'Smith', 'Mary school street', 'Jinja', 'Southern', 'Kenya', 'Doctor', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(7, 8, 'Allen', 'Richards', NULL, NULL, NULL, NULL, NULL, '2012-02-08 06:58:37', '2012-02-08 06:58:37'),
(8, 9, 'Allen', 'Richards', NULL, NULL, NULL, NULL, NULL, '2012-02-08 07:05:07', '2012-02-08 07:05:07'),
(9, 10, 'Solomon', 'Richards', NULL, NULL, NULL, NULL, NULL, '2012-02-08 07:32:01', '2012-02-08 07:32:01'),
(10, 11, 'Richard', 'Stallmen', NULL, NULL, NULL, NULL, NULL, '2012-02-08 09:56:33', '2012-02-08 09:56:33'),
(11, 12, 'JADE', 'HARis', 'Colombo', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2012-02-09 05:59:05', '2012-03-15 10:26:36'),
(12, 13, 'kumudu', 'liyanage', 'asdf', 'Nirobi', 'Central', 'UAS', 'Doctor', '2012-02-10 08:48:40', '2012-03-15 11:04:02'),
(13, 14, 'kumudu', 'liyanage', NULL, NULL, NULL, NULL, NULL, '2012-02-14 07:08:18', '2012-02-14 07:08:18'),
(14, 15, 'gfbn', 'kiyg', NULL, NULL, NULL, NULL, NULL, '2012-02-14 12:04:56', '2012-02-14 12:04:56'),
(15, 16, 'fhfh', 'gvjj', NULL, NULL, NULL, NULL, NULL, '2012-02-14 12:07:07', '2012-02-14 12:07:07'),
(16, 17, 'hcnk', 'hvjk', NULL, NULL, NULL, NULL, NULL, '2012-02-15 05:37:15', '2012-02-15 05:37:15'),
(17, 18, 'dcg', 'vcbv', NULL, NULL, NULL, NULL, NULL, '2012-02-15 07:05:26', '2012-02-15 07:05:26'),
(18, 19, 'hfhj', 'hfjj', NULL, NULL, NULL, NULL, NULL, '2012-02-15 08:57:46', '2012-02-15 08:57:46'),
(19, 20, 'gchggjg', 'gfjb', NULL, NULL, NULL, NULL, NULL, '2012-02-15 09:05:00', '2012-02-15 09:05:00'),
(20, 21, 'pavithra', 'Liyanage', 'matara', 'Nirobi', 'Central', 'UAS', 'Doctor', '2012-03-06 05:45:06', '2012-03-06 06:18:13'),
(21, 22, 'fgxjkh', 'ufbkvcv', 'sdf', 'Nirobi', 'Central', 'UAS', 'Doctor', '2012-03-06 14:50:02', '2012-03-13 08:42:45'),
(22, 23, 'sal', 'mal', NULL, NULL, NULL, NULL, NULL, '2012-03-13 08:43:31', '2012-03-13 08:43:31'),
(23, 24, 'carolyne', 'mbeneka', NULL, NULL, NULL, NULL, NULL, '2012-03-15 07:30:52', '2012-03-15 07:30:52'),
(24, 25, 'shavantha', 'welcome', NULL, 'Other', 'Western', 'Other', 'Student', '2012-03-22 07:50:04', '2012-03-22 07:50:04'),
(25, 26, 'retailer4', 'ret', NULL, NULL, NULL, NULL, NULL, '2012-03-27 10:29:30', '2012-03-27 10:29:30'),
(26, 27, 'kasun', 'ruwan', NULL, NULL, NULL, NULL, NULL, '2012-03-27 10:31:37', '2012-03-27 10:31:37'),
(27, 28, 'Sophia', 'Wanjiru', NULL, NULL, NULL, NULL, NULL, '2012-04-18 08:01:34', '2012-04-18 08:01:34'),
(28, 29, 'testWD', 'testSD', NULL, NULL, NULL, NULL, NULL, '2012-04-26 11:02:21', '2012-04-26 11:02:21'),
(29, 30, 'akila', 'akila', NULL, NULL, NULL, NULL, NULL, '2012-05-02 09:10:47', '2012-05-02 09:10:47'),
(30, 31, 'Sophia', 'Ndirangu', 'virtual city', 'Nairobi', 'Central', 'Kenya', 'Student', '2012-05-10 07:16:10', '2012-05-10 07:16:10'),
(31, 32, 'Elsie', 'Maina', NULL, NULL, NULL, NULL, NULL, '2012-05-10 09:45:14', '2012-05-10 09:45:14'),
(32, 33, 'kiptoo', 'kirui', NULL, NULL, NULL, 'Kenya', NULL, '2012-05-10 10:44:51', '2012-08-14 11:46:46'),
(33, 34, 'kiptoo', 'kirui', NULL, NULL, NULL, NULL, NULL, '2012-05-11 08:12:09', '2012-05-11 09:27:57'),
(34, 35, 'Steve', 'Tikolo', '67A Colombo', 'Galle', 'Southern', 'SriLanka', 'Doctor', '2012-05-11 09:03:02', '2012-05-11 09:03:02'),
(36, 37, 'Steve', 'Tikolo', '67A Colombo', 'Galle', 'Southern', 'SriLanka', 'Doctor', '2012-05-11 11:01:13', '2012-05-11 11:01:13'),
(37, 38, 'randula', 'randula', NULL, NULL, NULL, NULL, NULL, '2012-05-15 04:02:06', '2012-05-15 04:02:06'),
(38, 39, 'hasitha', 'hasitha', NULL, NULL, NULL, NULL, NULL, '2012-05-15 06:11:26', '2012-05-15 06:11:26'),
(40, 41, 'Testa5', 'Rosta', 'Central', 'Nirobi', 'Central', 'Kenya', 'Student', '2012-05-17 07:59:48', '2012-08-10 15:18:54'),
(41, 42, 'root', 'root', NULL, NULL, NULL, NULL, NULL, '2012-05-22 07:01:53', '2012-05-22 07:01:53'),
(42, 43, 'Robin', 'Van der sar', 'test', 'Machkos', 'North Eastern', 'Kenya', 'Employed', '2012-05-30 07:40:41', '2012-05-30 07:40:41'),
(43, 44, 'Oscar', 'Lwoga', NULL, 'Nairobi', NULL, 'Kenya', NULL, '2012-06-05 07:47:03', '2012-06-05 07:47:03'),
(44, 45, 'aaaa', 'bbbb', NULL, NULL, NULL, NULL, NULL, '2012-06-05 08:30:00', '2012-06-05 08:30:00'),
(45, 46, 'kiptoo', 'collins', NULL, NULL, NULL, NULL, NULL, '2012-06-05 09:03:18', '2012-06-05 09:04:04'),
(46, 47, 'kirui', 'kiptoo', NULL, NULL, NULL, NULL, NULL, '2012-06-14 08:45:34', '2012-06-14 08:45:34'),
(47, 48, 'rose', 'mugo', NULL, NULL, NULL, NULL, NULL, '2012-06-14 09:47:23', '2012-06-14 09:47:23'),
(48, 7, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, '2012-06-05 07:47:03', '2012-06-05 07:47:03'),
(49, 49, 'John', 'Muraguri', NULL, NULL, NULL, NULL, NULL, '2012-06-22 12:02:17', '2012-06-22 12:02:17'),
(50, 50, 'peter', 'kinuthia', NULL, NULL, NULL, NULL, NULL, '2012-07-06 14:34:11', '2012-07-06 14:34:11'),
(51, 51, 'john', 'waibochi', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-10 10:14:33', '2012-07-10 10:14:33'),
(52, 52, 'wilfred', 'wamugunda', 'updated', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2012-07-25 06:17:04', '2012-08-14 08:15:10'),
(53, 53, 'hewani', 'hewani', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:15:20', '2012-07-25 08:15:20'),
(54, 54, 'john', 'hewani', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:16:48', '2012-08-06 10:14:11'),
(55, 55, 'Client', '1', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:21:42', '2012-07-25 08:21:42'),
(56, 56, 'client', '2', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:29:16', '2012-07-25 08:29:16'),
(57, 57, 'john', 'onyango', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:31:14', '2012-07-25 08:31:14'),
(58, 58, 'Simon', 'Karanja', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:32:38', '2012-08-06 10:23:28'),
(59, 59, 'haron', 'wafula', 'update', 'Nirobi', 'Central', 'Kenya', 'Student', '2012-07-25 08:34:46', '2012-08-10 16:50:48'),
(60, 60, 'geoffrey', 'oteki', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:35:06', '2012-08-07 00:08:48'),
(61, 61, 'client', '4', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:37:31', '2012-08-07 13:47:56'),
(62, 62, 'Naftali', 'Mbuto', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:38:45', '2012-08-06 10:25:50'),
(63, 63, 'hewani', 'hewani', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:41:21', '2012-07-25 08:41:21'),
(64, 64, 'caroline', 'kagume', 'Xem', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2012-07-25 08:45:33', '2012-08-08 14:44:27'),
(65, 65, 'lime', 'hewani', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:49:24', '2012-08-06 10:17:43'),
(66, 66, 'Eleine', 'sukali', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:50:05', '2012-08-06 10:50:14'),
(67, 67, 'james', 'mugo', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:55:32', '2012-08-06 10:22:05'),
(68, 68, 'kevin', 'nyamari', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 08:58:16', '2012-08-06 10:41:20'),
(69, 69, 'elizabeth', 'mugo', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:02:42', '2012-08-06 17:57:02'),
(70, 70, 'kevin', 'murimi', 'Colombis', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2012-07-25 09:04:03', '2012-08-08 14:39:05'),
(71, 71, 'robert', 'mathenge', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:04:22', '2012-08-06 11:13:56'),
(72, 72, 'joyce', 'akello', 'Emba', 'Nirobi', 'Nairobi', 'Kenya', 'Student', '2012-07-25 09:07:52', '2012-08-11 05:26:14'),
(73, 73, 'leah', 'musuya', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:12:22', '2012-08-07 12:39:02'),
(74, 74, 'client', '30', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:21:16', '2012-07-25 09:21:16'),
(75, 75, 'client', '10', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:25:00', '2012-07-25 09:25:00'),
(76, 76, 'hewani', 'hewani', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:25:07', '2012-07-25 09:25:07'),
(77, 77, 'jane', 'njeri', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:30:43', '2012-07-25 09:30:43'),
(78, 78, 'Florence', 'Nyokabi', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:36:23', '2012-08-06 10:20:23'),
(79, 79, 'andrew', 'kiplagat', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:47:41', '2012-07-25 09:47:41'),
(80, 80, 'Edna', 'Nyamolo', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:54:45', '2012-08-06 10:14:09'),
(81, 81, 'nzilani', 'keli', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-25 09:57:42', '2012-08-06 10:16:57'),
(82, 82, 'Mike', 'Njagi', NULL, 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2012-07-27 13:38:31', '2012-07-27 13:38:31'),
(83, 83, 'Njoro', 'Kitindi', NULL, 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2012-07-27 13:40:52', '2012-07-27 13:40:52'),
(84, 84, 'kim', 'tina', NULL, NULL, NULL, 'Kenya', NULL, '2012-07-31 13:27:04', '2012-07-31 13:27:04'),
(85, 85, 'cecilia', 'mugo', NULL, NULL, NULL, NULL, NULL, '2012-08-07 08:52:01', '2012-08-07 09:06:47'),
(86, 86, 'carol', 'carol', NULL, NULL, NULL, 'Kenya', NULL, '2012-08-07 09:50:31', '2012-08-07 09:50:31'),
(87, 87, 'audio', 'static', NULL, NULL, NULL, NULL, NULL, '2012-08-07 10:38:16', '2012-08-07 10:40:14'),
(88, 88, 'carol', 'mutuku', NULL, NULL, NULL, 'Kenya', NULL, '2012-08-07 10:43:19', '2012-08-07 10:43:19'),
(89, 89, 'daniel', 'danco', NULL, NULL, NULL, NULL, NULL, '2012-08-07 11:27:27', '2012-08-07 11:27:27'),
(90, 90, 'test', 'test', NULL, NULL, NULL, NULL, NULL, '2012-08-07 12:27:55', '2012-08-07 12:27:55'),
(91, 91, 'nalaka', 'perera', NULL, NULL, NULL, NULL, NULL, '2012-08-16 06:27:52', '2012-08-16 06:27:52'),
(92, 92, 'mike', 'mikey', NULL, NULL, NULL, NULL, NULL, '2012-10-01 13:26:24', '2012-10-01 13:26:24'),
(93, 93, 'Kevin', 'Munene', NULL, NULL, NULL, 'Kenya', NULL, '2014-05-13 06:35:07', '2014-05-13 06:35:07'),
(94, 94, 'Stella', 'Kinyua', NULL, NULL, NULL, 'Kenya', NULL, '2014-05-13 06:38:35', '2014-05-13 06:38:35'),
(95, 95, 'Titus', 'Kirunda', 'virtual city', 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2014-05-19 14:49:58', '2014-05-19 14:49:58'),
(96, 96, 'Benson', 'Malombe', NULL, NULL, NULL, NULL, NULL, '2014-05-20 08:26:57', '2014-05-20 08:26:57'),
(97, 97, 'Nyandis', 'supermarket', NULL, NULL, NULL, NULL, NULL, '2014-05-30 10:26:08', '2014-05-30 10:26:08'),
(98, 98, 'rebecca', 'chebet', NULL, NULL, NULL, 'Kenya', NULL, '2014-05-30 10:26:49', '2014-05-30 10:26:49'),
(99, 99, 'Genesis', 'Supermarket', NULL, NULL, NULL, NULL, NULL, '2014-05-30 11:05:33', '2014-05-30 11:05:33'),
(100, 100, 'Riziki', 'supermarket', NULL, NULL, NULL, NULL, NULL, '2014-05-30 13:28:01', '2014-05-30 13:28:01'),
(101, 101, 'Gmart', 'supermarket', NULL, NULL, NULL, NULL, NULL, '2014-05-30 14:29:15', '2014-05-30 14:29:15'),
(102, 102, 'Southerd', 'supermarket', NULL, NULL, NULL, NULL, NULL, '2014-05-30 16:11:47', '2014-05-30 16:11:47'),
(103, 103, 'prizeworthy', 'prize', NULL, NULL, NULL, NULL, NULL, '2014-06-04 07:59:54', '2014-06-04 07:59:54'),
(104, 104, 'stageviewminimart', 'stageview', NULL, NULL, NULL, NULL, NULL, '2014-06-04 12:01:28', '2014-06-04 12:01:28'),
(105, 105, 'Gakenia', 'Gakenia', NULL, NULL, NULL, NULL, NULL, '2014-06-04 13:40:39', '2014-06-04 13:40:39'),
(107, 107, 'Elizabeth', 'Matheka', NULL, NULL, NULL, NULL, NULL, '2014-06-11 06:02:19', '2014-06-11 06:02:19'),
(108, 108, 'wabuti', 'supermarket', NULL, NULL, NULL, NULL, NULL, '2014-06-11 09:40:46', '2014-06-11 09:40:46'),
(109, 109, 'Discount', 'stores', 'Thika', 'Nirobi', 'Central', 'Kenya', 'Doctor', '2014-06-12 06:42:48', '2014-06-20 08:49:16'),
(110, 110, 'dingdong', 'enterprise', NULL, NULL, NULL, NULL, NULL, '2014-06-12 13:25:41', '2014-06-12 13:25:41'),
(111, 111, 'Bethuel', 'Shem', NULL, NULL, NULL, NULL, NULL, '2014-06-16 07:59:11', '2014-06-16 07:59:11'),
(112, 112, 'Lillian', 'Owino', NULL, NULL, NULL, NULL, NULL, '2014-06-17 06:48:02', '2014-06-17 06:48:02'),
(113, 113, 'Rupa', 'Traders', NULL, NULL, NULL, NULL, NULL, '2014-06-17 08:19:40', '2014-06-17 08:19:40'),
(114, 114, 'Tumaini', 'shop', NULL, NULL, NULL, NULL, NULL, '2014-06-17 09:01:40', '2014-06-17 09:01:40'),
(115, 115, 'Nderitu', 'shop', NULL, NULL, NULL, NULL, NULL, '2014-06-17 09:27:36', '2014-06-17 09:27:36'),
(116, 116, 'Lillian', 'Akinyi', NULL, NULL, NULL, NULL, NULL, '2014-06-18 07:16:07', '2014-06-18 07:16:07'),
(117, 117, 'Esther', 'Karinga', NULL, NULL, NULL, NULL, NULL, '2014-06-20 05:50:09', '2014-06-20 05:50:09'),
(118, 118, 'mary', 'mella', NULL, NULL, NULL, NULL, NULL, '2014-06-24 11:57:50', '2014-06-24 11:57:50'),
(119, 119, 'Tony', 'stores', NULL, NULL, NULL, NULL, NULL, '2014-06-27 08:22:08', '2014-06-27 08:22:08'),
(120, 120, 'Francis', 'Kathoka', NULL, NULL, NULL, NULL, NULL, '2014-06-27 08:24:02', '2014-06-27 08:24:02'),
(121, 121, 'Faith', 'Kibor', NULL, NULL, NULL, NULL, NULL, '2014-06-27 10:15:54', '2014-06-27 10:15:54'),
(123, 123, 'tester', 'test', NULL, NULL, NULL, NULL, NULL, '2014-06-30 07:45:00', '2014-06-30 07:45:00'),
(124, 124, 'Peter', 'Mugo', NULL, NULL, NULL, NULL, NULL, '2014-07-10 06:27:42', '2014-07-10 06:27:42'),
(125, 125, 'Bethuel', 'Shem', NULL, NULL, NULL, NULL, NULL, '2014-12-15 07:40:01', '2015-07-10 13:31:35'),
(126, 126, 'Diana', 'Karimi', '2341-00200,Nairobi', 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2015-06-30 05:43:51', '2015-06-30 05:43:51'),
(127, 127, 'DEDAN', 'KIMATHI', NULL, 'Nakuru', 'Eastern', 'Kenya', 'Unemployed', '2015-07-07 07:50:17', '2015-07-28 09:52:47'),
(128, 128, 'famer1', 'user', NULL, NULL, NULL, 'Kenya', NULL, '2015-07-07 14:24:23', '2015-07-07 14:24:23'),
(129, 129, 'Krishna', 'Giri', 'Kathmandu, Nepal', 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2015-07-15 10:09:45', '2015-07-15 10:09:45'),
(130, 130, 'Bethuel', 'Bethuel', NULL, NULL, NULL, NULL, NULL, '2015-07-17 01:57:09', '2015-07-17 01:57:09'),
(131, 131, 'Krishna', 'Giri', NULL, NULL, NULL, NULL, NULL, '2015-07-22 14:53:07', '2015-07-23 07:38:51'),
(132, 132, 'Rajive', 'Kumar', NULL, 'Nairobi', 'Central', 'Kenya', 'Unemployed', '2015-07-23 07:36:09', '2015-07-23 07:36:09'),
(133, 133, 'Kelvin', 'Karungu', NULL, NULL, NULL, 'Kenya', NULL, '2015-07-23 11:40:38', '2015-07-23 11:40:38'),
(134, 134, 'Karungu', 'Kelvin', NULL, NULL, NULL, 'Kenya', NULL, '2015-08-11 15:37:52', '2015-08-11 15:37:52'),
(135, 135, 'Jackline', 'Mutisya', NULL, NULL, NULL, 'Kenya', NULL, '2015-09-11 13:10:07', '2015-09-11 13:10:07'),
(136, 136, 'Joyce', 'Maget', NULL, NULL, NULL, 'Kenya', NULL, '2016-03-04 07:04:56', '2016-03-04 07:04:56'),
(137, 137, 'Dennis', 'Maina', NULL, NULL, 'Nairobi', 'Kenya', 'Employed', '2016-03-10 07:46:24', '2016-03-10 07:46:24'),
(138, 138, 'Brian', 'ndunda', 'nairobiu', 'Nairobi', 'Nairobi', 'Kenya', 'Employed', '2016-03-10 08:46:40', '2016-03-10 08:46:40'),
(139, 139, 'Dennis', 'Gathage', NULL, 'Nairobi', 'Nairobi', 'Kenya', 'Millers', '2016-05-18 10:26:06', '2016-05-18 10:26:06'),
(140, 140, 'Janet', 'Ngombalu', NULL, NULL, NULL, 'Kenya', NULL, '2016-05-26 05:39:24', '2016-05-26 05:39:24'),
(141, 141, 'Martha', 'Njogu', NULL, NULL, 'Nairobi', 'Kenya', 'Trade Organization', '2016-08-17 12:14:18', '2016-08-17 12:14:18'),
(142, 142, 'Hello', 'Kenya', NULL, NULL, NULL, 'Kenya', 'Trade Organization', '2016-09-29 09:59:26', '2016-09-29 09:59:26'),
(143, 143, 'Hello', 'Kenya', NULL, NULL, NULL, 'Kenya', 'Trade Organization', '2016-09-29 10:02:26', '2016-09-29 10:02:26'),
(144, 144, 'Hello', 'Kenya', NULL, NULL, NULL, 'Kenya', 'Millers', '2016-09-30 06:01:12', '2016-09-30 06:01:12'),
(145, 145, 'Asiza', 'Kahonga', NULL, 'Other', 'Southern', 'Tanzania', 'Millers', '2016-10-06 13:45:44', '2016-10-06 13:45:44'),
(146, 146, 'Ezekia', 'Wilson', NULL, 'Other', 'Southern', 'Tanzania', 'Millers', '2016-10-06 13:49:23', '2016-10-06 13:49:23'),
(147, 147, 'Krispin', 'Malekela', NULL, 'Other', 'Southern', 'Tanzania', 'Millers', '2016-10-06 13:57:05', '2016-10-06 13:57:05'),
(148, 148, 'Raphael', 'Group', NULL, NULL, NULL, 'Kenya', 'Trade Organization', '2016-10-12 05:50:38', '2016-10-12 05:50:38'),
(149, 149, 'Raphael', 'Group', NULL, 'Other', 'Northern', 'Tanzania', 'Trade Organization', '2016-10-12 08:09:24', '2016-10-12 08:09:24'),
(150, 150, 'G2L', 'G2L', NULL, NULL, 'Northern', 'Tanzania', 'Trade Organization', '2016-10-12 09:09:17', '2016-10-12 09:09:17'),
(151, 151, 'NOEL', 'KIMANI', 'P.O. BOX 75683-00200\r\nNAIROBI', 'Nairobi', 'Eastern', 'Kenya', 'Millers', '2016-10-13 09:47:42', '2016-10-13 09:47:42'),
(152, 152, 'Stella', 'Kimemia', 'P.O.Box 5383 00506\r\nNairobi', 'Nairobi', NULL, 'Kenya', 'Millers', '2016-10-13 09:48:40', '2016-10-13 09:48:40'),
(153, 153, 'LINUS MUTHARI', 'K', NULL, 'Nairobi', 'Northern', 'Kenya', 'Trade Organization', '2016-10-13 09:50:42', '2016-10-13 09:50:42'),
(154, 154, 'Jane', 'Nguru', '12446-00100', 'Nairobi', 'Eastern', 'Kenya', 'Millers', '2016-10-13 09:53:07', '2016-10-13 09:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) NOT NULL,
  `description` varchar(254) NOT NULL,
  `price_amount` double NOT NULL,
  `currency` varchar(254) NOT NULL,
  `is_in_stock` tinyint(1) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price_amount`, `currency`, `is_in_stock`, `last_modified_date`, `created_date`, `status`) VALUES
(57, 'GN0000004', 'Commodity: Grade1, Weight: 38000, Warehouse KILOLO, Location TODO', 1, 'KES', 1, '2016-10-12 09:34:36', '2016-10-06 13:36:30', 'DELETED'),
(58, 'GN0000005', 'Commodity: Accepted, Weight: 540000, Warehouse MBARALI, Location TODO', 1, 'KES', 1, '2016-10-12 09:29:22', '2016-10-06 13:36:30', 'DELETED'),
(59, 'GN0000006', 'Commodity: Accepted, Weight: 10000, Warehouse MBARALI, Location MBARALI', 1, 'KES', 1, '2016-10-12 09:29:10', '2016-10-12 08:03:24', 'DELETED'),
(60, 'GN0000007', 'Commodity: 1, Weight: 7500, Warehouse KATINE JOINT, Location SOROTI', 1, 'KES', 1, '2016-10-12 10:10:38', '2016-10-12 09:34:11', 'DELETED'),
(61, 'GN0000008', 'Commodity: 1, Weight: 10000, Warehouse KATINE JOINT, Location SOROTI', 1, 'KES', 1, '2016-10-13 10:58:27', '2016-10-13 04:19:23', 'DELETED'),
(62, 'GN0000009', 'Commodity: Accepted, Weight: 362000, Warehouse MAJENGO, Location MBARALI', 1, 'KES', 1, '2016-10-28 05:43:33', '2016-10-21 07:43:49', 'DELETED'),
(63, 'GN0000010', 'Commodity: Accepted, Weight: 540000, Warehouse MBUYUNI, Location MBARALI', 1, 'KES', 1, '2016-10-28 05:47:26', '2016-10-21 07:43:49', 'DELETED'),
(64, 'GN0000011', 'Commodity: Accepted, Weight: 198000, Warehouse MAHANGO, Location MBARALI', 1, 'KES', 1, '2016-10-28 05:48:50', '2016-10-21 07:43:50', 'DELETED'),
(65, 'GN0000001', 'Commodity: Accepted, Weight: 362000, Warehouse MAJENGO, Location MBARALI', 1, 'KES', 1, '2016-11-08 11:41:34', '2016-10-28 07:57:38', 'DELETED'),
(66, 'GN0000002', 'Commodity: Accept, Weight: 5000, Warehouse KIBAIGWA FLOUR SUPPLIES LTD, Location Dodoma', 1, 'KES', 1, '2017-01-11 13:05:55', '2016-11-08 11:46:50', 'DELETED'),
(67, 'GN0000003', 'Commodity: Accept, Weight: 6000, Warehouse KIBAIGWA FLOUR SUPPLIES LTD, Location Dodoma', 1, 'KES', 1, '2016-11-08 11:46:50', '2016-11-08 11:46:50', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `product_available_branch`
--

CREATE TABLE `product_available_branch` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_available_branch`
--

INSERT INTO `product_available_branch` (`id`, `product_id`, `branch_id`, `last_modified_date`, `created_date`) VALUES
(58, 57, 8, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(59, 58, 9, '2016-10-06 13:36:31', '2016-10-06 13:36:31'),
(60, 59, 9, '2016-10-12 08:03:24', '2016-10-12 08:03:24'),
(61, 60, 10, '2016-10-12 09:34:11', '2016-10-12 09:34:11'),
(62, 61, 10, '2016-10-13 04:19:23', '2016-10-13 04:19:23'),
(63, 62, 11, '2016-10-21 07:43:49', '2016-10-21 07:43:49'),
(64, 63, 12, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(65, 64, 13, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(66, 65, 11, '2016-10-28 07:57:38', '2016-10-28 07:57:38'),
(67, 66, 14, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(68, 67, 14, '2016-11-08 11:46:50', '2016-11-08 11:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `is_default`, `last_modified_date`, `created_date`) VALUES
(172, 57, 1000, 0, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(173, 57, 1014, 0, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(174, 57, 1015, 1, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(175, 58, 1000, 0, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(176, 58, 1016, 0, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(177, 58, 1017, 1, '2016-10-06 13:36:30', '2016-10-06 13:36:30'),
(178, 59, 1000, 0, '2016-10-12 08:03:24', '2016-10-12 08:03:24'),
(179, 59, 1016, 0, '2016-10-12 08:03:24', '2016-10-12 08:03:24'),
(180, 59, 1017, 1, '2016-10-12 08:03:24', '2016-10-12 08:03:24'),
(181, 60, 1000, 0, '2016-10-12 09:34:11', '2016-10-12 09:34:11'),
(182, 60, 1018, 0, '2016-10-12 09:34:11', '2016-10-12 09:34:11'),
(183, 60, 1019, 1, '2016-10-12 09:34:11', '2016-10-12 09:34:11'),
(184, 61, 1000, 0, '2016-10-13 04:19:23', '2016-10-13 04:19:23'),
(185, 61, 1018, 0, '2016-10-13 04:19:23', '2016-10-13 04:19:23'),
(186, 61, 1019, 1, '2016-10-13 04:19:23', '2016-10-13 04:19:23'),
(187, 62, 1000, 0, '2016-10-21 07:43:49', '2016-10-21 07:43:49'),
(188, 62, 1016, 0, '2016-10-21 07:43:49', '2016-10-21 07:43:49'),
(189, 62, 1017, 1, '2016-10-21 07:43:49', '2016-10-21 07:43:49'),
(190, 63, 1000, 0, '2016-10-21 07:43:49', '2016-10-21 07:43:49'),
(191, 63, 1016, 0, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(192, 63, 1017, 1, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(193, 64, 1000, 0, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(194, 64, 1016, 0, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(195, 64, 1017, 1, '2016-10-21 07:43:50', '2016-10-21 07:43:50'),
(196, 65, 1000, 0, '2016-10-28 07:57:38', '2016-10-28 07:57:38'),
(197, 65, 1016, 0, '2016-10-28 07:57:38', '2016-10-28 07:57:38'),
(198, 65, 1017, 1, '2016-10-28 07:57:38', '2016-10-28 07:57:38'),
(199, 66, 1000, 0, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(200, 66, 1014, 0, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(201, 66, 1020, 1, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(202, 67, 1000, 0, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(203, 67, 1014, 0, '2016-11-08 11:46:50', '2016-11-08 11:46:50'),
(204, 67, 1020, 1, '2016-11-08 11:46:50', '2016-11-08 11:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `type` varchar(254) NOT NULL,
  `url` varchar(254) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `retailer_branches`
--

CREATE TABLE `retailer_branches` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer_branches`
--

INSERT INTO `retailer_branches` (`id`, `user_id`, `branch_id`, `last_modified_date`, `created_date`) VALUES
(3, 125, 2, '2015-07-10 13:31:58', '2015-07-10 13:31:58'),
(5, 131, 2, '2015-07-23 07:39:14', '2015-07-23 07:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `retailer_info`
--

CREATE TABLE `retailer_info` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `po_notify_required` tinyint(1) NOT NULL,
  `po_notify_method` varchar(254) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `msisdn` varchar(254) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer_info`
--

INSERT INTO `retailer_info` (`id`, `user_id`, `po_notify_required`, `po_notify_method`, `email`, `msisdn`, `created_at`, `last_modified`) VALUES
(1, 125, 1, 'EMAIL', 'info@localhost.com', NULL, '2014-12-15 07:40:01', '2015-07-10 13:31:35'),
(2, 131, 1, 'EMAIL', 'idkrishna@gmail.com', NULL, '2015-07-22 14:53:07', '2015-07-23 07:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `sf_guard_group`
--

CREATE TABLE `sf_guard_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sf_guard_group`
--

INSERT INTO `sf_guard_group` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'Administrator group', '2011-11-10 07:55:17', '2011-11-10 07:55:17'),
(2, 'RETAILER', 'Retailer group', '2011-11-10 07:55:17', '2011-11-10 07:55:17'),
(3, 'SUBSCRIBER', 'Normal user group', '2011-11-10 07:55:17', '2011-11-10 07:55:17'),
(4, 'RETAILER_SUBSCRIBER', 'Retailer/Subscriber Group', '2011-11-10 07:55:17', '2011-11-10 07:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `sf_guard_group_permission`
--

CREATE TABLE `sf_guard_group_permission` (
  `group_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sf_guard_group_permission`
--

INSERT INTO `sf_guard_group_permission` (`group_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 2, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 3, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 6, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 23, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 24, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 2, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 3, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 4, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 5, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 6, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 7, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 8, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 9, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 10, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 11, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 12, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 13, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 14, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 15, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 16, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 17, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 18, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 19, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 20, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 21, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 22, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 25, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 26, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(2, 26, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(1, 26, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(3, 27, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 2, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 3, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 4, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 5, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 6, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 7, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 8, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 9, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 10, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 11, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 12, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 13, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 14, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 15, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 16, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 17, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 18, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 19, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 20, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 21, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 22, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 23, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 24, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 25, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 26, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 27, '2011-10-10 07:55:17', '2011-10-10 07:55:17'),
(4, 28, '2012-05-08 07:55:17', '2012-05-08 07:55:17'),
(3, 28, '2012-05-08 07:55:17', '2012-05-08 07:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `sf_guard_permission`
--

CREATE TABLE `sf_guard_permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sf_guard_permission`
--

INSERT INTO `sf_guard_permission` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator permission', '2011-11-10 07:55:17', '2011-11-10 07:55:17'),
(2, 'ROLE_LOGIN', 'Retailer/User Login permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(3, 'ROLE_LOGOUT', 'Retailer/User Logout permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(4, 'ROLE_VERIFY_MSISDN', 'Normal User Verify Msisdn permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(5, 'ROLE_CHANGE_MSISDN', 'Normal User Change Msisdn permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(6, 'ROLE_CHANGE_PASSWORD', 'Normal User Change Password permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(7, 'ROLE_CHANGE_MPIN', 'Normal User Change Mpin permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(8, 'ROLE_VIEW_PROFILE', 'Normal User View Profile permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(9, 'ROLE_UPDATE_PROFILE', 'Normal User Update Profile permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(10, 'ROLE_QUERY_PI', 'Normal User Query Pi permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(11, 'ROLE_GET_CATEGORIES', 'Normal User Get Categories permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(12, 'ROLE_SEARCH_PRODUCTS', 'Normal User Search permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(13, 'ROLE_GET_FEATURED_PRODUCTS', 'Normal User get Feature Products permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(14, 'ROLE_ADD_TO_CART', 'Normal User Add to Cart permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(15, 'ROLE_VIEW_CART', 'Normal User View Cart permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(16, 'ROLE_SEARCH_CART', 'Normal User Search permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(17, 'ROLE_REMOVE_FROM_CART', 'Normal User Remove From Cart permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(18, 'ROLE_GET_DELIVERY_FEE', 'Normal User Get Delivery Fee permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(19, 'ROLE_CHECKOUT', 'Normal User Checkout permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(20, 'ROLE_BUY_NOW', 'Normal User Buy Now permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(21, 'ROLE_VIEW_PURCHASE_HISTORY', 'Normal User View Purchase permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(22, 'ROLE_SEARCH_PURCHASE_HISTORY', 'Normal User Logout permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(23, 'ROLE_RETAILER_VIEW_INVOICES', 'Retailer view Invoices permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(24, 'ROLE_RETAILER_UPDATE_INVOICES', 'Retailer Update Invoices permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(25, 'ROLE_FORGOT_PASSWORD', 'Normal User Change password', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(26, 'ROLE_VIEW_INVOICES', 'View Invoices permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(27, 'ROLE_EMAIL_INVOICE', 'Normal User Email Invoice permission', '2011-11-01 13:25:17', '2011-11-01 13:25:17'),
(28, 'ROLE_SUBSCRIBER', 'Subscriber Permission', '2012-05-08 07:55:17', '2012-05-08 07:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `sf_guard_user_group`
--

CREATE TABLE `sf_guard_user_group` (
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sf_guard_user_group`
--

INSERT INTO `sf_guard_user_group` (`user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(2, 2, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(3, 2, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(4, 4, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(5, 4, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(6, 3, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(7, 1, '2011-11-20 10:41:00', '2011-11-20 10:41:00'),
(8, 3, '2012-02-08 06:58:38', '2012-02-08 06:58:38'),
(9, 3, '2012-02-08 07:05:13', '2012-02-08 07:05:13'),
(10, 3, '2012-02-08 07:32:02', '2012-02-08 07:32:02'),
(11, 3, '2012-02-08 09:56:34', '2012-02-08 09:56:34'),
(12, 3, '2012-02-09 05:59:05', '2012-02-09 05:59:05'),
(13, 3, '2012-02-10 08:48:42', '2012-02-10 08:48:42'),
(14, 3, '2012-02-14 07:08:22', '2012-02-14 07:08:22'),
(15, 3, '2012-02-14 12:04:57', '2012-02-14 12:04:57'),
(16, 3, '2012-02-14 12:07:09', '2012-02-14 12:07:09'),
(17, 3, '2012-02-15 05:37:17', '2012-02-15 05:37:17'),
(18, 3, '2012-02-15 07:05:27', '2012-02-15 07:05:27'),
(19, 3, '2012-02-15 08:57:49', '2012-02-15 08:57:49'),
(20, 3, '2012-02-15 09:05:01', '2012-02-15 09:05:01'),
(21, 3, '2012-03-06 05:45:09', '2012-03-06 05:45:09'),
(22, 3, '2012-03-06 14:50:03', '2012-03-06 14:50:03'),
(23, 3, '2012-03-13 08:43:31', '2012-03-13 08:43:31'),
(24, 3, '2012-03-15 07:30:52', '2012-03-15 07:30:52'),
(25, 3, '2012-03-22 07:50:07', '2012-03-22 07:50:07'),
(26, 2, '2012-03-27 10:29:30', '2012-03-27 10:29:30'),
(27, 2, '2012-03-27 10:31:37', '2012-03-27 10:31:37'),
(28, 3, '2012-04-18 08:01:38', '2012-04-18 08:01:38'),
(29, 3, '2012-04-26 11:02:26', '2012-04-26 11:02:26'),
(30, 3, '2012-05-02 09:10:54', '2012-05-02 09:10:54'),
(31, 3, '2012-05-10 07:16:28', '2012-05-10 07:16:28'),
(32, 1, '2012-05-10 09:45:14', '2012-05-10 09:45:14'),
(33, 3, '2012-05-10 10:44:54', '2012-05-10 10:44:54'),
(34, 2, '2012-05-11 08:12:09', '2012-05-11 08:12:09'),
(35, 3, '2012-05-11 09:03:03', '2012-05-11 09:03:03'),
(36, 3, '2012-05-11 09:35:47', '2012-05-11 09:35:47'),
(37, 3, '2012-05-11 11:01:16', '2012-05-11 11:01:16'),
(38, 3, '2012-05-15 04:02:13', '2012-05-15 04:02:13'),
(39, 3, '2012-05-15 06:11:33', '2012-05-15 06:11:33'),
(40, 3, '2012-05-15 07:54:06', '2012-05-15 07:54:06'),
(41, 3, '2012-05-17 07:59:58', '2012-05-17 07:59:58'),
(42, 1, '2012-05-22 07:01:53', '2012-05-22 07:01:53'),
(43, 3, '2012-05-30 07:40:43', '2012-05-30 07:40:43'),
(44, 3, '2012-06-05 07:47:04', '2012-06-05 07:47:04'),
(45, 3, '2012-06-05 08:30:01', '2012-06-05 08:30:01'),
(46, 2, '2012-06-05 09:03:18', '2012-06-05 09:03:18'),
(47, 2, '2012-06-14 08:45:34', '2012-06-14 08:45:34'),
(48, 3, '2012-06-14 09:47:23', '2012-06-14 09:47:23'),
(50, 3, '2012-07-06 14:34:12', '2012-07-06 14:34:12'),
(51, 3, '2012-07-10 10:14:34', '2012-07-10 10:14:34'),
(52, 3, '2012-07-25 06:17:08', '2012-07-25 06:17:08'),
(53, 3, '2012-07-25 08:15:22', '2012-07-25 08:15:22'),
(54, 3, '2012-07-25 08:16:50', '2012-07-25 08:16:50'),
(55, 3, '2012-07-25 08:21:44', '2012-07-25 08:21:44'),
(56, 3, '2012-07-25 08:29:17', '2012-07-25 08:29:17'),
(57, 3, '2012-07-25 08:31:15', '2012-07-25 08:31:15'),
(58, 3, '2012-07-25 08:32:39', '2012-07-25 08:32:39'),
(59, 3, '2012-07-25 08:34:47', '2012-07-25 08:34:47'),
(60, 3, '2012-07-25 08:35:08', '2012-07-25 08:35:08'),
(61, 3, '2012-07-25 08:37:33', '2012-07-25 08:37:33'),
(62, 3, '2012-07-25 08:38:46', '2012-07-25 08:38:46'),
(63, 3, '2012-07-25 08:41:22', '2012-07-25 08:41:22'),
(64, 3, '2012-07-25 08:45:35', '2012-07-25 08:45:35'),
(65, 3, '2012-07-25 08:49:25', '2012-07-25 08:49:25'),
(66, 3, '2012-07-25 08:50:07', '2012-07-25 08:50:07'),
(67, 3, '2012-07-25 08:55:33', '2012-07-25 08:55:33'),
(68, 3, '2012-07-25 08:58:17', '2012-07-25 08:58:17'),
(69, 3, '2012-07-25 09:02:44', '2012-07-25 09:02:44'),
(70, 3, '2012-07-25 09:04:04', '2012-07-25 09:04:04'),
(71, 3, '2012-07-25 09:04:23', '2012-07-25 09:04:23'),
(72, 3, '2012-07-25 09:07:53', '2012-07-25 09:07:53'),
(73, 3, '2012-07-25 09:12:24', '2012-07-25 09:12:24'),
(74, 3, '2012-07-25 09:21:17', '2012-07-25 09:21:17'),
(75, 3, '2012-07-25 09:25:02', '2012-07-25 09:25:02'),
(76, 3, '2012-07-25 09:25:09', '2012-07-25 09:25:09'),
(77, 3, '2012-07-25 09:30:44', '2012-07-25 09:30:44'),
(78, 3, '2012-07-25 09:36:25', '2012-07-25 09:36:25'),
(79, 3, '2012-07-25 09:47:42', '2012-07-25 09:47:42'),
(80, 3, '2012-07-25 09:54:46', '2012-07-25 09:54:46'),
(81, 3, '2012-07-25 09:57:43', '2012-07-25 09:57:43'),
(82, 3, '2012-07-27 13:38:36', '2012-07-27 13:38:36'),
(83, 3, '2012-07-27 13:40:53', '2012-07-27 13:40:53'),
(84, 3, '2012-07-31 13:27:07', '2012-07-31 13:27:07'),
(85, 3, '2012-08-07 08:52:02', '2012-08-07 08:52:02'),
(86, 3, '2012-08-07 09:50:33', '2012-08-07 09:50:33'),
(87, 3, '2012-08-07 10:38:17', '2012-08-07 10:38:17'),
(88, 3, '2012-08-07 10:43:20', '2012-08-07 10:43:20'),
(89, 3, '2012-08-07 11:27:30', '2012-08-07 11:27:30'),
(90, 2, '2012-08-07 12:27:54', '2012-08-07 12:27:54'),
(91, 3, '2012-08-16 06:27:53', '2012-08-16 06:27:53'),
(92, 1, '2012-10-01 13:26:24', '2012-10-01 13:26:24'),
(93, 3, '2014-05-13 06:35:07', '2014-05-13 06:35:07'),
(94, 3, '2014-05-13 06:38:36', '2014-05-13 06:38:36'),
(95, 3, '2014-05-19 14:49:59', '2014-05-19 14:49:59'),
(96, 3, '2014-05-20 08:26:57', '2014-05-20 08:26:57'),
(97, 3, '2014-05-30 10:26:08', '2014-05-30 10:26:08'),
(98, 3, '2014-05-30 10:26:49', '2014-05-30 10:26:49'),
(99, 3, '2014-05-30 11:05:34', '2014-05-30 11:05:34'),
(100, 3, '2014-05-30 13:28:01', '2014-05-30 13:28:01'),
(101, 3, '2014-05-30 14:29:16', '2014-05-30 14:29:16'),
(102, 3, '2014-05-30 16:11:47', '2014-05-30 16:11:47'),
(103, 3, '2014-06-04 07:59:55', '2014-06-04 07:59:55'),
(104, 3, '2014-06-04 12:01:28', '2014-06-04 12:01:28'),
(105, 3, '2014-06-04 13:40:39', '2014-06-04 13:40:39'),
(106, 3, '2014-06-05 05:57:23', '2014-06-05 05:57:23'),
(107, 3, '2014-06-11 06:02:19', '2014-06-11 06:02:19'),
(108, 3, '2014-06-11 09:40:46', '2014-06-11 09:40:46'),
(109, 3, '2014-06-12 06:42:49', '2014-06-12 06:42:49'),
(110, 3, '2014-06-12 13:25:42', '2014-06-12 13:25:42'),
(111, 3, '2014-06-16 07:59:11', '2014-06-16 07:59:11'),
(112, 3, '2014-06-17 06:48:03', '2014-06-17 06:48:03'),
(113, 3, '2014-06-17 08:19:41', '2014-06-17 08:19:41'),
(114, 3, '2014-06-17 09:01:41', '2014-06-17 09:01:41'),
(115, 3, '2014-06-17 09:27:36', '2014-06-17 09:27:36'),
(116, 3, '2014-06-18 07:16:11', '2014-06-18 07:16:11'),
(117, 3, '2014-06-20 05:50:10', '2014-06-20 05:50:10'),
(118, 3, '2014-06-24 11:57:51', '2014-06-24 11:57:51'),
(119, 3, '2014-06-27 08:22:08', '2014-06-27 08:22:08'),
(120, 3, '2014-06-27 08:24:02', '2014-06-27 08:24:02'),
(121, 3, '2014-06-27 10:15:54', '2014-06-27 10:15:54'),
(122, 3, '2014-06-30 06:33:02', '2014-06-30 06:33:02'),
(123, 3, '2014-06-30 07:45:00', '2014-06-30 07:45:00'),
(124, 3, '2014-07-10 06:27:43', '2014-07-10 06:27:43'),
(125, 2, '2014-12-15 07:40:01', '2014-12-15 07:40:01'),
(126, 3, '2015-06-30 05:43:51', '2015-06-30 05:43:51'),
(127, 3, '2015-07-07 07:50:18', '2015-07-07 07:50:18'),
(128, 3, '2015-07-07 14:24:24', '2015-07-07 14:24:24'),
(129, 3, '2015-07-15 10:09:46', '2015-07-15 10:09:46'),
(130, 1, '2015-07-17 01:57:09', '2015-07-17 01:57:09'),
(131, 2, '2015-07-22 14:53:07', '2015-07-22 14:53:07'),
(132, 3, '2015-07-23 07:36:10', '2015-07-23 07:36:10'),
(133, 3, '2015-07-23 11:40:38', '2015-07-23 11:40:38'),
(134, 3, '2015-08-11 15:37:53', '2015-08-11 15:37:53'),
(135, 3, '2015-09-11 13:10:08', '2015-09-11 13:10:08'),
(136, 3, '2016-03-04 07:04:57', '2016-03-04 07:04:57'),
(137, 3, '2016-03-10 07:46:25', '2016-03-10 07:46:25'),
(138, 3, '2016-03-10 08:46:41', '2016-03-10 08:46:41'),
(139, 3, '2016-05-18 10:26:07', '2016-05-18 10:26:07'),
(140, 3, '2016-05-26 05:39:24', '2016-05-26 05:39:24'),
(141, 3, '2016-08-17 12:14:20', '2016-08-17 12:14:20'),
(142, 3, '2016-09-29 09:59:27', '2016-09-29 09:59:27'),
(143, 3, '2016-09-29 10:02:27', '2016-09-29 10:02:27'),
(144, 3, '2016-09-30 06:01:13', '2016-09-30 06:01:13'),
(145, 3, '2016-10-06 13:45:44', '2016-10-06 13:45:44'),
(146, 3, '2016-10-06 13:49:23', '2016-10-06 13:49:23'),
(147, 3, '2016-10-06 13:57:20', '2016-10-06 13:57:20'),
(148, 3, '2016-10-12 05:50:39', '2016-10-12 05:50:39'),
(149, 3, '2016-10-12 08:09:24', '2016-10-12 08:09:24'),
(150, 3, '2016-10-12 09:09:17', '2016-10-12 09:09:17'),
(151, 3, '2016-10-13 09:47:42', '2016-10-13 09:47:42'),
(152, 3, '2016-10-13 09:48:41', '2016-10-13 09:48:41'),
(153, 3, '2016-10-13 09:50:43', '2016-10-13 09:50:43'),
(154, 3, '2016-10-13 09:53:08', '2016-10-13 09:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_info`
--

CREATE TABLE `subscriber_info` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `mpin` varchar(254) NOT NULL,
  `year_of_birth` varchar(254) NOT NULL,
  `msisdn` varchar(254) NOT NULL,
  `mothers_maiden_name` varchar(254) NOT NULL,
  `identity_no` varchar(254) NOT NULL,
  `verification_code` varchar(254) DEFAULT NULL,
  `verification_codes_sent` int(11) DEFAULT NULL,
  `last_verified_code_sent_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber_info`
--

INSERT INTO `subscriber_info` (`id`, `user_id`, `mpin`, `year_of_birth`, `msisdn`, `mothers_maiden_name`, `identity_no`, `verification_code`, `verification_codes_sent`, `last_verified_code_sent_time`, `created_at`, `last_modified`) VALUES
(1, 1, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254702122579', 'Jennifer', '892204071V', '802136', 1, '2011-11-23 10:52:52', '2011-11-23 10:52:52', '2012-06-22 06:14:08'),
(2, 6, '81dc9bdb52d04dc20036dbd8313ed055', '1980', '254703116592', 'Debra', '802534891V', '589645', 1, '2011-11-23 10:52:52', '2011-11-23 10:52:52', '2011-11-23 10:52:52'),
(3, 8, 'c20ad4d76fe97759aa27a0c99bff6710', '1988', '254712323232', 'ythis', '1234', '559634', 1, '2012-02-08 06:58:38', '2012-02-08 06:58:37', '2012-02-08 06:58:37'),
(4, 9, 'c20ad4d76fe97759aa27a0c99bff6710', '1988', '254713232323', 'ythis', '1234', '882679', 1, '2012-02-08 07:05:13', '2012-02-08 07:05:07', '2012-02-08 07:05:07'),
(5, 10, 'c20ad4d76fe97759aa27a0c99bff6710', '1988', '254712121212', 'ythis', '1234', '516246', 1, '2012-02-08 07:32:02', '2012-02-08 07:32:01', '2012-02-08 07:32:01'),
(6, 11, 'c20ad4d76fe97759aa27a0c99bff6710', '1988', '254716565658', 'Jane', '1234', '717612', 1, '2012-02-08 09:56:34', '2012-02-08 09:56:33', '2012-02-08 09:56:33'),
(7, 12, 'c20ad4d76fe97759aa27a0c99bff6710', '1988', '254702122578', 'JANE', '1234', NULL, NULL, '2012-02-09 05:59:05', '2012-02-09 05:59:05', '2012-03-15 10:26:36'),
(8, 13, 'bcbc93a39ba88bd1e21b10005f659eb5', '1979', '254702122577', 'might', 'tivttih755', '150468', 1, '2012-02-10 08:48:42', '2012-02-10 08:48:40', '2012-05-04 04:40:29'),
(9, 14, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254723232323', 'mofdh', '36378557', '882596', 1, '2012-02-14 07:08:22', '2012-02-14 07:08:18', '2012-02-14 07:08:18'),
(10, 15, 'fcea920f7412b5da7be0cf42b8c93759', '1942', '254712121213', 'jbdv', 'gzghfnn', '982239', 1, '2012-02-14 12:04:57', '2012-02-14 12:04:56', '2012-02-14 12:04:56'),
(11, 16, 'fcea920f7412b5da7be0cf42b8c93759', '1942', '254728989898', 'migf', '4644678', '192023', 1, '2012-02-14 12:07:09', '2012-02-14 12:07:07', '2012-02-14 12:07:07'),
(12, 17, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254729898989', 'klkjhgfdsazxcvbbjhfßbkf5dhkbdhnv', 'vhui', '309966', 1, '2012-02-15 05:37:17', '2012-02-15 05:37:15', '2012-02-15 05:37:15'),
(13, 18, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254723568965', 'hdgj', 'fhhyjfg', '443291', 1, '2012-02-15 07:05:27', '2012-02-15 07:05:26', '2012-02-15 07:05:26'),
(14, 19, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254723532323', 'hfgj', 'gdjgf', '969687', 1, '2012-02-15 08:57:49', '2012-02-15 08:57:46', '2012-02-15 08:57:46'),
(15, 20, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254721598623', 'jdhjdf', 'grjgdf', '768206', 1, '2012-02-15 09:05:01', '2012-02-15 09:05:00', '2012-02-15 09:05:00'),
(16, 21, 'bcbc93a39ba88bd1e21b10005f659eb5', '1991', '254707445771', 'maaa', 'gvjffjgdfjjf', '242341', 1, '2012-03-06 05:45:09', '2012-03-06 05:45:06', '2012-03-06 06:18:13'),
(17, 22, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254707445773', 'ffjfcbh', 'bdvhhhb', '124100', 1, '2012-03-06 15:00:00', '2012-03-06 14:50:02', '2012-03-13 08:42:45'),
(18, 23, 'bcbc93a39ba88bd1e21b10005f659eb5', '1942', '254707445775', 'amma', 'ggkjgdskj', '861814', 1, '2012-03-13 08:43:31', '2012-03-13 08:43:31', '2012-03-13 08:43:31'),
(19, 24, '29fdff891569187da8e5ed4f7a6ea4c8', '1983', '254727548222', 'mwikali', '23221785', NULL, NULL, '2012-03-15 07:30:52', '2012-03-15 07:30:52', '2012-03-15 07:30:52'),
(20, 25, 'b59c67bf196a4758191e42f76670ceba', '1983', '254700000000', 'mother', '123456789', '407926', 3, '2012-08-16 07:40:11', '2012-03-22 07:50:04', '2012-08-16 07:40:11'),
(21, 28, '81dc9bdb52d04dc20036dbd8313ed055', '1942', '254723328800', 'Nyambura', '24682354', '481649', 1, '2012-04-18 08:01:38', '2012-04-18 08:01:34', '2012-04-18 08:01:34'),
(22, 29, 'e10adc3949ba59abbe56e057f20f883e', '1985', '254712358963', 'mothersds', '123565asa', '916849', 1, '2012-04-26 11:02:26', '2012-04-26 11:02:21', '2012-04-26 11:02:21'),
(23, 30, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254702122566', 'maiden', '1234', '186131', 1, '2012-05-02 09:10:54', '2012-05-02 09:10:47', '2012-05-10 11:06:52'),
(24, 31, '39cec6d4d21b5dade7544dab6881423e', '1991', '254727739180', 'wanjiru', '24682354', '149472', 1, '2012-05-10 07:16:28', '2012-05-10 07:16:10', '2012-05-10 07:16:10'),
(25, 33, '81dc9bdb52d04dc20036dbd8313ed055', '1988', '254727175860', 'lucy', '27496085', '892037', 1, '2012-05-10 10:44:54', '2012-05-10 10:44:51', '2012-08-14 11:46:46'),
(26, 35, 'd74a214501c1c40b2c77e995082f3587', '1989', '254712323607', 'Jennifer', '892204071V', '365239', 2, '2012-05-11 10:55:48', '2012-05-11 09:03:02', '2012-05-11 10:55:48'),
(28, 37, 'd74a214501c1c40b2c77e995082f3587', '1989', '254712323600', 'Jennifer', '892204071V', '753446', 2, '2012-05-11 11:33:15', '2012-05-11 11:01:13', '2012-05-11 11:33:15'),
(29, 38, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254713265981', 'maiden', '1234', '424567', 1, '2012-05-15 04:02:13', '2012-05-15 04:02:06', '2012-05-15 04:02:06'),
(30, 39, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254712122566', 'maiden', '1234', '299924', 1, '2012-05-15 06:11:33', '2012-05-15 06:11:26', '2012-05-22 12:21:11'),
(32, 41, '81dc9bdb52d04dc20036dbd8313ed055', '1980', '254725573703', 'john', '123456', '497383', 1, '2012-05-17 07:59:58', '2012-05-17 07:59:48', '2012-08-10 15:18:54'),
(33, 43, '4297f44b13955235245b2497399d7a93', '1982', '254713363369', 'Thomas', '445885488544', '111967', 2, '2012-05-30 08:41:25', '2012-05-30 07:40:41', '2012-05-30 08:41:25'),
(34, 44, '81dc9bdb52d04dc20036dbd8313ed055', '1986', '254703504048', 'john', '123456', '948392', 1, '2012-06-05 07:47:04', '2012-06-05 07:47:03', '2012-06-05 07:47:03'),
(35, 45, '81dc9bdb52d04dc20036dbd8313ed055', '1970', '254712345678', 'amma', '701800524v', '533426', 1, '2012-06-05 08:30:01', '2012-06-05 08:30:00', '2012-06-05 08:30:00'),
(36, 48, '7ce1689483acd43d5bc46598b11bd139', '1970', '254722790813', 'ndungu', '10366541', NULL, NULL, '2012-06-14 09:47:23', '2012-06-14 09:47:23', '2012-06-14 09:47:23'),
(38, 50, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254725702626', 'nyambura', '24682354', '488189', 3, '2012-07-06 14:35:27', '2012-07-06 14:34:11', '2012-07-06 14:35:27'),
(39, 51, '81dc9bdb52d04dc20036dbd8313ed055', '1970', '254722510393', 'lilian', '234567890', '531473', 1, '2012-07-10 10:14:34', '2012-07-10 10:14:33', '2012-07-10 10:14:33'),
(40, 52, 'b59c67bf196a4758191e42f76670ceba', '1993', '254729630905', 'hewani', '12345678', '795137', 1, '2012-07-25 06:17:08', '2012-07-25 06:17:04', '2012-08-14 08:15:10'),
(41, 53, 'b59c67bf196a4758191e42f76670ceba', '1970', '254729733619', 'mumy', '11111111', '882918', 1, '2012-07-25 08:15:22', '2012-07-25 08:15:20', '2012-07-25 08:15:20'),
(42, 54, 'b59c67bf196a4758191e42f76670ceba', '1990', '254729733633', 'hewani', '11111111', '128793', 1, '2012-07-25 08:16:50', '2012-07-25 08:16:48', '2012-08-06 10:14:11'),
(43, 55, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729733600', 'sales', '123456789', '683205', 1, '2012-07-25 08:21:44', '2012-07-25 08:21:42', '2012-07-25 08:21:42'),
(44, 56, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729733725', 'sales', '1232456798', '858007', 2, '2012-07-25 08:30:58', '2012-07-25 08:29:16', '2012-07-25 08:30:58'),
(45, 57, 'b59c67bf196a4758191e42f76670ceba', '1985', '254729630878', 'hewani', '11111111', '804269', 1, '2012-07-25 08:31:15', '2012-07-25 08:31:14', '2012-07-25 08:31:14'),
(46, 58, 'b59c67bf196a4758191e42f76670ceba', '1992', '254729733710', 'mumy', '11111111', '316634', 1, '2012-07-25 08:32:39', '2012-07-25 08:32:38', '2012-08-06 10:23:28'),
(47, 59, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729733673', 'sales', '123456789', '273906', 1, '2012-07-25 08:34:47', '2012-07-25 08:34:46', '2012-08-10 16:50:48'),
(48, 60, 'b59c67bf196a4758191e42f76670ceba', '1991', '254729733711', 'hewani', '11111111', '715008', 1, '2012-07-25 08:35:07', '2012-07-25 08:35:06', '2012-08-07 00:08:48'),
(49, 61, 'b59c67bf196a4758191e42f76670ceba', '1998', '254729598666', 'sales', '123456789', '132304', 1, '2012-07-25 08:37:33', '2012-07-25 08:37:31', '2012-08-07 13:47:56'),
(50, 62, 'b59c67bf196a4758191e42f76670ceba', '1992', '254729598650', 'hewani', '11111111', '438269', 1, '2012-07-25 08:38:46', '2012-07-25 08:38:45', '2012-08-06 10:25:50'),
(51, 63, 'b59c67bf196a4758191e42f76670ceba', '1979', '254729734136', 'mumy', '11111111', '598526', 1, '2012-07-25 08:41:22', '2012-07-25 08:41:21', '2012-07-25 08:41:21'),
(52, 64, 'b59c67bf196a4758191e42f76670ceba', '1979', '254729598670', 'mumy', '111111111', '750110', 1, '2012-07-25 08:45:35', '2012-07-25 08:45:33', '2012-08-08 14:44:27'),
(53, 65, 'b59c67bf196a4758191e42f76670ceba', '1992', '254729598679', 'mumy', '11111111', '992934', 1, '2012-07-25 08:49:25', '2012-07-25 08:49:24', '2012-08-06 10:17:43'),
(54, 66, 'b59c67bf196a4758191e42f76670ceba', '1993', '254729630904', 'sales', '123456789', '864417', 1, '2012-07-25 08:50:06', '2012-07-25 08:50:05', '2012-08-06 10:50:14'),
(55, 67, 'b59c67bf196a4758191e42f76670ceba', '1991', '254729734139', 'mumy', '11111111', '106370', 1, '2012-07-25 08:55:33', '2012-07-25 08:55:32', '2012-08-06 10:22:05'),
(56, 68, 'b59c67bf196a4758191e42f76670ceba', '1988', '254729733722', 'sales', '123456789', '379377', 1, '2012-07-25 08:58:17', '2012-07-25 08:58:16', '2012-08-06 10:41:20'),
(57, 69, 'b59c67bf196a4758191e42f76670ceba', '1989', '254729630857', 'hewani', '11111111', '945802', 1, '2012-07-25 09:02:44', '2012-07-25 09:02:42', '2012-08-06 17:57:02'),
(58, 70, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729733658', 'sales', '123456789', '887430', 1, '2012-07-25 09:04:04', '2012-07-25 09:04:03', '2012-08-08 14:39:05'),
(59, 71, 'b59c67bf196a4758191e42f76670ceba', '1986', '254729733683', 'mumy', '1111111', '410418', 1, '2012-07-25 09:04:23', '2012-07-25 09:04:22', '2012-08-06 11:13:56'),
(60, 72, 'b59c67bf196a4758191e42f76670ceba', '1993', '254729734153', 'sales', '123456789', '789083', 1, '2012-07-25 09:07:53', '2012-07-25 09:07:52', '2012-08-11 05:26:14'),
(61, 73, 'b59c67bf196a4758191e42f76670ceba', '1992', '254729733620', 'sales', '123456789', '548522', 1, '2012-07-25 09:12:24', '2012-07-25 09:12:22', '2012-08-07 12:39:02'),
(62, 74, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729630882', 'sales', '123456789', '544570', 1, '2012-07-25 09:21:17', '2012-07-25 09:21:16', '2012-07-25 09:21:16'),
(63, 75, 'b59c67bf196a4758191e42f76670ceba', '1980', '254729598644', 'sales', '123456789', '312476', 1, '2012-07-25 09:25:02', '2012-07-25 09:25:00', '2012-07-25 09:25:00'),
(64, 76, 'b59c67bf196a4758191e42f76670ceba', '1976', '254729734163', 'mumy', '11111111', '189204', 1, '2012-07-25 09:25:09', '2012-07-25 09:25:07', '2012-07-25 09:25:07'),
(65, 77, 'b59c67bf196a4758191e42f76670ceba', '1985', '254729733665', 'hewani', '11111111', '966140', 1, '2012-07-25 09:30:44', '2012-07-25 09:30:43', '2012-07-25 09:30:43'),
(66, 78, 'b59c67bf196a4758191e42f76670ceba', '1990', '254729733651', 'hewani', '11111111', '811108', 1, '2012-07-25 09:36:25', '2012-07-25 09:36:23', '2012-08-06 10:20:23'),
(67, 79, 'b59c67bf196a4758191e42f76670ceba', '1991', '254729733657', 'hewani', '11111111', '720548', 1, '2012-07-25 09:47:42', '2012-07-25 09:47:41', '2012-07-25 09:47:41'),
(68, 80, 'b59c67bf196a4758191e42f76670ceba', '1992', '254729733588', 'hewani', '11111111', '545173', 1, '2012-07-25 09:54:46', '2012-07-25 09:54:45', '2012-08-06 10:14:09'),
(69, 81, 'b59c67bf196a4758191e42f76670ceba', '1990', '254729734138', 'hewani', '11111111', '397909', 1, '2012-07-25 09:57:43', '2012-07-25 09:57:42', '2012-08-06 10:16:57'),
(70, 82, 'b59c67bf196a4758191e42f76670ceba', '1987', '254712533277', 'rose', '2680777', '398214', 1, '2012-07-27 13:38:35', '2012-07-27 13:38:31', '2012-07-27 13:38:31'),
(71, 83, '81dc9bdb52d04dc20036dbd8313ed055', '1989', '254712633277', 'rose', '26803926', '327521', 1, '2012-07-27 13:40:53', '2012-07-27 13:40:52', '2012-07-27 13:40:52'),
(72, 84, '81dc9bdb52d04dc20036dbd8313ed055', '1995', '254723456789', 'john', '2345', '519841', 1, '2012-07-31 13:27:06', '2012-07-31 13:27:04', '2012-07-31 13:27:04'),
(73, 85, '2c2f61e648d2bb00f8a696b2bbf1c3e8', '1968', '254727522534', 'cecilia', '3219226', '702469', 2, '2012-08-07 09:03:28', '2012-08-07 08:52:01', '2012-08-07 09:06:47'),
(74, 86, '81dc9bdb52d04dc20036dbd8313ed055', '2009', '254710123456', 'carol', '123456897', '302370', 1, '2012-08-07 09:50:32', '2012-08-07 09:50:31', '2012-08-07 09:50:31'),
(75, 87, '2c2f61e648d2bb00f8a696b2bbf1c3e8', '1987', '254721553424', 'statics', '26067343', '552073', 1, '2012-08-07 10:38:17', '2012-08-07 10:38:16', '2012-08-07 10:40:14'),
(76, 88, '81dc9bdb52d04dc20036dbd8313ed055', '2009', '254708797779', 'carol', '25078398', '671072', 1, '2012-08-07 10:43:20', '2012-08-07 10:43:19', '2012-08-07 10:43:19'),
(77, 89, '2c2f61e648d2bb00f8a696b2bbf1c3e8', '1990', '254725898904', 'danco', '21282706', '191784', 1, '2012-08-07 11:27:29', '2012-08-07 11:27:27', '2012-08-07 11:27:27'),
(78, 91, '81dc9bdb52d04dc20036dbd8313ed055', '1942', '254718899665', 'mother', '136364655', '523221', 1, '2012-08-16 06:27:53', '2012-08-16 06:27:52', '2012-08-16 06:27:52'),
(79, 93, '81dc9bdb52d04dc20036dbd8313ed055', '1980', '254728416702', 'frank', '12547896', '343065', 1, '2014-05-13 06:35:07', '2014-05-13 06:35:07', '2014-05-13 06:35:07'),
(80, 94, '81dc9bdb52d04dc20036dbd8313ed055', '1973', '254724525195', 'thomas', '66685745', '786793', 1, '2014-05-13 06:38:36', '2014-05-13 06:38:35', '2014-05-13 06:38:35'),
(81, 95, '81dc9bdb52d04dc20036dbd8313ed055', '1986', '254727176876', 'Nyakairu', '25133536', '531513', 1, '2014-05-19 14:49:59', '2014-05-19 14:49:58', '2014-05-19 14:49:58'),
(82, 96, '81dc9bdb52d04dc20036dbd8313ed055', '1978', '254721125153', 'Patricia', '13507134', '272351', 2, '2014-05-20 08:28:57', '2014-05-20 08:26:57', '2014-05-20 08:28:57'),
(83, 97, '81dc9bdb52d04dc20036dbd8313ed055', '1989', '254723734779', 'Hannah', '25236187', '771753', 1, '2014-05-30 10:26:08', '2014-05-30 10:26:08', '2014-05-30 10:26:08'),
(84, 98, '81dc9bdb52d04dc20036dbd8313ed055', '1932', '254727549457', 'qwerty', '12345678', '697446', 2, '2014-07-01 07:41:25', '2014-05-30 10:26:49', '2014-07-01 07:41:25'),
(85, 99, '81dc9bdb52d04dc20036dbd8313ed055', '1971', '254722729851', 'mwenda', '11257884', '438473', 1, '2014-05-30 11:05:34', '2014-05-30 11:05:33', '2014-05-30 11:05:33'),
(86, 100, 'bcbc93a39ba88bd1e21b10005f659eb5', '1994', '254720898039', 'shiro', '32162194', '314516', 1, '2014-05-30 13:28:01', '2014-05-30 13:28:01', '2014-05-30 13:28:01'),
(87, 101, '81dc9bdb52d04dc20036dbd8313ed055', '1974', '254722331397', 'krecencia', '12582074', '148270', 1, '2014-05-30 14:29:16', '2014-05-30 14:29:15', '2014-05-30 14:29:15'),
(88, 102, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254728149436', 'mary', '1894670', '670593', 2, '2014-05-30 16:12:16', '2014-05-30 16:11:47', '2014-05-30 16:12:16'),
(89, 103, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254727320443', 'margaret', '25957088', '177227', 1, '2014-06-04 07:59:55', '2014-06-04 07:59:54', '2014-06-04 07:59:54'),
(90, 104, '05c3e372f03989d8e904372a2767f158', '1979', '254721756906', 'phanice', '22339209', '729584', 1, '2014-06-04 12:01:28', '2014-06-04 12:01:28', '2014-06-04 12:01:28'),
(91, 105, '81dc9bdb52d04dc20036dbd8313ed055', '1989', '254714043089', 'esther', '27168215', '108590', 1, '2014-06-04 13:40:39', '2014-06-04 13:40:39', '2014-06-04 13:40:39'),
(93, 107, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254721578339', 'mommy', '18273645', '668610', 1, '2014-06-11 06:02:19', '2014-06-11 06:02:19', '2014-06-11 06:02:19'),
(94, 108, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254701519540', 'anna', '11271760', '395205', 1, '2014-06-11 09:40:46', '2014-06-11 09:40:46', '2014-06-11 09:40:46'),
(95, 109, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254713659329', 'wanja', '25252525', '794949', 1, '2014-06-12 06:42:49', '2014-06-12 06:42:48', '2014-06-20 08:49:16'),
(96, 110, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254723022206', 'kesharbai', '25215764', '341028', 1, '2014-06-12 13:25:42', '2014-06-12 13:25:41', '2014-06-12 13:25:41'),
(97, 111, '81dc9bdb52d04dc20036dbd8313ed055', '1980', '254720934467', 'gyu', '123456', NULL, NULL, '2014-06-16 07:59:11', '2014-06-16 07:59:11', '2016-05-17 15:49:43'),
(98, 112, 'da3fde159d754a2555eaa198d2d105b2', '1985', '254713715218', 'Rose', '24250194', '244581', 1, '2014-06-17 06:48:03', '2014-06-17 06:48:02', '2014-06-17 06:48:02'),
(99, 113, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254721314118', 'jane', 'p051208684z', '585962', 1, '2014-06-17 08:19:40', '2014-06-17 08:19:40', '2014-06-17 08:19:40'),
(100, 114, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254724878771', 'jane', '23907865', '555183', 1, '2014-06-17 09:01:41', '2014-06-17 09:01:40', '2014-06-17 09:01:40'),
(101, 115, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254711943232', 'jane', '24592069', '908433', 1, '2014-06-17 09:27:36', '2014-06-17 09:27:36', '2014-06-17 09:27:36'),
(102, 116, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254700556677', 'Rose', 'Nairobi', '665706', 1, '2014-06-18 07:16:11', '2014-06-18 07:16:07', '2014-06-18 07:16:07'),
(103, 117, '81dc9bdb52d04dc20036dbd8313ed055', '1987', '254726459505', 'Margaret', '25690400', '118332', 1, '2014-06-20 05:50:10', '2014-06-20 05:50:09', '2014-06-20 05:50:09'),
(104, 118, '81dc9bdb52d04dc20036dbd8313ed055', '1988', '254724334051', 'mary', '25834523', '933155', 1, '2014-06-24 11:57:51', '2014-06-24 11:57:50', '2014-06-24 11:57:50'),
(105, 119, '81dc9bdb52d04dc20036dbd8313ed055', '1988', '254720542096', 'jane', '25252525', NULL, NULL, '2014-06-27 08:22:08', '2014-06-27 08:22:08', '2014-06-27 08:22:08'),
(106, 120, 'e52ff15f1c6cff78c4e54fd19026256d', '1981', '254709553135', 'Karumya', '22106806', NULL, NULL, '2014-06-27 08:24:02', '2014-06-27 08:24:02', '2014-06-27 08:24:02'),
(107, 121, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254721470824', 'lee', '12345678', NULL, NULL, '2014-06-27 10:15:54', '2014-06-27 10:15:54', '2014-06-27 10:15:54'),
(109, 123, '81dc9bdb52d04dc20036dbd8313ed055', '1990', '254713938293', '25', '25', NULL, NULL, '2014-06-30 07:45:00', '2014-06-30 07:45:00', '2014-06-30 07:45:00'),
(110, 124, '515b9d40500ef7d05007b5668991fc7c', '1984', '254722216435', 'Ngima', '23579021', '811260', 1, '2014-07-10 06:27:43', '2014-07-10 06:27:42', '2014-07-10 06:27:42'),
(111, 126, '81dc9bdb52d04dc20036dbd8313ed055', '1994', '254725345345', 'Lucky', '30423675', '617308', 1, '2015-06-30 05:43:51', '2015-06-30 05:43:51', '2015-06-30 05:43:51'),
(112, 127, '81dc9bdb52d04dc20036dbd8313ed055', '1970', '254711229568', 'mother', '22334455', '444237', 1, '2015-07-07 07:50:18', '2015-07-07 07:50:17', '2015-07-28 09:52:47'),
(113, 128, '81dc9bdb52d04dc20036dbd8313ed055', '1950', '254711230427', 'mom', '23456786', '341933', 1, '2015-07-07 14:24:24', '2015-07-07 14:24:23', '2015-07-07 14:24:23'),
(114, 129, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254711118037', 'Hello', '122332', '463859', 1, '2015-07-15 10:09:46', '2015-07-15 10:09:45', '2015-07-15 10:09:45'),
(115, 132, '81dc9bdb52d04dc20036dbd8313ed055', '2006', '254711118036', 'name name', '11234', '265431', 1, '2015-07-23 07:36:10', '2015-07-23 07:36:09', '2015-07-23 07:36:09'),
(116, 133, '81dc9bdb52d04dc20036dbd8313ed055', '1950', '254700719110', 'mother', '1234567899', '813510', 1, '2015-07-23 11:40:38', '2015-07-23 11:40:38', '2015-07-23 11:40:38'),
(117, 134, '81dc9bdb52d04dc20036dbd8313ed055', '1950', '254723325474', 'mum', '1234567899', '671696', 1, '2015-08-11 15:37:53', '2015-08-11 15:37:52', '2015-08-11 15:37:52'),
(118, 135, '81dc9bdb52d04dc20036dbd8313ed055', '1980', '254725617330', 'mother', '123456789', '661780', 1, '2015-09-11 13:10:08', '2015-09-11 13:10:07', '2015-09-11 13:10:07'),
(119, 136, '81dc9bdb52d04dc20036dbd8313ed055', '2009', '254723942219', 'mother', '12121212', '434230', 1, '2016-03-04 07:04:56', '2016-03-04 07:04:56', '2016-03-04 07:04:56'),
(120, 137, '81dc9bdb52d04dc20036dbd8313ed055', '1996', '254727375321', 'Wangui', '27347473', '494418', 1, '2016-03-10 07:46:25', '2016-03-10 07:46:24', '2016-05-17 15:49:32'),
(121, 138, '81dc9bdb52d04dc20036dbd8313ed055', '1985', '254723950025', 'ngina', '24068294', '322728', 1, '2016-03-10 08:46:41', '2016-03-10 08:46:40', '2016-03-10 08:46:40'),
(122, 139, '81dc9bdb52d04dc20036dbd8313ed055', '1993', '254701375980', 'Millers Ltd', '12345678', '358105', 1, '2016-05-18 10:26:07', '2016-05-18 10:26:06', '2016-05-18 10:26:06'),
(123, 140, '81dc9bdb52d04dc20036dbd8313ed055', '1993', '254722804104', 'Millers', '14621272', '457548', 1, '2016-05-26 05:39:24', '2016-05-26 05:39:24', '2016-05-26 05:39:24'),
(124, 141, '25d55ad283aa400af464c76d713c07ad', '1993', '254722636969', 'EAGC', '12345678', '237603', 1, '2016-08-17 12:14:19', '2016-08-17 12:14:18', '2016-08-17 12:14:18'),
(125, 142, '81dc9bdb52d04dc20036dbd8313ed055', '1981', '254727767433', 'Hello Kenya', '343343', '861664', 1, '2016-09-29 09:59:27', '2016-09-29 09:59:26', '2016-09-29 09:59:26'),
(126, 143, '81dc9bdb52d04dc20036dbd8313ed055', '1991', '254727767432', 'Hello Kenya', '43443', '213948', 1, '2016-09-29 10:02:27', '2016-09-29 10:02:26', '2016-09-29 10:02:26'),
(127, 144, '81dc9bdb52d04dc20036dbd8313ed055', '1994', '254711391766', 'Hello Kenya', '43343', '950284', 1, '2016-09-30 06:01:13', '2016-09-30 06:01:12', '2016-09-30 06:01:12'),
(128, 145, 'b59c67bf196a4758191e42f76670ceba', '1993', '254722522685', 'G2L Company Ltd', '255758439338', '525501', 1, '2016-10-06 13:45:44', '2016-10-06 13:45:44', '2016-10-06 13:45:44'),
(129, 146, '4a7d1ed414474e4033ac29ccb8653d9b', '1988', '254718534584', 'Raphael Group Ltd', '100251422898', '662261', 1, '2016-10-06 13:49:23', '2016-10-06 13:49:23', '2016-10-06 13:49:23'),
(130, 147, 'b59c67bf196a4758191e42f76670ceba', '1986', '254710124158', 'Unyiha Associates Ltd', '4002627014', '693846', 1, '2016-10-06 13:57:07', '2016-10-06 13:57:05', '2016-10-06 13:57:05'),
(131, 148, '81dc9bdb52d04dc20036dbd8313ed055', '1989', '254723577010', 'Raphael Group', '12345678', '697513', 1, '2016-10-12 05:50:39', '2016-10-12 05:50:38', '2016-10-12 05:50:38'),
(132, 149, '81dc9bdb52d04dc20036dbd8313ed055', '1995', '254710757628', 'Raphael Group Ltd', '87654321', '622550', 1, '2016-10-12 08:09:24', '2016-10-12 08:09:24', '2016-10-12 08:09:24'),
(133, 150, '81dc9bdb52d04dc20036dbd8313ed055', '1988', '254724044435', 'G2L', '9988776655', '598607', 1, '2016-10-12 09:09:17', '2016-10-12 09:09:17', '2016-10-12 09:09:17'),
(134, 151, 'a6e38981ecdd65fe9dcdfcd8d1f58f05', '1980', '254721999411', 'SYNCIA HOLDINGS LIMITED', '21988863', '663934', 1, '2016-10-13 09:47:42', '2016-10-13 09:47:42', '2016-10-13 09:47:42'),
(135, 152, 'efdf562ce2fb0ad460fd8e9d33e57f57', '1980', '254722990100', 'Classic Foods Ltd', '21807990', '751162', 1, '2016-10-13 09:48:41', '2016-10-13 09:48:40', '2016-10-13 09:48:40'),
(136, 153, '75a7c30fc0063c4952d7eb044a3c0897', '1981', '254721473551', 'TEMPEST COMMODITIES LTD', '22062460', '317128', 1, '2016-10-13 09:50:43', '2016-10-13 09:50:42', '2016-10-13 09:50:42'),
(137, 154, '4a7d1ed414474e4033ac29ccb8653d9b', '1982', '254722563439', 'NUTRIFULL FOODS', '7113012', '983577', 1, '2016-10-13 09:53:08', '2016-10-13 09:53:07', '2016-10-13 09:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `user_type` varchar(254) NOT NULL,
  `status` varchar(254) NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `user_name`, `password`, `user_type`, `status`, `created_at`, `last_modified`) VALUES
(1, 'tikolo80', 'd366fd1f2d52e425c1b6a4a45e256f2e', 'SUBSCRIBER', 'ACTIVE', '2011-11-23 10:52:52', '2016-05-18 10:51:08'),
(2, 'retailer1', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'ACTIVE', '2011-11-23 10:52:52', '2012-05-10 13:47:36'),
(3, 'retailer2', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'ACTIVE', '2011-11-23 10:52:52', '2011-11-23 10:56:30'),
(4, 'sub-retailer1', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER_SUBSCRIBER', 'ACTIVE', '2011-11-23 10:52:52', '2011-11-23 10:56:30'),
(5, 'sub-retailer2', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER_SUBSCRIBER', 'BLOCKED', '2011-11-23 10:52:52', '2011-11-23 10:56:30'),
(6, 'david80', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2011-11-23 10:52:52', '2016-05-18 10:51:08'),
(7, 'admin', 'bcbc93a39ba88bd1e21b10005f659eb5', 'ADMIN', 'ACTIVE', '2011-11-23 10:52:52', '2011-11-23 10:56:30'),
(8, '1234567894561234567', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-08 06:58:37', '2016-05-18 10:51:08'),
(9, 'Allen', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-08 07:05:07', '2016-05-18 10:51:08'),
(10, 'solomonr', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-08 07:32:01', '2016-05-18 10:51:08'),
(11, '123456', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-08 09:56:33', '2016-05-18 10:51:08'),
(12, 'JADE', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-09 05:59:05', '2016-05-18 10:51:08'),
(13, 'kumudu', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-10 08:48:40', '2016-05-18 10:51:08'),
(14, 'pavi', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-14 07:08:18', '2016-05-18 10:51:08'),
(15, 'hfhh', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-14 12:04:56', '2016-05-18 10:51:08'),
(16, 'lkjh', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-14 12:07:07', '2016-05-18 10:51:08'),
(17, 'lokk', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-15 05:37:15', '2016-05-18 10:51:08'),
(18, 'bxnf', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-15 07:05:26', '2016-05-18 10:51:08'),
(19, 'bxnff', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-15 08:57:46', '2016-05-18 10:51:08'),
(20, 'asdf', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-02-15 09:05:00', '2016-05-18 10:51:08'),
(21, 'pavithra', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-03-06 05:45:06', '2016-05-18 10:51:08'),
(22, 'namala', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-03-06 14:50:02', '2016-05-18 10:51:08'),
(23, 'mala', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-03-13 08:43:31', '2016-05-18 10:51:08'),
(24, 'cmbeneka', '9aa4382e872d88f992f89f3e3644d432', 'SUBSCRIBER', 'ACTIVE', '2012-03-15 07:30:52', '2016-05-18 10:51:08'),
(25, 'shavantha', '9ee923abd983c1d704e761cd9acbbeb7', 'SUBSCRIBER', 'ACTIVE', '2012-03-22 07:50:04', '2016-05-18 10:51:08'),
(26, 'retailer4', '81dc9bdb52d04dc20036dbd8313ed055', 'RETAILER', 'ACTIVE', '2012-03-27 10:29:30', '2012-03-27 10:29:30'),
(27, 'retailer', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'ACTIVE', '2012-03-27 10:31:37', '2012-03-27 10:40:16'),
(28, 'Sophie', 'ebeac88641b901a1781d2e6356a572fa', 'SUBSCRIBER', 'ACTIVE', '2012-04-18 08:01:34', '2016-05-18 10:51:08'),
(29, 'testQA', '3a4f54578ccaae0786f333b23670e750', 'SUBSCRIBER', 'ACTIVE', '2012-04-26 11:02:21', '2016-05-18 10:51:08'),
(30, 'akila', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-02 09:10:47', '2016-05-18 10:51:08'),
(31, 'wanjiru', '23764a8be9acdc6a9e2e6f9266c34a1b', 'SUBSCRIBER', 'ACTIVE', '2012-05-10 07:16:10', '2016-05-18 10:51:08'),
(32, 'Elsie', 'd33f1a6621f17e8090f8fb9c1b6b6f01', 'ADMIN', 'ACTIVE', '2012-05-10 09:45:13', '2012-05-10 09:45:14'),
(33, 'mancollo', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-10 10:44:51', '2016-05-18 10:51:08'),
(34, 'kiptoo', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'SUSPENDED', '2012-05-11 08:12:09', '2012-06-20 09:42:18'),
(35, 'pasan123', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-11 09:03:02', '2016-05-18 10:51:08'),
(36, 'dando', '5d89a5cc9716199cd06555404a82e8f4', 'SUBSCRIBER', 'ACTIVE', '2012-05-11 09:35:45', '2016-05-18 10:51:08'),
(37, 'pasan', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-11 11:01:13', '2016-05-18 10:51:08'),
(38, 'randula', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-15 04:02:06', '2016-05-18 10:51:08'),
(39, 'hasitha', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-15 06:11:26', '2016-05-18 10:51:08'),
(41, 'testarosta', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-05-17 07:59:48', '2016-05-18 10:51:08'),
(42, 'root', 'bcbc93a39ba88bd1e21b10005f659eb5', 'ADMIN', 'ACTIVE', '2012-05-22 07:01:53', '2012-05-22 07:01:53'),
(43, 'rhood', 'e1d947fb192cfb2ff336f01cb286408e', 'SUBSCRIBER', 'ACTIVE', '2012-05-30 07:40:41', '2016-05-18 10:51:08'),
(44, 'Kidando', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-06-05 07:47:03', '2016-05-18 10:51:08'),
(45, 'cccc', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-06-05 08:30:00', '2016-05-18 10:51:08'),
(46, 'collins', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'SUSPENDED', '2012-06-05 09:03:18', '2012-06-20 09:42:53'),
(47, 'kirui', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'SUSPENDED', '2012-06-14 08:45:34', '2012-06-20 09:42:02'),
(48, 'tune', 'beeee4bdbf9286cf1fee6ffaa0cf44ec', 'SUBSCRIBER', 'ACTIVE', '2012-06-14 09:47:23', '2016-05-18 10:51:08'),
(50, 'smurf', '2696ba7233fd6a4a5a309a347059c5ab', 'SUBSCRIBER', 'ACTIVE', '2012-07-06 14:34:11', '2016-05-18 10:51:08'),
(51, 'john', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-07-10 10:14:33', '2016-05-18 10:51:08'),
(52, 'hewani', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 06:17:04', '2016-05-18 10:51:08'),
(53, 'hewanidemo2', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:15:20', '2016-05-18 10:51:08'),
(54, 'hewanidemo20', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:16:48', '2016-05-18 10:51:08'),
(55, 'hewanidemo11', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:21:42', '2016-05-18 10:51:08'),
(56, 'hewanidemo12', 'a812e99d9bfdb26c557a9cb38f14e2d9', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:29:16', '2016-05-18 10:51:08'),
(57, 'hewanidemo21', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:31:14', '2016-05-18 10:51:08'),
(58, 'hewanidemo3', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:32:38', '2016-05-18 10:51:08'),
(59, 'hewanidemo13', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:34:46', '2016-05-18 10:51:08'),
(60, 'hewanidemo22', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:35:06', '2016-05-18 10:51:08'),
(61, 'hewanidemo14', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:37:31', '2016-05-18 10:51:08'),
(62, 'hewanidemo23', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:38:45', '2016-05-18 10:51:08'),
(63, 'hewanidemo4', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:41:21', '2016-05-18 10:51:08'),
(64, 'hewanidemo5', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:45:33', '2016-05-18 10:51:08'),
(65, 'hewanidemo6', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:49:24', '2016-05-18 10:51:08'),
(66, 'hewanidemo15', '0493ac32db6eaf1841eee53721b94fba', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:50:05', '2016-05-18 10:51:08'),
(67, 'hewanidemo7', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:55:32', '2016-05-18 10:51:08'),
(68, 'hewanidemo16', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 08:58:16', '2016-05-18 10:51:08'),
(69, 'hewanidemo24', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:02:42', '2016-05-18 10:51:08'),
(70, 'hewanidemo17', 'c16ce8eb8144204f9b40b7d300362b3b', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:04:03', '2016-05-18 10:51:08'),
(71, 'hewanidemo8', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:04:22', '2016-05-18 10:51:08'),
(72, 'hewanidemo18', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:07:52', '2016-05-18 10:51:08'),
(73, 'hewanidemo19', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:12:22', '2016-05-18 10:51:08'),
(74, 'hewanidemo30', 'a812e99d9bfdb26c557a9cb38f14e2d9', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:21:16', '2016-05-18 10:51:08'),
(75, 'hewanidemo10', 'a812e99d9bfdb26c557a9cb38f14e2d9', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:25:00', '2016-05-18 10:51:08'),
(76, 'hewanidemo9', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:25:07', '2016-05-18 10:51:08'),
(77, 'hewanidemo25', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:30:43', '2016-05-18 10:51:08'),
(78, 'hewanidemo26', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:36:23', '2016-05-18 10:51:08'),
(79, 'hewanidemo27', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:47:41', '2016-05-18 10:51:08'),
(80, 'hewanidemo28', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:54:45', '2016-05-18 10:51:08'),
(81, 'hewanidemo29', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-07-25 09:57:42', '2016-05-18 10:51:08'),
(82, 'mike', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-07-27 13:38:31', '2016-05-18 10:51:08'),
(83, 'njoro', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-07-27 13:40:52', '2016-05-18 10:51:08'),
(84, 'tina', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-07-31 13:27:04', '2016-05-18 10:51:08'),
(85, 'cecilia', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-08-07 08:52:01', '2016-05-18 10:51:08'),
(86, 'testcarol', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-08-07 09:50:31', '2016-05-18 10:51:08'),
(87, 'statics', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-08-07 10:38:16', '2016-05-18 10:51:08'),
(88, 'cmutuku', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-08-07 10:43:19', '2016-05-18 10:51:08'),
(89, 'danco', '079e3e773e43728494700080d5d40f0d', 'SUBSCRIBER', 'ACTIVE', '2012-08-07 11:27:27', '2016-05-18 10:51:08'),
(90, 'test', '232958047b07744eff5f85143c38be89', 'RETAILER', 'SUSPENDED', '2012-08-07 12:27:53', '2012-08-07 12:28:37'),
(91, 'nalaka', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2012-08-16 06:27:52', '2016-05-18 10:51:08'),
(92, 'mikey', 'bcbc93a39ba88bd1e21b10005f659eb5', 'ADMIN', 'ACTIVE', '2012-10-01 13:26:24', '2012-10-01 13:26:24'),
(93, 'kevin', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-13 06:35:07', '2016-05-18 10:51:08'),
(94, 'stella', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-13 06:38:35', '2016-05-18 10:51:08'),
(95, 'Tittoe', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-19 14:49:58', '2016-05-18 10:51:08'),
(96, 'Benson', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-20 08:26:57', '2016-05-18 10:51:08'),
(97, 'Nyandis', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 10:26:08', '2016-05-18 10:51:08'),
(98, 'rebecca', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 10:26:49', '2016-05-18 10:51:08'),
(99, 'Genesis', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 11:05:33', '2016-05-18 10:51:08'),
(100, 'Riziki', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 13:28:01', '2016-05-18 10:51:08'),
(101, 'Gmart', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 14:29:15', '2016-05-18 10:51:08'),
(102, 'southerd', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-05-30 16:11:47', '2016-05-18 10:51:08'),
(103, 'prizeworthy', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-04 07:59:54', '2016-05-18 10:51:08'),
(104, 'stageview', '9442b97da90439702cbf5ef1e7663905', 'SUBSCRIBER', 'ACTIVE', '2014-06-04 12:01:28', '2016-05-18 10:51:08'),
(105, 'Gakenia2', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-04 13:40:39', '2016-05-18 10:51:08'),
(107, 'elizabeth', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-11 06:02:19', '2016-05-18 10:51:08'),
(108, 'wabuti', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-11 09:40:46', '2016-05-18 10:51:08'),
(109, 'Discountstores', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-12 06:42:48', '2016-05-18 10:51:08'),
(110, 'dingdongenterprise', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-12 13:25:41', '2016-05-18 10:51:08'),
(111, 'bshem', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-16 07:59:11', '2016-05-18 10:51:08'),
(112, 'Lowino', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-17 06:48:02', '2016-05-18 10:51:08'),
(113, 'Rupatraders', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-17 08:19:40', '2016-05-18 10:51:08'),
(114, 'Tumainishop', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-17 09:01:40', '2016-05-18 10:51:08'),
(115, 'Nderitustores', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-17 09:27:36', '2016-05-18 10:51:08'),
(116, 'Lakinyi', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-18 07:16:07', '2016-05-18 10:51:08'),
(117, 'SKaringa', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-20 05:50:09', '2016-05-18 10:51:08'),
(118, 'mella', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-24 11:57:50', '2016-05-18 10:51:08'),
(119, 'Tonystores', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-27 08:22:08', '2016-05-18 10:51:08'),
(120, 'Francis Kathoka', '09dacff7790f51f7a37a27a7f8a6b3a4', 'SUBSCRIBER', 'ACTIVE', '2014-06-27 08:24:02', '2016-05-18 10:51:08'),
(121, 'faith', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-27 10:15:54', '2016-05-18 10:51:08'),
(123, 'Tester', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2014-06-30 07:45:00', '2016-05-18 10:51:08'),
(124, 'rockryx', 'c6d782a08d0c035e08c16a8af71dff5a', 'SUBSCRIBER', 'ACTIVE', '2014-07-10 06:27:42', '2016-05-18 10:51:08'),
(125, 'controller', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'ACTIVE', '2014-12-15 07:40:01', '2015-07-30 09:33:09'),
(126, 'dkarimi', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-06-30 05:43:51', '2016-05-18 10:51:08'),
(127, 't00068', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-07-07 07:50:17', '2016-05-18 10:51:08'),
(128, 't00027', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-07-07 14:24:23', '2016-05-18 10:51:08'),
(129, 'idkrishna', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-07-15 10:09:45', '2016-05-18 10:51:08'),
(130, 'bethuell', 'bcbc93a39ba88bd1e21b10005f659eb5', 'ADMIN', 'ACTIVE', '2015-07-17 01:57:09', '2015-07-17 01:57:09'),
(131, 'idkrish', 'bcbc93a39ba88bd1e21b10005f659eb5', 'RETAILER', 'SUSPENDED', '2015-07-22 14:53:07', '2015-10-15 12:25:26'),
(132, 'rajive', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-07-23 07:36:09', '2016-05-18 10:51:08'),
(133, 'kkarungu', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-07-23 11:40:38', '2016-05-18 10:51:08'),
(134, 'karungu', '95d5edf7a57626ca3923621bc06ca7d9', 'SUBSCRIBER', 'ACTIVE', '2015-08-11 15:37:52', '2016-05-18 10:51:08'),
(135, 'jmutisya', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2015-09-11 13:10:07', '2016-05-18 10:51:08'),
(136, 'Joyce', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-03-04 07:04:56', '2016-05-18 10:51:08'),
(137, 'dgathage', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-03-10 07:46:24', '2016-05-18 10:51:08'),
(138, 'bndunda', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-03-10 08:46:40', '2016-05-18 10:51:08'),
(139, 'T12345', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-05-18 10:26:06', '2016-05-18 10:51:08'),
(140, 'T001', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'PENDING', '2016-05-26 05:39:24', '2016-05-26 05:39:24'),
(141, 'martha', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-08-17 12:14:18', '2016-08-17 12:14:42'),
(142, 'hello', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'PENDING', '2016-09-29 09:59:26', '2016-09-29 09:59:26'),
(143, 'helloo', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'PENDING', '2016-09-29 10:02:26', '2016-09-29 10:02:26'),
(144, 'hellk', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'PENDING', '2016-09-30 06:01:12', '2016-09-30 06:01:12'),
(145, 'akahonga', '7b77754a9095635960bf71820f5a3d77', 'SUBSCRIBER', 'ACTIVE', '2016-10-06 13:45:44', '2016-10-06 13:46:44'),
(146, 'Ewilson', '7b77754a9095635960bf71820f5a3d77', 'SUBSCRIBER', 'ACTIVE', '2016-10-06 13:49:23', '2016-10-06 13:50:03'),
(147, 'kmalekela', '7b77754a9095635960bf71820f5a3d77', 'SUBSCRIBER', 'ACTIVE', '2016-10-06 13:57:05', '2016-10-06 13:58:48'),
(148, 'RaphaelGroup', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-10-12 05:50:38', '2016-10-12 05:51:18'),
(149, 'rapahelgroupltd', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-10-12 08:09:24', '2016-10-12 08:09:50'),
(150, 'G2LTrader', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-10-12 09:09:17', '2016-10-12 09:13:33'),
(151, 'kimaninoel', 'fbc8875eb31db13923e0214fd3b59041', 'SUBSCRIBER', 'ACTIVE', '2016-10-13 09:47:42', '2016-10-13 09:48:17'),
(152, 'Stella K', 'd00f4a66a63a0110bfe85733f59ce746', 'SUBSCRIBER', 'ACTIVE', '2016-10-13 09:48:40', '2016-10-13 09:49:46'),
(153, 'LMUTHARI', '3ca4402cab946d3643cc8fdc496691db', 'SUBSCRIBER', 'ACTIVE', '2016-10-13 09:50:42', '2016-10-13 09:51:15'),
(154, 'jnguru', 'bcbc93a39ba88bd1e21b10005f659eb5', 'SUBSCRIBER', 'ACTIVE', '2016-10-13 09:53:07', '2016-10-13 09:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_details`
--

CREATE TABLE `user_login_details` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_id` varchar(254) NOT NULL,
  `logged_in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel` varchar(254) NOT NULL,
  `last_activity_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login_details`
--

INSERT INTO `user_login_details` (`id`, `user_id`, `session_id`, `logged_in_time`, `channel`, `last_activity_time`, `last_modified_date`, `created_date`) VALUES
(27, 94, '94ods3a0ei1q', '2016-05-26 13:17:22', 'web', '2016-05-26 13:17:22', '2016-05-26 12:09:47', '2016-05-26 12:09:47'),
(49, 141, '1412n91h9l258', '2016-08-17 12:15:12', 'web', '2016-08-17 12:15:12', '2016-08-17 12:14:53', '2016-08-17 12:14:53'),
(69, 141, '141jlp0tdvar0', '2016-09-15 09:41:56', 'wap', '2016-09-15 09:41:56', '2016-09-15 09:40:57', '2016-09-15 09:40:57'),
(108, 150, '150oc8npfj6u3', '2016-10-12 09:33:40', 'web', '2016-10-12 09:33:40', '2016-10-12 09:19:02', '2016-10-12 09:19:02'),
(110, 151, '151ijaogt6t17', '2016-10-13 11:02:11', 'web', '2016-10-13 11:02:11', '2016-10-13 09:49:03', '2016-10-13 09:49:03'),
(112, 153, '153u72tjm28af', '2016-10-13 10:18:32', 'web', '2016-10-13 10:18:32', '2016-10-13 09:51:37', '2016-10-13 09:51:37'),
(113, 154, '154hht39vhvr3', '2016-10-13 10:19:16', 'web', '2016-10-13 10:19:16', '2016-10-13 09:54:11', '2016-10-13 09:54:11'),
(121, 145, '1451bpetpalvt', '2016-10-27 12:13:12', 'web', '2016-10-27 12:13:12', '2016-10-27 12:09:50', '2016-10-27 12:09:50'),
(123, 145, '145n7mmahp6fj', '2016-10-27 13:15:03', 'web', '2016-10-27 13:15:03', '2016-10-27 13:05:34', '2016-10-27 13:05:34'),
(141, 137, '13720kfrgvs33', '2017-01-14 08:57:34', 'web', '2017-01-14 08:57:34', '2017-01-14 08:56:55', '2017-01-14 08:56:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charging_info`
--
ALTER TABLE `charging_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_invoice_id` (`invoice_id`),
  ADD UNIQUE KEY `uk_tx_id` (`tx_id`),
  ADD KEY `idx_invoice_id` (`invoice_id`),
  ADD KEY `idx_tx_id` (`tx_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `controller_users`
--
ALTER TABLE `controller_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gnote_imports`
--
ALTER TABLE `gnote_imports`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `invoiced_products`
--
ALTER TABLE `invoiced_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_invoice_id` (`invoice_id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_available_branch`
--
ALTER TABLE `product_available_branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_branch_id` (`branch_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_category_id` (`category_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `retailer_branches`
--
ALTER TABLE `retailer_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_id` (`user_id`);

--
-- Indexes for table `retailer_info`
--
ALTER TABLE `retailer_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_id` (`user_id`);

--
-- Indexes for table `sf_guard_group`
--
ALTER TABLE `sf_guard_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_name` (`name`);

--
-- Indexes for table `sf_guard_group_permission`
--
ALTER TABLE `sf_guard_group_permission`
  ADD KEY `idx_group_id` (`group_id`),
  ADD KEY `idx_permission_id` (`permission_id`);

--
-- Indexes for table `sf_guard_permission`
--
ALTER TABLE `sf_guard_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_name` (`name`);

--
-- Indexes for table `sf_guard_user_group`
--
ALTER TABLE `sf_guard_user_group`
  ADD KEY `idx_group_id` (`group_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `subscriber_info`
--
ALTER TABLE `subscriber_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_msisdn` (`msisdn`),
  ADD UNIQUE KEY `uk_user_id` (`user_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_user_name` (`user_name`);

--
-- Indexes for table `user_login_details`
--
ALTER TABLE `user_login_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_session_id` (`session_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;
--
-- AUTO_INCREMENT for table `charging_info`
--
ALTER TABLE `charging_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `controller_users`
--
ALTER TABLE `controller_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `invoiced_products`
--
ALTER TABLE `invoiced_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `product_available_branch`
--
ALTER TABLE `product_available_branch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `retailer_branches`
--
ALTER TABLE `retailer_branches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `retailer_info`
--
ALTER TABLE `retailer_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sf_guard_group`
--
ALTER TABLE `sf_guard_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sf_guard_permission`
--
ALTER TABLE `sf_guard_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `subscriber_info`
--
ALTER TABLE `subscriber_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `user_login_details`
--
ALTER TABLE `user_login_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
