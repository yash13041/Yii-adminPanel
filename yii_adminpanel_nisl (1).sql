-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2024 at 12:59 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii_adminpanel_nisl`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `description`, `date`, `user_id`, `ip_address`) VALUES
(1, 'Settings Option Updated [Name: log_activity, Value: 1]', '2023-10-04 16:35:10', 1, '::1'),
(2, 'Settings Option Updated [Name: log_activity, Value: 1]', '2023-10-04 16:36:25', 1, '::1'),
(3, 'Project Updated [ID:1]', '2023-10-04 16:36:36', 1, '::1'),
(4, 'Category Updated [ID: 4]', '2023-10-04 16:36:50', 1, '::1'),
(5, 'Settings Option Updated [Name: log_activity, Value: 1]', '2023-10-04 16:37:47', 1, '::1'),
(6, 'Settings Option Updated [Name: log_activity, Value: 1]', '2023-10-04 16:42:17', 1, '::1'),
(7, 'User Logged Out [Email: admin@narola.email]', '2023-10-04 16:53:04', 1, '::1'),
(8, 'Inactive User Tried to Login [Email: author@narola.email]', '2023-10-04 16:53:13', 2, '::1'),
(9, 'User Logged In [Email: admin@narola.email]', '2023-10-04 16:53:28', 1, '::1'),
(10, 'User Logged Out [Email: admin@narola.email]', '2023-10-04 16:53:40', 1, '::1'),
(11, 'User Logged In [Email: author@narola.email]', '2023-10-04 16:53:46', 2, '::1'),
(12, 'User Logged Out [Email: author@narola.email]', '2023-10-04 16:53:51', 2, '::1'),
(13, 'User Logged In [Email: admin@narola.email]', '2023-10-04 16:53:56', 1, '::1'),
(14, 'Non Existing User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 16:56:52', NULL, '::1'),
(15, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-10-04 16:58:56', 1, '::1'),
(16, 'Non Existing User Tried to Login [Email: admin@narola.emailcx]', '2023-10-04 16:59:21', NULL, '::1'),
(17, 'Inactive User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:03:34', 5, '::1'),
(18, 'User Updated [ID: 5]', '2023-10-04 17:05:13', 1, '::1'),
(19, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:05:53', 5, '::1'),
(20, 'Non Verified User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:05:59', NULL, '::1'),
(21, 'Settings Option Updated [Name: smtp_user, Value: sanat.queueloop@gmail.com]', '2023-10-04 17:08:23', 1, '::1'),
(22, 'Settings Option Updated [Name: smtp_password, Value: puigmlfhgpzmjyvr]', '2023-10-04 17:08:23', 1, '::1'),
(23, 'Settings Option Updated [Name: smtp_user, Value: test.narolainfotech@gmail.com]', '2023-10-04 17:10:43', 1, '::1'),
(24, 'Settings Option Updated [Name: smtp_password, Value: #N@rol@12]', '2023-10-04 17:10:43', 1, '::1'),
(25, 'Non Verified User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:11:46', NULL, '::1'),
(26, 'Non Verified User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:11:56', NULL, '::1'),
(27, 'User Deleted [ID: 5]', '2023-10-04 17:12:17', 1, '::1'),
(28, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:12:24', 5, '::1'),
(29, 'Non Verified User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:12:30', NULL, '::1'),
(30, 'Non Existing User Tried to Login [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:13:07', NULL, '::1'),
(31, 'New User Created [ID: 6]', '2023-10-04 17:13:43', 1, '::1'),
(32, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:14:09', 6, '::1'),
(33, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:14:21', 6, '::1'),
(34, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:14:37', 6, '::1'),
(35, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-04 17:14:39', 6, '::1'),
(36, 'User Deleted [ID: 7]', '2023-10-04 17:21:18', 1, '::1'),
(37, 'User tried to access the page without permission [categories, view]', '2023-10-04 17:23:19', 1, '::1'),
(38, 'User tried to access the page without permission [categories, view]', '2023-10-04 17:24:17', 1, '::1'),
(39, 'Category Status Updated [ID: 1]', '2023-10-04 17:53:19', 1, '::1'),
(40, 'Category Status Updated [ID: 1]', '2023-10-04 17:53:22', 1, '::1'),
(41, 'User tried to access the page without permission [projects, view]', '2023-10-04 18:11:51', 1, '::1'),
(42, 'User tried to access the page without permission [projects, view]', '2023-10-04 18:12:03', 1, '::1'),
(43, 'User Logged Out [Email: admin@narola.email]', '2023-10-04 18:29:01', 1, '::1'),
(44, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-04 18:30:00', 6, '::1'),
(45, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 09:09:31', 6, '::1'),
(46, 'User tried to access the page without permission [projects, view]', '2023-10-05 09:25:33', 6, '::1'),
(47, 'User tried to access the page without permission [projects, create]', '2023-10-05 09:32:20', 6, '::1'),
(48, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 09:49:40', 6, '::1'),
(49, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:09:42', 6, '::1'),
(50, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:11:50', 6, '::1'),
(51, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:20:15', 6, '::1'),
(52, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:32:39', 6, '::1'),
(53, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:32:49', 6, '::1'),
(54, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:33:36', 6, '::1'),
(55, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:34:13', 6, '::1'),
(56, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:37:51', 6, '::1'),
(57, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:04', 6, '::1'),
(58, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:11', 6, '::1'),
(59, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:27', 6, '::1'),
(60, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:32', 6, '::1'),
(61, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:54', 6, '::1'),
(62, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 11:38:59', 6, '::1'),
(63, 'User Logged In [Email: visitor@narola.email]', '2023-10-05 11:45:55', 4, '::1'),
(64, 'Role Updated [ID: 4]', '2023-10-05 11:46:47', 6, '::1'),
(65, 'Role Updated [ID: 4]', '2023-10-05 11:50:12', 6, '::1'),
(66, 'User Logged Out [Email: visitor@narola.email]', '2023-10-05 12:01:53', 4, '::1'),
(67, 'Settings Option Updated [Name: date_format, Value: jS F, Y]', '2023-10-05 12:09:47', 6, '::1'),
(68, 'Settings Option Updated [Name: time_format, Value: H:i]', '2023-10-05 12:09:47', 6, '::1'),
(69, 'New Settings Option Created [Name: date_format, Value: jS F, Y]', '2023-10-05 12:12:20', 6, '::1'),
(70, 'New Settings Option Created [Name: time_format, Value: H:i]', '2023-10-05 12:12:20', 6, '::1'),
(71, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 12:26:27', 6, '::1'),
(72, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 12:26:36', 6, '::1'),
(73, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 12:56:55', 6, '::1'),
(74, 'User Logged In [Email: visitor@narola.email]', '2023-10-05 12:57:01', 4, '::1'),
(75, 'User Logged Out [Email: visitor@narola.email]', '2023-10-05 12:57:22', 4, '::1'),
(76, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 12:57:43', 6, '::1'),
(77, 'Role Updated [ID: 4]', '2023-10-05 12:58:21', 6, '::1'),
(78, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 13:13:59', 6, '::1'),
(79, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:06:25', 6, '::1'),
(80, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:06:34', 6, '::1'),
(81, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:21:45', 6, '::1'),
(82, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:22:05', 6, '::1'),
(83, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:37:31', 6, '::1'),
(84, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 14:38:45', 6, '::1'),
(85, 'User tried to access the page without permission [projects, create]', '2023-10-05 14:51:08', 6, '::1'),
(86, 'User Updated [ID: 2]', '2023-10-05 15:47:14', 6, '::1'),
(87, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 15:48:19', 6, '::1'),
(88, 'Non Existing User Tried to Login [Email: author@narola.email]', '2023-10-05 15:48:30', NULL, '::1'),
(89, 'User Logged In [Email: author@narola.email]', '2023-10-05 15:50:53', NULL, '::1'),
(90, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 15:51:03', 6, '::1'),
(91, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 15:51:57', 6, '::1'),
(92, 'User Logged In [Email: author@narola.email]', '2023-10-05 15:52:04', 2, '::1'),
(93, 'User tried to access the page without permission [email_templates, view]', '2023-10-05 15:52:15', 2, '::1'),
(94, 'User Logged Out [Email: author@narola.email]', '2023-10-05 15:52:26', 2, '::1'),
(95, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 15:52:33', 6, '::1'),
(96, 'Role Updated [ID: 2]', '2023-10-05 15:53:19', 6, '::1'),
(97, 'User Logged In [Email: author@narola.email]', '2023-10-05 15:53:43', 2, '::1'),
(98, 'User Logged Out [Email: author@narola.email]', '2023-10-05 15:53:47', 2, '::1'),
(99, 'User Logged In [Email: author@narola.email]', '2023-10-05 15:54:02', 2, '::1'),
(100, 'User tried to access the page without permission [email_templates, view]', '2023-10-05 15:54:14', 2, '::1'),
(101, 'User tried to access the page without permission [email_templates, view]', '2023-10-05 15:54:18', 2, '::1'),
(102, 'Role Updated [ID: 2]', '2023-10-05 15:54:36', 6, '::1'),
(103, 'Role Updated [ID: 2]', '2023-10-05 15:55:34', 6, '::1'),
(104, 'User tried to access the page without permission [settings, view]', '2023-10-05 15:55:38', 2, '::1'),
(105, 'User tried to access the page without permission [email_templates, view]', '2023-10-05 15:55:41', 2, '::1'),
(106, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 16:40:47', 6, '::1'),
(107, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 17:16:46', 6, '::1'),
(108, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 17:45:18', 6, '::1'),
(109, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 17:45:36', 6, '::1'),
(110, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 18:00:46', 6, '::1'),
(111, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-05 18:08:17', 6, '::1'),
(112, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-05 18:23:23', 6, '::1'),
(113, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 09:08:46', 6, '::1'),
(114, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 09:08:55', 6, '::1'),
(115, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:01:22', 6, '::1'),
(116, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:07:38', 6, '::1'),
(117, 'User Logged Out [Email: ]', '2023-10-06 10:23:43', NULL, '::1'),
(118, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:28:49', 6, '::1'),
(119, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:28:54', 6, '::1'),
(120, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:29:03', 6, '::1'),
(121, 'Settings Option Updated [Name: smtp_encryption, Value: tls]', '2023-10-06 10:35:49', 6, '::1'),
(122, 'Settings Option Updated [Name: smtp_encryption, Value: ssl]', '2023-10-06 10:36:02', 6, '::1'),
(123, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:42:27', 6, '::1'),
(124, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:42:36', 6, '::1'),
(125, 'Email Template Updated [ID:3]', '2023-10-06 10:45:45', 6, '::1'),
(126, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:46:10', 6, '::1'),
(127, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 10:46:18', 6, '::1'),
(128, 'Settings Option Updated [Name: smtp_user, Value: sanat.queueloop@gmail.com]', '2023-10-06 10:58:12', 6, '::1'),
(129, 'Settings Option Updated [Name: smtp_password, Value: puigmlfhgpzmjyvr]', '2023-10-06 10:58:12', 6, '::1'),
(130, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:01:21', 6, '::1'),
(131, 'Email Template Updated [ID:3]', '2023-10-06 11:27:10', 6, '::1'),
(132, 'Email Template Updated [ID:3]', '2023-10-06 11:27:44', 6, '::1'),
(133, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:41:28', 6, '::1'),
(134, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:43:59', 6, '::1'),
(135, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:04', 6, '::1'),
(136, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:22', 6, '::1'),
(137, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:27', NULL, '::1'),
(138, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:35', NULL, '::1'),
(139, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:46', 6, '::1'),
(140, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:44:58', 6, '::1'),
(141, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:45:22', 6, '::1'),
(142, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:46:02', 6, '::1'),
(143, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:48:23', 6, '::1'),
(144, 'Failed Login Attempt [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:48:31', 6, '::1'),
(145, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:48:48', 6, '::1'),
(146, 'Non Existing User Tried to Login [Email: admin@gmail.com]', '2023-10-06 11:48:55', NULL, '::1'),
(147, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:49:25', 6, '::1'),
(148, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:53:39', 6, '::1'),
(149, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:54:24', 6, '::1'),
(150, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:54:29', 6, '::1'),
(151, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:54:35', 6, '::1'),
(152, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:54:46', 6, '::1'),
(153, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:55:21', 6, '::1'),
(154, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:59:00', 6, '::1'),
(155, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 11:59:13', 6, '::1'),
(156, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:00:46', 6, '::1'),
(157, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:01:42', 6, '::1'),
(158, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:01:53', 6, '::1'),
(159, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:01:59', 6, '::1'),
(160, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:08:52', 6, '::1'),
(161, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:08:56', 6, '::1'),
(162, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:09:32', 6, '::1'),
(163, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:09:42', 6, '::1'),
(164, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:09:49', 6, '::1'),
(165, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:09:56', 6, '::1'),
(166, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:10:09', 6, '::1'),
(167, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:10:14', 6, '::1'),
(168, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:11:10', 6, '::1'),
(169, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:11:15', 6, '::1'),
(170, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:11:22', 6, '::1'),
(171, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:12:29', 6, '::1'),
(172, 'Failed Login Attempt [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:12:37', 6, '::1'),
(173, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:12:48', 6, '::1'),
(174, 'Failed Login Attempt [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:12:52', 6, '::1'),
(175, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:13:09', 6, '::1'),
(176, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:13:17', 6, '::1'),
(177, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:13:25', 6, '::1'),
(178, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:17:02', 6, '::1'),
(179, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:22:27', 6, '::1'),
(180, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:22:32', 6, '::1'),
(181, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:28:28', 6, '::1'),
(182, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:31:45', 6, '::1'),
(183, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:31:49', 6, '::1'),
(184, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:31:54', 6, '::1'),
(185, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:34:01', 6, '::1'),
(186, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:34:08', 6, '::1'),
(187, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:36:34', 6, '::1'),
(188, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:36:42', 6, '::1'),
(189, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:37:39', 6, '::1'),
(190, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:38:31', 6, '::1'),
(191, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:39:22', 6, '::1'),
(192, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:41:14', 6, '::1'),
(193, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:42:43', 6, '::1'),
(194, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:45:14', 6, '::1'),
(195, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:45:45', 6, '::1'),
(196, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:46:07', 6, '::1'),
(197, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 12:58:47', 6, '::1'),
(198, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 13:00:03', 6, '::1'),
(199, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 13:03:53', 6, '::1'),
(200, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 13:04:35', 6, '::1'),
(201, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 13:05:21', 6, '::1'),
(202, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:05:13', 6, '::1'),
(203, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:05:22', 6, '::1'),
(204, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:05:25', 6, '::1'),
(205, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:06:41', 6, '::1'),
(206, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:06:53', 6, '::1'),
(207, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:08:50', 6, '::1'),
(208, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:08:57', 6, '::1'),
(209, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:09:40', 6, '::1'),
(210, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:12:19', 6, '::1'),
(211, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:12:30', 6, '::1'),
(212, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:13:20', 6, '::1'),
(213, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:13:45', 6, '::1'),
(214, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:14:07', 6, '::1'),
(215, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:15:44', 6, '::1'),
(216, 'User Logged Out [Email: admin@narola.email]', '2023-10-06 14:39:38', 1, '::1'),
(217, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:40:22', 6, '::1'),
(218, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:42:06', 6, '::1'),
(219, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:42:16', 6, '::1'),
(220, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 14:44:09', 6, '::1'),
(221, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:03:05', 6, '::1'),
(222, 'Settings Option Updated [Name: smtp_password, Value: fuqjbzjcvxdxfzqm]', '2023-10-06 15:04:06', 6, '::1'),
(223, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:06:27', 6, '::1'),
(224, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:25:22', 6, '::1'),
(225, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:25:54', 6, '::1'),
(226, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:27:26', 6, '::1'),
(227, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:34:36', 6, '::1'),
(228, 'User Logged Out [Email: ]', '2023-10-06 15:37:14', NULL, '::1'),
(229, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:38:42', 6, '::1'),
(230, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:39:06', 6, '::1'),
(231, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:39:27', 6, '::1'),
(232, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:46:53', 6, '::1'),
(233, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:48:38', 6, '::1'),
(234, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:48:57', 6, '::1'),
(235, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:50:12', 6, '::1'),
(236, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:50:37', 6, '::1'),
(237, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:53:43', 6, '::1'),
(238, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:55:13', 6, '::1'),
(239, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:55:24', 6, '::1'),
(240, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 15:59:38', 6, '::1'),
(241, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:00:18', 6, '::1'),
(242, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:00:53', 6, '::1'),
(243, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:03:01', 6, '::1'),
(244, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:10:08', 6, '::1'),
(245, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:10:20', 6, '::1'),
(246, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:18:11', 6, '::1'),
(247, 'User Logged In [Email: yash.queueloop@gmail.com]', '2023-10-06 16:21:57', 8, '::1'),
(248, 'User Logged Out [Email: yash.queueloop@gmail.com]', '2023-10-06 16:21:59', 8, '::1'),
(249, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:22:30', 6, '::1'),
(250, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:22:34', 6, '::1'),
(251, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:22:53', 6, '::1'),
(252, 'User Logged In [Email: yash.queueloop@gmail.com]', '2023-10-06 16:23:25', 8, '::1'),
(253, 'User Logged Out [Email: yash.queueloop@gmail.com]', '2023-10-06 16:23:29', 8, '::1'),
(254, 'User Deleted [ID: 8]', '2023-10-06 16:23:39', 6, '::1'),
(255, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:34:20', 6, '::1'),
(256, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:34:29', 6, '::1'),
(257, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:49:01', 6, '::1'),
(258, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:49:06', 6, '::1'),
(259, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 16:49:19', 6, '::1'),
(260, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 17:13:34', 6, '::1'),
(261, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 17:13:50', 6, '::1'),
(262, 'Role Updated [ID: 1]', '2023-10-06 17:14:04', 6, '::1'),
(263, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:14:27', 6, '::1'),
(264, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:15:57', 6, '::1'),
(265, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 17:16:02', 6, '::1'),
(266, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 17:16:11', 6, '::1'),
(267, 'Role Updated [ID: 1]', '2023-10-06 17:17:59', 6, '::1'),
(268, 'Role Updated [ID: 1]', '2023-10-06 17:18:43', 6, '::1'),
(269, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:18:50', 6, '::1'),
(270, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:18:58', 6, '::1'),
(271, 'User tried to access the page without permission [subjects, create]', '2023-10-06 17:19:10', 6, '::1'),
(272, 'User tried to access the page without permission [subjects, create]', '2023-10-06 17:20:42', 6, '::1'),
(273, 'User tried to access the page without permission [subjects, create]', '2023-10-06 17:20:43', 6, '::1'),
(274, 'User tried to access the page without permission [subjects, create]', '2023-10-06 17:20:43', 6, '::1'),
(275, 'User tried to access the page without permission [subjects, create]', '2023-10-06 17:20:43', 6, '::1'),
(276, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:22:46', 6, '::1'),
(277, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:24:08', 6, '::1'),
(278, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:24:18', 6, '::1'),
(279, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:25:25', 6, '::1'),
(280, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:25:25', 6, '::1'),
(281, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:25:31', 6, '::1'),
(282, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:25:59', 6, '::1'),
(283, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:06', 6, '::1'),
(284, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:07', 6, '::1'),
(285, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:07', 6, '::1'),
(286, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:07', 6, '::1'),
(287, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:17', 6, '::1'),
(288, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:26:37', 6, '::1'),
(289, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:29:47', 6, '::1'),
(290, 'User Logged In [Email: author@narola.email]', '2023-10-06 17:31:52', 2, '::1'),
(291, 'User tried to access the page without permission [email_templates, view]', '2023-10-06 17:31:55', 2, '::1'),
(292, 'User tried to access the page without permission [email_templates, view]', '2023-10-06 17:32:00', 2, '::1'),
(293, 'User Logged Out [Email: author@narola.email]', '2023-10-06 17:32:04', 2, '::1'),
(294, 'User Logged In [Email: admin@narola.email]', '2023-10-06 17:32:14', 1, '::1'),
(295, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:33:36', 6, '::1'),
(296, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:33:50', 6, '::1'),
(297, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:33:55', 6, '::1'),
(298, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:33:59', 6, '::1'),
(299, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:06', 6, '::1'),
(300, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:16', 6, '::1'),
(301, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:22', 6, '::1'),
(302, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:26', 6, '::1'),
(303, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:30', 6, '::1'),
(304, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:34', 6, '::1'),
(305, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:39', 6, '::1'),
(306, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:44', 6, '::1'),
(307, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:45', 6, '::1'),
(308, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:49', 6, '::1'),
(309, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:49', 6, '::1'),
(310, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:50', 6, '::1'),
(311, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:34:53', 6, '::1'),
(312, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:35:07', 6, '::1'),
(313, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:35:13', 6, '::1'),
(314, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:35:18', 6, '::1'),
(315, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:35:23', 6, '::1'),
(316, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:35:41', 6, '::1'),
(317, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:21', 6, '::1'),
(318, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:23', 6, '::1'),
(319, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:23', 6, '::1'),
(320, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:24', 6, '::1'),
(321, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:24', 6, '::1'),
(322, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:24', 6, '::1'),
(323, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:24', 6, '::1'),
(324, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:25', 6, '::1'),
(325, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:25', 6, '::1'),
(326, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:25', 6, '::1'),
(327, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:36:48', 6, '::1'),
(328, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:06', 6, '::1'),
(329, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:16', 6, '::1'),
(330, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:21', 6, '::1'),
(331, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:26', 6, '::1'),
(332, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:45', 6, '::1'),
(333, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:47', 6, '::1'),
(334, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:48', 6, '::1'),
(335, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:48', 6, '::1'),
(336, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:48', 6, '::1'),
(337, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:48', 6, '::1'),
(338, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:49', 6, '::1'),
(339, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:49', 6, '::1'),
(340, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:37:49', 6, '::1'),
(341, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:06', 6, '::1'),
(342, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:08', 6, '::1'),
(343, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:08', 6, '::1'),
(344, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:08', 6, '::1'),
(345, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:08', 6, '::1'),
(346, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:08', 6, '::1'),
(347, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:09', 6, '::1'),
(348, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:09', 6, '::1'),
(349, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:09', 6, '::1'),
(350, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:09', 6, '::1'),
(351, 'User tried to access the page without permission [subjects, view]', '2023-10-06 17:43:10', 6, '::1'),
(352, 'Role Updated [ID: 1]', '2023-10-06 17:43:50', 6, '::1'),
(353, 'User Logged Out [Email: admin@narola.email]', '2023-10-06 17:47:44', 1, '::1'),
(354, 'New Subject Created [ID:15]', '2023-10-06 17:51:20', 6, '::1'),
(355, 'Subject Deleted [ID:15]', '2023-10-06 17:53:50', 6, '::1'),
(356, 'New Subject Created [ID:1]', '2023-10-06 17:59:27', 6, '::1'),
(357, 'Subject Updated [ID:1]', '2023-10-06 18:01:43', 6, '::1'),
(358, 'User Logged In [Email: author@narola.email]', '2023-10-06 18:02:05', 2, '::1'),
(359, 'Role Updated [ID: 2]', '2023-10-06 18:02:22', 6, '::1'),
(360, 'Role Updated [ID: 3]', '2023-10-06 18:03:15', 6, '::1'),
(361, 'User Logged Out [Email: author@narola.email]', '2023-10-06 18:03:19', 2, '::1'),
(362, 'User Logged In [Email: editor@narola.email]', '2023-10-06 18:03:29', 3, '::1'),
(363, 'Role Updated [ID: 4]', '2023-10-06 18:03:45', 6, '::1'),
(364, 'User Logged Out [Email: editor@narola.email]', '2023-10-06 18:03:48', 3, '::1'),
(365, 'User Logged In [Email: visitor@narola.email]', '2023-10-06 18:04:02', 4, '::1'),
(366, 'New Subject Created [ID:2]', '2023-10-06 18:06:00', 6, '::1'),
(367, 'New Subject Created [ID:3]', '2023-10-06 18:07:34', 6, '::1'),
(368, 'New Subject Created [ID:4]', '2023-10-06 18:08:25', 6, '::1'),
(369, 'Subject Updated [ID:4]', '2023-10-06 18:09:09', 6, '::1'),
(370, 'Subjects Deleted [IDs: 1,2]', '2023-10-06 18:12:17', 6, '::1'),
(371, 'Role Updated [ID: 1]', '2023-10-06 18:15:52', 6, '::1'),
(372, 'Role Updated [ID: 1]', '2023-10-06 18:16:08', 6, '::1'),
(373, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-06 18:20:55', 6, '::1'),
(374, 'User Logged Out [Email: visitor@narola.email]', '2023-10-06 18:21:49', 4, '::1'),
(375, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-06 18:22:57', 6, '::1'),
(376, 'New Subject Created [ID:5]', '2023-10-06 18:24:11', 6, '::1'),
(377, 'Subject Updated [ID:5]', '2023-10-06 18:24:53', 6, '::1'),
(378, 'Subject Deleted [ID:3]', '2023-10-06 18:25:32', 6, '::1'),
(379, 'Subject Updated [ID:5]', '2023-10-06 18:31:31', 6, '::1'),
(380, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:06:36', 6, '::1'),
(381, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:20:13', 6, '::1'),
(382, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:20:33', 6, '::1'),
(383, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:22:22', 6, '::1'),
(384, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:24:29', 6, '::1'),
(385, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:24:34', 6, '::1'),
(386, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:27:59', 6, '::1'),
(387, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:29:36', 6, '::1'),
(388, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:30:24', 6, '::1'),
(389, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 09:30:58', 6, '::1'),
(390, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 10:03:30', 6, '::1'),
(391, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-09 10:44:06', 6, '::1'),
(392, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-09 11:32:31', 6, '::1'),
(393, 'Non Existing User Tried to Login [Email: admin@gmail.com]', '2023-10-09 11:32:40', NULL, '::1'),
(394, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 13:01:39', 6, '::1'),
(395, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 13:16:41', 6, '::1'),
(396, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 14:08:21', 6, '::1'),
(397, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 14:23:22', 6, '::1'),
(398, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 14:27:59', 6, '::1'),
(399, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 15:11:26', 6, '::1'),
(400, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 15:20:42', 6, '::1'),
(401, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 15:35:44', 6, '::1'),
(402, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 15:39:37', 6, '::1'),
(403, 'Category Status Updated [ID: 1]', '2023-10-09 15:52:17', 6, '::1'),
(404, 'Category Status Updated [ID: 1]', '2023-10-09 15:52:19', 6, '::1'),
(405, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 15:54:40', 6, '::1'),
(406, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 16:30:42', 6, '::1'),
(407, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 16:38:53', 6, '::1'),
(408, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-10-09 16:38:56', 6, '::1'),
(409, 'Non Existing User Tried to Login [Email: admin@gmail.com]', '2023-10-09 16:42:21', NULL, '::1'),
(410, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 16:42:34', 6, '::1'),
(411, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 17:06:48', 6, '::1'),
(412, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 17:15:59', 6, '::1'),
(413, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 17:34:33', 6, '::1'),
(414, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 17:47:16', 6, '::1'),
(415, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 18:02:23', 6, '::1'),
(416, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-09 18:14:15', 6, '::1'),
(417, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-09 18:30:15', 6, '::1'),
(418, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-10 09:07:11', 6, '::1'),
(419, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-10 09:30:44', 6, '::1'),
(420, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-10 09:32:44', 6, '::1'),
(421, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-10 09:47:48', 6, '::1'),
(422, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-10 09:48:58', 6, '::1'),
(423, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-10-10 10:04:01', 6, '::1'),
(424, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-10-10 10:44:59', 6, '::1'),
(425, 'User Logged In [Email: admin@narola.email]', '2023-11-28 10:08:47', 1, '::1'),
(426, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 10:08:56', 1, '::1'),
(427, 'User Logged In [Email: admin@narola.email]', '2023-11-28 10:09:07', 1, '::1'),
(428, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 10:09:11', 1, '::1'),
(429, 'User Logged In [Email: admin@narola.email]', '2023-11-28 10:09:33', 1, '::1'),
(430, 'User Logged In [Email: admin@narola.email]', '2023-11-28 10:27:38', 1, '::1'),
(431, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 10:44:01', 1, '::1'),
(432, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 10:47:25', NULL, '::1'),
(433, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 10:47:32', NULL, '::1'),
(434, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 10:47:44', NULL, '::1'),
(435, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 10:48:14', 6, '::1'),
(436, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 10:48:31', 6, '::1'),
(437, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 10:50:17', 6, '::1'),
(438, 'User Resetted the Password', '2023-11-28 10:50:30', 6, '::1'),
(439, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-11-28 10:50:50', 6, '::1'),
(440, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-11-28 11:54:47', 6, '::1'),
(441, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-11-28 12:10:50', 6, '::1'),
(442, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-11-28 12:35:35', 6, '::1'),
(443, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-11-28 12:48:00', 6, '::1'),
(444, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:35:48', 6, '::1'),
(445, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:37:38', 6, '::1'),
(446, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:37:47', 6, '::1'),
(447, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:37:58', 6, '::1'),
(448, 'User Resetted the Password', '2023-11-28 14:38:51', 6, '::1'),
(449, 'User Logged In [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:39:06', 6, '::1'),
(450, 'User Logged Out [Email: sanat.queueloop@gmail.com]', '2023-11-28 14:54:06', 6, '::1'),
(451, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 16:00:05', 6, '::1'),
(452, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 16:00:11', 6, '::1'),
(453, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 16:00:22', 6, '::1'),
(454, 'User Logged In [Email: admin@narola.email]', '2023-11-28 16:00:36', 1, '::1'),
(455, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 16:17:08', 1, '::1'),
(456, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 16:29:21', NULL, '::1'),
(457, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 16:29:28', 6, '::1'),
(458, 'Failed Login Attempt With Incorrect Password [Email: sanat.queueloop@gmail.com]', '2023-11-28 16:29:52', 6, '::1'),
(459, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 16:30:01', NULL, '::1'),
(460, 'Non Existing User Tried to Login [Email: admin@admin.com]', '2023-11-28 16:30:17', NULL, '::1'),
(461, 'User Logged In [Email: admin@narola.email]', '2023-11-28 16:30:33', 1, '::1'),
(462, 'Email Template Updated [ID:2]', '2023-11-28 16:43:23', 1, '::1'),
(463, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 17:04:15', 1, '::1'),
(464, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-11-28 17:13:35', 1, '::1'),
(465, 'User Logged In [Email: admin@narola.email]', '2023-11-28 17:13:51', 1, '::1'),
(466, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 17:31:03', 1, '::1'),
(467, 'User Logged In [Email: admin@narola.email]', '2023-11-28 17:36:18', 1, '::1'),
(468, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 17:51:22', 1, '::1'),
(469, 'User Logged In [Email: admin@narola.email]', '2023-11-28 17:59:53', 1, '::1'),
(470, 'Category Status Updated [ID: 1]', '2023-11-28 18:00:29', 1, '::1'),
(471, 'Category Status Updated [ID: 1]', '2023-11-28 18:00:32', 1, '::1'),
(472, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 18:19:35', 1, '::1'),
(473, 'User Logged In [Email: admin@narola.email]', '2023-11-28 18:20:31', 1, '::1'),
(474, 'User Logged Out [Email: admin@narola.email]', '2023-11-28 18:35:39', 1, '::1'),
(475, 'User Logged In [Email: admin@narola.email]', '2023-11-29 09:08:43', 1, '::1'),
(476, 'Category Status Updated [ID: 1]', '2023-11-29 09:24:48', 1, '::1'),
(477, 'Category Status Updated [ID: 1]', '2023-11-29 09:24:51', 1, '::1'),
(478, 'Category Status Updated [ID: 1]', '2023-11-29 09:24:53', 1, '::1'),
(479, 'Category Status Updated [ID: 1]', '2023-11-29 09:25:06', 1, '::1'),
(480, 'User Logged In [Email: admin@narola.email]', '2023-11-30 17:11:53', 1, '::1'),
(481, 'Category Status Updated [ID: 1]', '2023-11-30 17:12:49', 1, '::1'),
(482, 'Category Status Updated [ID: 1]', '2023-11-30 17:12:50', 1, '::1'),
(483, 'Category Status Updated [ID: 1]', '2023-11-30 17:12:50', 1, '::1'),
(484, 'Category Status Updated [ID: 1]', '2023-11-30 17:12:51', 1, '::1'),
(485, 'User Logged Out [Email: admin@narola.email]', '2023-11-30 17:17:38', 1, '::1'),
(486, 'User Logged In [Email: admin@narola.email]', '2023-11-30 17:18:11', 1, '::1'),
(487, 'User Logged Out [Email: admin@narola.email]', '2023-11-30 17:18:22', 1, '::1'),
(488, 'User Logged In [Email: admin@narola.email]', '2023-11-30 18:16:09', 1, '::1'),
(489, 'User Logged Out [Email: admin@narola.email]', '2023-11-30 18:16:17', 1, '::1'),
(490, 'User Logged In [Email: admin@narola.email]', '2023-11-30 18:16:38', 1, '::1'),
(491, 'User Logged Out [Email: admin@narola.email]', '2023-11-30 18:17:03', 1, '::1'),
(492, 'User Logged In [Email: admin@narola.email]', '2023-11-30 18:17:12', 1, '::1'),
(493, 'User Logged Out [Email: admin@narola.email]', '2023-11-30 18:32:13', 1, '::1'),
(494, 'User Logged In [Email: admin@narola.email]', '2023-12-01 11:28:28', 1, '::1'),
(495, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 11:43:28', 1, '::1'),
(496, 'User Logged In [Email: admin@narola.email]', '2023-12-01 14:29:39', 1, '::1'),
(497, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 14:34:26', 1, '::1'),
(498, 'User Logged In [Email: admin@narola.email]', '2023-12-01 14:59:25', 1, '::1'),
(499, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 15:14:26', 1, '::1'),
(500, 'User Logged In [Email: admin@narola.email]', '2023-12-01 15:15:44', 1, '::1'),
(501, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 15:30:44', 1, '::1'),
(502, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-01 15:55:00', 1, '::1'),
(503, 'User Logged In [Email: admin@narola.email]', '2023-12-01 15:55:09', 1, '::1'),
(504, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 16:23:47', 1, '::1'),
(505, 'User Logged In [Email: admin@narola.email]', '2023-12-01 16:24:21', 1, '::1'),
(506, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 16:39:22', 1, '::1'),
(507, 'User Logged In [Email: admin@narola.email]', '2023-12-01 16:40:59', 1, '::1'),
(508, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 16:56:00', 1, '::1'),
(509, 'User Logged In [Email: admin@narola.email]', '2023-12-01 16:57:59', 1, '::1'),
(510, 'User Logged Out [Email: admin@narola.email]', '2023-12-01 17:19:11', 1, '::1'),
(511, 'User Logged In [Email: admin@narola.email]', '2023-12-04 09:15:46', 1, '::1'),
(512, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 09:15:50', 1, '::1'),
(513, 'User Logged In [Email: admin@narola.email]', '2023-12-04 09:21:54', 1, '::1'),
(514, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 09:42:37', 1, '::1'),
(515, 'User Logged In [Email: admin@narola.email]', '2023-12-04 09:55:00', 1, '::1'),
(516, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 10:14:06', 1, '::1'),
(517, 'User Logged In [Email: admin@narola.email]', '2023-12-04 14:03:26', 1, '::1'),
(518, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 14:26:23', 1, '::1'),
(519, 'User Logged In [Email: admin@narola.email]', '2023-12-04 14:52:15', 1, '::1'),
(520, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 15:07:36', 1, '::1'),
(521, 'User Logged In [Email: admin@narola.email]', '2023-12-04 15:09:59', 1, '::1'),
(522, 'Category Status Updated [ID: 1]', '2023-12-04 15:35:40', 1, '::1'),
(523, 'Category Status Updated [ID: 1]', '2023-12-04 15:35:41', 1, '::1'),
(524, 'New Category Created [ID: 11]', '2023-12-04 15:36:21', 1, '::1'),
(525, 'Category Updated [ID: 11]', '2023-12-04 15:36:27', 1, '::1'),
(526, 'Category Deleted [ID: 11]', '2023-12-04 15:36:30', 1, '::1'),
(527, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 15:51:27', 1, '::1'),
(528, 'User Logged In [Email: admin@narola.email]', '2023-12-04 15:57:49', 1, '::1'),
(529, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 16:27:23', 1, '::1'),
(530, 'User Logged In [Email: admin@narola.email]', '2023-12-04 16:29:24', 1, '::1'),
(531, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 16:44:28', 1, '::1'),
(532, 'User Logged In [Email: admin@narola.email]', '2023-12-04 16:47:57', 1, '::1'),
(533, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 17:17:40', 1, '::1'),
(534, 'User Logged In [Email: admin@narola.email]', '2023-12-04 17:18:44', 1, '::1'),
(535, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 17:33:48', 1, '::1'),
(536, 'User Logged In [Email: admin@narola.email]', '2023-12-04 17:35:39', 1, '::1');
INSERT INTO `activity_logs` (`id`, `description`, `date`, `user_id`, `ip_address`) VALUES
(537, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 17:50:42', 1, '::1'),
(538, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-04 18:00:37', 1, '::1'),
(539, 'User Logged In [Email: admin@narola.email]', '2023-12-04 18:00:45', 1, '::1'),
(540, 'User Logged Out [Email: admin@narola.email]', '2023-12-04 18:16:24', 1, '::1'),
(541, 'User Logged In [Email: admin@narola.email]', '2023-12-04 18:30:59', 1, '::1'),
(542, 'User Logged In [Email: admin@narola.email]', '2023-12-05 09:16:17', 1, '::1'),
(543, 'Category Status Updated [ID: 1]', '2023-12-05 09:20:42', 1, '::1'),
(544, 'Category Status Updated [ID: 1]', '2023-12-05 09:20:42', 1, '::1'),
(545, 'Category Status Updated [ID: 2]', '2023-12-05 09:20:44', 1, '::1'),
(546, 'Category Status Updated [ID: 2]', '2023-12-05 09:20:45', 1, '::1'),
(547, 'Category Status Updated [ID: 3]', '2023-12-05 09:20:46', 1, '::1'),
(548, 'Category Status Updated [ID: 3]', '2023-12-05 09:20:46', 1, '::1'),
(549, 'Category Status Updated [ID: 4]', '2023-12-05 09:20:48', 1, '::1'),
(550, 'Category Status Updated [ID: 4]', '2023-12-05 09:20:49', 1, '::1'),
(551, 'Category Status Updated [ID: 5]', '2023-12-05 09:20:50', 1, '::1'),
(552, 'Category Status Updated [ID: 5]', '2023-12-05 09:20:50', 1, '::1'),
(553, 'Category Status Updated [ID: 5]', '2023-12-05 09:20:51', 1, '::1'),
(554, 'Category Status Updated [ID: 5]', '2023-12-05 09:20:51', 1, '::1'),
(555, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 09:31:21', 1, '::1'),
(556, 'User Logged In [Email: admin@narola.email]', '2023-12-05 09:36:31', 1, '::1'),
(557, 'Category Status Updated [ID: 1]', '2023-12-05 09:48:52', 1, '::1'),
(558, 'Category Status Updated [ID: 1]', '2023-12-05 09:48:52', 1, '::1'),
(559, 'Category Status Updated [ID: 1]', '2023-12-05 09:48:52', 1, '::1'),
(560, 'Category Status Updated [ID: 1]', '2023-12-05 09:48:52', 1, '::1'),
(561, 'Category Status Updated [ID: 2]', '2023-12-05 09:48:54', 1, '::1'),
(562, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:57', 1, '::1'),
(563, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:57', 1, '::1'),
(564, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:57', 1, '::1'),
(565, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:57', 1, '::1'),
(566, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:58', 1, '::1'),
(567, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:58', 1, '::1'),
(568, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:58', 1, '::1'),
(569, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:58', 1, '::1'),
(570, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:58', 1, '::1'),
(571, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:59', 1, '::1'),
(572, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:59', 1, '::1'),
(573, 'Category Status Updated [ID: 10]', '2023-12-05 09:48:59', 1, '::1'),
(574, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 09:51:34', 1, '::1'),
(575, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-05 09:53:23', 1, '::1'),
(576, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-05 09:53:28', 1, '::1'),
(577, 'User Logged In [Email: admin@narola.email]', '2023-12-05 09:53:39', 1, '::1'),
(578, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 10:08:42', 1, '::1'),
(579, 'User Logged In [Email: admin@narola.email]', '2023-12-05 10:10:30', 1, '::1'),
(580, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 10:26:53', 1, '::1'),
(581, 'User Logged In [Email: admin@narola.email]', '2023-12-05 10:27:40', 1, '::1'),
(582, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 10:44:26', 1, '::1'),
(583, 'User Logged In [Email: admin@narola.email]', '2023-12-05 10:46:36', 1, '::1'),
(584, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 11:01:56', 1, '::1'),
(585, 'User Logged In [Email: admin@narola.email]', '2023-12-05 11:04:24', 1, '::1'),
(586, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 11:19:28', 1, '::1'),
(587, 'User Logged In [Email: admin@narola.email]', '2023-12-05 11:28:03', 1, '::1'),
(588, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 11:43:06', 1, '::1'),
(589, 'User Logged In [Email: admin@narola.email]', '2023-12-05 12:12:18', 1, '::1'),
(590, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 12:27:22', 1, '::1'),
(591, 'User Logged In [Email: admin@narola.email]', '2023-12-05 12:41:27', 1, '::1'),
(592, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 12:56:32', 1, '::1'),
(593, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-05 14:30:01', 1, '::1'),
(594, 'User Logged In [Email: admin@narola.email]', '2023-12-05 14:30:08', 1, '::1'),
(595, 'New Category Created [ID: 12]', '2023-12-05 14:32:09', 1, '::1'),
(596, 'Category Deleted [ID: 12]', '2023-12-05 14:32:16', 1, '::1'),
(597, 'New Category Created [ID: 13]', '2023-12-05 14:32:55', 1, '::1'),
(598, 'Category Deleted [ID: 10]', '2023-12-05 14:33:01', 1, '::1'),
(599, 'New Category Created [ID: 14]', '2023-12-05 14:33:21', 1, '::1'),
(600, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 14:48:22', 1, '::1'),
(601, 'User Logged In [Email: admin@narola.email]', '2023-12-05 14:49:28', 1, '::1'),
(602, 'Category Status Updated [ID: 1]', '2023-12-05 14:49:43', 1, '::1'),
(603, 'Category Status Updated [ID: 1]', '2023-12-05 14:49:44', 1, '::1'),
(604, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 15:25:36', 1, '::1'),
(605, 'User Logged In [Email: admin@narola.email]', '2023-12-05 15:28:11', 1, '::1'),
(606, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 15:32:53', 1, '::1'),
(607, 'User Logged In [Email: admin@narola.email]', '2023-12-05 15:37:08', 1, '::1'),
(608, 'Category Updated [ID: 1]', '2023-12-05 15:37:12', 1, '::1'),
(609, 'Category Updated [ID: 2]', '2023-12-05 15:37:16', 1, '::1'),
(610, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 15:52:21', 1, '::1'),
(611, 'User Logged In [Email: admin@narola.email]', '2023-12-05 16:00:16', 1, '::1'),
(612, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 16:15:25', 1, '::1'),
(613, 'User Logged In [Email: admin@narola.email]', '2023-12-05 16:15:53', 1, '::1'),
(614, 'Category Updated [ID: 1]', '2023-12-05 16:24:32', 1, '::1'),
(615, 'Category Deleted [ID: 1]', '2023-12-05 16:26:28', 1, '::1'),
(616, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 16:41:25', 1, '::1'),
(617, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-05 16:49:47', 1, '::1'),
(618, 'User Logged In [Email: admin@narola.email]', '2023-12-05 16:49:52', 1, '::1'),
(619, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 17:04:56', 1, '::1'),
(620, 'User Logged In [Email: admin@narola.email]', '2023-12-05 17:36:06', 1, '::1'),
(621, 'User Logged Out [Email: admin@narola.email]', '2023-12-05 17:51:10', 1, '::1'),
(622, 'User Logged In [Email: admin@narola.email]', '2023-12-05 18:12:23', 1, '::1'),
(623, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-05 18:28:24', 1, '::1'),
(624, 'User Logged In [Email: admin@narola.email]', '2023-12-05 18:28:28', 1, '::1'),
(625, 'Inactive User Tried to Login [Email: yash@gmail.com]', '2023-12-06 09:55:39', 7, '::1'),
(626, 'User Logged In [Email: admin@narola.email]', '2023-12-06 09:55:48', 1, '::1'),
(627, 'Category Status Updated [ID: 2]', '2023-12-06 09:56:18', 1, '::1'),
(628, 'Category Status Updated [ID: 2]', '2023-12-06 09:56:19', 1, '::1'),
(629, 'User Logged Out [Email: admin@narola.email]', '2023-12-06 09:56:31', 1, '::1'),
(630, 'User Logged In [Email: yash@gmail.com]', '2023-12-06 09:56:36', NULL, '::1'),
(631, 'User Logged In [Email: admin@narola.email]', '2023-12-06 09:56:53', 1, '::1'),
(632, 'User Logged In [Email: yash@gmail.com]', '2023-12-06 09:57:14', NULL, '::1'),
(633, 'User Deleted [ID: 7]', '2023-12-06 09:58:01', 1, '::1'),
(634, 'User Updated [ID: 3]', '2023-12-06 09:58:13', 1, '::1'),
(635, 'User Updated [ID: 2]', '2023-12-06 09:58:27', 1, '::1'),
(636, 'User Logged In [Email: author@narola.email]', '2023-12-06 09:58:51', NULL, '::1'),
(637, 'User Logged In [Email: admin@narola.email]', '2023-12-06 09:59:09', 1, '::1'),
(638, 'User Updated [ID: 2]', '2023-12-06 09:59:25', 1, '::1'),
(639, 'User Logged Out [Email: admin@narola.email]', '2023-12-06 09:59:31', 1, '::1'),
(640, 'User Logged In [Email: author@narola.email]', '2023-12-06 09:59:39', 2, '::1'),
(641, 'User Logged Out [Email: admin@narola.email]', '2023-12-06 10:01:12', 1, '::1'),
(642, 'User Logged In [Email: admin@narola.email]', '2023-12-06 10:34:01', 1, '::1'),
(643, 'User Logged Out [Email: admin@narola.email]', '2023-12-06 10:43:43', 1, '::1'),
(644, 'User Logged In [Email: admin@narola.email]', '2023-12-06 10:43:56', 1, '::1'),
(645, 'User Logged Out [Email: admin@narola.email]', '2023-12-06 10:44:51', 1, '::1'),
(646, 'User Logged In [Email: admin@narola.email]', '2023-12-06 10:46:25', 1, '::1'),
(647, 'Category Deleted [ID: 14]', '2023-12-06 11:15:11', 1, '::1'),
(648, 'Failed Login Attempt With Incorrect Password [Email: yash@gmail.com]', '2023-12-21 15:02:33', 7, '::1'),
(649, 'User Logged In [Email: admin@narola.email]', '2023-12-21 15:02:58', 1, '::1'),
(650, 'User Logged Out [Email: admin@narola.email]', '2023-12-21 15:03:05', 1, '::1'),
(651, 'User Logged In [Email: admin@narola.email]', '2023-12-21 15:03:56', 1, '::1'),
(652, 'User Logged Out [Email: admin@narola.email]', '2023-12-21 15:04:05', 1, '::1'),
(653, 'User Logged In [Email: admin@narola.email]', '2023-12-21 15:04:38', 1, '::1'),
(654, 'Categories Deleted [IDs: 2] ', '2023-12-21 16:48:25', 1, '::1'),
(655, 'User Logged Out [Email: admin@narola.email]', '2023-12-21 17:05:28', 1, '::1'),
(656, 'User Logged In [Email: admin@narola.email]', '2023-12-21 17:05:58', 1, '::1'),
(657, 'User Logged Out [Email: admin@narola.email]', '2023-12-21 17:07:02', 1, '::1'),
(658, 'User Logged In [Email: admin@narola.email]', '2023-12-22 16:30:28', 1, '::1'),
(659, 'User Updated Profile [ID:1]', '2023-12-22 16:45:28', 1, '::1'),
(660, 'User Logged In [Email: admin@narola.email]', '2023-12-25 09:43:53', 1, '::1'),
(661, 'User Logged Out [Email: admin@narola.email]', '2023-12-25 09:43:57', 1, '::1'),
(662, 'User Logged In [Email: admin@narola.email]', '2023-12-25 09:44:11', 1, '::1'),
(663, 'User Logged Out [Email: admin@narola.email]', '2023-12-25 09:44:58', 1, '::1'),
(664, 'Non Existing User Tried to Login [Email: admin@gmail.com]', '2023-12-25 09:45:38', NULL, '::1'),
(665, 'User Logged In [Email: admin@narola.email]', '2023-12-25 09:45:45', 1, '::1'),
(666, 'User Logged Out [Email: admin@narola.email]', '2023-12-25 09:45:52', 1, '::1'),
(667, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2023-12-25 09:46:34', 1, '::1'),
(668, 'User Logged In [Email: admin@narola.email]', '2023-12-25 09:47:28', 1, '::1'),
(669, 'User Logged In [Email: admin@narola.email]', '2023-12-25 14:35:47', 1, '::1'),
(670, 'Category Status Updated [ID: 3]', '2023-12-25 15:53:57', 1, '::1'),
(671, 'Category Status Updated [ID: 3]', '2023-12-25 15:53:58', 1, '::1'),
(672, 'Category Status Updated [ID: 3]', '2023-12-25 15:53:58', 1, '::1'),
(673, 'Category Status Updated [ID: 3]', '2023-12-25 15:53:59', 1, '::1'),
(674, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:00', 1, '::1'),
(675, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:05', 1, '::1'),
(676, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:06', 1, '::1'),
(677, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:06', 1, '::1'),
(678, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:06', 1, '::1'),
(679, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:06', 1, '::1'),
(680, 'Category Status Updated [ID: 3]', '2023-12-25 15:54:07', 1, '::1'),
(681, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:12', 1, '::1'),
(682, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:12', 1, '::1'),
(683, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:13', 1, '::1'),
(684, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:13', 1, '::1'),
(685, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:14', 1, '::1'),
(686, 'Category Status Updated [ID: 4]', '2023-12-25 15:54:14', 1, '::1'),
(687, 'Category Status Updated [ID: 3]', '2023-12-25 17:18:44', 1, '::1'),
(688, 'User Logged In [Email: admin@narola.email]', '2023-12-26 09:20:54', 1, '::1'),
(689, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:21', 1, '::1'),
(690, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:22', 1, '::1'),
(691, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:22', 1, '::1'),
(692, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:23', 1, '::1'),
(693, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:24', 1, '::1'),
(694, 'Category Status Updated [ID: 3]', '2023-12-26 12:50:36', 1, '::1'),
(695, 'Categories Deleted [IDs: 3,4] ', '2023-12-26 14:38:47', 1, '::1'),
(696, 'Category Deleted [ID: 5]', '2023-12-26 14:38:51', 1, '::1'),
(697, 'Category Status Updated [ID: 6]', '2023-12-26 15:23:21', 1, '::1'),
(698, 'Category Status Updated [ID: 6]', '2023-12-26 15:38:47', 1, '::1'),
(699, 'Category Status Updated [ID: 7]', '2023-12-26 15:38:47', 1, '::1'),
(700, 'Category Status Updated [ID: 8]', '2023-12-26 15:38:48', 1, '::1'),
(701, 'Category Status Updated [ID: 13]', '2023-12-26 15:38:49', 1, '::1'),
(702, 'User Logged In [Email: admin@narola.email]', '2023-12-27 09:21:30', 1, '::1'),
(703, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:04', 1, '::1'),
(704, 'Category Status Updated [ID: 7]', '2023-12-27 09:28:04', 1, '::1'),
(705, 'Category Status Updated [ID: 8]', '2023-12-27 09:28:05', 1, '::1'),
(706, 'Category Status Updated [ID: 9]', '2023-12-27 09:28:05', 1, '::1'),
(707, 'Category Status Updated [ID: 13]', '2023-12-27 09:28:06', 1, '::1'),
(708, 'Category Status Updated [ID: 13]', '2023-12-27 09:28:22', 1, '::1'),
(709, 'Category Status Updated [ID: 9]', '2023-12-27 09:28:22', 1, '::1'),
(710, 'Category Status Updated [ID: 8]', '2023-12-27 09:28:23', 1, '::1'),
(711, 'Category Status Updated [ID: 7]', '2023-12-27 09:28:23', 1, '::1'),
(712, 'Category Updated [ID: 6]', '2023-12-27 09:28:39', 1, '::1'),
(713, 'Category Updated [ID: 6]', '2023-12-27 09:28:42', 1, '::1'),
(714, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:46', 1, '::1'),
(715, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:47', 1, '::1'),
(716, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:49', 1, '::1'),
(717, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:49', 1, '::1'),
(718, 'Category Status Updated [ID: 6]', '2023-12-27 09:28:49', 1, '::1'),
(719, 'Category Status Updated [ID: 6]', '2023-12-27 09:39:56', 1, '::1'),
(720, 'Category Status Updated [ID: 6]', '2023-12-27 09:39:59', 1, '::1'),
(721, 'Category Status Updated [ID: 6]', '2023-12-27 09:40:09', 1, '::1'),
(722, 'Category Status Updated [ID: 6]', '2023-12-27 09:40:13', 1, '::1'),
(723, 'Category Status Updated [ID: 6]', '2023-12-27 09:40:21', 1, '::1'),
(724, 'Category Status Updated [ID: 6]', '2023-12-27 09:40:22', 1, '::1'),
(725, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:51', 1, '::1'),
(726, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:52', 1, '::1'),
(727, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:54', 1, '::1'),
(728, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:55', 1, '::1'),
(729, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:57', 1, '::1'),
(730, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:58', 1, '::1'),
(731, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:59', 1, '::1'),
(732, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:59', 1, '::1'),
(733, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:59', 1, '::1'),
(734, 'Category Status Updated [ID: 6]', '2023-12-27 10:39:59', 1, '::1'),
(735, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:49', 1, '::1'),
(736, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:50', 1, '::1'),
(737, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:50', 1, '::1'),
(738, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:50', 1, '::1'),
(739, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:51', 1, '::1'),
(740, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:51', 1, '::1'),
(741, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:57', 1, '::1'),
(742, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:57', 1, '::1'),
(743, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:57', 1, '::1'),
(744, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:57', 1, '::1'),
(745, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:58', 1, '::1'),
(746, 'Category Status Updated [ID: 6]', '2023-12-27 11:32:58', 1, '::1'),
(747, 'Category Status Updated [ID: 6]', '2023-12-27 11:38:51', 1, '::1'),
(748, 'Category Status Updated [ID: 6]', '2023-12-27 11:38:52', 1, '::1'),
(749, 'Category Status Updated [ID: 6]', '2023-12-27 11:38:59', 1, '::1'),
(750, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:00', 1, '::1'),
(751, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:03', 1, '::1'),
(752, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:03', 1, '::1'),
(753, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:03', 1, '::1'),
(754, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:03', 1, '::1'),
(755, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:13', 1, '::1'),
(756, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:13', 1, '::1'),
(757, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:14', 1, '::1'),
(758, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:14', 1, '::1'),
(759, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:14', 1, '::1'),
(760, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:14', 1, '::1'),
(761, 'Category Status Updated [ID: 6]', '2023-12-27 11:39:14', 1, '::1'),
(762, 'Category Updated [ID: 6]', '2023-12-27 12:14:29', 1, '::1'),
(763, 'Category Status Updated [ID: 6]', '2023-12-27 12:14:34', 1, '::1'),
(764, 'Category Updated [ID: 6]', '2023-12-27 12:14:40', 1, '::1'),
(765, 'Category Status Updated [ID: 6]', '2023-12-27 12:14:54', 1, '::1'),
(766, 'Category Status Updated [ID: 6]', '2023-12-27 12:14:54', 1, '::1'),
(767, 'Category Updated [ID: 6]', '2023-12-27 12:15:28', 1, '::1'),
(768, 'Category Updated [ID: 6]', '2023-12-27 12:16:07', 1, '::1'),
(769, 'Category Updated [ID: 6]', '2023-12-27 12:18:45', 1, '::1'),
(770, 'Category Updated [ID: 6]', '2023-12-27 12:21:31', 1, '::1'),
(771, 'Category Updated [ID: 6]', '2023-12-27 12:21:55', 1, '::1'),
(772, 'Category Updated [ID: 6]', '2023-12-27 12:22:30', 1, '::1'),
(773, 'Category Updated [ID: 6]', '2023-12-27 12:45:41', 1, '::1'),
(774, 'Categories Deleted [IDs: 6,7,8,9,13] ', '2023-12-27 12:50:48', 1, '::1'),
(775, 'New Category Created [ID: 15]', '2023-12-27 12:50:56', 1, '::1'),
(776, 'New Category Created [ID: 16]', '2023-12-27 12:51:01', 1, '::1'),
(777, 'New Category Created [ID: 17]', '2023-12-27 12:51:07', 1, '::1'),
(778, 'New Category Created [ID: 18]', '2023-12-27 12:51:13', 1, '::1'),
(779, 'Non Existing User Tried to Login [Email: real@gmail.com]', '2023-12-27 17:37:14', NULL, '::1'),
(780, 'Non Existing User Tried to Login [Email: real@gmail.com]', '2023-12-27 17:37:27', NULL, '::1'),
(781, 'Non Existing User Tried to Login [Email: real@gmail.com]', '2023-12-27 17:37:35', NULL, '::1'),
(782, 'Non Existing User Tried to Login [Email: dummy@gmail.com]', '2023-12-27 17:37:47', NULL, '::1'),
(783, 'New Project Created [ID:15]', '2023-12-27 18:11:19', 1, '::1'),
(784, 'New Project Created [ID:16]', '2023-12-27 18:12:28', 1, '::1'),
(785, 'Projects Deleted [IDs: 1]', '2023-12-27 18:12:45', 1, '::1'),
(786, 'Projects Deleted [IDs: 2]', '2023-12-27 18:12:56', 1, '::1'),
(787, 'New Project Created [ID:17]', '2023-12-27 18:25:39', 1, '::1'),
(788, 'User Logged Out [Email: admin@narola.email]', '2023-12-28 09:16:07', 1, '::1'),
(789, 'User Logged In [Email: admin@narola.email]', '2023-12-28 09:16:38', 1, '::1'),
(790, 'New Project Created [ID:18]', '2023-12-28 09:44:30', 1, '::1'),
(791, 'User Logged In [Email: admin@narola.email]', '2023-12-28 10:29:26', 1, '::1'),
(792, 'Project Deleted [ID:3]', '2023-12-28 14:27:32', 1, '::1'),
(793, 'User Logged In [Email: admin@narola.email]', '2023-12-28 17:21:14', 1, '::1'),
(794, 'Non Existing User Tried to Login [Email: admin@narola.com]', '2023-12-29 09:16:14', NULL, '::1'),
(795, 'User Logged In [Email: admin@narola.email]', '2023-12-29 09:17:07', 1, '::1'),
(796, 'User Logged In [Email: admin@narola.email]', '2023-12-29 14:03:37', 1, '::1'),
(797, 'Non Existing User Tried to Login [Email: yash@gmail.com]', '2024-01-01 09:11:40', NULL, '::1'),
(798, 'User Logged In [Email: admin@narola.email]', '2024-01-01 09:12:25', 1, '::1'),
(799, 'Settings Option Updated [Name: date_format, Value: j-M-Y]', '2024-01-01 10:41:08', 1, '::1'),
(800, 'Settings Option Updated [Name: date_format, Value: jS F, Y]', '2024-01-01 11:17:02', 1, '::1'),
(801, 'Settings Option Updated [Name: date_format, Value: j-M-Y]', '2024-01-01 11:17:22', 1, '::1'),
(802, 'Settings Option Updated [Name: company_name, Value: NISL CI demo]', '2024-01-01 16:04:44', 1, '::1'),
(803, 'Settings Option Updated [Name: company_name, Value: NISL CI Demo]', '2024-01-01 16:04:53', 1, '::1'),
(804, 'User Logged In [Email: admin@narola.email]', '2024-01-01 17:21:18', 1, '::1'),
(805, 'User Logged In [Email: admin@narola.email]', '2024-01-01 17:45:26', 1, '::1'),
(806, 'User Logged In [Email: admin@narola.email]', '2024-01-02 09:14:04', 1, '::1'),
(807, 'New Role Created [ID: 5]', '2024-01-02 16:00:44', 1, '::1'),
(808, 'Non Existing User Tried to Login [Email: yash.queueloop@gmail.com]', '2024-01-02 16:11:49', NULL, '::1'),
(809, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2024-01-02 16:11:56', 1, '::1'),
(810, 'Role Deleted [ID: 5]', '2024-01-02 16:28:36', 1, '::1'),
(811, 'New Role Created [ID: 6]', '2024-01-02 16:59:21', 1, '::1'),
(812, 'Roles Deleted [IDs: 6]', '2024-01-02 16:59:43', 1, '::1'),
(813, 'New Role Created [ID: 7]', '2024-01-02 17:05:39', 1, '::1'),
(814, 'User Logged In [Email: admin@narola.email]', '2024-01-02 17:30:55', 1, '::1'),
(815, 'User Logged In [Email: admin@narola.email]', '2024-01-02 18:10:51', 1, '::1'),
(816, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2024-01-03 09:19:21', 1, '::1'),
(817, 'User Logged In [Email: admin@narola.email]', '2024-01-03 09:19:28', 1, '::1'),
(818, 'New Role Created [ID: 8]', '2024-01-03 09:27:15', 1, '::1'),
(819, 'Role Deleted [ID: 8]', '2024-01-03 10:59:59', 1, '::1'),
(820, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2024-01-03 14:35:15', 1, '::1'),
(821, 'User Logged In [Email: admin@narola.email]', '2024-01-03 14:35:20', 1, '::1'),
(822, 'Role Deleted [ID: 7]', '2024-01-03 15:24:32', 1, '::1'),
(823, 'User Deleted [ID: 6]', '2024-01-03 16:21:46', 1, '::1'),
(824, 'New User Created [ID: 7]', '2024-01-03 16:22:18', 1, '::1'),
(825, 'New Role Created [ID: 9]', '2024-01-03 17:29:49', 1, '::1'),
(826, 'New Role Created [ID: 10]', '2024-01-03 17:29:55', 1, '::1'),
(827, 'Role Deleted [ID: 10]', '2024-01-03 17:30:02', 1, '::1'),
(828, 'User Logged In [Email: admin@narola.email]', '2024-01-04 09:25:37', 1, '::1'),
(829, 'Role Deleted [ID: 9]', '2024-01-04 09:25:48', 1, '::1'),
(830, 'User Logged Out [Email: admin@narola.email]', '2024-01-04 11:10:55', 1, '::1'),
(831, 'Failed Login Attempt With Incorrect Password [Email: admin@narola.email]', '2024-01-04 11:17:09', 1, '::1'),
(832, 'User Logged In [Email: admin@narola.email]', '2024-01-04 11:17:15', 1, '::1'),
(833, 'User Logged Out [Email: admin@narola.email]', '2024-01-04 11:21:03', 1, '::1'),
(834, 'User Logged In [Email: admin@narola.email]', '2024-01-04 11:21:23', 1, '::1'),
(835, 'New Category Created [ID: 19]', '2024-01-04 12:01:19', 1, '::1'),
(836, 'New Role Created [ID: 11]', '2024-01-04 12:19:04', 1, '::1'),
(837, 'New Category Created [ID: 20]', '2024-01-04 12:19:20', 1, '::1'),
(838, 'New Category Created [ID: 21]', '2024-01-04 12:20:29', 1, '::1'),
(839, 'User Deleted [ID: 8]', '2024-01-04 12:20:50', 1, '::1'),
(840, 'New Project Created [ID:19]', '2024-01-04 12:21:30', 1, '::1'),
(841, 'New Project Created [ID:20]', '2024-01-04 12:21:57', 1, '::1'),
(842, 'User Logged Out [Email: admin@narola.email]', '2024-01-04 12:22:01', 1, '::1'),
(843, 'Inactive User Tried to Login [Email: yash.queueloop@gmail.com]', '2024-01-04 12:22:20', 8, '::1'),
(844, 'User Logged In [Email: yash.queueloop@gmail.com]', '2024-01-04 12:22:33', NULL, '::1'),
(845, 'User Logged In [Email: yash.queueloop@gmail.com]', '2024-01-04 12:22:44', NULL, '::1'),
(846, 'User Logged In [Email: yash.queueloop@gmail.com]', '2024-01-04 12:23:18', 8, '::1'),
(847, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:23:21', 8, '::1'),
(848, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:23:25', 8, '::1'),
(849, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:23:29', 8, '::1'),
(850, 'User Logged Out [Email: yash.queueloop@gmail.com]', '2024-01-04 12:23:54', 8, '::1'),
(851, 'User Logged In [Email: yash.queueloop@gmail.com]', '2024-01-04 12:24:01', 8, '::1'),
(852, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:24:03', 8, '::1'),
(853, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:24:26', 8, '::1'),
(854, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:24:27', 8, '::1'),
(855, 'User Logged Out [Email: yash.queueloop@gmail.com]', '2024-01-04 12:24:29', 8, '::1'),
(856, 'User Logged In [Email: admin@narola.email]', '2024-01-04 12:25:53', NULL, '::1'),
(857, 'User Logged In [Email: admin@narola.email]', '2024-01-04 12:25:58', NULL, '::1'),
(858, 'User Logged In [Email: admin@narola.email]', '2024-01-04 12:26:17', 1, '::1'),
(859, 'User Deleted [ID: 7]', '2024-01-04 12:26:26', 1, '::1'),
(860, 'User Logged In [Email: visitor@narola.email]', '2024-01-04 12:27:01', 4, '::1'),
(861, 'User tried to access the page without permission [email_templates, view]', '2024-01-04 12:27:12', 4, '::1'),
(862, 'User Logged Out [Email: admin@narola.email]', '2024-01-04 12:28:18', 1, '::1'),
(863, 'User Logged In [Email: visitor@narola.email]', '2024-01-04 12:28:33', 4, '::1'),
(864, 'User Logged Out [Email: visitor@narola.email]', '2024-01-04 15:27:23', 4, '::1'),
(865, 'User Logged In [Email: admin@narola.email]', '2024-01-04 15:27:30', 1, '::1'),
(866, 'User Logged Out [Email: admin@narola.email]', '2024-01-04 15:53:33', 1, '::1'),
(867, 'User Logged In [Email: visitor@narola.email]', '2024-01-04 15:53:39', 4, '::1'),
(868, 'User Logged In [Email: admin@narola.email]', '2024-01-05 09:16:35', 1, '::1'),
(869, 'User Logged Out [Email: admin@narola.email]', '2024-01-05 09:16:39', 1, '::1'),
(870, 'User Logged In [Email: visitor@narola.email]', '2024-01-05 09:16:51', 4, '::1'),
(871, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 09:17:07', 4, '::1'),
(872, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 09:19:11', 4, '::1'),
(873, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 10:38:54', 4, '::1'),
(874, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 11:10:41', 4, '::1'),
(875, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 11:16:01', 4, '::1'),
(876, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 11:16:41', 4, '::1'),
(877, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 11:18:52', 4, '::1'),
(878, 'User Logged In [Email: admin@narola.email]', '2024-01-05 14:17:16', 1, '::1'),
(879, 'Non Existing User Tried to Login [Email: editor@gmail.com]', '2024-01-05 14:32:39', NULL, '::1'),
(880, 'Failed Login Attempt With Incorrect Password [Email: editor@narola.email]', '2024-01-05 14:32:46', 3, '::1'),
(881, 'Failed Login Attempt With Incorrect Password [Email: editor@narola.email]', '2024-01-05 14:33:09', 3, '::1'),
(882, 'Failed Login Attempt With Incorrect Password [Email: editor@narola.email]', '2024-01-05 14:33:29', 3, '::1'),
(883, 'Failed Login Attempt With Incorrect Password [Email: editor@narola.email]', '2024-01-05 14:33:35', 3, '::1'),
(884, 'Failed Login Attempt With Incorrect Password [Email: editor@narola.email]', '2024-01-05 14:33:47', 3, '::1'),
(885, 'User Logged In [Email: editor@narola.email]', '2024-01-05 14:34:27', 3, '::1'),
(886, 'User tried to access the page without permission [settings, view]', '2024-01-05 14:34:27', 3, '::1'),
(887, 'User tried to access the page without permission [email_templates, view]', '2024-01-05 14:34:35', 3, '::1'),
(888, 'User Logged Out [Email: editor@narola.email]', '2024-01-05 14:34:57', 3, '::1'),
(889, 'User Logged In [Email: editor@narola.email]', '2024-01-05 14:35:46', 3, '::1'),
(890, 'Category Status Updated [ID: 15]', '2024-01-05 14:39:15', 3, '::1'),
(891, 'Category Status Updated [ID: 16]', '2024-01-05 14:39:17', 3, '::1'),
(892, 'Category Status Updated [ID: 17]', '2024-01-05 14:39:19', 3, '::1'),
(893, 'Category Status Updated [ID: 18]', '2024-01-05 14:39:19', 3, '::1'),
(894, 'Category Status Updated [ID: 19]', '2024-01-05 14:39:20', 3, '::1'),
(895, 'Category Status Updated [ID: 20]', '2024-01-05 14:39:21', 3, '::1'),
(896, 'Category Status Updated [ID: 21]', '2024-01-05 14:39:21', 3, '::1'),
(897, 'Category Status Updated [ID: 21]', '2024-01-05 14:39:21', 3, '::1'),
(898, 'Category Status Updated [ID: 20]', '2024-01-05 14:39:22', 3, '::1'),
(899, 'Category Status Updated [ID: 19]', '2024-01-05 14:39:22', 3, '::1'),
(900, 'Category Status Updated [ID: 18]', '2024-01-05 14:39:23', 3, '::1'),
(901, 'Category Status Updated [ID: 17]', '2024-01-05 14:39:23', 3, '::1'),
(902, 'Category Status Updated [ID: 16]', '2024-01-05 14:39:25', 3, '::1'),
(903, 'Category Status Updated [ID: 15]', '2024-01-05 14:39:26', 3, '::1'),
(904, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:02', 1, '::1'),
(905, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:04', 1, '::1'),
(906, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:05', 1, '::1'),
(907, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:06', 1, '::1'),
(908, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:11', 1, '::1'),
(909, 'Category Status Updated [ID: 21]', '2024-01-05 16:34:15', 1, '::1'),
(910, 'New User Created [ID: 11]', '2024-01-05 17:21:16', 1, '::1'),
(911, 'Users Deleted [IDs: 11]', '2024-01-05 17:21:40', 1, '::1'),
(912, 'User Logged In [Email: admin@narola.email]', '2024-01-08 09:26:44', 1, '::1'),
(913, 'Email Template Updated [ID:1]', '2024-01-08 09:49:33', 1, '::1'),
(914, 'User Logged Out [Email: admin@narola.email]', '2024-01-08 09:49:41', 1, '::1'),
(915, 'User Logged In [Email: admin@narola.email]', '2024-01-08 09:56:34', 1, '::1'),
(916, 'Email Template Updated [ID:4]', '2024-01-08 11:28:36', 1, '::1'),
(917, 'Email Template Updated [ID:2]', '2024-01-08 11:54:52', 1, '::1'),
(918, 'User Logged Out [Email: admin@narola.email]', '2024-01-08 12:59:31', 1, '::1'),
(919, 'User Logged In [Email: admin@narola.email]', '2024-01-08 13:51:17', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created`, `updated`, `is_active`, `is_deleted`) VALUES
(12, '1', 34, '2024-01-30 12:52:22', NULL, 1, NULL),
(13, '2', 34, '2024-01-30 12:52:25', NULL, 1, NULL),
(14, '3', 34, '2024-01-30 12:52:27', NULL, 1, NULL),
(15, '4', 34, '2024-01-30 12:52:29', NULL, 1, NULL),
(16, '5', 34, '2024-01-30 12:52:32', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `placeholders` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `slug`, `name`, `subject`, `message`, `placeholders`) VALUES
(2, 'new-user-signup', 'New User Sign Up', 'hello ', '<p>fgh j dfj{firstname}{lastname}<br><br>dfyjdjfdfj{company_name}<br><br><br>dfgjfj{email_verification_url}<br><br>{email_signature}{company_name}<br></p>', 'a:5:{s:11:\"{firstname}\";s:14:\"User Firstname\";s:10:\"{lastname}\";s:13:\"User Lastname\";s:24:\"{email_verification_url}\";s:22:\"Email Verification URL\";s:17:\"{email_signature}\";s:15:\"Email Signature\";s:14:\"{company_name}\";s:12:\"Company Name\";}'),
(3, 'user-login', 'User Login', '', '', 'a:5:{s:11:\"{firstname}\";s:14:\"User Firstname\";s:10:\"{lastname}\";s:13:\"User Lastname\";s:20:\"{user_login_message}\";s:18:\"User Login Message\";s:17:\"{email_signature}\";s:15:\"Email Signature\";s:14:\"{company_name}\";s:12:\"Company Name\";}'),
(4, 'forgot-password', 'Forgot Password', 'fyfuu', '<p>rtfy</p>', 'a:6:{s:11:\"{firstname}\";s:14:\"User Firstname\";s:10:\"{lastname}\";s:13:\"User Lastname\";s:7:\"{email}\";s:10:\"User Email\";s:20:\"{reset_password_url}\";s:18:\"Reset Password URL\";s:17:\"{email_signature}\";s:15:\"Email Signature\";s:14:\"{company_name}\";s:12:\"Company Name\";}');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1706588745);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_id` varchar(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `details` mediumtext CHARACTER SET utf16,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_id`, `name`, `details`, `created`, `updated`, `is_deleted`) VALUES
(1, 'PROJECT_23', 'Sample Project One', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', '2023-10-04 16:37:03', 1),
(2, 'PROJECT_12', 'Sample Project Two', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 1),
(3, 'PROJECT_11', 'Sample Project Three', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 1),
(4, 'PROJECT_78', 'Sample Project Four', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', '2019-09-17 19:36:12', 0),
(5, 'PROJECT_29', 'Sample Project Five', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(6, 'PROJECT_63', 'Sample Project Six', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(7, 'PROJECT_22', 'Sample Project Seven', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(8, 'PROJECT_32', 'Sample Project Eight', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(9, 'PROJECT_63', 'Sample Project Nine', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(10, 'PROJECT_22', 'Sample Project Ten', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(11, 'PROJECT_42', 'Sample Project Eleven', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(12, 'PROJECT_53', 'Sample Project Twelve', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(13, 'PROJECT_62', 'Sample Project Thirteen', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(14, 'PROJECT_72', 'Sample Project Fourteen', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2019-09-17 19:29:37', NULL, 0),
(15, 'PROJECT_34', 'project', 'dummy', '2023-12-27 18:11:19', NULL, 0),
(16, 'PROJECT_89', 'name should be not given', 'what tell about me', '2023-12-27 18:12:28', NULL, 0),
(17, 'PROJECT_67', 'art', '', '2023-12-27 18:25:39', NULL, 0),
(18, 'PROJECT_69', 'tgrfj', 'jh', '2023-12-28 09:44:30', NULL, 0),
(19, 'PROJECT_73', 'erg', 'ewg', '2024-01-04 12:21:30', NULL, 0),
(20, 'PROJECT_32', 'jk', 'gfkj', '2024-01-04 12:21:57', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`) VALUES
(1, 'Administrator', 'a:7:{s:5:\"users\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"projects\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:8:\"subjects\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:10:\"categories\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:5:\"roles\";a:4:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";i:3;s:6:\"delete\";}s:15:\"email_templates\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:8:\"settings\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"create\";}}'),
(2, 'Author', 'a:4:{s:5:\"users\";a:3:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";}s:8:\"projects\";a:3:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";}s:8:\"subjects\";a:3:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";}s:10:\"categories\";a:3:{i:0;s:4:\"view\";i:1;s:6:\"create\";i:2;s:4:\"edit\";}}'),
(3, 'Editor', 'a:3:{s:8:\"projects\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:8:\"subjects\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}s:10:\"categories\";a:2:{i:0;s:4:\"view\";i:1;s:4:\"edit\";}}'),
(4, 'Visitor', 'a:4:{s:5:\"users\";a:1:{i:0;s:4:\"view\";}s:8:\"projects\";a:1:{i:0;s:4:\"view\";}s:8:\"subjects\";a:1:{i:0;s:4:\"view\";}s:10:\"categories\";a:1:{i:0;s:4:\"view\";}}'),
(11, 'yash', 'a:1:{s:10:\"categories\";a:1:{i:0;s:4:\"view\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'company_name', 'NISL CI Demo'),
(2, 'allowed_file_types', 'a:3:{i:0;s:4:\".jpg\";i:1;s:4:\".png\";i:2;s:4:\".gif\";}'),
(5, 'facebook_url', 'http://facebook.com'),
(6, 'smtp_host', 'smtp.gmail.com'),
(7, 'smtp_port', '465'),
(8, 'smtp_user', 'sanat.queueloop@gmail.com'),
(9, 'smtp_password', 'fuqjbzjcvxdxfzqm'),
(10, 'from_email', 'info@narola.email'),
(11, 'from_name', 'NISL CI Demo'),
(12, 'reply_to_email', 'info@narola.email'),
(13, 'reply_to_name', 'Narola '),
(16, 'log_activity', '1'),
(19, 'company_email', 'info@narola.email'),
(20, 'twitter_url', 'http://twitter.com'),
(21, 'smtp_encryption', 'ssl'),
(22, 'email_signature', 'NISL '),
(23, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td> </td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>'),
(24, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>You are \r\n receiving this email because of your account on {company_name}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td> </td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>'),
(25, 'date_format', 'j-M-Y'),
(26, 'time_format', 'H:i');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `details` mediumtext NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_id`, `name`, `details`, `created`, `updated`, `is_deleted`) VALUES
(5, 'SUBJECT_78', 'Node JS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!  ', '2023-10-06 18:24:11', '2023-10-06 18:31:31', 0),
(3, 'SUBJECT_80', 'Java', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!', '2023-10-06 18:07:34', NULL, 1),
(4, 'SUBJECT_64', 'Python', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi omnis ut possimus ipsa aliquid aliquam odio saepe neque dolorem itaque!  bf tgryt r', '2023-10-06 18:08:25', '2023-10-06 18:09:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `signup_key` varchar(32) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `signup_key`, `is_email_verified`, `role`, `is_admin`, `firstname`, `lastname`, `email`, `mobile_no`, `password`, `last_ip`, `last_login`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `is_active`, `is_deleted`) VALUES
(1, '', 0, 1, 1, 'Admin', 'Narola', 'admin@narola.email', 9955233665, '21232f297a57a5a743894a0e4a801fc3', '::1', '2024-01-08 13:51:17', '2019-09-17 15:26:31', 'b16a3f0e1685ad50cd72c84d34fc272a', '2024-01-08 12:59:52', 1, 0),
(2, '', 0, 11, 1, 'Author', 'Narola', 'author@narola.email', 9854623210, '25d55ad283aa400af464c76d713c07ad', '::1', '2023-12-06 09:59:39', NULL, '1c40d38ac5b01fb2b28fdd63a829fc25', NULL, 1, 0),
(3, '', 0, 3, 1, 'Editor', 'Narola', 'editor@narola.email', 9966322558, '5aee9dbd2a188839105073571bee1b1f', '::1', '2024-01-05 14:35:46', NULL, '3535e8093dacb810dfd9ba3bb42f6b20', '2019-09-24 09:45:14', 1, 0),
(4, '', 0, 4, 1, 'Visitor', 'Narola', 'visitor@narola.email', 7896541236, '127870930d65c57ee65fcc47f2170d38', '::1', '2024-01-05 09:16:51', NULL, 'b51ec3db3a7c63862716eee0b80a5194', NULL, 1, 0),
(33, NULL, 0, 0, 0, 'yash', 'que', 'yash@gmail.com', 9898989898, '$2y$13$WgrAxCPoHIEvgyTZ752hkO3EZ0ckmVtzmGMgQtlEpmD3c7kZFvN9u', NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, NULL, 0, 0, 0, 'rr', 'kk', 'rk@gmail.com', 9595959595, '$2y$13$Dq4J36g3MQUUCjSDGGrbrObtSI83YsE5fIeSn7vdkywKjhgAzV6q6', NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_auto_login`
--

CREATE TABLE `user_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_id` bigint(20) NOT NULL,
  `features` varchar(256) NOT NULL,
  `capabilities` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`user_id`, `features`, `capabilities`) VALUES
(5, 'projects', 'view'),
(5, 'projects', 'create'),
(5, 'projects', 'edit'),
(5, 'categories', 'view'),
(5, 'categories', 'create'),
(5, 'categories', 'edit'),
(4, 'users', 'view'),
(4, 'projects', 'view'),
(4, 'subjects', 'view'),
(4, 'categories', 'view'),
(1, 'users', 'view'),
(6, 'users', 'view'),
(1, 'users', 'create'),
(6, 'users', 'create'),
(1, 'users', 'edit'),
(6, 'users', 'edit'),
(1, 'users', 'delete'),
(6, 'users', 'delete'),
(1, 'projects', 'view'),
(6, 'projects', 'view'),
(1, 'projects', 'create'),
(6, 'projects', 'create'),
(1, 'projects', 'edit'),
(6, 'projects', 'edit'),
(1, 'projects', 'delete'),
(6, 'projects', 'delete'),
(1, 'subjects', 'view'),
(6, 'subjects', 'view'),
(1, 'subjects', 'create'),
(6, 'subjects', 'create'),
(1, 'subjects', 'edit'),
(6, 'subjects', 'edit'),
(1, 'subjects', 'delete'),
(6, 'subjects', 'delete'),
(1, 'categories', 'view'),
(6, 'categories', 'view'),
(1, 'categories', 'create'),
(6, 'categories', 'create'),
(1, 'categories', 'edit'),
(6, 'categories', 'edit'),
(1, 'categories', 'delete'),
(6, 'categories', 'delete'),
(1, 'roles', 'view'),
(6, 'roles', 'view'),
(1, 'roles', 'create'),
(6, 'roles', 'create'),
(1, 'roles', 'edit'),
(6, 'roles', 'edit'),
(1, 'roles', 'delete'),
(6, 'roles', 'delete'),
(1, 'email_templates', 'view'),
(6, 'email_templates', 'view'),
(1, 'email_templates', 'edit'),
(6, 'email_templates', 'edit'),
(1, 'settings', 'view'),
(6, 'settings', 'view'),
(1, 'settings', 'create'),
(6, 'settings', 'create'),
(3, 'projects', 'view'),
(3, 'projects', 'edit'),
(3, 'subjects', 'view'),
(3, 'subjects', 'edit'),
(3, 'categories', 'view'),
(3, 'categories', 'edit'),
(2, 'users', 'view'),
(2, 'users', 'create'),
(2, 'users', 'edit'),
(2, 'users', 'delete'),
(2, 'projects', 'view'),
(2, 'projects', 'create'),
(2, 'projects', 'edit'),
(2, 'projects', 'delete'),
(2, 'subjects', 'view'),
(2, 'subjects', 'create'),
(2, 'subjects', 'edit'),
(2, 'subjects', 'delete'),
(2, 'categories', 'view'),
(2, 'categories', 'create'),
(2, 'categories', 'edit'),
(2, 'categories', 'delete'),
(2, 'roles', 'view'),
(2, 'roles', 'create'),
(2, 'roles', 'edit'),
(2, 'roles', 'delete'),
(2, 'email_templates', 'view'),
(2, 'email_templates', 'edit'),
(2, 'settings', 'view'),
(2, 'settings', 'create'),
(7, 'users', 'view'),
(7, 'users', 'create'),
(7, 'users', 'edit'),
(7, 'users', 'delete'),
(7, 'projects', 'view'),
(7, 'projects', 'create'),
(7, 'projects', 'edit'),
(7, 'projects', 'delete'),
(7, 'subjects', 'view'),
(7, 'subjects', 'create'),
(7, 'subjects', 'edit'),
(7, 'subjects', 'delete'),
(7, 'categories', 'view'),
(7, 'categories', 'create'),
(7, 'categories', 'edit'),
(7, 'categories', 'delete'),
(7, 'roles', 'view'),
(7, 'roles', 'create'),
(7, 'roles', 'edit'),
(7, 'roles', 'delete'),
(7, 'email_templates', 'view'),
(7, 'email_templates', 'edit'),
(7, 'settings', 'view'),
(7, 'settings', 'create'),
(11, 'users', 'view'),
(11, 'users', 'create'),
(11, 'users', 'edit'),
(11, 'projects', 'view'),
(11, 'projects', 'create'),
(11, 'projects', 'edit'),
(11, 'subjects', 'view'),
(11, 'subjects', 'create'),
(11, 'subjects', 'edit'),
(11, 'categories', 'view'),
(11, 'categories', 'create'),
(11, 'categories', 'edit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
