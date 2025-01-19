-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 08:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soteria_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `national_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `mobile_no`, `gender`, `national_id`) VALUES
(1, 'Admin User', 'admin@admin.com', '$2y$10$uHtWf1S6oGDUa8Lp.BQmpenjmI6U9E33v.ELGEkMkdaRgaDUELGiC', '2023-08-13 01:44:33', '2023-08-13 01:44:33', NULL, NULL, NULL),
(2, 'Hiren Dodiya', 'hirend12@gmail.com', '$2y$10$tdL/VBAOeyjllcKKZM2B9uFC44U3qRxYuEGB6LZquDuWcMlShPJ0G', '2023-08-25 11:15:57', '2023-08-25 11:54:28', 123456789, 'Male', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_full_name` varchar(255) DEFAULT NULL,
  `agent_email` varchar(255) DEFAULT NULL,
  `agent_mobile_no` bigint(20) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `nationalidpassport` varchar(255) DEFAULT NULL,
  `agentcommision_no_general` varchar(255) DEFAULT NULL,
  `agentcommision_no_life` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `agent_full_name`, `agent_email`, `agent_mobile_no`, `gender`, `joining_date`, `nationalidpassport`, `agentcommision_no_general`, `agentcommision_no_life`, `deleted_at`, `created_at`, `updated_at`, `supervisor_name`) VALUES
