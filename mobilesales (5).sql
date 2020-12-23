-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 05:52 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilesales`
--

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'B3ndhilDik4', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listnama`
--

CREATE TABLE `listnama` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_activity_ms`
--

CREATE TABLE `log_activity_ms` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `distribusi_from` varchar(100) NOT NULL,
  `distribusi_to` varchar(100) NOT NULL,
  `ms_code` varchar(8) NOT NULL,
  `status` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_activity_ms`
--

INSERT INTO `log_activity_ms` (`id`, `id_form`, `id_detail`, `action`, `distribusi_from`, `distribusi_to`, `ms_code`, `status`, `keterangan`, `created_date`, `created_by`) VALUES
(332511, 378, 117569, 'Worklist', '', '', 'F2400054', '1006', '', '2019-06-01 00:32:59', 'KETUT SUKRA YASA'),
(332512, 395, 123070, 'Worklist', '', '', 'F2700023', '1023', '', '2019-06-01 00:40:33', 'ROBI SUJARWADI'),
(332513, 388, 121438, 'Worklist', '', '', 'F2400120', '1023', '', '2019-06-01 00:50:47', 'TOMAS ALFA EDISON'),
(332514, 385, 120605, 'Worklist', '', '', 'F2400120', '1023', '', '2019-06-01 00:51:12', 'TOMAS ALFA EDISON'),
(332515, 385, 120613, 'Worklist', '', '', 'F2400120', '1023', '', '2019-06-01 00:51:35', 'TOMAS ALFA EDISON'),
(332516, 351, 106791, 'Worklist', '', '', 'F2400120', '1011', '', '2019-06-01 00:55:52', 'TOMAS ALFA EDISON'),
(332517, 353, 108233, 'Worklist', '', '', 'F2400120', '1011', '', '2019-06-01 00:56:27', 'TOMAS ALFA EDISON'),
(332518, 0, 0, 'distibusi', 'K1102197', 'F1100165', '', '', '', '2019-06-01 03:07:43', 'ANDRIE ALEXCANDRA KUSUMAH DINATA SE'),
(332519, 0, 0, 'distibusi', 'K1102197', 'F1100165', '', '', '', '2019-06-01 03:07:44', 'ANDRIE ALEXCANDRA KUSUMAH DINATA SE'),
(332520, 0, 0, 'distibusi', 'K1102197', 'F1100165', '', '', '', '2019-06-01 03:07:44', 'ANDRIE ALEXCANDRA KUSUMAH DINATA SE'),
(1158874, 43747, 48743, 'fjfi', '474758', '5576', '337', '9606', 'fifuu', '0000-00-00 00:00:00', 'fuii'),
(1158875, 43747, 48743, 'fjfi', '474758', '5576', '337', '9606', 'fifuu', '0000-00-00 00:00:00', 'fuii'),
(1158876, 665477, 0, 'worklist', 'worklist', 'worklist', 'worklist', 'worklist', 'worklist', '2020-03-26 12:05:19', 'created by'),
(1158877, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1024', 'worklist', '2020-03-26 13:48:36', 'JOHAN WAHYUDI'),
(1158878, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'A7', 'worklist', '2020-04-09 15:01:31', 'JOHAN WAHYUDI'),
(1158879, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'A7', 'worklist', '2020-04-09 15:07:19', 'JOHAN WAHYUDI'),
(1158880, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'B8', 'worklist', '2020-04-10 10:18:04', 'JOHAN WAHYUDI'),
(1158881, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'B8', 'worklist', '2020-04-10 10:19:16', 'JOHAN WAHYUDI'),
(1158882, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'A7', 'worklist', '2020-04-14 10:12:41', 'JOHAN WAHYUDI'),
(1158883, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'B8', 'worklist', '2020-04-14 10:25:35', 'JOHAN WAHYUDI'),
(1158884, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', 'A7', 'worklist', '2020-04-14 10:47:34', 'JOHAN WAHYUDI'),
(1158885, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 10:51:02', 'JOHAN WAHYUDI'),
(1158886, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 14:35:13', 'JOHAN WAHYUDI'),
(1158887, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 14:35:52', 'JOHAN WAHYUDI'),
(1158888, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 15:50:30', 'JOHAN WAHYUDI'),
(1158889, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 16:28:13', 'JOHAN WAHYUDI'),
(1158890, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-14 22:35:27', 'JOHAN WAHYUDI'),
(1158891, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-15 14:56:26', 'JOHAN WAHYUDI'),
(1158892, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-15 14:58:00', 'JOHAN WAHYUDI'),
(1158893, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 13:02:12', 'JOHAN WAHYUDI'),
(1158894, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 13:31:29', 'JOHAN WAHYUDI'),
(1158895, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 13:31:52', 'JOHAN WAHYUDI'),
(1158896, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 13:32:15', 'JOHAN WAHYUDI'),
(1158897, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 13:33:24', 'JOHAN WAHYUDI'),
(1158898, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:12:43', 'JOHAN WAHYUDI'),
(1158899, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:16:25', 'JOHAN WAHYUDI'),
(1158900, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:18:02', 'JOHAN WAHYUDI'),
(1158901, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:18:23', 'JOHAN WAHYUDI'),
(1158902, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:19:12', 'JOHAN WAHYUDI'),
(1158903, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:21:16', 'JOHAN WAHYUDI'),
(1158904, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:22:03', 'JOHAN WAHYUDI'),
(1158905, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:22:47', 'JOHAN WAHYUDI'),
(1158906, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:29:06', 'JOHAN WAHYUDI'),
(1158907, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-16 22:33:45', 'JOHAN WAHYUDI'),
(1158908, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-18 21:56:59', 'JOHAN WAHYUDI'),
(1158909, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-19 11:30:34', 'JOHAN WAHYUDI'),
(1158910, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-19 11:31:07', 'JOHAN WAHYUDI'),
(1158911, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-19 11:31:27', 'JOHAN WAHYUDI'),
(1158912, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-19 11:32:08', 'JOHAN WAHYUDI'),
(1158913, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1023', 'worklist', '2020-04-19 11:38:50', 'JOHAN WAHYUDI'),
(1158914, 504, 0, 'worklist', 'worklist', 'worklist', 'K1002059', '1006', 'worklist', '2020-04-19 11:40:09', 'JOHAN WAHYUDI'),
(1158915, 504, 168901, 'worklist', '', '', 'K1001005', '1023', 'worklist', '2020-04-20 14:04:00', 'JOHAN WAHYUDI'),
(1158916, 504, 168902, 'worklist', '', '', 'K1001005', '1006', 'worklist', '2020-04-20 14:05:40', 'JOHAN WAHYUDI'),
(1158917, 504, 168903, 'worklist', '', '', 'K1001005', '1004', 'worklist', '2020-04-20 14:11:42', 'JOHAN WAHYUDI'),
(1158918, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 14:17:41', 'JOHAN WAHYUDI'),
(1158919, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:19:15', 'JOHAN WAHYUDI'),
(1158920, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:21:00', 'JOHAN WAHYUDI'),
(1158921, 6659, 168900, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:23:56', 'JOHAN WAHYUDI'),
(1158922, 6659, 168900, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:33:48', 'JOHAN WAHYUDI'),
(1158923, 504, 168902, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:36:39', 'JOHAN WAHYUDI'),
(1158924, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:42:45', 'JOHAN WAHYUDI'),
(1158925, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 14:44:06', 'JOHAN WAHYUDI'),
(1158926, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 14:46:28', 'JOHAN WAHYUDI'),
(1158927, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 14:50:40', 'JOHAN WAHYUDI'),
(1158928, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 14:57:26', 'JOHAN WAHYUDI'),
(1158929, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 14:59:55', 'JOHAN WAHYUDI'),
(1158930, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-20 17:59:41', 'JOHAN WAHYUDI'),
(1158931, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 18:01:21', 'JOHAN WAHYUDI'),
(1158932, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 19:22:48', 'JOHAN WAHYUDI'),
(1158933, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 19:30:49', 'JOHAN WAHYUDI'),
(1158934, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 19:59:37', 'JOHAN WAHYUDI'),
(1158935, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 20:11:14', 'JOHAN WAHYUDI'),
(1158936, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 20:12:31', 'JOHAN WAHYUDI'),
(1158937, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-20 20:23:04', 'JOHAN WAHYUDI'),
(1158938, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 20:33:07', 'JOHAN WAHYUDI'),
(1158939, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 20:42:58', 'JOHAN WAHYUDI'),
(1158940, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 20:46:29', 'JOHAN WAHYUDI'),
(1158941, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 20:46:29', 'JOHAN WAHYUDI'),
(1158942, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-20 21:08:08', 'JOHAN WAHYUDI'),
(1158943, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-20 21:08:09', 'JOHAN WAHYUDI'),
(1158944, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:08:58', 'JOHAN WAHYUDI'),
(1158945, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:08:58', 'JOHAN WAHYUDI'),
(1158946, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:11:58', 'JOHAN WAHYUDI'),
(1158947, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:24:09', 'JOHAN WAHYUDI'),
(1158948, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:24:09', 'JOHAN WAHYUDI'),
(1158949, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-20 21:31:07', 'JOHAN WAHYUDI'),
(1158950, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-21 09:14:18', 'JOHAN WAHYUDI'),
(1158951, 6659, 168900, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 09:42:05', 'JOHAN WAHYUDI'),
(1158952, 6659, 168900, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 09:42:05', 'JOHAN WAHYUDI'),
(1158953, 6659, 168900, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 09:45:45', 'JOHAN WAHYUDI'),
(1158954, 6659, 168900, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 09:45:45', 'JOHAN WAHYUDI'),
(1158955, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 09:48:40', 'JOHAN WAHYUDI'),
(1158956, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 10:14:29', 'JOHAN WAHYUDI'),
(1158957, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 10:14:29', 'JOHAN WAHYUDI'),
(1158958, 6659, 168900, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 10:29:20', 'JOHAN WAHYUDI'),
(1158959, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 10:37:59', 'JOHAN WAHYUDI'),
(1158960, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 10:40:33', 'JOHAN WAHYUDI'),
(1158961, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 11:11:16', 'JOHAN WAHYUDI'),
(1158962, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 11:27:55', 'JOHAN WAHYUDI'),
(1158963, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 18:27:07', 'JOHAN WAHYUDI'),
(1158964, 504, 168901, 'worklist', '', '', 'K1001005', '-', '', '2020-04-21 18:29:00', 'JOHAN WAHYUDI'),
(1158965, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-21 19:23:22', 'JOHAN WAHYUDI'),
(1158966, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-21 19:25:50', 'JOHAN WAHYUDI'),
(1158967, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-22 20:56:26', 'JOHAN WAHYUDI'),
(1158968, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-22 20:59:25', 'JOHAN WAHYUDI'),
(1158969, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-24 15:48:40', 'JOHAN WAHYUDI'),
(1158970, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-24 15:57:23', 'JOHAN WAHYUDI'),
(1158971, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-24 16:14:45', 'JOHAN WAHYUDI'),
(1158972, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-24 16:16:45', 'JOHAN WAHYUDI'),
(1158973, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-24 16:24:58', 'JOHAN WAHYUDI'),
(1158974, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-24 20:29:33', 'JOHAN WAHYUDI'),
(1158975, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 05:23:03', 'JOHAN WAHYUDI'),
(1158976, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 05:35:59', 'JOHAN WAHYUDI'),
(1158977, 504, 168902, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 05:36:41', 'JOHAN WAHYUDI'),
(1158978, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 05:43:57', 'JOHAN WAHYUDI'),
(1158979, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-27 05:44:29', 'JOHAN WAHYUDI'),
(1158980, 504, 168901, 'worklist', '', '', 'K1001005', '1006', '', '2020-04-27 05:44:48', 'JOHAN WAHYUDI'),
(1158981, 504, 168901, 'worklist', '', '', 'K1001005', '1011', '', '2020-04-27 05:45:07', 'JOHAN WAHYUDI'),
(1158982, 6659, 168900, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-27 05:45:38', 'JOHAN WAHYUDI'),
(1158983, 6659, 168900, 'worklist', '', '', 'K1001005', '1006', '', '2020-04-27 05:46:09', 'JOHAN WAHYUDI'),
(1158984, 6659, 168900, 'worklist', '', '', 'K1001005', '1011', '', '2020-04-27 05:46:27', 'JOHAN WAHYUDI'),
(1158985, 6659, 168900, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 05:47:05', 'JOHAN WAHYUDI'),
(1158986, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-27 09:29:23', 'JOHAN WAHYUDI'),
(1158987, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-27 10:29:20', 'JOHAN WAHYUDI'),
(1158988, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-27 11:26:02', 'JOHAN WAHYUDI'),
(1158989, 504, 168901, 'worklist', '', '', 'K1001005', '1023', '', '2020-04-28 09:12:45', 'JOHAN WAHYUDI'),
(1158990, 504, 168901, 'worklist', '', '', 'K1001005', '1011', '', '2020-04-28 09:33:53', 'JOHAN WAHYUDI'),
(1158991, 504, 168901, 'worklist', '', '', 'K1001005', '1006', '', '2020-04-28 09:34:50', 'JOHAN WAHYUDI'),
(1158992, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-04-29 23:45:07', 'JOHAN WAHYUDI'),
(1158993, 504, 168901, 'worklist', '', '', 'K1001005', '1006', '', '2020-04-29 23:47:03', 'JOHAN WAHYUDI'),
(1158994, 504, 168901, 'worklist', '', '', 'K1001005', '1004', '', '2020-05-17 19:05:46', 'JOHAN WAHYUDI'),
(1158995, 504, 168901, 'worklist', '', '', 'K1001005', '1006', '', '2020-05-29 15:24:41', 'JOHAN WAHYUDI'),
(1158996, 504, 168902, 'worklist', '', '', 'K1001005', '1004', '', '2020-05-29 15:26:28', 'JOHAN WAHYUDI');

-- --------------------------------------------------------

--
-- Table structure for table `ms_reason_cancel`
--

CREATE TABLE `ms_reason_cancel` (
  `id` int(11) NOT NULL,
  `kode_reson_cancel` varchar(2) NOT NULL,
  `nama_reson_cancel` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_reason_cancel`
--

INSERT INTO `ms_reason_cancel` (`id`, `kode_reson_cancel`, `nama_reson_cancel`, `status`) VALUES
(1, 'B1', 'CH Berubah pikiran', 1),
(2, 'B2', 'Kartu tidak dipakai', 1),
(3, 'B3', 'Dokumen tidak lengkap', 1),
(4, 'B4', 'Belum berminat', 1),
(5, 'B5', 'Tidak diizinkan suami/istri', 1),
(6, 'B6', 'Kurang/salah penjelasan dari TM', 1),
(7, 'B7', 'CH sering mengajukan tp tidak disetujui', 1),
(8, 'B8', 'Lain-lain', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ms_reason_gagal`
--

CREATE TABLE `ms_reason_gagal` (
  `id` int(11) NOT NULL,
  `kode_reason_gagal` varchar(2) NOT NULL,
  `nama_reason_gagal` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_reason_gagal`
--

INSERT INTO `ms_reason_gagal` (`id`, `kode_reason_gagal`, `nama_reason_gagal`, `status`) VALUES
(1, 'A1', 'Alamat Tidak Ditemukan', 1),
(2, 'A2', 'Rumah Kosong', 1),
(3, 'A3', 'Penerima Tidak Dikenal', 1),
(4, 'A4', 'Tidak Bertemu Nasabah', 1),
(5, 'A5', 'Dokumen Tidak Lengkap', 1),
(6, 'A6', 'Batal', 1),
(7, 'A7', 'Lain-Lain', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_pickup_reason`
--

CREATE TABLE `ref_pickup_reason` (
  `Reason_ID` int(11) NOT NULL,
  `Reason_Code` varchar(3) NOT NULL,
  `Reason` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pickup_reason`
--

INSERT INTO `ref_pickup_reason` (`Reason_ID`, `Reason_Code`, `Reason`) VALUES
(1, 'A1', 'Alamat Tidak Ditemukan'),
(2, 'A2', 'Rumah Kosong'),
(3, 'A3', 'Penerima Tidak Dikenal'),
(4, 'A4', 'Tidak Bertemu Nasabah'),
(5, 'A5', 'Dokumen Tidak Lengkap'),
(6, 'A6', 'Batal'),
(7, 'A7', 'Lain-Lain'),
(8, 'B1', 'CH Berubah pikiran'),
(9, 'B2', 'Kartu tidak dipakai'),
(10, 'B3', 'Dokumen tidak lengkap'),
(11, 'B4', 'Belum berminat'),
(12, 'B5', 'Tidak diizinkan suami/istri'),
(13, 'B6', 'Kurang/salah penjelasan dari TM'),
(14, 'B7', 'CH sering mengajukan tp tidak disetujui'),
(15, 'B8', 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `ref_status`
--

CREATE TABLE `ref_status` (
  `Status_ID` int(11) NOT NULL,
  `kode_pick_up` int(11) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status`
--

INSERT INTO `ref_status` (`Status_ID`, `kode_pick_up`, `Status`, `flag`) VALUES
(1, 1004, 'Sukses Pick Up', 1),
(2, 1005, 'Inprocess', 0),
(3, 1006, 'Gagal Pick Up', 1),
(4, 1008, 'Uncoverage', 0),
(5, 1011, 'Batal', 1),
(6, 1023, 'Jadwal Ulang', 1),
(7, 1024, 'RTS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_ms_detail`
--

CREATE TABLE `tbl_upload_ms_detail` (
  `id` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `unique_id` varchar(30) NOT NULL,
  `cabang` varchar(30) NOT NULL,
  `no_case` varchar(30) NOT NULL,
  `cis` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `address_geotag` varchar(100) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `city2` varchar(100) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `phone3` varchar(15) NOT NULL,
  `phone4` varchar(15) NOT NULL,
  `phone5` varchar(15) NOT NULL,
  `phone6` varchar(15) NOT NULL,
  `phone7` varchar(15) NOT NULL,
  `phone8` varchar(15) NOT NULL,
  `phone9` varchar(15) NOT NULL,
  `phone10` varchar(15) NOT NULL,
  `phone11` varchar(15) DEFAULT NULL,
  `phone12` varchar(15) DEFAULT NULL,
  `phone13` varchar(15) DEFAULT NULL,
  `phone14` varchar(15) DEFAULT NULL,
  `phone15` varchar(15) DEFAULT NULL,
  `id_campaign` varchar(10) NOT NULL,
  `campaign` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tm_name` varchar(30) NOT NULL,
  `tm_code` varchar(30) NOT NULL,
  `aggree_date` date NOT NULL,
  `agree_time` varchar(25) NOT NULL,
  `upload_date` date NOT NULL,
  `tgl_pu` date NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `time_pu` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  `kode_pick_up` varchar(20) NOT NULL,
  `kode_gagal_pu` varchar(20) NOT NULL,
  `kode_cancel_pu` varchar(50) NOT NULL,
  `pick_up_date` datetime NOT NULL,
  `ms_code` varchar(20) NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `spv_code` varchar(20) NOT NULL,
  `asm_code` varchar(10) NOT NULL,
  `image_type` varchar(10) NOT NULL,
  `image_name_pemilik` varchar(100) NOT NULL,
  `image_name_ktp` varchar(100) NOT NULL,
  `geo_info_pemilik` varchar(100) NOT NULL,
  `geo_info_ktp` varchar(100) NOT NULL,
  `image_name_bukti` varchar(100) NOT NULL,
  `geo_info_bukti` varchar(100) NOT NULL,
  `tanggal_distribusi_asm` date NOT NULL,
  `tanggal_distribusi` date NOT NULL,
  `note_Iinprocessed` text NOT NULL,
  `product` varchar(20) NOT NULL,
  `tanggal_reschedule` date NOT NULL,
  `source_code` varchar(20) NOT NULL,
  `created_date` date NOT NULL,
  `status_validasi` int(1) NOT NULL,
  `validasi_by` varchar(50) NOT NULL,
  `status_validasi_admin` int(1) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `status_close` int(1) NOT NULL,
  `close_date` datetime NOT NULL,
  `closed_by` varchar(50) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `tanggal_status_terakhir` datetime NOT NULL,
  `is_return` int(1) NOT NULL,
  `return_date` datetime NOT NULL,
  `status_call` varchar(100) NOT NULL,
  `reason_call` varchar(100) NOT NULL,
  `other_reason` text NOT NULL,
  `call_by` varchar(100) NOT NULL,
  `call_date` date NOT NULL,
  `call_time` datetime NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_upload_ms_detail`
--

INSERT INTO `tbl_upload_ms_detail` (`id`, `id_form`, `unique_id`, `cabang`, `no_case`, `cis`, `name`, `dob`, `gender`, `address`, `address_geotag`, `post_code`, `city`, `city2`, `phone1`, `phone2`, `phone3`, `phone4`, `phone5`, `phone6`, `phone7`, `phone8`, `phone9`, `phone10`, `phone11`, `phone12`, `phone13`, `phone14`, `phone15`, `id_campaign`, `campaign`, `type`, `username`, `tm_name`, `tm_code`, `aggree_date`, `agree_time`, `upload_date`, `tgl_pu`, `barcode`, `time_pu`, `remark`, `kode_pick_up`, `kode_gagal_pu`, `kode_cancel_pu`, `pick_up_date`, `ms_code`, `ms_name`, `spv_code`, `asm_code`, `image_type`, `image_name_pemilik`, `image_name_ktp`, `geo_info_pemilik`, `geo_info_ktp`, `image_name_bukti`, `geo_info_bukti`, `tanggal_distribusi_asm`, `tanggal_distribusi`, `note_Iinprocessed`, `product`, `tanggal_reschedule`, `source_code`, `created_date`, `status_validasi`, `validasi_by`, `status_validasi_admin`, `created_by`, `status_close`, `close_date`, `closed_by`, `branch`, `tanggal_status_terakhir`, `is_return`, `return_date`, `status_call`, `reason_call`, `other_reason`, `call_by`, `call_date`, `call_time`, `notes`) VALUES
(168900, 6659, 'jogoi', 'jogog', 'fiiig', 'fdifigfd', 'giud', '0000-00-00', 'm', 'pondok pinang', '48743', '14440', 'fifd', 'dsu', '9706', '444', '085817381528', '555', '111', '222', '333', '777', '888', '9876', '6789', '6685', '4553', '4374', '38759', '26536', 'PACTUR JAKARTA AUG 2019', 'frifi', 'eui', 'fiofri', 'diufrif', '0000-00-00', 'fdii', '0000-00-00', '0000-00-00', 'dirit', 'durig', 'froifif', '1023', 'afda', '5576', '0000-00-00 00:00:00', 'rfuewyuw', 'nanto', 'tifri', 'diudufd', 'digtog', 'osos.png', 'jempol.jpg', 'fiif', 'fuii', 'fco.png', 'hoogo', '0000-00-00', '0000-00-00', 'fifif', 'diufudu', '0000-00-00', 'fdigftifd', '0000-00-00', 0, 'diufig', 0, 'fifiuf', 0, '0000-00-00 00:00:00', 'fititoi', 'figfoi', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 'fioigt', 'toy0oydioig', 'gifi', 'fioig', '0000-00-00', '0000-00-00 00:00:00', '0oh0h0ew'),
(168901, 504, '3134287', '', '3134287', '00021263895', 'ROBY YANA', '0000-00-00', 'M', 'JL GELORA 8 CIPONDOH MAKMUR BLOK G 5 NO 5 CIPONDOH TANGERANG 15148//087871275322/081288365678   CIPONDOH MAKMUR CIPONDOH', '-6.1815986,106.6815625', '15148', 'TANGERANG', '', '', '', '087871275322', '081288365678', '', '087871275322', '087871371115', '', '', '', '087871275322', '', '02548490550', '02548490550', '02548490550', '0002126389', 'PACTUR BOGOR JUL 2019', 'BCA Everyday', 'DINAR', 'INTAN DWI TAMARA', 'F1190024', '2019-07-11', '10:13:53', '2019-06-28', '2019-08-04', '*CC0313428719080111*', '10', '087871275322/081288365678 CH MINTA DIHUBUNGI DAHULU KARENA SEDANG DILUAR KOTA', '1004', 'afda', '-', '2020-05-29 15:24:41', 'rfuewyuw', 'bambang', 'F2100004', 'K1103609', '', 'null1', 'null2', '', '', '168901__bukti_IMG_1590740678073_png.jpg', '-6.33703572,106.95536897', '2019-08-02', '0000-00-00', '', '1', '0000-00-00', '', '2020-05-29', 0, '', 0, '', 1, '2019-11-01 23:05:01', 'System', 'BGR', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '', '', '', '', '0000-00-00', '0000-00-00 00:00:00', 'bs'),
(168902, 504, '3143341', '', '3143341', '00032831898', 'SISWADI A MD KOM', '0000-00-00', 'M', 'CILANDAK BARAT, GANG NYA SEBELAHNYA RUMAH MAKAN GANTO MINANG, JAKARTA SELATAN   CILANDAK BARAT CILANDAK', '-6.2966073,106.7856975', '12430', 'JAKARTA SELATAN', '', '', '', '081289605056', '', '', '081289605056', '', '', '', '', '082167412271', '', '081210350312', '0217257180', '081210350312', '0003283189', 'PACTUR JAKARTA JUL 2019', 'BCA Everyday', 'CANTIKA', 'FICKA SEPHORA', 'F1180017', '2019-07-16', '14:24:46', '2019-06-28', '2019-08-04', '*CC0314334119080111*', '10', 'PU JAM 10 PAGI/ MOHON KONFIRM ALAMAT CH DULU YA KRN CH LUPA ALAMAT LENGKAPNYA BARU PINDAH', '1004', 'afda', '-', '2020-05-29 15:26:28', 'rfuewyuw', 'bambang', 'F1100151', 'K1106887', '', '168902_pemilik_IMG_1590740776507_png.jpg', '168902_ktp_IMG_1590740781230_png.jpg', '', '', '168902__bukti_IMG_1590740785844_png.jpg', '-6.33703572,106.95536897', '2019-08-01', '0000-00-00', '', '1', '0000-00-00', '', '2020-05-29', 0, '', 1, '', 1, '2019-08-20 07:36:14', 'Bima Satria Yudha', 'JKT1', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '', '', '', '', '0000-00-00', '0000-00-00 00:00:00', 'guh'),
(168903, 504, '2946418', '', '2946418', '00039134880', 'FAHMI', '0000-00-00', 'M', 'JL.FAISAL 17 LORONG III KEC RAPOCINI KOTA MAKASSAR HP.085145165557    RAPPOCINI', '-5.161535,119.431898', '', 'MAKASSAR', '', '', '', '085145165557', '', '', '', '', '', '', '', '085145165557', '', '081242476808', '', '081242476808', '0003913488', 'PACTUR MAKASSAR JUN 2019', 'BCA Everyday', 'BERTHA', 'SITI KURNIASIH', 'F1170015', '2019-07-22', '12:59:01', '2019-05-31', '2019-08-04', '*CC0294641819080111*', '10', '\'TERIMA KASIH\'', '1004', 'afda', '-', '0000-00-00 00:00:00', 'rfuewyuw', 'bambang', 'F2500004', 'K1300160', '', 'IMG_1592361451103_png.jpg', 'IMG_1592361458856_png.jpg', '', '', 'IMG_1592361465356_png.jpg', '-6.24072747,106.85570099', '2019-08-02', '0000-00-00', '', '1', '0000-00-00', '', '2020-04-20', 0, '', 0, '', 1, '2019-11-01 23:05:01', 'System', 'MKS3', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '', '', '', '', '0000-00-00', '0000-00-00 00:00:00', 'hd'),
(168904, 504, '3058266', '', '3058266', '00023358979', 'AGUNG SETIABUDI SAPUTRA', '0000-00-00', 'M', 'JL KEMANG II DALAM NO 25 //KEL PELA MAMPANG // RT 012/007 //KEC MAMPANG PRAPATAN //  JAKARTA SEL 12720 RT 012 RW 007 PELA MAMPANG MAMPANG PRAPATAN', '-6.2566087999999995,106.8143004', '12720', 'JAKARTA SELATAN', '', '', '', '081218010327', '081218010327', '081218010327', '081218010327', '', '', '', '', '081218010327', '', '02194768420', '02183788388', '02194768420', '0002335897', 'PACTUR JAKARTA JUN 2019', 'BCA Everyday', 'CINTA', 'PUTRI SUSANTI', 'F1180007', '2019-07-23', '13:18:49', '2019-06-10', '2019-08-04', '*CC0305826619080111*', '9', 'TGL 4 AGUS 2019 JAM 09.00 // HUB DULU SEBELUM BERTEMU 081218010327 TERIMAKASIH ', '1023', '-', '-', '0000-00-00 00:00:00', '1011', 'Batal', 'F1100151', 'K1106887', '', 'IMG_1592362065196_png.jpg', 'IMG_1592362070590_png.jpg', '', '', 'IMG_1592362049603_png.jpg', '-6.24075573,106.85570707', '2019-08-01', '2019-08-02', '', '1', '0000-00-00', '', '2020-04-19', 0, '', 0, '', 1, '2019-11-01 23:05:01', 'System', 'JKT1', '2020-06-17 09:47:10', 0, '0000-00-00 00:00:00', '', '', '', '', '0000-00-00', '0000-00-00 00:00:00', 'bd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listnama`
--
ALTER TABLE `listnama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activity_ms`
--
ALTER TABLE `log_activity_ms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_pickup_reason`
--
ALTER TABLE `ref_pickup_reason`
  ADD PRIMARY KEY (`Reason_ID`);

--
-- Indexes for table `ref_status`
--
ALTER TABLE `ref_status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Indexes for table `tbl_upload_ms_detail`
--
ALTER TABLE `tbl_upload_ms_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listnama`
--
ALTER TABLE `listnama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activity_ms`
--
ALTER TABLE `log_activity_ms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1158997;

--
-- AUTO_INCREMENT for table `ref_pickup_reason`
--
ALTER TABLE `ref_pickup_reason`
  MODIFY `Reason_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ref_status`
--
ALTER TABLE `ref_status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_upload_ms_detail`
--
ALTER TABLE `tbl_upload_ms_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