(1, 'HIren', 'dodu@mag.com', 8200920208, 'Male', '2024-05-24', 'ABC123', 'ABC123', 'ABC123', '2023-08-15 07:40:30', '2023-08-11 23:59:29', '2023-08-15 07:40:30', NULL),
(2, 'Dodiya', 'dodiya@xyzcom', 1234567489, 'Male', '2023-08-26', '525626532', '5265265', '6526542', NULL, '2023-08-15 06:44:44', '2023-08-17 07:02:12', 's'),
(3, 'Dodiya Hiren', 'dodiya@m.com', 1234567489, 'Male', '2023-08-26', '525626532', '5265265', '6526542', NULL, '2023-08-17 06:53:17', '2023-08-17 06:53:17', 's'),
(4, 'Dodiya Hiren Magecomp', 'dodiya@m.com', 1234567489, 'Male', '2023-08-26', '525626532', '5265265', '6526542', NULL, '2023-08-17 06:59:45', '2023-08-17 07:02:30', 's'),
(5, 'HIren xxyz', 'dodiya@m.com', 234563456, 'Male', '2023-08-10', '8535', '868885', '857', NULL, '2023-08-23 12:34:34', '2023-08-23 12:34:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `housenoandbuildingname` varchar(500) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `stamp_of_company` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `occupation`, `mobile_no`, `gender`, `address`, `dob`, `housenoandbuildingname`, `street`, `country`, `city`, `state`, `district`, `stamp_of_company`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hiren', 'dodiyahiren34@gmail.com', '2', '8200920208', 'Male', NULL, '2023-08-11', 'c-3073', 'New Bhagwati', '1', '2', NULL, '3', 'EasyBCD Backup (2023-03-17).bcd', '2023-08-15 07:23:16', '2023-08-11 05:08:12', '2023-08-15 07:23:16'),
(2, 'dodiya Magecomp', 'dodiya@m.com', '2', '52945985292', 'Female', NULL, '2023-08-17', '54252952', 'Kaliyabid', 'india', 'bhavnagar', NULL, 'dist1', NULL, NULL, '2023-08-15 07:20:28', '2023-08-20 04:27:42'),
(3, 'dodiya Hiren', 'asdas@gm.com', 'IT Engineer', '529562', 'Male', NULL, '2023-08-25', '95263', '115263', 'india', 'bhavnagar', NULL, 'dist1', NULL, NULL, '2023-08-15 07:28:01', '2023-08-15 07:28:01'),
(4, NULL, NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-15 07:28:33', '2023-08-15 07:28:25', '2023-08-15 07:28:33'),
(5, 'File', 'file@gmai.com', 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', 'testing.txt', '2023-08-20 07:15:56', '2023-08-19 01:22:27', '2023-08-20 07:15:56'),
(6, 'test2', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', 'testing.txt', '2023-08-20 06:39:54', '2023-08-19 01:23:04', '2023-08-20 06:39:54'),
(7, 'Test 3', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 06:39:57', '2023-08-19 02:27:12', '2023-08-20 06:39:57'),
(8, 'Tesrt4', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 07:16:01', '2023-08-19 02:30:25', '2023-08-20 07:16:01'),
(9, 'Lenovo', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-19 02:53:22', '2023-08-19 02:53:22'),
(10, 'fcgvhbjn', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 07:16:05', '2023-08-19 06:49:43', '2023-08-20 07:16:05'),
(11, 'Hiren', 'hiren@mail.com', NULL, '9876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-20 06:39:49', '2023-08-20 04:50:14', '2023-08-20 06:39:49'),
(12, 'Hiren', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-20 06:39:41', '2023-08-20 05:05:15', '2023-08-20 06:39:41'),
(13, 'Hiren', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-20 06:39:44', '2023-08-20 05:12:18', '2023-08-20 06:39:44'),
(14, 'Hiren Dodiya', 'admin@admin.com', 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 06:43:54', '2023-08-20 06:40:25', '2023-08-20 06:43:54'),
(15, 'Hiren Dodiy', 'admin@admin.com', NULL, NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-20 06:44:15', '2023-08-20 06:48:11'),
(16, 'Testong', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 07:16:10', '2023-08-20 06:49:33', '2023-08-20 07:16:10'),
(17, 'testing 2', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-20 06:51:19', '2023-08-20 06:51:19'),
(18, 'testing 2', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 06:59:46', '2023-08-20 06:59:37', '2023-08-20 06:59:46'),
(19, 'Tws', 'admin@admin.com', 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-20 21:22:50', '2023-08-20 07:00:06', '2023-08-20 21:22:50'),
(20, 'Test FIle Demo', 'admin@admin.com', 'IT Engineer', '123456789', 'Male', NULL, '2023-08-07', 'c-3073', 'Kaliyabid', 'india', 'bhavnagar', NULL, 'dist1', NULL, NULL, '2023-08-20 21:25:40', '2023-08-20 21:25:40'),
(21, 'sdf', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-21 11:59:32', '2023-08-21 11:59:32'),
(22, NULL, NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, '2023-08-23 12:13:03', '2023-08-23 12:12:07', '2023-08-23 12:13:03'),
(23, 'dodiya Magecomp', NULL, 's', NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-23 12:12:30', '2023-08-23 12:12:30'),
(24, 'abcdefg', 'admin@admin.com', NULL, NULL, 's', NULL, NULL, NULL, NULL, '--Select--', '--Select--', NULL, '--Select--', NULL, NULL, '2023-08-23 12:12:51', '2023-08-23 12:13:26'),
(25, 'sd', 'admin@admin.com', 'IT Engineer', '8200920208', 'Male', NULL, '2023-08-25', 'c-3073', 'Kaliyabid', 'india', 'bhavnagar', NULL, 'dist3', NULL, NULL, '2023-08-23 12:23:25', '2023-08-23 12:23:25'),
(26, 'Hiren', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-24 10:13:29', '2023-08-24 10:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupan_code` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `discount_percentage` bigint(20) DEFAULT NULL,
  `discount_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `coupan_code`, `insurance_type`, `discount_percentage`, `discount_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', 545, 'irhjfmskdhfihfihifhirehfiuhiufhsjdhfhfdihdfihiuhiukfhrejf', '2023-08-27 09:44:14', '2023-08-12 04:37:10', '2023-08-27 09:44:14'),
(2, NULL, '1', 2, 'dsc', '2023-08-27 09:44:20', '2023-08-27 09:24:49', '2023-08-27 09:44:20'),
(3, NULL, '1', 6554, 'fcvbnm,', '2023-08-27 09:44:22', '2023-08-27 09:29:44', '2023-08-27 09:44:22'),
(4, NULL, '2', 23, 'ASDCVBNM', NULL, '2023-08-27 09:31:21', '2023-08-27 09:31:21'),
(5, NULL, '1', 435, 'dfvbnm,.', NULL, '2023-08-27 09:31:49', '2023-08-27 09:31:49'),
(6, NULL, '1', 453, 'sfdghnm,', NULL, '2023-08-27 09:32:26', '2023-08-27 09:32:26'),
(7, 'abcd', '2', 3456, 'dfghj,', NULL, '2023-08-27 09:34:30', '2023-08-27 09:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_insurance_plans`
--

CREATE TABLE `home_insurance_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `national_id` bigint(20) DEFAULT NULL,
  `coverage` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sizeofvilla` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `nooffloors` bigint(20) DEFAULT NULL,
  `noofrooms` bigint(20) DEFAULT NULL,
  `homecategory` varchar(255) DEFAULT NULL,
  `effectivedate` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `limit` bigint(20) DEFAULT NULL,
  `BuildingNo` bigint(20) DEFAULT NULL,
  `BlockNo` bigint(20) DEFAULT NULL,
  `PlaateNo` bigint(20) DEFAULT NULL,
  `PlotNo` varchar(255) DEFAULT NULL,
  `NoResident` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_insurance_plans`
--

INSERT INTO `home_insurance_plans` (`id`, `customer_id`, `fname`, `nationality`, `national_id`, `coverage`, `category`, `sizeofvilla`, `location`, `nooffloors`, `noofrooms`, `homecategory`, `effectivedate`, `expirydate`, `limit`, `BuildingNo`, `BlockNo`, `PlaateNo`, `PlotNo`, `NoResident`, `created_at`, `updated_at`) VALUES
(1, 26, 'Hiren dodiya', 'Indian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-24 10:24:53', '2023-08-24 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `telephone_number` bigint(20) DEFAULT NULL,
  `post_address` varchar(500) DEFAULT NULL,
  `bussiness_line` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `stamp_company` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `letter_head` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `full_name`, `license_number`, `address`, `telephone_number`, `post_address`, `bussiness_line`, `tax_id`, `fax_number`, `stamp_company`, `signature`, `letter_head`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hiren', 'sdf23', 'bhavnGAR', 51265126, 'GDFNCIKHFD', '1', 'DSHJKM,2632', '552', 'EasyBCD Backup (2023-03-17).bcd', 'EasyBCD Backup (2023-03-17).bcd', 'EasyBCD Backup (2023-03-17).bcd', '2023-08-25 10:44:06', '2023-08-11 07:39:21', '2023-08-25 10:44:06'),
(2, 'Lic Hiren', '112LIC', 'Bhavnagar', 123456789, 'hjdhnusdjbn', '1', 'DSHJKM,2632', '65463435', NULL, NULL, NULL, '2023-08-25 10:44:11', '2023-08-17 07:07:13', '2023-08-25 10:44:11'),
(3, 'Hiren Dodiya', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, NULL, NULL, '2023-08-17 07:54:12', '2023-08-17 07:07:43', '2023-08-17 07:54:12'),
(4, 'Stamp', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, 'teatinf2.txt', 'teatinf2.txt', 'testing.txt', '2023-08-23 12:08:06', '2023-08-21 11:41:17', '2023-08-23 12:08:06'),
(5, 'sfdsf', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, 'teatinf2.txt', 'teatinf2.txt', '2023-08-23 12:08:11', '2023-08-21 11:43:09', '2023-08-23 12:08:11'),
(6, 'sdfdsgc', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, NULL, NULL, '2023-08-23 12:08:15', '2023-08-21 11:58:47', '2023-08-23 12:08:15'),
(7, 'asdzx', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, NULL, NULL, '2023-08-23 12:08:19', '2023-08-21 12:06:11', '2023-08-23 12:08:19'),
(8, 'ewrdsaz', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, 'C:\\xampp\\tmp\\php2C47.tmp', 'C:\\xampp\\tmp\\php2C48.tmp', '2023-08-23 12:08:22', '2023-08-21 13:08:41', '2023-08-23 12:08:22'),
(9, 'Hiren DOdiya', '2306', NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, 'C:\\xampp\\tmp\\php90B5.tmp', 'C:\\xampp\\tmp\\php90B6.tmp', '2023-08-23 12:08:25', '2023-08-22 12:16:18', '2023-08-23 12:08:25'),
(10, 'Lenovo', '1233', 'Bhavnagar', NULL, NULL, '--Select--', NULL, NULL, NULL, 'C:\\xampp\\tmp\\phpDB9C.tmp', 'C:\\xampp\\tmp\\phpDB9D.tmp', '2023-08-25 10:44:14', '2023-08-23 11:08:30', '2023-08-25 10:44:14'),
(11, 'TEst New', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, NULL, NULL, '2023-08-23 12:08:32', '2023-08-23 11:42:26', '2023-08-23 12:08:32'),
(12, 'Final', NULL, NULL, NULL, NULL, '--Select--', NULL, NULL, NULL, NULL, 'soteria_db (1).sql', '2023-08-24 12:56:50', '2023-08-23 12:06:26', '2023-08-24 12:56:50'),
(13, 'Haresh Bhai', NULL, 'Bhavnagar', 51265126, 'hjdhnusdjbn', '2', '34', '65463435', NULL, NULL, NULL, '2023-08-25 10:44:17', '2023-08-24 12:41:59', '2023-08-25 10:44:17'),
(14, 'test Final', '12', 'ghjnkml,.', 23065312, 'guhjkml;,', '1', '6542', '56423', NULL, NULL, NULL, '2023-08-24 12:52:16', '2023-08-24 12:50:06', '2023-08-24 12:52:16'),
(15, 'test Final', '12', 'ghjnkml,.', 23065312, 'guhjkml;,', '1', '6542', '56423', NULL, NULL, NULL, '2023-08-24 12:52:11', '2023-08-24 12:50:36', '2023-08-24 12:52:11'),
(16, 'test Final', '12', 'ghjnkml,.', 23065312, 'guhjkml;,', '1', '6542', '56423', NULL, NULL, NULL, '2023-08-24 12:52:07', '2023-08-24 12:51:16', '2023-08-24 12:52:07'),
(17, 'XYZ', '2312', 'dscbfghkjvncmx', 5432, 'sdgx', '1', '34', '65463435', NULL, NULL, NULL, '2023-08-25 10:44:20', '2023-08-24 12:52:52', '2023-08-25 10:44:20'),
(18, 'xyz2', '6523', 'rdtfygujnkml;,', 5632, 'ghbjnkm', '1', '58423', '564321', NULL, NULL, NULL, '2023-08-25 10:44:23', '2023-08-24 12:55:15', '2023-08-25 10:44:23'),
(19, 'dodiya Magecomp', '112LIC', 'bhavnGAR', 51265126, 'hjdhnusdjbn', '1', '6542', '65463435', NULL, NULL, NULL, '2023-08-25 10:44:26', '2023-08-24 13:00:37', '2023-08-25 10:44:26'),
(20, 'asgdfghkjrewqwefsgcbm', NULL, '546tyuyfdgnb', 4356645678, '46578', '1', '43567ii', '43567', NULL, NULL, NULL, '2023-08-25 10:44:29', '2023-08-24 13:04:25', '2023-08-25 10:44:29'),
(21, 'testing123', '4365756', '523ytghbjnlk;l,', 5423653, 'ryfguhbjnkml;,', '1', '46523', '5623', NULL, NULL, 'in3.txt', '2023-08-25 10:44:32', '2023-08-25 10:09:58', '2023-08-25 10:44:32'),
(22, 'HIren Dodiya Magecomp', '123456', 'tfugyihjlkml', 785632, '65432', '1', '6885432', '5432', NULL, 'C:\\xampp\\tmp\\php360B.tmp', 'C:\\xampp\\tmp\\php360C.tmp', '2023-08-25 10:44:35', '2023-08-25 10:36:24', '2023-08-25 10:44:35'),
(23, 'HIren Dodiya Hiren', '123466', 'Bhavnagar', 123456789, '123456789', '1', '123456789', '123456789', NULL, 'C:\\xampp\\tmp\\phpDA27.tmp', 'C:\\xampp\\tmp\\phpDA28.tmp', NULL, '2023-08-25 10:45:50', '2023-08-25 10:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_plans`
--

CREATE TABLE `insurance_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `lineofbussines` varchar(500) DEFAULT NULL,
  `plan_name` varchar(500) DEFAULT NULL,
  `limit` bigint(20) DEFAULT NULL,
  `plan_fee` bigint(20) DEFAULT NULL,
  `sales_tax` bigint(20) DEFAULT NULL,
  `net_premium` bigint(20) DEFAULT NULL,
  `gross_premium` bigint(20) DEFAULT NULL,
  `commission` varchar(500) DEFAULT NULL,
  `stamp_fee` bigint(20) DEFAULT NULL,
  `commission_percent` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_plans`
--

INSERT INTO `insurance_plans` (`id`, `company_name`, `lineofbussines`, `plan_name`, `limit`, `plan_fee`, `sales_tax`, `net_premium`, `gross_premium`, `commission`, `stamp_fee`, `commission_percent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aditya Birla', 'Line B', 'Life Time Term', 10, 15000, 15, 15, 158, '5', 250, 1, NULL, '2023-08-22 13:22:49', '2023-08-22 13:22:49'),
(2, 'LIC', 'Line A', 'asddvbgfdsa', 10, 15000, 34, 15, 158, '5', 250, 1, NULL, '2023-08-23 12:52:49', '2023-08-23 13:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\InsuranceModel', 23, '935b12ca-8bed-4830-82a5-558309d38e91', 'signature', 'in2', 'in2.txt', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 2, '2023-08-25 10:45:50', '2023-08-25 10:45:50'),
(3, 'App\\Models\\InsuranceModel', 23, 'b03d5bd5-5594-4379-867e-353aa41eb9d1', 'letter_head', 'in3', 'in3.txt', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 3, '2023-08-25 10:45:50', '2023-08-25 10:45:50'),
(4, 'App\\Models\\InsuranceModel', 23, '2b8a2409-d83b-4009-87c7-2c93195631ad', 'insurance_stamp_company', 'insurance', 'insurance.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'public', 'public', 11006, '[]', '[]', '[]', '[]', 4, '2023-08-25 10:48:34', '2023-08-25 10:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_11_100531_create_customers_table', 2),
(6, '2023_08_11_124400_create_insurance_table', 3),
(7, '2023_08_12_050546_create_agent_table', 4),
(8, '2023_08_12_052735_add_supervisor_name_to_agent_table', 5),
(9, '2023_08_12_095931_create_discount_table', 6),
(10, '2023_08_12_102051_create_supervisor_table', 7),
(11, '2023_08_12_110643_create_subadmin_table', 8),
(12, '2023_08_13_054937_create_privacy_table', 9),
(13, '2023_08_13_065658_create_admins_table', 10),
(14, '2023_08_19_062013_create_media_table', 11),
(15, '2023_08_20_104003_add_expire_at_collumn_to_personal_access_token', 12),
(16, '2023_08_22_184141_create_insurance_plans_table', 13),
(17, '2023_08_22_175356_create_home_insurance_plans_table', 14),
(18, '2023_08_25_163359_add_new_column_to_admins_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `expires_at`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\CustomerModel', 13, 'api_token', '71a558cf377da69eb7d0d9569b38ed834248f2f262c65d8a9ff315be86d1e5a8', '2023-08-20 10:42:18', '[\"*\"]', NULL, '2023-08-20 05:12:18', '2023-08-20 05:12:18'),
(2, 'App\\Models\\CustomerModel', 26, 'api_token', '01482653e29b485ca1b5111a212e64e78c1ad43c04979aba32a308c8639fc21b', '2023-08-24 15:55:36', '[\"*\"]', '2023-08-24 10:25:36', '2023-08-24 10:13:29', '2023-08-24 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `line_of_bussiness` varchar(255) DEFAULT NULL,
  `privacy_policy_content` text DEFAULT NULL,
  `policy_file` varchar(500) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `company_name`, `line_of_bussiness`, `privacy_policy_content`, `policy_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Write your privacy policy Details here....', 'C:\\xampp\\tmp\\phpF060.tmp', NULL, '2023-08-13 00:29:08', '2023-08-13 00:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `subadmin`
--

CREATE TABLE `subadmin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subadmin`
--

INSERT INTO `subadmin` (`id`, `full_name`, `mobile_no`, `admin_id`, `password`, `gender`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hiren Dodiya', 8200920208, 'sdfsd3424', 'sdffdcxvfcv', 'Male', NULL, '2023-08-12 05:46:10', '2023-08-12 05:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `svname` varchar(255) DEFAULT NULL,
  `svemail` varchar(255) DEFAULT NULL,
  `svmobile_no` bigint(20) DEFAULT NULL,
  `sv_gender` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `nationalandpassportno` bigint(20) DEFAULT NULL,
  `agent_commission` bigint(20) DEFAULT NULL,
  `override_commission` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `svname`, `svemail`, `svmobile_no`, `sv_gender`, `joining_date`, `nationalandpassportno`, `agent_commission`, `override_commission`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hiren', 'Hiren@gmail.com', 820, 'Male', '2023-08-12', 2129426, 45245245, 562645265, '2023-08-27 10:36:15', '2023-08-12 05:01:50', '2023-08-27 10:36:15'),
(2, 'Hirends', 'Hiren@gmail.com', 435678, 'Male', '2023-08-25', 345678, 345678, 345678, NULL, '2023-08-27 10:25:59', '2023-08-27 10:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_insurance_plans`
--
ALTER TABLE `home_insurance_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_plans`
--
ALTER TABLE `insurance_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subadmin`
--
ALTER TABLE `subadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_insurance_plans`
--
ALTER TABLE `home_insurance_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `insurance_plans`
--
ALTER TABLE `insurance_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subadmin`
--
ALTER TABLE `subadmin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
